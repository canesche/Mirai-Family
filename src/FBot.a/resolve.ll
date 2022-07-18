; ModuleID = 'resolve.c'
source_filename = "resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.entry = type { i8, i8*, i16 }
%struct.dns_header = type { i16, i16, i16, i16, i16, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.dns_question = type { i16, i16 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.dns_resource = type { i16, i16, i32, i16 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.dns_resource_txt = type { i16, i16, i32, i16 }

@LOCAL_ADDRESS = dso_local global i32 0, align 4
@entry_list = dso_local global [24 x %struct.entry] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @dns_lookup(i8* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2048 x i8], align 16
  %8 = alloca %struct.dns_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.dns_question*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.fd_set, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = alloca %struct.dns_resource*, align 8
  %25 = alloca %struct.sockaddr_in, align 4
  %26 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.fd_set*, align 8
  %29 = alloca [2048 x i8], align 16
  %30 = alloca i8*, align 8
  %31 = alloca %struct.dns_header*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.dns_question*, align 8
  %34 = alloca %struct.dns_resource*, align 8
  %35 = alloca %union.__SOCKADDR_ARG, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %36 = bitcast [2048 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 2048, i1 false)
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 2048, i1 false)
  %38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %39 = bitcast i8* %38 to %struct.dns_header*
  store %struct.dns_header* %39, %struct.dns_header** %8, align 8
  %40 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %41 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %40, i64 1
  %42 = bitcast %struct.dns_header* %41 to i8*
  store i8* %42, i8** %9, align 8
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %10, align 4
  store i16 0, i16* %12, align 2
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %10, align 4
  call void @d(i8* %45, i8* %46, i32 %47)
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @strlen(i8* %49) #7
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = bitcast i8* %52 to %struct.dns_question*
  store %struct.dns_question* %53, %struct.dns_question** %13, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @strlen(i8* %54) #7
  %56 = add i64 12, %55
  %57 = add i64 %56, 1
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = call i32 @rand_new()
  %61 = and i32 %60, 65535
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %12, align 2
  %63 = load i16, i16* %12, align 2
  %64 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %65 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %64, i32 0, i32 0
  store i16 %63, i16* %65, align 2
  %66 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %67 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %66, i32 0, i32 1
  %68 = load i16, i16* %67, align 2
  %69 = and i16 %68, -2
  %70 = or i16 %69, 1
  store i16 %70, i16* %67, align 2
  %71 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %72 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 2
  %74 = and i16 %73, -3
  store i16 %74, i16* %72, align 2
  %75 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %76 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %75, i32 0, i32 1
  %77 = load i16, i16* %76, align 2
  %78 = and i16 %77, -5
  store i16 %78, i16* %76, align 2
  %79 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %80 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %79, i32 0, i32 1
  %81 = load i16, i16* %80, align 2
  %82 = and i16 %81, -121
  store i16 %82, i16* %80, align 2
  %83 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %84 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %83, i32 0, i32 1
  %85 = load i16, i16* %84, align 2
  %86 = and i16 %85, -129
  store i16 %86, i16* %84, align 2
  %87 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %88 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %87, i32 0, i32 1
  %89 = load i16, i16* %88, align 2
  %90 = and i16 %89, -3841
  store i16 %90, i16* %88, align 2
  %91 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %92 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %91, i32 0, i32 1
  %93 = load i16, i16* %92, align 2
  %94 = and i16 %93, -4097
  store i16 %94, i16* %92, align 2
  %95 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %96 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %95, i32 0, i32 1
  %97 = load i16, i16* %96, align 2
  %98 = and i16 %97, -8193
  store i16 %98, i16* %96, align 2
  %99 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %100 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %99, i32 0, i32 1
  %101 = load i16, i16* %100, align 2
  %102 = and i16 %101, -16385
  store i16 %102, i16* %100, align 2
  %103 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %104 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %103, i32 0, i32 1
  %105 = load i16, i16* %104, align 2
  %106 = and i16 %105, 32767
  store i16 %106, i16* %104, align 2
  %107 = call zeroext i16 @htons(i16 zeroext 1) #8
  %108 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %109 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %108, i32 0, i32 2
  store i16 %107, i16* %109, align 2
  %110 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %111 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %110, i32 0, i32 3
  store i16 0, i16* %111, align 2
  %112 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %113 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %112, i32 0, i32 4
  store i16 0, i16* %113, align 2
  %114 = load %struct.dns_header*, %struct.dns_header** %8, align 8
  %115 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %114, i32 0, i32 5
  store i16 0, i16* %115, align 2
  %116 = load i8, i8* %6, align 1
  %117 = zext i8 %116 to i16
  %118 = call zeroext i16 @htons(i16 zeroext %117) #8
  %119 = load %struct.dns_question*, %struct.dns_question** %13, align 8
  %120 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %119, i32 0, i32 0
  store i16 %118, i16* %120, align 2
  %121 = call zeroext i16 @htons(i16 zeroext 1) #8
  %122 = load %struct.dns_question*, %struct.dns_question** %13, align 8
  %123 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %122, i32 0, i32 1
  store i16 %121, i16* %123, align 2
  br label %124

124:                                              ; preds = %364, %292, %281, %253, %214, %207, %163, %150, %132, %3
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = icmp ne i32 %125, 15
  br i1 %127, label %128, label %365

128:                                              ; preds = %124
  store i32 0, i32* %22, align 4
  store i16 0, i16* %23, align 2
  %129 = call i32 @socket(i32 2, i32 2, i32 0) #9
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @close(i32 %133)
  %135 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  store i16 2, i16* %137, align 4
  %138 = call i32 @pick_resolver()
  %139 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 2
  %140 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = call zeroext i16 @htons(i16 zeroext 53) #8
  %142 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 1
  store i16 %141, i16* %142, align 2
  %143 = load i32, i32* %14, align 4
  %144 = bitcast %union.__CONST_SOCKADDR_ARG* %26 to %struct.sockaddr**
  %145 = bitcast %struct.sockaddr_in* %25 to %struct.sockaddr*
  store %struct.sockaddr* %145, %struct.sockaddr** %144, align 8
  %146 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %26, i32 0, i32 0
  %147 = load %struct.sockaddr*, %struct.sockaddr** %146, align 8
  %148 = call i32 @connect(i32 %143, %struct.sockaddr* %147, i32 16)
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @close(i32 %151)
  %153 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

154:                                              ; preds = %136
  %155 = load i32, i32* %14, align 4
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = call i64 @send(i32 %155, i8* %156, i64 %158, i32 16384)
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp ne i64 %159, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @close(i32 %164)
  %166 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

167:                                              ; preds = %154
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32 (i32, i32, ...) @fcntl(i32 %169, i32 3, i32 0)
  %171 = or i32 2048, %170
  %172 = call i32 (i32, i32, ...) @fcntl(i32 %168, i32 4, i32 %171)
  br label %173

173:                                              ; preds = %167
  store %struct.fd_set* %20, %struct.fd_set** %28, align 8
  store i32 0, i32* %27, align 4
  br label %174

174:                                              ; preds = %184, %173
  %175 = load i32, i32* %27, align 4
  %176 = zext i32 %175 to i64
  %177 = icmp ult i64 %176, 16
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load %struct.fd_set*, %struct.fd_set** %28, align 8
  %180 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %179, i32 0, i32 0
  %181 = load i32, i32* %27, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [16 x i64], [16 x i64]* %180, i64 0, i64 %182
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %27, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %27, align 4
  br label %174, !llvm.loop !8

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %14, align 4
  %190 = srem i32 %189, 64
  %191 = zext i32 %190 to i64
  %192 = shl i64 1, %191
  %193 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %20, i32 0, i32 0
  %194 = load i32, i32* %14, align 4
  %195 = sdiv i32 %194, 64
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [16 x i64], [16 x i64]* %193, i64 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = or i64 %198, %192
  store i64 %199, i64* %197, align 8
  %200 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 10, i64* %200, align 8
  %201 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  %204 = call i32 @select(i32 %203, %struct.fd_set* %20, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %21)
  store i32 %204, i32* %22, align 4
  %205 = load i32, i32* %22, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %211

207:                                              ; preds = %188
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @close(i32 %208)
  %210 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

211:                                              ; preds = %188
  %212 = load i32, i32* %22, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i32, i32* %14, align 4
  %216 = call i32 @close(i32 %215)
  %217 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, -1
  br i1 %221, label %222, label %364

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %20, i32 0, i32 0
  %224 = load i32, i32* %14, align 4
  %225 = sdiv i32 %224, 64
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [16 x i64], [16 x i64]* %223, i64 0, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = srem i32 %229, 64
  %231 = zext i32 %230 to i64
  %232 = shl i64 1, %231
  %233 = and i64 %228, %232
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %364

235:                                              ; preds = %222
  %236 = bitcast [2048 x i8]* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %236, i8 0, i64 2048, i1 false)
  %237 = getelementptr inbounds [2048 x i8], [2048 x i8]* %29, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %237, i8 0, i64 2048, i1 false)
  %238 = load i32, i32* %14, align 4
  %239 = getelementptr inbounds [2048 x i8], [2048 x i8]* %29, i64 0, i64 0
  %240 = bitcast %union.__SOCKADDR_ARG* %35 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %240, align 8
  %241 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %35, i32 0, i32 0
  %242 = load %struct.sockaddr*, %struct.sockaddr** %241, align 8
  %243 = call i64 @recvfrom(i32 %238, i8* %239, i64 2048, i32 16384, %struct.sockaddr* %242, i32* null)
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %22, align 4
  %245 = load i32, i32* %22, align 4
  %246 = sext i32 %245 to i64
  %247 = load i8*, i8** %9, align 8
  %248 = call i64 @strlen(i8* %247) #7
  %249 = add i64 12, %248
  %250 = add i64 %249, 1
  %251 = add i64 %250, 4
  %252 = icmp ult i64 %246, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %235
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @close(i32 %254)
  %256 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

