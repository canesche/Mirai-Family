; ModuleID = 'binary.c'
source_filename = "binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.binary = type { [6 x i8], i32, i8** }
%struct.glob_t = type { i64, i8**, i64, i32, void (i8*)*, i8* (i8*)*, i8* (i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [11 x i8] c"bins/dlr.*\00", align 1
@bin_list = internal global %struct.binary** null, align 8
@bin_list_len = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local signext i8 @binary_init() #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.glob_t, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.binary*, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 @glob(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1, i32 (i8*, i32)* null, %struct.glob_t* %2) #4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i8 0, i8* %1, align 1
  br label %64

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %60, %9
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %10
  %17 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %18 = bitcast %struct.binary** %17 to i8*
  %19 = load i32, i32* @bin_list_len, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = call align 16 i8* @realloc(i8* %18, i64 %22) #4
  %24 = bitcast i8* %23 to %struct.binary**
  store %struct.binary** %24, %struct.binary*** @bin_list, align 8
  %25 = call noalias align 16 i8* @calloc(i64 1, i64 24) #4
  %26 = bitcast i8* %25 to %struct.binary*
  %27 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %28 = load i32, i32* @bin_list_len, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.binary*, %struct.binary** %27, i64 %29
  store %struct.binary* %26, %struct.binary** %30, align 8
  %31 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %32 = load i32, i32* @bin_list_len, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @bin_list_len, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.binary*, %struct.binary** %31, i64 %34
  %36 = load %struct.binary*, %struct.binary** %35, align 8
  store %struct.binary* %36, %struct.binary** %5, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %38 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %2, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strcpy(i8* %37, i8* %43) #4
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %46 = call i8* @strtok(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  %47 = load %struct.binary*, %struct.binary** %5, align 8
  %48 = getelementptr inbounds %struct.binary, %struct.binary* %47, i32 0, i32 0
  %49 = getelementptr inbounds [6 x i8], [6 x i8]* %48, i64 0, i64 0
  %50 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  %51 = call i8* @strcpy(i8* %49, i8* %50) #4
  %52 = load %struct.binary*, %struct.binary** %5, align 8
  %53 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %2, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call signext i8 @load(%struct.binary* %52, i8* %58)
  br label %60

60:                                               ; preds = %16
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %10, !llvm.loop !6

63:                                               ; preds = %10
  call void @globfree(%struct.glob_t* %2) #4
  store i8 1, i8* %1, align 1
  br label %64

64:                                               ; preds = %63, %8
  %65 = load i8, i8* %1, align 1
  ret i8 %65
}

; Function Attrs: nounwind
declare i32 @glob(i8*, i32, i32 (i8*, i32)*, %struct.glob_t*) #1

; Function Attrs: nounwind
declare align 16 i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @load(%struct.binary* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.binary*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.binary* %0, %struct.binary** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %6, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8 0, i8* %3, align 1
  br label %80

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %78, %15
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %19 = call i64 @fread(i8* %17, i64 1, i64 128, %struct._IO_FILE* %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  %23 = load %struct.binary*, %struct.binary** %4, align 8
  %24 = getelementptr inbounds %struct.binary, %struct.binary* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = bitcast i8** %25 to i8*
  %27 = load %struct.binary*, %struct.binary** %4, align 8
  %28 = getelementptr inbounds %struct.binary, %struct.binary* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = call align 16 i8* @realloc(i8* %26, i64 %32) #4
  %34 = bitcast i8* %33 to i8**
  %35 = load %struct.binary*, %struct.binary** %4, align 8
  %36 = getelementptr inbounds %struct.binary, %struct.binary* %35, i32 0, i32 2
  store i8** %34, i8*** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 4, %37
  %39 = add nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = call noalias align 16 i8* @calloc(i64 1, i64 %40) #4
  %42 = load %struct.binary*, %struct.binary** %4, align 8
  %43 = getelementptr inbounds %struct.binary, %struct.binary* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.binary*, %struct.binary** %4, align 8
  %46 = getelementptr inbounds %struct.binary, %struct.binary* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  store i8* %41, i8** %49, align 8
  %50 = load %struct.binary*, %struct.binary** %4, align 8
  %51 = getelementptr inbounds %struct.binary, %struct.binary* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = load %struct.binary*, %struct.binary** %4, align 8
  %54 = getelementptr inbounds %struct.binary, %struct.binary* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8*, i8** %52, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %75, %22
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %70) #4
  %72 = load i8*, i8** %9, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %60, !llvm.loop !8

78:                                               ; preds = %60
  br label %16, !llvm.loop !9

79:                                               ; preds = %16
  store i8 0, i8* %3, align 1
  br label %80

80:                                               ; preds = %79, %14
  %81 = load i8, i8* %3, align 1
  ret i8 %81
}

; Function Attrs: nounwind
declare void @globfree(%struct.glob_t*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.binary* @binary_get_by_arch(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.binary*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @bin_list_len, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.binary*, %struct.binary** %13, i64 %15
  %17 = load %struct.binary*, %struct.binary** %16, align 8
  %18 = getelementptr inbounds %struct.binary, %struct.binary* %17, i32 0, i32 0
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = call i32 @strncmp(i8* %12, i8* %19, i64 %21) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %11
  %25 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.binary*, %struct.binary** %25, i64 %27
  %29 = load %struct.binary*, %struct.binary** %28, align 8
  store %struct.binary* %29, %struct.binary** %3, align 8
  br label %35

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %7, !llvm.loop !10

34:                                               ; preds = %7
  store %struct.binary* null, %struct.binary** %3, align 8
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.binary*, %struct.binary** %3, align 8
  ret %struct.binary* %36
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8*, i8*, i64) #2

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 13.0.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
