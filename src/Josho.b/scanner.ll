; ModuleID = 'scanner.c'
source_filename = "scanner.c"
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
@rsck_out = dso_local global i32 0, align 4
@__const.consume_iacs.tmp1 = private unnamed_addr constant [3 x i8] c"\FF\FB\1F", align 1
@__const.consume_iacs.tmp2 = private unnamed_addr constant [9 x i8] c"\FF\FA\1F\00P\00\18\FF\F0", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"165.227.43.162\00", align 1

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
  %55 = call i64 @time(i64* null) #7
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @fake_time, align 4
  %57 = call noalias align 16 i8* @calloc(i64 256, i64 296) #7
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
  br label %59, !llvm.loop !8

76:                                               ; preds = %59
  %77 = call i32 @socket(i32 2, i32 3, i32 6) #7
  store i32 %77, i32* @rsck, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void @exit(i32 0) #8
  unreachable

80:                                               ; preds = %76
  %81 = load i32, i32* @rsck, align 4
  %82 = load i32, i32* @rsck, align 4
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 3, i32 0)
  %84 = or i32 2048, %83
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %81, i32 4, i32 %84)
  store i32 1, i32* %1, align 4
  %86 = load i32, i32* @rsck, align 4
  %87 = bitcast i32* %1 to i8*
  %88 = call i32 @setsockopt(i32 %86, i32 0, i32 3, i8* %87, i32 4) #7
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @rsck, align 4
  %92 = call i32 @close(i32 %91)
  call void @exit(i32 0) #8
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
  %100 = call zeroext i16 @ntohs(i16 zeroext %99) #9
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
  %117 = call zeroext i16 @htons(i16 zeroext 40) #9
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
  %128 = call zeroext i16 @htons(i16 zeroext 23) #9
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
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i16 zeroext 8)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i16 zeroext 12)
  call void @add_auth_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i16 zeroext 12)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i16 zeroext 12)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i16 zeroext 14)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i16 zeroext 11)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i16 zeroext 17)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i16 zeroext 8)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i16 zeroext 15)
  br label %149

149:                                              ; preds = %103, %976
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
  %177 = call zeroext i16 @checksum_generic(i16* %176, i32 20)
  %178 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 7
  store i16 %177, i16* %179, align 2
  %180 = load i32, i32* %1, align 4
  %181 = srem i32 %180, 10
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %158
  %184 = call zeroext i16 @htons(i16 zeroext 2323) #9
  %185 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %186 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %185, i32 0, i32 1
  store i16 %184, i16* %186, align 2
  br label %191

187:                                              ; preds = %158
  %188 = call zeroext i16 @htons(i16 zeroext 23) #9
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
  %202 = call zeroext i16 @htons(i16 zeroext 20) #9
  %203 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %199, i8* %201, i16 zeroext %202, i32 20)
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
  %221 = call i64 @sendto(i32 %216, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @scanner_rawpkt, i64 0, i64 0), i64 40, i32 16384, %struct.sockaddr* %220, i32 16)
  br label %222

222:                                              ; preds = %191
  %223 = load i32, i32* %1, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %1, align 4
  br label %155, !llvm.loop !10

225:                                              ; preds = %155
  br label %226

226:                                              ; preds = %225, %149
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %226, %256, %263, %270, %287, %296, %304, %312, %320, %328, %340, %368
  %228 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %229 = bitcast i8* %228 to %struct.iphdr*
  store %struct.iphdr* %229, %struct.iphdr** %20, align 8
  %230 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %231 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %230, i64 1
  %232 = bitcast %struct.iphdr* %231 to %struct.tcphdr*
  store %struct.tcphdr* %232, %struct.tcphdr** %21, align 8
  %233 = call i32* @__errno_location() #9
  store i32 0, i32* %233, align 4
  %234 = load i32, i32* @rsck, align 4
  %235 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %236 = bitcast %union.__SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %236, align 8
  %237 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %23, i32 0, i32 0
  %238 = load %struct.sockaddr*, %struct.sockaddr** %237, align 8
  %239 = call i64 @recvfrom(i32 %234, i8* %235, i64 1514, i32 16384, %struct.sockaddr* %238, i32* null)
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %18, align 4
  %242 = icmp sle i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %227
  %244 = call i32* @__errno_location() #9
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 11
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = call i32* @__errno_location() #9
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
  %276 = call zeroext i16 @htons(i16 zeroext 23) #9
  %277 = zext i16 %276 to i32
  %278 = icmp ne i32 %275, %277
  br i1 %278, label %279, label %288