257:                                              ; preds = %235
  %258 = getelementptr inbounds [2048 x i8], [2048 x i8]* %29, i64 0, i64 0
  %259 = bitcast i8* %258 to %struct.dns_header*
  store %struct.dns_header* %259, %struct.dns_header** %31, align 8
  %260 = load %struct.dns_header*, %struct.dns_header** %31, align 8
  %261 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %260, i64 1
  %262 = bitcast %struct.dns_header* %261 to i8*
  store i8* %262, i8** %32, align 8
  %263 = load i8*, i8** %32, align 8
  %264 = load i8*, i8** %32, align 8
  %265 = call i64 @strlen(i8* %264) #7
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  %268 = bitcast i8* %267 to %struct.dns_question*
  store %struct.dns_question* %268, %struct.dns_question** %33, align 8
  %269 = load %struct.dns_question*, %struct.dns_question** %33, align 8
  %270 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %269, i64 1
  %271 = bitcast %struct.dns_question* %270 to i8*
  store i8* %271, i8** %30, align 8
  %272 = load i8*, i8** %30, align 8
  %273 = bitcast i8* %272 to %struct.dns_resource*
  store %struct.dns_resource* %273, %struct.dns_resource** %34, align 8
  %274 = load %struct.dns_header*, %struct.dns_header** %31, align 8
  %275 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %274, i32 0, i32 0
  %276 = load i16, i16* %275, align 2
  %277 = zext i16 %276 to i32
  %278 = load i16, i16* %12, align 2
  %279 = zext i16 %278 to i32
  %280 = icmp ne i32 %277, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %257
  %282 = load i32, i32* %14, align 4
  %283 = call i32 @close(i32 %282)
  %284 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

