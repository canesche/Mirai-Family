; ModuleID = 'rand.c'
source_filename = "rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@t = internal global i32 0, align 4
@p = internal global i32 0, align 4
@c = internal global i32 0, align 4
@f = internal global i32 0, align 4
@alpha_set = internal global [36 x i8] c"abcdefghijklmnopqrstuvwxyz0123456789", align 16

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @init_rand() #0 {
  %1 = call i64 @time(i64* null) #2
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* @t, align 4
  %3 = call i32 @getpid() #2
  %4 = call i32 @getppid() #2
  %5 = xor i32 %3, %4
  store i32 %5, i32* @p, align 4
  %6 = call i64 @clock() #2
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @c, align 4
  %8 = load i32, i32* @c, align 4
  %9 = load i32, i32* @p, align 4
  %10 = xor i32 %8, %9
  store i32 %10, i32* @f, align 4
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: nounwind
declare i32 @getppid() #1

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @rand_new() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @t, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 15
  %5 = load i32, i32* %1, align 4
  %6 = xor i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = lshr i32 %7, 9
  %9 = load i32, i32* %1, align 4
  %10 = xor i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @p, align 4
  store i32 %11, i32* @t, align 4
  %12 = load i32, i32* @c, align 4
  store i32 %12, i32* @p, align 4
  %13 = load i32, i32* @f, align 4
  store i32 %13, i32* @c, align 4
  %14 = load i32, i32* @f, align 4
  %15 = lshr i32 %14, 13
  %16 = load i32, i32* @f, align 4
  %17 = xor i32 %16, %15
  store i32 %17, i32* @f, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @f, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* @f, align 4
  %21 = load i32, i32* @f, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @rand_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8 0, i8* %7, align 1
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = call i32 @rand_new()
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = ashr i32 %18, 3
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [36 x i8], [36 x i8]* @alpha_set, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  store i8 %24, i8* %25, align 1
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8, !llvm.loop !6

30:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