279:                                              ; preds = %271
  %280 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %281 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %280, i32 0, i32 0
  %282 = load i16, i16* %281, align 4
  %283 = zext i16 %282 to i32
  %284 = call zeroext i16 @htons(i16 zeroext 2323) #9
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
  %333 = call i32 @ntohl(i32 %332) #9
  %334 = sub i32 %333, 1
  %335 = call i32 @htonl(i32 %334) #9
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
  br label %343, !llvm.loop !11

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
  call void @setup_connection(%struct.scanner_connection* %379)
  br label %227

380:                                              ; preds = %367, %251
  br label %381

381:                                              ; preds = %380
  store %struct.fd_set* %5, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %382

382:                                              ; preds = %392, %381
  %383 = load i32, i32* %24, align 4
  %384 = zext i32 %383 to i64
  %385 = icmp ult i64 %384, 16
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %388 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %387, i32 0, i32 0
  %389 = load i32, i32* %24, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds [16 x i64], [16 x i64]* %388, i64 0, i64 %390
  store i64 0, i64* %391, align 8
  br label %392

392:                                              ; preds = %386
  %393 = load i32, i32* %24, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %24, align 4
  br label %382, !llvm.loop !12

395:                                              ; preds = %382
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  store %struct.fd_set* %6, %struct.fd_set** %27, align 8
  store i32 0, i32* %26, align 4
  br label %398

398:                                              ; preds = %408, %397
  %399 = load i32, i32* %26, align 4
  %400 = zext i32 %399 to i64
  %401 = icmp ult i64 %400, 16
  br i1 %401, label %402, label %411

402:                                              ; preds = %398
  %403 = load %struct.fd_set*, %struct.fd_set** %27, align 8
  %404 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %403, i32 0, i32 0
  %405 = load i32, i32* %26, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds [16 x i64], [16 x i64]* %404, i64 0, i64 %406
  store i64 0, i64* %407, align 8
  br label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %26, align 4
  %410 = add i32 %409, 1
  store i32 %410, i32* %26, align 4
  br label %398, !llvm.loop !13

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
  %443 = call i32 @close(i32 %442)
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
  call void @setup_connection(%struct.scanner_connection* %463)
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
  %483 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
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
  %514 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
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
  br label %413, !llvm.loop !14

538:                                              ; preds = %413
  %539 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %539, align 8
  %540 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
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
  %551 = call i32 @select(i32 %550, %struct.fd_set* %5, %struct.fd_set* %6, %struct.fd_set* null, %struct.timeval* %8)
  store i32 %551, i32* %13, align 4
  %552 = call i64 @time(i64* null) #7
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
  %568 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
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
  %589 = call i32 @getsockopt(i32 %587, i32 1, i32 4, i8* %588, i32* %31) #7
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
  %607 = call i32 @close(i32 %606)
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
  %616 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
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

633:                                              ; preds = %632, %970
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
  %657 = call i32* @__errno_location() #9
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
  %673 = call i32 @recv_strip_null(i32 %660, i8* %668, i32 %672, i32 16384)
  store i32 %673, i32* %32, align 4
  %674 = load i32, i32* %32, align 4
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %678

676:                                              ; preds = %656
  %677 = call i32* @__errno_location() #9
  store i32 104, i32* %677, align 4
  store i32 -1, i32* %32, align 4
  br label %678

678:                                              ; preds = %676, %656
  %679 = load i32, i32* %32, align 4
  %680 = icmp eq i32 %679, -1
  br i1 %680, label %681, label %711