285:                                              ; preds = %257
  %286 = load %struct.dns_header*, %struct.dns_header** %31, align 8
  %287 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %286, i32 0, i32 3
  %288 = load i16, i16* %287, align 2
  %289 = call zeroext i16 @ntohs(i16 zeroext %288) #8
  %290 = zext i16 %289 to i32
  %291 = icmp slt i32 %290, 1
  br i1 %291, label %292, label %296

292:                                              ; preds = %285
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @close(i32 %293)
  %295 = call i32 @sleep(i32 1)
  br label %124, !llvm.loop !6

296:                                              ; preds = %285
  %297 = load %struct.dns_header*, %struct.dns_header** %31, align 8
  %298 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %297, i32 0, i32 3
  %299 = load i16, i16* %298, align 2
  %300 = call zeroext i16 @ntohs(i16 zeroext %299) #8
  store i16 %300, i16* %23, align 2
  %301 = load i8*, i8** %30, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 12
  store i8* %302, i8** %30, align 8
  %303 = load i16, i16* %23, align 2
  %304 = zext i16 %303 to i64
  %305 = call noalias align 16 i8* @calloc(i64 %304, i64 4) #9
  %306 = bitcast i8* %305 to i32*
  store i32* %306, i32** %19, align 8
  %307 = load i32*, i32** %19, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %296
  %310 = load i32, i32* %14, align 4
  %311 = call i32 @close(i32 %310)
  br label %365

