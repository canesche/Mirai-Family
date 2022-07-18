; ModuleID = 'resolv.c'
source_filename = "resolv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.resolv_entries = type { i8, i32* }
%struct.dnshdr = type { i16, i16, i16, i16, i16, i16 }
%struct.dns_question = type { i16, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.dnsans = type opaque
%struct.dns_resource = type <{ i16, i16, i32, i16 }>

@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @resolv_domain_to_hostname(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @util_strlen(i8* %10)
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %7, align 8
  store i8 0, i8* %8, align 1
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %9, align 1
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i8, i8* %9, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %20
  %32 = load i8, i8* %8, align 1
  %33 = load i8*, i8** %6, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  store i8* %34, i8** %6, align 8
  store i8 0, i8* %8, align 1
  br label %42

36:                                               ; preds = %27
  %37 = load i8, i8* %8, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %8, align 1
  %39 = load i8, i8* %9, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %36, %31
  br label %16, !llvm.loop !6

43:                                               ; preds = %16
  %44 = load i8*, i8** %7, align 8
  store i8 0, i8* %44, align 1
  ret void
}

declare i32 @util_strlen(i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.resolv_entries* @resolv_lookup(i8* %0) #0 {
  %2 = alloca %struct.resolv_entries*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.resolv_entries*, align 8
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = alloca %struct.dnshdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dns_question*, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca %struct.fd_set, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.fd_set*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %union.__SOCKADDR_ARG, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.dnsans*, align 8
  %26 = alloca i16, align 2
  %27 = alloca i32, align 4
  %28 = alloca %struct.dns_resource*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca [4 x i8], align 1
  store i8* %0, i8** %3, align 8
  %31 = call noalias align 16 i8* @calloc(i64 1, i64 16) #5
  %32 = bitcast i8* %31 to %struct.resolv_entries*
  store %struct.resolv_entries* %32, %struct.resolv_entries** %4, align 8
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %34 = bitcast i8* %33 to %struct.dnshdr*
  store %struct.dnshdr* %34, %struct.dnshdr** %7, align 8
  %35 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %36 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %35, i64 1
  %37 = bitcast %struct.dnshdr* %36 to i8*
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %3, align 8
  call void @resolv_domain_to_hostname(i8* %38, i8* %39)
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @util_strlen(i8* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = bitcast i8* %45 to %struct.dns_question*
  store %struct.dns_question* %46, %struct.dns_question** %9, align 8
  %47 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 16, i1 false)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @util_strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = add i64 12, %50
  %52 = add i64 %51, 1
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %55 = call i32 @rand_next()
  %56 = urem i32 %55, 65535
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %15, align 2
  %58 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @util_zero(i8* %58, i32 16)
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %59, align 4
  %60 = call i32 @htonl(i32 134744072) #6
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = call zeroext i16 @htons(i16 zeroext 53) #6
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %63, i16* %64, align 2
  %65 = load i16, i16* %15, align 2
  %66 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %67 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %66, i32 0, i32 0
  store i16 %65, i16* %67, align 2
  %68 = call zeroext i16 @htons(i16 zeroext 256) #6
  %69 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %70 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %69, i32 0, i32 1
  store i16 %68, i16* %70, align 2
  %71 = call zeroext i16 @htons(i16 zeroext 1) #6
  %72 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %73 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %72, i32 0, i32 2
  store i16 %71, i16* %73, align 2
  %74 = call zeroext i16 @htons(i16 zeroext 1) #6
  %75 = load %struct.dns_question*, %struct.dns_question** %9, align 8
  %76 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %75, i32 0, i32 0
  store i16 %74, i16* %76, align 2
  %77 = call zeroext i16 @htons(i16 zeroext 1) #6
  %78 = load %struct.dns_question*, %struct.dns_question** %9, align 8
  %79 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %78, i32 0, i32 1
  store i16 %77, i16* %79, align 2
  br label %80

80:                                               ; preds = %220, %213, %189, %158, %112, %103, %93, %1
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = icmp slt i32 %81, 5
  br i1 %83, label %84, label %330

84:                                               ; preds = %80
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @close(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = call i32 @socket(i32 2, i32 2, i32 0) #5
  store i32 %91, i32* %13, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @sleep(i32 1)
  br label %80, !llvm.loop !8

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = bitcast %union.__CONST_SOCKADDR_ARG* %19 to %struct.sockaddr**
  %98 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  store %struct.sockaddr* %98, %struct.sockaddr** %97, align 8
  %99 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %19, i32 0, i32 0
  %100 = load %struct.sockaddr*, %struct.sockaddr** %99, align 8
  %101 = call i32 @connect(i32 %96, %struct.sockaddr* %100, i32 16)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = call i32 @sleep(i32 1)
  br label %80, !llvm.loop !8

105:                                              ; preds = %95
  %106 = load i32, i32* %13, align 4
  %107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = call i64 @send(i32 %106, i8* %107, i64 %109, i32 16384)
  %111 = icmp eq i64 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 @sleep(i32 1)
  br label %80, !llvm.loop !8

114:                                              ; preds = %105
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (i32, i32, ...) @fcntl(i32 3, i32 %116, i32 0)
  %118 = or i32 2048, %117
  %119 = call i32 (i32, i32, ...) @fcntl(i32 4, i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114
  store %struct.fd_set* %16, %struct.fd_set** %21, align 8
  store i32 0, i32* %20, align 4
  br label %121

121:                                              ; preds = %131, %120
  %122 = load i32, i32* %20, align 4
  %123 = zext i32 %122 to i64
  %124 = icmp ult i64 %123, 16
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load %struct.fd_set*, %struct.fd_set** %21, align 8
  %127 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %126, i32 0, i32 0
  %128 = load i32, i32* %20, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [16 x i64], [16 x i64]* %127, i64 0, i64 %129
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %20, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %20, align 4
  br label %121, !llvm.loop !9

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = srem i32 %136, 64
  %138 = zext i32 %137 to i64
  %139 = shl i64 1, %138
  %140 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %16, i32 0, i32 0
  %141 = load i32, i32* %13, align 4
  %142 = sdiv i32 %141, 64
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [16 x i64], [16 x i64]* %140, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = or i64 %145, %139
  store i64 %146, i64* %144, align 8
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 5, i64* %147, align 8
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 @select(i32 %150, %struct.fd_set* %16, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %17)
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %330

155:                                              ; preds = %135
  %156 = load i32, i32* %18, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %80, !llvm.loop !8

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %16, i32 0, i32 0
  %161 = load i32, i32* %13, align 4
  %162 = sdiv i32 %161, 64
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [16 x i64], [16 x i64]* %160, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = srem i32 %166, 64
  %168 = zext i32 %167 to i64
  %169 = shl i64 1, %168
  %170 = and i64 %165, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %327

172:                                              ; preds = %159
  %173 = load i32, i32* %13, align 4
  %174 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %175 = bitcast %union.__SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %175, align 8
  %176 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %23, i32 0, i32 0
  %177 = load %struct.sockaddr*, %struct.sockaddr** %176, align 8
  %178 = call i64 @recvfrom(i32 %173, i8* %174, i64 2048, i32 16384, %struct.sockaddr* %177, i32* null)
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %22, align 4
  %180 = load i32, i32* %22, align 4
  %181 = sext i32 %180 to i64
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @util_strlen(i8* %182)
  %184 = sext i32 %183 to i64
  %185 = add i64 12, %184
  %186 = add i64 %185, 1
  %187 = add i64 %186, 4
  %188 = icmp ult i64 %181, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %172
  br label %80, !llvm.loop !8

190:                                              ; preds = %172
  %191 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %192 = bitcast i8* %191 to %struct.dnshdr*
  store %struct.dnshdr* %192, %struct.dnshdr** %7, align 8
  %193 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %194 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %193, i64 1
  %195 = bitcast %struct.dnshdr* %194 to i8*
  store i8* %195, i8** %8, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @util_strlen(i8* %197)
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = bitcast i8* %201 to %struct.dns_question*
  store %struct.dns_question* %202, %struct.dns_question** %9, align 8
  %203 = load %struct.dns_question*, %struct.dns_question** %9, align 8
  %204 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %203, i64 1
  %205 = bitcast %struct.dns_question* %204 to i8*
  store i8* %205, i8** %24, align 8
  %206 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %207 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %206, i32 0, i32 0
  %208 = load i16, i16* %207, align 2
  %209 = zext i16 %208 to i32
  %210 = load i16, i16* %15, align 2
  %211 = zext i16 %210 to i32
  %212 = icmp ne i32 %209, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %190
  br label %80, !llvm.loop !8

214:                                              ; preds = %190
  %215 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %216 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %215, i32 0, i32 3
  %217 = load i16, i16* %216, align 2
  %218 = zext i16 %217 to i32
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %80, !llvm.loop !8

221:                                              ; preds = %214
  %222 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %223 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %222, i32 0, i32 3
  %224 = load i16, i16* %223, align 2
  %225 = call zeroext i16 @ntohs(i16 zeroext %224) #6
  store i16 %225, i16* %26, align 2
  br label %226

226:                                              ; preds = %325, %221
  %227 = load i16, i16* %26, align 2
  %228 = add i16 %227, -1
  store i16 %228, i16* %26, align 2
  %229 = zext i16 %227 to i32
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %326

231:                                              ; preds = %226
  store %struct.dns_resource* null, %struct.dns_resource** %28, align 8
  %232 = load i8*, i8** %24, align 8
  %233 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @resolv_skip_name(i8* %232, i8* %233, i32* %27)
  %234 = load i8*, i8** %24, align 8
  %235 = load i32, i32* %27, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  store i8* %237, i8** %24, align 8
  %238 = load i8*, i8** %24, align 8
  %239 = bitcast i8* %238 to %struct.dns_resource*
  store %struct.dns_resource* %239, %struct.dns_resource** %28, align 8
  %240 = load i8*, i8** %24, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 10
  store i8* %241, i8** %24, align 8
  %242 = load %struct.dns_resource*, %struct.dns_resource** %28, align 8
  %243 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %242, i32 0, i32 0
  %244 = load i16, i16* %243, align 1
  %245 = zext i16 %244 to i32
  %246 = call zeroext i16 @htons(i16 zeroext 1) #6
  %247 = zext i16 %246 to i32
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %318

249:                                              ; preds = %231
  %250 = load %struct.dns_resource*, %struct.dns_resource** %28, align 8
  %251 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %250, i32 0, i32 1
  %252 = load i16, i16* %251, align 1
  %253 = zext i16 %252 to i32
  %254 = call zeroext i16 @htons(i16 zeroext 1) #6
  %255 = zext i16 %254 to i32
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %318

257:                                              ; preds = %249
  %258 = load %struct.dns_resource*, %struct.dns_resource** %28, align 8
  %259 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %258, i32 0, i32 3
  %260 = load i16, i16* %259, align 1
  %261 = call zeroext i16 @ntohs(i16 zeroext %260) #6
  %262 = zext i16 %261 to i32
  %263 = icmp eq i32 %262, 4
  br i1 %263, label %264, label %309

264:                                              ; preds = %257
  store i32 0, i32* %14, align 4
  br label %265

265:                                              ; preds = %277, %264
  %266 = load i32, i32* %14, align 4
  %267 = icmp slt i32 %266, 4
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = load i8*, i8** %24, align 8
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 %275
  store i8 %273, i8* %276, align 1
  br label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  br label %265, !llvm.loop !10

280:                                              ; preds = %265
  %281 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0
  %282 = bitcast i8* %281 to i32*
  store i32* %282, i32** %29, align 8
  %283 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %284 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = bitcast i32* %285 to i8*
  %287 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %288 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %287, i32 0, i32 0
  %289 = load i8, i8* %288, align 8
  %290 = zext i8 %289 to i32
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 4
  %294 = call align 16 i8* @realloc(i8* %286, i64 %293) #5
  %295 = bitcast i8* %294 to i32*
  %296 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %297 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %296, i32 0, i32 1
  store i32* %295, i32** %297, align 8
  %298 = load i32*, i32** %29, align 8
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %301 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %304 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %303, i32 0, i32 0
  %305 = load i8, i8* %304, align 8
  %306 = add i8 %305, 1
  store i8 %306, i8* %304, align 8
  %307 = zext i8 %305 to i64
  %308 = getelementptr inbounds i32, i32* %302, i64 %307
  store i32 %299, i32* %308, align 4
  br label %309

309:                                              ; preds = %280, %257
  %310 = load i8*, i8** %24, align 8
  %311 = load %struct.dns_resource*, %struct.dns_resource** %28, align 8
  %312 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %311, i32 0, i32 3
  %313 = load i16, i16* %312, align 1
  %314 = call zeroext i16 @ntohs(i16 zeroext %313) #6
  %315 = zext i16 %314 to i32
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %310, i64 %316
  store i8* %317, i8** %24, align 8
  br label %325

318:                                              ; preds = %249, %231
  %319 = load i8*, i8** %24, align 8
  %320 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @resolv_skip_name(i8* %319, i8* %320, i32* %27)
  %321 = load i8*, i8** %24, align 8
  %322 = load i32, i32* %27, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  store i8* %324, i8** %24, align 8
  br label %325

325:                                              ; preds = %318, %309
  br label %226, !llvm.loop !11

326:                                              ; preds = %226
  br label %327

327:                                              ; preds = %326, %159
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329, %154, %80
  %331 = load i32, i32* %13, align 4
  %332 = call i32 @close(i32 %331)
  %333 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %334 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %333, i32 0, i32 0
  %335 = load i8, i8* %334, align 8
  %336 = zext i8 %335 to i32
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %330
  %339 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  store %struct.resolv_entries* %339, %struct.resolv_entries** %2, align 8
  br label %342

340:                                              ; preds = %330
  %341 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  call void @resolv_entries_free(%struct.resolv_entries* %341)
  store %struct.resolv_entries* null, %struct.resolv_entries** %2, align 8
  br label %342

342:                                              ; preds = %340, %338
  %343 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  ret %struct.resolv_entries* %343
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @rand_next() #1

declare void @util_zero(i8*, i32) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

declare i32 @sleep(i32) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

declare i64 @send(i32, i8*, i64, i32) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @resolv_skip_name(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 192
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = mul nsw i32 %23, 256
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %24, %28
  %30 = sub nsw i32 %29, 49152
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  store i8* %35, i8** %4, align 8
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %20, %15
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %10, !llvm.loop !12

47:                                               ; preds = %10
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %47
  ret void
}

; Function Attrs: nounwind
declare align 16 i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @resolv_entries_free(%struct.resolv_entries* %0) #0 {
  %2 = alloca %struct.resolv_entries*, align 8
  store %struct.resolv_entries* %0, %struct.resolv_entries** %2, align 8
  %3 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %4 = icmp eq %struct.resolv_entries* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %8 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %13 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #5
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %18 = bitcast %struct.resolv_entries* %17 to i8*
  call void @free(i8* %18) #5
  br label %19

19:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

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