681:                                              ; preds = %678
  %682 = call i32* @__errno_location() #9
  %683 = load i32, i32* %682, align 4
  %684 = icmp ne i32 %683, 11
  br i1 %684, label %685, label %710

685:                                              ; preds = %681
  %686 = call i32* @__errno_location() #9
  %687 = load i32, i32* %686, align 4
  %688 = icmp ne i32 %687, 11
  br i1 %688, label %689, label %710

689:                                              ; preds = %685
  %690 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %691 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 8
  %693 = call i32 @close(i32 %692)
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
  call void @setup_connection(%struct.scanner_connection* %708)
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

720:                                              ; preds = %711, %969
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
  %726 = call i32 @consume_iacs(%struct.scanner_connection* %725)
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
  %734 = call i32 @consume_user_prompt(%struct.scanner_connection* %733)
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
  %751 = call i64 @send(i32 %739, i8* %744, i64 %750, i32 16384)
  %752 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %753 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %752, i32 0, i32 1
  %754 = load i32, i32* %753, align 8
  %755 = call i64 @send(i32 %754, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  %756 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %757 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %756, i32 0, i32 3
  store i32 4, i32* %757, align 8
  br label %758

758:                                              ; preds = %736, %732
  br label %936

759:                                              ; preds = %720
  %760 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %761 = call i32 @consume_pass_prompt(%struct.scanner_connection* %760)
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
  %778 = call i64 @send(i32 %766, i8* %771, i64 %777, i32 16384)
  %779 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %780 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %779, i32 0, i32 1
  %781 = load i32, i32* %780, align 8
  %782 = call i64 @send(i32 %781, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  %783 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %784 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %783, i32 0, i32 3
  store i32 5, i32* %784, align 8
  br label %785

785:                                              ; preds = %763, %759
  br label %936

786:                                              ; preds = %720
  %787 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %788 = call i32 @consume_any_prompt(%struct.scanner_connection* %787)
  store i32 %788, i32* %33, align 4
  %789 = icmp sgt i32 %788, 0
  br i1 %789, label %790, label %805

790:                                              ; preds = %786
  call void @table_unlock_val(i8 zeroext 5)
  %791 = call i8* @table_retrieve_val(i32 5, i32* %35)
  store i8* %791, i8** %34, align 8
  %792 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %793 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %792, i32 0, i32 1
  %794 = load i32, i32* %793, align 8
  %795 = load i8*, i8** %34, align 8
  %796 = load i32, i32* %35, align 4
  %797 = sext i32 %796 to i64
  %798 = call i64 @send(i32 %794, i8* %795, i64 %797, i32 16384)
  %799 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %800 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %799, i32 0, i32 1
  %801 = load i32, i32* %800, align 8
  %802 = call i64 @send(i32 %801, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 5)
  %803 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %804 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %803, i32 0, i32 3
  store i32 6, i32* %804, align 8
  br label %805

805:                                              ; preds = %790, %786
  br label %936

806:                                              ; preds = %720
  %807 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %808 = call i32 @consume_any_prompt(%struct.scanner_connection* %807)
  store i32 %808, i32* %33, align 4
  %809 = icmp sgt i32 %808, 0
  br i1 %809, label %810, label %825

810:                                              ; preds = %806
  call void @table_unlock_val(i8 zeroext 6)
  %811 = call i8* @table_retrieve_val(i32 6, i32* %37)
  store i8* %811, i8** %36, align 8
  %812 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %813 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 8
  %815 = load i8*, i8** %36, align 8
  %816 = load i32, i32* %37, align 4
  %817 = sext i32 %816 to i64
  %818 = call i64 @send(i32 %814, i8* %815, i64 %817, i32 16384)
  %819 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %820 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 8
  %822 = call i64 @send(i32 %821, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 6)
  %823 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %824 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %823, i32 0, i32 3
  store i32 7, i32* %824, align 8
  br label %825

825:                                              ; preds = %810, %806
  br label %936

826:                                              ; preds = %720
  %827 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %828 = call i32 @consume_any_prompt(%struct.scanner_connection* %827)
  store i32 %828, i32* %33, align 4
  %829 = icmp sgt i32 %828, 0
  br i1 %829, label %830, label %845

830:                                              ; preds = %826
  call void @table_unlock_val(i8 zeroext 4)
  %831 = call i8* @table_retrieve_val(i32 4, i32* %39)
  store i8* %831, i8** %38, align 8
  %832 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %833 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %832, i32 0, i32 1
  %834 = load i32, i32* %833, align 8
  %835 = load i8*, i8** %38, align 8
  %836 = load i32, i32* %39, align 4
  %837 = sext i32 %836 to i64
  %838 = call i64 @send(i32 %834, i8* %835, i64 %837, i32 16384)
  %839 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %840 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %839, i32 0, i32 1
  %841 = load i32, i32* %840, align 8
  %842 = call i64 @send(i32 %841, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 4)
  %843 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %844 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %843, i32 0, i32 3
  store i32 8, i32* %844, align 8
  br label %845

845:                                              ; preds = %830, %826
  br label %936

846:                                              ; preds = %720
  %847 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %848 = call i32 @consume_any_prompt(%struct.scanner_connection* %847)
  store i32 %848, i32* %33, align 4
  %849 = icmp sgt i32 %848, 0
  br i1 %849, label %850, label %865

850:                                              ; preds = %846
  call void @table_unlock_val(i8 zeroext 7)
  %851 = call i8* @table_retrieve_val(i32 7, i32* %41)
  store i8* %851, i8** %40, align 8
  %852 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %853 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %852, i32 0, i32 1
  %854 = load i32, i32* %853, align 8
  %855 = load i8*, i8** %40, align 8
  %856 = load i32, i32* %41, align 4
  %857 = sext i32 %856 to i64
  %858 = call i64 @send(i32 %854, i8* %855, i64 %857, i32 16384)
  %859 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %860 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %859, i32 0, i32 1
  %861 = load i32, i32* %860, align 8
  %862 = call i64 @send(i32 %861, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 7)
  %863 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %864 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %863, i32 0, i32 3
  store i32 9, i32* %864, align 8
  br label %865

865:                                              ; preds = %850, %846
  br label %936

866:                                              ; preds = %720
  %867 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %868 = call i32 @consume_any_prompt(%struct.scanner_connection* %867)
  store i32 %868, i32* %33, align 4
  %869 = icmp sgt i32 %868, 0
  br i1 %869, label %870, label %885

870:                                              ; preds = %866
  call void @table_unlock_val(i8 zeroext 8)
  %871 = call i8* @table_retrieve_val(i32 8, i32* %43)
  store i8* %871, i8** %42, align 8
  %872 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %873 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %872, i32 0, i32 1
  %874 = load i32, i32* %873, align 8
  %875 = load i8*, i8** %42, align 8
  %876 = load i32, i32* %43, align 4
  %877 = sext i32 %876 to i64
  %878 = call i64 @send(i32 %874, i8* %875, i64 %877, i32 16384)
  %879 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %880 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %879, i32 0, i32 1
  %881 = load i32, i32* %880, align 8
  %882 = call i64 @send(i32 %881, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  call void @table_lock_val(i8 zeroext 8)
  %883 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %884 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %883, i32 0, i32 3
  store i32 10, i32* %884, align 8
  br label %885

885:                                              ; preds = %870, %866
  br label %936

886:                                              ; preds = %720
  %887 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %888 = call i32 @consume_resp_prompt(%struct.scanner_connection* %887)
  store i32 %888, i32* %33, align 4
  %889 = load i32, i32* %33, align 4
  %890 = icmp eq i32 %889, -1
  br i1 %890, label %891, label %912

891:                                              ; preds = %886
  %892 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %893 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %892, i32 0, i32 1
  %894 = load i32, i32* %893, align 8
  %895 = call i32 @close(i32 %894)
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
  call void @setup_connection(%struct.scanner_connection* %910)
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
  call void @report_working(i32 %918, i16 zeroext %921, %struct.scanner_auth* %924)
  %925 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %926 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %925, i32 0, i32 1
  %927 = load i32, i32* %926, align 8
  %928 = call i32 @close(i32 %927)
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
  br label %554, !llvm.loop !15

976:                                              ; preds = %554
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

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

declare i32 @close(i32) #1

declare i32 @rand_next() #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

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
  %14 = call align 16 i8* @realloc(i8* %9, i64 %13) #7
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
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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
  br i1 %226, label %6, label %227, !llvm.loop !16

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
  %243 = call i32 @htonl(i32 %242) #9
  ret i32 %243
}

declare zeroext i16 @checksum_generic(i16*, i32) #1

declare zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) #1

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #4

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #4

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #4

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
  %16 = call i32 @socket(i32 2, i32 1, i32 0) #7
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
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

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
  call void @table_unlock_val(i8 zeroext 26)
  call void @table_unlock_val(i8 zeroext 27)
  %74 = call i8* @table_retrieve_val(i32 26, i32* %8)
  store i8* %74, i8** %9, align 8
  %75 = call i8* @table_retrieve_val(i32 27, i32* %8)
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
  call void @table_lock_val(i8 zeroext 26)
  call void @table_lock_val(i8 zeroext 27)
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
  call void @table_unlock_val(i8 zeroext 25)
  %64 = call i8* @table_retrieve_val(i32 25, i32* %9)
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
  call void @table_lock_val(i8 zeroext 25)
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
  %20 = call i32 @socket(i32 2, i32 1, i32 0) #7
  store i32 %20, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @exit(i32 0) #8
  unreachable

23:                                               ; preds = %19
  call void @table_unlock_val(i8 zeroext 2)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = call i32 @inet_addr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0)) #7
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = call i8* @table_retrieve_val(i32 2, i32* null)
  %29 = bitcast i8* %28 to i16*
  %30 = load i16, i16* %29, align 2
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  call void @table_lock_val(i8 zeroext 2)
  %32 = load i32, i32* %9, align 4
  %33 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**
  %34 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %33, align 8
  %35 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0
  %36 = load %struct.sockaddr*, %struct.sockaddr** %35, align 8
  %37 = call i32 @connect(i32 %32, %struct.sockaddr* %36, i32 16)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @close(i32 %40)
  call void @exit(i32 0) #8
  unreachable