312:                                              ; preds = %296
  store i32 0, i32* %17, align 4
  br label %313

313:                                              ; preds = %348, %312
  %314 = load i32, i32* %17, align 4
  %315 = load i16, i16* %23, align 2
  %316 = zext i16 %315 to i32
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %318, label %351

318:                                              ; preds = %313
  %319 = load i8*, i8** %30, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 0
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = shl i32 %322, 24
  %324 = load i8*, i8** %30, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 1
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = shl i32 %327, 16
  %329 = or i32 %323, %328
  %330 = load i8*, i8** %30, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 2
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = shl i32 %333, 8
  %335 = or i32 %329, %334
  %336 = load i8*, i8** %30, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 3
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = or i32 %335, %339
  %341 = call i32 @htonl(i32 %340) #8
  %342 = load i32*, i32** %19, align 8
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  store i32 %341, i32* %345, align 4
  %346 = load i8*, i8** %30, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 16
  store i8* %347, i8** %30, align 8
  br label %348

348:                                              ; preds = %318
  %349 = load i32, i32* %17, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %17, align 4
  br label %313, !llvm.loop !9

351:                                              ; preds = %313
  %352 = load i32*, i32** %19, align 8
  %353 = call i32 @rand_new()
  %354 = load i16, i16* %23, align 2
  %355 = zext i16 %354 to i32
  %356 = urem i32 %353, %355
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %352, i64 %357
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %18, align 4
  %360 = load i32*, i32** %19, align 8
  %361 = bitcast i32* %360 to i8*
  call void @free(i8* %361) #9
  %362 = load i32, i32* %14, align 4
  %363 = call i32 @close(i32 %362)
  br label %365

364:                                              ; preds = %222, %219
  br label %124, !llvm.loop !6

