; ModuleID = 'telnet.c'
source_filename = "telnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scanner_auth = type { i8*, i8*, i16, i16, i8, i8 }
%struct.scanner_connection = type { %struct.scanner_auth*, i32, i32, i32, i32, i16, i32, [256 x i8], i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }

@auth_table_len = dso_local global i32 0, align 4
@scanner_rawpkt = dso_local global [40 x i8] zeroinitializer, align 16
@auth_table = dso_local global %struct.scanner_auth* null, align 8
@auth_table_max_weight = dso_local global i16 0, align 2
@fake_time = dso_local global i32 0, align 4
@scanner_pid = dso_local global i32 0, align 4
@LOCAL_ADDR = dso_local global i32 0, align 4
@conn_table = dso_local global %struct.scanner_connection* null, align 8
@rsck = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"509=:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&;; \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\22=.,\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\0E 1afe\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0125!8 \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\1B,<8#\07\13l\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\07f2\13%\1A\12'\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"8\1E#$6;b\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"'!$$;& \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"!'1&\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"3!1' \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"efg`a\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"efg`\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"<!: acam\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"g1$a#f!\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@rsck_out = dso_local global i32 0, align 4
@__const.consume_iacs.tmp1 = private unnamed_addr constant [3 x i8] c"\FF\FB\1F", align 1
@__const.consume_iacs.tmp2 = private unnamed_addr constant [9 x i8] c"\FF\FA\1F\00P\00\18\FF\F0", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"131.153.18.72\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @recv_strip_null(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %16 = call i64 @recv(i32 %11, i8* %12, i64 %14, i32 %15)
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
  br label %21, !llvm.loop !6

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare i64 @recv(i32, i8*, i64, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @scanner_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca %struct.scanner_connection*, align 8
  %8 = alloca %struct.timeval, align 8
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
  %23 = alloca %union.__SOCKADDR_ARG, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.fd_set*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.fd_set*, align 8
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
  %46 = call i32 @fork() #6
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
  %55 = call i64 @time(i64* null) #6
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @fake_time, align 4
  %57 = call noalias align 16 i8* @calloc(i64 128, i64 296) #6
  %58 = bitcast i8* %57 to %struct.scanner_connection*
  store %struct.scanner_connection* %58, %struct.scanner_connection** @conn_table, align 8
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %73, %53
  %60 = load i32, i32* %1, align 4
  %61 = icmp slt i32 %60, 128
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
  br label %59, !llvm.loop !8

76:                                               ; preds = %59
  %77 = call i32 @socket(i32 2, i32 3, i32 6) #6
  store i32 %77, i32* @rsck, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* @rsck, align 4
  %82 = load i32, i32* @rsck, align 4
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 3, i32 0)
  %84 = or i32 2048, %83
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %81, i32 4, i32 %84)
  store i32 1, i32* %1, align 4
  %86 = load i32, i32* @rsck, align 4
  %87 = bitcast i32* %1 to i8*
  %88 = call i32 @setsockopt(i32 %86, i32 0, i32 3, i8* %87, i32 4) #6
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @rsck, align 4
  %92 = call i32 @close(i32 %91)
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
  %100 = call zeroext i16 @ntohs(i16 zeroext %99) #7
  %101 = zext i16 %100 to i32
  %102 = icmp slt i32 %101, 1024
  br i1 %102, label %94, label %103, !llvm.loop !9

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
  %117 = call zeroext i16 @htons(i16 zeroext 40) #7
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
  %128 = call zeroext i16 @htons(i16 zeroext 23) #7
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
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i16 zeroext 14)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i16 zeroext 14)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i16 zeroext 8)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i16 zeroext 12)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i16 zeroext 11)
  br label %149

149:                                              ; preds = %103, %959
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
  %157 = icmp slt i32 %156, 160
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
  %177 = call zeroext i16 @checksum_generic(i16* %176, i32 20)
  %178 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 7
  store i16 %177, i16* %179, align 2
  %180 = call zeroext i16 @htons(i16 zeroext 23) #7
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
  %193 = call zeroext i16 @htons(i16 zeroext 20) #7
  %194 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %190, i8* %192, i16 zeroext %193, i32 20)
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
  %212 = call i64 @sendto(i32 %207, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @scanner_rawpkt, i64 0, i64 0), i64 40, i32 16384, %struct.sockaddr* %211, i32 16)
  br label %213

