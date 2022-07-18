; ModuleID = 'checksum.c'
source_filename = "checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @tcp_udp_header_checksum(%struct.iphdr* %0, i8* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  store %struct.iphdr* %0, %struct.iphdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %13 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i16*
  store i16* %20, i16** %12, align 8
  br label %21

21:                                               ; preds = %24, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i16*, i16** %12, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %12, align 8
  %27 = load i16, i16* %25, align 2
  %28 = zext i16 %27 to i32
  %29 = load i32, i32* %11, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %8, align 4
  br label %21, !llvm.loop !6

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i16*, i16** %12, align 8
  %38 = bitcast i16* %37 to i8*
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i32, i32* %9, align 4
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 65535
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 65535
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 65535
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 65535
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 6
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i16
  %66 = call zeroext i16 @htons(i16 zeroext %65) #2
  %67 = zext i16 %66 to i32
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i16, i16* %7, align 2
  %71 = zext i16 %70 to i32
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %78, %43
  %75 = load i32, i32* %11, align 4
  %76 = lshr i32 %75, 16
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 65535
  %81 = load i32, i32* %11, align 4
  %82 = lshr i32 %81, 16
  %83 = add i32 %80, %82
  store i32 %83, i32* %11, align 4
  br label %74, !llvm.loop !8

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = xor i32 %85, -1
  %87 = trunc i32 %86 to i16
  ret i16 %87
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @ip_header_checksum(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %3, align 8
  %12 = load i16, i16* %10, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = sub i32 %17, 2
  store i32 %18, i32* %4, align 4
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i16*, i16** %3, align 8
  %24 = load i16, i16* %23, align 2
  %25 = trunc i16 %24 to i8
  %26 = sext i8 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 16
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 16
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = xor i32 %39, -1
  %41 = trunc i32 %40 to i16
  ret i16 %41
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn }

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
