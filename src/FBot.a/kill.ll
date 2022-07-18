; ModuleID = 'kill.c'
source_filename = "kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.entry = type { i8, i8*, i16 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"/proc/net/tcp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/proc/\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/fd\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@LOCAL_ADDRESS = dso_local global i32 0, align 4
@entry_list = dso_local global [24 x %struct.entry] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @terminate_process_via_port(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [5 x i8], align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca [512 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [512 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [512 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.__dirstream*, align 8
  %22 = alloca %struct.dirent*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca [4096 x i8], align 16
  %26 = alloca %struct.dirent*, align 8
  %27 = alloca %struct.__dirstream*, align 8
  %28 = alloca [4096 x i8], align 16
  %29 = alloca [4096 x i8], align 16
  %30 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  store i32 -1, i32* %3, align 4
  %31 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %340

35:                                               ; preds = %1
  %36 = load i16, i16* %2, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  call void @d(i32 %37, i8* %38, i32 4, i32 16)
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %6, align 1
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %7, align 1
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %8, align 1
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %9, align 1
  %47 = load i8, i8* %9, align 1
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = load i8, i8* %8, align 1
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  store i8 %49, i8* %50, align 1
  %51 = load i8, i8* %7, align 1
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  store i8 %51, i8* %52, align 1
  %53 = load i8, i8* %6, align 1
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  store i8 %53, i8* %54, align 1
  br label %55

55:                                               ; preds = %336, %86, %35
  %56 = load i32, i32* %3, align 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %58 = call i8* @read_line(i32 %56, i8* %57, i32 256)
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %337

60:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 58
  br label %75

75:                                               ; preds = %68, %61
  %76 = phi i1 [ false, %61 ], [ %74, %68 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %61, !llvm.loop !6

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %55, !llvm.loop !8

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %10, align 4
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8* %90, i8** %14, align 8
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %12, align 4
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8* %95, i8** %14, align 8
  %96 = load i8*, i8** %14, align 8
  store i8* %96, i8** %16, align 8
  br label %97

97:                                               ; preds = %113, %87
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 32
  br label %111

111:                                              ; preds = %104, %97
  %112 = phi i1 [ false, %97 ], [ %110, %104 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %97, !llvm.loop !9

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %23, align 4
  %120 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %121 = load i8*, i8** %14, align 8
  %122 = load i32, i32* %23, align 4
  %123 = sext i32 %122 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %120, i8* align 1 %121, i64 %123, i1 false)
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 %125
  store i8 0, i8* %126, align 1
  br label %127

127:                                              ; preds = %143, %116
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 58
  br label %141

141:                                              ; preds = %134, %127
  %142 = phi i1 [ false, %127 ], [ %140, %134 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %127, !llvm.loop !10

146:                                              ; preds = %141
  %147 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  store i8* %147, i8** %14, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %150, %151
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %23, align 4
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %155 = load i8*, i8** %14, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %154, i8* align 1 %159, i64 %161, i1 false)
  %162 = load i32, i32* %23, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 %163
  store i8 0, i8* %164, align 1
  %165 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %166 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %167 = call i8* @strcasestr(i8* %165, i8* %166) #6
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %336

169:                                              ; preds = %146
  br label %170

170:                                              ; preds = %169, %180, %221
  %171 = load i8*, i8** %16, align 8
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  br label %226

175:                                              ; preds = %170
  %176 = load i8*, i8** %16, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 32
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i8*, i8** %16, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %16, align 8
  store i32 0, i32* %18, align 4
  br label %170

183:                                              ; preds = %175
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp eq i32 %186, 8
  br i1 %187, label %188, label %221

188:                                              ; preds = %183
  %189 = load i8*, i8** %16, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 3
  store i8* %190, i8** %24, align 8
  br label %191

191:                                              ; preds = %203, %188
  %192 = load i8*, i8** %24, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i8*, i8** %24, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 32
  br label %201

201:                                              ; preds = %196, %191
  %202 = phi i1 [ false, %191 ], [ %200, %196 ]
  br i1 %202, label %203, label %208

203:                                              ; preds = %201
  %204 = load i8*, i8** %24, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %24, align 8
  %206 = load i32, i32* %20, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %20, align 4
  br label %191, !llvm.loop !11

208:                                              ; preds = %201
  %209 = load i32, i32* %20, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  br label %226

212:                                              ; preds = %208
  %213 = getelementptr inbounds [512 x i8], [512 x i8]* %19, i64 0, i64 0
  %214 = load i8*, i8** %16, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 3
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %213, i8* align 1 %215, i64 %217, i1 false)
  %218 = load i32, i32* %20, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [512 x i8], [512 x i8]* %19, i64 0, i64 %219
  store i8 0, i8* %220, align 1
  br label %226

221:                                              ; preds = %183
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %17, align 4
  %224 = load i8*, i8** %16, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %16, align 8
  br label %170

226:                                              ; preds = %212, %211, %174
  %227 = load i32, i32* %20, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  br label %337

230:                                              ; preds = %226
  %231 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.__dirstream* %231, %struct.__dirstream** %21, align 8
  %232 = load %struct.__dirstream*, %struct.__dirstream** %21, align 8
  %233 = icmp ne %struct.__dirstream* %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  br label %337

235:                                              ; preds = %230
  br label %236

236:                                              ; preds = %330, %270, %254, %235
  %237 = load %struct.__dirstream*, %struct.__dirstream** %21, align 8
  %238 = call %struct.dirent* @readdir(%struct.__dirstream* %237)
  store %struct.dirent* %238, %struct.dirent** %22, align 8
  %239 = icmp ne %struct.dirent* %238, null
  br i1 %239, label %240, label %333

240:                                              ; preds = %236
  %241 = load %struct.dirent*, %struct.dirent** %22, align 8
  %242 = getelementptr inbounds %struct.dirent, %struct.dirent* %241, i32 0, i32 4
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* %242, i64 0, i64 0
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp slt i32 %245, 48
  br i1 %246, label %254, label %247

247:                                              ; preds = %240
  %248 = load %struct.dirent*, %struct.dirent** %22, align 8
  %249 = getelementptr inbounds %struct.dirent, %struct.dirent* %248, i32 0, i32 4
  %250 = getelementptr inbounds [256 x i8], [256 x i8]* %249, i64 0, i64 0
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp sgt i32 %252, 57
  br i1 %253, label %254, label %255

254:                                              ; preds = %247, %240
  br label %236, !llvm.loop !12

255:                                              ; preds = %247
  %256 = getelementptr inbounds [4096 x i8], [4096 x i8]* %25, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %256, i8 0, i64 4096, i1 false)
  %257 = getelementptr inbounds [4096 x i8], [4096 x i8]* %25, i64 0, i64 0
  %258 = call i8* @strcpy(i8* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7
  %259 = getelementptr inbounds [4096 x i8], [4096 x i8]* %25, i64 0, i64 0
  %260 = load %struct.dirent*, %struct.dirent** %22, align 8
  %261 = getelementptr inbounds %struct.dirent, %struct.dirent* %260, i32 0, i32 4
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* %261, i64 0, i64 0
  %263 = call i8* @strcat(i8* %259, i8* %262) #7
  %264 = getelementptr inbounds [4096 x i8], [4096 x i8]* %25, i64 0, i64 0
  %265 = call i8* @strcat(i8* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7
  %266 = getelementptr inbounds [4096 x i8], [4096 x i8]* %25, i64 0, i64 0
  %267 = call %struct.__dirstream* @opendir(i8* %266)
  store %struct.__dirstream* %267, %struct.__dirstream** %27, align 8
  %268 = load %struct.__dirstream*, %struct.__dirstream** %27, align 8
  %269 = icmp ne %struct.__dirstream* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %255
  br label %236, !llvm.loop !12

271:                                              ; preds = %255
  br label %272

272:                                              ; preds = %329, %290, %271
  %273 = load %struct.__dirstream*, %struct.__dirstream** %27, align 8
  %274 = call %struct.dirent* @readdir(%struct.__dirstream* %273)
  store %struct.dirent* %274, %struct.dirent** %26, align 8
  %275 = icmp ne %struct.dirent* %274, null
  br i1 %275, label %276, label %330

276:                                              ; preds = %272
  store i32 0, i32* %30, align 4
  %277 = load %struct.dirent*, %struct.dirent** %26, align 8
  %278 = getelementptr inbounds %struct.dirent, %struct.dirent* %277, i32 0, i32 4
  %279 = getelementptr inbounds [256 x i8], [256 x i8]* %278, i64 0, i64 0
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp slt i32 %281, 48
  br i1 %282, label %290, label %283

283:                                              ; preds = %276
  %284 = load %struct.dirent*, %struct.dirent** %26, align 8
  %285 = getelementptr inbounds %struct.dirent, %struct.dirent* %284, i32 0, i32 4
  %286 = getelementptr inbounds [256 x i8], [256 x i8]* %285, i64 0, i64 0
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp sgt i32 %288, 57
  br i1 %289, label %290, label %291

290:                                              ; preds = %283, %276
  br label %272, !llvm.loop !13

291:                                              ; preds = %283
  %292 = getelementptr inbounds [4096 x i8], [4096 x i8]* %28, i64 0, i64 0
  %293 = call i8* @strcpy(i8* %292, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7
  %294 = getelementptr inbounds [4096 x i8], [4096 x i8]* %28, i64 0, i64 0
  %295 = load %struct.dirent*, %struct.dirent** %22, align 8
  %296 = getelementptr inbounds %struct.dirent, %struct.dirent* %295, i32 0, i32 4
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* %296, i64 0, i64 0
  %298 = call i8* @strcat(i8* %294, i8* %297) #7
  %299 = getelementptr inbounds [4096 x i8], [4096 x i8]* %28, i64 0, i64 0
  %300 = call i8* @strcat(i8* %299, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7
  %301 = getelementptr inbounds [4096 x i8], [4096 x i8]* %28, i64 0, i64 0
  %302 = call i8* @strcat(i8* %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %303 = getelementptr inbounds [4096 x i8], [4096 x i8]* %28, i64 0, i64 0
  %304 = load %struct.dirent*, %struct.dirent** %26, align 8
  %305 = getelementptr inbounds %struct.dirent, %struct.dirent* %304, i32 0, i32 4
  %306 = getelementptr inbounds [256 x i8], [256 x i8]* %305, i64 0, i64 0
  %307 = call i8* @strcat(i8* %303, i8* %306) #7
  %308 = getelementptr inbounds [4096 x i8], [4096 x i8]* %28, i64 0, i64 0
  %309 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %310 = call i64 @readlink(i8* %308, i8* %309, i64 4095) #7
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %30, align 4
  %312 = load i32, i32* %30, align 4
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %314, label %315

314:                                              ; preds = %291
  br label %330

315:                                              ; preds = %291
  %316 = load i32, i32* %30, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 %317
  store i8 0, i8* %318, align 1
  %319 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %320 = getelementptr inbounds [512 x i8], [512 x i8]* %19, i64 0, i64 0
  %321 = call i8* @strcasestr(i8* %319, i8* %320) #6
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %329

323:                                              ; preds = %315
  %324 = load %struct.dirent*, %struct.dirent** %22, align 8
  %325 = getelementptr inbounds %struct.dirent, %struct.dirent* %324, i32 0, i32 4
  %326 = getelementptr inbounds [256 x i8], [256 x i8]* %325, i64 0, i64 0
  %327 = call i32 @atoi(i8* %326) #6
  %328 = call i32 @kill(i32 %327, i32 9) #7
  br label %329

329:                                              ; preds = %323, %315
  br label %272, !llvm.loop !13

330:                                              ; preds = %314, %272
  %331 = load %struct.__dirstream*, %struct.__dirstream** %27, align 8
  %332 = call i32 @closedir(%struct.__dirstream* %331)
  br label %236, !llvm.loop !12

333:                                              ; preds = %236
  %334 = load %struct.__dirstream*, %struct.__dirstream** %21, align 8
  %335 = call i32 @closedir(%struct.__dirstream* %334)
  br label %337

336:                                              ; preds = %146
  br label %55, !llvm.loop !8

337:                                              ; preds = %333, %234, %229, %55
  %338 = load i32, i32* %3, align 4
  %339 = call i32 @close(i32 %338)
  br label %340

340:                                              ; preds = %337, %34
  ret void
}

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @d(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %4, %30, %39
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %49

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sdiv i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 48, %31
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 %33, i8* %38, align 1
  br label %13

39:                                               ; preds = %21
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 65, %40
  %42 = sub nsw i32 %41, 10
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  br label %13

49:                                               ; preds = %20
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i8* @read_line(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %3, %38
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = call i64 @read(i32 %11, i8* %15, i64 1)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %41

21:                                               ; preds = %10
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %21
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %10

41:                                               ; preds = %37, %20
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i8* null, i8** %4, align 8
  br label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strcasestr(i8*, i8*) #3

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #5

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #3

declare i32 @closedir(%struct.__dirstream*) #1

declare i32 @close(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @init_kill() #0 {
  call void @terminate_process_via_port(i16 zeroext -17435)
  call void @terminate_process_via_port(i16 zeroext 9000)
  ret void
}

declare i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
