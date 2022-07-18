; ModuleID = 'enc.c'
source_filename = "enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"Usage: %s <string | ip | uint32 | uint16 | uint8 | bool> <data>\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"uint16\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"uint8\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Unknown value `%s` for datatype bool!\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Unknown data type `%s`!\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"XOR'ing %d bytes of data...\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\\x%02X\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@table_key = internal global i32 1043935, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %3, align 4
  br label %156

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28) #5
  %30 = add i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %133

32:                                               ; preds = %16
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = call noalias align 16 i8* @calloc(i64 1, i64 4) #6
  store i8* %39, i8** %6, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @inet_addr(i8* %42) #6
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to i32*
  store i32 %43, i32* %45, align 4
  store i32 4, i32* %7, align 4
  br label %132

46:                                               ; preds = %32
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = call noalias align 16 i8* @calloc(i64 1, i64 4) #6
  store i8* %53, i8** %6, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* %56) #5
  %58 = call i32 @htonl(i32 %57) #7
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to i32*
  store i32 %58, i32* %60, align 4
  store i32 4, i32* %7, align 4
  br label %131

61:                                               ; preds = %46
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = call noalias align 16 i8* @calloc(i64 1, i64 2) #6
  store i8* %68, i8** %6, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @atoi(i8* %71) #5
  %73 = trunc i32 %72 to i16
  %74 = call zeroext i16 @htons(i16 zeroext %73) #7
  %75 = load i8*, i8** %6, align 8
  %76 = bitcast i8* %75 to i16*
  store i16 %74, i16* %76, align 2
  store i32 2, i32* %7, align 4
  br label %130

77:                                               ; preds = %61
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = call noalias align 16 i8* @calloc(i64 1, i64 1) #6
  store i8* %84, i8** %6, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @atoi(i8* %87) #5
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %6, align 8
  store i8 %89, i8* %90, align 1
  store i32 1, i32* %7, align 4
  br label %129

91:                                               ; preds = %77
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %91
  %98 = call noalias align 16 i8* @calloc(i64 1, i64 1) #6
  store i8* %98, i8** %6, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 0, i8* %106, align 1
  br label %122

107:                                              ; preds = %97
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #5
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  store i8 1, i8* %115, align 1
  br label %121

116:                                              ; preds = %107
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %119)
  store i32 -1, i32* %3, align 4
  br label %156

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %104
  store i32 1, i32* %7, align 4
  br label %128

123:                                              ; preds = %91
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  store i32 -1, i32* %3, align 4
  br label %156

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %83
  br label %130

130:                                              ; preds = %129, %67
  br label %131

131:                                              ; preds = %130, %52
  br label %132

132:                                              ; preds = %131, %38
  br label %133

133:                                              ; preds = %132, %22
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %134)
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i8* @x(i8* %136, i32 %137)
  store i8* %138, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %151, %133
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %139, !llvm.loop !6

154:                                              ; preds = %139
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %123, %116, %11
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @x(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = call noalias align 16 i8* @malloc(i64 %15) #6
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* @table_key, align 4
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %8, align 1
  %20 = load i32, i32* @table_key, align 4
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %9, align 1
  %24 = load i32, i32* @table_key, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %10, align 1
  %28 = load i32, i32* @table_key, align 4
  %29 = lshr i32 %28, 24
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %11, align 1
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %70, %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %42, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %12, align 1
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %12, align 1
  %50 = sext i8 %49 to i32
  %51 = xor i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %12, align 1
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %12, align 1
  %56 = sext i8 %55 to i32
  %57 = xor i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %12, align 1
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %12, align 1
  %62 = sext i8 %61 to i32
  %63 = xor i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %12, align 1
  %65 = load i8, i8* %12, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %65, i8* %69, align 1
  br label %70

70:                                               ; preds = %36
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %32, !llvm.loop !8

73:                                               ; preds = %32
  %74 = load i8*, i8** %6, align 8
  ret i8* %74
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #3

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
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
