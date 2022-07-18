; ModuleID = 'checksum.c'
source_filename = "checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@pid1 = dso_local global i32 0, align 4
@pid2 = dso_local global i32 0, align 4
@scanner_pid = dso_local global i32 0, align 4
@spid = dso_local global i32 0, align 4
@maintain_thread = dso_local global i32 0, align 4
@mainpid = dso_local global i32 0, align 4
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @checksum_generic(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %5, align 8
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
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = sub i32 %17, 2
  store i32 %18, i32* %4, align 4
  br label %6, !llvm.loop !6

19:                                               ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i16*, i16** %3, align 8
  %24 = load i16, i16* %23, align 2
  %25 = trunc i16 %24 to i8
  %26 = sext i8 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 16
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 65535
  %34 = add i64 %31, %33
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, 16
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = xor i64 %39, -1
  %41 = trunc i64 %40 to i16
  ret i16 %41
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @checksum_tcpudp(%struct.iphdr* %0, i8* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i16*
  store i16* %14, i16** %9, align 8
  %15 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %24, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i16*, i16** %9, align 8
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load i32, i32* %12, align 4
  %29 = add i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i16*, i16** %9, align 8
  %31 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %31, i16** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 2
  store i32 %33, i32* %8, align 4
  br label %21, !llvm.loop !8

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i16*, i16** %9, align 8
  %39 = bitcast i16* %38 to i8*
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i32, i32* %10, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 65535
  %48 = load i32, i32* %12, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 65535
  %52 = load i32, i32* %12, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 65535
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 65535
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 6
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i16
  %67 = call zeroext i16 @htons(i16 zeroext %66) #2
  %68 = zext i16 %67 to i32
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i16, i16* %7, align 2
  %72 = zext i16 %71 to i32
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %79, %44
  %76 = load i32, i32* %12, align 4
  %77 = lshr i32 %76, 16
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, 65535
  %82 = load i32, i32* %12, align 4
  %83 = lshr i32 %82, 16
  %84 = add i32 %81, %83
  store i32 %84, i32* %12, align 4
  br label %75, !llvm.loop !9

85:                                               ; preds = %75
  %86 = load i32, i32* %12, align 4
  %87 = xor i32 %86, -1
  %88 = trunc i32 %87 to i16
  ret i16 %88
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #1

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