213:                                              ; preds = %158
  %214 = load i32, i32* %1, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %1, align 4
  br label %155, !llvm.loop !10

216:                                              ; preds = %155
  br label %217

217:                                              ; preds = %216, %149
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %217, %247, %254, %261, %270, %279, %287, %295, %303, %311, %323, %351
  %219 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %220 = bitcast i8* %219 to %struct.iphdr*
  store %struct.iphdr* %220, %struct.iphdr** %20, align 8
  %221 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %222 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %221, i64 1
  %223 = bitcast %struct.iphdr* %222 to %struct.tcphdr*
  store %struct.tcphdr* %223, %struct.tcphdr** %21, align 8
  %224 = call i32* @__errno_location() #7
  store i32 0, i32* %224, align 4
  %225 = load i32, i32* @rsck, align 4
  %226 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %227 = bitcast %union.__SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %227, align 8
  %228 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %23, i32 0, i32 0
  %229 = load %struct.sockaddr*, %struct.sockaddr** %228, align 8
  %230 = call i64 @recvfrom(i32 %225, i8* %226, i64 1514, i32 16384, %struct.sockaddr* %229, i32* null)
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp sle i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %218
  %235 = call i32* @__errno_location() #7
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 11
  br i1 %237, label %242, label %238

238:                                              ; preds = %234
  %239 = call i32* @__errno_location() #7
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
  %267 = call zeroext i16 @htons(i16 zeroext 23) #7
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
  %316 = call i32 @ntohl(i32 %315) #7
  %317 = sub i32 %316, 1
  %318 = call i32 @htonl(i32 %317) #7
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
  %328 = icmp slt i32 %327, 128
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
  br label %326, !llvm.loop !11

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
  call void @setup_connection(%struct.scanner_connection* %362)
  br label %218

363:                                              ; preds = %350, %242
  br label %364

364:                                              ; preds = %363
  store %struct.fd_set* %5, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %365

365:                                              ; preds = %375, %364
  %366 = load i32, i32* %24, align 4
  %367 = zext i32 %366 to i64
  %368 = icmp ult i64 %367, 16
  br i1 %368, label %369, label %378

369:                                              ; preds = %365
  %370 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %371 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %370, i32 0, i32 0
  %372 = load i32, i32* %24, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds [16 x i64], [16 x i64]* %371, i64 0, i64 %373
  store i64 0, i64* %374, align 8
  br label %375

375:                                              ; preds = %369
  %376 = load i32, i32* %24, align 4
  %377 = add i32 %376, 1
  store i32 %377, i32* %24, align 4
  br label %365, !llvm.loop !12

378:                                              ; preds = %365
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  store %struct.fd_set* %6, %struct.fd_set** %27, align 8
  store i32 0, i32* %26, align 4
  br label %381

381:                                              ; preds = %391, %380
  %382 = load i32, i32* %26, align 4
  %383 = zext i32 %382 to i64
  %384 = icmp ult i64 %383, 16
  br i1 %384, label %385, label %394

385:                                              ; preds = %381
  %386 = load %struct.fd_set*, %struct.fd_set** %27, align 8
  %387 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %386, i32 0, i32 0
  %388 = load i32, i32* %26, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [16 x i64], [16 x i64]* %387, i64 0, i64 %389
  store i64 0, i64* %390, align 8
  br label %391

391:                                              ; preds = %385
  %392 = load i32, i32* %26, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %26, align 4
  br label %381, !llvm.loop !13

394:                                              ; preds = %381
  br label %395

395:                                              ; preds = %394
  store i32 0, i32* %1, align 4
  br label %396

396:                                              ; preds = %518, %395
  %397 = load i32, i32* %1, align 4
  %398 = icmp slt i32 %397, 128
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
  %426 = call i32 @close(i32 %425)
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
  %439 = icmp eq i32 %438, 14
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
  call void @setup_connection(%struct.scanner_connection* %446)
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
  %466 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
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
  %497 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
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
  br label %396, !llvm.loop !14

521:                                              ; preds = %396
  %522 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %522, align 8
  %523 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
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
  %534 = call i32 @select(i32 %533, %struct.fd_set* %5, %struct.fd_set* %6, %struct.fd_set* null, %struct.timeval* %8)
  store i32 %534, i32* %13, align 4
  %535 = call i64 @time(i64* null) #6
  %536 = trunc i64 %535 to i32
  store i32 %536, i32* @fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %537

