; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @__start() #0 {
  call void @run()
  ret void
}

declare void @run() #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @sstrlen(i8* %0) #0 {
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
  br label %4, !llvm.loop !6

13:                                               ; preds = %4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @utils_inet_addr(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i64 0, i64* %9, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 24
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %9, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %9, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 16
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %9, align 8
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 0
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = and i64 %34, 255
  %36 = shl i64 %35, 24
  %37 = load i64, i64* %9, align 8
  %38 = and i64 %37, 65280
  %39 = shl i64 %38, 8
  %40 = or i64 %36, %39
  %41 = load i64, i64* %9, align 8
  %42 = and i64 %41, 16711680
  %43 = lshr i64 %42, 8
  %44 = or i64 %40, %43
  %45 = load i64, i64* %9, align 8
  %46 = and i64 %45, 4278190080
  %47 = lshr i64 %46, 24
  %48 = or i64 %44, %47
  %49 = trunc i64 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xsocket(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @syscall to i32 (i32, i32, i32, i32, ...)*)(i32 41, i32 %7, i32 %8, i32 %9)
  ret i32 %10
}

declare i32 @syscall(...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xread(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i32, i32, i8*, i32, ...) bitcast (i32 (...)* @syscall to i32 (i32, i32, i8*, i32, ...)*)(i32 0, i32 %7, i8* %8, i32 %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xwrite(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i32, i32, i8*, i32, ...) bitcast (i32 (...)* @syscall to i32 (i32, i32, i8*, i32, ...)*)(i32 1, i32 %7, i8* %8, i32 %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xconnect(i32 %0, %struct.sockaddr_in* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i32, i32, %struct.sockaddr_in*, i32, ...) bitcast (i32 (...)* @syscall to i32 (i32, i32, %struct.sockaddr_in*, i32, ...)*)(i32 42, i32 %7, %struct.sockaddr_in* %8, i32 %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xopen(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @syscall to i32 (i32, i8*, i32, i32, ...)*)(i32 2, i8* %7, i32 %8, i32 %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xclose(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) bitcast (i32 (...)* @syscall to i32 (i32, i32, ...)*)(i32 3, i32 %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @x__exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) bitcast (i32 (...)* @syscall to i32 (i32, i32, ...)*)(i32 60, i32 %3)
  ret void
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