365:                                              ; preds = %351, %309, %124
  %366 = load i32, i32* %18, align 4
  ret i32 %366
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @d(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %39, %33, %3
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %11, align 4
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  store i8 0, i8* %12, align 1
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %12, align 1
  %26 = load i8, i8* %12, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i8, i8* %12, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %8, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  store i8* %37, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %18, !llvm.loop !10

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i8, i8* %12, align 1
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  store i8 %42, i8* %43, align 1
  br label %18, !llvm.loop !10

45:                                               ; preds = %18
  %46 = load i8*, i8** %9, align 8
  store i8 0, i8* %46, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #2

declare i32 @rand_new() #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #5

declare i32 @close(i32) #3

declare i32 @sleep(i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @pick_resolver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @rand_new()
  %4 = urem i32 %3, 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @htonl(i32 134744072) #8
  store i32 %8, i32* %1, align 4
  br label %24

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @htonl(i32 134743044) #8
  store i32 %13, i32* %1, align 4
  br label %24

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @htonl(i32 16843009) #8
  store i32 %18, i32* %1, align 4
  br label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @htonl(i32 16777217) #8
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %7, %12, %17, %22, %19
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

declare i64 @send(i32, i8*, i64, i32) #3

declare i32 @fcntl(i32, i32, ...) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #4

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #5

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @local_addr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %6 = alloca %union.__SOCKADDR_ARG, align 8
  store i32 -1, i32* %2, align 4
  store i32 16, i32* %4, align 4
  %7 = call i32 @socket(i32 2, i32 2, i32 0) #9
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %12, align 4
  %13 = call i32 @pick_resolver()
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call zeroext i16 @htons(i16 zeroext 53) #8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %16, i16* %17, align 2
  %18 = load i32, i32* %2, align 4
  %19 = bitcast %union.__CONST_SOCKADDR_ARG* %5 to %struct.sockaddr**
  %20 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %19, align 8
  %21 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %5, i32 0, i32 0
  %22 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %23 = call i32 @connect(i32 %18, %struct.sockaddr* %22, i32 16)
  %24 = load i32, i32* %2, align 4
  %25 = bitcast %union.__SOCKADDR_ARG* %6 to %struct.sockaddr**
  %26 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %25, align 8
  %27 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %6, i32 0, i32 0
  %28 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8
  %29 = call i32 @getsockname(i32 %24, %struct.sockaddr* %28, i32* %4) #9
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @close(i32 %30)
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
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @dns_lookup_txt(i8* %0, i8 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [2048 x i8], align 16
  %7 = alloca %struct.dns_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i16, align 2
  %12 = alloca %struct.dns_question*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.fd_set, align 8
  %19 = alloca %struct.timeval, align 8
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca %struct.dns_resource_txt*, align 8
  %23 = alloca %struct.sockaddr_in, align 4
  %24 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.fd_set*, align 8
  %27 = alloca [2048 x i8], align 16
  %28 = alloca i8*, align 8
  %29 = alloca %struct.dns_header*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.dns_question*, align 8
  %32 = alloca %struct.dns_resource_txt*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %union.__SOCKADDR_ARG, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %35 = bitcast [2048 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 2048, i1 false)
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 2048, i1 false)
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %38 = bitcast i8* %37 to %struct.dns_header*
  store %struct.dns_header* %38, %struct.dns_header** %7, align 8
  %39 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %40 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %39, i64 1
  %41 = bitcast %struct.dns_header* %40 to i8*
  store i8* %41, i8** %8, align 8
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %9, align 4
  store i16 0, i16* %11, align 2
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %44 = call noalias align 16 i8* @malloc(i64 255) #9
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %313

48:                                               ; preds = %2
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %9, align 4
  call void @d(i8* %49, i8* %50, i32 %51)
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strlen(i8* %53) #7
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = bitcast i8* %56 to %struct.dns_question*
  store %struct.dns_question* %57, %struct.dns_question** %12, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strlen(i8* %58) #7
  %60 = add i64 12, %59
  %61 = add i64 %60, 1
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = call i32 @rand_new()
  %65 = and i32 %64, 65535
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %11, align 2
  %67 = load i16, i16* %11, align 2
  %68 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %69 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %68, i32 0, i32 0
  store i16 %67, i16* %69, align 2
  %70 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %71 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %70, i32 0, i32 1
  %72 = load i16, i16* %71, align 2
  %73 = and i16 %72, -2
  %74 = or i16 %73, 1
  store i16 %74, i16* %71, align 2
  %75 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %76 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %75, i32 0, i32 1
  %77 = load i16, i16* %76, align 2
  %78 = and i16 %77, -3
  store i16 %78, i16* %76, align 2
  %79 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %80 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %79, i32 0, i32 1
  %81 = load i16, i16* %80, align 2
  %82 = and i16 %81, -5
  store i16 %82, i16* %80, align 2
  %83 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %84 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %83, i32 0, i32 1
  %85 = load i16, i16* %84, align 2
  %86 = and i16 %85, -121
  store i16 %86, i16* %84, align 2
  %87 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %88 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %87, i32 0, i32 1
  %89 = load i16, i16* %88, align 2
  %90 = and i16 %89, -129
  store i16 %90, i16* %88, align 2
  %91 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %92 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %91, i32 0, i32 1
  %93 = load i16, i16* %92, align 2
  %94 = and i16 %93, -3841
  store i16 %94, i16* %92, align 2
  %95 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %96 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %95, i32 0, i32 1
  %97 = load i16, i16* %96, align 2
  %98 = and i16 %97, -4097
  store i16 %98, i16* %96, align 2
  %99 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %100 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %99, i32 0, i32 1
  %101 = load i16, i16* %100, align 2
  %102 = and i16 %101, -8193
  store i16 %102, i16* %100, align 2
  %103 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %104 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %103, i32 0, i32 1
  %105 = load i16, i16* %104, align 2
  %106 = and i16 %105, -16385
  store i16 %106, i16* %104, align 2
  %107 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %108 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %107, i32 0, i32 1
  %109 = load i16, i16* %108, align 2
  %110 = and i16 %109, 32767
  store i16 %110, i16* %108, align 2
  %111 = call zeroext i16 @htons(i16 zeroext 1) #8
  %112 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %113 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %112, i32 0, i32 2
  store i16 %111, i16* %113, align 2
  %114 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %115 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %114, i32 0, i32 3
  store i16 0, i16* %115, align 2
  %116 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %117 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %116, i32 0, i32 4
  store i16 0, i16* %117, align 2
  %118 = load %struct.dns_header*, %struct.dns_header** %7, align 8
  %119 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %118, i32 0, i32 5
  store i16 0, i16* %119, align 2
  %120 = call zeroext i16 @htons(i16 zeroext 16) #8
  %121 = load %struct.dns_question*, %struct.dns_question** %12, align 8
  %122 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %121, i32 0, i32 0
  store i16 %120, i16* %122, align 2
  %123 = call zeroext i16 @htons(i16 zeroext 1) #8
  %124 = load %struct.dns_question*, %struct.dns_question** %12, align 8
  %125 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %124, i32 0, i32 1
  store i16 %123, i16* %125, align 2
  br label %126

126:                                              ; preds = %310, %294, %283, %255, %216, %209, %165, %152, %134, %48
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  %129 = icmp ne i32 %127, 15
  br i1 %129, label %130, label %311

130:                                              ; preds = %126
  store i32 0, i32* %20, align 4
  store i16 0, i16* %21, align 2
  %131 = call i32 @socket(i32 2, i32 2, i32 0) #9
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @close(i32 %135)
  %137 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  store i16 2, i16* %139, align 4
  %140 = call i32 @pick_resolver()
  %141 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2
  %142 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = call zeroext i16 @htons(i16 zeroext 53) #8
  %144 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 1
  store i16 %143, i16* %144, align 2
  %145 = load i32, i32* %13, align 4
  %146 = bitcast %union.__CONST_SOCKADDR_ARG* %24 to %struct.sockaddr**
  %147 = bitcast %struct.sockaddr_in* %23 to %struct.sockaddr*
  store %struct.sockaddr* %147, %struct.sockaddr** %146, align 8
  %148 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %24, i32 0, i32 0
  %149 = load %struct.sockaddr*, %struct.sockaddr** %148, align 8
  %150 = call i32 @connect(i32 %145, %struct.sockaddr* %149, i32 16)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %156

152:                                              ; preds = %138
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @close(i32 %153)
  %155 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

156:                                              ; preds = %138
  %157 = load i32, i32* %13, align 4
  %158 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = call i64 @send(i32 %157, i8* %158, i64 %160, i32 16384)
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @close(i32 %166)
  %168 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

169:                                              ; preds = %156
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 (i32, i32, ...) @fcntl(i32 %171, i32 3, i32 0)
  %173 = or i32 2048, %172
  %174 = call i32 (i32, i32, ...) @fcntl(i32 %170, i32 4, i32 %173)
  br label %175

175:                                              ; preds = %169
  store %struct.fd_set* %18, %struct.fd_set** %26, align 8
  store i32 0, i32* %25, align 4
  br label %176

176:                                              ; preds = %186, %175
  %177 = load i32, i32* %25, align 4
  %178 = zext i32 %177 to i64
  %179 = icmp ult i64 %178, 16
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load %struct.fd_set*, %struct.fd_set** %26, align 8
  %182 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %181, i32 0, i32 0
  %183 = load i32, i32* %25, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [16 x i64], [16 x i64]* %182, i64 0, i64 %184
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %25, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %25, align 4
  br label %176, !llvm.loop !12

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %13, align 4
  %192 = srem i32 %191, 64
  %193 = zext i32 %192 to i64
  %194 = shl i64 1, %193
  %195 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %196 = load i32, i32* %13, align 4
  %197 = sdiv i32 %196, 64
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [16 x i64], [16 x i64]* %195, i64 0, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = or i64 %200, %194
  store i64 %201, i64* %199, align 8
  %202 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  store i64 10, i64* %202, align 8
  %203 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  %206 = call i32 @select(i32 %205, %struct.fd_set* %18, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %19)
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %20, align 4
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %213

209:                                              ; preds = %190
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @close(i32 %210)
  %212 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

213:                                              ; preds = %190
  %214 = load i32, i32* %20, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @close(i32 %217)
  %219 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

220:                                              ; preds = %213
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, -1
  br i1 %223, label %224, label %310

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %226 = load i32, i32* %13, align 4
  %227 = sdiv i32 %226, 64
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [16 x i64], [16 x i64]* %225, i64 0, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* %13, align 4
  %232 = srem i32 %231, 64
  %233 = zext i32 %232 to i64
  %234 = shl i64 1, %233
  %235 = and i64 %230, %234
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %310

237:                                              ; preds = %224
  %238 = bitcast [2048 x i8]* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %238, i8 0, i64 2048, i1 false)
  store i32 0, i32* %33, align 4
  %239 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %239, i8 0, i64 2048, i1 false)
  %240 = load i32, i32* %13, align 4
  %241 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %242 = bitcast %union.__SOCKADDR_ARG* %34 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %242, align 8
  %243 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %34, i32 0, i32 0
  %244 = load %struct.sockaddr*, %struct.sockaddr** %243, align 8
  %245 = call i64 @recvfrom(i32 %240, i8* %241, i64 2048, i32 16384, %struct.sockaddr* %244, i32* null)
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %20, align 4
  %247 = load i32, i32* %20, align 4
  %248 = sext i32 %247 to i64
  %249 = load i8*, i8** %8, align 8
  %250 = call i64 @strlen(i8* %249) #7
  %251 = add i64 12, %250
  %252 = add i64 %251, 1
  %253 = add i64 %252, 4
  %254 = icmp ult i64 %248, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %237
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @close(i32 %256)
  %258 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