537:                                              ; preds = %956, %531
  %538 = load i32, i32* %1, align 4
  %539 = icmp slt i32 %538, 128
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
  %551 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
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
  %572 = call i32 @getsockopt(i32 %570, i32 1, i32 4, i8* %571, i32* %31) #6
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
  %590 = call i32 @close(i32 %589)
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
  %599 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
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

616:                                              ; preds = %615, %953
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
  %640 = call i32* @__errno_location() #7
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
  %656 = call i32 @recv_strip_null(i32 %643, i8* %651, i32 %655, i32 16384)
  store i32 %656, i32* %32, align 4
  %657 = load i32, i32* %32, align 4
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %661

659:                                              ; preds = %639
  %660 = call i32* @__errno_location() #7
  store i32 104, i32* %660, align 4
  store i32 -1, i32* %32, align 4
  br label %661

661:                                              ; preds = %659, %639
  %662 = load i32, i32* %32, align 4
  %663 = icmp eq i32 %662, -1
  br i1 %663, label %664, label %694

664:                                              ; preds = %661
  %665 = call i32* @__errno_location() #7
  %666 = load i32, i32* %665, align 4
  %667 = icmp ne i32 %666, 11
  br i1 %667, label %668, label %693

668:                                              ; preds = %664
  %669 = call i32* @__errno_location() #7
  %670 = load i32, i32* %669, align 4
  %671 = icmp ne i32 %670, 11
  br i1 %671, label %672, label %693

672:                                              ; preds = %668
  %673 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %674 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 8
  %676 = call i32 @close(i32 %675)
  %677 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %678 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %677, i32 0, i32 1
  store i32 -1, i32* %678, align 8
  %679 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %680 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %679, i32 0, i32 8
  %681 = load i8, i8* %680, align 8
  %682 = add i8 %681, 1
  store i8 %682, i8* %680, align 8
  %683 = zext i8 %682 to i32
  %684 = icmp sge i32 %683, 14
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
  call void @setup_connection(%struct.scanner_connection* %691)
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