42:                                               ; preds = %23
  store i8 0, i8* %11, align 1
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @send(i32 %43, i8* %11, i64 1, i32 16384)
  %45 = load i32, i32* %9, align 4
  %46 = bitcast i32* %4 to i8*
  %47 = call i64 @send(i32 %45, i8* %46, i64 4, i32 16384)
  %48 = load i32, i32* %9, align 4
  %49 = bitcast i16* %5 to i8*
  %50 = call i64 @send(i32 %48, i8* %49, i64 2, i32 16384)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %53 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %52, i32 0, i32 4
  %54 = call i64 @send(i32 %51, i8* %53, i64 1, i32 16384)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %57 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %60 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %59, i32 0, i32 4
  %61 = load i8, i8* %60, align 4
  %62 = zext i8 %61 to i64
  %63 = call i64 @send(i32 %55, i8* %58, i64 %62, i32 16384)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %66 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %65, i32 0, i32 5
  %67 = call i64 @send(i32 %64, i8* %66, i64 1, i32 16384)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %70 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.scanner_auth*, %struct.scanner_auth** %6, align 8
  %73 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %72, i32 0, i32 5
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = call i64 @send(i32 %68, i8* %71, i64 %75, i32 16384)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @close(i32 %77)
  call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @scanner_kill() #0 {
  %1 = load i32, i32* @scanner_pid, align 4
  %2 = call i32 @kill(i32 %1, i32 9) #7
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

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
  %14 = call noalias align 16 i8* @malloc(i64 %13) #7
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

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }

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
