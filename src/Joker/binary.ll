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
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to load from bins folder!\0A\00", align 1
@bin_list = internal global %struct.binary** null, align 8
@bin_list_len = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to open %s for parsing\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local signext i8 @binary_init() #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.glob_t, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.binary*, align 8
  %6 = call i32 @glob(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1, i32 (i8*, i32)* null, %struct.glob_t* %2) #4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i8 0, i8* %1, align 1
  br label %65

10:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %61, %10
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %11
  %18 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %19 = bitcast %struct.binary** %18 to i8*
  %20 = load i32, i32* @bin_list_len, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = call align 16 i8* @realloc(i8* %19, i64 %23) #4
  %25 = bitcast i8* %24 to %struct.binary**
  store %struct.binary** %25, %struct.binary*** @bin_list, align 8
  %26 = call noalias align 16 i8* @calloc(i64 1, i64 24) #4
  %27 = bitcast i8* %26 to %struct.binary*
  %28 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %29 = load i32, i32* @bin_list_len, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.binary*, %struct.binary** %28, i64 %30
  store %struct.binary* %27, %struct.binary** %31, align 8
  %32 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %33 = load i32, i32* @bin_list_len, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @bin_list_len, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.binary*, %struct.binary** %32, i64 %35
  %37 = load %struct.binary*, %struct.binary** %36, align 8
  store %struct.binary* %37, %struct.binary** %5, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %39 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %2, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strcpy(i8* %38, i8* %44) #4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %47 = call i8* @strtok(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #4
  %48 = load %struct.binary*, %struct.binary** %5, align 8
  %49 = getelementptr inbounds %struct.binary, %struct.binary* %48, i32 0, i32 0
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %49, i64 0, i64 0
  %51 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #4
  %52 = call i8* @strcpy(i8* %50, i8* %51) #4
  %53 = load %struct.binary*, %struct.binary** %5, align 8
  %54 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %2, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call signext i8 @load(%struct.binary* %53, i8* %59)
  br label %61

61:                                               ; preds = %17
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %11, !llvm.loop !6

64:                                               ; preds = %11
  call void @globfree(%struct.glob_t* %2) #4
  store i8 1, i8* %1, align 1
  br label %65

65:                                               ; preds = %64, %8
  %66 = load i8, i8* %1, align 1
  ret i8 %66
}

; Function Attrs: nounwind
declare i32 @glob(i8*, i32, i32 (i8*, i32)*, %struct.glob_t*) #1

declare i32 @printf(i8*, ...) #2

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
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.binary* %0, %struct.binary** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %6, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  store i8 0, i8* %3, align 1
  br label %82

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %80, %17
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %21 = call i64 @fread(i8* %19, i64 1, i64 64, %struct._IO_FILE* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %18
  %25 = load %struct.binary*, %struct.binary** %4, align 8
  %26 = getelementptr inbounds %struct.binary, %struct.binary* %25, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = bitcast i8** %27 to i8*
  %29 = load %struct.binary*, %struct.binary** %4, align 8
  %30 = getelementptr inbounds %struct.binary, %struct.binary* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = call align 16 i8* @realloc(i8* %28, i64 %34) #4
  %36 = bitcast i8* %35 to i8**
  %37 = load %struct.binary*, %struct.binary** %4, align 8
  %38 = getelementptr inbounds %struct.binary, %struct.binary* %37, i32 0, i32 2
  store i8** %36, i8*** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 4, %39
  %41 = add nsw i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = call noalias align 16 i8* @calloc(i64 1, i64 %42) #4
  %44 = load %struct.binary*, %struct.binary** %4, align 8
  %45 = getelementptr inbounds %struct.binary, %struct.binary* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = load %struct.binary*, %struct.binary** %4, align 8
  %48 = getelementptr inbounds %struct.binary, %struct.binary* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %46, i64 %50
  store i8* %43, i8** %51, align 8
  %52 = load %struct.binary*, %struct.binary** %4, align 8
  %53 = getelementptr inbounds %struct.binary, %struct.binary* %52, i32 0, i32 2
  %54 = load i8**, i8*** %53, align 8
  %55 = load %struct.binary*, %struct.binary** %4, align 8
  %56 = getelementptr inbounds %struct.binary, %struct.binary* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8*, i8** %54, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %77, %24
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %72) #4
  %74 = load i8*, i8** %9, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %62, !llvm.loop !8

80:                                               ; preds = %62
  br label %18, !llvm.loop !9

81:                                               ; preds = %18
  store i8 0, i8* %3, align 1
  br label %82

82:                                               ; preds = %81, %14
  %83 = load i8, i8* %3, align 1
  ret i8 %83
}

; Function Attrs: nounwind
declare void @globfree(%struct.glob_t*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.binary* @binary_get_by_arch(i8* %0) #0 {
  %2 = alloca %struct.binary*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @bin_list_len, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.binary*, %struct.binary** %11, i64 %13
  %15 = load %struct.binary*, %struct.binary** %14, align 8
  %16 = getelementptr inbounds %struct.binary, %struct.binary* %15, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %16, i64 0, i64 0
  %18 = call i32 @strcmp(i8* %10, i8* %17) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = load %struct.binary**, %struct.binary*** @bin_list, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.binary*, %struct.binary** %21, i64 %23
  %25 = load %struct.binary*, %struct.binary** %24, align 8
  store %struct.binary* %25, %struct.binary** %2, align 8
  br label %31

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %5, !llvm.loop !10

30:                                               ; preds = %5
  store %struct.binary* null, %struct.binary** %2, align 8
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.binary*, %struct.binary** %2, align 8
  ret %struct.binary* %32
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #3

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