703:                                              ; preds = %694, %952
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
  %709 = call i32 @consume_iacs(%struct.scanner_connection* %708)
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
  %717 = call i32 @consume_user_prompt(%struct.scanner_connection* %716)
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
  %734 = call i64 @send(i32 %722, i8* %727, i64 %733, i32 16384)
  %735 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %736 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 8
  %738 = call i64 @send(i32 %737, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  %739 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %740 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %739, i32 0, i32 3
  store i32 4, i32* %740, align 8
  br label %741

741:                                              ; preds = %719, %715
  br label %919

742:                                              ; preds = %703
  %743 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %744 = call i32 @consume_pass_prompt(%struct.scanner_connection* %743)
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
  %761 = call i64 @send(i32 %749, i8* %754, i64 %760, i32 16384)
  %762 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %763 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %762, i32 0, i32 1
  %764 = load i32, i32* %763, align 8
  %765 = call i64 @send(i32 %764, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  %766 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %767 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %766, i32 0, i32 3
  store i32 5, i32* %767, align 8
  br label %768

768:                                              ; preds = %746, %742
  br label %919

769:                                              ; preds = %703
  %770 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %771 = call i32 @consume_any_prompt(%struct.scanner_connection* %770)
  store i32 %771, i32* %33, align 4
  %772 = icmp sgt i32 %771, 0
  br i1 %772, label %773, label %788

773:                                              ; preds = %769
  call void @table_unlock_val(i8 zeroext 5)
  %774 = call i8* @table_retrieve_val(i32 5, i32* %35)
  store i8* %774, i8** %34, align 8
  %775 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %776 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %775, i32 0, i32 1
  %777 = load i32, i32* %776, align 8
  %778 = load i8*, i8** %34, align 8
  %779 = load i32, i32* %35, align 4
  %780 = sext i32 %779 to i64
  %781 = call i64 @send(i32 %777, i8* %778, i64 %780, i32 16384)
  %782 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %783 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %782, i32 0, i32 1
  %784 = load i32, i32* %783, align 8
  %785 = call i64 @send(i32 %784, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 5)
  %786 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %787 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %786, i32 0, i32 3
  store i32 6, i32* %787, align 8
  br label %788

788:                                              ; preds = %773, %769
  br label %919

789:                                              ; preds = %703
  %790 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %791 = call i32 @consume_any_prompt(%struct.scanner_connection* %790)
  store i32 %791, i32* %33, align 4
  %792 = icmp sgt i32 %791, 0
  br i1 %792, label %793, label %808

793:                                              ; preds = %789
  call void @table_unlock_val(i8 zeroext 6)
  %794 = call i8* @table_retrieve_val(i32 6, i32* %37)
  store i8* %794, i8** %36, align 8
  %795 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %796 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %795, i32 0, i32 1
  %797 = load i32, i32* %796, align 8
  %798 = load i8*, i8** %36, align 8
  %799 = load i32, i32* %37, align 4
  %800 = sext i32 %799 to i64
  %801 = call i64 @send(i32 %797, i8* %798, i64 %800, i32 16384)
  %802 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %803 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %802, i32 0, i32 1
  %804 = load i32, i32* %803, align 8
  %805 = call i64 @send(i32 %804, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 6)
  %806 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %807 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %806, i32 0, i32 3
  store i32 7, i32* %807, align 8
  br label %808

808:                                              ; preds = %793, %789
  br label %919

809:                                              ; preds = %703
  %810 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %811 = call i32 @consume_any_prompt(%struct.scanner_connection* %810)
  store i32 %811, i32* %33, align 4
  %812 = icmp sgt i32 %811, 0
  br i1 %812, label %813, label %828

813:                                              ; preds = %809
  call void @table_unlock_val(i8 zeroext 4)
  %814 = call i8* @table_retrieve_val(i32 4, i32* %39)
  store i8* %814, i8** %38, align 8
  %815 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %816 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %815, i32 0, i32 1
  %817 = load i32, i32* %816, align 8
  %818 = load i8*, i8** %38, align 8
  %819 = load i32, i32* %39, align 4
  %820 = sext i32 %819 to i64
  %821 = call i64 @send(i32 %817, i8* %818, i64 %820, i32 16384)
  %822 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %823 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %822, i32 0, i32 1
  %824 = load i32, i32* %823, align 8
  %825 = call i64 @send(i32 %824, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 4)
  %826 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %827 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %826, i32 0, i32 3
  store i32 8, i32* %827, align 8
  br label %828

828:                                              ; preds = %813, %809
  br label %919

829:                                              ; preds = %703
  %830 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %831 = call i32 @consume_any_prompt(%struct.scanner_connection* %830)
  store i32 %831, i32* %33, align 4
  %832 = icmp sgt i32 %831, 0
  br i1 %832, label %833, label %848

833:                                              ; preds = %829
  call void @table_unlock_val(i8 zeroext 7)
  %834 = call i8* @table_retrieve_val(i32 7, i32* %41)
  store i8* %834, i8** %40, align 8
  %835 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %836 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %835, i32 0, i32 1
  %837 = load i32, i32* %836, align 8
  %838 = load i8*, i8** %40, align 8
  %839 = load i32, i32* %41, align 4
  %840 = sext i32 %839 to i64
  %841 = call i64 @send(i32 %837, i8* %838, i64 %840, i32 16384)
  %842 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %843 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %842, i32 0, i32 1
  %844 = load i32, i32* %843, align 8
  %845 = call i64 @send(i32 %844, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 7)
  %846 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %847 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %846, i32 0, i32 3
  store i32 9, i32* %847, align 8
  br label %848

848:                                              ; preds = %833, %829
  br label %919

849:                                              ; preds = %703
  %850 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %851 = call i32 @consume_any_prompt(%struct.scanner_connection* %850)
  store i32 %851, i32* %33, align 4
  %852 = icmp sgt i32 %851, 0
  br i1 %852, label %853, label %868

853:                                              ; preds = %849
  call void @table_unlock_val(i8 zeroext 8)
  %854 = call i8* @table_retrieve_val(i32 8, i32* %43)
  store i8* %854, i8** %42, align 8
  %855 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %856 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %855, i32 0, i32 1
  %857 = load i32, i32* %856, align 8
  %858 = load i8*, i8** %42, align 8
  %859 = load i32, i32* %43, align 4
  %860 = sext i32 %859 to i64
  %861 = call i64 @send(i32 %857, i8* %858, i64 %860, i32 16384)
  %862 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %863 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %862, i32 0, i32 1
  %864 = load i32, i32* %863, align 8
  %865 = call i64 @send(i32 %864, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 8)
  %866 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %867 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %866, i32 0, i32 3
  store i32 10, i32* %867, align 8
  br label %868

868:                                              ; preds = %853, %849
  br label %919

869:                                              ; preds = %703
  %870 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %871 = call i32 @consume_resp_prompt(%struct.scanner_connection* %870)
  store i32 %871, i32* %33, align 4
  %872 = load i32, i32* %33, align 4
  %873 = icmp eq i32 %872, -1
  br i1 %873, label %874, label %895

874:                                              ; preds = %869
  %875 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %876 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %875, i32 0, i32 1
  %877 = load i32, i32* %876, align 8
  %878 = call i32 @close(i32 %877)
  %879 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %880 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %879, i32 0, i32 1
  store i32 -1, i32* %880, align 8
  %881 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %882 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %881, i32 0, i32 8
  %883 = load i8, i8* %882, align 8
  %884 = add i8 %883, 1
  store i8 %884, i8* %882, align 8
  %885 = zext i8 %884 to i32
  %886 = icmp eq i32 %885, 14
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
  call void @setup_connection(%struct.scanner_connection* %893)
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
  call void @report_working(i32 %901, i16 zeroext %904, %struct.scanner_auth* %907)
  %908 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %909 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %908, i32 0, i32 1
  %910 = load i32, i32* %909, align 8
  %911 = call i32 @close(i32 %910)
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
  br label %537, !llvm.loop !15

959:                                              ; preds = %537
  br label %149
}

; Function Attrs: nounwind
declare i32 @fork() #2

declare i32 @util_local_addr() #1

declare void @rand_init() #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

declare i32 @close(i32) #1

declare i32 @rand_next() #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @add_auth_entry(i8* %0, i8* %1, i16 zeroext %2) #0 {
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
  %14 = call align 16 i8* @realloc(i8* %9, i64 %13) #6
  %15 = bitcast i8* %14 to %struct.scanner_auth*
  store %struct.scanner_auth* %15, %struct.scanner_auth** @auth_table, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @deobf(i8* %16, i32* %7)
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
  %31 = call i8* @deobf(i8* %30, i32* %7)
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @get_random_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  br label %6

6:                                                ; preds = %161, %0
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
  br i1 %26, label %161, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %2, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %161, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %2, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %161, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %2, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 15
  br i1 %38, label %161, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %2, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %161, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %2, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 56
  br i1 %46, label %161, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %2, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %161, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %2, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 192
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 168
  br i1 %58, label %161, label %59

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
  br i1 %70, label %161, label %71

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
  br i1 %82, label %161, label %83

83:                                               ; preds = %79, %75, %71
  %84 = load i8, i8* %2, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 169
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sgt i32 %89, 254
  br i1 %90, label %161, label %91

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
  br i1 %102, label %161, label %103

103:                                              ; preds = %99, %95, %91
  %104 = load i8, i8* %2, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sge i32 %105, 224
  br i1 %106, label %161, label %107

107:                                              ; preds = %103
  %108 = load i8, i8* %2, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 6
  br i1 %110, label %159, label %111

111:                                              ; preds = %107
  %112 = load i8, i8* %2, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 7
  br i1 %114, label %159, label %115

115:                                              ; preds = %111
  %116 = load i8, i8* %2, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 11
  br i1 %118, label %159, label %119

119:                                              ; preds = %115
  %120 = load i8, i8* %2, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 21
  br i1 %122, label %159, label %123

123:                                              ; preds = %119
  %124 = load i8, i8* %2, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 22
  br i1 %126, label %159, label %127

127:                                              ; preds = %123
  %128 = load i8, i8* %2, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 26
  br i1 %130, label %159, label %131

131:                                              ; preds = %127
  %132 = load i8, i8* %2, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 28
  br i1 %134, label %159, label %135

135:                                              ; preds = %131
  %136 = load i8, i8* %2, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 29
  br i1 %138, label %159, label %139

139:                                              ; preds = %135
  %140 = load i8, i8* %2, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 30
  br i1 %142, label %159, label %143

143:                                              ; preds = %139
  %144 = load i8, i8* %2, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 33
  br i1 %146, label %159, label %147

147:                                              ; preds = %143
  %148 = load i8, i8* %2, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 55
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = load i8, i8* %2, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 214
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i8, i8* %2, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 215
  br label %159

159:                                              ; preds = %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107
  %160 = phi i1 [ true, %151 ], [ true, %147 ], [ true, %143 ], [ true, %139 ], [ true, %135 ], [ true, %131 ], [ true, %127 ], [ true, %123 ], [ true, %119 ], [ true, %115 ], [ true, %111 ], [ true, %107 ], [ %158, %155 ]
  br label %161

161:                                              ; preds = %159, %103, %99, %87, %79, %67, %55, %47, %43, %39, %35, %31, %27, %23
  %162 = phi i1 [ true, %103 ], [ true, %99 ], [ true, %87 ], [ true, %79 ], [ true, %67 ], [ true, %55 ], [ true, %47 ], [ true, %43 ], [ true, %39 ], [ true, %35 ], [ true, %31 ], [ true, %27 ], [ true, %23 ], [ %160, %159 ]
  br i1 %162, label %6, label %163, !llvm.loop !16

163:                                              ; preds = %161
  %164 = load i8, i8* %2, align 1
  %165 = zext i8 %164 to i32
  %166 = shl i32 %165, 24
  %167 = load i8, i8* %3, align 1
  %168 = zext i8 %167 to i32
  %169 = shl i32 %168, 16
  %170 = or i32 %166, %169
  %171 = load i8, i8* %4, align 1
  %172 = zext i8 %171 to i32
  %173 = shl i32 %172, 8
  %174 = or i32 %170, %173
  %175 = load i8, i8* %5, align 1
  %176 = zext i8 %175 to i32
  %177 = shl i32 %176, 0
  %178 = or i32 %174, %177
  %179 = call i32 @htonl(i32 %178) #7
  ret i32 %179
}

