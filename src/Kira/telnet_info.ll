; ModuleID = 'telnet_info.c'
source_filename = "telnet_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.telnet_info = type { [32 x i8], [32 x i8], [6 x i8], [32 x i8], i32, i16, i32, i8, i8 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.telnet_info* @telnet_info_new(i8* %0, i8* %1, i8* %2, i32 %3, i16 zeroext %4, %struct.telnet_info* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca %struct.telnet_info*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i16 %4, i16* %11, align 2
  store %struct.telnet_info* %5, %struct.telnet_info** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %17 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strcpy(i8* %18, i8* %19) #4
  br label %21

21:                                               ; preds = %15, %6
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %26 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strcpy(i8* %27, i8* %28) #4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %35 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %35, i64 0, i64 0
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @strcpy(i8* %36, i8* %37) #4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %42 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i16, i16* %11, align 2
  %44 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %45 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %44, i32 0, i32 5
  store i16 %43, i16* %45, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br label %51

51:                                               ; preds = %48, %39
  %52 = phi i1 [ true, %39 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = trunc i32 %53 to i8
  %55 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %56 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %55, i32 0, i32 7
  store i8 %54, i8* %56, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i8
  %61 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %62 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %61, i32 0, i32 8
  store i8 %60, i8* %62, align 1
  %63 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  ret %struct.telnet_info* %63
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.telnet_info* @telnet_info_parse(i8* %0, %struct.telnet_info* %1) #0 {
  %3 = alloca %struct.telnet_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.telnet_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store %struct.telnet_info* %1, %struct.telnet_info** %5, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strtok(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #4
  store i8* %16, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.telnet_info* null, %struct.telnet_info** %3, align 8
  br label %71

19:                                               ; preds = %2
  %20 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #4
  store i8* %20, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store %struct.telnet_info* null, %struct.telnet_info** %3, align 8
  br label %71

23:                                               ; preds = %19
  %24 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #4
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  store i8* %26, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.telnet_info* null, %struct.telnet_info** %3, align 8
  br label %71

29:                                               ; preds = %23
  %30 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  store i8* %30, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.telnet_info* null, %struct.telnet_info** %3, align 8
  br label %71

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strlen(i8* %34) #5
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 58
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %52

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 63
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store %struct.telnet_info* null, %struct.telnet_info** %3, align 8
  br label %71

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %43
  br label %57

53:                                               ; preds = %33
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @strtok(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  store i8* %55, i8** %11, align 8
  %56 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  store i8* %56, i8** %12, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 (i8*, ...) bitcast (i32 (...)* @inet_addr to i32 (i8*, ...)*)(i8* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @atoi(i8* %60) #5
  %62 = call i32 (i32, ...) bitcast (i32 (...)* @htons to i32 (i32, ...)*)(i32 %61)
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %14, align 2
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i16, i16* %14, align 2
  %69 = load %struct.telnet_info*, %struct.telnet_info** %5, align 8
  %70 = call %struct.telnet_info* @telnet_info_new(i8* %64, i8* %65, i8* %66, i32 %67, i16 zeroext %68, %struct.telnet_info* %69)
  store %struct.telnet_info* %70, %struct.telnet_info** %3, align 8
  br label %71

71:                                               ; preds = %57, %50, %32, %28, %22, %18
  %72 = load %struct.telnet_info*, %struct.telnet_info** %3, align 8
  ret %struct.telnet_info* %72
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #2

declare i32 @inet_addr(...) #3

declare i32 @htons(...) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 13.0.1"}