259:                                              ; preds = %237
  %260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %27, i64 0, i64 0
  %261 = bitcast i8* %260 to %struct.dns_header*
  store %struct.dns_header* %261, %struct.dns_header** %29, align 8
  %262 = load %struct.dns_header*, %struct.dns_header** %29, align 8
  %263 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %262, i64 1
  %264 = bitcast %struct.dns_header* %263 to i8*
  store i8* %264, i8** %30, align 8
  %265 = load i8*, i8** %30, align 8
  %266 = load i8*, i8** %30, align 8
  %267 = call i64 @strlen(i8* %266) #7
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = bitcast i8* %269 to %struct.dns_question*
  store %struct.dns_question* %270, %struct.dns_question** %31, align 8
  %271 = load %struct.dns_question*, %struct.dns_question** %31, align 8
  %272 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %271, i64 1
  %273 = bitcast %struct.dns_question* %272 to i8*
  store i8* %273, i8** %28, align 8
  %274 = load i8*, i8** %28, align 8
  %275 = bitcast i8* %274 to %struct.dns_resource_txt*
  store %struct.dns_resource_txt* %275, %struct.dns_resource_txt** %32, align 8
  %276 = load %struct.dns_header*, %struct.dns_header** %29, align 8
  %277 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %276, i32 0, i32 0
  %278 = load i16, i16* %277, align 2
  %279 = zext i16 %278 to i32
  %280 = load i16, i16* %11, align 2
  %281 = zext i16 %280 to i32
  %282 = icmp ne i32 %279, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %259
  %284 = load i32, i32* %13, align 4
  %285 = call i32 @close(i32 %284)
  %286 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