declare zeroext i16 @checksum_generic(i16*, i32) #1

declare zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) #1

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #3

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @setup_connection(%struct.scanner_connection* %0) #0 {
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
  %14 = call i32 @close(i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = call i32 @socket(i32 2, i32 1, i32 0) #6
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
  call void @util_zero(i8* %26, i32 256)
  %27 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %28 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %31 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i32, ...) @fcntl(i32 %32, i32 3, i32 0)
  %34 = or i32 2048, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 %29, i32 4, i32 %34)
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
  %58 = call i32 @connect(i32 %53, %struct.sockaddr* %57, i32 16)
  br label %59

59:                                               ; preds = %21, %20
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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
  br label %9, !llvm.loop !17

46:                                               ; preds = %9
  store %struct.scanner_auth* null, %struct.scanner_auth** %1, align 8
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.scanner_auth*, %struct.scanner_auth** %1, align 8
  ret %struct.scanner_auth* %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_iacs(%struct.scanner_connection* %0) #0 {
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
  %31 = call signext i8 @can_consume(%struct.scanner_connection* %29, i8* %30, i32 1)
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
  br label %11, !llvm.loop !18

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
  %56 = call signext i8 @can_consume(%struct.scanner_connection* %54, i8* %55, i32 2)
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
  %75 = call i64 @send(i32 %73, i8* %74, i64 3, i32 16384)
  %76 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %77 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %80 = call i64 @send(i32 %78, i8* %79, i64 9, i32 16384)
  br label %133

