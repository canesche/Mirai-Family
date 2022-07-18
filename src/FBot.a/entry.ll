; ModuleID = 'entry.c'
source_filename = "entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.entry = type { i8, i8*, i16 }

@key = internal global i32 -526070826, align 4
@entry_list = dso_local global [24 x %struct.entry] zeroinitializer, align 16
@enc_table = internal global [66 x i8] c"\14\15\0A\1D\1F\08\0E\00\01\17\1A\03\0B\09\16\12\1E\10\0C\0D\18\1B\0F\11\1C\13-?(648<:15 7,=./3+!0>2#*;)na`iklmhojd\19\07}", align 16
@dec_table = internal global [66 x i8] c"\18\1B\1A\1D\1C\1F\1E\11\10\13\12\15\14\17\16\09\08\0B\0A\0D\0C\0F\0E\01\00\038;:=<?>10325476)(+*-,/.! #ihkjmlona`wvyt", align 16
@.str = private unnamed_addr constant [15 x i8] c"@vrwq@xmna@msm\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"@vrwq@\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"@utvx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"@msm\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"@qwuu\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"@qzo\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"@ktr@iuv\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"@ktr\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"vhppt\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"owdex\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"cmnvmrOaYmnvhde\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"xntkm\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"atrimo\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"nwnaei\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"zwnamsmqfhd\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"imndmiwd\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"KZUDXF\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"KOUT^@qod$qeh@\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"@vrwq@dmi@iqv\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"WFT^@^YTTK@8=7\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gq$ciivo^8=7=7\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Mrm^icm^qchqymd^tdo^icm^umnwd^itxib^mdwgec\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"@ao\00", align 1
@LOCAL_ADDRESS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @xor(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @key, align 4
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %6, align 1
  %13 = load i32, i32* @key, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i32, i32* @key, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %8, align 1
  %21 = load i32, i32* @key, align 4
  %22 = lshr i32 %21, 24
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %70, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, %31
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, %41
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = xor i32 %57, %51
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, %61
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  br label %70

70:                                               ; preds = %29
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %25, !llvm.loop !6

73:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @load_entry(i8* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i16, i16* %5, align 2
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [24 x %struct.entry], [24 x %struct.entry]* @entry_list, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.entry, %struct.entry* %13, i32 0, i32 2
  store i16 %10, i16* %14, align 8
  %15 = load i8, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [24 x %struct.entry], [24 x %struct.entry]* @entry_list, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 0
  store i8 %15, i8* %19, align 8
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = call noalias align 16 i8* @malloc(i64 %23) #2
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [24 x %struct.entry], [24 x %struct.entry]* @entry_list, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  br label %29

29:                                               ; preds = %3, %66
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %71

34:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 66
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [66 x i8], [66 x i8]* @enc_table, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [66 x i8], [66 x i8]* @dec_table, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8, i8* %6, align 1
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds [24 x %struct.entry], [24 x %struct.entry]* @entry_list, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.entry, %struct.entry* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %53, i8* %61, align 1
  br label %62

62:                                               ; preds = %49, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %35, !llvm.loop !8

66:                                               ; preds = %35
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %29

71:                                               ; preds = %33
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [24 x %struct.entry], [24 x %struct.entry]* @entry_list, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.entry, %struct.entry* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 0, i8* %79, align 1
  ret void
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @init_entry() #0 {
  call void @xor(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @enc_table, i64 0, i64 0), i32 66)
  call void @xor(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @dec_table, i64 0, i64 0), i32 66)
  call void @load_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i16 zeroext 14, i8 zeroext 1)
  call void @load_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i16 zeroext 6, i8 zeroext 2)
  call void @load_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i16 zeroext 5, i8 zeroext 3)
  call void @load_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i16 zeroext 4, i8 zeroext 4)
  call void @load_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i16 zeroext 5, i8 zeroext 5)
  call void @load_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i16 zeroext 4, i8 zeroext 6)
  call void @load_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i16 zeroext 8, i8 zeroext 7)
  call void @load_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i16 zeroext 4, i8 zeroext 8)
  call void @load_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i16 zeroext 5, i8 zeroext 9)
  call void @load_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i16 zeroext 5, i8 zeroext 10)
  call void @load_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i16 zeroext 15, i8 zeroext 11)
  call void @load_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i16 zeroext 5, i8 zeroext 12)
  call void @load_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i16 zeroext 6, i8 zeroext 13)
  call void @load_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i16 zeroext 6, i8 zeroext 14)
  call void @load_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i16 zeroext 11, i8 zeroext 15)
  call void @load_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i16 zeroext 8, i8 zeroext 16)
  call void @load_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i16 zeroext 6, i8 zeroext 17)
  call void @load_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i16 zeroext 14, i8 zeroext 18)
  call void @load_entry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i16 zeroext 13, i8 zeroext 19)
  call void @load_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i16 zeroext 14, i8 zeroext 20)
  call void @load_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i16 zeroext 14, i8 zeroext 21)
  call void @load_entry(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i16 zeroext 42, i8 zeroext 22)
  call void @load_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i16 zeroext 3, i8 zeroext 23)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @retrieve_entry_val(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [24 x %struct.entry], [24 x %struct.entry]* @entry_list, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @retrieve_entry_val_len(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [24 x %struct.entry], [24 x %struct.entry]* @entry_list, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 2
  %7 = load i16, i16* %6, align 8
  ret i16 %7
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
