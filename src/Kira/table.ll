; ModuleID = 'table.c'
source_filename = "table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.table_value = type { i8*, i16 }

@table_key = dso_local global i32 -1287662771, align 4
@.str = private unnamed_addr constant [3 x i8] c"1\0B\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"7\13\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Y{`sD \12\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"azw~~\12\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"w|sp~w\12\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"akafw\7F\12\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"az\12\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"=p{|=pgakp}j2VW_]\\A\12\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"VW_]\\A(2sbb~wf2|}f2t}g|v\12\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"|q}``wqf\12\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"=p{|=pgakp}j2ba\12\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"saae}`v\12\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"}u{|\12\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"w|fw`\12\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"=b`}q=\12\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"=wjw\12\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"=tv\12\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\7Fsba\12\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"=b`}q=|wf=fqb\12\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"FA}g`qw2W|u{|w2Cgw`k\12\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"=wfq=`wa}~d<q}|t\12\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"|s\7Fwaw`dw`\12\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"=vwd=esfqzv}u\12\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"=vwd=\7F{aq=esfqzv}u\12\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"=vwd=TFEVF#\22#Mesfqzv}u\12\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"=vwd=TFEVF#\22#2esfqzv}u\12\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"=vwd=esfqzv}u\22\12\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"=wfq=vwtsg~f=esfqzv}u\12\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"=ap{|=esfqzv}u\12\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"vd`Zw~bw`\12\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"J#+[ !+# &G[G\12\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"#&Ts\12\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"7a27a2ZFFB\12\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"[gKugxw[c|\12\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"v~`<\12\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"<s`\7F\12\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"<\7F{ba\12\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"<\7Fba~\12\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"<j*$Mj$&\12\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"<j*$\12\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"B~~k\01AZV\08{[UY\0EV{u\01\0AoPtbqO_yUbLp\00IoB\09NNl\7FrprL`q\01Ju\01U\08\00h8\00", align 1
@table = dso_local global [41 x %struct.table_value] zeroinitializer, align 16
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @table_init() #0 {
  call void @add_entry(i8 zeroext 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  call void @add_entry(i8 zeroext 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  call void @add_entry(i8 zeroext 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  call void @add_entry(i8 zeroext 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  call void @add_entry(i8 zeroext 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  call void @add_entry(i8 zeroext 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  call void @add_entry(i8 zeroext 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  call void @add_entry(i8 zeroext 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 20)
  call void @add_entry(i8 zeroext 9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 25)
  call void @add_entry(i8 zeroext 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  call void @add_entry(i8 zeroext 11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 16)
  call void @add_entry(i8 zeroext 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  call void @add_entry(i8 zeroext 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  call void @add_entry(i8 zeroext 14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  call void @add_entry(i8 zeroext 15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 7)
  call void @add_entry(i8 zeroext 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 5)
  call void @add_entry(i8 zeroext 17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  call void @add_entry(i8 zeroext 18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 6)
  call void @add_entry(i8 zeroext 19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 14)
  call void @add_entry(i8 zeroext 20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 21)
  call void @add_entry(i8 zeroext 21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 17)
  call void @add_entry(i8 zeroext 22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 11)
  call void @add_entry(i8 zeroext 23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 14)
  call void @add_entry(i8 zeroext 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 19)
  call void @add_entry(i8 zeroext 25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 23)
  call void @add_entry(i8 zeroext 26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 24)
  call void @add_entry(i8 zeroext 27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 15)
  call void @add_entry(i8 zeroext 28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 22)
  call void @add_entry(i8 zeroext 29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 15)
  call void @add_entry(i8 zeroext 30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 10)
  call void @add_entry(i8 zeroext 31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32 14)
  call void @add_entry(i8 zeroext 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 5)
  call void @add_entry(i8 zeroext 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 11)
  call void @add_entry(i8 zeroext 34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 11)
  call void @add_entry(i8 zeroext 35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 5)
  call void @add_entry(i8 zeroext 36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 5)
  call void @add_entry(i8 zeroext 37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 6)
  call void @add_entry(i8 zeroext 38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 6)
  call void @add_entry(i8 zeroext 39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32 9)
  call void @add_entry(i8 zeroext 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 5)
  call void @add_entry(i8 zeroext 40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0), i32 55)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @add_entry(i8 zeroext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = call noalias align 16 i8* @malloc(i64 %9) #3
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  call void @util_memcpy(i8* %11, i8* %12, i32 %13)
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.table_value, %struct.table_value* %17, i32 0, i32 0
  store i8* %14, i8** %18, align 16
  %19 = load i32, i32* %6, align 4
  %20 = trunc i32 %19 to i16
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.table_value, %struct.table_value* %23, i32 0, i32 1
  store i16 %20, i16* %24, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @table_unlock_val(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @toggle_obf(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_value*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %10
  store %struct.table_value* %11, %struct.table_value** %4, align 8
  %12 = load i32, i32* @table_key, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i32, i32* @table_key, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i32, i32* @table_key, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i32, i32* @table_key, align 4
  %24 = lshr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %83, %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.table_value*, %struct.table_value** %4, align 8
  %30 = getelementptr inbounds %struct.table_value, %struct.table_value* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %27
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.table_value*, %struct.table_value** %4, align 8
  %38 = getelementptr inbounds %struct.table_value, %struct.table_value* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = xor i32 %44, %36
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.table_value*, %struct.table_value** %4, align 8
  %50 = getelementptr inbounds %struct.table_value, %struct.table_value* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = xor i32 %56, %48
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.table_value*, %struct.table_value** %4, align 8
  %62 = getelementptr inbounds %struct.table_value, %struct.table_value* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = xor i32 %68, %60
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = load %struct.table_value*, %struct.table_value** %4, align 8
  %74 = getelementptr inbounds %struct.table_value, %struct.table_value* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = xor i32 %80, %72
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  br label %83

83:                                               ; preds = %34
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %27, !llvm.loop !6

86:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @table_lock_val(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @table_retrieve_val(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.table_value*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %7
  store %struct.table_value* %8, %struct.table_value** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.table_value*, %struct.table_value** %5, align 8
  %13 = getelementptr inbounds %struct.table_value, %struct.table_value* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.table_value*, %struct.table_value** %5, align 8
  %19 = getelementptr inbounds %struct.table_value, %struct.table_value* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #1

declare void @util_memcpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