81:                                               ; preds = %45
  br label %82

82:                                               ; preds = %81, %65
  %83 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call signext i8 @can_consume(%struct.scanner_connection* %83, i8* %84, i32 2)
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
  br label %89, !llvm.loop !19

123:                                              ; preds = %89
  %124 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %125 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i64 @send(i32 %126, i8* %127, i64 3, i32 16384)
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
  br label %11, !llvm.loop !18

137:                                              ; preds = %87, %58, %33, %22, %11
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_user_prompt(%struct.scanner_connection* %0) #0 {
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
  br label %15, !llvm.loop !20

70:                                               ; preds = %63, %15
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %107

73:                                               ; preds = %70
  call void @table_unlock_val(i8 zeroext 13)
  call void @table_unlock_val(i8 zeroext 14)
  %74 = call i8* @table_retrieve_val(i32 13, i32* %8)
  store i8* %74, i8** %9, align 8
  %75 = call i8* @table_retrieve_val(i32 14, i32* %8)
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
  %85 = call i32 @util_memsearch(i8* %78, i32 %81, i8* %82, i32 %84)
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
  %100 = call i32 @util_memsearch(i8* %93, i32 %96, i8* %97, i32 %99)
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
  call void @table_lock_val(i8 zeroext 13)
  call void @table_lock_val(i8 zeroext 14)
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

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_pass_prompt(%struct.scanner_connection* %0) #0 {
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
  br label %14, !llvm.loop !21