287:                                              ; preds = %259
  %288 = load %struct.dns_header*, %struct.dns_header** %29, align 8
  %289 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %288, i32 0, i32 3
  %290 = load i16, i16* %289, align 2
  %291 = call zeroext i16 @ntohs(i16 zeroext %290) #8
  %292 = zext i16 %291 to i32
  %293 = icmp slt i32 %292, 1
  br i1 %293, label %294, label %298

294:                                              ; preds = %287
  %295 = load i32, i32* %13, align 4
  %296 = call i32 @close(i32 %295)
  %297 = call i32 @sleep(i32 1)
  br label %126, !llvm.loop !11

298:                                              ; preds = %287
  %299 = load i8*, i8** %28, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 13
  store i8* %300, i8** %28, align 8
  %301 = load i8*, i8** %28, align 8
  %302 = call i64 @strlen(i8* %301) #7
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %33, align 4
  %304 = load i8*, i8** %17, align 8
  %305 = load i8*, i8** %28, align 8
  %306 = load i32, i32* %33, align 4
  %307 = sext i32 %306 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %304, i8* align 1 %305, i64 %307, i1 false)
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @close(i32 %308)
  br label %311

310:                                              ; preds = %224, %221
  br label %126, !llvm.loop !11

311:                                              ; preds = %298, %126
  %312 = load i8*, i8** %17, align 8
  store i8* %312, i8** %3, align 8
  br label %313

313:                                              ; preds = %311, %47
  %314 = load i8*, i8** %3, align 8
  ret i8* %314
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind }

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