60:                                               ; preds = %53, %14
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  call void @table_unlock_val(i8 zeroext 12)
  %64 = call i8* @table_retrieve_val(i32 12, i32* %9)
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
  %74 = call i32 @util_memsearch(i8* %67, i32 %70, i8* %71, i32 %73)
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
  call void @table_lock_val(i8 zeroext 12)
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_any_prompt(%struct.scanner_connection* %0) #0 {
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
  br label %11, !llvm.loop !22

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

declare void @table_unlock_val(i8 zeroext) #1

declare i8* @table_retrieve_val(i32, i32*) #1

declare void @table_lock_val(i8 zeroext) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_resp_prompt(%struct.scanner_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  call void @table_unlock_val(i8 zeroext 10)
  %7 = call i8* @table_retrieve_val(i32 10, i32* %6)
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
  %17 = call i32 @util_memsearch(i8* %10, i32 %13, i8* %14, i32 %16)
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  call void @table_lock_val(i8 zeroext 10)
  store i32 -1, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  call void @table_lock_val(i8 zeroext 10)
  call void @table_unlock_val(i8 zeroext 9)
  %21 = call i8* @table_retrieve_val(i32 9, i32* %6)
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
  %31 = call i32 @util_memsearch(i8* %24, i32 %27, i8* %28, i32 %30)
  store i32 %31, i32* %5, align 4
  call void @table_lock_val(i8 zeroext 9)
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @report_working(i32 %0, i16 zeroext %1, %struct.scanner_auth* %2) #0 {
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
  %12 = call i32 @fork() #6
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  br label %78

19:                                               ; preds = %15
  %20 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %20, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %19
  call void @table_unlock_val(i8 zeroext 2)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %25, i32 0, i32 0
  store i32 ptrtoint ([14 x i8]* @.str.17 to i32), i32* %26, align 4
  %27 = call i8* @table_retrieve_val(i32 2, i32* null)
  %28 = bitcast i8* %27 to i16*
  %29 = load i16, i16* %28, align 2
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  call void @table_lock_val(i8 zeroext 2)
  %31 = load i32, i32* %9, align 4
  %32 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**
  %33 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %33, %struct.sockaddr** %32, align 8
  %34 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0
  %35 = load %struct.sockaddr*, %struct.sockaddr** %34, align 8
  %36 = call i32 @connect(i32 %31, %struct.sockaddr* %35, i32 16)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @close(i32 %39)
  br label %41

41:                                               ; preds = %38, %23
  store i8 0, i8* %11, align 1
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @send(i32 %42, i8* %11, i64 1, i32 16384)
  %44 = load i32, i32* %9, align 4
  %45 = bitcast i32* %4 to i8*
  %46 = call i64 @send(i32 %44, i8* %45, i64 4, i32 16384)
  %47 = load i32, i32* %9, align 4
  %48 = bitcast i16* %5 to i8*
  %49 = call i64 @send(i32 %47, i8* %48, i64 2, i32 16384)
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %52 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %51, i32 0, i32 4
  %53 = call i64 @send(i32 %50, i8* %52, i64 1, i32 16384)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %56 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %59 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %58, i32 0, i32 4
  %60 = load i8, i8* %59, align 4
  %61 = zext i8 %60 to i64
  %62 = call i64 @send(i32 %54, i8* %57, i64 %61, i32 16384)
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %65 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %64, i32 0, i32 5
  %66 = call i64 @send(i32 %63, i8* %65, i64 1, i32 16384)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %69 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %72 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %71, i32 0, i32 5
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = call i64 @send(i32 %67, i8* %70, i64 %74, i32 16384)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %41, %18
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @scanner_kill() #0 {
  %1 = load i32, i32* @scanner_pid, align 4
  %2 = call i32 @kill(i32 %1, i32 9) #6
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

declare void @util_zero(i8*, i32) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @can_consume(%struct.scanner_connection* %0, i8* %1, i32 %2) #0 {
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @util_memsearch(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare align 16 i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i8* @deobf(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @util_strlen(i8* %7)
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call noalias align 16 i8* @malloc(i64 %13) #6
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  call void @util_memcpy(i8* %15, i8* %16, i32 %19)
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
  br label %20, !llvm.loop !23

61:                                               ; preds = %20
  %62 = load i8*, i8** %6, align 8
  ret i8* %62
}

declare i32 @util_strlen(i8*) #1

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #2

declare void @util_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

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
